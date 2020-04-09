//
//  GridBoxViewSpec.swift
//  ViewCode-SampleTests
//
//  Created by Victor Oka on 08/04/20.
//  Copyright © 2020 Victor Oka. All rights reserved.
//

import Quick
import Nimble
import Nimble_Snapshots

@testable import ViewCode_Sample

class GridBoxViewSpec: QuickSpec {
    
    override func spec() {
        describe("the 'UI'") {
            it("should have the expected look and feel") {
                let frame = CGRect(x: 0, y: 0, width: 250, height: 300)
                let view = GridBoxView(frame: frame)
                expect(view) == recordSnapshot("GridBoxView")
            }
        }
    }
    
}
