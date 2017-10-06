// ----------------------------------------------------------------------------
//
//  Guard.NilOrNotValid.swift
//
//  @author     Alexander Bragin <bragin-av@roxiemobile.com>
//  @copyright  Copyright (c) 2017, Roxie Mobile Ltd. All rights reserved.
//  @link       http://www.roxiemobile.com/
//
// ----------------------------------------------------------------------------

import SwiftCommons

// ----------------------------------------------------------------------------

/*
using System;
using RoxieMobile.CSharpCommons.Abstractions.Models;

namespace RoxieMobile.CSharpCommons.Diagnostics
{
    /// <summary>
    /// A set of methods useful for validating objects states. Only failed checks are throws exceptions.
    /// </summary>
    public partial class Guard
    {
// MARK: - Methods

        /// <summary>
        /// Checks that an object is `nil` or not valid.
        /// </summary>
        /// - obj: Object to check or `nil`.
        /// - message: The identifying message for the `GuardException` (`nil` okay).
        /// - Throws: GuardException
        public static void NullOrNotValid(IValidatable obj, string message = null)
        {
            if (TryIsFailure(() => Check.NullOrNotValid(obj), out Exception cause)) {
                throw NewGuardError(message, cause);
            }
        }

        /// <summary>
        /// Checks that an object is `nil` or not valid.
        /// </summary>
        /// - obj: Object to check or `nil`.
        /// - block: The function which returns identifying message for the `GuardException`.
        /// <exception cref="ArgumentNullException">Thrown when the `block` is `nil`.</exception>
        /// - Throws: GuardException
        public static void NullOrNotValid(IValidatable obj, Func<string> block)
        {
            if (block == null) {
                throw new ArgumentNullException(nameof(block));
            }

            if (TryIsFailure(() => Check.NullOrNotValid(obj), out Exception cause)) {
                throw NewGuardError(block(), cause);
            }
        }
    }
}
*/

extension Guard
{
// MARK: - Methods

//    // TODO
//    @available(*, deprecated)
//    public static func isNilOrNotValid(_ object: Validatable?, _ message: @autoclosure () -> String? = nil, file: StaticString = #file, line: UInt = #line) {
//        rethrowOnFailure(message, file, line) { try Expect.isNilOrNotValid(object) }
//    }

//    /**
//     Checks that an object is `nil` or not valid.
//
//     - Parameter object: Object to check or `nil`.
//     */
//    public static func nilOrNotValid(_ object: Validatable?, _ message: @autoclosure () -> String? = nil, file: StaticString = #file, line: UInt = #line) {
//        rethrowOnFailure(message, file, line) { try Check.nilOrNotValid(object) }
//    }
}

// ----------------------------------------------------------------------------
