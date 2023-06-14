Instance: SpecWithReftoApi
InstanceOf: QualitySpecification2
Title: "A quality specification is for a drug substance"
Description: "A quality specification is for an API"
Usage: #example

* version = "1.0"
* title = "Quality Specification for API"
* status = #active
* subjectReference = Reference(f5de5600-7e54-4d2d-b442-7b3366531231)
                            

Instance: f5de5600-7e54-4d2d-b442-7b3366531231
InstanceOf: RoutineSubstanceDefinition
Title: "Example RoutineSubstanceDefinition"
Description: "Provides sufficient information to identify a drug substance"
Usage: #example

* id = "f5de5600-7e54-4d2d-b442-7b3366531231"
* name.name = "PROPYLENE GLYCOL MONOCAPRYLATE"

Instance: f24b34ec-2a83-46f8-8ff6-18dbe4702c20
InstanceOf: MIDProfile
// InstanceOf: FinishedProduct

* identifier.value = "Example3Drug"
* status = http://hl7.org/fhir/publication-status#draft "Draft"
* manufacturedDoseForm = $NCIT#C42931 "TABLET, FILM COATED"

* component[+].type = http://hl7.org/fhir/us/pq-cmc/CodeSystem/pqcmc-product-part-type#157 "Coating"

* component[=].amount[Numerator] = $UCUM#mg "milligram"
* component[=].amount[Numerator].value = 26
* component[=].amount[Denominator] = $UCUM#1 "1*"
* component[=].amount[Denominator].value = 1
//* component[=].constituent[+].location.text = "Coating A"
//* component[=].constituent[=].function[Function] = $NCIT#C176662 "Release modifying agent"
//* component[=].constituent[=].function[Category] = $NCIT#C42637 "Inactive Ingredient"

* component[=].component[+].type = http://hl7.org/fhir/us/pq-cmc/CodeSystem/pqcmc-product-part-type#157 "Coating"
//* component[=].component[=].amount[Numerator][+] = $UCUM#mg "milligram"
//* component[=].component[=].amount[Numerator][=].value = 26
//* component[=].component[=].amount[Denominator][+] = $UCUM#1 "1*"
//* component[=].component[=].amount[Denominator][=].value = 1

* component[=].component[=].amount[+] = $UCUM#mg "milligram"
* component[=].component[=].amount[=].value = 26
* component[=].component[=].amount[+] = $UCUM#1 "1*"
* component[=].component[=].amount[=].value = 1
