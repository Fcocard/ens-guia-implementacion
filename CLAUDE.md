# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a documentation project for ENS (Esquema Nacional de Seguridad) implementation guidance in Spanish. It provides a structured framework for analyzing ENS compliance in blockchain projects for Spanish Public Administration.

The project is purely documentation-based, written in Markdown format, and licensed under CC-BY-4.0 (Creative Commons Attribution 4.0 International).

## Repository Structure

```
/
├── docs/                    # Main documentation directory
│   ├── anexo_ens.md        # Main ENS annex template with placeholders
│   ├── estructura_anexo.md  # Complete structure outline
│   └── secciones/          # Individual sections (01-11)
├── referencias/            # Reference materials and links
└── scripts/               # Build and generation scripts
```

## Key Components

### Documentation Architecture

The project follows a modular documentation structure:

1. **Template System**: `docs/anexo_ens.md` serves as the main template with placeholder markers `{{section_name}}`
2. **Modular Sections**: 11 individual markdown files in `docs/secciones/` covering different ENS compliance aspects
3. **Build System**: Shell script for combining sections into a complete document

### Section Structure (docs/secciones/)

- `01_resumen_ejecutivo.md` - Executive summary
- `02_analisis_aplicabilidad.md` - ENS applicability analysis  
- `03_categorizacion_sistemas.md` - System categorization
- `04_analisis_riesgos.md` - Risk analysis
- `05_medidas_seguridad.md` - Security measures
- `06_implementacion_blockchain.md` - Blockchain-specific implementation
- `07_declaracion_aplicabilidad.md` - Applicability declaration
- `08_plan_seguridad.md` - Security plan
- `09_monitorizacion_revision.md` - Monitoring and review
- `10_auditoria_certificacion.md` - Audit and certification
- `11_conclusiones_recomendaciones.md` - Conclusions and recommendations

## Common Commands

### Generate Complete ENS Annex
```bash
./scripts/generar_anexo.sh
```
This combines all section files into `docs/anexo_ens_completo.md` by replacing template placeholders with actual content.

### Validate Generated Document
```bash
# Check if the complete document was generated successfully
ls -la docs/anexo_ens_completo.md
```

## Content Guidelines

- All content is written in Spanish and focuses on ENS compliance for blockchain projects
- Documentation follows the structure defined in Real Decreto 311/2022 and CCN-STIC guides series 800
- Files use placeholder comments `<!-- Contenido a desarrollar -->` for sections to be developed
- References are maintained in `referencias/referencias.md` with official ENS documentation links

## Important Notes

- This is a documentation-only project with no code compilation, testing, or linting
- The build process is a simple shell script that performs text substitution
- All files are in Markdown format for LLM compatibility
- Content is focused on defensive security practices and ENS compliance guidance