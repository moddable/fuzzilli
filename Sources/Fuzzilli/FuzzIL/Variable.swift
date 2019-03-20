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

/// A variable in the FuzzIL language.
///
/// Variables names (numbers) are local to a program. Different programs
/// will have the same variable names referring to different things.
public struct Variable: Hashable, CustomStringConvertible, Codable {
    // We assume that programs will always have less than 64k variables
    private let num: UInt16
    
    init(number: Int) {
        self.num = UInt16(number)
    }
    
    public var number: Int {
        return Int(num)
    }
    
    public var identifier: String {
        return "v\(number)"
    }
    
    public var description: String {
        return identifier
    }
    
    public var hashValue: Int {
        return number
    }
    
    public static func ==(lhs: Variable, rhs: Variable) -> Bool {
        return lhs.number == rhs.number
    }
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        self.num = try container.decode(UInt16.self)
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(num)
    }
}

let maxNumberOfVariables = 0x10000
