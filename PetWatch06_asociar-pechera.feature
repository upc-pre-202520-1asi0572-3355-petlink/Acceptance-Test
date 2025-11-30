Feature: Asociar pechera IoT

  Como veterinario
  Quiero vincular la pechera IoT a una mascota internada
  Para monitorear sus signos vitales en tiempo real.

  @US08
  Scenario: Vinculación de dispositivo y mascota
    Given que la mascota esté internada
    When se asocie un dispositivo
    Then debe vincularse correctamente.

  Scenario: Monitoreo Activo al Conectar el Dispositivo
    Given que el dispositivo esté conectado
    When transmita datos
    Then el sistema debe mostrar estado activo

  Scenario: Almacenamiento de Datos en la Historia Clínica
    Given que el dispositivo envíe información
    When llegue a la plataforma
    Then debe almacenarse en la historia clínica 