Instance: ContainerClosureSterileFluidPath
InstanceOf: DrugProductContainerClosure
Usage: #example
Title: "Example Container Closure System"
Description: "Example brief description and coding of the container closure system."		

* extension[mdpcontainerClosure]
  * extension[containerType].valueCodeableConcept = $NCIT#C43198 "PACKAGE, COMBINATION"
  * extension[closureType].valueCodeableConcept = $NCIT#C96138 "Valved (Dispensing), Plastic"	
  * extension[description].valueMarkdown = """The fluid path system is a single, sterile drug product container, container closure system that provides for rapid and complete
  dissolution of a frozen hyperpolarized drug product and transports the resulting hyperpolarized drug product solution from its initial location within a polarizer system to
  a final sterile Medrad syringe outside the polarizer system for clinical administration—injection into a patient. The empty sterile fluid path (Figure 1A) is provided in a
  double bag plastic tray with a lid of the following approximate size as neen in figure."""

* name.productName = "BellaVie U+8482"
* name.type.text = "Product Proprietary Name"		
* packagedMedicinalProduct.coding = $NCIT#C43198 "PACKAGE, COMBINATION"
