Feature: Consulta de Tratamientos

  Como dueño quiero visualizar el tratamiento actual de mi mascota
  para seguir las indicaciones del veterinario.

  @US12
  Scenario: Visualizar medicamentos y dosis
    Given que el veterinario ha registrado un tratamiento
    When el dueño lo consulta
    Then el sistema debe mostrar los medicamentos y sus dosis

  Scenario: Notificación por actualización de tratamiento
    Given que se actualiza un tratamiento del dueño
    When ocurre la actualización
    Then el dueño debe recibir una notificación

  Scenario: Visualizar recomendaciones del veterinario
    Given que el dueño revisa el tratamiento
    When consulta la información
    Then debe ver las recomendaciones brindadas por el veterinario
