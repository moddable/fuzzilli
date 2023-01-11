// Copyright 2019 Google LLC
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// https://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import Fuzzilli

/// Assigned weights for the builtin code generators.
let codeGeneratorWeights = [
    // Base generators
    "IntegerGenerator":                         5,
    "RegExpGenerator":                          1,
    "BigIntGenerator":                          3,
    "FloatGenerator":                           3,
    "StringGenerator":                          3,
    "BooleanGenerator":                         1,
    "UndefinedGenerator":                       1,
    "NullGenerator":                            1,
    "ThisGenerator":                            3,
    "ArgumentsGenerator":                       1,
    "BuiltinGenerator":                         10,
    "ObjectLiteralGenerator":                   15,
    // The following generators determine how frequent different
    // types of fields are generated in object literals.
    "ObjectLiteralPropertyGenerator":           20,
    "ObjectLiteralElementGenerator":            5,
    "ObjectLiteralComputedPropertyGenerator":   5,
    "ObjectLiteralCopyPropertiesGenerator":     5,
    "ObjectLiteralMethodGenerator":             5,
    "ObjectLiteralGetterGenerator":             5,
    "ObjectLiteralSetterGenerator":             5,

    "ArrayGenerator":                           15,
    "FloatArrayGenerator":                      5,
    "IntArrayGenerator":                        5,
    "ObjectWithSpreadGenerator":                2,
    "ArrayWithSpreadGenerator":                 2,
    "TemplateStringGenerator":                  1,
    "StringNormalizeGenerator":                 1,
    "PlainFunctionGenerator":                   15,
    "ArrowFunctionGenerator":                   3,
    "GeneratorFunctionGenerator":               3,
    "AsyncFunctionGenerator":                   3,
    "AsyncArrowFunctionGenerator":              1,
    "AsyncGeneratorFunctionGenerator":          1,
    "ConstructorGenerator":                     5,
    "SubroutineReturnGenerator":                3,
    "YieldGenerator":                           2,
    "AwaitGenerator":                           2,
    "PropertyRetrievalGenerator":               20,
    "PropertyAssignmentGenerator":              20,
    "StorePropertyWithBinopGenerator":          10,
    "PropertyRemovalGenerator":                 5,
    "PropertyConfigurationGenerator":           10,
    "ElementRetrievalGenerator":                20,
    "ElementAssignmentGenerator":               20,
    "StoreElementWithBinopGenerator":           7,
    "ElementRemovalGenerator":                  5,
    "ElementConfigurationGenerator":            10,
    "TypeTestGenerator":                        5,
    "InstanceOfGenerator":                      5,
    "InGenerator":                              3,
    "ComputedPropertyRetrievalGenerator":       20,
    "ComputedPropertyAssignmentGenerator":      20,
    "StoreComputedPropertyWithBinopGenerator":  7,
    "ComputedPropertyRemovalGenerator":         5,
    "ComputedPropertyConfigurationGenerator":   10,
    "FunctionCallGenerator":                    30,
    "FunctionCallWithSpreadGenerator":          3,
    "ConstructorCallGenerator":                 20,
    "ConstructorCallWithSpreadGenerator":       3,
    "MethodCallGenerator":                      30,
    "MethodCallWithSpreadGenerator":            3,
    "ComputedMethodCallGenerator":              10,
    "ComputedMethodCallWithSpreadGenerator":    3,
    "UnaryOperationGenerator":                  10,
    "BinaryOperationGenerator":                 40,
    "TernaryOperationGenerator":                5,
    "ReassignWithBinopGenerator":               20,
    "DupGenerator":                             2,
    "ReassignmentGenerator":                    30,
    "DestructArrayGenerator":                   5,
    "DestructArrayAndReassignGenerator":        5,
    "DestructObjectGenerator":                  5,
    "DestructObjectAndReassignGenerator":       5,
    "WithStatementGenerator":                   3,
    "LoadFromScopeGenerator":                   3,
    "StoreToScopeGenerator":                    3,
    "ComparisonGenerator":                      10,
    "ClassDefinitionGenerator":                 20,
    // The following generators determine how frequent different
    // types of fields are generated in class definitions.
    "ClassConstructorGenerator":                10,   // Will only run if no constructor exists yet
    "ClassInstancePropertyGenerator":           5,
    "ClassInstanceMethodGenerator":             10,

    "SuperMethodCallGenerator":                 20,
    "LoadSuperPropertyGenerator":               10,
    "StoreSuperPropertyGenerator":              10,
    "StoreSuperPropertyWithBinopGenerator":     10,
    "IfElseGenerator":                          10,
    "CompareWithIfElseGenerator":               15,
    "SwitchCaseGenerator":                      5,
    "SwitchBlockGenerator":                     5,
    "WhileLoopGenerator":                       15,
    "DoWhileLoopGenerator":                     15,
    "ForLoopGenerator":                         15,
    "ForInLoopGenerator":                       10,
    "ForOfLoopGenerator":                       10,
    "ForOfWithDestructLoopGenerator":           3,
    "RepeatLoopGenerator":                      10,
    "SwitchCaseBreakGenerator":                 5,
    "LoopBreakGenerator":                       5,
    "ContinueGenerator":                        5,
    "TryCatchGenerator":                        5,
    "ThrowGenerator":                           1,
    "BlockStatementGenerator":                  1,

    // Special generators
    "WellKnownPropertyLoadGenerator":           5,
    "WellKnownPropertyStoreGenerator":          5,
    "TypedArrayGenerator":                      10,
    "PrototypeAccessGenerator":                 10,
    "PrototypeOverwriteGenerator":              10,
    "CallbackPropertyGenerator":                10,
    "MethodCallWithDifferentThisGenerator":     5,
    "ProxyGenerator":                           10,
    "LengthChangeGenerator":                    5,
    "ElementKindChangeGenerator":               5,
    "PromiseGenerator":                         3,
    "EvalGenerator":                            3,
    "NumberComputationGenerator":               40,
    "JITFunctionGenerator":                     20,
    "ResizableArrayBufferGenerator":            5,
    "GrowableSharedArrayBufferGenerator":       5,
]
