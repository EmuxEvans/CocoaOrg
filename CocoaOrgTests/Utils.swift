//
//  Utils.swift
//  CocoaOrg
//
//  Created by Xiaoxing Hu on 17/09/16.
//  Copyright © 2016 Xiaoxing Hu. All rights reserved.
//

import XCTest
@testable import CocoaOrg

func tokenize(line: String) -> Token? {
    do {
        return try t(line: line).1
    } catch {
        XCTFail("\(error)")
        return nil
    }
}

let parser = OrgParser()

func parse(_ lines: [String]) -> OrgDocument? {
    do {
        return try parser.parse(lines: lines)
    } catch {
        XCTFail("> ERROR: \(error).")
    }
    return nil
}
