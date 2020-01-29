###
   WARNING: This is a GENERATED file.  Do not manually edit!

   To generate this file:
       - Edit data.cql to add a CQL Snippet
       - From java dir: ./gradlew :cql-to-elm:generateTestData
###

### Count
library TestSnippet version '1'
using QUICK
context Patient
define not_null: Count({1,2,3,4,5})
define has_null: Count({1,null,null,null,2})
define empty: Count({})
###

module.exports['Count'] = {
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
            "localIdentifier" : "System",
            "uri" : "urn:hl7-org:elm-types:r1"
         }, {
            "localId" : "1",
            "localIdentifier" : "QUICK",
            "uri" : "http://hl7.org/fhir"
         } ]
      },
      "statements" : {
         "def" : [ {
            "name" : "Patient",
            "context" : "Patient",
            "expression" : {
               "type" : "SingletonFrom",
               "operand" : {
                  "dataType" : "{http://hl7.org/fhir}Patient",
                  "templateId" : "patient-qicore-qicore-patient",
                  "type" : "Retrieve"
               }
            }
         }, {
            "localId" : "9",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
            "name" : "not_null",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "9",
                  "s" : [ {
                     "value" : [ "define ","not_null",": " ]
                  }, {
                     "r" : "8",
                     "s" : [ {
                        "value" : [ "Count","(" ]
                     }, {
                        "r" : "7",
                        "s" : [ {
                           "r" : "2",
                           "value" : [ "{","1",",","2",",","3",",","4",",","5","}" ]
                        } ]
                     }, {
                        "value" : [ ")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "8",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
               "type" : "Count",
               "source" : {
                  "localId" : "7",
                  "type" : "List",
                  "resultTypeSpecifier" : {
                     "type" : "ListTypeSpecifier",
                     "elementType" : {
                        "name" : "{urn:hl7-org:elm-types:r1}Integer",
                        "type" : "NamedTypeSpecifier"
                     }
                  },
                  "element" : [ {
                     "localId" : "2",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "1",
                     "type" : "Literal"
                  }, {
                     "localId" : "3",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2",
                     "type" : "Literal"
                  }, {
                     "localId" : "4",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  }, {
                     "localId" : "5",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "4",
                     "type" : "Literal"
                  }, {
                     "localId" : "6",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "5",
                     "type" : "Literal"
                  } ]
               }
            }
         }, {
            "localId" : "17",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
            "name" : "has_null",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "17",
                  "s" : [ {
                     "value" : [ "define ","has_null",": " ]
                  }, {
                     "r" : "16",
                     "s" : [ {
                        "value" : [ "Count","(" ]
                     }, {
                        "r" : "15",
                        "s" : [ {
                           "r" : "10",
                           "value" : [ "{","1",",","null",",","null",",","null",",","2","}" ]
                        } ]
                     }, {
                        "value" : [ ")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "16",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
               "type" : "Count",
               "source" : {
                  "localId" : "15",
                  "type" : "List",
                  "resultTypeSpecifier" : {
                     "type" : "ListTypeSpecifier",
                     "elementType" : {
                        "name" : "{urn:hl7-org:elm-types:r1}Integer",
                        "type" : "NamedTypeSpecifier"
                     }
                  },
                  "element" : [ {
                     "localId" : "10",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "1",
                     "type" : "Literal"
                  }, {
                     "asType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "type" : "As",
                     "operand" : {
                        "localId" : "11",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                        "type" : "Null"
                     }
                  }, {
                     "asType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "type" : "As",
                     "operand" : {
                        "localId" : "12",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                        "type" : "Null"
                     }
                  }, {
                     "asType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "type" : "As",
                     "operand" : {
                        "localId" : "13",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                        "type" : "Null"
                     }
                  }, {
                     "localId" : "14",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2",
                     "type" : "Literal"
                  } ]
               }
            }
         }, {
            "localId" : "20",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
            "name" : "empty",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "20",
                  "s" : [ {
                     "value" : [ "define ","empty",": " ]
                  }, {
                     "r" : "19",
                     "s" : [ {
                        "r" : "18",
                        "value" : [ "Count","(","{}",")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "19",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
               "type" : "Count",
               "source" : {
                  "localId" : "18",
                  "type" : "List",
                  "resultTypeSpecifier" : {
                     "type" : "ListTypeSpecifier",
                     "elementType" : {
                        "name" : "{urn:hl7-org:elm-types:r1}Any",
                        "type" : "NamedTypeSpecifier"
                     }
                  }
               }
            }
         } ]
      }
   }
}

### Sum
library TestSnippet version '1'
using QUICK
context Patient
define not_null: Sum({1,2,3,4,5})
define has_null: Sum({1,null,null,null,2})
define not_null_q: Sum({1 'ml',2 'ml',3 'ml',4 'ml',5 'ml'})
define has_null_q: Sum({1 'ml',null,null,null,2 'ml'})
define unmatched_units_q: Min({1 'ml',2 'L',3 'ml',4 'ml',5 'ml',0 'ml'})
define empty: Sum(List<Integer>{})
define q_diff_units: Sum({1 'ml',0.002 'l',0.03 'dl',4 'ml',0.005 'l'})
###

module.exports['Sum'] = {
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
            "localIdentifier" : "System",
            "uri" : "urn:hl7-org:elm-types:r1"
         }, {
            "localId" : "1",
            "localIdentifier" : "QUICK",
            "uri" : "http://hl7.org/fhir"
         } ]
      },
      "statements" : {
         "def" : [ {
            "name" : "Patient",
            "context" : "Patient",
            "expression" : {
               "type" : "SingletonFrom",
               "operand" : {
                  "dataType" : "{http://hl7.org/fhir}Patient",
                  "templateId" : "patient-qicore-qicore-patient",
                  "type" : "Retrieve"
               }
            }
         }, {
            "localId" : "9",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
            "name" : "not_null",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "9",
                  "s" : [ {
                     "value" : [ "define ","not_null",": " ]
                  }, {
                     "r" : "8",
                     "s" : [ {
                        "value" : [ "Sum","(" ]
                     }, {
                        "r" : "7",
                        "s" : [ {
                           "r" : "2",
                           "value" : [ "{","1",",","2",",","3",",","4",",","5","}" ]
                        } ]
                     }, {
                        "value" : [ ")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "8",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
               "type" : "Sum",
               "source" : {
                  "localId" : "7",
                  "type" : "List",
                  "resultTypeSpecifier" : {
                     "type" : "ListTypeSpecifier",
                     "elementType" : {
                        "name" : "{urn:hl7-org:elm-types:r1}Integer",
                        "type" : "NamedTypeSpecifier"
                     }
                  },
                  "element" : [ {
                     "localId" : "2",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "1",
                     "type" : "Literal"
                  }, {
                     "localId" : "3",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2",
                     "type" : "Literal"
                  }, {
                     "localId" : "4",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  }, {
                     "localId" : "5",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "4",
                     "type" : "Literal"
                  }, {
                     "localId" : "6",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "5",
                     "type" : "Literal"
                  } ]
               }
            }
         }, {
            "localId" : "17",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
            "name" : "has_null",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "17",
                  "s" : [ {
                     "value" : [ "define ","has_null",": " ]
                  }, {
                     "r" : "16",
                     "s" : [ {
                        "value" : [ "Sum","(" ]
                     }, {
                        "r" : "15",
                        "s" : [ {
                           "r" : "10",
                           "value" : [ "{","1",",","null",",","null",",","null",",","2","}" ]
                        } ]
                     }, {
                        "value" : [ ")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "16",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
               "type" : "Sum",
               "source" : {
                  "localId" : "15",
                  "type" : "List",
                  "resultTypeSpecifier" : {
                     "type" : "ListTypeSpecifier",
                     "elementType" : {
                        "name" : "{urn:hl7-org:elm-types:r1}Integer",
                        "type" : "NamedTypeSpecifier"
                     }
                  },
                  "element" : [ {
                     "localId" : "10",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "1",
                     "type" : "Literal"
                  }, {
                     "asType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "type" : "As",
                     "operand" : {
                        "localId" : "11",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                        "type" : "Null"
                     }
                  }, {
                     "asType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "type" : "As",
                     "operand" : {
                        "localId" : "12",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                        "type" : "Null"
                     }
                  }, {
                     "asType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "type" : "As",
                     "operand" : {
                        "localId" : "13",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                        "type" : "Null"
                     }
                  }, {
                     "localId" : "14",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2",
                     "type" : "Literal"
                  } ]
               }
            }
         }, {
            "localId" : "25",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
            "name" : "not_null_q",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "25",
                  "s" : [ {
                     "value" : [ "define ","not_null_q",": " ]
                  }, {
                     "r" : "24",
                     "s" : [ {
                        "value" : [ "Sum","(" ]
                     }, {
                        "r" : "23",
                        "s" : [ {
                           "value" : [ "{" ]
                        }, {
                           "r" : "18",
                           "s" : [ {
                              "value" : [ "1 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "19",
                           "s" : [ {
                              "value" : [ "2 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "20",
                           "s" : [ {
                              "value" : [ "3 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "21",
                           "s" : [ {
                              "value" : [ "4 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "22",
                           "s" : [ {
                              "value" : [ "5 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "}" ]
                        } ]
                     }, {
                        "value" : [ ")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "24",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
               "type" : "Sum",
               "source" : {
                  "localId" : "23",
                  "type" : "List",
                  "resultTypeSpecifier" : {
                     "type" : "ListTypeSpecifier",
                     "elementType" : {
                        "name" : "{urn:hl7-org:elm-types:r1}Quantity",
                        "type" : "NamedTypeSpecifier"
                     }
                  },
                  "element" : [ {
                     "localId" : "18",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 1,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "localId" : "19",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 2,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "localId" : "20",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 3,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "localId" : "21",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 4,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "localId" : "22",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 5,
                     "unit" : "ml",
                     "type" : "Quantity"
                  } ]
               }
            }
         }, {
            "localId" : "33",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
            "name" : "has_null_q",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "33",
                  "s" : [ {
                     "value" : [ "define ","has_null_q",": " ]
                  }, {
                     "r" : "32",
                     "s" : [ {
                        "value" : [ "Sum","(" ]
                     }, {
                        "r" : "31",
                        "s" : [ {
                           "value" : [ "{" ]
                        }, {
                           "r" : "26",
                           "s" : [ {
                              "value" : [ "1 ","'ml'" ]
                           } ]
                        }, {
                           "r" : "27",
                           "value" : [ ",","null",",","null",",","null","," ]
                        }, {
                           "r" : "30",
                           "s" : [ {
                              "value" : [ "2 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "}" ]
                        } ]
                     }, {
                        "value" : [ ")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "32",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
               "type" : "Sum",
               "source" : {
                  "localId" : "31",
                  "type" : "List",
                  "resultTypeSpecifier" : {
                     "type" : "ListTypeSpecifier",
                     "elementType" : {
                        "name" : "{urn:hl7-org:elm-types:r1}Quantity",
                        "type" : "NamedTypeSpecifier"
                     }
                  },
                  "element" : [ {
                     "localId" : "26",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 1,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "asType" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "type" : "As",
                     "operand" : {
                        "localId" : "27",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                        "type" : "Null"
                     }
                  }, {
                     "asType" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "type" : "As",
                     "operand" : {
                        "localId" : "28",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                        "type" : "Null"
                     }
                  }, {
                     "asType" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "type" : "As",
                     "operand" : {
                        "localId" : "29",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                        "type" : "Null"
                     }
                  }, {
                     "localId" : "30",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 2,
                     "unit" : "ml",
                     "type" : "Quantity"
                  } ]
               }
            }
         }, {
            "localId" : "42",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
            "name" : "unmatched_units_q",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "42",
                  "s" : [ {
                     "value" : [ "define ","unmatched_units_q",": " ]
                  }, {
                     "r" : "41",
                     "s" : [ {
                        "value" : [ "Min","(" ]
                     }, {
                        "r" : "40",
                        "s" : [ {
                           "value" : [ "{" ]
                        }, {
                           "r" : "34",
                           "s" : [ {
                              "value" : [ "1 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "35",
                           "s" : [ {
                              "value" : [ "2 ","'L'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "36",
                           "s" : [ {
                              "value" : [ "3 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "37",
                           "s" : [ {
                              "value" : [ "4 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "38",
                           "s" : [ {
                              "value" : [ "5 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "39",
                           "s" : [ {
                              "value" : [ "0 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "}" ]
                        } ]
                     }, {
                        "value" : [ ")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "41",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
               "type" : "Min",
               "source" : {
                  "localId" : "40",
                  "type" : "List",
                  "resultTypeSpecifier" : {
                     "type" : "ListTypeSpecifier",
                     "elementType" : {
                        "name" : "{urn:hl7-org:elm-types:r1}Quantity",
                        "type" : "NamedTypeSpecifier"
                     }
                  },
                  "element" : [ {
                     "localId" : "34",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 1,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "localId" : "35",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 2,
                     "unit" : "L",
                     "type" : "Quantity"
                  }, {
                     "localId" : "36",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 3,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "localId" : "37",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 4,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "localId" : "38",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 5,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "localId" : "39",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 0,
                     "unit" : "ml",
                     "type" : "Quantity"
                  } ]
               }
            }
         }, {
            "localId" : "46",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
            "name" : "empty",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "46",
                  "s" : [ {
                     "value" : [ "define ","empty",": " ]
                  }, {
                     "r" : "45",
                     "s" : [ {
                        "value" : [ "Sum","(" ]
                     }, {
                        "r" : "44",
                        "s" : [ {
                           "value" : [ "List<" ]
                        }, {
                           "r" : "43",
                           "s" : [ {
                              "value" : [ "Integer" ]
                           } ]
                        }, {
                           "value" : [ ">{}" ]
                        } ]
                     }, {
                        "value" : [ ")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "45",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
               "type" : "Sum",
               "source" : {
                  "localId" : "44",
                  "type" : "List",
                  "resultTypeSpecifier" : {
                     "type" : "ListTypeSpecifier",
                     "elementType" : {
                        "name" : "{urn:hl7-org:elm-types:r1}Integer",
                        "type" : "NamedTypeSpecifier"
                     }
                  }
               }
            }
         }, {
            "localId" : "54",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
            "name" : "q_diff_units",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "54",
                  "s" : [ {
                     "value" : [ "define ","q_diff_units",": " ]
                  }, {
                     "r" : "53",
                     "s" : [ {
                        "value" : [ "Sum","(" ]
                     }, {
                        "r" : "52",
                        "s" : [ {
                           "value" : [ "{" ]
                        }, {
                           "r" : "47",
                           "s" : [ {
                              "value" : [ "1 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "48",
                           "s" : [ {
                              "value" : [ "0.002 ","'l'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "49",
                           "s" : [ {
                              "value" : [ "0.03 ","'dl'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "50",
                           "s" : [ {
                              "value" : [ "4 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "51",
                           "s" : [ {
                              "value" : [ "0.005 ","'l'" ]
                           } ]
                        }, {
                           "value" : [ "}" ]
                        } ]
                     }, {
                        "value" : [ ")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "53",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
               "type" : "Sum",
               "source" : {
                  "localId" : "52",
                  "type" : "List",
                  "resultTypeSpecifier" : {
                     "type" : "ListTypeSpecifier",
                     "elementType" : {
                        "name" : "{urn:hl7-org:elm-types:r1}Quantity",
                        "type" : "NamedTypeSpecifier"
                     }
                  },
                  "element" : [ {
                     "localId" : "47",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 1,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "localId" : "48",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 0.002,
                     "unit" : "l",
                     "type" : "Quantity"
                  }, {
                     "localId" : "49",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 0.03,
                     "unit" : "dl",
                     "type" : "Quantity"
                  }, {
                     "localId" : "50",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 4,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "localId" : "51",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 0.005,
                     "unit" : "l",
                     "type" : "Quantity"
                  } ]
               }
            }
         } ]
      }
   }
}

### Min
library TestSnippet version '1'
using QUICK
context Patient
define not_null: Min({1,2,3,4,5,0})
define has_null: Min({1,null,-1,null,2})
define empty: Min(List<Integer>{})
define not_null_q: Min({1 'ml',2 'ml',3 'ml',4 'ml',5 'ml',0 'ml'})
define has_null_q: Min({1 'ml',null,-1 'ml',null,2 'ml'})
define q_diff_units: Min({1 'ml',2 'dl',3 'l',4 'l',5 'l',0 'ml'})
define q_throw1: Min({1 'ml',2 'm',3 'ml',4 'ml',5 'ml',0 'ml'})
define q_throw2: Min({1 ,2 'ml',3 'ml',4 'ml',5 'ml',0 'ml'})
define IntegerMin: Min({ 2, 4, 8, 6 })
define DecimalMin: Min({ 5.0, 4.9, 5.1, -5.0 })
define DateMin: Min({ @2012-12-31, @2013-01-01, @2012-01-01 })
define DateTimeMin: Min({ DateTime(2012, 9, 9), DateTime(2012, 9, 5) })
define TimeMin: Min({ Time(12, 30, 4), Time(12, 30, 3), Time(12, 30, 5)})
define MinIsNull: Min({ null as Quantity, null as Quantity, null as Quantity })
define MinIsAlsoNull: Min(null as List<Decimal>)
###

module.exports['Min'] = {
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
            "localIdentifier" : "System",
            "uri" : "urn:hl7-org:elm-types:r1"
         }, {
            "localId" : "1",
            "localIdentifier" : "QUICK",
            "uri" : "http://hl7.org/fhir"
         } ]
      },
      "statements" : {
         "def" : [ {
            "name" : "Patient",
            "context" : "Patient",
            "expression" : {
               "type" : "SingletonFrom",
               "operand" : {
                  "dataType" : "{http://hl7.org/fhir}Patient",
                  "templateId" : "patient-qicore-qicore-patient",
                  "type" : "Retrieve"
               }
            }
         }, {
            "localId" : "10",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
            "name" : "not_null",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "10",
                  "s" : [ {
                     "value" : [ "define ","not_null",": " ]
                  }, {
                     "r" : "9",
                     "s" : [ {
                        "value" : [ "Min","(" ]
                     }, {
                        "r" : "8",
                        "s" : [ {
                           "r" : "2",
                           "value" : [ "{","1",",","2",",","3",",","4",",","5",",","0","}" ]
                        } ]
                     }, {
                        "value" : [ ")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "9",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
               "type" : "Min",
               "source" : {
                  "localId" : "8",
                  "type" : "List",
                  "resultTypeSpecifier" : {
                     "type" : "ListTypeSpecifier",
                     "elementType" : {
                        "name" : "{urn:hl7-org:elm-types:r1}Integer",
                        "type" : "NamedTypeSpecifier"
                     }
                  },
                  "element" : [ {
                     "localId" : "2",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "1",
                     "type" : "Literal"
                  }, {
                     "localId" : "3",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2",
                     "type" : "Literal"
                  }, {
                     "localId" : "4",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  }, {
                     "localId" : "5",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "4",
                     "type" : "Literal"
                  }, {
                     "localId" : "6",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "5",
                     "type" : "Literal"
                  }, {
                     "localId" : "7",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "0",
                     "type" : "Literal"
                  } ]
               }
            }
         }, {
            "localId" : "19",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
            "name" : "has_null",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "19",
                  "s" : [ {
                     "value" : [ "define ","has_null",": " ]
                  }, {
                     "r" : "18",
                     "s" : [ {
                        "value" : [ "Min","(" ]
                     }, {
                        "r" : "17",
                        "s" : [ {
                           "r" : "11",
                           "value" : [ "{","1",",","null","," ]
                        }, {
                           "r" : "14",
                           "s" : [ {
                              "r" : "13",
                              "value" : [ "-","1" ]
                           } ]
                        }, {
                           "r" : "15",
                           "value" : [ ",","null",",","2","}" ]
                        } ]
                     }, {
                        "value" : [ ")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "18",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
               "type" : "Min",
               "source" : {
                  "localId" : "17",
                  "type" : "List",
                  "resultTypeSpecifier" : {
                     "type" : "ListTypeSpecifier",
                     "elementType" : {
                        "name" : "{urn:hl7-org:elm-types:r1}Integer",
                        "type" : "NamedTypeSpecifier"
                     }
                  },
                  "element" : [ {
                     "localId" : "11",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "1",
                     "type" : "Literal"
                  }, {
                     "asType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "type" : "As",
                     "operand" : {
                        "localId" : "12",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                        "type" : "Null"
                     }
                  }, {
                     "localId" : "14",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "type" : "Negate",
                     "operand" : {
                        "localId" : "13",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "1",
                        "type" : "Literal"
                     }
                  }, {
                     "asType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "type" : "As",
                     "operand" : {
                        "localId" : "15",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                        "type" : "Null"
                     }
                  }, {
                     "localId" : "16",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2",
                     "type" : "Literal"
                  } ]
               }
            }
         }, {
            "localId" : "23",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
            "name" : "empty",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "23",
                  "s" : [ {
                     "value" : [ "define ","empty",": " ]
                  }, {
                     "r" : "22",
                     "s" : [ {
                        "value" : [ "Min","(" ]
                     }, {
                        "r" : "21",
                        "s" : [ {
                           "value" : [ "List<" ]
                        }, {
                           "r" : "20",
                           "s" : [ {
                              "value" : [ "Integer" ]
                           } ]
                        }, {
                           "value" : [ ">{}" ]
                        } ]
                     }, {
                        "value" : [ ")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "22",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
               "type" : "Min",
               "source" : {
                  "localId" : "21",
                  "type" : "List",
                  "resultTypeSpecifier" : {
                     "type" : "ListTypeSpecifier",
                     "elementType" : {
                        "name" : "{urn:hl7-org:elm-types:r1}Integer",
                        "type" : "NamedTypeSpecifier"
                     }
                  }
               }
            }
         }, {
            "localId" : "32",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
            "name" : "not_null_q",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "32",
                  "s" : [ {
                     "value" : [ "define ","not_null_q",": " ]
                  }, {
                     "r" : "31",
                     "s" : [ {
                        "value" : [ "Min","(" ]
                     }, {
                        "r" : "30",
                        "s" : [ {
                           "value" : [ "{" ]
                        }, {
                           "r" : "24",
                           "s" : [ {
                              "value" : [ "1 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "25",
                           "s" : [ {
                              "value" : [ "2 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "26",
                           "s" : [ {
                              "value" : [ "3 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "27",
                           "s" : [ {
                              "value" : [ "4 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "28",
                           "s" : [ {
                              "value" : [ "5 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "29",
                           "s" : [ {
                              "value" : [ "0 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "}" ]
                        } ]
                     }, {
                        "value" : [ ")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "31",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
               "type" : "Min",
               "source" : {
                  "localId" : "30",
                  "type" : "List",
                  "resultTypeSpecifier" : {
                     "type" : "ListTypeSpecifier",
                     "elementType" : {
                        "name" : "{urn:hl7-org:elm-types:r1}Quantity",
                        "type" : "NamedTypeSpecifier"
                     }
                  },
                  "element" : [ {
                     "localId" : "24",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 1,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "localId" : "25",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 2,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "localId" : "26",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 3,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "localId" : "27",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 4,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "localId" : "28",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 5,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "localId" : "29",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 0,
                     "unit" : "ml",
                     "type" : "Quantity"
                  } ]
               }
            }
         }, {
            "localId" : "41",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
            "name" : "has_null_q",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "41",
                  "s" : [ {
                     "value" : [ "define ","has_null_q",": " ]
                  }, {
                     "r" : "40",
                     "s" : [ {
                        "value" : [ "Min","(" ]
                     }, {
                        "r" : "39",
                        "s" : [ {
                           "value" : [ "{" ]
                        }, {
                           "r" : "33",
                           "s" : [ {
                              "value" : [ "1 ","'ml'" ]
                           } ]
                        }, {
                           "r" : "34",
                           "value" : [ ",","null","," ]
                        }, {
                           "r" : "36",
                           "s" : [ {
                              "value" : [ "-" ]
                           }, {
                              "r" : "35",
                              "s" : [ {
                                 "value" : [ "1 ","'ml'" ]
                              } ]
                           } ]
                        }, {
                           "r" : "37",
                           "value" : [ ",","null","," ]
                        }, {
                           "r" : "38",
                           "s" : [ {
                              "value" : [ "2 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "}" ]
                        } ]
                     }, {
                        "value" : [ ")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "40",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
               "type" : "Min",
               "source" : {
                  "localId" : "39",
                  "type" : "List",
                  "resultTypeSpecifier" : {
                     "type" : "ListTypeSpecifier",
                     "elementType" : {
                        "name" : "{urn:hl7-org:elm-types:r1}Quantity",
                        "type" : "NamedTypeSpecifier"
                     }
                  },
                  "element" : [ {
                     "localId" : "33",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 1,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "asType" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "type" : "As",
                     "operand" : {
                        "localId" : "34",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                        "type" : "Null"
                     }
                  }, {
                     "localId" : "36",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "type" : "Negate",
                     "operand" : {
                        "localId" : "35",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                        "value" : 1,
                        "unit" : "ml",
                        "type" : "Quantity"
                     }
                  }, {
                     "asType" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "type" : "As",
                     "operand" : {
                        "localId" : "37",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                        "type" : "Null"
                     }
                  }, {
                     "localId" : "38",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 2,
                     "unit" : "ml",
                     "type" : "Quantity"
                  } ]
               }
            }
         }, {
            "localId" : "50",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
            "name" : "q_diff_units",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "50",
                  "s" : [ {
                     "value" : [ "define ","q_diff_units",": " ]
                  }, {
                     "r" : "49",
                     "s" : [ {
                        "value" : [ "Min","(" ]
                     }, {
                        "r" : "48",
                        "s" : [ {
                           "value" : [ "{" ]
                        }, {
                           "r" : "42",
                           "s" : [ {
                              "value" : [ "1 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "43",
                           "s" : [ {
                              "value" : [ "2 ","'dl'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "44",
                           "s" : [ {
                              "value" : [ "3 ","'l'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "45",
                           "s" : [ {
                              "value" : [ "4 ","'l'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "46",
                           "s" : [ {
                              "value" : [ "5 ","'l'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "47",
                           "s" : [ {
                              "value" : [ "0 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "}" ]
                        } ]
                     }, {
                        "value" : [ ")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "49",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
               "type" : "Min",
               "source" : {
                  "localId" : "48",
                  "type" : "List",
                  "resultTypeSpecifier" : {
                     "type" : "ListTypeSpecifier",
                     "elementType" : {
                        "name" : "{urn:hl7-org:elm-types:r1}Quantity",
                        "type" : "NamedTypeSpecifier"
                     }
                  },
                  "element" : [ {
                     "localId" : "42",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 1,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "localId" : "43",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 2,
                     "unit" : "dl",
                     "type" : "Quantity"
                  }, {
                     "localId" : "44",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 3,
                     "unit" : "l",
                     "type" : "Quantity"
                  }, {
                     "localId" : "45",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 4,
                     "unit" : "l",
                     "type" : "Quantity"
                  }, {
                     "localId" : "46",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 5,
                     "unit" : "l",
                     "type" : "Quantity"
                  }, {
                     "localId" : "47",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 0,
                     "unit" : "ml",
                     "type" : "Quantity"
                  } ]
               }
            }
         }, {
            "localId" : "59",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
            "name" : "q_throw1",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "59",
                  "s" : [ {
                     "value" : [ "define ","q_throw1",": " ]
                  }, {
                     "r" : "58",
                     "s" : [ {
                        "value" : [ "Min","(" ]
                     }, {
                        "r" : "57",
                        "s" : [ {
                           "value" : [ "{" ]
                        }, {
                           "r" : "51",
                           "s" : [ {
                              "value" : [ "1 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "52",
                           "s" : [ {
                              "value" : [ "2 ","'m'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "53",
                           "s" : [ {
                              "value" : [ "3 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "54",
                           "s" : [ {
                              "value" : [ "4 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "55",
                           "s" : [ {
                              "value" : [ "5 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "56",
                           "s" : [ {
                              "value" : [ "0 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "}" ]
                        } ]
                     }, {
                        "value" : [ ")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "58",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
               "type" : "Min",
               "source" : {
                  "localId" : "57",
                  "type" : "List",
                  "resultTypeSpecifier" : {
                     "type" : "ListTypeSpecifier",
                     "elementType" : {
                        "name" : "{urn:hl7-org:elm-types:r1}Quantity",
                        "type" : "NamedTypeSpecifier"
                     }
                  },
                  "element" : [ {
                     "localId" : "51",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 1,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "localId" : "52",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 2,
                     "unit" : "m",
                     "type" : "Quantity"
                  }, {
                     "localId" : "53",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 3,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "localId" : "54",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 4,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "localId" : "55",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 5,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "localId" : "56",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 0,
                     "unit" : "ml",
                     "type" : "Quantity"
                  } ]
               }
            }
         }, {
            "localId" : "68",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
            "name" : "q_throw2",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "68",
                  "s" : [ {
                     "value" : [ "define ","q_throw2",": " ]
                  }, {
                     "r" : "67",
                     "s" : [ {
                        "value" : [ "Min","(" ]
                     }, {
                        "r" : "66",
                        "s" : [ {
                           "r" : "60",
                           "value" : [ "{","1"," ," ]
                        }, {
                           "r" : "61",
                           "s" : [ {
                              "value" : [ "2 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "62",
                           "s" : [ {
                              "value" : [ "3 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "63",
                           "s" : [ {
                              "value" : [ "4 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "64",
                           "s" : [ {
                              "value" : [ "5 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "65",
                           "s" : [ {
                              "value" : [ "0 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "}" ]
                        } ]
                     }, {
                        "value" : [ ")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "67",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
               "type" : "Min",
               "source" : {
                  "localId" : "66",
                  "type" : "List",
                  "resultTypeSpecifier" : {
                     "type" : "ListTypeSpecifier",
                     "elementType" : {
                        "name" : "{urn:hl7-org:elm-types:r1}Quantity",
                        "type" : "NamedTypeSpecifier"
                     }
                  },
                  "element" : [ {
                     "type" : "ToQuantity",
                     "operand" : {
                        "localId" : "60",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "1",
                        "type" : "Literal"
                     }
                  }, {
                     "localId" : "61",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 2,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "localId" : "62",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 3,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "localId" : "63",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 4,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "localId" : "64",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 5,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "localId" : "65",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 0,
                     "unit" : "ml",
                     "type" : "Quantity"
                  } ]
               }
            }
         }, {
            "localId" : "75",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
            "name" : "IntegerMin",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "75",
                  "s" : [ {
                     "value" : [ "define ","IntegerMin",": " ]
                  }, {
                     "r" : "74",
                     "s" : [ {
                        "value" : [ "Min","(" ]
                     }, {
                        "r" : "73",
                        "s" : [ {
                           "r" : "69",
                           "value" : [ "{ ","2",", ","4",", ","8",", ","6"," }" ]
                        } ]
                     }, {
                        "value" : [ ")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "74",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
               "type" : "Min",
               "source" : {
                  "localId" : "73",
                  "type" : "List",
                  "resultTypeSpecifier" : {
                     "type" : "ListTypeSpecifier",
                     "elementType" : {
                        "name" : "{urn:hl7-org:elm-types:r1}Integer",
                        "type" : "NamedTypeSpecifier"
                     }
                  },
                  "element" : [ {
                     "localId" : "69",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2",
                     "type" : "Literal"
                  }, {
                     "localId" : "70",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "4",
                     "type" : "Literal"
                  }, {
                     "localId" : "71",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "8",
                     "type" : "Literal"
                  }, {
                     "localId" : "72",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "6",
                     "type" : "Literal"
                  } ]
               }
            }
         }, {
            "localId" : "83",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Decimal",
            "name" : "DecimalMin",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "83",
                  "s" : [ {
                     "value" : [ "define ","DecimalMin",": " ]
                  }, {
                     "r" : "82",
                     "s" : [ {
                        "value" : [ "Min","(" ]
                     }, {
                        "r" : "81",
                        "s" : [ {
                           "r" : "76",
                           "value" : [ "{ ","5.0",", ","4.9",", ","5.1",", " ]
                        }, {
                           "r" : "80",
                           "s" : [ {
                              "r" : "79",
                              "value" : [ "-","5.0" ]
                           } ]
                        }, {
                           "value" : [ " }" ]
                        } ]
                     }, {
                        "value" : [ ")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "82",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Decimal",
               "type" : "Min",
               "source" : {
                  "localId" : "81",
                  "type" : "List",
                  "resultTypeSpecifier" : {
                     "type" : "ListTypeSpecifier",
                     "elementType" : {
                        "name" : "{urn:hl7-org:elm-types:r1}Decimal",
                        "type" : "NamedTypeSpecifier"
                     }
                  },
                  "element" : [ {
                     "localId" : "76",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Decimal",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Decimal",
                     "value" : "5.0",
                     "type" : "Literal"
                  }, {
                     "localId" : "77",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Decimal",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Decimal",
                     "value" : "4.9",
                     "type" : "Literal"
                  }, {
                     "localId" : "78",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Decimal",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Decimal",
                     "value" : "5.1",
                     "type" : "Literal"
                  }, {
                     "localId" : "80",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Decimal",
                     "type" : "Negate",
                     "operand" : {
                        "localId" : "79",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Decimal",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Decimal",
                        "value" : "5.0",
                        "type" : "Literal"
                     }
                  } ]
               }
            }
         }, {
            "localId" : "89",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
            "name" : "DateMin",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "89",
                  "s" : [ {
                     "value" : [ "define ","DateMin",": " ]
                  }, {
                     "r" : "88",
                     "s" : [ {
                        "value" : [ "Min","(" ]
                     }, {
                        "r" : "87",
                        "s" : [ {
                           "r" : "84",
                           "value" : [ "{ ","@2012-12-31",", ","@2013-01-01",", ","@2012-01-01"," }" ]
                        } ]
                     }, {
                        "value" : [ ")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "88",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
               "type" : "Min",
               "source" : {
                  "localId" : "87",
                  "type" : "List",
                  "resultTypeSpecifier" : {
                     "type" : "ListTypeSpecifier",
                     "elementType" : {
                        "name" : "{urn:hl7-org:elm-types:r1}Date",
                        "type" : "NamedTypeSpecifier"
                     }
                  },
                  "element" : [ {
                     "localId" : "84",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                     "type" : "Date",
                     "year" : {
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "2012",
                        "type" : "Literal"
                     },
                     "month" : {
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "12",
                        "type" : "Literal"
                     },
                     "day" : {
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "31",
                        "type" : "Literal"
                     }
                  }, {
                     "localId" : "85",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                     "type" : "Date",
                     "year" : {
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "2013",
                        "type" : "Literal"
                     },
                     "month" : {
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "1",
                        "type" : "Literal"
                     },
                     "day" : {
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "1",
                        "type" : "Literal"
                     }
                  }, {
                     "localId" : "86",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                     "type" : "Date",
                     "year" : {
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "2012",
                        "type" : "Literal"
                     },
                     "month" : {
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "1",
                        "type" : "Literal"
                     },
                     "day" : {
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "1",
                        "type" : "Literal"
                     }
                  } ]
               }
            }
         }, {
            "localId" : "100",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}DateTime",
            "name" : "DateTimeMin",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "100",
                  "s" : [ {
                     "value" : [ "define ","DateTimeMin",": " ]
                  }, {
                     "r" : "99",
                     "s" : [ {
                        "value" : [ "Min","(" ]
                     }, {
                        "r" : "98",
                        "s" : [ {
                           "value" : [ "{ " ]
                        }, {
                           "r" : "93",
                           "s" : [ {
                              "r" : "90",
                              "value" : [ "DateTime","(","2012",", ","9",", ","9",")" ]
                           } ]
                        }, {
                           "value" : [ ", " ]
                        }, {
                           "r" : "97",
                           "s" : [ {
                              "r" : "94",
                              "value" : [ "DateTime","(","2012",", ","9",", ","5",")" ]
                           } ]
                        }, {
                           "value" : [ " }" ]
                        } ]
                     }, {
                        "value" : [ ")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "99",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}DateTime",
               "type" : "Min",
               "source" : {
                  "localId" : "98",
                  "type" : "List",
                  "resultTypeSpecifier" : {
                     "type" : "ListTypeSpecifier",
                     "elementType" : {
                        "name" : "{urn:hl7-org:elm-types:r1}DateTime",
                        "type" : "NamedTypeSpecifier"
                     }
                  },
                  "element" : [ {
                     "localId" : "93",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}DateTime",
                     "type" : "DateTime",
                     "year" : {
                        "localId" : "90",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "2012",
                        "type" : "Literal"
                     },
                     "month" : {
                        "localId" : "91",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "9",
                        "type" : "Literal"
                     },
                     "day" : {
                        "localId" : "92",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "9",
                        "type" : "Literal"
                     }
                  }, {
                     "localId" : "97",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}DateTime",
                     "type" : "DateTime",
                     "year" : {
                        "localId" : "94",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "2012",
                        "type" : "Literal"
                     },
                     "month" : {
                        "localId" : "95",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "9",
                        "type" : "Literal"
                     },
                     "day" : {
                        "localId" : "96",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "5",
                        "type" : "Literal"
                     }
                  } ]
               }
            }
         }, {
            "localId" : "115",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Time",
            "name" : "TimeMin",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "115",
                  "s" : [ {
                     "value" : [ "define ","TimeMin",": " ]
                  }, {
                     "r" : "114",
                     "s" : [ {
                        "value" : [ "Min","(" ]
                     }, {
                        "r" : "113",
                        "s" : [ {
                           "value" : [ "{ " ]
                        }, {
                           "r" : "104",
                           "s" : [ {
                              "r" : "101",
                              "value" : [ "Time","(","12",", ","30",", ","4",")" ]
                           } ]
                        }, {
                           "value" : [ ", " ]
                        }, {
                           "r" : "108",
                           "s" : [ {
                              "r" : "105",
                              "value" : [ "Time","(","12",", ","30",", ","3",")" ]
                           } ]
                        }, {
                           "value" : [ ", " ]
                        }, {
                           "r" : "112",
                           "s" : [ {
                              "r" : "109",
                              "value" : [ "Time","(","12",", ","30",", ","5",")" ]
                           } ]
                        }, {
                           "value" : [ "}" ]
                        } ]
                     }, {
                        "value" : [ ")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "114",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Time",
               "type" : "Min",
               "source" : {
                  "localId" : "113",
                  "type" : "List",
                  "resultTypeSpecifier" : {
                     "type" : "ListTypeSpecifier",
                     "elementType" : {
                        "name" : "{urn:hl7-org:elm-types:r1}Time",
                        "type" : "NamedTypeSpecifier"
                     }
                  },
                  "element" : [ {
                     "localId" : "104",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Time",
                     "type" : "Time",
                     "hour" : {
                        "localId" : "101",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "12",
                        "type" : "Literal"
                     },
                     "minute" : {
                        "localId" : "102",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "30",
                        "type" : "Literal"
                     },
                     "second" : {
                        "localId" : "103",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "4",
                        "type" : "Literal"
                     }
                  }, {
                     "localId" : "108",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Time",
                     "type" : "Time",
                     "hour" : {
                        "localId" : "105",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "12",
                        "type" : "Literal"
                     },
                     "minute" : {
                        "localId" : "106",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "30",
                        "type" : "Literal"
                     },
                     "second" : {
                        "localId" : "107",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "3",
                        "type" : "Literal"
                     }
                  }, {
                     "localId" : "112",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Time",
                     "type" : "Time",
                     "hour" : {
                        "localId" : "109",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "12",
                        "type" : "Literal"
                     },
                     "minute" : {
                        "localId" : "110",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "30",
                        "type" : "Literal"
                     },
                     "second" : {
                        "localId" : "111",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "5",
                        "type" : "Literal"
                     }
                  } ]
               }
            }
         }, {
            "localId" : "127",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
            "name" : "MinIsNull",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "127",
                  "s" : [ {
                     "value" : [ "define ","MinIsNull",": " ]
                  }, {
                     "r" : "126",
                     "s" : [ {
                        "value" : [ "Min","(" ]
                     }, {
                        "r" : "125",
                        "s" : [ {
                           "value" : [ "{ " ]
                        }, {
                           "r" : "118",
                           "s" : [ {
                              "r" : "116",
                              "value" : [ "null"," as " ]
                           }, {
                              "r" : "117",
                              "s" : [ {
                                 "value" : [ "Quantity" ]
                              } ]
                           } ]
                        }, {
                           "value" : [ ", " ]
                        }, {
                           "r" : "121",
                           "s" : [ {
                              "r" : "119",
                              "value" : [ "null"," as " ]
                           }, {
                              "r" : "120",
                              "s" : [ {
                                 "value" : [ "Quantity" ]
                              } ]
                           } ]
                        }, {
                           "value" : [ ", " ]
                        }, {
                           "r" : "124",
                           "s" : [ {
                              "r" : "122",
                              "value" : [ "null"," as " ]
                           }, {
                              "r" : "123",
                              "s" : [ {
                                 "value" : [ "Quantity" ]
                              } ]
                           } ]
                        }, {
                           "value" : [ " }" ]
                        } ]
                     }, {
                        "value" : [ ")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "126",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
               "type" : "Min",
               "source" : {
                  "localId" : "125",
                  "type" : "List",
                  "resultTypeSpecifier" : {
                     "type" : "ListTypeSpecifier",
                     "elementType" : {
                        "name" : "{urn:hl7-org:elm-types:r1}Quantity",
                        "type" : "NamedTypeSpecifier"
                     }
                  },
                  "element" : [ {
                     "localId" : "118",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "strict" : false,
                     "type" : "As",
                     "operand" : {
                        "localId" : "116",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                        "type" : "Null"
                     },
                     "asTypeSpecifier" : {
                        "localId" : "117",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                        "name" : "{urn:hl7-org:elm-types:r1}Quantity",
                        "type" : "NamedTypeSpecifier"
                     }
                  }, {
                     "localId" : "121",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "strict" : false,
                     "type" : "As",
                     "operand" : {
                        "localId" : "119",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                        "type" : "Null"
                     },
                     "asTypeSpecifier" : {
                        "localId" : "120",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                        "name" : "{urn:hl7-org:elm-types:r1}Quantity",
                        "type" : "NamedTypeSpecifier"
                     }
                  }, {
                     "localId" : "124",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "strict" : false,
                     "type" : "As",
                     "operand" : {
                        "localId" : "122",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                        "type" : "Null"
                     },
                     "asTypeSpecifier" : {
                        "localId" : "123",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                        "name" : "{urn:hl7-org:elm-types:r1}Quantity",
                        "type" : "NamedTypeSpecifier"
                     }
                  } ]
               }
            }
         }, {
            "localId" : "133",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Decimal",
            "name" : "MinIsAlsoNull",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "133",
                  "s" : [ {
                     "value" : [ "define ","MinIsAlsoNull",": " ]
                  }, {
                     "r" : "132",
                     "s" : [ {
                        "value" : [ "Min","(" ]
                     }, {
                        "r" : "131",
                        "s" : [ {
                           "r" : "128",
                           "value" : [ "null"," as " ]
                        }, {
                           "r" : "130",
                           "s" : [ {
                              "value" : [ "List<" ]
                           }, {
                              "r" : "129",
                              "s" : [ {
                                 "value" : [ "Decimal" ]
                              } ]
                           }, {
                              "value" : [ ">" ]
                           } ]
                        } ]
                     }, {
                        "value" : [ ")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "132",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Decimal",
               "type" : "Min",
               "source" : {
                  "localId" : "131",
                  "strict" : false,
                  "type" : "As",
                  "resultTypeSpecifier" : {
                     "type" : "ListTypeSpecifier",
                     "elementType" : {
                        "name" : "{urn:hl7-org:elm-types:r1}Decimal",
                        "type" : "NamedTypeSpecifier"
                     }
                  },
                  "operand" : {
                     "localId" : "128",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                     "type" : "Null"
                  },
                  "asTypeSpecifier" : {
                     "localId" : "130",
                     "type" : "ListTypeSpecifier",
                     "resultTypeSpecifier" : {
                        "type" : "ListTypeSpecifier",
                        "elementType" : {
                           "name" : "{urn:hl7-org:elm-types:r1}Decimal",
                           "type" : "NamedTypeSpecifier"
                        }
                     },
                     "elementType" : {
                        "localId" : "129",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Decimal",
                        "name" : "{urn:hl7-org:elm-types:r1}Decimal",
                        "type" : "NamedTypeSpecifier"
                     }
                  }
               }
            }
         } ]
      }
   }
}

### Max
library TestSnippet version '1'
using QUICK
context Patient
define not_null: Max({10,1,2,3,4,5})
define has_null: Max({1,null,null,2})
define not_null_q: Max({10 'ml',1 'ml',2 'ml',3 'ml',4 'ml',5 'ml'})
define has_null_q: Max({1 'ml',null,null,2 'ml'})
define q_diff_units: Max({10 'ml',1 'ml',2 'ml',3 'ml',4 'ml',5 'l'})
define q_throw1: Max({10 'ml',1 'm',2 'ml',3 'ml',4 'ml',5 'ml'})
define q_throw2: Max({10 ,1 'ml',2 'ml',3 'ml',4 'ml',5 'ml'})

define empty: Max(List<Integer>{})

define IntegerMax: Max({ 2, 4, 8, 6 })
define DecimalMax: Max({ 5.0, 4.9, 5.1, -5.0 })
define DateMax: Max({ @2012-12-31, @2013-01-01, @2012-01-01 })
define DateTimeMax: Max({ DateTime(2012, 2, 3), DateTime(2012, 9, 5) })
define TimeMax: Max({ Time(12, 30, 1), Time(12, 30, 3), Time(12, 30, 2)})
define MaxIsNull: Max({ null as Quantity, null as Quantity, null as Quantity })
define MaxIsAlsoNull: Max(null as List<Decimal>)
###

module.exports['Max'] = {
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
            "localIdentifier" : "System",
            "uri" : "urn:hl7-org:elm-types:r1"
         }, {
            "localId" : "1",
            "localIdentifier" : "QUICK",
            "uri" : "http://hl7.org/fhir"
         } ]
      },
      "statements" : {
         "def" : [ {
            "name" : "Patient",
            "context" : "Patient",
            "expression" : {
               "type" : "SingletonFrom",
               "operand" : {
                  "dataType" : "{http://hl7.org/fhir}Patient",
                  "templateId" : "patient-qicore-qicore-patient",
                  "type" : "Retrieve"
               }
            }
         }, {
            "localId" : "10",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
            "name" : "not_null",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "10",
                  "s" : [ {
                     "value" : [ "define ","not_null",": " ]
                  }, {
                     "r" : "9",
                     "s" : [ {
                        "value" : [ "Max","(" ]
                     }, {
                        "r" : "8",
                        "s" : [ {
                           "r" : "2",
                           "value" : [ "{","10",",","1",",","2",",","3",",","4",",","5","}" ]
                        } ]
                     }, {
                        "value" : [ ")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "9",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
               "type" : "Max",
               "source" : {
                  "localId" : "8",
                  "type" : "List",
                  "resultTypeSpecifier" : {
                     "type" : "ListTypeSpecifier",
                     "elementType" : {
                        "name" : "{urn:hl7-org:elm-types:r1}Integer",
                        "type" : "NamedTypeSpecifier"
                     }
                  },
                  "element" : [ {
                     "localId" : "2",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "10",
                     "type" : "Literal"
                  }, {
                     "localId" : "3",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "1",
                     "type" : "Literal"
                  }, {
                     "localId" : "4",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2",
                     "type" : "Literal"
                  }, {
                     "localId" : "5",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  }, {
                     "localId" : "6",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "4",
                     "type" : "Literal"
                  }, {
                     "localId" : "7",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "5",
                     "type" : "Literal"
                  } ]
               }
            }
         }, {
            "localId" : "17",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
            "name" : "has_null",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "17",
                  "s" : [ {
                     "value" : [ "define ","has_null",": " ]
                  }, {
                     "r" : "16",
                     "s" : [ {
                        "value" : [ "Max","(" ]
                     }, {
                        "r" : "15",
                        "s" : [ {
                           "r" : "11",
                           "value" : [ "{","1",",","null",",","null",",","2","}" ]
                        } ]
                     }, {
                        "value" : [ ")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "16",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
               "type" : "Max",
               "source" : {
                  "localId" : "15",
                  "type" : "List",
                  "resultTypeSpecifier" : {
                     "type" : "ListTypeSpecifier",
                     "elementType" : {
                        "name" : "{urn:hl7-org:elm-types:r1}Integer",
                        "type" : "NamedTypeSpecifier"
                     }
                  },
                  "element" : [ {
                     "localId" : "11",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "1",
                     "type" : "Literal"
                  }, {
                     "asType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "type" : "As",
                     "operand" : {
                        "localId" : "12",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                        "type" : "Null"
                     }
                  }, {
                     "asType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "type" : "As",
                     "operand" : {
                        "localId" : "13",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                        "type" : "Null"
                     }
                  }, {
                     "localId" : "14",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2",
                     "type" : "Literal"
                  } ]
               }
            }
         }, {
            "localId" : "26",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
            "name" : "not_null_q",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "26",
                  "s" : [ {
                     "value" : [ "define ","not_null_q",": " ]
                  }, {
                     "r" : "25",
                     "s" : [ {
                        "value" : [ "Max","(" ]
                     }, {
                        "r" : "24",
                        "s" : [ {
                           "value" : [ "{" ]
                        }, {
                           "r" : "18",
                           "s" : [ {
                              "value" : [ "10 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "19",
                           "s" : [ {
                              "value" : [ "1 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "20",
                           "s" : [ {
                              "value" : [ "2 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "21",
                           "s" : [ {
                              "value" : [ "3 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "22",
                           "s" : [ {
                              "value" : [ "4 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "23",
                           "s" : [ {
                              "value" : [ "5 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "}" ]
                        } ]
                     }, {
                        "value" : [ ")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "25",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
               "type" : "Max",
               "source" : {
                  "localId" : "24",
                  "type" : "List",
                  "resultTypeSpecifier" : {
                     "type" : "ListTypeSpecifier",
                     "elementType" : {
                        "name" : "{urn:hl7-org:elm-types:r1}Quantity",
                        "type" : "NamedTypeSpecifier"
                     }
                  },
                  "element" : [ {
                     "localId" : "18",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 10,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "localId" : "19",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 1,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "localId" : "20",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 2,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "localId" : "21",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 3,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "localId" : "22",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 4,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "localId" : "23",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 5,
                     "unit" : "ml",
                     "type" : "Quantity"
                  } ]
               }
            }
         }, {
            "localId" : "33",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
            "name" : "has_null_q",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "33",
                  "s" : [ {
                     "value" : [ "define ","has_null_q",": " ]
                  }, {
                     "r" : "32",
                     "s" : [ {
                        "value" : [ "Max","(" ]
                     }, {
                        "r" : "31",
                        "s" : [ {
                           "value" : [ "{" ]
                        }, {
                           "r" : "27",
                           "s" : [ {
                              "value" : [ "1 ","'ml'" ]
                           } ]
                        }, {
                           "r" : "28",
                           "value" : [ ",","null",",","null","," ]
                        }, {
                           "r" : "30",
                           "s" : [ {
                              "value" : [ "2 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "}" ]
                        } ]
                     }, {
                        "value" : [ ")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "32",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
               "type" : "Max",
               "source" : {
                  "localId" : "31",
                  "type" : "List",
                  "resultTypeSpecifier" : {
                     "type" : "ListTypeSpecifier",
                     "elementType" : {
                        "name" : "{urn:hl7-org:elm-types:r1}Quantity",
                        "type" : "NamedTypeSpecifier"
                     }
                  },
                  "element" : [ {
                     "localId" : "27",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 1,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "asType" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "type" : "As",
                     "operand" : {
                        "localId" : "28",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                        "type" : "Null"
                     }
                  }, {
                     "asType" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "type" : "As",
                     "operand" : {
                        "localId" : "29",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                        "type" : "Null"
                     }
                  }, {
                     "localId" : "30",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 2,
                     "unit" : "ml",
                     "type" : "Quantity"
                  } ]
               }
            }
         }, {
            "localId" : "42",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
            "name" : "q_diff_units",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "42",
                  "s" : [ {
                     "value" : [ "define ","q_diff_units",": " ]
                  }, {
                     "r" : "41",
                     "s" : [ {
                        "value" : [ "Max","(" ]
                     }, {
                        "r" : "40",
                        "s" : [ {
                           "value" : [ "{" ]
                        }, {
                           "r" : "34",
                           "s" : [ {
                              "value" : [ "10 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "35",
                           "s" : [ {
                              "value" : [ "1 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "36",
                           "s" : [ {
                              "value" : [ "2 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "37",
                           "s" : [ {
                              "value" : [ "3 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "38",
                           "s" : [ {
                              "value" : [ "4 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "39",
                           "s" : [ {
                              "value" : [ "5 ","'l'" ]
                           } ]
                        }, {
                           "value" : [ "}" ]
                        } ]
                     }, {
                        "value" : [ ")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "41",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
               "type" : "Max",
               "source" : {
                  "localId" : "40",
                  "type" : "List",
                  "resultTypeSpecifier" : {
                     "type" : "ListTypeSpecifier",
                     "elementType" : {
                        "name" : "{urn:hl7-org:elm-types:r1}Quantity",
                        "type" : "NamedTypeSpecifier"
                     }
                  },
                  "element" : [ {
                     "localId" : "34",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 10,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "localId" : "35",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 1,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "localId" : "36",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 2,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "localId" : "37",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 3,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "localId" : "38",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 4,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "localId" : "39",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 5,
                     "unit" : "l",
                     "type" : "Quantity"
                  } ]
               }
            }
         }, {
            "localId" : "51",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
            "name" : "q_throw1",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "51",
                  "s" : [ {
                     "value" : [ "define ","q_throw1",": " ]
                  }, {
                     "r" : "50",
                     "s" : [ {
                        "value" : [ "Max","(" ]
                     }, {
                        "r" : "49",
                        "s" : [ {
                           "value" : [ "{" ]
                        }, {
                           "r" : "43",
                           "s" : [ {
                              "value" : [ "10 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "44",
                           "s" : [ {
                              "value" : [ "1 ","'m'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "45",
                           "s" : [ {
                              "value" : [ "2 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "46",
                           "s" : [ {
                              "value" : [ "3 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "47",
                           "s" : [ {
                              "value" : [ "4 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "48",
                           "s" : [ {
                              "value" : [ "5 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "}" ]
                        } ]
                     }, {
                        "value" : [ ")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "50",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
               "type" : "Max",
               "source" : {
                  "localId" : "49",
                  "type" : "List",
                  "resultTypeSpecifier" : {
                     "type" : "ListTypeSpecifier",
                     "elementType" : {
                        "name" : "{urn:hl7-org:elm-types:r1}Quantity",
                        "type" : "NamedTypeSpecifier"
                     }
                  },
                  "element" : [ {
                     "localId" : "43",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 10,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "localId" : "44",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 1,
                     "unit" : "m",
                     "type" : "Quantity"
                  }, {
                     "localId" : "45",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 2,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "localId" : "46",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 3,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "localId" : "47",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 4,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "localId" : "48",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 5,
                     "unit" : "ml",
                     "type" : "Quantity"
                  } ]
               }
            }
         }, {
            "localId" : "60",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
            "name" : "q_throw2",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "60",
                  "s" : [ {
                     "value" : [ "define ","q_throw2",": " ]
                  }, {
                     "r" : "59",
                     "s" : [ {
                        "value" : [ "Max","(" ]
                     }, {
                        "r" : "58",
                        "s" : [ {
                           "r" : "52",
                           "value" : [ "{","10"," ," ]
                        }, {
                           "r" : "53",
                           "s" : [ {
                              "value" : [ "1 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "54",
                           "s" : [ {
                              "value" : [ "2 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "55",
                           "s" : [ {
                              "value" : [ "3 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "56",
                           "s" : [ {
                              "value" : [ "4 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "57",
                           "s" : [ {
                              "value" : [ "5 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "}" ]
                        } ]
                     }, {
                        "value" : [ ")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "59",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
               "type" : "Max",
               "source" : {
                  "localId" : "58",
                  "type" : "List",
                  "resultTypeSpecifier" : {
                     "type" : "ListTypeSpecifier",
                     "elementType" : {
                        "name" : "{urn:hl7-org:elm-types:r1}Quantity",
                        "type" : "NamedTypeSpecifier"
                     }
                  },
                  "element" : [ {
                     "type" : "ToQuantity",
                     "operand" : {
                        "localId" : "52",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "10",
                        "type" : "Literal"
                     }
                  }, {
                     "localId" : "53",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 1,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "localId" : "54",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 2,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "localId" : "55",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 3,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "localId" : "56",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 4,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "localId" : "57",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 5,
                     "unit" : "ml",
                     "type" : "Quantity"
                  } ]
               }
            }
         }, {
            "localId" : "64",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
            "name" : "empty",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "64",
                  "s" : [ {
                     "value" : [ "define ","empty",": " ]
                  }, {
                     "r" : "63",
                     "s" : [ {
                        "value" : [ "Max","(" ]
                     }, {
                        "r" : "62",
                        "s" : [ {
                           "value" : [ "List<" ]
                        }, {
                           "r" : "61",
                           "s" : [ {
                              "value" : [ "Integer" ]
                           } ]
                        }, {
                           "value" : [ ">{}" ]
                        } ]
                     }, {
                        "value" : [ ")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "63",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
               "type" : "Max",
               "source" : {
                  "localId" : "62",
                  "type" : "List",
                  "resultTypeSpecifier" : {
                     "type" : "ListTypeSpecifier",
                     "elementType" : {
                        "name" : "{urn:hl7-org:elm-types:r1}Integer",
                        "type" : "NamedTypeSpecifier"
                     }
                  }
               }
            }
         }, {
            "localId" : "71",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
            "name" : "IntegerMax",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "71",
                  "s" : [ {
                     "value" : [ "define ","IntegerMax",": " ]
                  }, {
                     "r" : "70",
                     "s" : [ {
                        "value" : [ "Max","(" ]
                     }, {
                        "r" : "69",
                        "s" : [ {
                           "r" : "65",
                           "value" : [ "{ ","2",", ","4",", ","8",", ","6"," }" ]
                        } ]
                     }, {
                        "value" : [ ")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "70",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
               "type" : "Max",
               "source" : {
                  "localId" : "69",
                  "type" : "List",
                  "resultTypeSpecifier" : {
                     "type" : "ListTypeSpecifier",
                     "elementType" : {
                        "name" : "{urn:hl7-org:elm-types:r1}Integer",
                        "type" : "NamedTypeSpecifier"
                     }
                  },
                  "element" : [ {
                     "localId" : "65",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2",
                     "type" : "Literal"
                  }, {
                     "localId" : "66",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "4",
                     "type" : "Literal"
                  }, {
                     "localId" : "67",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "8",
                     "type" : "Literal"
                  }, {
                     "localId" : "68",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "6",
                     "type" : "Literal"
                  } ]
               }
            }
         }, {
            "localId" : "79",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Decimal",
            "name" : "DecimalMax",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "79",
                  "s" : [ {
                     "value" : [ "define ","DecimalMax",": " ]
                  }, {
                     "r" : "78",
                     "s" : [ {
                        "value" : [ "Max","(" ]
                     }, {
                        "r" : "77",
                        "s" : [ {
                           "r" : "72",
                           "value" : [ "{ ","5.0",", ","4.9",", ","5.1",", " ]
                        }, {
                           "r" : "76",
                           "s" : [ {
                              "r" : "75",
                              "value" : [ "-","5.0" ]
                           } ]
                        }, {
                           "value" : [ " }" ]
                        } ]
                     }, {
                        "value" : [ ")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "78",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Decimal",
               "type" : "Max",
               "source" : {
                  "localId" : "77",
                  "type" : "List",
                  "resultTypeSpecifier" : {
                     "type" : "ListTypeSpecifier",
                     "elementType" : {
                        "name" : "{urn:hl7-org:elm-types:r1}Decimal",
                        "type" : "NamedTypeSpecifier"
                     }
                  },
                  "element" : [ {
                     "localId" : "72",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Decimal",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Decimal",
                     "value" : "5.0",
                     "type" : "Literal"
                  }, {
                     "localId" : "73",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Decimal",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Decimal",
                     "value" : "4.9",
                     "type" : "Literal"
                  }, {
                     "localId" : "74",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Decimal",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Decimal",
                     "value" : "5.1",
                     "type" : "Literal"
                  }, {
                     "localId" : "76",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Decimal",
                     "type" : "Negate",
                     "operand" : {
                        "localId" : "75",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Decimal",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Decimal",
                        "value" : "5.0",
                        "type" : "Literal"
                     }
                  } ]
               }
            }
         }, {
            "localId" : "85",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
            "name" : "DateMax",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "85",
                  "s" : [ {
                     "value" : [ "define ","DateMax",": " ]
                  }, {
                     "r" : "84",
                     "s" : [ {
                        "value" : [ "Max","(" ]
                     }, {
                        "r" : "83",
                        "s" : [ {
                           "r" : "80",
                           "value" : [ "{ ","@2012-12-31",", ","@2013-01-01",", ","@2012-01-01"," }" ]
                        } ]
                     }, {
                        "value" : [ ")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "84",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
               "type" : "Max",
               "source" : {
                  "localId" : "83",
                  "type" : "List",
                  "resultTypeSpecifier" : {
                     "type" : "ListTypeSpecifier",
                     "elementType" : {
                        "name" : "{urn:hl7-org:elm-types:r1}Date",
                        "type" : "NamedTypeSpecifier"
                     }
                  },
                  "element" : [ {
                     "localId" : "80",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                     "type" : "Date",
                     "year" : {
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "2012",
                        "type" : "Literal"
                     },
                     "month" : {
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "12",
                        "type" : "Literal"
                     },
                     "day" : {
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "31",
                        "type" : "Literal"
                     }
                  }, {
                     "localId" : "81",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                     "type" : "Date",
                     "year" : {
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "2013",
                        "type" : "Literal"
                     },
                     "month" : {
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "1",
                        "type" : "Literal"
                     },
                     "day" : {
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "1",
                        "type" : "Literal"
                     }
                  }, {
                     "localId" : "82",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                     "type" : "Date",
                     "year" : {
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "2012",
                        "type" : "Literal"
                     },
                     "month" : {
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "1",
                        "type" : "Literal"
                     },
                     "day" : {
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "1",
                        "type" : "Literal"
                     }
                  } ]
               }
            }
         }, {
            "localId" : "96",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}DateTime",
            "name" : "DateTimeMax",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "96",
                  "s" : [ {
                     "value" : [ "define ","DateTimeMax",": " ]
                  }, {
                     "r" : "95",
                     "s" : [ {
                        "value" : [ "Max","(" ]
                     }, {
                        "r" : "94",
                        "s" : [ {
                           "value" : [ "{ " ]
                        }, {
                           "r" : "89",
                           "s" : [ {
                              "r" : "86",
                              "value" : [ "DateTime","(","2012",", ","2",", ","3",")" ]
                           } ]
                        }, {
                           "value" : [ ", " ]
                        }, {
                           "r" : "93",
                           "s" : [ {
                              "r" : "90",
                              "value" : [ "DateTime","(","2012",", ","9",", ","5",")" ]
                           } ]
                        }, {
                           "value" : [ " }" ]
                        } ]
                     }, {
                        "value" : [ ")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "95",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}DateTime",
               "type" : "Max",
               "source" : {
                  "localId" : "94",
                  "type" : "List",
                  "resultTypeSpecifier" : {
                     "type" : "ListTypeSpecifier",
                     "elementType" : {
                        "name" : "{urn:hl7-org:elm-types:r1}DateTime",
                        "type" : "NamedTypeSpecifier"
                     }
                  },
                  "element" : [ {
                     "localId" : "89",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}DateTime",
                     "type" : "DateTime",
                     "year" : {
                        "localId" : "86",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "2012",
                        "type" : "Literal"
                     },
                     "month" : {
                        "localId" : "87",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "2",
                        "type" : "Literal"
                     },
                     "day" : {
                        "localId" : "88",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "3",
                        "type" : "Literal"
                     }
                  }, {
                     "localId" : "93",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}DateTime",
                     "type" : "DateTime",
                     "year" : {
                        "localId" : "90",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "2012",
                        "type" : "Literal"
                     },
                     "month" : {
                        "localId" : "91",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "9",
                        "type" : "Literal"
                     },
                     "day" : {
                        "localId" : "92",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "5",
                        "type" : "Literal"
                     }
                  } ]
               }
            }
         }, {
            "localId" : "111",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Time",
            "name" : "TimeMax",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "111",
                  "s" : [ {
                     "value" : [ "define ","TimeMax",": " ]
                  }, {
                     "r" : "110",
                     "s" : [ {
                        "value" : [ "Max","(" ]
                     }, {
                        "r" : "109",
                        "s" : [ {
                           "value" : [ "{ " ]
                        }, {
                           "r" : "100",
                           "s" : [ {
                              "r" : "97",
                              "value" : [ "Time","(","12",", ","30",", ","1",")" ]
                           } ]
                        }, {
                           "value" : [ ", " ]
                        }, {
                           "r" : "104",
                           "s" : [ {
                              "r" : "101",
                              "value" : [ "Time","(","12",", ","30",", ","3",")" ]
                           } ]
                        }, {
                           "value" : [ ", " ]
                        }, {
                           "r" : "108",
                           "s" : [ {
                              "r" : "105",
                              "value" : [ "Time","(","12",", ","30",", ","2",")" ]
                           } ]
                        }, {
                           "value" : [ "}" ]
                        } ]
                     }, {
                        "value" : [ ")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "110",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Time",
               "type" : "Max",
               "source" : {
                  "localId" : "109",
                  "type" : "List",
                  "resultTypeSpecifier" : {
                     "type" : "ListTypeSpecifier",
                     "elementType" : {
                        "name" : "{urn:hl7-org:elm-types:r1}Time",
                        "type" : "NamedTypeSpecifier"
                     }
                  },
                  "element" : [ {
                     "localId" : "100",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Time",
                     "type" : "Time",
                     "hour" : {
                        "localId" : "97",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "12",
                        "type" : "Literal"
                     },
                     "minute" : {
                        "localId" : "98",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "30",
                        "type" : "Literal"
                     },
                     "second" : {
                        "localId" : "99",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "1",
                        "type" : "Literal"
                     }
                  }, {
                     "localId" : "104",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Time",
                     "type" : "Time",
                     "hour" : {
                        "localId" : "101",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "12",
                        "type" : "Literal"
                     },
                     "minute" : {
                        "localId" : "102",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "30",
                        "type" : "Literal"
                     },
                     "second" : {
                        "localId" : "103",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "3",
                        "type" : "Literal"
                     }
                  }, {
                     "localId" : "108",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Time",
                     "type" : "Time",
                     "hour" : {
                        "localId" : "105",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "12",
                        "type" : "Literal"
                     },
                     "minute" : {
                        "localId" : "106",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "30",
                        "type" : "Literal"
                     },
                     "second" : {
                        "localId" : "107",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "2",
                        "type" : "Literal"
                     }
                  } ]
               }
            }
         }, {
            "localId" : "123",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
            "name" : "MaxIsNull",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "123",
                  "s" : [ {
                     "value" : [ "define ","MaxIsNull",": " ]
                  }, {
                     "r" : "122",
                     "s" : [ {
                        "value" : [ "Max","(" ]
                     }, {
                        "r" : "121",
                        "s" : [ {
                           "value" : [ "{ " ]
                        }, {
                           "r" : "114",
                           "s" : [ {
                              "r" : "112",
                              "value" : [ "null"," as " ]
                           }, {
                              "r" : "113",
                              "s" : [ {
                                 "value" : [ "Quantity" ]
                              } ]
                           } ]
                        }, {
                           "value" : [ ", " ]
                        }, {
                           "r" : "117",
                           "s" : [ {
                              "r" : "115",
                              "value" : [ "null"," as " ]
                           }, {
                              "r" : "116",
                              "s" : [ {
                                 "value" : [ "Quantity" ]
                              } ]
                           } ]
                        }, {
                           "value" : [ ", " ]
                        }, {
                           "r" : "120",
                           "s" : [ {
                              "r" : "118",
                              "value" : [ "null"," as " ]
                           }, {
                              "r" : "119",
                              "s" : [ {
                                 "value" : [ "Quantity" ]
                              } ]
                           } ]
                        }, {
                           "value" : [ " }" ]
                        } ]
                     }, {
                        "value" : [ ")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "122",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
               "type" : "Max",
               "source" : {
                  "localId" : "121",
                  "type" : "List",
                  "resultTypeSpecifier" : {
                     "type" : "ListTypeSpecifier",
                     "elementType" : {
                        "name" : "{urn:hl7-org:elm-types:r1}Quantity",
                        "type" : "NamedTypeSpecifier"
                     }
                  },
                  "element" : [ {
                     "localId" : "114",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "strict" : false,
                     "type" : "As",
                     "operand" : {
                        "localId" : "112",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                        "type" : "Null"
                     },
                     "asTypeSpecifier" : {
                        "localId" : "113",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                        "name" : "{urn:hl7-org:elm-types:r1}Quantity",
                        "type" : "NamedTypeSpecifier"
                     }
                  }, {
                     "localId" : "117",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "strict" : false,
                     "type" : "As",
                     "operand" : {
                        "localId" : "115",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                        "type" : "Null"
                     },
                     "asTypeSpecifier" : {
                        "localId" : "116",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                        "name" : "{urn:hl7-org:elm-types:r1}Quantity",
                        "type" : "NamedTypeSpecifier"
                     }
                  }, {
                     "localId" : "120",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "strict" : false,
                     "type" : "As",
                     "operand" : {
                        "localId" : "118",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                        "type" : "Null"
                     },
                     "asTypeSpecifier" : {
                        "localId" : "119",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                        "name" : "{urn:hl7-org:elm-types:r1}Quantity",
                        "type" : "NamedTypeSpecifier"
                     }
                  } ]
               }
            }
         }, {
            "localId" : "129",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Decimal",
            "name" : "MaxIsAlsoNull",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "129",
                  "s" : [ {
                     "value" : [ "define ","MaxIsAlsoNull",": " ]
                  }, {
                     "r" : "128",
                     "s" : [ {
                        "value" : [ "Max","(" ]
                     }, {
                        "r" : "127",
                        "s" : [ {
                           "r" : "124",
                           "value" : [ "null"," as " ]
                        }, {
                           "r" : "126",
                           "s" : [ {
                              "value" : [ "List<" ]
                           }, {
                              "r" : "125",
                              "s" : [ {
                                 "value" : [ "Decimal" ]
                              } ]
                           }, {
                              "value" : [ ">" ]
                           } ]
                        } ]
                     }, {
                        "value" : [ ")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "128",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Decimal",
               "type" : "Max",
               "source" : {
                  "localId" : "127",
                  "strict" : false,
                  "type" : "As",
                  "resultTypeSpecifier" : {
                     "type" : "ListTypeSpecifier",
                     "elementType" : {
                        "name" : "{urn:hl7-org:elm-types:r1}Decimal",
                        "type" : "NamedTypeSpecifier"
                     }
                  },
                  "operand" : {
                     "localId" : "124",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                     "type" : "Null"
                  },
                  "asTypeSpecifier" : {
                     "localId" : "126",
                     "type" : "ListTypeSpecifier",
                     "resultTypeSpecifier" : {
                        "type" : "ListTypeSpecifier",
                        "elementType" : {
                           "name" : "{urn:hl7-org:elm-types:r1}Decimal",
                           "type" : "NamedTypeSpecifier"
                        }
                     },
                     "elementType" : {
                        "localId" : "125",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Decimal",
                        "name" : "{urn:hl7-org:elm-types:r1}Decimal",
                        "type" : "NamedTypeSpecifier"
                     }
                  }
               }
            }
         } ]
      }
   }
}

### Avg
library TestSnippet version '1'
using QUICK
context Patient
define not_null: Avg({1,2,3,4,5})
define has_null: Avg({1,null,null,2})
define not_null_q: Avg({1 'ml',2 'ml',3 'ml',4 'ml',5 'ml'})
define has_null_q: Avg({1 'ml',null,null,2 'ml'})
define empty: Avg(List<Integer>{})
define q_diff_units: Avg({1 'ml',0.002 'l',0.03 'dl',4 'ml',5 'ml'})
define q_throw1: Avg({1 'ml',0.002 'm',0.03 'dl',4 'ml',5 'ml'})
###

module.exports['Avg'] = {
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
            "localIdentifier" : "System",
            "uri" : "urn:hl7-org:elm-types:r1"
         }, {
            "localId" : "1",
            "localIdentifier" : "QUICK",
            "uri" : "http://hl7.org/fhir"
         } ]
      },
      "statements" : {
         "def" : [ {
            "name" : "Patient",
            "context" : "Patient",
            "expression" : {
               "type" : "SingletonFrom",
               "operand" : {
                  "dataType" : "{http://hl7.org/fhir}Patient",
                  "templateId" : "patient-qicore-qicore-patient",
                  "type" : "Retrieve"
               }
            }
         }, {
            "localId" : "9",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Decimal",
            "name" : "not_null",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "9",
                  "s" : [ {
                     "value" : [ "define ","not_null",": " ]
                  }, {
                     "r" : "8",
                     "s" : [ {
                        "value" : [ "Avg","(" ]
                     }, {
                        "r" : "7",
                        "s" : [ {
                           "r" : "2",
                           "value" : [ "{","1",",","2",",","3",",","4",",","5","}" ]
                        } ]
                     }, {
                        "value" : [ ")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "8",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Decimal",
               "type" : "Avg",
               "source" : {
                  "type" : "Query",
                  "source" : [ {
                     "alias" : "X",
                     "expression" : {
                        "localId" : "7",
                        "type" : "List",
                        "resultTypeSpecifier" : {
                           "type" : "ListTypeSpecifier",
                           "elementType" : {
                              "name" : "{urn:hl7-org:elm-types:r1}Integer",
                              "type" : "NamedTypeSpecifier"
                           }
                        },
                        "element" : [ {
                           "localId" : "2",
                           "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                           "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                           "value" : "1",
                           "type" : "Literal"
                        }, {
                           "localId" : "3",
                           "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                           "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                           "value" : "2",
                           "type" : "Literal"
                        }, {
                           "localId" : "4",
                           "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                           "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                           "value" : "3",
                           "type" : "Literal"
                        }, {
                           "localId" : "5",
                           "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                           "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                           "value" : "4",
                           "type" : "Literal"
                        }, {
                           "localId" : "6",
                           "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                           "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                           "value" : "5",
                           "type" : "Literal"
                        } ]
                     }
                  } ],
                  "return" : {
                     "distinct" : false,
                     "expression" : {
                        "type" : "ToDecimal",
                        "operand" : {
                           "name" : "X",
                           "type" : "AliasRef"
                        }
                     }
                  }
               }
            }
         }, {
            "localId" : "16",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Decimal",
            "name" : "has_null",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "16",
                  "s" : [ {
                     "value" : [ "define ","has_null",": " ]
                  }, {
                     "r" : "15",
                     "s" : [ {
                        "value" : [ "Avg","(" ]
                     }, {
                        "r" : "14",
                        "s" : [ {
                           "r" : "10",
                           "value" : [ "{","1",",","null",",","null",",","2","}" ]
                        } ]
                     }, {
                        "value" : [ ")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "15",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Decimal",
               "type" : "Avg",
               "source" : {
                  "type" : "Query",
                  "source" : [ {
                     "alias" : "X",
                     "expression" : {
                        "localId" : "14",
                        "type" : "List",
                        "resultTypeSpecifier" : {
                           "type" : "ListTypeSpecifier",
                           "elementType" : {
                              "name" : "{urn:hl7-org:elm-types:r1}Integer",
                              "type" : "NamedTypeSpecifier"
                           }
                        },
                        "element" : [ {
                           "localId" : "10",
                           "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                           "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                           "value" : "1",
                           "type" : "Literal"
                        }, {
                           "asType" : "{urn:hl7-org:elm-types:r1}Integer",
                           "type" : "As",
                           "operand" : {
                              "localId" : "11",
                              "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                              "type" : "Null"
                           }
                        }, {
                           "asType" : "{urn:hl7-org:elm-types:r1}Integer",
                           "type" : "As",
                           "operand" : {
                              "localId" : "12",
                              "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                              "type" : "Null"
                           }
                        }, {
                           "localId" : "13",
                           "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                           "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                           "value" : "2",
                           "type" : "Literal"
                        } ]
                     }
                  } ],
                  "return" : {
                     "distinct" : false,
                     "expression" : {
                        "type" : "ToDecimal",
                        "operand" : {
                           "name" : "X",
                           "type" : "AliasRef"
                        }
                     }
                  }
               }
            }
         }, {
            "localId" : "24",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
            "name" : "not_null_q",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "24",
                  "s" : [ {
                     "value" : [ "define ","not_null_q",": " ]
                  }, {
                     "r" : "23",
                     "s" : [ {
                        "value" : [ "Avg","(" ]
                     }, {
                        "r" : "22",
                        "s" : [ {
                           "value" : [ "{" ]
                        }, {
                           "r" : "17",
                           "s" : [ {
                              "value" : [ "1 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "18",
                           "s" : [ {
                              "value" : [ "2 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "19",
                           "s" : [ {
                              "value" : [ "3 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "20",
                           "s" : [ {
                              "value" : [ "4 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "21",
                           "s" : [ {
                              "value" : [ "5 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "}" ]
                        } ]
                     }, {
                        "value" : [ ")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "23",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
               "type" : "Avg",
               "source" : {
                  "localId" : "22",
                  "type" : "List",
                  "resultTypeSpecifier" : {
                     "type" : "ListTypeSpecifier",
                     "elementType" : {
                        "name" : "{urn:hl7-org:elm-types:r1}Quantity",
                        "type" : "NamedTypeSpecifier"
                     }
                  },
                  "element" : [ {
                     "localId" : "17",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 1,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "localId" : "18",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 2,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "localId" : "19",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 3,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "localId" : "20",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 4,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "localId" : "21",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 5,
                     "unit" : "ml",
                     "type" : "Quantity"
                  } ]
               }
            }
         }, {
            "localId" : "31",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
            "name" : "has_null_q",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "31",
                  "s" : [ {
                     "value" : [ "define ","has_null_q",": " ]
                  }, {
                     "r" : "30",
                     "s" : [ {
                        "value" : [ "Avg","(" ]
                     }, {
                        "r" : "29",
                        "s" : [ {
                           "value" : [ "{" ]
                        }, {
                           "r" : "25",
                           "s" : [ {
                              "value" : [ "1 ","'ml'" ]
                           } ]
                        }, {
                           "r" : "26",
                           "value" : [ ",","null",",","null","," ]
                        }, {
                           "r" : "28",
                           "s" : [ {
                              "value" : [ "2 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "}" ]
                        } ]
                     }, {
                        "value" : [ ")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "30",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
               "type" : "Avg",
               "source" : {
                  "localId" : "29",
                  "type" : "List",
                  "resultTypeSpecifier" : {
                     "type" : "ListTypeSpecifier",
                     "elementType" : {
                        "name" : "{urn:hl7-org:elm-types:r1}Quantity",
                        "type" : "NamedTypeSpecifier"
                     }
                  },
                  "element" : [ {
                     "localId" : "25",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 1,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "asType" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "type" : "As",
                     "operand" : {
                        "localId" : "26",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                        "type" : "Null"
                     }
                  }, {
                     "asType" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "type" : "As",
                     "operand" : {
                        "localId" : "27",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                        "type" : "Null"
                     }
                  }, {
                     "localId" : "28",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 2,
                     "unit" : "ml",
                     "type" : "Quantity"
                  } ]
               }
            }
         }, {
            "localId" : "35",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Decimal",
            "name" : "empty",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "35",
                  "s" : [ {
                     "value" : [ "define ","empty",": " ]
                  }, {
                     "r" : "34",
                     "s" : [ {
                        "value" : [ "Avg","(" ]
                     }, {
                        "r" : "33",
                        "s" : [ {
                           "value" : [ "List<" ]
                        }, {
                           "r" : "32",
                           "s" : [ {
                              "value" : [ "Integer" ]
                           } ]
                        }, {
                           "value" : [ ">{}" ]
                        } ]
                     }, {
                        "value" : [ ")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "34",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Decimal",
               "type" : "Avg",
               "source" : {
                  "type" : "Query",
                  "source" : [ {
                     "alias" : "X",
                     "expression" : {
                        "localId" : "33",
                        "type" : "List",
                        "resultTypeSpecifier" : {
                           "type" : "ListTypeSpecifier",
                           "elementType" : {
                              "name" : "{urn:hl7-org:elm-types:r1}Integer",
                              "type" : "NamedTypeSpecifier"
                           }
                        }
                     }
                  } ],
                  "return" : {
                     "distinct" : false,
                     "expression" : {
                        "type" : "ToDecimal",
                        "operand" : {
                           "name" : "X",
                           "type" : "AliasRef"
                        }
                     }
                  }
               }
            }
         }, {
            "localId" : "43",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
            "name" : "q_diff_units",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "43",
                  "s" : [ {
                     "value" : [ "define ","q_diff_units",": " ]
                  }, {
                     "r" : "42",
                     "s" : [ {
                        "value" : [ "Avg","(" ]
                     }, {
                        "r" : "41",
                        "s" : [ {
                           "value" : [ "{" ]
                        }, {
                           "r" : "36",
                           "s" : [ {
                              "value" : [ "1 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "37",
                           "s" : [ {
                              "value" : [ "0.002 ","'l'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "38",
                           "s" : [ {
                              "value" : [ "0.03 ","'dl'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "39",
                           "s" : [ {
                              "value" : [ "4 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "40",
                           "s" : [ {
                              "value" : [ "5 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "}" ]
                        } ]
                     }, {
                        "value" : [ ")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "42",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
               "type" : "Avg",
               "source" : {
                  "localId" : "41",
                  "type" : "List",
                  "resultTypeSpecifier" : {
                     "type" : "ListTypeSpecifier",
                     "elementType" : {
                        "name" : "{urn:hl7-org:elm-types:r1}Quantity",
                        "type" : "NamedTypeSpecifier"
                     }
                  },
                  "element" : [ {
                     "localId" : "36",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 1,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "localId" : "37",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 0.002,
                     "unit" : "l",
                     "type" : "Quantity"
                  }, {
                     "localId" : "38",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 0.03,
                     "unit" : "dl",
                     "type" : "Quantity"
                  }, {
                     "localId" : "39",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 4,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "localId" : "40",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 5,
                     "unit" : "ml",
                     "type" : "Quantity"
                  } ]
               }
            }
         }, {
            "localId" : "51",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
            "name" : "q_throw1",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "51",
                  "s" : [ {
                     "value" : [ "define ","q_throw1",": " ]
                  }, {
                     "r" : "50",
                     "s" : [ {
                        "value" : [ "Avg","(" ]
                     }, {
                        "r" : "49",
                        "s" : [ {
                           "value" : [ "{" ]
                        }, {
                           "r" : "44",
                           "s" : [ {
                              "value" : [ "1 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "45",
                           "s" : [ {
                              "value" : [ "0.002 ","'m'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "46",
                           "s" : [ {
                              "value" : [ "0.03 ","'dl'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "47",
                           "s" : [ {
                              "value" : [ "4 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "48",
                           "s" : [ {
                              "value" : [ "5 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "}" ]
                        } ]
                     }, {
                        "value" : [ ")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "50",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
               "type" : "Avg",
               "source" : {
                  "localId" : "49",
                  "type" : "List",
                  "resultTypeSpecifier" : {
                     "type" : "ListTypeSpecifier",
                     "elementType" : {
                        "name" : "{urn:hl7-org:elm-types:r1}Quantity",
                        "type" : "NamedTypeSpecifier"
                     }
                  },
                  "element" : [ {
                     "localId" : "44",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 1,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "localId" : "45",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 0.002,
                     "unit" : "m",
                     "type" : "Quantity"
                  }, {
                     "localId" : "46",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 0.03,
                     "unit" : "dl",
                     "type" : "Quantity"
                  }, {
                     "localId" : "47",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 4,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "localId" : "48",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 5,
                     "unit" : "ml",
                     "type" : "Quantity"
                  } ]
               }
            }
         } ]
      }
   }
}

### Median
library TestSnippet version '1'
using QUICK
context Patient
define odd: Median({5,1,2,3,4})
define even: Median({5,1,2,3,4,6})
define odd_q: Median({5 'ml',1 'ml',2 'ml',3 'ml',4 'ml'})
define even_q: Median({5 'ml',1 'ml',2 'ml',3 'ml',4 'ml',6 'ml'})
define q_diff_units: Median({5 'ml',0.001 'l',0.02 'dl',3 'ml',4 'ml',6 'ml'})
define q_throw1: Median({5 'ml',0.001 'l',0.22 'dl',3 'm',4 'h',6 'ml'})
define q_throw2: Median({5 ,1 ,2 ,3 ,4 'ml',6 'ml'})

define empty: Median(List<Integer>{})
define has_null: Median({1,null,null,2})
define dup_vals_even: Median({3,1,2,2,2,3,4,5})
define dup_vals_odd:  Median({3,1,2,2,2,3,4,5,6})
define has_null_q: Median({1 'ml',null,null,2 'ml'})
define dup_vals_even_q: Median({3 'ml',1 'ml',2 'ml',2 'ml',2 'ml',3 'ml',4 'ml',5 'ml'})
define dup_vals_odd_q:  Median({3 'ml',1 'ml',2 'ml',2 'ml',2 'ml',3 'ml',4 'ml',5 'ml',6 'ml'})
###

module.exports['Median'] = {
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
            "localIdentifier" : "System",
            "uri" : "urn:hl7-org:elm-types:r1"
         }, {
            "localId" : "1",
            "localIdentifier" : "QUICK",
            "uri" : "http://hl7.org/fhir"
         } ]
      },
      "statements" : {
         "def" : [ {
            "name" : "Patient",
            "context" : "Patient",
            "expression" : {
               "type" : "SingletonFrom",
               "operand" : {
                  "dataType" : "{http://hl7.org/fhir}Patient",
                  "templateId" : "patient-qicore-qicore-patient",
                  "type" : "Retrieve"
               }
            }
         }, {
            "localId" : "9",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Decimal",
            "name" : "odd",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "9",
                  "s" : [ {
                     "value" : [ "define ","odd",": " ]
                  }, {
                     "r" : "8",
                     "s" : [ {
                        "value" : [ "Median","(" ]
                     }, {
                        "r" : "7",
                        "s" : [ {
                           "r" : "2",
                           "value" : [ "{","5",",","1",",","2",",","3",",","4","}" ]
                        } ]
                     }, {
                        "value" : [ ")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "8",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Decimal",
               "type" : "Median",
               "source" : {
                  "type" : "Query",
                  "source" : [ {
                     "alias" : "X",
                     "expression" : {
                        "localId" : "7",
                        "type" : "List",
                        "resultTypeSpecifier" : {
                           "type" : "ListTypeSpecifier",
                           "elementType" : {
                              "name" : "{urn:hl7-org:elm-types:r1}Integer",
                              "type" : "NamedTypeSpecifier"
                           }
                        },
                        "element" : [ {
                           "localId" : "2",
                           "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                           "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                           "value" : "5",
                           "type" : "Literal"
                        }, {
                           "localId" : "3",
                           "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                           "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                           "value" : "1",
                           "type" : "Literal"
                        }, {
                           "localId" : "4",
                           "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                           "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                           "value" : "2",
                           "type" : "Literal"
                        }, {
                           "localId" : "5",
                           "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                           "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                           "value" : "3",
                           "type" : "Literal"
                        }, {
                           "localId" : "6",
                           "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                           "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                           "value" : "4",
                           "type" : "Literal"
                        } ]
                     }
                  } ],
                  "return" : {
                     "distinct" : false,
                     "expression" : {
                        "type" : "ToDecimal",
                        "operand" : {
                           "name" : "X",
                           "type" : "AliasRef"
                        }
                     }
                  }
               }
            }
         }, {
            "localId" : "18",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Decimal",
            "name" : "even",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "18",
                  "s" : [ {
                     "value" : [ "define ","even",": " ]
                  }, {
                     "r" : "17",
                     "s" : [ {
                        "value" : [ "Median","(" ]
                     }, {
                        "r" : "16",
                        "s" : [ {
                           "r" : "10",
                           "value" : [ "{","5",",","1",",","2",",","3",",","4",",","6","}" ]
                        } ]
                     }, {
                        "value" : [ ")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "17",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Decimal",
               "type" : "Median",
               "source" : {
                  "type" : "Query",
                  "source" : [ {
                     "alias" : "X",
                     "expression" : {
                        "localId" : "16",
                        "type" : "List",
                        "resultTypeSpecifier" : {
                           "type" : "ListTypeSpecifier",
                           "elementType" : {
                              "name" : "{urn:hl7-org:elm-types:r1}Integer",
                              "type" : "NamedTypeSpecifier"
                           }
                        },
                        "element" : [ {
                           "localId" : "10",
                           "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                           "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                           "value" : "5",
                           "type" : "Literal"
                        }, {
                           "localId" : "11",
                           "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                           "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                           "value" : "1",
                           "type" : "Literal"
                        }, {
                           "localId" : "12",
                           "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                           "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                           "value" : "2",
                           "type" : "Literal"
                        }, {
                           "localId" : "13",
                           "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                           "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                           "value" : "3",
                           "type" : "Literal"
                        }, {
                           "localId" : "14",
                           "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                           "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                           "value" : "4",
                           "type" : "Literal"
                        }, {
                           "localId" : "15",
                           "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                           "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                           "value" : "6",
                           "type" : "Literal"
                        } ]
                     }
                  } ],
                  "return" : {
                     "distinct" : false,
                     "expression" : {
                        "type" : "ToDecimal",
                        "operand" : {
                           "name" : "X",
                           "type" : "AliasRef"
                        }
                     }
                  }
               }
            }
         }, {
            "localId" : "26",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
            "name" : "odd_q",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "26",
                  "s" : [ {
                     "value" : [ "define ","odd_q",": " ]
                  }, {
                     "r" : "25",
                     "s" : [ {
                        "value" : [ "Median","(" ]
                     }, {
                        "r" : "24",
                        "s" : [ {
                           "value" : [ "{" ]
                        }, {
                           "r" : "19",
                           "s" : [ {
                              "value" : [ "5 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "20",
                           "s" : [ {
                              "value" : [ "1 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "21",
                           "s" : [ {
                              "value" : [ "2 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "22",
                           "s" : [ {
                              "value" : [ "3 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "23",
                           "s" : [ {
                              "value" : [ "4 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "}" ]
                        } ]
                     }, {
                        "value" : [ ")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "25",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
               "type" : "Median",
               "source" : {
                  "localId" : "24",
                  "type" : "List",
                  "resultTypeSpecifier" : {
                     "type" : "ListTypeSpecifier",
                     "elementType" : {
                        "name" : "{urn:hl7-org:elm-types:r1}Quantity",
                        "type" : "NamedTypeSpecifier"
                     }
                  },
                  "element" : [ {
                     "localId" : "19",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 5,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "localId" : "20",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 1,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "localId" : "21",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 2,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "localId" : "22",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 3,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "localId" : "23",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 4,
                     "unit" : "ml",
                     "type" : "Quantity"
                  } ]
               }
            }
         }, {
            "localId" : "35",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
            "name" : "even_q",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "35",
                  "s" : [ {
                     "value" : [ "define ","even_q",": " ]
                  }, {
                     "r" : "34",
                     "s" : [ {
                        "value" : [ "Median","(" ]
                     }, {
                        "r" : "33",
                        "s" : [ {
                           "value" : [ "{" ]
                        }, {
                           "r" : "27",
                           "s" : [ {
                              "value" : [ "5 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "28",
                           "s" : [ {
                              "value" : [ "1 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "29",
                           "s" : [ {
                              "value" : [ "2 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "30",
                           "s" : [ {
                              "value" : [ "3 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "31",
                           "s" : [ {
                              "value" : [ "4 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "32",
                           "s" : [ {
                              "value" : [ "6 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "}" ]
                        } ]
                     }, {
                        "value" : [ ")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "34",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
               "type" : "Median",
               "source" : {
                  "localId" : "33",
                  "type" : "List",
                  "resultTypeSpecifier" : {
                     "type" : "ListTypeSpecifier",
                     "elementType" : {
                        "name" : "{urn:hl7-org:elm-types:r1}Quantity",
                        "type" : "NamedTypeSpecifier"
                     }
                  },
                  "element" : [ {
                     "localId" : "27",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 5,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "localId" : "28",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 1,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "localId" : "29",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 2,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "localId" : "30",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 3,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "localId" : "31",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 4,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "localId" : "32",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 6,
                     "unit" : "ml",
                     "type" : "Quantity"
                  } ]
               }
            }
         }, {
            "localId" : "44",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
            "name" : "q_diff_units",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "44",
                  "s" : [ {
                     "value" : [ "define ","q_diff_units",": " ]
                  }, {
                     "r" : "43",
                     "s" : [ {
                        "value" : [ "Median","(" ]
                     }, {
                        "r" : "42",
                        "s" : [ {
                           "value" : [ "{" ]
                        }, {
                           "r" : "36",
                           "s" : [ {
                              "value" : [ "5 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "37",
                           "s" : [ {
                              "value" : [ "0.001 ","'l'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "38",
                           "s" : [ {
                              "value" : [ "0.02 ","'dl'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "39",
                           "s" : [ {
                              "value" : [ "3 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "40",
                           "s" : [ {
                              "value" : [ "4 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "41",
                           "s" : [ {
                              "value" : [ "6 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "}" ]
                        } ]
                     }, {
                        "value" : [ ")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "43",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
               "type" : "Median",
               "source" : {
                  "localId" : "42",
                  "type" : "List",
                  "resultTypeSpecifier" : {
                     "type" : "ListTypeSpecifier",
                     "elementType" : {
                        "name" : "{urn:hl7-org:elm-types:r1}Quantity",
                        "type" : "NamedTypeSpecifier"
                     }
                  },
                  "element" : [ {
                     "localId" : "36",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 5,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "localId" : "37",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 0.001,
                     "unit" : "l",
                     "type" : "Quantity"
                  }, {
                     "localId" : "38",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 0.02,
                     "unit" : "dl",
                     "type" : "Quantity"
                  }, {
                     "localId" : "39",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 3,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "localId" : "40",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 4,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "localId" : "41",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 6,
                     "unit" : "ml",
                     "type" : "Quantity"
                  } ]
               }
            }
         }, {
            "localId" : "53",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
            "name" : "q_throw1",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "53",
                  "s" : [ {
                     "value" : [ "define ","q_throw1",": " ]
                  }, {
                     "r" : "52",
                     "s" : [ {
                        "value" : [ "Median","(" ]
                     }, {
                        "r" : "51",
                        "s" : [ {
                           "value" : [ "{" ]
                        }, {
                           "r" : "45",
                           "s" : [ {
                              "value" : [ "5 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "46",
                           "s" : [ {
                              "value" : [ "0.001 ","'l'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "47",
                           "s" : [ {
                              "value" : [ "0.22 ","'dl'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "48",
                           "s" : [ {
                              "value" : [ "3 ","'m'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "49",
                           "s" : [ {
                              "value" : [ "4 ","'h'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "50",
                           "s" : [ {
                              "value" : [ "6 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "}" ]
                        } ]
                     }, {
                        "value" : [ ")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "52",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
               "type" : "Median",
               "source" : {
                  "localId" : "51",
                  "type" : "List",
                  "resultTypeSpecifier" : {
                     "type" : "ListTypeSpecifier",
                     "elementType" : {
                        "name" : "{urn:hl7-org:elm-types:r1}Quantity",
                        "type" : "NamedTypeSpecifier"
                     }
                  },
                  "element" : [ {
                     "localId" : "45",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 5,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "localId" : "46",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 0.001,
                     "unit" : "l",
                     "type" : "Quantity"
                  }, {
                     "localId" : "47",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 0.22,
                     "unit" : "dl",
                     "type" : "Quantity"
                  }, {
                     "localId" : "48",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 3,
                     "unit" : "m",
                     "type" : "Quantity"
                  }, {
                     "localId" : "49",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 4,
                     "unit" : "h",
                     "type" : "Quantity"
                  }, {
                     "localId" : "50",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 6,
                     "unit" : "ml",
                     "type" : "Quantity"
                  } ]
               }
            }
         }, {
            "localId" : "62",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
            "name" : "q_throw2",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "62",
                  "s" : [ {
                     "value" : [ "define ","q_throw2",": " ]
                  }, {
                     "r" : "61",
                     "s" : [ {
                        "value" : [ "Median","(" ]
                     }, {
                        "r" : "60",
                        "s" : [ {
                           "r" : "54",
                           "value" : [ "{","5"," ,","1"," ,","2"," ,","3"," ," ]
                        }, {
                           "r" : "58",
                           "s" : [ {
                              "value" : [ "4 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "59",
                           "s" : [ {
                              "value" : [ "6 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "}" ]
                        } ]
                     }, {
                        "value" : [ ")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "61",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
               "type" : "Median",
               "source" : {
                  "localId" : "60",
                  "type" : "List",
                  "resultTypeSpecifier" : {
                     "type" : "ListTypeSpecifier",
                     "elementType" : {
                        "name" : "{urn:hl7-org:elm-types:r1}Quantity",
                        "type" : "NamedTypeSpecifier"
                     }
                  },
                  "element" : [ {
                     "type" : "ToQuantity",
                     "operand" : {
                        "localId" : "54",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "5",
                        "type" : "Literal"
                     }
                  }, {
                     "type" : "ToQuantity",
                     "operand" : {
                        "localId" : "55",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "1",
                        "type" : "Literal"
                     }
                  }, {
                     "type" : "ToQuantity",
                     "operand" : {
                        "localId" : "56",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "2",
                        "type" : "Literal"
                     }
                  }, {
                     "type" : "ToQuantity",
                     "operand" : {
                        "localId" : "57",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "3",
                        "type" : "Literal"
                     }
                  }, {
                     "localId" : "58",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 4,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "localId" : "59",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 6,
                     "unit" : "ml",
                     "type" : "Quantity"
                  } ]
               }
            }
         }, {
            "localId" : "66",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Decimal",
            "name" : "empty",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "66",
                  "s" : [ {
                     "value" : [ "define ","empty",": " ]
                  }, {
                     "r" : "65",
                     "s" : [ {
                        "value" : [ "Median","(" ]
                     }, {
                        "r" : "64",
                        "s" : [ {
                           "value" : [ "List<" ]
                        }, {
                           "r" : "63",
                           "s" : [ {
                              "value" : [ "Integer" ]
                           } ]
                        }, {
                           "value" : [ ">{}" ]
                        } ]
                     }, {
                        "value" : [ ")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "65",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Decimal",
               "type" : "Median",
               "source" : {
                  "type" : "Query",
                  "source" : [ {
                     "alias" : "X",
                     "expression" : {
                        "localId" : "64",
                        "type" : "List",
                        "resultTypeSpecifier" : {
                           "type" : "ListTypeSpecifier",
                           "elementType" : {
                              "name" : "{urn:hl7-org:elm-types:r1}Integer",
                              "type" : "NamedTypeSpecifier"
                           }
                        }
                     }
                  } ],
                  "return" : {
                     "distinct" : false,
                     "expression" : {
                        "type" : "ToDecimal",
                        "operand" : {
                           "name" : "X",
                           "type" : "AliasRef"
                        }
                     }
                  }
               }
            }
         }, {
            "localId" : "73",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Decimal",
            "name" : "has_null",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "73",
                  "s" : [ {
                     "value" : [ "define ","has_null",": " ]
                  }, {
                     "r" : "72",
                     "s" : [ {
                        "value" : [ "Median","(" ]
                     }, {
                        "r" : "71",
                        "s" : [ {
                           "r" : "67",
                           "value" : [ "{","1",",","null",",","null",",","2","}" ]
                        } ]
                     }, {
                        "value" : [ ")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "72",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Decimal",
               "type" : "Median",
               "source" : {
                  "type" : "Query",
                  "source" : [ {
                     "alias" : "X",
                     "expression" : {
                        "localId" : "71",
                        "type" : "List",
                        "resultTypeSpecifier" : {
                           "type" : "ListTypeSpecifier",
                           "elementType" : {
                              "name" : "{urn:hl7-org:elm-types:r1}Integer",
                              "type" : "NamedTypeSpecifier"
                           }
                        },
                        "element" : [ {
                           "localId" : "67",
                           "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                           "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                           "value" : "1",
                           "type" : "Literal"
                        }, {
                           "asType" : "{urn:hl7-org:elm-types:r1}Integer",
                           "type" : "As",
                           "operand" : {
                              "localId" : "68",
                              "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                              "type" : "Null"
                           }
                        }, {
                           "asType" : "{urn:hl7-org:elm-types:r1}Integer",
                           "type" : "As",
                           "operand" : {
                              "localId" : "69",
                              "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                              "type" : "Null"
                           }
                        }, {
                           "localId" : "70",
                           "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                           "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                           "value" : "2",
                           "type" : "Literal"
                        } ]
                     }
                  } ],
                  "return" : {
                     "distinct" : false,
                     "expression" : {
                        "type" : "ToDecimal",
                        "operand" : {
                           "name" : "X",
                           "type" : "AliasRef"
                        }
                     }
                  }
               }
            }
         }, {
            "localId" : "84",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Decimal",
            "name" : "dup_vals_even",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "84",
                  "s" : [ {
                     "value" : [ "define ","dup_vals_even",": " ]
                  }, {
                     "r" : "83",
                     "s" : [ {
                        "value" : [ "Median","(" ]
                     }, {
                        "r" : "82",
                        "s" : [ {
                           "r" : "74",
                           "value" : [ "{","3",",","1",",","2",",","2",",","2",",","3",",","4",",","5","}" ]
                        } ]
                     }, {
                        "value" : [ ")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "83",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Decimal",
               "type" : "Median",
               "source" : {
                  "type" : "Query",
                  "source" : [ {
                     "alias" : "X",
                     "expression" : {
                        "localId" : "82",
                        "type" : "List",
                        "resultTypeSpecifier" : {
                           "type" : "ListTypeSpecifier",
                           "elementType" : {
                              "name" : "{urn:hl7-org:elm-types:r1}Integer",
                              "type" : "NamedTypeSpecifier"
                           }
                        },
                        "element" : [ {
                           "localId" : "74",
                           "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                           "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                           "value" : "3",
                           "type" : "Literal"
                        }, {
                           "localId" : "75",
                           "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                           "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                           "value" : "1",
                           "type" : "Literal"
                        }, {
                           "localId" : "76",
                           "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                           "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                           "value" : "2",
                           "type" : "Literal"
                        }, {
                           "localId" : "77",
                           "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                           "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                           "value" : "2",
                           "type" : "Literal"
                        }, {
                           "localId" : "78",
                           "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                           "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                           "value" : "2",
                           "type" : "Literal"
                        }, {
                           "localId" : "79",
                           "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                           "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                           "value" : "3",
                           "type" : "Literal"
                        }, {
                           "localId" : "80",
                           "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                           "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                           "value" : "4",
                           "type" : "Literal"
                        }, {
                           "localId" : "81",
                           "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                           "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                           "value" : "5",
                           "type" : "Literal"
                        } ]
                     }
                  } ],
                  "return" : {
                     "distinct" : false,
                     "expression" : {
                        "type" : "ToDecimal",
                        "operand" : {
                           "name" : "X",
                           "type" : "AliasRef"
                        }
                     }
                  }
               }
            }
         }, {
            "localId" : "96",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Decimal",
            "name" : "dup_vals_odd",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "96",
                  "s" : [ {
                     "value" : [ "define ","dup_vals_odd",":  " ]
                  }, {
                     "r" : "95",
                     "s" : [ {
                        "value" : [ "Median","(" ]
                     }, {
                        "r" : "94",
                        "s" : [ {
                           "r" : "85",
                           "value" : [ "{","3",",","1",",","2",",","2",",","2",",","3",",","4",",","5",",","6","}" ]
                        } ]
                     }, {
                        "value" : [ ")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "95",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Decimal",
               "type" : "Median",
               "source" : {
                  "type" : "Query",
                  "source" : [ {
                     "alias" : "X",
                     "expression" : {
                        "localId" : "94",
                        "type" : "List",
                        "resultTypeSpecifier" : {
                           "type" : "ListTypeSpecifier",
                           "elementType" : {
                              "name" : "{urn:hl7-org:elm-types:r1}Integer",
                              "type" : "NamedTypeSpecifier"
                           }
                        },
                        "element" : [ {
                           "localId" : "85",
                           "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                           "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                           "value" : "3",
                           "type" : "Literal"
                        }, {
                           "localId" : "86",
                           "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                           "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                           "value" : "1",
                           "type" : "Literal"
                        }, {
                           "localId" : "87",
                           "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                           "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                           "value" : "2",
                           "type" : "Literal"
                        }, {
                           "localId" : "88",
                           "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                           "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                           "value" : "2",
                           "type" : "Literal"
                        }, {
                           "localId" : "89",
                           "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                           "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                           "value" : "2",
                           "type" : "Literal"
                        }, {
                           "localId" : "90",
                           "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                           "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                           "value" : "3",
                           "type" : "Literal"
                        }, {
                           "localId" : "91",
                           "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                           "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                           "value" : "4",
                           "type" : "Literal"
                        }, {
                           "localId" : "92",
                           "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                           "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                           "value" : "5",
                           "type" : "Literal"
                        }, {
                           "localId" : "93",
                           "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                           "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                           "value" : "6",
                           "type" : "Literal"
                        } ]
                     }
                  } ],
                  "return" : {
                     "distinct" : false,
                     "expression" : {
                        "type" : "ToDecimal",
                        "operand" : {
                           "name" : "X",
                           "type" : "AliasRef"
                        }
                     }
                  }
               }
            }
         }, {
            "localId" : "103",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
            "name" : "has_null_q",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "103",
                  "s" : [ {
                     "value" : [ "define ","has_null_q",": " ]
                  }, {
                     "r" : "102",
                     "s" : [ {
                        "value" : [ "Median","(" ]
                     }, {
                        "r" : "101",
                        "s" : [ {
                           "value" : [ "{" ]
                        }, {
                           "r" : "97",
                           "s" : [ {
                              "value" : [ "1 ","'ml'" ]
                           } ]
                        }, {
                           "r" : "98",
                           "value" : [ ",","null",",","null","," ]
                        }, {
                           "r" : "100",
                           "s" : [ {
                              "value" : [ "2 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "}" ]
                        } ]
                     }, {
                        "value" : [ ")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "102",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
               "type" : "Median",
               "source" : {
                  "localId" : "101",
                  "type" : "List",
                  "resultTypeSpecifier" : {
                     "type" : "ListTypeSpecifier",
                     "elementType" : {
                        "name" : "{urn:hl7-org:elm-types:r1}Quantity",
                        "type" : "NamedTypeSpecifier"
                     }
                  },
                  "element" : [ {
                     "localId" : "97",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 1,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "asType" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "type" : "As",
                     "operand" : {
                        "localId" : "98",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                        "type" : "Null"
                     }
                  }, {
                     "asType" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "type" : "As",
                     "operand" : {
                        "localId" : "99",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                        "type" : "Null"
                     }
                  }, {
                     "localId" : "100",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 2,
                     "unit" : "ml",
                     "type" : "Quantity"
                  } ]
               }
            }
         }, {
            "localId" : "114",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
            "name" : "dup_vals_even_q",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "114",
                  "s" : [ {
                     "value" : [ "define ","dup_vals_even_q",": " ]
                  }, {
                     "r" : "113",
                     "s" : [ {
                        "value" : [ "Median","(" ]
                     }, {
                        "r" : "112",
                        "s" : [ {
                           "value" : [ "{" ]
                        }, {
                           "r" : "104",
                           "s" : [ {
                              "value" : [ "3 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "105",
                           "s" : [ {
                              "value" : [ "1 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "106",
                           "s" : [ {
                              "value" : [ "2 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "107",
                           "s" : [ {
                              "value" : [ "2 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "108",
                           "s" : [ {
                              "value" : [ "2 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "109",
                           "s" : [ {
                              "value" : [ "3 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "110",
                           "s" : [ {
                              "value" : [ "4 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "111",
                           "s" : [ {
                              "value" : [ "5 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "}" ]
                        } ]
                     }, {
                        "value" : [ ")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "113",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
               "type" : "Median",
               "source" : {
                  "localId" : "112",
                  "type" : "List",
                  "resultTypeSpecifier" : {
                     "type" : "ListTypeSpecifier",
                     "elementType" : {
                        "name" : "{urn:hl7-org:elm-types:r1}Quantity",
                        "type" : "NamedTypeSpecifier"
                     }
                  },
                  "element" : [ {
                     "localId" : "104",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 3,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "localId" : "105",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 1,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "localId" : "106",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 2,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "localId" : "107",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 2,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "localId" : "108",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 2,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "localId" : "109",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 3,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "localId" : "110",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 4,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "localId" : "111",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 5,
                     "unit" : "ml",
                     "type" : "Quantity"
                  } ]
               }
            }
         }, {
            "localId" : "126",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
            "name" : "dup_vals_odd_q",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "126",
                  "s" : [ {
                     "value" : [ "define ","dup_vals_odd_q",":  " ]
                  }, {
                     "r" : "125",
                     "s" : [ {
                        "value" : [ "Median","(" ]
                     }, {
                        "r" : "124",
                        "s" : [ {
                           "value" : [ "{" ]
                        }, {
                           "r" : "115",
                           "s" : [ {
                              "value" : [ "3 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "116",
                           "s" : [ {
                              "value" : [ "1 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "117",
                           "s" : [ {
                              "value" : [ "2 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "118",
                           "s" : [ {
                              "value" : [ "2 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "119",
                           "s" : [ {
                              "value" : [ "2 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "120",
                           "s" : [ {
                              "value" : [ "3 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "121",
                           "s" : [ {
                              "value" : [ "4 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "122",
                           "s" : [ {
                              "value" : [ "5 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "123",
                           "s" : [ {
                              "value" : [ "6 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "}" ]
                        } ]
                     }, {
                        "value" : [ ")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "125",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
               "type" : "Median",
               "source" : {
                  "localId" : "124",
                  "type" : "List",
                  "resultTypeSpecifier" : {
                     "type" : "ListTypeSpecifier",
                     "elementType" : {
                        "name" : "{urn:hl7-org:elm-types:r1}Quantity",
                        "type" : "NamedTypeSpecifier"
                     }
                  },
                  "element" : [ {
                     "localId" : "115",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 3,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "localId" : "116",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 1,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "localId" : "117",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 2,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "localId" : "118",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 2,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "localId" : "119",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 2,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "localId" : "120",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 3,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "localId" : "121",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 4,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "localId" : "122",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 5,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "localId" : "123",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 6,
                     "unit" : "ml",
                     "type" : "Quantity"
                  } ]
               }
            }
         } ]
      }
   }
}

### Mode
library TestSnippet version '1'
using QUICK
context Patient
define not_null: Mode({1,2,2,2,3,4,5})
define has_null: Mode({1,null,null,2,2})
define empty: Mode({})

define bi_modal: Mode({1,2,2,2,3,3,3,4,5})
###

module.exports['Mode'] = {
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
            "localIdentifier" : "System",
            "uri" : "urn:hl7-org:elm-types:r1"
         }, {
            "localId" : "1",
            "localIdentifier" : "QUICK",
            "uri" : "http://hl7.org/fhir"
         } ]
      },
      "statements" : {
         "def" : [ {
            "name" : "Patient",
            "context" : "Patient",
            "expression" : {
               "type" : "SingletonFrom",
               "operand" : {
                  "dataType" : "{http://hl7.org/fhir}Patient",
                  "templateId" : "patient-qicore-qicore-patient",
                  "type" : "Retrieve"
               }
            }
         }, {
            "localId" : "11",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
            "name" : "not_null",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "11",
                  "s" : [ {
                     "value" : [ "define ","not_null",": " ]
                  }, {
                     "r" : "10",
                     "s" : [ {
                        "value" : [ "Mode","(" ]
                     }, {
                        "r" : "9",
                        "s" : [ {
                           "r" : "2",
                           "value" : [ "{","1",",","2",",","2",",","2",",","3",",","4",",","5","}" ]
                        } ]
                     }, {
                        "value" : [ ")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "10",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
               "type" : "Mode",
               "source" : {
                  "localId" : "9",
                  "type" : "List",
                  "resultTypeSpecifier" : {
                     "type" : "ListTypeSpecifier",
                     "elementType" : {
                        "name" : "{urn:hl7-org:elm-types:r1}Integer",
                        "type" : "NamedTypeSpecifier"
                     }
                  },
                  "element" : [ {
                     "localId" : "2",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "1",
                     "type" : "Literal"
                  }, {
                     "localId" : "3",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2",
                     "type" : "Literal"
                  }, {
                     "localId" : "4",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2",
                     "type" : "Literal"
                  }, {
                     "localId" : "5",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2",
                     "type" : "Literal"
                  }, {
                     "localId" : "6",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  }, {
                     "localId" : "7",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "4",
                     "type" : "Literal"
                  }, {
                     "localId" : "8",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "5",
                     "type" : "Literal"
                  } ]
               }
            }
         }, {
            "localId" : "19",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
            "name" : "has_null",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "19",
                  "s" : [ {
                     "value" : [ "define ","has_null",": " ]
                  }, {
                     "r" : "18",
                     "s" : [ {
                        "value" : [ "Mode","(" ]
                     }, {
                        "r" : "17",
                        "s" : [ {
                           "r" : "12",
                           "value" : [ "{","1",",","null",",","null",",","2",",","2","}" ]
                        } ]
                     }, {
                        "value" : [ ")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "18",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
               "type" : "Mode",
               "source" : {
                  "localId" : "17",
                  "type" : "List",
                  "resultTypeSpecifier" : {
                     "type" : "ListTypeSpecifier",
                     "elementType" : {
                        "name" : "{urn:hl7-org:elm-types:r1}Integer",
                        "type" : "NamedTypeSpecifier"
                     }
                  },
                  "element" : [ {
                     "localId" : "12",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "1",
                     "type" : "Literal"
                  }, {
                     "asType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "type" : "As",
                     "operand" : {
                        "localId" : "13",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                        "type" : "Null"
                     }
                  }, {
                     "asType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "type" : "As",
                     "operand" : {
                        "localId" : "14",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                        "type" : "Null"
                     }
                  }, {
                     "localId" : "15",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2",
                     "type" : "Literal"
                  }, {
                     "localId" : "16",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2",
                     "type" : "Literal"
                  } ]
               }
            }
         }, {
            "localId" : "22",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
            "name" : "empty",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "22",
                  "s" : [ {
                     "value" : [ "define ","empty",": " ]
                  }, {
                     "r" : "21",
                     "s" : [ {
                        "r" : "20",
                        "value" : [ "Mode","(","{}",")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "21",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
               "type" : "Mode",
               "source" : {
                  "localId" : "20",
                  "type" : "List",
                  "resultTypeSpecifier" : {
                     "type" : "ListTypeSpecifier",
                     "elementType" : {
                        "name" : "{urn:hl7-org:elm-types:r1}Any",
                        "type" : "NamedTypeSpecifier"
                     }
                  }
               }
            }
         }, {
            "localId" : "34",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
            "name" : "bi_modal",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "34",
                  "s" : [ {
                     "value" : [ "define ","bi_modal",": " ]
                  }, {
                     "r" : "33",
                     "s" : [ {
                        "value" : [ "Mode","(" ]
                     }, {
                        "r" : "32",
                        "s" : [ {
                           "r" : "23",
                           "value" : [ "{","1",",","2",",","2",",","2",",","3",",","3",",","3",",","4",",","5","}" ]
                        } ]
                     }, {
                        "value" : [ ")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "33",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
               "type" : "Mode",
               "source" : {
                  "localId" : "32",
                  "type" : "List",
                  "resultTypeSpecifier" : {
                     "type" : "ListTypeSpecifier",
                     "elementType" : {
                        "name" : "{urn:hl7-org:elm-types:r1}Integer",
                        "type" : "NamedTypeSpecifier"
                     }
                  },
                  "element" : [ {
                     "localId" : "23",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "1",
                     "type" : "Literal"
                  }, {
                     "localId" : "24",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2",
                     "type" : "Literal"
                  }, {
                     "localId" : "25",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2",
                     "type" : "Literal"
                  }, {
                     "localId" : "26",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2",
                     "type" : "Literal"
                  }, {
                     "localId" : "27",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  }, {
                     "localId" : "28",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  }, {
                     "localId" : "29",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  }, {
                     "localId" : "30",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "4",
                     "type" : "Literal"
                  }, {
                     "localId" : "31",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "5",
                     "type" : "Literal"
                  } ]
               }
            }
         } ]
      }
   }
}

### Variance
library TestSnippet version '1'
using QUICK
context Patient
define v: Variance({1,2,3,4,5})
define v_q: Variance({1 'ml',2 'ml',3 'ml',4 'ml',5 'ml'})
define q_diff_units: Variance({1.0 'ml',0.002 'l',0.003 'l',0.04 'dl',5.0 'ml'})
define q_throw1: Variance({1.0 'm',2.0 'l',3.0 'h',4.0 'ml',5.0 'ml'})
define q_throw2: Variance({1.0 ,2.0 ,3.0 ,4.0 'ml',5.0 'ml'})
###

module.exports['Variance'] = {
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
            "localIdentifier" : "System",
            "uri" : "urn:hl7-org:elm-types:r1"
         }, {
            "localId" : "1",
            "localIdentifier" : "QUICK",
            "uri" : "http://hl7.org/fhir"
         } ]
      },
      "statements" : {
         "def" : [ {
            "name" : "Patient",
            "context" : "Patient",
            "expression" : {
               "type" : "SingletonFrom",
               "operand" : {
                  "dataType" : "{http://hl7.org/fhir}Patient",
                  "templateId" : "patient-qicore-qicore-patient",
                  "type" : "Retrieve"
               }
            }
         }, {
            "localId" : "9",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Decimal",
            "name" : "v",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "9",
                  "s" : [ {
                     "value" : [ "define ","v",": " ]
                  }, {
                     "r" : "8",
                     "s" : [ {
                        "value" : [ "Variance","(" ]
                     }, {
                        "r" : "7",
                        "s" : [ {
                           "r" : "2",
                           "value" : [ "{","1",",","2",",","3",",","4",",","5","}" ]
                        } ]
                     }, {
                        "value" : [ ")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "8",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Decimal",
               "type" : "Variance",
               "source" : {
                  "type" : "Query",
                  "source" : [ {
                     "alias" : "X",
                     "expression" : {
                        "localId" : "7",
                        "type" : "List",
                        "resultTypeSpecifier" : {
                           "type" : "ListTypeSpecifier",
                           "elementType" : {
                              "name" : "{urn:hl7-org:elm-types:r1}Integer",
                              "type" : "NamedTypeSpecifier"
                           }
                        },
                        "element" : [ {
                           "localId" : "2",
                           "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                           "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                           "value" : "1",
                           "type" : "Literal"
                        }, {
                           "localId" : "3",
                           "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                           "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                           "value" : "2",
                           "type" : "Literal"
                        }, {
                           "localId" : "4",
                           "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                           "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                           "value" : "3",
                           "type" : "Literal"
                        }, {
                           "localId" : "5",
                           "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                           "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                           "value" : "4",
                           "type" : "Literal"
                        }, {
                           "localId" : "6",
                           "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                           "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                           "value" : "5",
                           "type" : "Literal"
                        } ]
                     }
                  } ],
                  "return" : {
                     "distinct" : false,
                     "expression" : {
                        "type" : "ToDecimal",
                        "operand" : {
                           "name" : "X",
                           "type" : "AliasRef"
                        }
                     }
                  }
               }
            }
         }, {
            "localId" : "17",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
            "name" : "v_q",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "17",
                  "s" : [ {
                     "value" : [ "define ","v_q",": " ]
                  }, {
                     "r" : "16",
                     "s" : [ {
                        "value" : [ "Variance","(" ]
                     }, {
                        "r" : "15",
                        "s" : [ {
                           "value" : [ "{" ]
                        }, {
                           "r" : "10",
                           "s" : [ {
                              "value" : [ "1 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "11",
                           "s" : [ {
                              "value" : [ "2 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "12",
                           "s" : [ {
                              "value" : [ "3 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "13",
                           "s" : [ {
                              "value" : [ "4 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "14",
                           "s" : [ {
                              "value" : [ "5 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "}" ]
                        } ]
                     }, {
                        "value" : [ ")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "16",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
               "type" : "Variance",
               "source" : {
                  "localId" : "15",
                  "type" : "List",
                  "resultTypeSpecifier" : {
                     "type" : "ListTypeSpecifier",
                     "elementType" : {
                        "name" : "{urn:hl7-org:elm-types:r1}Quantity",
                        "type" : "NamedTypeSpecifier"
                     }
                  },
                  "element" : [ {
                     "localId" : "10",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 1,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "localId" : "11",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 2,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "localId" : "12",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 3,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "localId" : "13",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 4,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "localId" : "14",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 5,
                     "unit" : "ml",
                     "type" : "Quantity"
                  } ]
               }
            }
         }, {
            "localId" : "25",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
            "name" : "q_diff_units",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "25",
                  "s" : [ {
                     "value" : [ "define ","q_diff_units",": " ]
                  }, {
                     "r" : "24",
                     "s" : [ {
                        "value" : [ "Variance","(" ]
                     }, {
                        "r" : "23",
                        "s" : [ {
                           "value" : [ "{" ]
                        }, {
                           "r" : "18",
                           "s" : [ {
                              "value" : [ "1.0 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "19",
                           "s" : [ {
                              "value" : [ "0.002 ","'l'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "20",
                           "s" : [ {
                              "value" : [ "0.003 ","'l'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "21",
                           "s" : [ {
                              "value" : [ "0.04 ","'dl'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "22",
                           "s" : [ {
                              "value" : [ "5.0 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "}" ]
                        } ]
                     }, {
                        "value" : [ ")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "24",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
               "type" : "Variance",
               "source" : {
                  "localId" : "23",
                  "type" : "List",
                  "resultTypeSpecifier" : {
                     "type" : "ListTypeSpecifier",
                     "elementType" : {
                        "name" : "{urn:hl7-org:elm-types:r1}Quantity",
                        "type" : "NamedTypeSpecifier"
                     }
                  },
                  "element" : [ {
                     "localId" : "18",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 1.0,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "localId" : "19",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 0.002,
                     "unit" : "l",
                     "type" : "Quantity"
                  }, {
                     "localId" : "20",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 0.003,
                     "unit" : "l",
                     "type" : "Quantity"
                  }, {
                     "localId" : "21",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 0.04,
                     "unit" : "dl",
                     "type" : "Quantity"
                  }, {
                     "localId" : "22",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 5.0,
                     "unit" : "ml",
                     "type" : "Quantity"
                  } ]
               }
            }
         }, {
            "localId" : "33",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
            "name" : "q_throw1",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "33",
                  "s" : [ {
                     "value" : [ "define ","q_throw1",": " ]
                  }, {
                     "r" : "32",
                     "s" : [ {
                        "value" : [ "Variance","(" ]
                     }, {
                        "r" : "31",
                        "s" : [ {
                           "value" : [ "{" ]
                        }, {
                           "r" : "26",
                           "s" : [ {
                              "value" : [ "1.0 ","'m'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "27",
                           "s" : [ {
                              "value" : [ "2.0 ","'l'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "28",
                           "s" : [ {
                              "value" : [ "3.0 ","'h'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "29",
                           "s" : [ {
                              "value" : [ "4.0 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "30",
                           "s" : [ {
                              "value" : [ "5.0 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "}" ]
                        } ]
                     }, {
                        "value" : [ ")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "32",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
               "type" : "Variance",
               "source" : {
                  "localId" : "31",
                  "type" : "List",
                  "resultTypeSpecifier" : {
                     "type" : "ListTypeSpecifier",
                     "elementType" : {
                        "name" : "{urn:hl7-org:elm-types:r1}Quantity",
                        "type" : "NamedTypeSpecifier"
                     }
                  },
                  "element" : [ {
                     "localId" : "26",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 1.0,
                     "unit" : "m",
                     "type" : "Quantity"
                  }, {
                     "localId" : "27",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 2.0,
                     "unit" : "l",
                     "type" : "Quantity"
                  }, {
                     "localId" : "28",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 3.0,
                     "unit" : "h",
                     "type" : "Quantity"
                  }, {
                     "localId" : "29",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 4.0,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "localId" : "30",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 5.0,
                     "unit" : "ml",
                     "type" : "Quantity"
                  } ]
               }
            }
         }, {
            "localId" : "41",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
            "name" : "q_throw2",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "41",
                  "s" : [ {
                     "value" : [ "define ","q_throw2",": " ]
                  }, {
                     "r" : "40",
                     "s" : [ {
                        "value" : [ "Variance","(" ]
                     }, {
                        "r" : "39",
                        "s" : [ {
                           "r" : "34",
                           "value" : [ "{","1.0"," ,","2.0"," ,","3.0"," ," ]
                        }, {
                           "r" : "37",
                           "s" : [ {
                              "value" : [ "4.0 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "38",
                           "s" : [ {
                              "value" : [ "5.0 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "}" ]
                        } ]
                     }, {
                        "value" : [ ")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "40",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
               "type" : "Variance",
               "source" : {
                  "localId" : "39",
                  "type" : "List",
                  "resultTypeSpecifier" : {
                     "type" : "ListTypeSpecifier",
                     "elementType" : {
                        "name" : "{urn:hl7-org:elm-types:r1}Quantity",
                        "type" : "NamedTypeSpecifier"
                     }
                  },
                  "element" : [ {
                     "type" : "ToQuantity",
                     "operand" : {
                        "localId" : "34",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Decimal",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Decimal",
                        "value" : "1.0",
                        "type" : "Literal"
                     }
                  }, {
                     "type" : "ToQuantity",
                     "operand" : {
                        "localId" : "35",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Decimal",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Decimal",
                        "value" : "2.0",
                        "type" : "Literal"
                     }
                  }, {
                     "type" : "ToQuantity",
                     "operand" : {
                        "localId" : "36",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Decimal",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Decimal",
                        "value" : "3.0",
                        "type" : "Literal"
                     }
                  }, {
                     "localId" : "37",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 4.0,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "localId" : "38",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 5.0,
                     "unit" : "ml",
                     "type" : "Quantity"
                  } ]
               }
            }
         } ]
      }
   }
}

### PopulationVariance
library TestSnippet version '1'
using QUICK
context Patient
define v: PopulationVariance({1.0,2.0,3.0,4.0,5.0})
define v_q: PopulationVariance({1.0 'ml',2.0 'ml',3.0 'ml',4.0 'ml',5.0 'ml'})
define q_diff_units: PopulationVariance({1.0 'ml',0.002 'l',0.003 'l',0.04 'dl',5.0 'ml'})
define q_throw1: PopulationVariance({1.0 'm',2.0 'l',3.0 'h',4.0 'ml',5.0 'ml'})
define q_throw2: PopulationVariance({1.0 ,2.0 ,3.0 ,4.0 'ml',5.0 'ml'})
###

module.exports['PopulationVariance'] = {
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
            "localIdentifier" : "System",
            "uri" : "urn:hl7-org:elm-types:r1"
         }, {
            "localId" : "1",
            "localIdentifier" : "QUICK",
            "uri" : "http://hl7.org/fhir"
         } ]
      },
      "statements" : {
         "def" : [ {
            "name" : "Patient",
            "context" : "Patient",
            "expression" : {
               "type" : "SingletonFrom",
               "operand" : {
                  "dataType" : "{http://hl7.org/fhir}Patient",
                  "templateId" : "patient-qicore-qicore-patient",
                  "type" : "Retrieve"
               }
            }
         }, {
            "localId" : "9",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Decimal",
            "name" : "v",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "9",
                  "s" : [ {
                     "value" : [ "define ","v",": " ]
                  }, {
                     "r" : "8",
                     "s" : [ {
                        "value" : [ "PopulationVariance","(" ]
                     }, {
                        "r" : "7",
                        "s" : [ {
                           "r" : "2",
                           "value" : [ "{","1.0",",","2.0",",","3.0",",","4.0",",","5.0","}" ]
                        } ]
                     }, {
                        "value" : [ ")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "8",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Decimal",
               "type" : "PopulationVariance",
               "source" : {
                  "localId" : "7",
                  "type" : "List",
                  "resultTypeSpecifier" : {
                     "type" : "ListTypeSpecifier",
                     "elementType" : {
                        "name" : "{urn:hl7-org:elm-types:r1}Decimal",
                        "type" : "NamedTypeSpecifier"
                     }
                  },
                  "element" : [ {
                     "localId" : "2",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Decimal",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Decimal",
                     "value" : "1.0",
                     "type" : "Literal"
                  }, {
                     "localId" : "3",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Decimal",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Decimal",
                     "value" : "2.0",
                     "type" : "Literal"
                  }, {
                     "localId" : "4",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Decimal",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Decimal",
                     "value" : "3.0",
                     "type" : "Literal"
                  }, {
                     "localId" : "5",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Decimal",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Decimal",
                     "value" : "4.0",
                     "type" : "Literal"
                  }, {
                     "localId" : "6",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Decimal",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Decimal",
                     "value" : "5.0",
                     "type" : "Literal"
                  } ]
               }
            }
         }, {
            "localId" : "17",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
            "name" : "v_q",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "17",
                  "s" : [ {
                     "value" : [ "define ","v_q",": " ]
                  }, {
                     "r" : "16",
                     "s" : [ {
                        "value" : [ "PopulationVariance","(" ]
                     }, {
                        "r" : "15",
                        "s" : [ {
                           "value" : [ "{" ]
                        }, {
                           "r" : "10",
                           "s" : [ {
                              "value" : [ "1.0 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "11",
                           "s" : [ {
                              "value" : [ "2.0 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "12",
                           "s" : [ {
                              "value" : [ "3.0 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "13",
                           "s" : [ {
                              "value" : [ "4.0 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "14",
                           "s" : [ {
                              "value" : [ "5.0 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "}" ]
                        } ]
                     }, {
                        "value" : [ ")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "16",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
               "type" : "PopulationVariance",
               "source" : {
                  "localId" : "15",
                  "type" : "List",
                  "resultTypeSpecifier" : {
                     "type" : "ListTypeSpecifier",
                     "elementType" : {
                        "name" : "{urn:hl7-org:elm-types:r1}Quantity",
                        "type" : "NamedTypeSpecifier"
                     }
                  },
                  "element" : [ {
                     "localId" : "10",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 1.0,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "localId" : "11",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 2.0,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "localId" : "12",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 3.0,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "localId" : "13",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 4.0,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "localId" : "14",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 5.0,
                     "unit" : "ml",
                     "type" : "Quantity"
                  } ]
               }
            }
         }, {
            "localId" : "25",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
            "name" : "q_diff_units",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "25",
                  "s" : [ {
                     "value" : [ "define ","q_diff_units",": " ]
                  }, {
                     "r" : "24",
                     "s" : [ {
                        "value" : [ "PopulationVariance","(" ]
                     }, {
                        "r" : "23",
                        "s" : [ {
                           "value" : [ "{" ]
                        }, {
                           "r" : "18",
                           "s" : [ {
                              "value" : [ "1.0 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "19",
                           "s" : [ {
                              "value" : [ "0.002 ","'l'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "20",
                           "s" : [ {
                              "value" : [ "0.003 ","'l'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "21",
                           "s" : [ {
                              "value" : [ "0.04 ","'dl'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "22",
                           "s" : [ {
                              "value" : [ "5.0 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "}" ]
                        } ]
                     }, {
                        "value" : [ ")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "24",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
               "type" : "PopulationVariance",
               "source" : {
                  "localId" : "23",
                  "type" : "List",
                  "resultTypeSpecifier" : {
                     "type" : "ListTypeSpecifier",
                     "elementType" : {
                        "name" : "{urn:hl7-org:elm-types:r1}Quantity",
                        "type" : "NamedTypeSpecifier"
                     }
                  },
                  "element" : [ {
                     "localId" : "18",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 1.0,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "localId" : "19",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 0.002,
                     "unit" : "l",
                     "type" : "Quantity"
                  }, {
                     "localId" : "20",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 0.003,
                     "unit" : "l",
                     "type" : "Quantity"
                  }, {
                     "localId" : "21",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 0.04,
                     "unit" : "dl",
                     "type" : "Quantity"
                  }, {
                     "localId" : "22",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 5.0,
                     "unit" : "ml",
                     "type" : "Quantity"
                  } ]
               }
            }
         }, {
            "localId" : "33",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
            "name" : "q_throw1",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "33",
                  "s" : [ {
                     "value" : [ "define ","q_throw1",": " ]
                  }, {
                     "r" : "32",
                     "s" : [ {
                        "value" : [ "PopulationVariance","(" ]
                     }, {
                        "r" : "31",
                        "s" : [ {
                           "value" : [ "{" ]
                        }, {
                           "r" : "26",
                           "s" : [ {
                              "value" : [ "1.0 ","'m'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "27",
                           "s" : [ {
                              "value" : [ "2.0 ","'l'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "28",
                           "s" : [ {
                              "value" : [ "3.0 ","'h'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "29",
                           "s" : [ {
                              "value" : [ "4.0 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "30",
                           "s" : [ {
                              "value" : [ "5.0 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "}" ]
                        } ]
                     }, {
                        "value" : [ ")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "32",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
               "type" : "PopulationVariance",
               "source" : {
                  "localId" : "31",
                  "type" : "List",
                  "resultTypeSpecifier" : {
                     "type" : "ListTypeSpecifier",
                     "elementType" : {
                        "name" : "{urn:hl7-org:elm-types:r1}Quantity",
                        "type" : "NamedTypeSpecifier"
                     }
                  },
                  "element" : [ {
                     "localId" : "26",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 1.0,
                     "unit" : "m",
                     "type" : "Quantity"
                  }, {
                     "localId" : "27",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 2.0,
                     "unit" : "l",
                     "type" : "Quantity"
                  }, {
                     "localId" : "28",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 3.0,
                     "unit" : "h",
                     "type" : "Quantity"
                  }, {
                     "localId" : "29",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 4.0,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "localId" : "30",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 5.0,
                     "unit" : "ml",
                     "type" : "Quantity"
                  } ]
               }
            }
         }, {
            "localId" : "41",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
            "name" : "q_throw2",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "41",
                  "s" : [ {
                     "value" : [ "define ","q_throw2",": " ]
                  }, {
                     "r" : "40",
                     "s" : [ {
                        "value" : [ "PopulationVariance","(" ]
                     }, {
                        "r" : "39",
                        "s" : [ {
                           "r" : "34",
                           "value" : [ "{","1.0"," ,","2.0"," ,","3.0"," ," ]
                        }, {
                           "r" : "37",
                           "s" : [ {
                              "value" : [ "4.0 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "38",
                           "s" : [ {
                              "value" : [ "5.0 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "}" ]
                        } ]
                     }, {
                        "value" : [ ")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "40",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
               "type" : "PopulationVariance",
               "source" : {
                  "localId" : "39",
                  "type" : "List",
                  "resultTypeSpecifier" : {
                     "type" : "ListTypeSpecifier",
                     "elementType" : {
                        "name" : "{urn:hl7-org:elm-types:r1}Quantity",
                        "type" : "NamedTypeSpecifier"
                     }
                  },
                  "element" : [ {
                     "type" : "ToQuantity",
                     "operand" : {
                        "localId" : "34",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Decimal",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Decimal",
                        "value" : "1.0",
                        "type" : "Literal"
                     }
                  }, {
                     "type" : "ToQuantity",
                     "operand" : {
                        "localId" : "35",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Decimal",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Decimal",
                        "value" : "2.0",
                        "type" : "Literal"
                     }
                  }, {
                     "type" : "ToQuantity",
                     "operand" : {
                        "localId" : "36",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Decimal",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Decimal",
                        "value" : "3.0",
                        "type" : "Literal"
                     }
                  }, {
                     "localId" : "37",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 4.0,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "localId" : "38",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 5.0,
                     "unit" : "ml",
                     "type" : "Quantity"
                  } ]
               }
            }
         } ]
      }
   }
}

### StdDev
library TestSnippet version '1'
using QUICK
context Patient
define std: StdDev({1,2,3,4,5})
define std_q: StdDev({1 'ml',2 'ml',3 'ml',4 'ml',5 'ml'})
define q_diff_units: StdDev({1 'ml', 0.002 'l',3 'ml',4 'ml', 0.05 'dl'})
define sq_throw1: StdDev({1 'ml',2 'ml',3 'ml',4 'ml',5 'm'})
define q_throw2: StdDev({1 ,2 ,3 ,4 'ml',5 })
###

module.exports['StdDev'] = {
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
            "localIdentifier" : "System",
            "uri" : "urn:hl7-org:elm-types:r1"
         }, {
            "localId" : "1",
            "localIdentifier" : "QUICK",
            "uri" : "http://hl7.org/fhir"
         } ]
      },
      "statements" : {
         "def" : [ {
            "name" : "Patient",
            "context" : "Patient",
            "expression" : {
               "type" : "SingletonFrom",
               "operand" : {
                  "dataType" : "{http://hl7.org/fhir}Patient",
                  "templateId" : "patient-qicore-qicore-patient",
                  "type" : "Retrieve"
               }
            }
         }, {
            "localId" : "9",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Decimal",
            "name" : "std",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "9",
                  "s" : [ {
                     "value" : [ "define ","std",": " ]
                  }, {
                     "r" : "8",
                     "s" : [ {
                        "value" : [ "StdDev","(" ]
                     }, {
                        "r" : "7",
                        "s" : [ {
                           "r" : "2",
                           "value" : [ "{","1",",","2",",","3",",","4",",","5","}" ]
                        } ]
                     }, {
                        "value" : [ ")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "8",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Decimal",
               "type" : "StdDev",
               "source" : {
                  "type" : "Query",
                  "source" : [ {
                     "alias" : "X",
                     "expression" : {
                        "localId" : "7",
                        "type" : "List",
                        "resultTypeSpecifier" : {
                           "type" : "ListTypeSpecifier",
                           "elementType" : {
                              "name" : "{urn:hl7-org:elm-types:r1}Integer",
                              "type" : "NamedTypeSpecifier"
                           }
                        },
                        "element" : [ {
                           "localId" : "2",
                           "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                           "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                           "value" : "1",
                           "type" : "Literal"
                        }, {
                           "localId" : "3",
                           "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                           "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                           "value" : "2",
                           "type" : "Literal"
                        }, {
                           "localId" : "4",
                           "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                           "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                           "value" : "3",
                           "type" : "Literal"
                        }, {
                           "localId" : "5",
                           "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                           "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                           "value" : "4",
                           "type" : "Literal"
                        }, {
                           "localId" : "6",
                           "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                           "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                           "value" : "5",
                           "type" : "Literal"
                        } ]
                     }
                  } ],
                  "return" : {
                     "distinct" : false,
                     "expression" : {
                        "type" : "ToDecimal",
                        "operand" : {
                           "name" : "X",
                           "type" : "AliasRef"
                        }
                     }
                  }
               }
            }
         }, {
            "localId" : "17",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
            "name" : "std_q",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "17",
                  "s" : [ {
                     "value" : [ "define ","std_q",": " ]
                  }, {
                     "r" : "16",
                     "s" : [ {
                        "value" : [ "StdDev","(" ]
                     }, {
                        "r" : "15",
                        "s" : [ {
                           "value" : [ "{" ]
                        }, {
                           "r" : "10",
                           "s" : [ {
                              "value" : [ "1 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "11",
                           "s" : [ {
                              "value" : [ "2 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "12",
                           "s" : [ {
                              "value" : [ "3 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "13",
                           "s" : [ {
                              "value" : [ "4 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "14",
                           "s" : [ {
                              "value" : [ "5 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "}" ]
                        } ]
                     }, {
                        "value" : [ ")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "16",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
               "type" : "StdDev",
               "source" : {
                  "localId" : "15",
                  "type" : "List",
                  "resultTypeSpecifier" : {
                     "type" : "ListTypeSpecifier",
                     "elementType" : {
                        "name" : "{urn:hl7-org:elm-types:r1}Quantity",
                        "type" : "NamedTypeSpecifier"
                     }
                  },
                  "element" : [ {
                     "localId" : "10",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 1,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "localId" : "11",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 2,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "localId" : "12",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 3,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "localId" : "13",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 4,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "localId" : "14",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 5,
                     "unit" : "ml",
                     "type" : "Quantity"
                  } ]
               }
            }
         }, {
            "localId" : "25",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
            "name" : "q_diff_units",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "25",
                  "s" : [ {
                     "value" : [ "define ","q_diff_units",": " ]
                  }, {
                     "r" : "24",
                     "s" : [ {
                        "value" : [ "StdDev","(" ]
                     }, {
                        "r" : "23",
                        "s" : [ {
                           "value" : [ "{" ]
                        }, {
                           "r" : "18",
                           "s" : [ {
                              "value" : [ "1 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ ", " ]
                        }, {
                           "r" : "19",
                           "s" : [ {
                              "value" : [ "0.002 ","'l'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "20",
                           "s" : [ {
                              "value" : [ "3 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "21",
                           "s" : [ {
                              "value" : [ "4 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ ", " ]
                        }, {
                           "r" : "22",
                           "s" : [ {
                              "value" : [ "0.05 ","'dl'" ]
                           } ]
                        }, {
                           "value" : [ "}" ]
                        } ]
                     }, {
                        "value" : [ ")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "24",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
               "type" : "StdDev",
               "source" : {
                  "localId" : "23",
                  "type" : "List",
                  "resultTypeSpecifier" : {
                     "type" : "ListTypeSpecifier",
                     "elementType" : {
                        "name" : "{urn:hl7-org:elm-types:r1}Quantity",
                        "type" : "NamedTypeSpecifier"
                     }
                  },
                  "element" : [ {
                     "localId" : "18",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 1,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "localId" : "19",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 0.002,
                     "unit" : "l",
                     "type" : "Quantity"
                  }, {
                     "localId" : "20",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 3,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "localId" : "21",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 4,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "localId" : "22",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 0.05,
                     "unit" : "dl",
                     "type" : "Quantity"
                  } ]
               }
            }
         }, {
            "localId" : "33",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
            "name" : "sq_throw1",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "33",
                  "s" : [ {
                     "value" : [ "define ","sq_throw1",": " ]
                  }, {
                     "r" : "32",
                     "s" : [ {
                        "value" : [ "StdDev","(" ]
                     }, {
                        "r" : "31",
                        "s" : [ {
                           "value" : [ "{" ]
                        }, {
                           "r" : "26",
                           "s" : [ {
                              "value" : [ "1 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "27",
                           "s" : [ {
                              "value" : [ "2 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "28",
                           "s" : [ {
                              "value" : [ "3 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "29",
                           "s" : [ {
                              "value" : [ "4 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "30",
                           "s" : [ {
                              "value" : [ "5 ","'m'" ]
                           } ]
                        }, {
                           "value" : [ "}" ]
                        } ]
                     }, {
                        "value" : [ ")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "32",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
               "type" : "StdDev",
               "source" : {
                  "localId" : "31",
                  "type" : "List",
                  "resultTypeSpecifier" : {
                     "type" : "ListTypeSpecifier",
                     "elementType" : {
                        "name" : "{urn:hl7-org:elm-types:r1}Quantity",
                        "type" : "NamedTypeSpecifier"
                     }
                  },
                  "element" : [ {
                     "localId" : "26",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 1,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "localId" : "27",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 2,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "localId" : "28",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 3,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "localId" : "29",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 4,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "localId" : "30",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 5,
                     "unit" : "m",
                     "type" : "Quantity"
                  } ]
               }
            }
         }, {
            "localId" : "41",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
            "name" : "q_throw2",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "41",
                  "s" : [ {
                     "value" : [ "define ","q_throw2",": " ]
                  }, {
                     "r" : "40",
                     "s" : [ {
                        "value" : [ "StdDev","(" ]
                     }, {
                        "r" : "39",
                        "s" : [ {
                           "r" : "34",
                           "value" : [ "{","1"," ,","2"," ,","3"," ," ]
                        }, {
                           "r" : "37",
                           "s" : [ {
                              "value" : [ "4 ","'ml'" ]
                           } ]
                        }, {
                           "r" : "38",
                           "value" : [ ",","5"," }" ]
                        } ]
                     }, {
                        "value" : [ ")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "40",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
               "type" : "StdDev",
               "source" : {
                  "localId" : "39",
                  "type" : "List",
                  "resultTypeSpecifier" : {
                     "type" : "ListTypeSpecifier",
                     "elementType" : {
                        "name" : "{urn:hl7-org:elm-types:r1}Quantity",
                        "type" : "NamedTypeSpecifier"
                     }
                  },
                  "element" : [ {
                     "type" : "ToQuantity",
                     "operand" : {
                        "localId" : "34",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "1",
                        "type" : "Literal"
                     }
                  }, {
                     "type" : "ToQuantity",
                     "operand" : {
                        "localId" : "35",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "2",
                        "type" : "Literal"
                     }
                  }, {
                     "type" : "ToQuantity",
                     "operand" : {
                        "localId" : "36",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "3",
                        "type" : "Literal"
                     }
                  }, {
                     "localId" : "37",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 4,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "type" : "ToQuantity",
                     "operand" : {
                        "localId" : "38",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "5",
                        "type" : "Literal"
                     }
                  } ]
               }
            }
         } ]
      }
   }
}

### PopulationStdDev
library TestSnippet version '1'
using QUICK
context Patient
define dev: PopulationStdDev({1,2,3,4,5})
define dev_q: PopulationStdDev({1 'ml',2 'ml',3 'ml',4 'ml',5 'ml'})
define q_diff_units: PopulationStdDev({1 'ml', 0.002 'l',3 'ml',4 'ml', 0.05 'dl'})
define q_throw1: PopulationStdDev({1 'ml',2 'ml',3 'ml',4 'ml',5 'm'})
define q_throw2: PopulationStdDev({1 ,2 ,3 ,4 'ml',5 })
###

module.exports['PopulationStdDev'] = {
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
            "localIdentifier" : "System",
            "uri" : "urn:hl7-org:elm-types:r1"
         }, {
            "localId" : "1",
            "localIdentifier" : "QUICK",
            "uri" : "http://hl7.org/fhir"
         } ]
      },
      "statements" : {
         "def" : [ {
            "name" : "Patient",
            "context" : "Patient",
            "expression" : {
               "type" : "SingletonFrom",
               "operand" : {
                  "dataType" : "{http://hl7.org/fhir}Patient",
                  "templateId" : "patient-qicore-qicore-patient",
                  "type" : "Retrieve"
               }
            }
         }, {
            "localId" : "9",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Decimal",
            "name" : "dev",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "9",
                  "s" : [ {
                     "value" : [ "define ","dev",": " ]
                  }, {
                     "r" : "8",
                     "s" : [ {
                        "value" : [ "PopulationStdDev","(" ]
                     }, {
                        "r" : "7",
                        "s" : [ {
                           "r" : "2",
                           "value" : [ "{","1",",","2",",","3",",","4",",","5","}" ]
                        } ]
                     }, {
                        "value" : [ ")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "8",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Decimal",
               "type" : "PopulationStdDev",
               "source" : {
                  "type" : "Query",
                  "source" : [ {
                     "alias" : "X",
                     "expression" : {
                        "localId" : "7",
                        "type" : "List",
                        "resultTypeSpecifier" : {
                           "type" : "ListTypeSpecifier",
                           "elementType" : {
                              "name" : "{urn:hl7-org:elm-types:r1}Integer",
                              "type" : "NamedTypeSpecifier"
                           }
                        },
                        "element" : [ {
                           "localId" : "2",
                           "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                           "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                           "value" : "1",
                           "type" : "Literal"
                        }, {
                           "localId" : "3",
                           "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                           "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                           "value" : "2",
                           "type" : "Literal"
                        }, {
                           "localId" : "4",
                           "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                           "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                           "value" : "3",
                           "type" : "Literal"
                        }, {
                           "localId" : "5",
                           "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                           "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                           "value" : "4",
                           "type" : "Literal"
                        }, {
                           "localId" : "6",
                           "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                           "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                           "value" : "5",
                           "type" : "Literal"
                        } ]
                     }
                  } ],
                  "return" : {
                     "distinct" : false,
                     "expression" : {
                        "type" : "ToDecimal",
                        "operand" : {
                           "name" : "X",
                           "type" : "AliasRef"
                        }
                     }
                  }
               }
            }
         }, {
            "localId" : "17",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
            "name" : "dev_q",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "17",
                  "s" : [ {
                     "value" : [ "define ","dev_q",": " ]
                  }, {
                     "r" : "16",
                     "s" : [ {
                        "value" : [ "PopulationStdDev","(" ]
                     }, {
                        "r" : "15",
                        "s" : [ {
                           "value" : [ "{" ]
                        }, {
                           "r" : "10",
                           "s" : [ {
                              "value" : [ "1 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "11",
                           "s" : [ {
                              "value" : [ "2 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "12",
                           "s" : [ {
                              "value" : [ "3 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "13",
                           "s" : [ {
                              "value" : [ "4 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "14",
                           "s" : [ {
                              "value" : [ "5 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "}" ]
                        } ]
                     }, {
                        "value" : [ ")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "16",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
               "type" : "PopulationStdDev",
               "source" : {
                  "localId" : "15",
                  "type" : "List",
                  "resultTypeSpecifier" : {
                     "type" : "ListTypeSpecifier",
                     "elementType" : {
                        "name" : "{urn:hl7-org:elm-types:r1}Quantity",
                        "type" : "NamedTypeSpecifier"
                     }
                  },
                  "element" : [ {
                     "localId" : "10",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 1,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "localId" : "11",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 2,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "localId" : "12",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 3,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "localId" : "13",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 4,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "localId" : "14",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 5,
                     "unit" : "ml",
                     "type" : "Quantity"
                  } ]
               }
            }
         }, {
            "localId" : "25",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
            "name" : "q_diff_units",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "25",
                  "s" : [ {
                     "value" : [ "define ","q_diff_units",": " ]
                  }, {
                     "r" : "24",
                     "s" : [ {
                        "value" : [ "PopulationStdDev","(" ]
                     }, {
                        "r" : "23",
                        "s" : [ {
                           "value" : [ "{" ]
                        }, {
                           "r" : "18",
                           "s" : [ {
                              "value" : [ "1 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ ", " ]
                        }, {
                           "r" : "19",
                           "s" : [ {
                              "value" : [ "0.002 ","'l'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "20",
                           "s" : [ {
                              "value" : [ "3 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "21",
                           "s" : [ {
                              "value" : [ "4 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ ", " ]
                        }, {
                           "r" : "22",
                           "s" : [ {
                              "value" : [ "0.05 ","'dl'" ]
                           } ]
                        }, {
                           "value" : [ "}" ]
                        } ]
                     }, {
                        "value" : [ ")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "24",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
               "type" : "PopulationStdDev",
               "source" : {
                  "localId" : "23",
                  "type" : "List",
                  "resultTypeSpecifier" : {
                     "type" : "ListTypeSpecifier",
                     "elementType" : {
                        "name" : "{urn:hl7-org:elm-types:r1}Quantity",
                        "type" : "NamedTypeSpecifier"
                     }
                  },
                  "element" : [ {
                     "localId" : "18",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 1,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "localId" : "19",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 0.002,
                     "unit" : "l",
                     "type" : "Quantity"
                  }, {
                     "localId" : "20",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 3,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "localId" : "21",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 4,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "localId" : "22",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 0.05,
                     "unit" : "dl",
                     "type" : "Quantity"
                  } ]
               }
            }
         }, {
            "localId" : "33",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
            "name" : "q_throw1",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "33",
                  "s" : [ {
                     "value" : [ "define ","q_throw1",": " ]
                  }, {
                     "r" : "32",
                     "s" : [ {
                        "value" : [ "PopulationStdDev","(" ]
                     }, {
                        "r" : "31",
                        "s" : [ {
                           "value" : [ "{" ]
                        }, {
                           "r" : "26",
                           "s" : [ {
                              "value" : [ "1 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "27",
                           "s" : [ {
                              "value" : [ "2 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "28",
                           "s" : [ {
                              "value" : [ "3 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "29",
                           "s" : [ {
                              "value" : [ "4 ","'ml'" ]
                           } ]
                        }, {
                           "value" : [ "," ]
                        }, {
                           "r" : "30",
                           "s" : [ {
                              "value" : [ "5 ","'m'" ]
                           } ]
                        }, {
                           "value" : [ "}" ]
                        } ]
                     }, {
                        "value" : [ ")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "32",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
               "type" : "PopulationStdDev",
               "source" : {
                  "localId" : "31",
                  "type" : "List",
                  "resultTypeSpecifier" : {
                     "type" : "ListTypeSpecifier",
                     "elementType" : {
                        "name" : "{urn:hl7-org:elm-types:r1}Quantity",
                        "type" : "NamedTypeSpecifier"
                     }
                  },
                  "element" : [ {
                     "localId" : "26",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 1,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "localId" : "27",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 2,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "localId" : "28",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 3,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "localId" : "29",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 4,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "localId" : "30",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 5,
                     "unit" : "m",
                     "type" : "Quantity"
                  } ]
               }
            }
         }, {
            "localId" : "41",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
            "name" : "q_throw2",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "41",
                  "s" : [ {
                     "value" : [ "define ","q_throw2",": " ]
                  }, {
                     "r" : "40",
                     "s" : [ {
                        "value" : [ "PopulationStdDev","(" ]
                     }, {
                        "r" : "39",
                        "s" : [ {
                           "r" : "34",
                           "value" : [ "{","1"," ,","2"," ,","3"," ," ]
                        }, {
                           "r" : "37",
                           "s" : [ {
                              "value" : [ "4 ","'ml'" ]
                           } ]
                        }, {
                           "r" : "38",
                           "value" : [ ",","5"," }" ]
                        } ]
                     }, {
                        "value" : [ ")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "40",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
               "type" : "PopulationStdDev",
               "source" : {
                  "localId" : "39",
                  "type" : "List",
                  "resultTypeSpecifier" : {
                     "type" : "ListTypeSpecifier",
                     "elementType" : {
                        "name" : "{urn:hl7-org:elm-types:r1}Quantity",
                        "type" : "NamedTypeSpecifier"
                     }
                  },
                  "element" : [ {
                     "type" : "ToQuantity",
                     "operand" : {
                        "localId" : "34",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "1",
                        "type" : "Literal"
                     }
                  }, {
                     "type" : "ToQuantity",
                     "operand" : {
                        "localId" : "35",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "2",
                        "type" : "Literal"
                     }
                  }, {
                     "type" : "ToQuantity",
                     "operand" : {
                        "localId" : "36",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "3",
                        "type" : "Literal"
                     }
                  }, {
                     "localId" : "37",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 4,
                     "unit" : "ml",
                     "type" : "Quantity"
                  }, {
                     "type" : "ToQuantity",
                     "operand" : {
                        "localId" : "38",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "5",
                        "type" : "Literal"
                     }
                  } ]
               }
            }
         } ]
      }
   }
}

### Product
library TestSnippet version '1'
using QUICK
context Patient
define decimal_product: Product({1.0, 2.0, 3.0, 4.0})
define integer_product: Product({5, 4, 5})
define zero_product: Product({0, 5, 10})
define quantity_product: Product({1.0 'g', 2.0 'g', 3.0 'g', 4.0 'g'})
define quantity_zero_product: Product({1.0 'g', 2.0 'g', 0 'g'})
define product_with_null: Product({5, 4, null})
define product_of_nulls: Product({null as Integer, null, null})
define product_null: Product(null as List<Decimal>)
define product_quantity_null: Product({null as Quantity, null as Quantity, null as Quantity})
###

module.exports['Product'] = {
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
            "localIdentifier" : "System",
            "uri" : "urn:hl7-org:elm-types:r1"
         }, {
            "localId" : "1",
            "localIdentifier" : "QUICK",
            "uri" : "http://hl7.org/fhir"
         } ]
      },
      "statements" : {
         "def" : [ {
            "name" : "Patient",
            "context" : "Patient",
            "expression" : {
               "type" : "SingletonFrom",
               "operand" : {
                  "dataType" : "{http://hl7.org/fhir}Patient",
                  "templateId" : "patient-qicore-qicore-patient",
                  "type" : "Retrieve"
               }
            }
         }, {
            "localId" : "8",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Decimal",
            "name" : "decimal_product",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "8",
                  "s" : [ {
                     "value" : [ "define ","decimal_product",": " ]
                  }, {
                     "r" : "7",
                     "s" : [ {
                        "value" : [ "Product","(" ]
                     }, {
                        "r" : "6",
                        "s" : [ {
                           "r" : "2",
                           "value" : [ "{","1.0",", ","2.0",", ","3.0",", ","4.0","}" ]
                        } ]
                     }, {
                        "value" : [ ")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "7",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Decimal",
               "type" : "Product",
               "source" : {
                  "localId" : "6",
                  "type" : "List",
                  "resultTypeSpecifier" : {
                     "type" : "ListTypeSpecifier",
                     "elementType" : {
                        "name" : "{urn:hl7-org:elm-types:r1}Decimal",
                        "type" : "NamedTypeSpecifier"
                     }
                  },
                  "element" : [ {
                     "localId" : "2",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Decimal",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Decimal",
                     "value" : "1.0",
                     "type" : "Literal"
                  }, {
                     "localId" : "3",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Decimal",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Decimal",
                     "value" : "2.0",
                     "type" : "Literal"
                  }, {
                     "localId" : "4",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Decimal",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Decimal",
                     "value" : "3.0",
                     "type" : "Literal"
                  }, {
                     "localId" : "5",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Decimal",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Decimal",
                     "value" : "4.0",
                     "type" : "Literal"
                  } ]
               }
            }
         }, {
            "localId" : "14",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
            "name" : "integer_product",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "14",
                  "s" : [ {
                     "value" : [ "define ","integer_product",": " ]
                  }, {
                     "r" : "13",
                     "s" : [ {
                        "value" : [ "Product","(" ]
                     }, {
                        "r" : "12",
                        "s" : [ {
                           "r" : "9",
                           "value" : [ "{","5",", ","4",", ","5","}" ]
                        } ]
                     }, {
                        "value" : [ ")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "13",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
               "type" : "Product",
               "source" : {
                  "localId" : "12",
                  "type" : "List",
                  "resultTypeSpecifier" : {
                     "type" : "ListTypeSpecifier",
                     "elementType" : {
                        "name" : "{urn:hl7-org:elm-types:r1}Integer",
                        "type" : "NamedTypeSpecifier"
                     }
                  },
                  "element" : [ {
                     "localId" : "9",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "5",
                     "type" : "Literal"
                  }, {
                     "localId" : "10",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "4",
                     "type" : "Literal"
                  }, {
                     "localId" : "11",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "5",
                     "type" : "Literal"
                  } ]
               }
            }
         }, {
            "localId" : "20",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
            "name" : "zero_product",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "20",
                  "s" : [ {
                     "value" : [ "define ","zero_product",": " ]
                  }, {
                     "r" : "19",
                     "s" : [ {
                        "value" : [ "Product","(" ]
                     }, {
                        "r" : "18",
                        "s" : [ {
                           "r" : "15",
                           "value" : [ "{","0",", ","5",", ","10","}" ]
                        } ]
                     }, {
                        "value" : [ ")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "19",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
               "type" : "Product",
               "source" : {
                  "localId" : "18",
                  "type" : "List",
                  "resultTypeSpecifier" : {
                     "type" : "ListTypeSpecifier",
                     "elementType" : {
                        "name" : "{urn:hl7-org:elm-types:r1}Integer",
                        "type" : "NamedTypeSpecifier"
                     }
                  },
                  "element" : [ {
                     "localId" : "15",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "0",
                     "type" : "Literal"
                  }, {
                     "localId" : "16",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "5",
                     "type" : "Literal"
                  }, {
                     "localId" : "17",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "10",
                     "type" : "Literal"
                  } ]
               }
            }
         }, {
            "localId" : "27",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
            "name" : "quantity_product",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "27",
                  "s" : [ {
                     "value" : [ "define ","quantity_product",": " ]
                  }, {
                     "r" : "26",
                     "s" : [ {
                        "value" : [ "Product","(" ]
                     }, {
                        "r" : "25",
                        "s" : [ {
                           "value" : [ "{" ]
                        }, {
                           "r" : "21",
                           "s" : [ {
                              "value" : [ "1.0 ","'g'" ]
                           } ]
                        }, {
                           "value" : [ ", " ]
                        }, {
                           "r" : "22",
                           "s" : [ {
                              "value" : [ "2.0 ","'g'" ]
                           } ]
                        }, {
                           "value" : [ ", " ]
                        }, {
                           "r" : "23",
                           "s" : [ {
                              "value" : [ "3.0 ","'g'" ]
                           } ]
                        }, {
                           "value" : [ ", " ]
                        }, {
                           "r" : "24",
                           "s" : [ {
                              "value" : [ "4.0 ","'g'" ]
                           } ]
                        }, {
                           "value" : [ "}" ]
                        } ]
                     }, {
                        "value" : [ ")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "26",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
               "type" : "Product",
               "source" : {
                  "localId" : "25",
                  "type" : "List",
                  "resultTypeSpecifier" : {
                     "type" : "ListTypeSpecifier",
                     "elementType" : {
                        "name" : "{urn:hl7-org:elm-types:r1}Quantity",
                        "type" : "NamedTypeSpecifier"
                     }
                  },
                  "element" : [ {
                     "localId" : "21",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 1.0,
                     "unit" : "g",
                     "type" : "Quantity"
                  }, {
                     "localId" : "22",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 2.0,
                     "unit" : "g",
                     "type" : "Quantity"
                  }, {
                     "localId" : "23",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 3.0,
                     "unit" : "g",
                     "type" : "Quantity"
                  }, {
                     "localId" : "24",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 4.0,
                     "unit" : "g",
                     "type" : "Quantity"
                  } ]
               }
            }
         }, {
            "localId" : "33",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
            "name" : "quantity_zero_product",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "33",
                  "s" : [ {
                     "value" : [ "define ","quantity_zero_product",": " ]
                  }, {
                     "r" : "32",
                     "s" : [ {
                        "value" : [ "Product","(" ]
                     }, {
                        "r" : "31",
                        "s" : [ {
                           "value" : [ "{" ]
                        }, {
                           "r" : "28",
                           "s" : [ {
                              "value" : [ "1.0 ","'g'" ]
                           } ]
                        }, {
                           "value" : [ ", " ]
                        }, {
                           "r" : "29",
                           "s" : [ {
                              "value" : [ "2.0 ","'g'" ]
                           } ]
                        }, {
                           "value" : [ ", " ]
                        }, {
                           "r" : "30",
                           "s" : [ {
                              "value" : [ "0 ","'g'" ]
                           } ]
                        }, {
                           "value" : [ "}" ]
                        } ]
                     }, {
                        "value" : [ ")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "32",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
               "type" : "Product",
               "source" : {
                  "localId" : "31",
                  "type" : "List",
                  "resultTypeSpecifier" : {
                     "type" : "ListTypeSpecifier",
                     "elementType" : {
                        "name" : "{urn:hl7-org:elm-types:r1}Quantity",
                        "type" : "NamedTypeSpecifier"
                     }
                  },
                  "element" : [ {
                     "localId" : "28",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 1.0,
                     "unit" : "g",
                     "type" : "Quantity"
                  }, {
                     "localId" : "29",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 2.0,
                     "unit" : "g",
                     "type" : "Quantity"
                  }, {
                     "localId" : "30",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 0,
                     "unit" : "g",
                     "type" : "Quantity"
                  } ]
               }
            }
         }, {
            "localId" : "39",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
            "name" : "product_with_null",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "39",
                  "s" : [ {
                     "value" : [ "define ","product_with_null",": " ]
                  }, {
                     "r" : "38",
                     "s" : [ {
                        "value" : [ "Product","(" ]
                     }, {
                        "r" : "37",
                        "s" : [ {
                           "r" : "34",
                           "value" : [ "{","5",", ","4",", ","null","}" ]
                        } ]
                     }, {
                        "value" : [ ")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "38",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
               "type" : "Product",
               "source" : {
                  "localId" : "37",
                  "type" : "List",
                  "resultTypeSpecifier" : {
                     "type" : "ListTypeSpecifier",
                     "elementType" : {
                        "name" : "{urn:hl7-org:elm-types:r1}Integer",
                        "type" : "NamedTypeSpecifier"
                     }
                  },
                  "element" : [ {
                     "localId" : "34",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "5",
                     "type" : "Literal"
                  }, {
                     "localId" : "35",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "4",
                     "type" : "Literal"
                  }, {
                     "asType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "type" : "As",
                     "operand" : {
                        "localId" : "36",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                        "type" : "Null"
                     }
                  } ]
               }
            }
         }, {
            "localId" : "47",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
            "name" : "product_of_nulls",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "47",
                  "s" : [ {
                     "value" : [ "define ","product_of_nulls",": " ]
                  }, {
                     "r" : "46",
                     "s" : [ {
                        "value" : [ "Product","(" ]
                     }, {
                        "r" : "45",
                        "s" : [ {
                           "value" : [ "{" ]
                        }, {
                           "r" : "42",
                           "s" : [ {
                              "r" : "40",
                              "value" : [ "null"," as " ]
                           }, {
                              "r" : "41",
                              "s" : [ {
                                 "value" : [ "Integer" ]
                              } ]
                           } ]
                        }, {
                           "r" : "43",
                           "value" : [ ", ","null",", ","null","}" ]
                        } ]
                     }, {
                        "value" : [ ")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "46",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
               "type" : "Product",
               "source" : {
                  "localId" : "45",
                  "type" : "List",
                  "resultTypeSpecifier" : {
                     "type" : "ListTypeSpecifier",
                     "elementType" : {
                        "name" : "{urn:hl7-org:elm-types:r1}Integer",
                        "type" : "NamedTypeSpecifier"
                     }
                  },
                  "element" : [ {
                     "localId" : "42",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "strict" : false,
                     "type" : "As",
                     "operand" : {
                        "localId" : "40",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                        "type" : "Null"
                     },
                     "asTypeSpecifier" : {
                        "localId" : "41",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "name" : "{urn:hl7-org:elm-types:r1}Integer",
                        "type" : "NamedTypeSpecifier"
                     }
                  }, {
                     "asType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "type" : "As",
                     "operand" : {
                        "localId" : "43",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                        "type" : "Null"
                     }
                  }, {
                     "asType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "type" : "As",
                     "operand" : {
                        "localId" : "44",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                        "type" : "Null"
                     }
                  } ]
               }
            }
         }, {
            "localId" : "53",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Decimal",
            "name" : "product_null",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "53",
                  "s" : [ {
                     "value" : [ "define ","product_null",": " ]
                  }, {
                     "r" : "52",
                     "s" : [ {
                        "value" : [ "Product","(" ]
                     }, {
                        "r" : "51",
                        "s" : [ {
                           "r" : "48",
                           "value" : [ "null"," as " ]
                        }, {
                           "r" : "50",
                           "s" : [ {
                              "value" : [ "List<" ]
                           }, {
                              "r" : "49",
                              "s" : [ {
                                 "value" : [ "Decimal" ]
                              } ]
                           }, {
                              "value" : [ ">" ]
                           } ]
                        } ]
                     }, {
                        "value" : [ ")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "52",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Decimal",
               "type" : "Product",
               "source" : {
                  "localId" : "51",
                  "strict" : false,
                  "type" : "As",
                  "resultTypeSpecifier" : {
                     "type" : "ListTypeSpecifier",
                     "elementType" : {
                        "name" : "{urn:hl7-org:elm-types:r1}Decimal",
                        "type" : "NamedTypeSpecifier"
                     }
                  },
                  "operand" : {
                     "localId" : "48",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                     "type" : "Null"
                  },
                  "asTypeSpecifier" : {
                     "localId" : "50",
                     "type" : "ListTypeSpecifier",
                     "resultTypeSpecifier" : {
                        "type" : "ListTypeSpecifier",
                        "elementType" : {
                           "name" : "{urn:hl7-org:elm-types:r1}Decimal",
                           "type" : "NamedTypeSpecifier"
                        }
                     },
                     "elementType" : {
                        "localId" : "49",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Decimal",
                        "name" : "{urn:hl7-org:elm-types:r1}Decimal",
                        "type" : "NamedTypeSpecifier"
                     }
                  }
               }
            }
         }, {
            "localId" : "65",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
            "name" : "product_quantity_null",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "65",
                  "s" : [ {
                     "value" : [ "define ","product_quantity_null",": " ]
                  }, {
                     "r" : "64",
                     "s" : [ {
                        "value" : [ "Product","(" ]
                     }, {
                        "r" : "63",
                        "s" : [ {
                           "value" : [ "{" ]
                        }, {
                           "r" : "56",
                           "s" : [ {
                              "r" : "54",
                              "value" : [ "null"," as " ]
                           }, {
                              "r" : "55",
                              "s" : [ {
                                 "value" : [ "Quantity" ]
                              } ]
                           } ]
                        }, {
                           "value" : [ ", " ]
                        }, {
                           "r" : "59",
                           "s" : [ {
                              "r" : "57",
                              "value" : [ "null"," as " ]
                           }, {
                              "r" : "58",
                              "s" : [ {
                                 "value" : [ "Quantity" ]
                              } ]
                           } ]
                        }, {
                           "value" : [ ", " ]
                        }, {
                           "r" : "62",
                           "s" : [ {
                              "r" : "60",
                              "value" : [ "null"," as " ]
                           }, {
                              "r" : "61",
                              "s" : [ {
                                 "value" : [ "Quantity" ]
                              } ]
                           } ]
                        }, {
                           "value" : [ "}" ]
                        } ]
                     }, {
                        "value" : [ ")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "64",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
               "type" : "Product",
               "source" : {
                  "localId" : "63",
                  "type" : "List",
                  "resultTypeSpecifier" : {
                     "type" : "ListTypeSpecifier",
                     "elementType" : {
                        "name" : "{urn:hl7-org:elm-types:r1}Quantity",
                        "type" : "NamedTypeSpecifier"
                     }
                  },
                  "element" : [ {
                     "localId" : "56",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "strict" : false,
                     "type" : "As",
                     "operand" : {
                        "localId" : "54",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                        "type" : "Null"
                     },
                     "asTypeSpecifier" : {
                        "localId" : "55",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                        "name" : "{urn:hl7-org:elm-types:r1}Quantity",
                        "type" : "NamedTypeSpecifier"
                     }
                  }, {
                     "localId" : "59",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "strict" : false,
                     "type" : "As",
                     "operand" : {
                        "localId" : "57",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                        "type" : "Null"
                     },
                     "asTypeSpecifier" : {
                        "localId" : "58",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                        "name" : "{urn:hl7-org:elm-types:r1}Quantity",
                        "type" : "NamedTypeSpecifier"
                     }
                  }, {
                     "localId" : "62",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "strict" : false,
                     "type" : "As",
                     "operand" : {
                        "localId" : "60",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                        "type" : "Null"
                     },
                     "asTypeSpecifier" : {
                        "localId" : "61",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                        "name" : "{urn:hl7-org:elm-types:r1}Quantity",
                        "type" : "NamedTypeSpecifier"
                     }
                  } ]
               }
            }
         } ]
      }
   }
}

### GeometricMean
library TestSnippet version '1'
using QUICK
context Patient
define decimal_geometric_mean: GeometricMean({2.0, 8.0, null})
define zero_geometric_mean: GeometricMean({2.0, 8.0, 0})
define null_geometric_mean: GeometricMean({1, 2, null})
define all_nulls: GeometricMean({null, null, null})
define also_null_geometric_mean: GeometricMean(null as List<Decimal>)
###

module.exports['GeometricMean'] = {
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
            "localIdentifier" : "System",
            "uri" : "urn:hl7-org:elm-types:r1"
         }, {
            "localId" : "1",
            "localIdentifier" : "QUICK",
            "uri" : "http://hl7.org/fhir"
         } ]
      },
      "statements" : {
         "def" : [ {
            "name" : "Patient",
            "context" : "Patient",
            "expression" : {
               "type" : "SingletonFrom",
               "operand" : {
                  "dataType" : "{http://hl7.org/fhir}Patient",
                  "templateId" : "patient-qicore-qicore-patient",
                  "type" : "Retrieve"
               }
            }
         }, {
            "localId" : "7",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Decimal",
            "name" : "decimal_geometric_mean",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "7",
                  "s" : [ {
                     "value" : [ "define ","decimal_geometric_mean",": " ]
                  }, {
                     "r" : "6",
                     "s" : [ {
                        "value" : [ "GeometricMean","(" ]
                     }, {
                        "r" : "5",
                        "s" : [ {
                           "r" : "2",
                           "value" : [ "{","2.0",", ","8.0",", ","null","}" ]
                        } ]
                     }, {
                        "value" : [ ")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "6",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Decimal",
               "type" : "GeometricMean",
               "source" : {
                  "localId" : "5",
                  "type" : "List",
                  "resultTypeSpecifier" : {
                     "type" : "ListTypeSpecifier",
                     "elementType" : {
                        "name" : "{urn:hl7-org:elm-types:r1}Decimal",
                        "type" : "NamedTypeSpecifier"
                     }
                  },
                  "element" : [ {
                     "localId" : "2",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Decimal",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Decimal",
                     "value" : "2.0",
                     "type" : "Literal"
                  }, {
                     "localId" : "3",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Decimal",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Decimal",
                     "value" : "8.0",
                     "type" : "Literal"
                  }, {
                     "asType" : "{urn:hl7-org:elm-types:r1}Decimal",
                     "type" : "As",
                     "operand" : {
                        "localId" : "4",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                        "type" : "Null"
                     }
                  } ]
               }
            }
         }, {
            "localId" : "13",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Decimal",
            "name" : "zero_geometric_mean",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "13",
                  "s" : [ {
                     "value" : [ "define ","zero_geometric_mean",": " ]
                  }, {
                     "r" : "12",
                     "s" : [ {
                        "value" : [ "GeometricMean","(" ]
                     }, {
                        "r" : "11",
                        "s" : [ {
                           "r" : "8",
                           "value" : [ "{","2.0",", ","8.0",", ","0","}" ]
                        } ]
                     }, {
                        "value" : [ ")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "12",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Decimal",
               "type" : "GeometricMean",
               "source" : {
                  "localId" : "11",
                  "type" : "List",
                  "resultTypeSpecifier" : {
                     "type" : "ListTypeSpecifier",
                     "elementType" : {
                        "name" : "{urn:hl7-org:elm-types:r1}Decimal",
                        "type" : "NamedTypeSpecifier"
                     }
                  },
                  "element" : [ {
                     "localId" : "8",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Decimal",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Decimal",
                     "value" : "2.0",
                     "type" : "Literal"
                  }, {
                     "localId" : "9",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Decimal",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Decimal",
                     "value" : "8.0",
                     "type" : "Literal"
                  }, {
                     "type" : "ToDecimal",
                     "operand" : {
                        "localId" : "10",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "0",
                        "type" : "Literal"
                     }
                  } ]
               }
            }
         }, {
            "localId" : "19",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Decimal",
            "name" : "null_geometric_mean",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "19",
                  "s" : [ {
                     "value" : [ "define ","null_geometric_mean",": " ]
                  }, {
                     "r" : "18",
                     "s" : [ {
                        "value" : [ "GeometricMean","(" ]
                     }, {
                        "r" : "17",
                        "s" : [ {
                           "r" : "14",
                           "value" : [ "{","1",", ","2",", ","null","}" ]
                        } ]
                     }, {
                        "value" : [ ")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "18",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Decimal",
               "type" : "GeometricMean",
               "source" : {
                  "type" : "Query",
                  "source" : [ {
                     "alias" : "X",
                     "expression" : {
                        "localId" : "17",
                        "type" : "List",
                        "resultTypeSpecifier" : {
                           "type" : "ListTypeSpecifier",
                           "elementType" : {
                              "name" : "{urn:hl7-org:elm-types:r1}Integer",
                              "type" : "NamedTypeSpecifier"
                           }
                        },
                        "element" : [ {
                           "localId" : "14",
                           "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                           "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                           "value" : "1",
                           "type" : "Literal"
                        }, {
                           "localId" : "15",
                           "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                           "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                           "value" : "2",
                           "type" : "Literal"
                        }, {
                           "asType" : "{urn:hl7-org:elm-types:r1}Integer",
                           "type" : "As",
                           "operand" : {
                              "localId" : "16",
                              "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                              "type" : "Null"
                           }
                        } ]
                     }
                  } ],
                  "return" : {
                     "distinct" : false,
                     "expression" : {
                        "type" : "ToDecimal",
                        "operand" : {
                           "name" : "X",
                           "type" : "AliasRef"
                        }
                     }
                  }
               }
            }
         }, {
            "localId" : "25",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Decimal",
            "name" : "all_nulls",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "25",
                  "s" : [ {
                     "value" : [ "define ","all_nulls",": " ]
                  }, {
                     "r" : "24",
                     "s" : [ {
                        "value" : [ "GeometricMean","(" ]
                     }, {
                        "r" : "23",
                        "s" : [ {
                           "r" : "20",
                           "value" : [ "{","null",", ","null",", ","null","}" ]
                        } ]
                     }, {
                        "value" : [ ")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "24",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Decimal",
               "type" : "GeometricMean",
               "source" : {
                  "type" : "Query",
                  "source" : [ {
                     "alias" : "X",
                     "expression" : {
                        "localId" : "23",
                        "type" : "List",
                        "resultTypeSpecifier" : {
                           "type" : "ListTypeSpecifier",
                           "elementType" : {
                              "name" : "{urn:hl7-org:elm-types:r1}Any",
                              "type" : "NamedTypeSpecifier"
                           }
                        },
                        "element" : [ {
                           "localId" : "20",
                           "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                           "type" : "Null"
                        }, {
                           "localId" : "21",
                           "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                           "type" : "Null"
                        }, {
                           "localId" : "22",
                           "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                           "type" : "Null"
                        } ]
                     }
                  } ],
                  "return" : {
                     "distinct" : false,
                     "expression" : {
                        "asType" : "{urn:hl7-org:elm-types:r1}Decimal",
                        "type" : "As",
                        "operand" : {
                           "name" : "X",
                           "type" : "AliasRef"
                        }
                     }
                  }
               }
            }
         }, {
            "localId" : "31",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Decimal",
            "name" : "also_null_geometric_mean",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "31",
                  "s" : [ {
                     "value" : [ "define ","also_null_geometric_mean",": " ]
                  }, {
                     "r" : "30",
                     "s" : [ {
                        "value" : [ "GeometricMean","(" ]
                     }, {
                        "r" : "29",
                        "s" : [ {
                           "r" : "26",
                           "value" : [ "null"," as " ]
                        }, {
                           "r" : "28",
                           "s" : [ {
                              "value" : [ "List<" ]
                           }, {
                              "r" : "27",
                              "s" : [ {
                                 "value" : [ "Decimal" ]
                              } ]
                           }, {
                              "value" : [ ">" ]
                           } ]
                        } ]
                     }, {
                        "value" : [ ")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "30",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Decimal",
               "type" : "GeometricMean",
               "source" : {
                  "localId" : "29",
                  "strict" : false,
                  "type" : "As",
                  "resultTypeSpecifier" : {
                     "type" : "ListTypeSpecifier",
                     "elementType" : {
                        "name" : "{urn:hl7-org:elm-types:r1}Decimal",
                        "type" : "NamedTypeSpecifier"
                     }
                  },
                  "operand" : {
                     "localId" : "26",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                     "type" : "Null"
                  },
                  "asTypeSpecifier" : {
                     "localId" : "28",
                     "type" : "ListTypeSpecifier",
                     "resultTypeSpecifier" : {
                        "type" : "ListTypeSpecifier",
                        "elementType" : {
                           "name" : "{urn:hl7-org:elm-types:r1}Decimal",
                           "type" : "NamedTypeSpecifier"
                        }
                     },
                     "elementType" : {
                        "localId" : "27",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Decimal",
                        "name" : "{urn:hl7-org:elm-types:r1}Decimal",
                        "type" : "NamedTypeSpecifier"
                     }
                  }
               }
            }
         } ]
      }
   }
}

### AllTrue
library TestSnippet version '1'
using QUICK
context Patient
define at: AllTrue({true,true,true,true})
define atwn: AllTrue({true,true,null,null,true,true})

define atf: AllTrue({true,true,true,false})
define atfwn: AllTrue({true,true,null,null,true,false})
###

module.exports['AllTrue'] = {
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
            "localIdentifier" : "System",
            "uri" : "urn:hl7-org:elm-types:r1"
         }, {
            "localId" : "1",
            "localIdentifier" : "QUICK",
            "uri" : "http://hl7.org/fhir"
         } ]
      },
      "statements" : {
         "def" : [ {
            "name" : "Patient",
            "context" : "Patient",
            "expression" : {
               "type" : "SingletonFrom",
               "operand" : {
                  "dataType" : "{http://hl7.org/fhir}Patient",
                  "templateId" : "patient-qicore-qicore-patient",
                  "type" : "Retrieve"
               }
            }
         }, {
            "localId" : "8",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "at",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "8",
                  "s" : [ {
                     "value" : [ "define ","at",": " ]
                  }, {
                     "r" : "7",
                     "s" : [ {
                        "value" : [ "AllTrue","(" ]
                     }, {
                        "r" : "6",
                        "s" : [ {
                           "r" : "2",
                           "value" : [ "{","true",",","true",",","true",",","true","}" ]
                        } ]
                     }, {
                        "value" : [ ")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "7",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "AllTrue",
               "source" : {
                  "localId" : "6",
                  "type" : "List",
                  "resultTypeSpecifier" : {
                     "type" : "ListTypeSpecifier",
                     "elementType" : {
                        "name" : "{urn:hl7-org:elm-types:r1}Boolean",
                        "type" : "NamedTypeSpecifier"
                     }
                  },
                  "element" : [ {
                     "localId" : "2",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Boolean",
                     "value" : "true",
                     "type" : "Literal"
                  }, {
                     "localId" : "3",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Boolean",
                     "value" : "true",
                     "type" : "Literal"
                  }, {
                     "localId" : "4",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Boolean",
                     "value" : "true",
                     "type" : "Literal"
                  }, {
                     "localId" : "5",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Boolean",
                     "value" : "true",
                     "type" : "Literal"
                  } ]
               }
            }
         }, {
            "localId" : "17",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "atwn",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "17",
                  "s" : [ {
                     "value" : [ "define ","atwn",": " ]
                  }, {
                     "r" : "16",
                     "s" : [ {
                        "value" : [ "AllTrue","(" ]
                     }, {
                        "r" : "15",
                        "s" : [ {
                           "r" : "9",
                           "value" : [ "{","true",",","true",",","null",",","null",",","true",",","true","}" ]
                        } ]
                     }, {
                        "value" : [ ")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "16",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "AllTrue",
               "source" : {
                  "localId" : "15",
                  "type" : "List",
                  "resultTypeSpecifier" : {
                     "type" : "ListTypeSpecifier",
                     "elementType" : {
                        "name" : "{urn:hl7-org:elm-types:r1}Boolean",
                        "type" : "NamedTypeSpecifier"
                     }
                  },
                  "element" : [ {
                     "localId" : "9",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Boolean",
                     "value" : "true",
                     "type" : "Literal"
                  }, {
                     "localId" : "10",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Boolean",
                     "value" : "true",
                     "type" : "Literal"
                  }, {
                     "asType" : "{urn:hl7-org:elm-types:r1}Boolean",
                     "type" : "As",
                     "operand" : {
                        "localId" : "11",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                        "type" : "Null"
                     }
                  }, {
                     "asType" : "{urn:hl7-org:elm-types:r1}Boolean",
                     "type" : "As",
                     "operand" : {
                        "localId" : "12",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                        "type" : "Null"
                     }
                  }, {
                     "localId" : "13",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Boolean",
                     "value" : "true",
                     "type" : "Literal"
                  }, {
                     "localId" : "14",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Boolean",
                     "value" : "true",
                     "type" : "Literal"
                  } ]
               }
            }
         }, {
            "localId" : "24",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "atf",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "24",
                  "s" : [ {
                     "value" : [ "define ","atf",": " ]
                  }, {
                     "r" : "23",
                     "s" : [ {
                        "value" : [ "AllTrue","(" ]
                     }, {
                        "r" : "22",
                        "s" : [ {
                           "r" : "18",
                           "value" : [ "{","true",",","true",",","true",",","false","}" ]
                        } ]
                     }, {
                        "value" : [ ")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "23",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "AllTrue",
               "source" : {
                  "localId" : "22",
                  "type" : "List",
                  "resultTypeSpecifier" : {
                     "type" : "ListTypeSpecifier",
                     "elementType" : {
                        "name" : "{urn:hl7-org:elm-types:r1}Boolean",
                        "type" : "NamedTypeSpecifier"
                     }
                  },
                  "element" : [ {
                     "localId" : "18",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Boolean",
                     "value" : "true",
                     "type" : "Literal"
                  }, {
                     "localId" : "19",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Boolean",
                     "value" : "true",
                     "type" : "Literal"
                  }, {
                     "localId" : "20",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Boolean",
                     "value" : "true",
                     "type" : "Literal"
                  }, {
                     "localId" : "21",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Boolean",
                     "value" : "false",
                     "type" : "Literal"
                  } ]
               }
            }
         }, {
            "localId" : "33",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "atfwn",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "33",
                  "s" : [ {
                     "value" : [ "define ","atfwn",": " ]
                  }, {
                     "r" : "32",
                     "s" : [ {
                        "value" : [ "AllTrue","(" ]
                     }, {
                        "r" : "31",
                        "s" : [ {
                           "r" : "25",
                           "value" : [ "{","true",",","true",",","null",",","null",",","true",",","false","}" ]
                        } ]
                     }, {
                        "value" : [ ")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "32",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "AllTrue",
               "source" : {
                  "localId" : "31",
                  "type" : "List",
                  "resultTypeSpecifier" : {
                     "type" : "ListTypeSpecifier",
                     "elementType" : {
                        "name" : "{urn:hl7-org:elm-types:r1}Boolean",
                        "type" : "NamedTypeSpecifier"
                     }
                  },
                  "element" : [ {
                     "localId" : "25",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Boolean",
                     "value" : "true",
                     "type" : "Literal"
                  }, {
                     "localId" : "26",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Boolean",
                     "value" : "true",
                     "type" : "Literal"
                  }, {
                     "asType" : "{urn:hl7-org:elm-types:r1}Boolean",
                     "type" : "As",
                     "operand" : {
                        "localId" : "27",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                        "type" : "Null"
                     }
                  }, {
                     "asType" : "{urn:hl7-org:elm-types:r1}Boolean",
                     "type" : "As",
                     "operand" : {
                        "localId" : "28",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                        "type" : "Null"
                     }
                  }, {
                     "localId" : "29",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Boolean",
                     "value" : "true",
                     "type" : "Literal"
                  }, {
                     "localId" : "30",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Boolean",
                     "value" : "false",
                     "type" : "Literal"
                  } ]
               }
            }
         } ]
      }
   }
}

### AnyTrue
library TestSnippet version '1'
using QUICK
context Patient
define at: AnyTrue({true,false,false,true})
define atwn: AnyTrue({true,false,null,null,false,true})

define atf: AnyTrue({false,false,false,false})
define atfwn: AnyTrue({false,false,null,null,false,false})
###

module.exports['AnyTrue'] = {
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
            "localIdentifier" : "System",
            "uri" : "urn:hl7-org:elm-types:r1"
         }, {
            "localId" : "1",
            "localIdentifier" : "QUICK",
            "uri" : "http://hl7.org/fhir"
         } ]
      },
      "statements" : {
         "def" : [ {
            "name" : "Patient",
            "context" : "Patient",
            "expression" : {
               "type" : "SingletonFrom",
               "operand" : {
                  "dataType" : "{http://hl7.org/fhir}Patient",
                  "templateId" : "patient-qicore-qicore-patient",
                  "type" : "Retrieve"
               }
            }
         }, {
            "localId" : "8",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "at",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "8",
                  "s" : [ {
                     "value" : [ "define ","at",": " ]
                  }, {
                     "r" : "7",
                     "s" : [ {
                        "value" : [ "AnyTrue","(" ]
                     }, {
                        "r" : "6",
                        "s" : [ {
                           "r" : "2",
                           "value" : [ "{","true",",","false",",","false",",","true","}" ]
                        } ]
                     }, {
                        "value" : [ ")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "7",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "AnyTrue",
               "source" : {
                  "localId" : "6",
                  "type" : "List",
                  "resultTypeSpecifier" : {
                     "type" : "ListTypeSpecifier",
                     "elementType" : {
                        "name" : "{urn:hl7-org:elm-types:r1}Boolean",
                        "type" : "NamedTypeSpecifier"
                     }
                  },
                  "element" : [ {
                     "localId" : "2",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Boolean",
                     "value" : "true",
                     "type" : "Literal"
                  }, {
                     "localId" : "3",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Boolean",
                     "value" : "false",
                     "type" : "Literal"
                  }, {
                     "localId" : "4",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Boolean",
                     "value" : "false",
                     "type" : "Literal"
                  }, {
                     "localId" : "5",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Boolean",
                     "value" : "true",
                     "type" : "Literal"
                  } ]
               }
            }
         }, {
            "localId" : "17",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "atwn",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "17",
                  "s" : [ {
                     "value" : [ "define ","atwn",": " ]
                  }, {
                     "r" : "16",
                     "s" : [ {
                        "value" : [ "AnyTrue","(" ]
                     }, {
                        "r" : "15",
                        "s" : [ {
                           "r" : "9",
                           "value" : [ "{","true",",","false",",","null",",","null",",","false",",","true","}" ]
                        } ]
                     }, {
                        "value" : [ ")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "16",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "AnyTrue",
               "source" : {
                  "localId" : "15",
                  "type" : "List",
                  "resultTypeSpecifier" : {
                     "type" : "ListTypeSpecifier",
                     "elementType" : {
                        "name" : "{urn:hl7-org:elm-types:r1}Boolean",
                        "type" : "NamedTypeSpecifier"
                     }
                  },
                  "element" : [ {
                     "localId" : "9",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Boolean",
                     "value" : "true",
                     "type" : "Literal"
                  }, {
                     "localId" : "10",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Boolean",
                     "value" : "false",
                     "type" : "Literal"
                  }, {
                     "asType" : "{urn:hl7-org:elm-types:r1}Boolean",
                     "type" : "As",
                     "operand" : {
                        "localId" : "11",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                        "type" : "Null"
                     }
                  }, {
                     "asType" : "{urn:hl7-org:elm-types:r1}Boolean",
                     "type" : "As",
                     "operand" : {
                        "localId" : "12",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                        "type" : "Null"
                     }
                  }, {
                     "localId" : "13",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Boolean",
                     "value" : "false",
                     "type" : "Literal"
                  }, {
                     "localId" : "14",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Boolean",
                     "value" : "true",
                     "type" : "Literal"
                  } ]
               }
            }
         }, {
            "localId" : "24",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "atf",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "24",
                  "s" : [ {
                     "value" : [ "define ","atf",": " ]
                  }, {
                     "r" : "23",
                     "s" : [ {
                        "value" : [ "AnyTrue","(" ]
                     }, {
                        "r" : "22",
                        "s" : [ {
                           "r" : "18",
                           "value" : [ "{","false",",","false",",","false",",","false","}" ]
                        } ]
                     }, {
                        "value" : [ ")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "23",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "AnyTrue",
               "source" : {
                  "localId" : "22",
                  "type" : "List",
                  "resultTypeSpecifier" : {
                     "type" : "ListTypeSpecifier",
                     "elementType" : {
                        "name" : "{urn:hl7-org:elm-types:r1}Boolean",
                        "type" : "NamedTypeSpecifier"
                     }
                  },
                  "element" : [ {
                     "localId" : "18",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Boolean",
                     "value" : "false",
                     "type" : "Literal"
                  }, {
                     "localId" : "19",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Boolean",
                     "value" : "false",
                     "type" : "Literal"
                  }, {
                     "localId" : "20",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Boolean",
                     "value" : "false",
                     "type" : "Literal"
                  }, {
                     "localId" : "21",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Boolean",
                     "value" : "false",
                     "type" : "Literal"
                  } ]
               }
            }
         }, {
            "localId" : "33",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "atfwn",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "33",
                  "s" : [ {
                     "value" : [ "define ","atfwn",": " ]
                  }, {
                     "r" : "32",
                     "s" : [ {
                        "value" : [ "AnyTrue","(" ]
                     }, {
                        "r" : "31",
                        "s" : [ {
                           "r" : "25",
                           "value" : [ "{","false",",","false",",","null",",","null",",","false",",","false","}" ]
                        } ]
                     }, {
                        "value" : [ ")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "32",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "AnyTrue",
               "source" : {
                  "localId" : "31",
                  "type" : "List",
                  "resultTypeSpecifier" : {
                     "type" : "ListTypeSpecifier",
                     "elementType" : {
                        "name" : "{urn:hl7-org:elm-types:r1}Boolean",
                        "type" : "NamedTypeSpecifier"
                     }
                  },
                  "element" : [ {
                     "localId" : "25",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Boolean",
                     "value" : "false",
                     "type" : "Literal"
                  }, {
                     "localId" : "26",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Boolean",
                     "value" : "false",
                     "type" : "Literal"
                  }, {
                     "asType" : "{urn:hl7-org:elm-types:r1}Boolean",
                     "type" : "As",
                     "operand" : {
                        "localId" : "27",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                        "type" : "Null"
                     }
                  }, {
                     "asType" : "{urn:hl7-org:elm-types:r1}Boolean",
                     "type" : "As",
                     "operand" : {
                        "localId" : "28",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                        "type" : "Null"
                     }
                  }, {
                     "localId" : "29",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Boolean",
                     "value" : "false",
                     "type" : "Literal"
                  }, {
                     "localId" : "30",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Boolean",
                     "value" : "false",
                     "type" : "Literal"
                  } ]
               }
            }
         } ]
      }
   }
}

