<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile MedicationRequest
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:MedicationRequest</sch:title>
    <sch:rule context="f:MedicationRequest">
      <sch:assert test="count(f:identifier) &gt;= 1">identifier: minimum cardinality of 'identifier' is 1</sch:assert>
      <sch:assert test="count(f:category) &lt;= 0">category: maximum cardinality of 'category' is 0</sch:assert>
      <sch:assert test="count(f:priority) &gt;= 1">priority: minimum cardinality of 'priority' is 1</sch:assert>
      <sch:assert test="count(f:doNotPerform) &lt;= 0">doNotPerform: maximum cardinality of 'doNotPerform' is 0</sch:assert>
      <sch:assert test="count(f:reported[x]) &lt;= 0">reported[x]: maximum cardinality of 'reported[x]' is 0</sch:assert>
      <sch:assert test="count(f:encounter) &gt;= 1">encounter: minimum cardinality of 'encounter' is 1</sch:assert>
      <sch:assert test="count(f:supportingInformation) &lt;= 0">supportingInformation: maximum cardinality of 'supportingInformation' is 0</sch:assert>
      <sch:assert test="count(f:requester) &gt;= 1">requester: minimum cardinality of 'requester' is 1</sch:assert>
      <sch:assert test="count(f:performer) &lt;= 0">performer: maximum cardinality of 'performer' is 0</sch:assert>
      <sch:assert test="count(f:performerType) &lt;= 0">performerType: maximum cardinality of 'performerType' is 0</sch:assert>
      <sch:assert test="count(f:recorder) &lt;= 0">recorder: maximum cardinality of 'recorder' is 0</sch:assert>
      <sch:assert test="count(f:reasonReference) &lt;= 0">reasonReference: maximum cardinality of 'reasonReference' is 0</sch:assert>
      <sch:assert test="count(f:instantiatesCanonical) &lt;= 0">instantiatesCanonical: maximum cardinality of 'instantiatesCanonical' is 0</sch:assert>
      <sch:assert test="count(f:instantiatesUri) &lt;= 0">instantiatesUri: maximum cardinality of 'instantiatesUri' is 0</sch:assert>
      <sch:assert test="count(f:groupIdentifier) &lt;= 0">groupIdentifier: maximum cardinality of 'groupIdentifier' is 0</sch:assert>
      <sch:assert test="count(f:courseOfTherapyType) &lt;= 0">courseOfTherapyType: maximum cardinality of 'courseOfTherapyType' is 0</sch:assert>
      <sch:assert test="count(f:insurance) &lt;= 0">insurance: maximum cardinality of 'insurance' is 0</sch:assert>
      <sch:assert test="count(f:note) &lt;= 1">note: maximum cardinality of 'note' is 1</sch:assert>
      <sch:assert test="count(f:substitution) &lt;= 0">substitution: maximum cardinality of 'substitution' is 0</sch:assert>
      <sch:assert test="count(f:detectedIssue) &lt;= 0">detectedIssue: maximum cardinality of 'detectedIssue' is 0</sch:assert>
      <sch:assert test="count(f:eventHistory) &lt;= 0">eventHistory: maximum cardinality of 'eventHistory' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.meta</sch:title>
    <sch:rule context="f:MedicationRequest/f:meta">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.implicitRules</sch:title>
    <sch:rule context="f:MedicationRequest/f:implicitRules">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.language</sch:title>
    <sch:rule context="f:MedicationRequest/f:language">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.text</sch:title>
    <sch:rule context="f:MedicationRequest/f:text">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.extension</sch:title>
    <sch:rule context="f:MedicationRequest/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.modifierExtension</sch:title>
    <sch:rule context="f:MedicationRequest/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.identifier</sch:title>
    <sch:rule context="f:MedicationRequest/f:identifier">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.status</sch:title>
    <sch:rule context="f:MedicationRequest/f:status">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.statusReason</sch:title>
    <sch:rule context="f:MedicationRequest/f:statusReason">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.intent</sch:title>
    <sch:rule context="f:MedicationRequest/f:intent">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.category</sch:title>
    <sch:rule context="f:MedicationRequest/f:category">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.priority</sch:title>
    <sch:rule context="f:MedicationRequest/f:priority">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.doNotPerform</sch:title>
    <sch:rule context="f:MedicationRequest/f:doNotPerform">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.reported[x] 1</sch:title>
    <sch:rule context="f:MedicationRequest/f:reported[x]">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.medication[x] 1</sch:title>
    <sch:rule context="f:MedicationRequest/f:medication[x]">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.subject</sch:title>
    <sch:rule context="f:MedicationRequest/f:subject">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.encounter</sch:title>
    <sch:rule context="f:MedicationRequest/f:encounter">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.supportingInformation</sch:title>
    <sch:rule context="f:MedicationRequest/f:supportingInformation">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.authoredOn</sch:title>
    <sch:rule context="f:MedicationRequest/f:authoredOn">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.requester</sch:title>
    <sch:rule context="f:MedicationRequest/f:requester">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.performer</sch:title>
    <sch:rule context="f:MedicationRequest/f:performer">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.performerType</sch:title>
    <sch:rule context="f:MedicationRequest/f:performerType">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.recorder</sch:title>
    <sch:rule context="f:MedicationRequest/f:recorder">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.reasonCode</sch:title>
    <sch:rule context="f:MedicationRequest/f:reasonCode">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.reasonReference</sch:title>
    <sch:rule context="f:MedicationRequest/f:reasonReference">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.instantiatesCanonical</sch:title>
    <sch:rule context="f:MedicationRequest/f:instantiatesCanonical">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.instantiatesUri</sch:title>
    <sch:rule context="f:MedicationRequest/f:instantiatesUri">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.basedOn</sch:title>
    <sch:rule context="f:MedicationRequest/f:basedOn">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.groupIdentifier</sch:title>
    <sch:rule context="f:MedicationRequest/f:groupIdentifier">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.courseOfTherapyType</sch:title>
    <sch:rule context="f:MedicationRequest/f:courseOfTherapyType">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.insurance</sch:title>
    <sch:rule context="f:MedicationRequest/f:insurance">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.note</sch:title>
    <sch:rule context="f:MedicationRequest/f:note">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.dosageInstruction</sch:title>
    <sch:rule context="f:MedicationRequest/f:dosageInstruction">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:MedicationRequest/f:dispenseRequest</sch:title>
    <sch:rule context="f:MedicationRequest/f:dispenseRequest">
      <sch:assert test="count(f:initialFill) &lt;= 0">initialFill: maximum cardinality of 'initialFill' is 0</sch:assert>
      <sch:assert test="count(f:dispenseInterval) &lt;= 0">dispenseInterval: maximum cardinality of 'dispenseInterval' is 0</sch:assert>
      <sch:assert test="count(f:validityPeriod) &lt;= 0">validityPeriod: maximum cardinality of 'validityPeriod' is 0</sch:assert>
      <sch:assert test="count(f:numberOfRepeatsAllowed) &gt;= 1">numberOfRepeatsAllowed: minimum cardinality of 'numberOfRepeatsAllowed' is 1</sch:assert>
      <sch:assert test="count(f:quantity) &gt;= 1">quantity: minimum cardinality of 'quantity' is 1</sch:assert>
      <sch:assert test="count(f:expectedSupplyDuration) &lt;= 0">expectedSupplyDuration: maximum cardinality of 'expectedSupplyDuration' is 0</sch:assert>
      <sch:assert test="count(f:performer) &lt;= 0">performer: maximum cardinality of 'performer' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.dispenseRequest</sch:title>
    <sch:rule context="f:MedicationRequest/f:dispenseRequest">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.dispenseRequest.extension</sch:title>
    <sch:rule context="f:MedicationRequest/f:dispenseRequest/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.dispenseRequest.modifierExtension</sch:title>
    <sch:rule context="f:MedicationRequest/f:dispenseRequest/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.dispenseRequest.initialFill</sch:title>
    <sch:rule context="f:MedicationRequest/f:dispenseRequest/f:initialFill">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.dispenseRequest.initialFill.extension</sch:title>
    <sch:rule context="f:MedicationRequest/f:dispenseRequest/f:initialFill/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.dispenseRequest.initialFill.modifierExtension</sch:title>
    <sch:rule context="f:MedicationRequest/f:dispenseRequest/f:initialFill/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.dispenseRequest.initialFill.quantity</sch:title>
    <sch:rule context="f:MedicationRequest/f:dispenseRequest/f:initialFill/f:quantity">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.dispenseRequest.initialFill.duration</sch:title>
    <sch:rule context="f:MedicationRequest/f:dispenseRequest/f:initialFill/f:duration">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.dispenseRequest.dispenseInterval</sch:title>
    <sch:rule context="f:MedicationRequest/f:dispenseRequest/f:dispenseInterval">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.dispenseRequest.validityPeriod</sch:title>
    <sch:rule context="f:MedicationRequest/f:dispenseRequest/f:validityPeriod">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.dispenseRequest.numberOfRepeatsAllowed</sch:title>
    <sch:rule context="f:MedicationRequest/f:dispenseRequest/f:numberOfRepeatsAllowed">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.dispenseRequest.quantity</sch:title>
    <sch:rule context="f:MedicationRequest/f:dispenseRequest/f:quantity">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.dispenseRequest.expectedSupplyDuration</sch:title>
    <sch:rule context="f:MedicationRequest/f:dispenseRequest/f:expectedSupplyDuration">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.dispenseRequest.performer</sch:title>
    <sch:rule context="f:MedicationRequest/f:dispenseRequest/f:performer">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.substitution</sch:title>
    <sch:rule context="f:MedicationRequest/f:substitution">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.substitution.extension</sch:title>
    <sch:rule context="f:MedicationRequest/f:substitution/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.substitution.modifierExtension</sch:title>
    <sch:rule context="f:MedicationRequest/f:substitution/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.substitution.allowed[x] 1</sch:title>
    <sch:rule context="f:MedicationRequest/f:substitution/f:allowed[x]">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.substitution.reason</sch:title>
    <sch:rule context="f:MedicationRequest/f:substitution/f:reason">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.priorPrescription</sch:title>
    <sch:rule context="f:MedicationRequest/f:priorPrescription">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.detectedIssue</sch:title>
    <sch:rule context="f:MedicationRequest/f:detectedIssue">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.eventHistory</sch:title>
    <sch:rule context="f:MedicationRequest/f:eventHistory">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>