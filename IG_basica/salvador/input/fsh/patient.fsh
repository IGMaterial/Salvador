// This is a simple example of a FSH file.
// This file can be renamed, and additional FSH files can be added.
// SUSHI will look for definitions in any file using the .fsh ending.
Profile: MyPatient
Parent: Patient
Description: "An example profile of the Patient resource."
* name 1..* MS
* name
/** identifier 1.. MS
* identifier.value 1.. MS
* identifier.value ^short = "Número que indica la identificación."

* identifier.type 1.. MS*/
* identifier.type ^short = "Tipo de indentificación."
* identifier.type.coding.code from IdentificadoresPersonaVS
* identifier.type.coding 1.. MS
* identifier.type.coding.code 1.. MS


Instance: PatientExample
InstanceOf: MyPatient
Description: "An example of a patient with a license to krill."
* name
  * given[0] = "James"
  * family = "Pond"

/* ---------------------Identificadores de PERSONA ---------------------------*/
CodeSystem: IdentificadoresPersonaCS
Id: Idspersona
Title: "Identificadores de Persona CS"
Description:  "Identificadores de Persona Peru VS."
* ^name = "IdspersonaPeru"
* ^status = #active
* ^experimental = false
* ^content = #complete

* #DUI "DUI" "DUI"
* #CR "Carné Residente" "Carné Residente"
* #PAS "Pasaporte" "Pasaporte"
* #NIU "NIU" "NIU"
* #CUN "CUN" "CUN"

ValueSet: IdentificadoresPersonaVS
Title: "Identificadores de Persona VS"
Description:  "Identificadores de Persona Peru VS."
* include codes from system Idspersona