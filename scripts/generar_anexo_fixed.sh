#!/bin/bash

# Script para generar el anexo ENS completo combinando todas las secciones

DOCS_DIR="/home/ubuntu/normativa/ens-guia-implementacion/docs"
SECCIONES_DIR="$DOCS_DIR/secciones"
ANEXO_TEMPLATE="$DOCS_DIR/anexo_ens.md"
ANEXO_FINAL="$DOCS_DIR/anexo_ens_completo.md"

# Función para reemplazar placeholder con contenido de archivo
replace_placeholder() {
    local placeholder="$1"
    local file_path="$2"
    local temp_file=$(mktemp)
    
    if [[ -f "$file_path" ]]; then
        awk -v placeholder="$placeholder" -v content_file="$file_path" '
        {
            if ($0 ~ placeholder) {
                while ((getline line < content_file) > 0) {
                    print line
                }
                close(content_file)
            } else {
                print $0
            }
        }' "$ANEXO_FINAL" > "$temp_file"
        mv "$temp_file" "$ANEXO_FINAL"
    fi
}

# Crear copia del template
cp "$ANEXO_TEMPLATE" "$ANEXO_FINAL"

# Reemplazar cada marcador con el contenido del archivo correspondiente
replace_placeholder "{{2_analisis_aplicabilidad}}" "$SECCIONES_DIR/02_analisis_aplicabilidad.md"
replace_placeholder "{{3_categorizacion_sistemas}}" "$SECCIONES_DIR/03_categorizacion_sistemas.md"
replace_placeholder "{{4_analisis_riesgos}}" "$SECCIONES_DIR/04_analisis_riesgos.md"
replace_placeholder "{{5_medidas_seguridad}}" "$SECCIONES_DIR/05_medidas_seguridad.md"
replace_placeholder "{{6_implementacion_blockchain}}" "$SECCIONES_DIR/06_implementacion_blockchain.md"
replace_placeholder "{{7_declaracion_aplicabilidad}}" "$SECCIONES_DIR/07_declaracion_aplicabilidad.md"
replace_placeholder "{{8_plan_seguridad}}" "$SECCIONES_DIR/08_plan_seguridad.md"
replace_placeholder "{{9_monitorizacion_revision}}" "$SECCIONES_DIR/09_monitorizacion_revision.md"
replace_placeholder "{{10_auditoria_certificacion}}" "$SECCIONES_DIR/10_auditoria_certificacion.md"
replace_placeholder "{{11_conclusiones_recomendaciones}}" "$SECCIONES_DIR/11_conclusiones_recomendaciones.md"

echo "Anexo ENS completo generado en: $ANEXO_FINAL"