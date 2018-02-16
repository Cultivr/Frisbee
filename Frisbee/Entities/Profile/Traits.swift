//
//  Traits.swift
//  Frisbee
//
//  Created by Jordan Kay on 2/13/18.
//  Copyright © 2018 Cultivr. All rights reserved.
//

public extension Profile {
    struct Traits {
        public let dominantValue: Int
        public let interactiveValue: Int
        public let supportiveValue: Int
        public let conscientiousValue: Int
        
        public init(dominantValue: Int, interactiveValue: Int, supportiveValue: Int, conscientiousValue: Int) {
            self.dominantValue = dominantValue
            self.interactiveValue = interactiveValue
            self.supportiveValue = supportiveValue
            self.conscientiousValue = conscientiousValue
        }
    }
}

extension Profile.Traits: Decodable {
    public static func decode(_ json: Any) throws -> Profile.Traits {
        return try Profile.Traits(
            dominantValue: json => "dominant",
            interactiveValue: json => "interactive",
            supportiveValue: json => "supportive",
            conscientiousValue: json => "conscientious"
        )
    }
}
