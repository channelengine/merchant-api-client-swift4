//
// MerchantShipmentLineRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct MerchantShipmentLineRequest: Codable {

    /** The unique product reference used by the Merchant (sku) */
    public var merchantProductNo: String
    /** Number of items of the product in the shipment */
    public var quantity: Int


    public enum CodingKeys: String, CodingKey { 
        case merchantProductNo = "MerchantProductNo"
        case quantity = "Quantity"
    }


}

