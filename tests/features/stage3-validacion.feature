Feature: Validar formularios Stage 3 en DEV
  Para garantizar que los formularios Stage 3 estén configurados correctamente en el entorno de pruebas
  Como equipo de automatización
  Queremos navegar a las URLs declaradas en la matriz y verificar que los campos configurados se puedan completar
  y que el identificador de formulario DEV esté presente.

  @Form1040 @all
  Scenario Outline: Validar tipo de form EN - Embed - Tipo 3 - Bachelor - Program select
    Given que selecciono el Tipo Form 'EN - Embed - Tipo 3 - Bachelor - Program select' y el ID form '1040' para la url '<url>'
    When completo los campos configurados para el formulario con idPrograma '<idProgramaCampoOculto>'
    ##And envío el formulario si existe un botón de envío
    ##Then el formulario debe exponer el ID DEV configurado

    Examples:
      | idProgramaCampoOculto                | url                                                                                                                                                        |
      | edacc7fc-8b17-eb11-a813-000d3a2cbe51 | https://www.pre.thesaurus.ie.edu/university/studies/academic-programs/bachelor-applied-mathematics/                                                        |

  @Form1041 @all
  Scenario Outline: Validar tipo de form ES - Embed - Tipo 3 - Bachelor - Program select
    Given que selecciono el Tipo Form 'ES - Embed - Tipo 3 - Bachelor - Program select' y el ID form '1041' para la url '<url>'
    ##When completo los campos configurados para el formulario con idPrograma '<idProgramaCampoOculto>'
    ##And envío el formulario si existe un botón de envío
    ##Then el formulario debe exponer el ID DEV configurado

    Examples:
      | idProgramaCampoOculto                | url                                                                                                                                                      |
      | edacc7fc-8b17-eb11-a813-000d3a2cbe51 | https://www.pre.thesaurus.ie.edu/es/universidad/estudios/oferta-academica/grado-matematicas-aplicadas/                                                   |
      | f22bb741-ec37-e811-8137-70106faad7c1 | https://www.pre.thesaurus.ie.edu/es/universidad/estudios/oferta-academica/grado-estudios-arquitectura/                                                   |
      | 7b566b72-219d-e711-8110-3863bb359f00 | https://www.pre.thesaurus.ie.edu/es/universidad/estudios/oferta-academica/grado-en-comportamiento-y-ciencias-sociales/                                   |
      | 8f35f806-c14c-ea11-a812-000d3a49074b | https://www.pre.thesaurus.ie.edu/es/universidad/estudios/oferta-academica/grado-administracion-empresas/                                                 |
      | d81b3c2f-1766-f011-bec3-7c1e525d4e1c | https://www.pre.thesaurus.ie.edu/es/universidad/grado-global-administracion-empresas/                                                                    |
      | 7cac63f5-2b92-e711-810f-3863bb35cfc0 | https://www.pre.thesaurus.ie.edu/es/universidad/estudios/oferta-academica/grado-comunicacion-medios-digitales/                                           |
      | 41ca5688-0d86-e911-a95c-000d3a454330 | https://www.pre.thesaurus.ie.edu/es/universidad/estudios/oferta-academica/grado-en-computacion-e-inteligencia-artificial/                                |
      | 5be32ebf-d980-e711-810c-3863bb359f00 | https://www.pre.thesaurus.ie.edu/es/universidad/estudios/oferta-academica/grado-en-datos-y-analitica-de-negocio/                                         |
      | 352fa54b-0387-e611-9781-06dc7e179538 | https://www.pre.thesaurus.ie.edu/es/universidad/estudios/oferta-academica/grado-diseno/                                                                  |
      | a34d8de1-5eb7-e811-8148-70106fa7b0b1 | https://www.pre.thesaurus.ie.edu/es/universidad/estudios/oferta-academica/grado-economia/                                                                |
      | 21848aca-0e08-ed11-82e5-000d3abb76b5 | https://www.pre.thesaurus.ie.edu/es/universidad/estudios/oferta-academica/grado-en-ciencias-ambientales-para-la-sostenibilidad/                          |
      | 0f3b09f9-9b20-ee11-9967-000d3a205e3b | https://www.pre.thesaurus.ie.edu/es/universidad/estudios/oferta-academica/grado-diseno-moda/                                                             |
      | 018617e3-b620-ee11-9967-6045bd8968e7 | https://www.pre.thesaurus.ie.edu/es/universidad/estudios/oferta-academica/grado-en-humanidades/                                                          |
      | 3eac079c-4706-e111-8310-005056b42592 | https://www.pre.thesaurus.ie.edu/es/universidad/estudios/oferta-academica/grado-relaciones-internacionales/                                              |
      | 2b0ba0c3-6c8f-ea11-a811-000d3a2cbe51 | https://www.pre.thesaurus.ie.edu/es/universidad/estudios/oferta-academica/grado-derecho/                                                                 |
      | e7700394-48f6-e911-a813-000d3a2cbc56 | https://www.pre.thesaurus.ie.edu/es/universidad/estudios/oferta-academica/grado-politica-derecho-economia/                                               |
      | a9e19f6c-b92f-ef11-840a-6045bd9b60bc | https://www.pre.thesaurus.ie.edu/es/universidad/estudios/oferta-academica/grado-ciencias-politicas/                                                      |
      | a2958389-b6cb-e811-814b-70106fa7b0b1 | https://www.pre.thesaurus.ie.edu/es/universidad/estudios/oferta-academica/doble-grado-en-administracion-de-empresas-datos-y-analitica-de-negocio/        |
      | edc91515-c4ba-ea11-a812-000d3a252d60 | https://www.pre.thesaurus.ie.edu/es/universidad/estudios/oferta-academica/doble-grado-administracion-empresas-diseno/                                    |
      | 08ce9b5f-6521-ee11-9967-000d3aaba351 | https://www.pre.thesaurus.ie.edu/es/universidad/estudios/oferta-academica/doble-grado-administracion-empresas-diseno-moda/                               |
      | b5e9bbce-7b21-ee11-9967-000d3aaba351 | https://www.pre.thesaurus.ie.edu/es/universidad/estudios/oferta-academica/doble-grado-administracion-empresas-humanidades/                               |
      | ba6229bb-7799-e911-a966-000d3a454f67 | https://www.pre.thesaurus.ie.edu/es/universidad/estudios/oferta-academica/doble-grado-administracion-empresas-relaciones-internacionales/                |
      | d9d05e75-7d8f-ea11-a811-000d3a2cbc56 | https://www.pre.thesaurus.ie.edu/es/universidad/estudios/oferta-academica/doble-grado-administracion-empresas-derecho/                                   |
      | bac27810-4646-ee11-be6e-0022488011d6 | https://www.pre.thesaurus.ie.edu/es/universidad/estudios/oferta-academica/doble-grado-en-administracion-de-empresas-computacion-inteligencia-artificial/ |
      | 6a12c862-053d-ef11-8409-6045bd9e3e8c | https://www.pre.thesaurus.ie.edu/es/universidad/estudios/oferta-academica/doble-grado-administracion-empresas-ciencias-politicas/                        |
      | bd9a93de-5546-ee11-be6e-002248801012 | https://www.pre.thesaurus.ie.edu/es/universidad/estudios/oferta-academica/doble-grado-economia-matematicas-aplicadas/                                    |
      | 529a1f0b-42d6-ea11-a813-000d3abb53d2 | https://www.pre.thesaurus.ie.edu/es/universidad/estudios/oferta-academica/doble-grado-economia-relaciones-internacionales/                               |
      | fb74e671-778f-ea11-a811-000d3a2cbc56 | https://www.pre.thesaurus.ie.edu/es/universidad/estudios/oferta-academica/doble-grado-derecho-relaciones-internacionales/                                |

  @Form1005 @all
  Scenario Outline: Validar tipo de form EN - Embed - Tipo 3 - Master - Program select optional Phone number
    Given que selecciono el Tipo Form 'EN - Embed - Tipo 3 - Master - Program select optional Phone number' y el ID form '1005' para la url '<url>'
    ##When completo los campos configurados para el formulario con idPrograma '<idProgramaCampoOculto>'
    ##And envío el formulario si existe un botón de envío
    ##Then el formulario debe exponer el ID DEV configurado

    Examples:
      | idProgramaCampoOculto                | url                                                                                                                                                               |
      | f1465a8b-29f2-df11-aa1b-005056b42592 | https://www.pre.thesaurus.ie.edu/business-school/programs/mba/international-mba/                                                                                  |
      | 6aea88a2-fa00-e811-8129-e0071b6c3f51 | https://www.pre.thesaurus.ie.edu/business-school/programs/masters/executive-master-in-digital-transformation-innovation-leadership/                               |
      | 2b168a76-7569-ed11-9561-000d3a4b7601 | https://www.pre.thesaurus.ie.edu/business-school/programs/masters/executive-master-in-strategic-marketing-communication/                                          |
      | 593b8af3-8769-ed11-9561-000d3a4b7601 | https://www.pre.thesaurus.ie.edu/business-school/programs/masters/master-in-creative-direction-content-branding/                                                  |
      | 63dcc005-70ad-e611-b41d-025b1b206542 | https://www.pre.thesaurus.ie.edu/business-school/programs/masters/master-in-customer-experience-innovation/                                                       |
      | 225a0729-b4e4-e711-8124-e0071b6c3f51 | https://www.pre.thesaurus.ie.edu/business-school/programs/masters/master-in-digital-business-innovation/                                                          |
      | 75060447-b1e4-e711-8124-e0071b6c3f51 | https://www.pre.thesaurus.ie.edu/business-school/programs/masters/master-in-digital-marketing/                                                                    |
      | c4975b97-29f2-df11-aa1b-005056b42592 | https://www.pre.thesaurus.ie.edu/business-school/programs/masters/master-in-finance/                                                                              |
      | 25e7539d-29f2-df11-aa1b-005056b42592 | https://www.pre.thesaurus.ie.edu/business-school/programs/masters/master-in-management/                                                                           |
      | f6b50ca0-a3be-ee11-9079-000d3aaba351 | https://www.pre.thesaurus.ie.edu/business-school/programs/masters/master-in-management-and-strategy/                                                              |
      | 2dcc8f71-5eec-e011-bd26-02bf0a09015e | https://www.pre.thesaurus.ie.edu/business-school/programs/masters/master-in-market-research-consumer-behavior/                                                    |
      | 5d40ddd1-4167-ed11-9561-000d3a4b7601 | https://www.pre.thesaurus.ie.edu/business-school/programs/masters/master-in-strategic-marketing-communication/                                                    |
      | 604e7ad4-a724-ee11-9cbd-000d3aaf2e13 | https://www.pre.thesaurus.ie.edu/business-school/programs/masters/master-in-sustainability-and-business-transformation/                                           |
      | 57e0c4da-0d5e-e611-8800-06dc7e179538 | https://www.pre.thesaurus.ie.edu/business-school/programs/masters/master-in-talent-development-human-resources/                                                   |
      | eee7dfe1-7c8c-e211-b8b8-02bf0a09015e | https://www.pre.thesaurus.ie.edu/business-school/programs/mba/executive-mba/                                                                                      |
      | cf6443ae-04a8-f011-bbd2-7c1e52838468 | https://www.pre.thesaurus.ie.edu/business-school/global-mba/                                                                                                      |
      | 95d1d63e-edd9-e011-b5b0-005056b42592 | https://www.pre.thesaurus.ie.edu/business-school/programs/mba/global-executive-mba/                                                                               |
      | ccf4ed44-7d5b-e911-a95e-000d3a454977 | https://www.pre.thesaurus.ie.edu/business-school/programs/mba/global-online-mba/                                                                                  |
      | 9a926373-29f2-df11-aa1b-005056b42592 | https://www.pre.thesaurus.ie.edu/law-school/programs/executive-llm/                                                                                               |
      | 9a2aea85-78f2-ea11-a815-000d3a2cbc56 | https://www.pre.thesaurus.ie.edu/law-school/programs/master-of-laws-llm/                                                                                          |
      | 9a2aea85-78f2-ea11-a815-000d3a2cbc56 | https://www.pre.thesaurus.ie.edu/law-school/programs/specialization-international-business-law/                                                                   |
      | 9a2aea85-78f2-ea11-a815-000d3a2cbc56 | https://www.pre.thesaurus.ie.edu/law-school/programs/specialization-human-rights-digital-society/                                                                 |
      | 9a2aea85-78f2-ea11-a815-000d3a2cbc56 | https://www.pre.thesaurus.ie.edu/law-school/programs/digital-law-and-intellectual-property/                                                                       |
      | aa965b74-6fe2-ed11-a7c7-002248801b83 | https://www.pre.thesaurus.ie.edu/law-school/programs/master-in-international-legal-studies-llm/                                                                   |
      | aa965b74-6fe2-ed11-a7c7-002248801b83 | https://www.pre.thesaurus.ie.edu/law-school/programs/specialization-human-rights-digital-society/                                                                 |
      | aa965b74-6fe2-ed11-a7c7-002248801b83 | https://www.pre.thesaurus.ie.edu/law-school/programs/specialization-international-economic-law/                                                                   |
      | aa965b74-6fe2-ed11-a7c7-002248801b83 | https://www.pre.thesaurus.ie.edu/law-school/specialization-in-environmental-and-energy-law/                                                                       |
      | 3d5119e7-2575-ec11-8943-000d3a2d621d | https://www.pre.thesaurus.ie.edu/school-architecture-design/programs/master-in-architecture/                                                                      |
      | 747d3bc1-b882-e911-a95c-000d3a454330 | https://www.pre.thesaurus.ie.edu/school-architecture-design/programs/master-in-business-for-architecture-and-design/                                              |
      | e0385b6d-4243-ef11-a316-6045bd8b91bd | https://www.pre.thesaurus.ie.edu/school-architecture-design/programs/mdes-interior-design/                                                                        |
      | 69094c93-415d-ee11-be6f-000d3a4b7601 | https://www.pre.thesaurus.ie.edu/school-politics-economics-global-affairs/programs/master-technology-global-affairs/                                              |
      | 4f7d94a1-375b-f011-bec1-6045bd91b778 | https://www.pre.thesaurus.ie.edu/school-politics-economics-global-affairs/digital-transformation/                                                                 |
      | 4f7d94a1-375b-f011-bec1-6045bd91b778 | https://www.pre.thesaurus.ie.edu/school-politics-economics-global-affairs/environment-energy-and-sustainability/                                                  |
      | 4f7d94a1-375b-f011-bec1-6045bd91b778 | https://www.pre.thesaurus.ie.edu/school-politics-economics-global-affairs/european-union-affairs/                                                                 |
      | 4f7d94a1-375b-f011-bec1-6045bd91b778 | https://www.pre.thesaurus.ie.edu/school-politics-economics-global-affairs/programs/dual-degree-master-in-international-relations-master-of-international-affairs/ |
      | 4f7d94a1-375b-f011-bec1-6045bd91b778 | https://www.pre.thesaurus.ie.edu/school-politics-economics-global-affairs/programs/dual-degree-master-in-international-relations-master-of-public-policy/         |
      | c7b51b7a-c21b-ec11-b6e6-6045bd8d274a | https://www.pre.thesaurus.ie.edu/school-politics-economics-global-affairs/programs/master-in-applied-economics/                                                   |
      | db975b97-29f2-df11-aa1b-005056b42592 | https://www.pre.thesaurus.ie.edu/school-politics-economics-global-affairs/programs/master-in-international-relations/                                             |
      | 2a27c7f7-e0c6-e811-814a-70106fa7b0b1 | https://www.pre.thesaurus.ie.edu/school-politics-economics-global-affairs/programs/master-international-development/                                              |
      | 69094c93-415d-ee11-be6f-000d3a4b7601 | https://www.pre.thesaurus.ie.edu/school-politics-economics-global-affairs/programs/master-technology-global-affairs/                                              |
      | e085afb4-695d-f011-bec2-6045bd9cbfb9 | https://www.pre.thesaurus.ie.edu/school-science-technology/master-financial-technology/                                                                           |
      | 4d37c85a-b7e4-e711-8124-e0071b6c3f51 | https://www.pre.thesaurus.ie.edu/school-science-technology/programs/master-in-computer-science-and-business-technology/                                           |
      | 0b7b28a9-4851-ee11-be6d-000d3aa9ed25 | https://www.pre.thesaurus.ie.edu/masters/dual-degrees/programs/dual-degree-international-mba-master-applied-economics/                                            |
      | 292dd712-9b6e-ef11-a670-6045bdf61fcf | https://www.pre.thesaurus.ie.edu/masters/dual-degrees/programs/dual-degree-international-mba-master-business-analytics-data-science/                              |
      | 6f840d1a-ee54-e811-8143-70106faad7c1 | https://www.pre.thesaurus.ie.edu/masters/dual-degrees/programs/dual-degree-international-mba-master-computer-science-business-technology/                         |
      | 858cdc5e-5371-ed11-9561-6045bd8968e7 | https://www.pre.thesaurus.ie.edu/masters/dual-degrees/programs/dual-degree-international-mba-master-creative-direction-content-branding/                          |
      | 8265bd53-f43a-e711-8104-3863bb35cfc0 | https://www.pre.thesaurus.ie.edu/masters/dual-degrees/programs/dual-degree-international-mba-master-customer-experience-innovation/                               |
      | 0783499e-2e54-e811-8143-70106faad7c1 | https://www.pre.thesaurus.ie.edu/masters/dual-degrees/programs/dual-degree-international-mba-master-digital-business-innovation/                                  |
      | f744c67e-2254-e811-8143-70106faad7c1 | https://www.pre.thesaurus.ie.edu/masters/dual-degrees/programs/dual-degree-international-mba-master-digital-marketing/                                            |
      | 9c298fd2-de91-e911-a95c-000d3a454330 | https://www.pre.thesaurus.ie.edu/masters/dual-degrees/programs/dual-degree-international-mba-master-finance/                                                      |
      | 10d11c41-5a64-ef11-bfe3-6045bd9c5d2d | https://www.pre.thesaurus.ie.edu/masters/dual-degrees/programs/dual-degree-international-mba-master-in-international-legal-studies-llm/                           |
      | 9155cd66-9e74-ee11-8179-002248801fbf | https://www.pre.thesaurus.ie.edu/masters/dual-degrees/programs/dual-degree-international-mba-master-in-sustainability-and-business-transformation/                |
      | 8321e49b-54b4-e911-a965-000d3a454e11 | https://www.pre.thesaurus.ie.edu/masters/dual-degrees/programs/dual-degree-international-mba-master-international-development/                                    |
      | 6a5746ea-5a62-e311-8708-02bf0a09015e | https://www.pre.thesaurus.ie.edu/masters/dual-degrees/programs/dual-degree-international-mba-master-international-relations/                                      |
      | b4b48c92-5c62-e311-8708-02bf0a09015e | https://www.pre.thesaurus.ie.edu/masters/dual-degrees/programs/dual-degree-international-mba-master-market-research-consumer-behavior/                            |
      | 9926a3ef-5162-e311-8708-02bf0a09015e | https://www.pre.thesaurus.ie.edu/masters/dual-degrees/programs/dual-degree-international-mba-master-of-laws-llm/                                                  |
      | 2466cbc6-51a4-e711-8110-3863bb359f00 | https://www.pre.thesaurus.ie.edu/masters/dual-degrees/programs/dual-degree-international-mba-master-real-estate-development/                                      |
      | 4d93dc17-7d71-ed11-9561-000d3aad60ea | https://www.pre.thesaurus.ie.edu/masters/dual-degrees/programs/dual-degree-international-mba-master-strategic-marketing-communication/                            |
      | 22e2774c-e33a-e711-8104-3863bb35cfc0 | https://www.pre.thesaurus.ie.edu/masters/dual-degrees/programs/dual-degree-international-mba-master-talent-development-human-resources/                           |
      | 494da5d3-af6e-ef11-a670-7c1e5251b2f3 | https://www.pre.thesaurus.ie.edu/masters/dual-degrees/programs/dual-degree-master-in-finance-master-business-analytics-data-science/                              |
      | b4e0bc99-135b-e711-810a-1458d043a570 | https://www.pre.thesaurus.ie.edu/masters/dual-degrees/programs/dual-degree-master-in-international-relations-master-of-laws-llm/                                  |
      | 77d4f5c5-9750-ee11-be6d-6045bd8b4c76 | https://www.pre.thesaurus.ie.edu/masters/dual-degrees/programs/dual-degree-master-in-management-master-applied-economics/                                         |
      | 869a190c-916e-ef11-a671-6045bd9bb7be | https://www.pre.thesaurus.ie.edu/masters/dual-degrees/programs/dual-degree-master-in-management-master-business-analytics-and-data-science/                       |
      | e24fbf75-3055-e811-8143-70106faad7c1 | https://www.pre.thesaurus.ie.edu/masters/dual-degrees/programs/dual-degree-master-in-management-master-computer-science-business-technology/                      |
      | 3d7de9d2-f06f-ed11-9561-6045bd8968e7 | https://www.pre.thesaurus.ie.edu/masters/dual-degrees/programs/dual-degree-master-in-management-master-creative-direction-content-branding                        |
      | e7db376a-ee3a-e711-8104-3863bb35cfc0 | https://www.pre.thesaurus.ie.edu/masters/dual-degrees/programs/dual-degree-master-in-management-master-customer-experience-innovation/                            |
      | c796a6ec-0755-e811-8143-70106faad7c1 | https://www.pre.thesaurus.ie.edu/masters/dual-degrees/programs/dual-degree-master-in-management-master-digital-business-innovation/                               |
      | 91453518-f354-e811-8143-70106faad7c1 | https://www.pre.thesaurus.ie.edu/masters/dual-degrees/programs/dual-degree-master-in-management-master-digital-marketing/                                         |
      | 153f36cd-6062-e311-8708-02bf0a09015e | https://www.pre.thesaurus.ie.edu/masters/dual-degrees/programs/dual-degree-master-in-management-master-finance/                                                   |
      | 06129d38-3961-ef11-bfe3-0022488136e0 | https://www.pre.thesaurus.ie.edu/masters/dual-degrees/programs/dual-degree-master-in-management-master-in-international-legal-studies-llm/                        |
      | 7a8c6141-f976-ee11-8179-6045bd8968e7 | https://www.pre.thesaurus.ie.edu/masters/dual-degrees/programs/dual-degree-master-in-management-master-in-sustainability-and-business-transformation/             |
      | 5d9c43e4-a399-ea11-a812-000d3abb5eac | https://www.pre.thesaurus.ie.edu/masters/dual-degrees/programs/dual-degree-master-in-management-master-international-development/                                 |
      | 62eb6e0e-6262-e311-8708-02bf0a09015e | https://www.pre.thesaurus.ie.edu/masters/dual-degrees/programs/dual-degree-master-in-management-master-international-relations/                                   |
      | 7f6e71b7-6462-e311-8708-02bf0a09015e | https://www.pre.thesaurus.ie.edu/masters/dual-degrees/programs/dual-degree-master-in-management-master-market-research-consumer-behavior/                         |
      | b4e0bc99-135b-e711-810a-1458d043a570 | https://www.pre.thesaurus.ie.edu/masters/dual-degrees/programs/dual-degree-master-in-management-master-of-laws-llm/                                               |
      | c8a2625a-5fa4-e711-8110-3863bb359f00 | https://www.pre.thesaurus.ie.edu/masters/dual-degrees/programs/dual-degree-master-in-management-master-real-estate-development/                                   |
      | 0dab787e-6e71-ed11-9561-000d3aad60ea | https://www.pre.thesaurus.ie.edu/masters/dual-degrees/programs/dual-degree-master-in-management-master-strategic-marketing-communication/                         |
      | 22ba45f6-cc3a-e711-8104-3863bb35cfc0 | https://www.pre.thesaurus.ie.edu/masters/dual-degrees/programs/dual-degree-master-in-management-master-talent-development-human-resources/                        |
      | 475e44c6-c09a-f011-b4cc-6045bd99704e | https://www.pre.thesaurus.ie.edu/business-school/dual-degree-master-in-management-master-in-public-policy/                                                        |
      | 88417b04-ab9a-f011-b4cc-6045bd99704e | https://www.pre.thesaurus.ie.edu/business-school/dual-degree-international-mba-master-in-public-policy/                                                           |
      | d0a1a5a0-059d-f011-b41c-7ced8d0cb1c0 | https://www.pre.thesaurus.ie.edu/business-school/dual-degree-master-in-management-master-in-financial-technology/                                                 |
      | 8487c13e-b6a2-f011-bbd2-7c1e525f2b42 | https://www.pre.thesaurus.ie.edu/business-school/dual-degree-international-mba-master-in-financial-technology/                                                    |

  @Form1005 @all
  Scenario Outline: Validar tipo de form EN - Embed - Tipo 3 - Master - Program select required Phone number
    Given que selecciono el Tipo Form 'EN - Embed - Tipo 3 - Master - Program select required Phone number' y el ID form '1006' para la url '<url>'
   ## When completo los campos configurados para el formulario con idPrograma '<idProgramaCampoOculto>'
    ##And envío el formulario si existe un botón de envío
    ##Then el formulario debe exponer el ID DEV configurado

    Examples:
      | idProgramaCampoOculto | url                                                                                 |
      | ninguno               | https://www.pre.thesaurus.ie.edu/business-school/programs/mba/global-executive-mba/ |

  @Form1121 @all
  Scenario Outline: Validar tipo de form EN - Embed - Tipo 3 - Master - Program select - BAC
    Given que selecciono el Tipo Form 'EN - Embed - Tipo 3 - Master - Program select - BAC' y el ID form '1121' para la url '<url>'
    ##When completo los campos configurados para el formulario con idPrograma '<idProgramaCampoOculto>'
    ##And envío el formulario si existe un botón de envío
    ##Then el formulario debe exponer el ID DEV configurado

    Examples:
      | idProgramaCampoOculto                | url                                                                                                                                                               |
      | f1465a8b-29f2-df11-aa1b-005056b42592 | https://www.pre.thesaurus.ie.edu/business-school/programs/mba/international-mba/                                                                                  |
      | 6aea88a2-fa00-e811-8129-e0071b6c3f51 | https://www.pre.thesaurus.ie.edu/business-school/programs/masters/executive-master-in-digital-transformation-innovation-leadership/                               |
      | 2b168a76-7569-ed11-9561-000d3a4b7601 | https://www.pre.thesaurus.ie.edu/business-school/programs/masters/executive-master-in-strategic-marketing-communication/                                          |
      | 593b8af3-8769-ed11-9561-000d3a4b7601 | https://www.pre.thesaurus.ie.edu/business-school/programs/masters/master-in-creative-direction-content-branding/                                                  |
      | 63dcc005-70ad-e611-b41d-025b1b206542 | https://www.pre.thesaurus.ie.edu/business-school/programs/masters/master-in-customer-experience-innovation/                                                       |
      | 225a0729-b4e4-e711-8124-e0071b6c3f51 | https://www.pre.thesaurus.ie.edu/business-school/programs/masters/master-in-digital-business-innovation/                                                          |
      | 75060447-b1e4-e711-8124-e0071b6c3f51 | https://www.pre.thesaurus.ie.edu/business-school/programs/masters/master-in-digital-marketing/                                                                    |
      | c4975b97-29f2-df11-aa1b-005056b42592 | https://www.pre.thesaurus.ie.edu/business-school/programs/masters/master-in-finance/                                                                              |
      | 25e7539d-29f2-df11-aa1b-005056b42592 | https://www.pre.thesaurus.ie.edu/business-school/programs/masters/master-in-management/                                                                           |
      | f6b50ca0-a3be-ee11-9079-000d3aaba351 | https://www.pre.thesaurus.ie.edu/business-school/programs/masters/master-in-management-and-strategy/                                                              |
      | 2dcc8f71-5eec-e011-bd26-02bf0a09015e | https://www.pre.thesaurus.ie.edu/business-school/programs/masters/master-in-market-research-consumer-behavior/                                                    |
      | 5d40ddd1-4167-ed11-9561-000d3a4b7601 | https://www.pre.thesaurus.ie.edu/business-school/programs/masters/master-in-strategic-marketing-communication/                                                    |
      | 604e7ad4-a724-ee11-9cbd-000d3aaf2e13 | https://www.pre.thesaurus.ie.edu/business-school/programs/masters/master-in-sustainability-and-business-transformation/                                           |
      | 57e0c4da-0d5e-e611-8800-06dc7e179538 | https://www.pre.thesaurus.ie.edu/business-school/programs/masters/master-in-talent-development-human-resources/                                                   |
      | eee7dfe1-7c8c-e211-b8b8-02bf0a09015e | https://www.pre.thesaurus.ie.edu/business-school/programs/mba/executive-mba/                                                                                      |
      | cf6443ae-04a8-f011-bbd2-7c1e52838468 | https://www.pre.thesaurus.ie.edu/business-school/global-mba/                                                                                                      |
      | 95d1d63e-edd9-e011-b5b0-005056b42592 | https://www.pre.thesaurus.ie.edu/business-school/programs/mba/global-executive-mba/                                                                               |
      | ccf4ed44-7d5b-e911-a95e-000d3a454977 | https://www.pre.thesaurus.ie.edu/business-school/programs/mba/global-online-mba/                                                                                  |
      | 9a926373-29f2-df11-aa1b-005056b42592 | https://www.pre.thesaurus.ie.edu/law-school/programs/executive-llm/                                                                                               |
      | 9a2aea85-78f2-ea11-a815-000d3a2cbc56 | https://www.pre.thesaurus.ie.edu/law-school/programs/master-of-laws-llm/                                                                                          |
      | 9a2aea85-78f2-ea11-a815-000d3a2cbc56 | https://www.pre.thesaurus.ie.edu/law-school/programs/specialization-international-business-law/                                                                   |
      | 9a2aea85-78f2-ea11-a815-000d3a2cbc56 | https://www.pre.thesaurus.ie.edu/law-school/programs/specialization-human-rights-digital-society/                                                                 |
      | 9a2aea85-78f2-ea11-a815-000d3a2cbc56 | https://www.pre.thesaurus.ie.edu/law-school/programs/digital-law-and-intellectual-property/                                                                       |
      | aa965b74-6fe2-ed11-a7c7-002248801b83 | https://www.pre.thesaurus.ie.edu/law-school/programs/master-in-international-legal-studies-llm/                                                                   |
      | aa965b74-6fe2-ed11-a7c7-002248801b83 | https://www.pre.thesaurus.ie.edu/law-school/programs/specialization-human-rights-digital-society/                                                                 |
      | aa965b74-6fe2-ed11-a7c7-002248801b83 | https://www.pre.thesaurus.ie.edu/law-school/programs/specialization-international-economic-law/                                                                   |
      | aa965b74-6fe2-ed11-a7c7-002248801b83 | https://www.pre.thesaurus.ie.edu/law-school/specialization-in-environmental-and-energy-law/                                                                       |
      | 3d5119e7-2575-ec11-8943-000d3a2d621d | https://www.pre.thesaurus.ie.edu/school-architecture-design/programs/master-in-architecture/                                                                      |
      | 747d3bc1-b882-e911-a95c-000d3a454330 | https://www.pre.thesaurus.ie.edu/school-architecture-design/programs/master-in-business-for-architecture-and-design/                                              |
      | e0385b6d-4243-ef11-a316-6045bd8b91bd | https://www.pre.thesaurus.ie.edu/school-architecture-design/programs/mdes-interior-design/                                                                        |
      | 69094c93-415d-ee11-be6f-000d3a4b7601 | https://www.pre.thesaurus.ie.edu/school-politics-economics-global-affairs/programs/master-technology-global-affairs/                                              |
      | 4f7d94a1-375b-f011-bec1-6045bd91b778 | ninguno                                                                                                                                                           |
      | 4f7d94a1-375b-f011-bec1-6045bd91b778 | https://www.pre.thesaurus.ie.edu/school-politics-economics-global-affairs/digital-transformation/                                                                 |
      | 4f7d94a1-375b-f011-bec1-6045bd91b778 | https://www.pre.thesaurus.ie.edu/school-politics-economics-global-affairs/environment-energy-and-sustainability/                                                  |
      | 4f7d94a1-375b-f011-bec1-6045bd91b778 | https://www.pre.thesaurus.ie.edu/school-politics-economics-global-affairs/european-union-affairs/                                                                 |
      | 4f7d94a1-375b-f011-bec1-6045bd91b778 | https://www.pre.thesaurus.ie.edu/school-politics-economics-global-affairs/programs/dual-degree-master-in-international-relations-master-of-international-affairs/ |
      | 4f7d94a1-375b-f011-bec1-6045bd91b778 | https://www.pre.thesaurus.ie.edu/school-politics-economics-global-affairs/programs/dual-degree-master-in-international-relations-master-of-public-policy/         |
      | c7b51b7a-c21b-ec11-b6e6-6045bd8d274a | https://www.pre.thesaurus.ie.edu/school-politics-economics-global-affairs/programs/master-in-applied-economics/                                                   |
      | db975b97-29f2-df11-aa1b-005056b42592 | https://www.pre.thesaurus.ie.edu/school-politics-economics-global-affairs/programs/master-in-international-relations/                                             |
      | 2a27c7f7-e0c6-e811-814a-70106fa7b0b1 | https://www.pre.thesaurus.ie.edu/school-politics-economics-global-affairs/programs/master-international-development/                                              |
      | 69094c93-415d-ee11-be6f-000d3a4b7601 | https://www.pre.thesaurus.ie.edu/school-politics-economics-global-affairs/programs/master-technology-global-affairs/                                              |
      | e085afb4-695d-f011-bec2-6045bd9cbfb9 | https://www.pre.thesaurus.ie.edu/school-science-technology/master-financial-technology/                                                                           |
      | 4d37c85a-b7e4-e711-8124-e0071b6c3f51 | https://www.pre.thesaurus.ie.edu/school-science-technology/programs/master-in-computer-science-and-business-technology/                                           |
      | 0b7b28a9-4851-ee11-be6d-000d3aa9ed25 | https://www.pre.thesaurus.ie.edu/masters/dual-degrees/programs/dual-degree-international-mba-master-applied-economics/                                            |
      | 292dd712-9b6e-ef11-a670-6045bdf61fcf | https://www.pre.thesaurus.ie.edu/masters/dual-degrees/programs/dual-degree-international-mba-master-business-analytics-data-science/                              |
      | 6f840d1a-ee54-e811-8143-70106faad7c1 | https://www.pre.thesaurus.ie.edu/masters/dual-degrees/programs/dual-degree-international-mba-master-computer-science-business-technology/                         |
      | 858cdc5e-5371-ed11-9561-6045bd8968e7 | https://www.pre.thesaurus.ie.edu/masters/dual-degrees/programs/dual-degree-international-mba-master-creative-direction-content-branding/                          |
      | 8265bd53-f43a-e711-8104-3863bb35cfc0 | https://www.pre.thesaurus.ie.edu/masters/dual-degrees/programs/dual-degree-international-mba-master-customer-experience-innovation/                               |
      | 0783499e-2e54-e811-8143-70106faad7c1 | https://www.pre.thesaurus.ie.edu/masters/dual-degrees/programs/dual-degree-international-mba-master-digital-business-innovation/                                  |
      | f744c67e-2254-e811-8143-70106faad7c1 | https://www.pre.thesaurus.ie.edu/masters/dual-degrees/programs/dual-degree-international-mba-master-digital-marketing/                                            |
      | 9c298fd2-de91-e911-a95c-000d3a454330 | https://www.pre.thesaurus.ie.edu/masters/dual-degrees/programs/dual-degree-international-mba-master-finance/                                                      |
      | 10d11c41-5a64-ef11-bfe3-6045bd9c5d2d | https://www.pre.thesaurus.ie.edu/masters/dual-degrees/programs/dual-degree-international-mba-master-in-international-legal-studies-llm/                           |
      | 9155cd66-9e74-ee11-8179-002248801fbf | https://www.pre.thesaurus.ie.edu/masters/dual-degrees/programs/dual-degree-international-mba-master-in-sustainability-and-business-transformation/                |
      | 8321e49b-54b4-e911-a965-000d3a454e11 | https://www.pre.thesaurus.ie.edu/masters/dual-degrees/programs/dual-degree-international-mba-master-international-development/                                    |
      | 6a5746ea-5a62-e311-8708-02bf0a09015e | https://www.pre.thesaurus.ie.edu/masters/dual-degrees/programs/dual-degree-international-mba-master-international-relations/                                      |
      | b4b48c92-5c62-e311-8708-02bf0a09015e | https://www.pre.thesaurus.ie.edu/masters/dual-degrees/programs/dual-degree-international-mba-master-market-research-consumer-behavior/                            |
      | 9926a3ef-5162-e311-8708-02bf0a09015e | https://www.pre.thesaurus.ie.edu/masters/dual-degrees/programs/dual-degree-international-mba-master-of-laws-llm/                                                  |
      | 2466cbc6-51a4-e711-8110-3863bb359f00 | https://www.pre.thesaurus.ie.edu/masters/dual-degrees/programs/dual-degree-international-mba-master-real-estate-development/                                      |
      | 4d93dc17-7d71-ed11-9561-000d3aad60ea | https://www.pre.thesaurus.ie.edu/masters/dual-degrees/programs/dual-degree-international-mba-master-strategic-marketing-communication/                            |
      | 22e2774c-e33a-e711-8104-3863bb35cfc0 | https://www.pre.thesaurus.ie.edu/masters/dual-degrees/programs/dual-degree-international-mba-master-talent-development-human-resources/                           |
      | 494da5d3-af6e-ef11-a670-7c1e5251b2f3 | https://www.pre.thesaurus.ie.edu/masters/dual-degrees/programs/dual-degree-master-in-finance-master-business-analytics-data-science/                              |
      | b4e0bc99-135b-e711-810a-1458d043a570 | https://www.pre.thesaurus.ie.edu/masters/dual-degrees/programs/dual-degree-master-in-international-relations-master-of-laws-llm/                                  |
      | 77d4f5c5-9750-ee11-be6d-6045bd8b4c76 | https://www.pre.thesaurus.ie.edu/masters/dual-degrees/programs/dual-degree-master-in-management-master-applied-economics/                                         |
      | 869a190c-916e-ef11-a671-6045bd9bb7be | https://www.pre.thesaurus.ie.edu/masters/dual-degrees/programs/dual-degree-master-in-management-master-business-analytics-and-data-science/                       |
      | e24fbf75-3055-e811-8143-70106faad7c1 | https://www.pre.thesaurus.ie.edu/masters/dual-degrees/programs/dual-degree-master-in-management-master-computer-science-business-technology/                      |
      | 3d7de9d2-f06f-ed11-9561-6045bd8968e7 | https://www.pre.thesaurus.ie.edu/masters/dual-degrees/programs/dual-degree-master-in-management-master-creative-direction-content-branding                        |
      | e7db376a-ee3a-e711-8104-3863bb35cfc0 | https://www.pre.thesaurus.ie.edu/masters/dual-degrees/programs/dual-degree-master-in-management-master-customer-experience-innovation/                            |
      | c796a6ec-0755-e811-8143-70106faad7c1 | https://www.pre.thesaurus.ie.edu/masters/dual-degrees/programs/dual-degree-master-in-management-master-digital-business-innovation/                               |
      | 91453518-f354-e811-8143-70106faad7c1 | https://www.pre.thesaurus.ie.edu/masters/dual-degrees/programs/dual-degree-master-in-management-master-digital-marketing/                                         |
      | 153f36cd-6062-e311-8708-02bf0a09015e | https://www.pre.thesaurus.ie.edu/masters/dual-degrees/programs/dual-degree-master-in-management-master-finance/                                                   |
      | 06129d38-3961-ef11-bfe3-0022488136e0 | https://www.pre.thesaurus.ie.edu/masters/dual-degrees/programs/dual-degree-master-in-management-master-in-international-legal-studies-llm/                        |
      | 7a8c6141-f976-ee11-8179-6045bd8968e7 | https://www.pre.thesaurus.ie.edu/masters/dual-degrees/programs/dual-degree-master-in-management-master-in-sustainability-and-business-transformation/             |
      | 5d9c43e4-a399-ea11-a812-000d3abb5eac | https://www.pre.thesaurus.ie.edu/masters/dual-degrees/programs/dual-degree-master-in-management-master-international-development/                                 |
      | 62eb6e0e-6262-e311-8708-02bf0a09015e | https://www.pre.thesaurus.ie.edu/masters/dual-degrees/programs/dual-degree-master-in-management-master-international-relations/                                   |
      | 7f6e71b7-6462-e311-8708-02bf0a09015e | https://www.pre.thesaurus.ie.edu/masters/dual-degrees/programs/dual-degree-master-in-management-master-market-research-consumer-behavior/                         |
      | b4e0bc99-135b-e711-810a-1458d043a570 | https://www.pre.thesaurus.ie.edu/masters/dual-degrees/programs/dual-degree-master-in-management-master-of-laws-llm/                                               |
      | c8a2625a-5fa4-e711-8110-3863bb359f00 | https://www.pre.thesaurus.ie.edu/masters/dual-degrees/programs/dual-degree-master-in-management-master-real-estate-development/                                   |
      | 0dab787e-6e71-ed11-9561-000d3aad60ea | https://www.pre.thesaurus.ie.edu/masters/dual-degrees/programs/dual-degree-master-in-management-master-strategic-marketing-communication/                         |
      | 22ba45f6-cc3a-e711-8104-3863bb35cfc0 | https://www.pre.thesaurus.ie.edu/masters/dual-degrees/programs/dual-degree-master-in-management-master-talent-development-human-resources/                        |
      | ninguno                              | https://www.pre.thesaurus.ie.edu/business-school/dual-degree-master-in-management-master-in-public-policy/                                                        |
      | ninguno                              | https://www.pre.thesaurus.ie.edu/business-school/dual-degree-international-mba-master-in-public-policy/                                                           |
      | ninguno                              | https://www.pre.thesaurus.ie.edu/business-school/dual-degree-master-in-management-master-in-financial-technology/                                                 |
      | ninguno                              | https://www.pre.thesaurus.ie.edu/business-school/dual-degree-international-mba-master-in-financial-technology/                                                    |

  @Form1123 @all
  Scenario Outline: Validar tipo de form EN - Embed - Tipo 3 - Master - Program select - Whatsapp
    Given que selecciono el Tipo Form 'EN - Embed - Tipo 3 - Master - Program select - Whatsapp' y el ID form '1123' para la url '<url>'
    ##When completo los campos configurados para el formulario con idPrograma '<idProgramaCampoOculto>'
    ##And envío el formulario si existe un botón de envío
    ##Then el formulario debe exponer el ID DEV configurado

    Examples:
      | idProgramaCampoOculto                | url                                                                                                                                                               |
      | 6aea88a2-fa00-e811-8129-e0071b6c3f51 | https://www.pre.thesaurus.ie.edu/business-school/programs/masters/executive-master-in-digital-transformation-innovation-leadership/                               |
      | 2b168a76-7569-ed11-9561-000d3a4b7601 | https://www.pre.thesaurus.ie.edu/business-school/programs/masters/executive-master-in-strategic-marketing-communication/                                          |
      | 593b8af3-8769-ed11-9561-000d3a4b7601 | https://www.pre.thesaurus.ie.edu/business-school/programs/masters/master-in-creative-direction-content-branding/                                                  |
      | 63dcc005-70ad-e611-b41d-025b1b206542 | https://www.pre.thesaurus.ie.edu/business-school/programs/masters/master-in-customer-experience-innovation/                                                       |
      | 225a0729-b4e4-e711-8124-e0071b6c3f51 | https://www.pre.thesaurus.ie.edu/business-school/programs/masters/master-in-digital-business-innovation/                                                          |
      | 8bfe9dc4-406f-ea11-a811-000d3a2cbe51 | https://www.pre.thesaurus.ie.edu/business-school/programs/masters/master-in-management/                                                                           |
      | b5da0fc4-03a4-e111-92a3-005056b460d2 | https://www.pre.thesaurus.ie.edu/business-school/programs/mba/executive-mba/                                                                                      |
      | f1465a8b-29f2-df11-aa1b-005056b42592 | https://www.pre.thesaurus.ie.edu/business-school/programs/mba/international-mba/                                                                                  |
      | ab80d1a6-4b96-ed11-aad1-0022488011d6 | ninguno                                                                                                                                                           |
      | 3d51908a-3977-e111-8bb9-005056b42592 | ninguno                                                                                                                                                           |
      | 75060447-b1e4-e711-8124-e0071b6c3f51 | https://www.pre.thesaurus.ie.edu/business-school/programs/masters/master-in-digital-marketing/                                                                    |
      | c4975b97-29f2-df11-aa1b-005056b42592 | https://www.pre.thesaurus.ie.edu/business-school/programs/masters/master-in-finance/                                                                              |
      | 25e7539d-29f2-df11-aa1b-005056b42592 | https://www.pre.thesaurus.ie.edu/business-school/programs/masters/master-in-management/                                                                           |
      | f6b50ca0-a3be-ee11-9079-000d3aaba351 | https://www.pre.thesaurus.ie.edu/business-school/programs/masters/master-in-management-and-strategy/                                                              |
      | 2dcc8f71-5eec-e011-bd26-02bf0a09015e | https://www.pre.thesaurus.ie.edu/business-school/programs/masters/master-in-market-research-consumer-behavior/                                                    |
      | 5d40ddd1-4167-ed11-9561-000d3a4b7601 | https://www.pre.thesaurus.ie.edu/business-school/programs/masters/master-in-strategic-marketing-communication/                                                    |
      | 604e7ad4-a724-ee11-9cbd-000d3aaf2e13 | https://www.pre.thesaurus.ie.edu/business-school/programs/masters/master-in-sustainability-and-business-transformation/                                           |
      | 57e0c4da-0d5e-e611-8800-06dc7e179538 | https://www.pre.thesaurus.ie.edu/business-school/programs/masters/master-in-talent-development-human-resources/                                                   |
      | eee7dfe1-7c8c-e211-b8b8-02bf0a09015e | https://www.pre.thesaurus.ie.edu/business-school/programs/mba/executive-mba/                                                                                      |
      | cf6443ae-04a8-f011-bbd2-7c1e52838468 | https://www.pre.thesaurus.ie.edu/business-school/global-mba/                                                                                                      |
      | 95d1d63e-edd9-e011-b5b0-005056b42592 | https://www.pre.thesaurus.ie.edu/business-school/programs/mba/global-executive-mba/                                                                               |
      | ccf4ed44-7d5b-e911-a95e-000d3a454977 | https://www.pre.thesaurus.ie.edu/business-school/programs/mba/global-online-mba/                                                                                  |
      | 9a926373-29f2-df11-aa1b-005056b42592 | https://www.pre.thesaurus.ie.edu/law-school/programs/executive-llm/                                                                                               |
      | 9a2aea85-78f2-ea11-a815-000d3a2cbc56 | https://www.pre.thesaurus.ie.edu/law-school/programs/master-of-laws-llm/                                                                                          |
      | 9a2aea85-78f2-ea11-a815-000d3a2cbc56 | https://www.pre.thesaurus.ie.edu/law-school/programs/specialization-international-business-law/                                                                   |
      | 9a2aea85-78f2-ea11-a815-000d3a2cbc56 | https://www.pre.thesaurus.ie.edu/law-school/programs/specialization-human-rights-digital-society/                                                                 |
      | 9a2aea85-78f2-ea11-a815-000d3a2cbc56 | https://www.pre.thesaurus.ie.edu/law-school/programs/digital-law-and-intellectual-property/                                                                       |
      | aa965b74-6fe2-ed11-a7c7-002248801b83 | https://www.pre.thesaurus.ie.edu/law-school/programs/master-in-international-legal-studies-llm/                                                                   |
      | aa965b74-6fe2-ed11-a7c7-002248801b83 | https://www.pre.thesaurus.ie.edu/law-school/programs/specialization-human-rights-digital-society/                                                                 |
      | aa965b74-6fe2-ed11-a7c7-002248801b83 | https://www.pre.thesaurus.ie.edu/law-school/programs/specialization-international-economic-law/                                                                   |
      | aa965b74-6fe2-ed11-a7c7-002248801b83 | https://www.pre.thesaurus.ie.edu/law-school/specialization-in-environmental-and-energy-law/                                                                       |
      | 3d5119e7-2575-ec11-8943-000d3a2d621d | https://www.pre.thesaurus.ie.edu/school-architecture-design/programs/master-in-architecture/                                                                      |
      | 747d3bc1-b882-e911-a95c-000d3a454330 | https://www.pre.thesaurus.ie.edu/school-architecture-design/programs/master-in-business-for-architecture-and-design/                                              |
      | e0385b6d-4243-ef11-a316-6045bd8b91bd | https://www.pre.thesaurus.ie.edu/school-architecture-design/programs/mdes-interior-design/                                                                        |
      | 69094c93-415d-ee11-be6f-000d3a4b7601 | https://www.pre.thesaurus.ie.edu/school-politics-economics-global-affairs/programs/master-technology-global-affairs/                                              |
      | 4f7d94a1-375b-f011-bec1-6045bd91b778 | ninguno                                                                                                                                                           |
      | 4f7d94a1-375b-f011-bec1-6045bd91b778 | https://www.pre.thesaurus.ie.edu/school-politics-economics-global-affairs/digital-transformation/                                                                 |
      | 4f7d94a1-375b-f011-bec1-6045bd91b778 | https://www.pre.thesaurus.ie.edu/school-politics-economics-global-affairs/environment-energy-and-sustainability/                                                  |
      | 4f7d94a1-375b-f011-bec1-6045bd91b778 | https://www.pre.thesaurus.ie.edu/school-politics-economics-global-affairs/european-union-affairs/                                                                 |
      | 4f7d94a1-375b-f011-bec1-6045bd91b778 | https://www.pre.thesaurus.ie.edu/school-politics-economics-global-affairs/programs/dual-degree-master-in-international-relations-master-of-international-affairs/ |
      | 4f7d94a1-375b-f011-bec1-6045bd91b778 | https://www.pre.thesaurus.ie.edu/school-politics-economics-global-affairs/programs/dual-degree-master-in-international-relations-master-of-public-policy/         |
      | c7b51b7a-c21b-ec11-b6e6-6045bd8d274a | https://www.pre.thesaurus.ie.edu/school-politics-economics-global-affairs/programs/master-in-applied-economics/                                                   |
      | db975b97-29f2-df11-aa1b-005056b42592 | https://www.pre.thesaurus.ie.edu/school-politics-economics-global-affairs/programs/master-in-international-relations/                                             |
      | 2a27c7f7-e0c6-e811-814a-70106fa7b0b1 | https://www.pre.thesaurus.ie.edu/school-politics-economics-global-affairs/programs/master-international-development/                                              |
      | 69094c93-415d-ee11-be6f-000d3a4b7601 | https://www.pre.thesaurus.ie.edu/school-politics-economics-global-affairs/programs/master-technology-global-affairs/                                              |
      | e085afb4-695d-f011-bec2-6045bd9cbfb9 | https://www.pre.thesaurus.ie.edu/school-science-technology/master-financial-technology/                                                                           |
      | 4d37c85a-b7e4-e711-8124-e0071b6c3f51 | https://www.pre.thesaurus.ie.edu/school-science-technology/programs/master-in-computer-science-and-business-technology/                                           |
      | 0b7b28a9-4851-ee11-be6d-000d3aa9ed25 | https://www.pre.thesaurus.ie.edu/masters/dual-degrees/programs/dual-degree-international-mba-master-applied-economics/                                            |
      | 292dd712-9b6e-ef11-a670-6045bdf61fcf | https://www.pre.thesaurus.ie.edu/masters/dual-degrees/programs/dual-degree-international-mba-master-business-analytics-data-science/                              |
      | 6f840d1a-ee54-e811-8143-70106faad7c1 | https://www.pre.thesaurus.ie.edu/masters/dual-degrees/programs/dual-degree-international-mba-master-computer-science-business-technology/                         |
      | 858cdc5e-5371-ed11-9561-6045bd8968e7 | https://www.pre.thesaurus.ie.edu/masters/dual-degrees/programs/dual-degree-international-mba-master-creative-direction-content-branding/                          |
      | 8265bd53-f43a-e711-8104-3863bb35cfc0 | https://www.pre.thesaurus.ie.edu/masters/dual-degrees/programs/dual-degree-international-mba-master-customer-experience-innovation/                               |
      | 0783499e-2e54-e811-8143-70106faad7c1 | https://www.pre.thesaurus.ie.edu/masters/dual-degrees/programs/dual-degree-international-mba-master-digital-business-innovation/                                  |
      | f744c67e-2254-e811-8143-70106faad7c1 | https://www.pre.thesaurus.ie.edu/masters/dual-degrees/programs/dual-degree-international-mba-master-digital-marketing/                                            |
      | 9c298fd2-de91-e911-a95c-000d3a454330 | https://www.pre.thesaurus.ie.edu/masters/dual-degrees/programs/dual-degree-international-mba-master-finance/                                                      |
      | 10d11c41-5a64-ef11-bfe3-6045bd9c5d2d | https://www.pre.thesaurus.ie.edu/masters/dual-degrees/programs/dual-degree-international-mba-master-in-international-legal-studies-llm/                           |
      | 9155cd66-9e74-ee11-8179-002248801fbf | https://www.pre.thesaurus.ie.edu/masters/dual-degrees/programs/dual-degree-international-mba-master-in-sustainability-and-business-transformation/                |
      | 8321e49b-54b4-e911-a965-000d3a454e11 | https://www.pre.thesaurus.ie.edu/masters/dual-degrees/programs/dual-degree-international-mba-master-international-development/                                    |
      | 6a5746ea-5a62-e311-8708-02bf0a09015e | https://www.pre.thesaurus.ie.edu/masters/dual-degrees/programs/dual-degree-international-mba-master-international-relations/                                      |
      | b4b48c92-5c62-e311-8708-02bf0a09015e | https://www.pre.thesaurus.ie.edu/masters/dual-degrees/programs/dual-degree-international-mba-master-market-research-consumer-behavior/                            |
      | 9926a3ef-5162-e311-8708-02bf0a09015e | https://www.pre.thesaurus.ie.edu/masters/dual-degrees/programs/dual-degree-international-mba-master-of-laws-llm/                                                  |
      | 2466cbc6-51a4-e711-8110-3863bb359f00 | https://www.pre.thesaurus.ie.edu/masters/dual-degrees/programs/dual-degree-international-mba-master-real-estate-development/                                      |
      | 4d93dc17-7d71-ed11-9561-000d3aad60ea | https://www.pre.thesaurus.ie.edu/masters/dual-degrees/programs/dual-degree-international-mba-master-strategic-marketing-communication/                            |
      | 22e2774c-e33a-e711-8104-3863bb35cfc0 | https://www.pre.thesaurus.ie.edu/masters/dual-degrees/programs/dual-degree-international-mba-master-talent-development-human-resources/                           |
      | 494da5d3-af6e-ef11-a670-7c1e5251b2f3 | https://www.pre.thesaurus.ie.edu/masters/dual-degrees/programs/dual-degree-master-in-finance-master-business-analytics-data-science/                              |
      | b4e0bc99-135b-e711-810a-1458d043a570 | https://www.pre.thesaurus.ie.edu/masters/dual-degrees/programs/dual-degree-master-in-international-relations-master-of-laws-llm/                                  |
      | 77d4f5c5-9750-ee11-be6d-6045bd8b4c76 | https://www.pre.thesaurus.ie.edu/masters/dual-degrees/programs/dual-degree-master-in-management-master-applied-economics/                                         |
      | 869a190c-916e-ef11-a671-6045bd9bb7be | https://www.pre.thesaurus.ie.edu/masters/dual-degrees/programs/dual-degree-master-in-management-master-business-analytics-and-data-science/                       |
      | e24fbf75-3055-e811-8143-70106faad7c1 | https://www.pre.thesaurus.ie.edu/masters/dual-degrees/programs/dual-degree-master-in-management-master-computer-science-business-technology/                      |
      | 3d7de9d2-f06f-ed11-9561-6045bd8968e7 | https://www.pre.thesaurus.ie.edu/masters/dual-degrees/programs/dual-degree-master-in-management-master-creative-direction-content-branding                        |
      | e7db376a-ee3a-e711-8104-3863bb35cfc0 | https://www.pre.thesaurus.ie.edu/masters/dual-degrees/programs/dual-degree-master-in-management-master-customer-experience-innovation/                            |
      | c796a6ec-0755-e811-8143-70106faad7c1 | https://www.pre.thesaurus.ie.edu/masters/dual-degrees/programs/dual-degree-master-in-management-master-digital-business-innovation/                               |
      | 91453518-f354-e811-8143-70106faad7c1 | https://www.pre.thesaurus.ie.edu/masters/dual-degrees/programs/dual-degree-master-in-management-master-digital-marketing/                                         |
      | 153f36cd-6062-e311-8708-02bf0a09015e | https://www.pre.thesaurus.ie.edu/masters/dual-degrees/programs/dual-degree-master-in-management-master-finance/                                                   |
      | 06129d38-3961-ef11-bfe3-0022488136e0 | https://www.pre.thesaurus.ie.edu/masters/dual-degrees/programs/dual-degree-master-in-management-master-in-international-legal-studies-llm/                        |
      | 7a8c6141-f976-ee11-8179-6045bd8968e7 | https://www.pre.thesaurus.ie.edu/masters/dual-degrees/programs/dual-degree-master-in-management-master-in-sustainability-and-business-transformation/             |
      | 5d9c43e4-a399-ea11-a812-000d3abb5eac | https://www.pre.thesaurus.ie.edu/masters/dual-degrees/programs/dual-degree-master-in-management-master-international-development/                                 |
      | 62eb6e0e-6262-e311-8708-02bf0a09015e | https://www.pre.thesaurus.ie.edu/masters/dual-degrees/programs/dual-degree-master-in-management-master-international-relations/                                   |
      | 7f6e71b7-6462-e311-8708-02bf0a09015e | https://www.pre.thesaurus.ie.edu/masters/dual-degrees/programs/dual-degree-master-in-management-master-market-research-consumer-behavior/                         |
      | b4e0bc99-135b-e711-810a-1458d043a570 | https://www.pre.thesaurus.ie.edu/masters/dual-degrees/programs/dual-degree-master-in-management-master-of-laws-llm/                                               |
      | c8a2625a-5fa4-e711-8110-3863bb359f00 | https://www.pre.thesaurus.ie.edu/masters/dual-degrees/programs/dual-degree-master-in-management-master-real-estate-development/                                   |
      | 0dab787e-6e71-ed11-9561-000d3aad60ea | https://www.pre.thesaurus.ie.edu/masters/dual-degrees/programs/dual-degree-master-in-management-master-strategic-marketing-communication/                         |
      | 22ba45f6-cc3a-e711-8104-3863bb35cfc0 | https://www.pre.thesaurus.ie.edu/masters/dual-degrees/programs/dual-degree-master-in-management-master-talent-development-human-resources/                        |
      | ninguno                              | https://www.pre.thesaurus.ie.edu/business-school/dual-degree-master-in-management-master-in-public-policy/                                                        |
      | ninguno                              | https://www.pre.thesaurus.ie.edu/business-school/dual-degree-international-mba-master-in-public-policy/                                                           |
      | ninguno                              | https://www.pre.thesaurus.ie.edu/business-school/dual-degree-master-in-management-master-in-financial-technology/                                                 |
      | ninguno                              | https://www.pre.thesaurus.ie.edu/business-school/dual-degree-international-mba-master-in-financial-technology/                                                    |

  @Form1007 @all
  Scenario Outline: Validar tipo de form ES - Embed - Tipo 3 - Master - Program select with optional Phone number
    Given que selecciono el Tipo Form 'ES - Embed - Tipo 3 - Master - Program select with optional Phone number' y el ID form '1007' para la url '<url>'
   # When completo los campos configurados para el formulario con idPrograma '<idProgramaCampoOculto>'
    #And envío el formulario si existe un botón de envío
    #Then el formulario debe exponer el ID DEV configurado

    Examples:
      | idProgramaCampoOculto                | url                                                                                                                          |
      | 63e56091-29f2-df11-aa1b-005056b42592 | https://www.pre.thesaurus.ie.edu/es/law-school/programas/master-en-asesoria-fiscal-de-empresas-llm/                          |
      | 8bfe9dc4-406f-ea11-a811-000d3a2cbe51 | https://www.pre.thesaurus.ie.edu/es/business-school/programas/masters/master-in-management/                                  |
      | b5da0fc4-03a4-e111-92a3-005056b460d2 | https://www.pre.thesaurus.ie.edu/es/business-school/programas/mba/executive-mba/                                             |
      | f1465a8b-29f2-df11-aa1b-005056b42592 | https://www.pre.thesaurus.ie.edu/es/business-school/programas/mba/international-mba/                                         |
      | ab80d1a6-4b96-ed11-aad1-0022488011d6 | https://www.pre.thesaurus.ie.edu/es/law-school/programas/doble-master-acceso-abogacia-y-asesoria-derecho-digital-tecnologia/ |
      | 3d51908a-3977-e111-8bb9-005056b42592 | https://www.pre.thesaurus.ie.edu/es/law-school/programas/doble-master-acceso-abogacia-y-asesoria-fiscal-empresas/            |
      | ninguno                              | https://www.pre.thesaurus.ie.edu/es/law-school/programas/doble-master-acceso-abogacia-y-asesoria-derecho-digital-tecnologia/ |

  @Form1008 @revision
  Scenario Outline: Validar tipo de form ES - Embed - Tipo 3 - Master - Program select with required Phone number
    Given que selecciono el Tipo Form 'ES - Embed - Tipo 3 - Master - Program select with required Phone number' y el ID form '1008' para la url '<url>'
    ##When completo los campos configurados para el formulario con idPrograma '<idProgramaCampoOculto>'
    ##And envío el formulario si existe un botón de envío
    ##Then el formulario debe exponer el ID DEV configurado

    Examples:
      | idProgramaCampoOculto | url                                                                              |
      | ninguno               | https://www.pre.thesaurus.ie.edu/es/business-school/programas/mba/executive-mba/ |

  @Form1122 @all
  Scenario Outline: Validar tipo de form ES - Embed - Tipo 3 - Master - Program select - BAC
    Given que selecciono el Tipo Form 'ES - Embed - Tipo 3 - Master - Program select - BAC' y el ID form '1122' para la url '<url>'
   ## When completo los campos configurados para el formulario con idPrograma '<idProgramaCampoOculto>'
    ##And envío el formulario si existe un botón de envío
    ##Then el formulario debe exponer el ID DEV configurado

    Examples:
      | idProgramaCampoOculto                | url                                                                                                               |
      | 63e56091-29f2-df11-aa1b-005056b42592 | https://www.pre.thesaurus.ie.edu/es/law-school/programas/master-en-asesoria-fiscal-de-empresas-llm/               |
      | 8bfe9dc4-406f-ea11-a811-000d3a2cbe51 | https://www.pre.thesaurus.ie.edu/es/business-school/programas/masters/master-in-management/                       |
      | b5da0fc4-03a4-e111-92a3-005056b460d2 | https://www.pre.thesaurus.ie.edu/es/business-school/programas/mba/executive-mba/                                  |
      | f1465a8b-29f2-df11-aa1b-005056b42592 | https://www.pre.thesaurus.ie.edu/es/business-school/programas/mba/international-mba/                              |
      | ab80d1a6-4b96-ed11-aad1-0022488011d6 | ninguno                                                                                                           |
      | 3d51908a-3977-e111-8bb9-005056b42592 | https://www.pre.thesaurus.ie.edu/es/law-school/programas/doble-master-acceso-abogacia-y-asesoria-fiscal-empresas/ |

  @Form1124 @all
  Scenario Outline: Validar tipo de form ES - Embed - Tipo 3 - Master - Program select - Whatsapp
    Given que selecciono el Tipo Form 'ES - Embed - Tipo 3 - Master - Program select - Whatsapp' y el ID form '1124' para la url '<url>'
   # When completo los campos configurados para el formulario con idPrograma '<idProgramaCampoOculto>'
    #And envío el formulario si existe un botón de envío
    #Then el formulario debe exponer el ID DEV configurado

    Examples:
      | idProgramaCampoOculto                | url                                                                                                                          |
      | 63e56091-29f2-df11-aa1b-005056b42592 | https://www.pre.thesaurus.ie.edu/es/law-school/programas/master-en-asesoria-fiscal-de-empresas-llm/                          |
      | 8bfe9dc4-406f-ea11-a811-000d3a2cbe51 | https://www.pre.thesaurus.ie.edu/es/business-school/programas/masters/master-in-management/                                  |
      | b5da0fc4-03a4-e111-92a3-005056b460d2 | https://www.pre.thesaurus.ie.edu/es/business-school/programas/mba/executive-mba/                                             |
      | f1465a8b-29f2-df11-aa1b-005056b42592 | https://www.pre.thesaurus.ie.edu/es/business-school/programas/mba/international-mba/                                         |
      | ab80d1a6-4b96-ed11-aad1-0022488011d6 | https://www.pre.thesaurus.ie.edu/es/law-school/programas/doble-master-acceso-abogacia-y-asesoria-derecho-digital-tecnologia/ |
      | 3d51908a-3977-e111-8bb9-005056b42592 | https://www.pre.thesaurus.ie.edu/es/law-school/programas/doble-master-acceso-abogacia-y-asesoria-fiscal-empresas/            |

  @Form1110 @all
  Scenario Outline: Validar tipo de form EN - Embed - Tipo 3 - Summer PRE - UNI - Program select with optional Phone number
    Given que selecciono el Tipo Form 'EN - Embed - Tipo 3 - Summer PRE - UNI - Program select with optional Phone number' y el ID form '1110' para la url '<url>'
   # When completo los campos configurados para el formulario con idPrograma '<idProgramaCampoOculto>'
    #And envío el formulario si existe un botón de envío
    #Then el formulario debe exponer el ID DEV configurado

    Examples:
      | idProgramaCampoOculto                | url                                                                                             |
      | 08892df4-bda5-ef11-b8e8-0022488a207b | https://www.pre.thesaurus.ie.edu/ie-summer-school/pre-university/pre-university-summer-program/ |
      | bd2fd2d5-d187-f011-b4cc-7c1e525d4e1c | https://www.pre.thesaurus.ie.edu/ie-summer-school/pre-business-specialization/                  |
      | 6454edb5-3987-f011-b4cc-6045bd9cbfb9 | https://www.pre.thesaurus.ie.edu/ie-summer-school/pre-law-specialization/                       |
      | d1b0aa26-e887-f011-b4cc-7c1e525d4e1c | https://www.pre.thesaurus.ie.edu/ie-summer-school/pre-design-specialization/                    |

  @Form1112 @all
  Scenario Outline: Validar tipo de form EN - Embed - Tipo 3 - Summer UNI - Program select
    Given que selecciono el Tipo Form 'EN - Embed - Tipo 3 - Summer UNI - Program select' y el ID form '1112' para la url '<url>'
    When completo los campos configurados para el formulario con idPrograma '<idProgramaCampoOculto>'
    #And envío el formulario si existe un botón de envío
    #Then el formulario debe exponer el ID DEV configurado

    Examples:
      | idProgramaCampoOculto                | url                                                                                     |
      | 90b0cc31-68ad-ef11-b8e8-0022488a207b | https://www.pre.thesaurus.ie.edu/ie-summer-school/university/university-summer-program/ |

  @Form1111 @all
  Scenario Outline: Validar tipo de form EN - Embed - Tipo 3 - Summer UNI - Especialización select
    Given que selecciono el Tipo Form 'EN - Embed - Tipo 3 - Summer UNI - Especialización select' y el ID form '1111' para la url '<url>'
    When completo los campos configurados para el formulario con idPrograma '<idProgramaCampoOculto>'
    #And envío el formulario si existe un botón de envío
    #Then el formulario debe exponer el ID DEV configurado

    Examples:
      | idProgramaCampoOculto                | url                                                                                                   |
      | 98cb3e29-0188-f011-b4cc-7c1e525d4e1c | https://www.pre.thesaurus.ie.edu/ie-summer-school/idea-validator-accelerator/                         |
      | bbef9eac-0d88-f011-b4cc-7c1e525d4e1c | https://www.pre.thesaurus.ie.edu/ie-summer-school/university/entrepreneurship-summer-school/          |
      | 19bbd69f-3587-f011-b4cc-6045bd9cbfb9 | https://www.pre.thesaurus.ie.edu/ie-summer-school/business-and-management-specialization/             |
      | 196c785b-2787-f011-b4cc-6045bd9cbfb9 | https://www.pre.thesaurus.ie.edu/ie-summer-school/finance-fundamentals/                               |
      | fa1fd71e-7aad-ef11-b8e8-0022488a207b | https://www.pre.thesaurus.ie.edu/ie-summer-school/university/breakthrough-tech-ai/                    |
      | a86c7a05-ca87-f011-b4cc-7c1e52505924 | https://www.pre.thesaurus.ie.edu/ie-summer-school/breackthrough-robotics/                             |
      | e10551a5-e387-f011-b4cc-7c1e525d4e1c | https://www.pre.thesaurus.ie.edu/ie-summer-school/digital-marketing-specialization/                   |
      | 57923ee4-9dad-ef11-b8e8-6045bd9223ff | https://www.pre.thesaurus.ie.edu/ie-summer-school/university/fashion-styling-media/                   |
      | 44c80443-99ad-ef11-b8e9-6045bd98e616 | https://www.pre.thesaurus.ie.edu/ie-summer-school/university/nextgen-public-changemakers/             |
      | a569a66f-cd87-f011-b4cc-7c1e525d4e1c | https://www.pre.thesaurus.ie.edu/ie-summer-school/upskilling-for-academic-excellence/                 |
      | 67343149-4287-f011-b4cc-6045bd9cbfb9 | https://www.pre.thesaurus.ie.edu/ie-summer-school/university/upskilling-for-professional-development/ |
      | 7f055d36-81ad-ef11-b8e9-6045bd98e616 | https://www.pre.thesaurus.ie.edu/ie-summer-school/university/law-innovation/                          |
      | 40e8906c-e587-f011-b4cc-7c1e525d4e1c | https://www.pre.thesaurus.ie.edu/ie-summer-school/demo-especializacion-adobe/                         |

  @Form1129 @all
  Scenario Outline: Validar tipo de form EN - Embed - Tipo 3 - Summer UNI - Program select - BAC
    Given que selecciono el Tipo Form 'EN - Embed - Tipo 3 - Summer UNI - Program select - BAC' y el ID form '1129' para la url '<url>'
   # When completo los campos configurados para el formulario con idPrograma '<idProgramaCampoOculto>'
    #And envío el formulario si existe un botón de envío
    #Then el formulario debe exponer el ID DEV configurado

    Examples:
      | idProgramaCampoOculto                | url                                                                                     |
      | 90b0cc31-68ad-ef11-b8e8-0022488a207b | https://www.pre.thesaurus.ie.edu/ie-summer-school/university/university-summer-program/ |

  @Form1130 @all
  Scenario Outline: Validar tipo de form EN - Embed - Tipo 3 - Summer UNI - Program select - Whatsapp
    Given que selecciono el Tipo Form 'EN - Embed - Tipo 3 - Summer UNI - Program select - Whatsapp' y el ID form '1130' para la url '<url>'
   # When completo los campos configurados para el formulario con idPrograma '<idProgramaCampoOculto>'
    #And envío el formulario si existe un botón de envío
    #Then el formulario debe exponer el ID DEV configurado

    Examples:
      | idProgramaCampoOculto                | url                                                                                     |
      | 90b0cc31-68ad-ef11-b8e8-0022488a207b | https://www.pre.thesaurus.ie.edu/ie-summer-school/university/university-summer-program/ |

  @Form1131 @all
  Scenario Outline: Validar tipo de form EN - Embed - Tipo 3 - Summer PRE- UNI - Program select optional Phone number - BAC
    Given que selecciono el Tipo Form 'EN - Embed - Tipo 3 - Summer PRE- UNI - Program select optional Phone number - BAC' y el ID form '1131' para la url '<url>'
   # When completo los campos configurados para el formulario con idPrograma '<idProgramaCampoOculto>'
    #And envío el formulario si existe un botón de envío
    #Then el formulario debe exponer el ID DEV configurado

    Examples:
      | idProgramaCampoOculto                | url                                                                                             |
      | 08892df4-bda5-ef11-b8e8-0022488a207b | https://www.pre.thesaurus.ie.edu/ie-summer-school/pre-university/pre-university-summer-program/ |
      | bd2fd2d5-d187-f011-b4cc-7c1e525d4e1c | https://www.pre.thesaurus.ie.edu/ie-summer-school/pre-business-specialization/                  |
      | 6454edb5-3987-f011-b4cc-6045bd9cbfb9 | https://www.pre.thesaurus.ie.edu/ie-summer-school/pre-law-specialization/                       |
      | d1b0aa26-e887-f011-b4cc-7c1e525d4e1c | https://www.pre.thesaurus.ie.edu/ie-summer-school/pre-design-specialization/                    |

  @Form1132 @all
  Scenario Outline: Validar tipo de form EN - Embed - Tipo 3 - Summer PRE- UNI - Program select optional Phone number - Whatsapp
    Given que selecciono el Tipo Form 'EN - Embed - Tipo 3 - Summer PRE- UNI - Program select optional Phone number - Whatsapp' y el ID form '1132' para la url '<url>'
   # When completo los campos configurados para el formulario con idPrograma '<idProgramaCampoOculto>'
    #And envío el formulario si existe un botón de envío
    #Then el formulario debe exponer el ID DEV configurado

    Examples:
      | idProgramaCampoOculto                | url                                                                                             |
      | 08892df4-bda5-ef11-b8e8-0022488a207b | https://www.pre.thesaurus.ie.edu/ie-summer-school/pre-university/pre-university-summer-program/ |
      | bd2fd2d5-d187-f011-b4cc-7c1e525d4e1c | https://www.pre.thesaurus.ie.edu/ie-summer-school/pre-business-specialization/                  |
      | 6454edb5-3987-f011-b4cc-6045bd9cbfb9 | https://www.pre.thesaurus.ie.edu/ie-summer-school/pre-law-specialization/                       |
      | d1b0aa26-e887-f011-b4cc-7c1e525d4e1c | https://www.pre.thesaurus.ie.edu/ie-summer-school/pre-design-specialization/                    |
