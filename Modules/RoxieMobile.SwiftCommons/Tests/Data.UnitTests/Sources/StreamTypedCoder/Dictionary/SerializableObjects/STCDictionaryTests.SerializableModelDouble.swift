// ----------------------------------------------------------------------------
//
//  STCDouble.swift
//
//  @author     Natalia Mamunina <mamunina-nv@roxiemobile.com>
//  @copyright  Copyright (c) 2019, Roxie Mobile Ltd. All rights reserved.
//  @link       http://www.roxiemobile.ru/
//
// ----------------------------------------------------------------------------

@testable import SwiftCommonsData
@testable import SwiftCommonsObjC
import XCTest

// ----------------------------------------------------------------------------

extension STCDictionaryTests
{
// MARK: - Tests

    func testSerializableModel_Double() {

        let _dObject: [String: STCDoubleModel]? = [JsonKeys.object: STCDoubleModel.shared]

        // Positive
        assertNoThrow {

//            // Encode
//            let mdata = NSMutableData()
//            StreamTypedEncoder(forWritingWith: data).encodeRootObject(_dObject)
//            XCTAssertNotEqual(mdata, NSMutableData())
//
//            // Decode
//            var _dResult: [String: STCDoubleModel]?
//            if let value = StreamTypedDecoder(forReadingWith: data as Data)?.decodeObject() as? [String: STCDoubleModel] {
//                _dResult = value
//            }
//            XCTAssertEqual(_dObject, _dResult)
        }
    }

    func testSerializableModel_Double_TSC() {

        let _dObject: [String: STCDoubleModel]! = [JsonKeys.object: STCDoubleModel.shared]

        // Positive
        assertNoThrow {
            let policy: CodingFailurePolicy = .raiseException

            // Encode
            let mdata = NSMutableData()
            TypedStreamEncoder(forWritingInto: mdata, failurePolicy: policy).encode(_dObject)
            XCTAssertNotEqual(mdata, NSMutableData())

            // Decode
            var _dResult: [String: STCDoubleModel]?
            if let value = TypedStreamDecoder(forReadingFrom: mdata as Data, failurePolicy: policy).decodeObject() as? [String: STCDoubleModel] {
                _dResult = value
            }
            XCTAssertEqual(_dObject, _dResult)
        }
    }
}

// ----------------------------------------------------------------------------