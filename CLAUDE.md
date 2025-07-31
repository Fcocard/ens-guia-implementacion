# CLAUDE.md

Este archivo proporciona orientación a Claude Code (claude.ai/code) cuando trabaja con código en este repositorio.

## Descripción General del Proyecto

Este es un proyecto de documentación para guías de implementación del ENS (Esquema Nacional de Seguridad) en español. Proporciona un marco estructurado para analizar el cumplimiento del ENS en proyectos blockchain para la Administración Pública Española.

El proyecto está basado puramente en documentación, escrito en formato Markdown, y licenciado bajo CC-BY-4.0 (Creative Commons Attribution 4.0 International).

## Estructura del Repositorio

```
/
├── docs/                    # Directorio principal de documentación
│   ├── anexo_ens.md        # Plantilla principal del anexo ENS con marcadores
│   ├── estructura_anexo.md  # Esquema completo de la estructura
│   └── secciones/          # Secciones individuales (01-11)
├── referencias/            # Materiales de referencia y enlaces
└── scripts/               # Scripts de construcción y generación
```

## Componentes Clave

### Arquitectura de Documentación

El proyecto sigue una estructura de documentación modular:

1. **Sistema de Plantillas**: `docs/anexo_ens.md` sirve como plantilla principal con marcadores de posición `{{nombre_seccion}}`
2. **Secciones Modulares**: 11 archivos markdown individuales en `docs/secciones/` que cubren diferentes aspectos de cumplimiento del ENS
3. **Sistema de Construcción**: Script de shell para combinar secciones en un documento completo

### Estructura de Secciones (docs/secciones/)

- `01_resumen_ejecutivo.md` - Resumen ejecutivo
- `02_analisis_aplicabilidad.md` - Análisis de aplicabilidad del ENS  
- `03_categorizacion_sistemas.md` - Categorización de sistemas
- `04_analisis_riesgos.md` - Análisis de riesgos
- `05_medidas_seguridad.md` - Medidas de seguridad
- `06_implementacion_blockchain.md` - Implementación específica de blockchain
- `07_declaracion_aplicabilidad.md` - Declaración de aplicabilidad
- `08_plan_seguridad.md` - Plan de seguridad
- `09_monitorizacion_revision.md` - Monitorización y revisión
- `10_auditoria_certificacion.md` - Auditoría y certificación
- `11_conclusiones_recomendaciones.md` - Conclusiones y recomendaciones

## Comandos Comunes

### Generar Anexo ENS Completo
```bash
./scripts/generar_anexo.sh
```
Esto combina todos los archivos de secciones en `docs/anexo_ens_completo.md` reemplazando los marcadores de posición de la plantilla con contenido real.

### Validar Documento Generado
```bash
# Verificar si el documento completo fue generado exitosamente
ls -la docs/anexo_ens_completo.md
```

## Directrices de Contenido

- Todo el contenido está escrito en español y se centra en el cumplimiento del ENS para proyectos blockchain
- La documentación sigue la estructura definida en el Real Decreto 311/2022 y las guías CCN-STIC serie 800
- Los archivos usan comentarios de marcador de posición `<!-- Contenido a desarrollar -->` para secciones a desarrollar
- las referencias se mantienen en `referencias/referencias.md` con enlaces a documentación oficial del ENS

## Notas Importantes

- Este es un proyecto solo de documentación sin compilación de código, pruebas o linting
- El proceso de construcción es un simple script de shell que realiza sustitución de texto
- Todos los archivos están en formato Markdown para compatibilidad con LLM
- El contenido se centra en prácticas de seguridad defensiva y orientación de cumplimiento del ENS