Feature: Gestión de Usuarios

  Como administrador quiero gestionar usuarios de la plataforma
  para garantizar seguridad y control.

  @US14
  Scenario: Registrar un nuevo usuario
    Given que un administrador crea un usuario
    When guarda el registro
    Then el usuario debe almacenarse en la base de datos

  Scenario: Desactivar usuario
    Given que un administrador decide desactivar un usuario
    When realiza la desactivación
    Then el usuario no debe poder iniciar sesión

  Scenario: Modificar roles de usuario
    Given que un administrador modifica los roles de un usuario
    When guarda los cambios
    Then los nuevos roles deben aplicarse inmediatamente
