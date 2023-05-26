Alias: $NCIT = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl

Extension: ContainerClosureDescriptionExtension
Id: pq-container-closure-description-extension 
Title: "Container Closure System Description"
Description: """Any textual comments that describe the sum of container closure system (CCS) components that together contain and protect the dosage form or drug substance. [Source: Adapted from Q1A(R2)-ICH Glossary]
Example: White opaque, round 50 mL HDPE bottle with a fitted 33 mm child resistant black polypropylene threaded cap closure, aluminum sealed, and containing molecular sieve canister 2 gm (CAN TRISORB 2G) as desiccant.
Note: This includes primary packaging components and secondary packaging components, if the latter are intended to provide additional protection to the drug substance or the drug product. A packaging system is equivalent to a container closure system. [Source: Adapted from Q1A(R2)-ICH Glossary]
"""
* . ^short = "Container Closure System Information"
* ^context[+].type = #element
* ^context[=].expression = "MedicinalProductDefinition.packagedMedicinalProduct.text"
* extension.value[x] only markdown
 

Extension: DepictionExtension
Id:  pq-container-closure-depiction-extension 
Title: "Container Closure Depiction"
Description: "The packaging diagrams reference from the description."
* . ^short = "Container Closure Depiction"
* ^context[+].type = #element
* ^context[=].expression = "MedicinalProductDefinition.packagedMedicinalProduct.text"
* extension.value[x] only Reference

Profile: Base64DocumentReference
Parent: DocumentReference
Id: cmc-document-reference
Description: "A profile that represents the document or diagram in base64"
* status from http://hl7.org/fhir/ValueSet/document-reference-status
* status = #current (exactly)
* content MS
* content.attachment MS
* content.attachment.contentType 1..1 MS
* content.attachment.data 1..1 MS
* content.attachment.title 1..1 MS 
* content.attachment.title ^short = "Document file name including the file extension"
* content.attachment.title ^definition = """A format or abbreviation name that identifies a file structure. [Source: SME Defined]
Used for the following: Analytical Instrument Data File Type, Impurity Analysis Graphic, Impurity Analytical Instrument Data File, Impurity Chemical Structure Data File, and Substance Structure Graphic.
"""

Profile: QualitySpecification2
Parent: PlanDefinition
Id: pqcmc-quality-specification2
Title: "Quality Specification"
Description: "A quality specification is for a drug product or drug substance (excipient, API or raw material)."

* identifier 0..1 MS
* version 1..1 MS
* version ^short = "Specification Version"
* version ^definition = """The alphanumeric text assigned by the sponsor to a particular edition of a specification. [Source: SME Defined].coding
Examples: 2.1, 13.2, ST1, 00001, 00002, &lt;companyname&gt;001, etc.
Note: This value should be unique across all specifications for a given material, not just those with the same name"""
* title 1..1 MS
* title ^short = "Specification Title"
* title ^definition = """The textual identification for the specification. [Source: SME Defined].coding
 Example: &lt;drug name&gt; 75 mg chewable tablets
 Note: This may include the name of the drug substance, product or the raw material/excipients."""
* subtitle 0..1 MS
* subtitle ^short = "Specification Subtitle"
* subtitle ^definition = "An additional textual identification for the specification [Source: SME Defined].coding."
* status MS
* subjectReference 1..1 MS
* subjectReference only Reference( MedicinalProductDefinition or SubstanceDefinition )


Profile: DrugProductContainerClosure
Parent: MedicinalProductDefinition
Id: pqcmc-drugproduct-container-closure
Title: "Drug Product Container Closure"
Description: "Description and coding of the container closure system. Profile of Drug Product profile."

* identifier 0..1 
* identifier ^short = "optional user designated identifier"	
* packagedMedicinalProduct 1..1 MS
* packagedMedicinalProduct.coding 2..2 MS
* packagedMedicinalProduct.coding ^slicing.discriminator.type = #value
* packagedMedicinalProduct.coding ^slicing.discriminator.path = "$this.code"
* packagedMedicinalProduct.coding ^slicing.rules = #closed
* packagedMedicinalProduct.coding contains
    container 1..1 and
    closure 1..1 
* packagedMedicinalProduct.coding[container] ^short = "Container"
* packagedMedicinalProduct.coding[container] from PqcmcContainerTypeTerminology
* packagedMedicinalProduct.coding[closure] ^short = "Closure"
* packagedMedicinalProduct.coding[closure] from PqcmcClosureTypeTerminology
* packagedMedicinalProduct.text 1..1 MS
* packagedMedicinalProduct.text.extension contains pq-container-closure-description-extension named container-closure-description 1..1 MS and pq-container-closure-depiction-extension named container-closure-depiction 0..* MS
* name 1..2 MS
* name.productName 1..1 MS
* name.type 1..1 MS

Profile: RoutineSubstanceDefinition
Parent: SubstanceDefinition
Id: pqcmc-routine-drug-substance
Title: "Routine Drug Substance"
Description: "Provides sufficient information to identify a drug substance. Profile on Drug Substance profile."

* identifier 0..1 MS
* identifier ^short = "optional user designated identifier"

* name 1..* MS
* name ^short = "Product Ingredient Name"
* name ^definition = "Any ingredient intended for use in the manufacture of a drug product, including those that may not appear in such drug product. [Source: (21 CFR 210.3 (b) (3)) PAC-ATLS 1998]"

