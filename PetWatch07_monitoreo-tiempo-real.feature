Feature: Monitoreo en tiempo real

  Como veterinario
  Quiero visualizar los signos vitales de una mascota internada
  Para detectar anomalías.

  @US09
  Scenario: Visualización de Signos Vitales en Tiempo Real
    Given que el dispositivo esté asociado
    When transmita datos
    Then deben mostrarse en tiempo real

  Scenario: Detección y Generación de Alerta por Anomalía
    Given que se detecte una anomalía
    When supere un umbral
    Then debe generarse una alerta

  Scenario: Notificación de Alerta al Veterinario
    Given que se registre la alerta
    When ocurra
    Then debe notificarse al veterinario en su dashboard