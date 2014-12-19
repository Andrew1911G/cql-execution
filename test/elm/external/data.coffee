###
   WARNING: This is a GENERATED file.  Do not manually edit!

   To generate this file:
       - Edit data.coffee to add a CQL Snippet
       - From java dir: ./gradlew :cql-to-elm:generateTestData
###

### Retrieve
library TestSnippet version '1'
using QUICK
valueset "Acute Pharyngitis" = '2.16.840.1.113883.3.464.1003.102.12.1011'
valueset "Ambulatory/ED Visit" = '2.16.840.1.113883.3.464.1003.101.12.1061'
valueset "Annual Wellness Visit" = '2.16.840.1.113883.3.526.3.1240'
context Patient
define Conditions = [Condition]
define Encounters = [Encounter]
define PharyngitisConditions = [Condition: "Acute Pharyngitis"]
define AmbulatoryEncounters = [Encounter: "Ambulatory/ED Visit"]
define EncountersByServiceType = [Encounter: type in "Ambulatory/ED Visit"]
define WrongDataType = [EncounterProposal: "Ambulatory/ED Visit"]
define WrongValueSet = [Condition: "Ambulatory/ED Visit"]
define WrongCodeProperty = [Encounter: class in "Ambulatory/ED Visit"]
###

module.exports['Retrieve'] = {
   "library" : {
      "identifier" : {
         "id" : "TestSnippet",
         "version" : "1"
      },
      "schemaIdentifier" : {
         "id" : "urn:hl7-org:elm",
         "version" : "r1"
      },
      "usings" : {
         "def" : [ {
            "localIdentifier" : "QUICK",
            "uri" : "http://org.hl7.fhir"
         } ]
      },
      "valueSets" : {
         "def" : [ {
            "name" : "Acute Pharyngitis",
            "id" : "2.16.840.1.113883.3.464.1003.102.12.1011"
         }, {
            "name" : "Ambulatory/ED Visit",
            "id" : "2.16.840.1.113883.3.464.1003.101.12.1061"
         }, {
            "name" : "Annual Wellness Visit",
            "id" : "2.16.840.1.113883.3.526.3.1240"
         } ]
      },
      "statements" : {
         "def" : [ {
            "name" : "Patient",
            "context" : "Patient",
            "expression" : {
               "type" : "SingletonFrom",
               "operand" : {
                  "dataType" : "{http://org.hl7.fhir}Patient",
                  "templateId" : "cqf-patient",
                  "type" : "Retrieve"
               }
            }
         }, {
            "name" : "Conditions",
            "context" : "Patient",
            "expression" : {
               "dataType" : "{http://org.hl7.fhir}Condition",
               "templateId" : "cqf-condition",
               "type" : "Retrieve"
            }
         }, {
            "name" : "Encounters",
            "context" : "Patient",
            "expression" : {
               "dataType" : "{http://org.hl7.fhir}Encounter",
               "templateId" : "cqf-encounter",
               "type" : "Retrieve"
            }
         }, {
            "name" : "PharyngitisConditions",
            "context" : "Patient",
            "expression" : {
               "dataType" : "{http://org.hl7.fhir}Condition",
               "templateId" : "cqf-condition",
               "codeProperty" : "code",
               "type" : "Retrieve",
               "codes" : {
                  "name" : "Acute Pharyngitis",
                  "type" : "ValueSetRef"
               }
            }
         }, {
            "name" : "AmbulatoryEncounters",
            "context" : "Patient",
            "expression" : {
               "dataType" : "{http://org.hl7.fhir}Encounter",
               "templateId" : "cqf-encounter",
               "codeProperty" : "type",
               "type" : "Retrieve",
               "codes" : {
                  "name" : "Ambulatory/ED Visit",
                  "type" : "ValueSetRef"
               }
            }
         }, {
            "name" : "EncountersByServiceType",
            "context" : "Patient",
            "expression" : {
               "dataType" : "{http://org.hl7.fhir}Encounter",
               "templateId" : "cqf-encounter",
               "codeProperty" : "type",
               "type" : "Retrieve",
               "codes" : {
                  "name" : "Ambulatory/ED Visit",
                  "type" : "ValueSetRef"
               }
            }
         }, {
            "name" : "WrongDataType",
            "context" : "Patient",
            "expression" : {
               "dataType" : "{http://www.w3.org/2001/XMLSchema}EncounterProposal",
               "templateId" : "EncounterProposal",
               "type" : "Retrieve",
               "codes" : {
                  "name" : "Ambulatory/ED Visit",
                  "type" : "ValueSetRef"
               }
            }
         }, {
            "name" : "WrongValueSet",
            "context" : "Patient",
            "expression" : {
               "dataType" : "{http://org.hl7.fhir}Condition",
               "templateId" : "cqf-condition",
               "codeProperty" : "code",
               "type" : "Retrieve",
               "codes" : {
                  "name" : "Ambulatory/ED Visit",
                  "type" : "ValueSetRef"
               }
            }
         }, {
            "name" : "WrongCodeProperty",
            "context" : "Patient",
            "expression" : {
               "dataType" : "{http://org.hl7.fhir}Encounter",
               "templateId" : "cqf-encounter",
               "codeProperty" : "class",
               "type" : "Retrieve",
               "codes" : {
                  "name" : "Ambulatory/ED Visit",
                  "type" : "ValueSetRef"
               }
            }
         } ]
      }
   }
}

