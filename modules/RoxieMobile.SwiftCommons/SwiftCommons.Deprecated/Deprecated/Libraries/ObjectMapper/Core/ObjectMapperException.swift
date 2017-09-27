// ----------------------------------------------------------------------------
//
//  ObjectMapperException.swift
//
//  @author     Alexander Bragin <bragin-av@roxiemobile.com>
//  @copyright  Copyright (c) 2017, Roxie Mobile Ltd. All rights reserved.
//  @link       http://www.roxiemobile.com/
//
// ----------------------------------------------------------------------------

import Foundation

// ----------------------------------------------------------------------------

public final class ObjectMapperException: NSException
{
// MARK: - Construction

    public init(reason aReason: String?, userInfo aUserInfo: [NSObject : AnyObject]?) {
        super.init(name: Inner.ExceptionName, reason: aReason, userInfo: aUserInfo)
    }

    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

// MARK: - Constants

    private struct Inner {
        static let ExceptionName = NSExceptionName(rawValue: typeName(ObjectMapperException.self))
    }
}

// ----------------------------------------------------------------------------
// MARK: - Global Functions
// ----------------------------------------------------------------------------

func roxie_objectMapperError(message: String, file: StaticString = #file, line: UInt = #line) -> Never {
    let logMessage = "Fatal error: \(message)\nFile: \(file)\nLine: \(line)"

#if DEBUG
    preconditionFailure(logMessage)
#else
    ObjectMapperException(reason: logMessage, userInfo: nil).raise()

    // Suppress error "Return from a ‘noreturn’ function"
    fatalError(logMessage)
#endif
}

// ----------------------------------------------------------------------------

func roxie_objectMapperAssertion(message: String, file: StaticString = #file, line: UInt = #line)
{
    let logMessage = "Assertion violated: \(message)\nFile: \(file)\nLine: \(line)"
    assertionFailure(logMessage)
}

// ----------------------------------------------------------------------------
