Feature: Perfil de Usuario

  Como usuario quiero editar mi perfil básico
  para mantener actualizada mi información personal.

  @US15
  Scenario: Actualización de correo o teléfono
    Given que el usuario accede a su perfil
    When edita su correo o teléfono
    Then la información debe actualizarse correctamente

  Scenario: Intento de editar campo restringido
    Given que un campo del perfil está restringido
    When el usuario intenta editarlo
    Then el sistema debe impedir la modificación

  Scenario: Confirmación de cambios exitosos
    Given que el usuario guarda los cambios del perfil
    When finaliza el proceso
    Then el sistema debe mostrar un mensaje de éxito
