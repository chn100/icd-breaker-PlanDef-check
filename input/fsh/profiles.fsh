Alias: $NCIT = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl

Profile: QualitySpecification2
Parent: PlanDefinition
Id: pqcmc-quality-specification2
Title: "Quality Specification"
Description: "A quality specification is for a drug product or drug substance (excipient, API or raw material)."

* identifier 0..1 MS
* version 1..1 MS
* version ^short = "Specification Version"
* version ^definition = """The alphanumeric text assigned by the sponsor to a particular edition of a specification. [Source: SME Defined]
Examples: 2.1, 13.2, ST1, 00001, 00002, &lt;companyname&gt;001, etc.
Note: This value should be unique across all specifications for a given material, not just those with the same name"""
* title 1..1 MS
* title ^short = "Specification Title"
* title ^definition = """The textual identification for the specification. [Source: SME Defined]
 Example: &lt;drug name&gt; 75 mg chewable tablets
 Note: This may include the name of the drug substance, product or the raw material/excipients."""
* subtitle 0..1 MS
* subtitle ^short = "Specification Subtitle"
* subtitle ^definition = "An additional textual identification for the specification [Source: SME Defined]."
* status MS
* subjectReference 1..1 MS
* subjectReference only Reference( MedicinalProductDefinition or SubstanceDefinition )
* date 1..1 MS
* date ^short = "Specification Version Date"
* date ^definition = """The date when the sponsor assigned a date to a specific version. [Source: SME Defined]
Note: This is the date a particular version of the specification was internally accepted by the submitter.
"""

Extension: ContainerClosureExtension
Id: pq-container-closure-extension
Title: "Container Closure"
Description: "The packaging information including a brief description of the components, the assembled
packaging system and any precautions needed to ensure the protection and preservation of the drug substance and drug product during their use in the clinical trials"
* . ^short = "Container Closure System Information"
* ^context[+].type = #element
* ^context[=].expression = "MedicinalProductDefinition"
* ^context[+].type = #extension
* ^context[=].expression = "ManufacturedItemDefinition"

* extension contains
    containerType 1..1 MS and
    closureType 1..1 MS and  
	description 1..1 MS and
    depiction 0..* MS 
* extension[containerType].value[x] only CodeableConcept
* extension[containerType].value[x] from PqcmcContainerTypeTerminology (required)
* extension[containerType].value[x] ^short = "Container Type"
* extension[containerType].value[x] ^definition = "The kind of container that drug substances and finished dosage forms are contained in, which could include both the immediate (or primary) and secondary containers [Source: Adapted from NCI Thesaurus C43164]"
* extension[closureType].value[x] only CodeableConcept
* extension[closureType].value[x] from PqcmcClosureTypeTerminology (required)
* extension[closureType].value[x] ^short = "Closure Type"
* extension[closureType].value[x] ^definition = "The kind of closures used for the container in which the drug substances and finished dosage forms are stored. [Source: SME Defined]"
* extension[description].value[x] only markdown
* extension[description].value[x] ^short = "Container Closure System Description"
* extension[description].value[x] ^definition = """Any textual comments that describe the sum of container closure system (CCS) components that together contain and protect the dosage form or drug substance. [Source: Adapted from Q1A(R2)-ICH Glossary]
Example: White opaque, round 50 mL HDPE bottle with a fitted 33 mm child resistant black polypropylene threaded cap closure, aluminum sealed, and containing molecular sieve canister 2 gm (CAN TRISORB 2G) as desiccant.
Note: This includes primary packaging components and secondary packaging components, if the latter are intended to provide additional protection to the drug substance or the drug product. A packaging system is equivalent to a container closure system. [Source: Adapted from Q1A(R2)-ICH Glossary]
"""
* extension[depiction].value[x] only Reference



Profile: DrugProductContainerClosure
Parent: MedicinalProductDefinition
Id: pqcmc-druproduct-container-closure
Title: "Drug Product Container Closure"
Description: "Description and coding of the container closure system. Profile of Drug Product profile."

* extension contains pq-container-closure-extension named mdpcontainerClosure 0..1 MS
* identifier 0..1 
* identifier ^short = "optional user designated identifier"	
* packagedMedicinalProduct.coding from PqcmcContainerTypeTerminology 

