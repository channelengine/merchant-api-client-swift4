//
// MerchantProductBundlePartResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct MerchantProductBundlePartResponse: Codable {

    public var merchantProductNo: String?
    public var ean: String?
    public var name: String?
    public var quantity: Int?
    public var price: Double?

    public init(merchantProductNo: String?, ean: String?, name: String?, quantity: Int?, price: Double?) {
        self.merchantProductNo = merchantProductNo
        self.ean = ean
        self.name = name
        self.quantity = quantity
        self.price = price
    }

    public enum CodingKeys: String, CodingKey { 
        case merchantProductNo = "MerchantProductNo"
        case ean = "Ean"
        case name = "Name"
        case quantity = "Quantity"
        case price = "Price"
    }


}

