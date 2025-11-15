Feature: Consulta de Historia Clínica

  Como dueño quiero consultar la historia clínica digital de mi mascota
  para conocer sus antecedentes médicos.

  @US11
  Scenario: Mostrar historia clínica de la mascota
    Given que el dueño está autenticado
    When consulta la información de su mascota
    Then el sistema debe mostrar la historia clínica correspondiente

  Scenario: Acceso de solo lectura
    Given que el dueño accede a la historia clínica
    When visualiza la información
    Then esta debe mostrarse solo como lectura

  Scenario: Descarga de historia clínica en PDF
    Given que el dueño desea obtener una copia de la historia clínica
    When lo solicita
    Then el sistema debe permitir descargar un archivo PDF
