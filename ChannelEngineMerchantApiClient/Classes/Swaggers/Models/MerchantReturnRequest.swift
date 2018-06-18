//
// MerchantReturnRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct MerchantReturnRequest: Codable {

    public enum Reason: String, Codable { 
        case productDefect = "PRODUCT_DEFECT"
        case productUnsatisfactory = "PRODUCT_UNSATISFACTORY"
        case wrongProduct = "WRONG_PRODUCT"
        case tooManyProducts = "TOO_MANY_PRODUCTS"
        case refused = "REFUSED"
        case refusedDamaged = "REFUSED_DAMAGED"
        case wrongAddress = "WRONG_ADDRESS"
        case notCollected = "NOT_COLLECTED"
        case other = "OTHER"
    }
    /** The unique order reference used by the Merchant (sku) */
    public var merchantOrderNo: String
    /** The unique return reference used by the Merchant (sku) */
    public var merchantReturnNo: String
    public var lines: [MerchantReturnLineRequest]
    /** The unique return reference used by ChannelEngine */
    public var _id: Int?
    /** The reason code of the return */
    public var reason: Reason?
    /** Optional. Comment of customer on the (reason of) the return */
    public var customerComment: String?
    /** Optional. Comment of merchant on the return. */
    public var merchantComment: String?
    /** Refund amount incl. VAT */
    public var refundInclVat: Double?
    /** Refund amount excl. VAT */
    public var refundExclVat: Double?


    public enum CodingKeys: String, CodingKey { 
        case merchantOrderNo = "MerchantOrderNo"
        case merchantReturnNo = "MerchantReturnNo"
        case lines = "Lines"
        case _id = "Id"
        case reason = "Reason"
        case customerComment = "CustomerComment"
        case merchantComment = "MerchantComment"
        case refundInclVat = "RefundInclVat"
        case refundExclVat = "RefundExclVat"
    }


}

