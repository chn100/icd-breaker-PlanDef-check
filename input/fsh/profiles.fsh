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
Alias: $UCUM = http://example.org
Alias: $NCIT = http://example.org

Profile: MIDProfile
Parent: ManufacturedItemDefinition
* identifier 0..1 MS
* status 1..1 MS
* manufacturedDoseForm.coding from SplPharmaceuticalDosageFormTerminology
// The following three rules are needed in order to use the Numerator and Denominator
// slices in the component.component.amount (and deeper) elements.
* component ^type.profile = "http://example.org/StructureDefinition/MIDProfile"
* component ^type.profile.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-profile-element"
* component ^type.profile.extension.valueString = "ManufacturedItemDefinition.component"
* component.amount ^slicing.discriminator.type = #exists
* component.amount ^slicing.discriminator.path = "amount"
* component.amount ^slicing.description = "Slice based on the component.amounts."
* component.amount ^slicing.rules = #closed
* component.amount contains
    Numerator 1..1 MS and
    Denominator 1..1 MS
* component.constituent.location 0..* MS
* component.constituent.location.coding from PqcmcProductPartIngredientPhysicalLocationVS
* component.constituent.function 0..2 MS
* component.constituent.function ^slicing.discriminator.type = #exists
* component.constituent.function ^slicing.discriminator.path = function
* component.constituent.function ^slicing.rules = #closed
* component.constituent.function ^slicing.description = "Slice based on the component.functions."
* component.constituent.function contains
    Category 0..1 MS and
    Function 0..1 MS


