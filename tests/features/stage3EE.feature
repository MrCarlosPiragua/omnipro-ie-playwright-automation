@allStage3EE
Feature: Validar formularios Stage 3 EE en DEV
  Para garantizar que los formularios Stage 3 EE estén configurados correctamente en el entorno de pruebas
  Como equipo de automatización
  Queremos navegar a las URLs declaradas en la matriz y verificar que los campos configurados se puedan completar
  y que el identificador de formulario DEV esté presente.

  @Form1078
  Scenario Outline: Validar tipo de form ES - Embed - AD - Program select - BAC
    Given que selecciono el Tipo Form 'ES - Embed - AD - Program select - BAC' y el ID form '1078' para la url '<url>'
    When completo los campos configurados para el formulario con idPrograma '<idProgramaCampoOculto>'
    And envío el formulario
    Then podre ver el Thank you page con country '0f4132be-a5f1-df11-af0a-02bf0a09015e' y province '6ac811d1-28fb-e911-a816-000d3a49d12e'

    Examples:
      | idProgramaCampoOculto                | url                                                                                                 |
      | 132b694f-29f2-df11-aa1b-005056b42592 | https://www.pre.thesaurus.ie.edu/es/lifelong-learning/programas/advanced-management-program-madrid/ |

  @Form1097
  Scenario Outline: Validar tipo de form EN - Embed - AD - Program select
    Given que selecciono el Tipo Form 'EN - Embed - AD - Program select' y el ID form '1097' para la url '<url>'
    When completo los campos configurados para el formulario con idPrograma '<idProgramaCampoOculto>'
    And envío el formulario
    Then podre ver el Thank you page con country '0f4132be-a5f1-df11-af0a-02bf0a09015e' y province '6ac811d1-28fb-e911-a816-000d3a49d12e'

    Examples:
      | idProgramaCampoOculto                | url                                                                                                    |
      | 00c9d42b-c9d9-ed11-a7c7-002248801012 | https://www.pre.thesaurus.ie.edu/lifelong-learning/programs/advanced-leadership-program-in-healthcare/ |
      | 98325d85-29f2-df11-aa1b-005056b42592 | https://www.pre.thesaurus.ie.edu/lifelong-learning/programs/global-senior-management-program/          |
      | b0cc0e58-6682-e711-810e-1458d043a570 | https://www.pre.thesaurus.ie.edu/lifelong-learning/programs/global-advanced-management-program/        |
      | 98521a6e-82a6-ef11-b8e8-6045bd914c7f | https://www.pre.thesaurus.ie.edu/lifelong-learning/programs/board-members-program/                     |
      | c959302f-a27c-ee11-8179-0022487f37f4 | https://www.pre.thesaurus.ie.edu/lifelong-learning/programs/senior-leadership-program/                 |
      | 1388fb15-0287-f011-b4cc-6045bd968aae | https://www.pre.thesaurus.ie.edu/lifelong-learning/programs/board-members-program/                     |
      | c2aca09c-f6bd-ef11-b8e8-6045bd9242bb | https://www.pre.thesaurus.ie.edu/lifelong-learning/programs/cfo-program/                               |

  @Form1098
  Scenario Outline: Validar tipo de form ES - Embed - AD - Program select
    Given que selecciono el Tipo Form 'ES - Embed - AD - Program select' y el ID form '1098' para la url '<url>'
    When completo los campos configurados para el formulario con idPrograma '<idProgramaCampoOculto>'
    And envío el formulario
    Then podre ver el Thank you page con country '0f4132be-a5f1-df11-af0a-02bf0a09015e' y province '6ac811d1-28fb-e911-a816-000d3a49d12e'

    Examples:
      | idProgramaCampoOculto                | url                                                                                                          |
      | fe803dd2-66b1-ef11-b8e8-6045bd9223ff | https://www.pre.thesaurus.ie.edu/es/lifelong-learning/programas/programa-consejeros/                         |
      | c34a25a9-1894-e511-8658-025b1b206542 | https://www.pre.thesaurus.ie.edu/es/lifelong-learning/programas/advanced-management-program-castilla-y-leon/ |
      | 6bb16ef4-87fd-ef11-bae3-6045bd9971f8 | https://www.pre.thesaurus.ie.edu/lifelong-learning/programs/geopolitics-global-risks/                        |
      | e22a694f-29f2-df11-aa1b-005056b42592 | https://www.pre.thesaurus.ie.edu/es/lifelong-learning/programas/advanced-management-program-asturias/        |
      | 212b694f-29f2-df11-aa1b-005056b42592 | https://www.pre.thesaurus.ie.edu/es/lifelong-learning/programas/advanced-management-program-zaragoza/        |
      | 97e91e25-e982-ea11-a811-000d3a2cbc56 | https://www.pre.thesaurus.ie.edu/es/lifelong-learning/programas/advanced-management-program-blended/         |
      | e92a694f-29f2-df11-aa1b-005056b42592 | https://www.pre.thesaurus.ie.edu/es/lifelong-learning/programas/advanced-management-program-canarias/        |
      | d1cbddf2-8daf-e311-91d4-02bf0a09015e | https://www.pre.thesaurus.ie.edu/es/lifelong-learning/programas/advanced-management-program-castilla-y-leon/ |
      | 3ba0251d-04b0-e311-b6a9-005056b41464 | https://www.pre.thesaurus.ie.edu/es/lifelong-learning/programas/advanced-management-program-galicia/         |
      | 132b694f-29f2-df11-aa1b-005056b42592 | https://www.pre.thesaurus.ie.edu/es/lifelong-learning/programas/advanced-management-program-madrid/          |
      | 7b3c4c71-ca2d-e811-8134-70106faad7c1 | https://www.pre.thesaurus.ie.edu/es/lifelong-learning/programas/advanced-management-program-malaga/          |
      | e64805f3-5414-e111-8310-005056b42592 | https://www.pre.thesaurus.ie.edu/es/lifelong-learning/programas/advanced-management-program-murcia/          |
      | ce2554b5-29f2-df11-aa1b-005056b42592 |                                                                                                              |
      | 002b694f-29f2-df11-aa1b-005056b42592 | https://www.pre.thesaurus.ie.edu/es/lifelong-learning/programas/advanced-management-program-pais-vasco/      |
      | a866a569-42f2-ec11-bb3d-000d3abe2e81 | https://www.pre.thesaurus.ie.edu/es/lifelong-learning/programas/advanced-management-program-sevilla/         |
      | 5a08d383-42ab-ef11-b8e8-000d3a49276b | https://www.pre.thesaurus.ie.edu/es/lifelong-learning/programas/advanced-management-program-barcelona/       |
      | 1d2b694f-29f2-df11-aa1b-005056b42592 | https://www.pre.thesaurus.ie.edu/es/lifelong-learning/programas/advanced-management-program-valencia/        |

  @Form1099
  Scenario Outline: Validar tipo de form EN - Embed - PD, PE, Bootcamp, IOPS - Program picklist
    Given que selecciono el Tipo Form 'EN - Embed - PD, PE, Bootcamp, IOPS - Program picklist' y el ID form '1099' para la url '<url>'
    When completo los campos configurados para el formulario con idPrograma '<idProgramaCampoOculto>'
    And envío el formulario
    Then podre ver el Thank you page con country '0f4132be-a5f1-df11-af0a-02bf0a09015e' y province '6ac811d1-28fb-e911-a816-000d3a49d12e'

    Examples:
      | idProgramaCampoOculto                | url                                                                  |
      | 96b22cb2-614b-f011-877a-6045bd9975a8 | https://www.pre.thesaurus.ie.edu/lifelong-learning/programs/ai-week/ |

  @Form1101
  Scenario Outline: Validar tipo de form EN - Embed - PD, PE, Bootcamp, IOPS - Program select
    Given que selecciono el Tipo Form 'EN - Embed - PD, PE, Bootcamp, IOPS - Program select' y el ID form '1101' para la url '<url>'
    When completo los campos configurados para el formulario con idPrograma '<idProgramaCampoOculto>'
    And envío el formulario
    Then podre ver el Thank you page con country '0f4132be-a5f1-df11-af0a-02bf0a09015e' y province '6ac811d1-28fb-e911-a816-000d3a49d12e'

    Examples:
      | idProgramaCampoOculto                | url                                                                                                                          |
      | 9de258cf-2e68-ee11-9ae7-6045bd8968e7 | https://www.pre.thesaurus.ie.edu/lifelong-learning/programs/disruptive-thinking/                                             |
      | ec93fac8-fbb0-ed11-83ff-0022488011d6 | https://www.pre.thesaurus.ie.edu/lifelong-learning/programs/international-contracts-drafting-interpreting/                   |
      | 924186cc-31f9-ec11-bb3d-00224881cbe6 | https://www.pre.thesaurus.ie.edu/lifelong-learning/programs/international-diploma-compliance-control-management/             |
      | afa3d66b-f96b-ee11-9ae7-002248801012 | https://www.pre.thesaurus.ie.edu/lifelong-learning/programs/innovation-management/                                           |
      | 6c4c7290-4867-ee11-9ae7-6045bd8968e7 | https://www.pre.thesaurus.ie.edu/lifelong-learning/programs/digital-marketing/                                               |
      | 35f9cc88-1d95-ef11-8a69-002248822300 | https://www.pre.thesaurus.ie.edu/lifelong-learning/programs/data-science-bootcamp/                                           |
      | 823a15d7-a900-ef11-9f89-6045bd91a9b7 | https://www.pre.thesaurus.ie.edu/lifelong-learning/programs/public-leadership-executive-program/                             |
      | df5372e9-e6e5-ee11-904c-00224885df9e | https://www.pre.thesaurus.ie.edu/lifelong-learning/programs/self-leadership-program-empowering-performance-growth/           |
      | 0decd646-14df-eb11-bacb-00224884dcee | https://www.pre.thesaurus.ie.edu/lifelong-learning/programs/real-estate-investment-management-funds-re-investment-vehicles/  |
      | ae75c995-04f4-e411-a116-06dc7e179538 | https://www.pre.thesaurus.ie.edu/lifelong-learning/programs/high-impact-leadership-program/                                  |
      | 0f3400ad-6986-e211-90d5-005056b42592 | https://www.pre.thesaurus.ie.edu/lifelong-learning/programs/venture-capital/                                                 |
      | 85f26d1b-2d55-e911-a960-000d3a454f67 |                                                                                                                              |
      | 66044f76-c069-ea11-a811-000d3a2cbe51 | https://www.pre.thesaurus.ie.edu/lifelong-learning/programs/hr-leadership-in-the-digital-age/                                |
      | e0023f3a-7f4b-f011-877a-6045bd9975a8 | https://www.pre.thesaurus.ie.edu/lifelong-learning/programs/ai-powered-healthcare/                                           |
      | 6bb16ef4-87fd-ef11-bae3-6045bd9971f8 | https://www.pre.thesaurus.ie.edu/lifelong-learning/programs/geopolitics-global-risks/                                        |
      | 18a840a0-a10b-ef11-9f89-6045bd9463ff | https://www.pre.thesaurus.ie.edu/lifelong-learning/programs/international-legal-practice/                                    |
      | 8e859b19-9d13-f011-998a-6045bd91b778 | https://www.pre.thesaurus.ie.edu/lifelong-learning/programs/anticipatory-leadership-policy-strategy-disruptive-technologies/ |
      | 00f51d4a-664b-f011-877a-6045bd9975a8 | https://www.pre.thesaurus.ie.edu/lifelong-learning/programs/ai-powered-hr-and-talent-management/                             |
      | 96b22cb2-614b-f011-877a-6045bd9975a8 | https://www.pre.thesaurus.ie.edu/lifelong-learning/programs/ai-powered-finance/                                              |
      | 1d942cbd-804b-f011-877a-6045bd9975a8 | https://www.pre.thesaurus.ie.edu/lifelong-learning/programs/ai-powered-legal-practice/                                       |
      | 67fbfc15-8855-f011-877a-7c1e522a4b84 | https://www.pre.thesaurus.ie.edu/lifelong-learning/programs/professional-diploma-in-sales-and-business-development/          |
      | c9da64b6-8b55-f011-877a-7c1e522a4b84 | https://www.pre.thesaurus.ie.edu/lifelong-learning/programs/professional-diploma-in-fashion-luxury-and-fmcgs/                |
      | 370d9ab5-644b-f011-877a-6045bd9975a8 | https://www.pre.thesaurus.ie.edu/lifelong-learning/programs/ai-powered-marketing/                                            |
      | da38ca6d-a855-f011-877a-7c1e522a4b84 | https://www.pre.thesaurus.ie.edu/lifelong-learning/programs/executive-management-program-for-leadership-in-education/        |
      | 3023159a-39cf-ee11-9079-000d3aaba351 | https://www.pre.thesaurus.ie.edu/es/lifelong-learning/programas/women-in-law/                                                |
      | 66b40f8c-c74a-f011-8779-6045bd91b778 | https://www.pre.thesaurus.ie.edu/lifelong-learning/programs/arts-powered-leadership/                                         |
      | 414e4751-24de-ef11-8eea-000d3a2b4f50 | https://www.pre.thesaurus.ie.edu/lifelong-learning/programs/managing-cyber-incidents-ai-driven-world/                        |
      | 53db77d1-7422-ea11-a810-000d3a252d60 | https://www.pre.thesaurus.ie.edu/lifelong-learning/programs/sustainability-executive-program/                                |
      | 7033271b-05e6-ee11-904c-6045bd9463ff |                                                                                                                              |
      | 4daddc9a-6502-eb11-a813-000d3a2cbc56 | https://www.pre.thesaurus.ie.edu/lifelong-learning/programs/advanced-venture-capital-managing-and-growing-a-vc-firm/         |
      | 82ae95a1-287a-ee11-8179-0022488011d6 | https://www.pre.thesaurus.ie.edu/lifelong-learning/programs/creative-problem-solving-for-business-bootcamp/                  |
      | f3d69d28-807c-ee11-8179-0022488011d6 | https://www.pre.thesaurus.ie.edu/lifelong-learning/programs/ie-sustainability-bootcamp/                                      |
      | a106c326-ce3e-e611-8800-06dc7e179538 | https://www.pre.thesaurus.ie.edu/lifelong-learning/programs/strategic-corporate-finance/                                     |
      | 36b89330-2c81-e811-814a-e0071b6c3f51 | https://www.pre.thesaurus.ie.edu/lifelong-learning/programs/communication-skills-public-speaking/                            |
      | a92554b5-29f2-df11-aa1b-005056b42592 | https://www.pre.thesaurus.ie.edu/lifelong-learning/programs/effective-management-security-professionals/                     |
      | 86ededb5-dc93-e311-b6a9-005056b41464 | https://www.pre.thesaurus.ie.edu/lifelong-learning/programs/private-equity/                                                  |
      | b60067b8-83a5-e511-8800-06dc7e179538 | https://www.pre.thesaurus.ie.edu/lifelong-learning/programs/executive-summer-school/                                         |
      | aa3681d1-03f7-e811-8150-70106fa7b0b1 | https://www.pre.thesaurus.ie.edu/lifelong-learning/programs/global-masterclass-learning-development-leadership/              |
      | 82b07ee6-096c-ee11-9ae7-6045bd8968e7 |                                                                                                                              |

  @Form1102
  Scenario Outline: Validar tipo de form ES - Embed - PD, PE, Bootcamp, IOPS - Program select
    Given que selecciono el Tipo Form 'ES - Embed - PD, PE, Bootcamp, IOPS - Program select' y el ID form '1102' para la url '<url>'
    When completo los campos configurados para el formulario con idPrograma '<idProgramaCampoOculto>'
    And envío el formulario
    Then podre ver el Thank you page con country '0f4132be-a5f1-df11-af0a-02bf0a09015e' y province '6ac811d1-28fb-e911-a816-000d3a49d12e'

    Examples:
      | idProgramaCampoOculto                | url                                                                                                                                             |
      | a1a910b9-890a-ee11-8f6e-00224880190f | https://www.pre.thesaurus.ie.edu/es/lifelong-learning/programas/programa-avanzado-direccion-comunicacion-corporativa/                           |
      | 99182ec4-f784-e411-9576-06dc7e179538 | https://www.pre.thesaurus.ie.edu/es/lifelong-learning/programas/programa-direccion-innovacion-sector-salud/                                     |
      | f52361a9-29f2-df11-aa1b-005056b42592 | https://www.pre.thesaurus.ie.edu/es/lifelong-learning/programas/programa-direccion-estrategica-proyectos/                                       |
      | 0d243930-ba31-ec11-b6e6-6045bd8e4080 | https://www.pre.thesaurus.ie.edu/es/lifelong-learning/programas/programa-direccion-estrategica-personas-talento/                                |
      | 487359af-29f2-df11-aa1b-005056b42592 | https://www.pre.thesaurus.ie.edu/es/lifelong-learning/programas/programa-direccion-finanzas-corporativas/                                       |
      | d1ed8569-42ae-ef11-b8e8-000d3aafc06d |                                                                                                                                                 |
      | cd7741fc-c92f-f011-8c4e-7c1e522a45c8 | https://www.pre.thesaurus.ie.edu/es/lifelong-learning/programas/derecho-de-seguros/                                                             |
      | b210225d-013b-f011-b4cc-6045bd9971f8 | https://www.pre.thesaurus.ie.edu/es/lifelong-learning/programas/programa-direccion-estrategica-en-sector-seguros/                               |
      | 4ae5b3db-0824-f011-8c4e-7c1e525d4e1c | https://www.pre.thesaurus.ie.edu/es/lifelong-learning/programas/finanzas-abogados-lenguaje-economico-empresas-mercado/                          |
      | 527359af-29f2-df11-aa1b-005056b42592 | https://www.pre.thesaurus.ie.edu/es/lifelong-learning/programas/programa-direccion-comunicacion-corporativa-management/                         |
      | e42361a9-29f2-df11-aa1b-005056b42592 | https://www.pre.thesaurus.ie.edu/es/lifelong-learning/programas/programa-direccion-coaching-ejecutivo/                                          |
      | d2949b93-1fe2-e511-8800-06dc7e179538 | https://www.pre.thesaurus.ie.edu/es/lifelong-learning/programas/taller-negociacion/                                                             |
      | c563b568-50cc-ec11-a7b5-000d3abf117f | https://www.pre.thesaurus.ie.edu/es/lifelong-learning/programas/programa-direccion-data-analytics-inteligencia-artificial/                      |
      | fb5215bc-6c66-e911-a960-000d3a454977 | https://www.pre.thesaurus.ie.edu/es/lifelong-learning/programas/programa-direccion-banca-digital-e-innovacion-en-el-sector-financiero/          |
      | 747359af-29f2-df11-aa1b-005056b42592 | https://www.pre.thesaurus.ie.edu/es/lifelong-learning/programas/programa-direccion-gestion-estrategica-universo-lujo/                           |
      | b8759a58-dafb-e911-a813-000d3a2cb4d5 | https://www.pre.thesaurus.ie.edu/es/lifelong-learning/programas/programa-avanzado-real-estate-and-hospitality/                                  |
      | 0de4469b-a3b9-ec11-983f-002248827f59 | https://www.pre.thesaurus.ie.edu/es/lifelong-learning/programas/programa-gestion-marketing-productos-servicios-lujo/                            |
      |                                      | https://www.pre.thesaurus.ie.edu/es/lifelong-learning/programas/programa-direccion-marketing-digital-e-commerce/                                |
      | f59de21d-fe3a-f011-b4cc-6045bd9975a8 |                                                                                                                                                 |
      | db24bb94-525a-eb11-a812-000d3abb5eac | https://www.pre.thesaurus.ie.edu/es/lifelong-learning/programas/programa-avanzado-comercializacion-inmobiliaria/                                |
      | d752a5d8-5bf4-e611-80ff-3863bb35cfc0 | https://www.pre.thesaurus.ie.edu/es/lifelong-learning/programas/pa-gestion-patrimonial-activos-inmobiliarios/                                   |
      | 0597a38f-60f4-e711-8126-e0071b6c3f51 | https://www.pre.thesaurus.ie.edu/es/lifelong-learning/programas/programa-avanzado-direccion-ventas/                                             |
      | f661dfc3-b78f-ef11-8a6a-6045bd9a917f | https://www.pre.thesaurus.ie.edu/es/lifelong-learning/programas/certificado-sostenibilidad/                                                     |
      | 26f6dffe-d332-ef11-8409-000d3a4681c3 | https://www.pre.thesaurus.ie.edu/es/lifelong-learning/programas/data-science-bootcamp/                                                          |
      | 08aa6fce-9e55-f011-877a-7c1e522a4b84 | https://www.pre.thesaurus.ie.edu/es/lifelong-learning/programas/m-a-operaciones-complejas-reestructuracion-refinanciacion/                      |
      | c6da4510-860a-ee11-8f6e-00224880190f | https://www.pre.thesaurus.ie.edu/es/lifelong-learning/programas/programa-avanzado-gestion-estrategica-universo-lujo/                            |
      | 04955f1e-f879-ed11-81ad-000d3a205e3b | https://www.pre.thesaurus.ie.edu/es/lifelong-learning/programas/programa-avanzado-supply-chain-management/                                      |
      | 34e09110-1069-e111-b24d-005056b42592 | https://www.pre.thesaurus.ie.edu/es/lifelong-learning/programas/programa-ejecutivo-direccion-de-empresas-inmobiliarias/                         |
      | 7ec4ba54-0865-e311-91d4-02bf0a09015e | https://www.pre.thesaurus.ie.edu/es/lifelong-learning/programas/programa-ejecutivo-liderazgo-sostenibilidad-responsabilidad-social-corporativa/ |
      | 5b80627f-29f2-df11-aa1b-005056b42592 |                                                                                                                                                 |
      | 725e92ff-c602-e511-a116-06dc7e179538 | https://www.pre.thesaurus.ie.edu/es/lifelong-learning/programas/direccion-comercial/                                                            |
      | a40f4cc1-99ef-eb11-bacb-000d3aaf8c43 | https://www.pre.thesaurus.ie.edu/es/lifelong-learning/programas/high-impact-leadership-program/                                                 |
      | e8445e79-29f2-df11-aa1b-005056b42592 | https://www.pre.thesaurus.ie.edu/es/lifelong-learning/programas/foro-inmobiliario/                                                              |
      | 6f4e4f7c-7808-eb11-a813-000d3aa96894 | https://www.pre.thesaurus.ie.edu/es/lifelong-learning/programas/customer-experience/                                                            |
      | 53426fe4-ad1b-ec11-b6e6-6045bd8d2e93 | https://www.pre.thesaurus.ie.edu/es/lifelong-learning/programas/habilidades-comunicacion-efectiva/                                              |
      | 0afae87c-00c4-ee11-9079-0022488011d6 | https://www.pre.thesaurus.ie.edu/es/lifelong-learning/programas/programa-avanzado-esg-en-real-estate/                                           |
      | 0b74d926-7a84-e411-9576-06dc7e179538 | https://www.pre.thesaurus.ie.edu/es/lifelong-learning/programas/empresa-familiar-4-0/                                                           |
      | ce3256dd-451b-e111-8310-005056b42592 | https://www.pre.thesaurus.ie.edu/es/lifelong-learning/programas/finanzas-corporativas-online/                                                   |
      | 2080627f-29f2-df11-aa1b-005056b42592 | https://www.pre.thesaurus.ie.edu/es/lifelong-learning/programas/fundamentos-financieros/                                                        |
      | bd92aafe-fd3d-ef11-8409-6045bd9a6621 | https://www.pre.thesaurus.ie.edu/lifelong-learning/programs/the-leadership-path-empowering-personal-growth-for-organizational-success/          |
      | 24df81e9-bafd-ef11-bae3-6045bd9971f8 | https://www.pre.thesaurus.ie.edu/es/lifelong-learning/programas/gobernanza-corporativa-estrategica/                                             |
      | 5e1bfe73-8342-ef11-a316-6045bd9bb7be | https://www.pre.thesaurus.ie.edu/es/lifelong-learning/programas/programa-de-crecimiento-del-liderazgo/                                          |
      | b73436b2-5808-e511-a116-06dc7e179538 | https://www.pre.thesaurus.ie.edu/es/lifelong-learning/programas/legal-project-management-process-improvement/                                   |
      | e6c809fd-54b5-ea11-a812-000d3aa96be9 | https://www.pre.thesaurus.ie.edu/es/lifelong-learning/programas/programa-de-fiscalidad-global/                                                  |
      | b0972308-ea53-e611-8658-025b1b206542 | https://www.pre.thesaurus.ie.edu/es/lifelong-learning/programas/compliance/                                                                     |
      | 23da0611-fc20-ec11-b6e6-000d3aaf3106 | https://www.pre.thesaurus.ie.edu/lifelong-learning/programs/executive-certificate-law-policy-technology/                                        |
      | cce262d6-93a5-ef11-b8e9-6045bdf632cc | https://www.pre.thesaurus.ie.edu/es/lifelong-learning/programas/programa-avanzado-direccion-empresas-retail/                                    |
      | 86c5a1f8-3f5a-e711-810a-1458d043a570 | https://www.pre.thesaurus.ie.edu/es/lifelong-learning/programas/industria-farmaceutica-implicaciones-legales-y-comerciales/                     |
      | 6bd8aa0e-f3fd-ed11-8f6d-002248801fbf | https://www.pre.thesaurus.ie.edu/es/lifelong-learning/programas/m-a-operaciones-complejas-reestructuracion-refinanciacion/                      |
      | c8c6d10c-be2a-ee11-bdf4-000d3aa9ed25 |                                                                                                                                                 |
      | 56c7dac3-428a-f011-b4cc-7c1e5285a8ab | https://www.pre.thesaurus.ie.edu/es/lifelong-learning/programas/diploma-profesional-ventas-desarrollo-negocio/                                  |
      | 0922edef-93bb-ef11-b8e9-000d3aa8818a | https://www.pre.thesaurus.ie.edu/es/lifelong-learning/programas/programa-avanzado-emprendimiento/                                               |
      | b8bf45a9-4754-ed11-bba2-000d3a205e3b | https://www.pre.thesaurus.ie.edu/es/lifelong-learning/programas/programa-de-direccion-de-empresas-vitivinicolas/                                |
      | 90869eb1-fd16-ec11-b6e6-6045bd887d1a | https://www.pre.thesaurus.ie.edu/es/lifelong-learning/programas/programa-certged-certificacion-en-gobierno-y-estrategia-del-dato/               |
      | f11a5b67-29f2-df11-aa1b-005056b42592 | https://www.pre.thesaurus.ie.edu/es/lifelong-learning/programas/programa-derecho-digital-contratacion/                                          |
      | feb6f3c3-fe4b-ea11-a812-000d3a2cb36f | https://www.pre.thesaurus.ie.edu/es/lifelong-learning/programas/car-lab/                                                                        |
