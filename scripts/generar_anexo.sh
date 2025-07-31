#!/bin/bash

# Script para generar el anexo ENS completo combinando todas las secciones

DOCS_DIR="/home/ubuntu/normativa/ens-guia-implementacion/docs"
SECCIONES_DIR="$DOCS_DIR/secciones"
ANEXO_TEMPLATE="$DOCS_DIR/anexo_ens.md"
ANEXO_FINAL="$DOCS_DIR/anexo_ens_completo.md"

# Crear copia del template
cp "$ANEXO_TEMPLATE" "$ANEXO_FINAL"

# Reemplazar cada marcador con el contenido del archivo correspondiente
sed -i "s|{{1_resumen_ejecutivo}}|$(cat "$SECCIONES_DIR/01_resumen_ejecutivo.md")|g" "$ANEXO_FINAL"
sed -i "s|{{2_analisis_aplicabilidad}}|$(cat "$SECCIONES_DIR/02_analisis_aplicabilidad.md")|g" "$ANEXO_FINAL"
sed -i "s|{{3_categorizacion_sistemas}}|$(cat "$SECCIONES_DIR/03_categorizacion_sistemas.md")|g" "$ANEXO_FINAL"
sed -i "s|{{4_analisis_riesgos}}|$(cat "$SECCIONES_DIR/04_analisis_riesgos.md")|g" "$ANEXO_FINAL"
sed -i "s|{{5_medidas_seguridad}}|$(cat "$SECCIONES_DIR/05_medidas_seguridad.md")|g" "$ANEXO_FINAL"
sed -i "s|{{6_implementacion_blockchain}}|$(cat "$SECCIONES_DIR/06_implementacion_blockchain.md")|g" "$ANEXO_FINAL"
sed -i "s|{{7_declaracion_aplicabilidad}}|$(cat "$SECCIONES_DIR/07_declaracion_aplicabilidad.md")|g" "$ANEXO_FINAL"
sed -i "s|{{8_plan_seguridad}}|$(cat "$SECCIONES_DIR/08_plan_seguridad.md")|g" "$ANEXO_FINAL"
sed -i "s|{{9_monitorizacion_revision}}|$(cat "$SECCIONES_DIR/09_monitorizacion_revision.md")|g" "$ANEXO_FINAL"
sed -i "s|{{10_auditoria_certificacion}}|$(cat "$SECCIONES_DIR/10_auditoria_certificacion.md")|g" "$ANEXO_FINAL"
sed -i "s|{{11_conclusiones_recomendaciones}}|$(cat "$SECCIONES_DIR/11_conclusiones_recomendaciones.md")|g" "$ANEXO_FINAL"

echo "Anexo ENS completo generado en: $ANEXO_FINAL"