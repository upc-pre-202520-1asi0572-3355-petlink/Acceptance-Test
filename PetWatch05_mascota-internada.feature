Feature: Evolución de Mascota Internada

  Como dueño quiero consultar la evolución de mi mascota internada
  para tener tranquilidad sobre su cuidado.

  @US18
  Scenario: Ver reporte simplificado de evolución
    Given que la mascota está internada
    When el dueño consulta la evolución
    Then el sistema debe mostrar un reporte simplificado

  Scenario: Mostrar observaciones del veterinario
    Given que el veterinario registra nuevas observaciones
    When la evolución se actualiza
    Then las observaciones deben quedar visibles al dueño

  Scenario: Diferenciar estado actual e historial pasado
    Given que el dueño consulta la evolución de su mascota
    When realiza la consulta
    Then debe poder diferenciar el estado actual del historial anterior
