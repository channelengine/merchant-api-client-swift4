//
// ChannelReturnResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct ChannelReturnResponse: Codable {

    public enum Reason: String, Codable { 
        case productDefect = "PRODUCT_DEFECT"
        case productUnsatisfactory = "PRODUCT_UNSATISFACTORY"
        case refused = "REFUSED"
        case refusedDamaged = "REFUSED_DAMAGED"
        case wrongAddress = "WRONG_ADDRESS"
        case notCollected = "NOT_COLLECTED"
        case other = "OTHER"
    }
    public var channelReturnNo: String
    public var channelOrderNo: String
    public var lines: [ChannelReturnLineResponse]
    public var reason: Reason?
    public var customerComment: String?
    public var merchantComment: String?
    public var refundInclVat: Double?
    public var refundExclVat: Double?


    public enum CodingKeys: String, CodingKey { 
        case channelReturnNo = "ChannelReturnNo"
        case channelOrderNo = "ChannelOrderNo"
        case lines = "Lines"
        case reason = "Reason"
        case customerComment = "CustomerComment"
        case merchantComment = "MerchantComment"
        case refundInclVat = "RefundInclVat"
        case refundExclVat = "RefundExclVat"
    }


}

