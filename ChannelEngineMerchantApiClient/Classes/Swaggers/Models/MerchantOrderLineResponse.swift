//
// MerchantOrderLineResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct MerchantOrderLineResponse: Codable {

    public enum Status: String, Codable { 
        case inProgress = "IN_PROGRESS"
        case shipped = "SHIPPED"
        case inBackorder = "IN_BACKORDER"
        case canceled = "CANCELED"
        case manco = "MANCO"
        case inCombi = "IN_COMBI"
        case closed = "CLOSED"
        case new = "NEW"
        case returned = "RETURNED"
        case requiresCorrection = "REQUIRES_CORRECTION"
    }
    public enum Condition: String, Codable { 
        case new = "NEW"
        case newRefurbished = "NEW_REFURBISHED"
        case usedAsNew = "USED_AS_NEW"
        case usedGood = "USED_GOOD"
        case usedReasonable = "USED_REASONABLE"
        case usedMediocre = "USED_MEDIOCRE"
        case unknown = "UNKNOWN"
    }
    public var status: Status?
    public var isFulfillmentByMarketplace: Bool?
    public var merchantProductNo: String?
    /** The total amount of VAT charged over the value of a single unit of the ordered product  (in the shop&#39;s base currency calculated using the exchange rate at the time of ordering). */
    public var unitVat: Double?
    /** The total value of the order line (quantity * unit price) including VAT  (in the shop&#39;s base currency calculated using the exchange rate at the time of ordering). */
    public var lineTotalInclVat: Double?
    /** The total amount of VAT charged over the total value of the order line (quantity * unit price)  (in the shop&#39;s base currency calculated using the exchange rate at the time of ordering). */
    public var lineVat: Double?
    /** The value of a single unit of the ordered product including VAT  (in the currency in which the order was paid for, see CurrencyCode). */
    public var originalUnitPriceInclVat: Double?
    /** The total amount of VAT charged over the value of a single unit of the ordered product  (in the currency in which the order was paid for, see CurrencyCode). */
    public var originalUnitVat: Double?
    /** The total value of the order line (quantity * unit price) including VAT  (in the currency in which the order was paid for, see CurrencyCode). */
    public var originalLineTotalInclVat: Double?
    /** The total amount of VAT charged over the total value of the order line (quantity * unit price)  (in the currency in which the order was paid for, see CurrencyCode). */
    public var originalLineVat: Double?
    public var channelProductNo: String
    public var quantity: Int
    /** The value of a single unit of the ordered product including VAT  (in the shop&#39;s base currency calculated using the exchange rate at the time of ordering). */
    public var unitPriceInclVat: Double
    /** A fixed fee that is charged by the Channel for this orderline.  This field is optional, send 0 if not applicable. */
    public var feeFixed: Double?
    /** A percentage fee that is charged by the Channel for this orderline.  This field is optional, send 0 if not applicable. */
    public var feeRate: Double?
    /** The condition of the product, this can be used to indicate that a product is a second-hand product */
    public var condition: Condition?


    public enum CodingKeys: String, CodingKey { 
        case status = "Status"
        case isFulfillmentByMarketplace = "IsFulfillmentByMarketplace"
        case merchantProductNo = "MerchantProductNo"
        case unitVat = "UnitVat"
        case lineTotalInclVat = "LineTotalInclVat"
        case lineVat = "LineVat"
        case originalUnitPriceInclVat = "OriginalUnitPriceInclVat"
        case originalUnitVat = "OriginalUnitVat"
        case originalLineTotalInclVat = "OriginalLineTotalInclVat"
        case originalLineVat = "OriginalLineVat"
        case channelProductNo = "ChannelProductNo"
        case quantity = "Quantity"
        case unitPriceInclVat = "UnitPriceInclVat"
        case feeFixed = "FeeFixed"
        case feeRate = "FeeRate"
        case condition = "Condition"
    }


}

