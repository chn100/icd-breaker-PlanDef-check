Instance: ContainerClosureSterileFluidPath
InstanceOf: DrugProductContainerClosure
Usage: #example
Title: "Example Container Closure System"
Description: "Example brief description and coding of the container closure system."		
* name.productName = "BellaVie U+8482"
* name.type.text = "Product Proprietary Name"		
* packagedMedicinalProduct.coding[container] = $NCIT#C43198 "PACKAGE, COMBINATION"
* packagedMedicinalProduct.coding[closure] = $NCIT#C96119 "Vacuum, Metal"
* packagedMedicinalProduct.text.extension[container-closure-description].valueMarkdown  = "The fluid path system is a single, sterile drug product container, container closure system that provides for rapid and complete dissolution of a frozen hyperpolarized drug product and transports the resulting hyperpolarized drug product solution from its initial location within a polarizer system to a final sterile Medrad syringe outside the polarizer system for clinical administration—injection into a patient. The empty sterile fluid path (Figure 1A) is provided in a double bag plastic tray with a lid of the following approximate size as neen in figure."


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
