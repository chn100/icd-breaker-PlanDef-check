Alias: $UCUM = http://example.org
Alias: $NCIT = http://example2.org

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
