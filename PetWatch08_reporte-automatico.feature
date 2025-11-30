Feature: Reportes automáticos

  Como veterinario
  Quiero generar reportes automáticos de las mascotas internadas
  Para optimizar mi trabajo.

  @US20
  Scenario: Generación de Reporte PDF
    Given que el veterinario consulte
    When seleccione la opción
    Then el sistema debe generar un reporte PDF

  Scenario: Disponibilidad para Consulta Futura
    Given que se genere un reporte
    When se guarde
    Then debe quedar disponible para consulta futura

  Scenario: Contenido del Reporte
    Given que se cree un reporte
    When se descargue
    Then debe mostrar los signos vitales y evolución reciente