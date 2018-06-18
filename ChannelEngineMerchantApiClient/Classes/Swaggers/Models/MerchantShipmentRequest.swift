//
// MerchantShipmentRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct MerchantShipmentRequest: Codable {

    /** The unique shipment reference used by the Merchant */
    public var merchantShipmentNo: String
    /** The unique order reference used by the Merchant */
    public var merchantOrderNo: String
    public var lines: [MerchantShipmentLineRequest]
    /** The unique shipping reference used by the Shipping carrier (track&amp;amp;trace number) */
    public var trackTraceNo: String?
    /** A link to a page of the carrier where the customer can track the shipping of her package. */
    public var trackTraceUrl: String?
    /** Shipment method (carrier) */
    public var method: String?


    public enum CodingKeys: String, CodingKey { 
        case merchantShipmentNo = "MerchantShipmentNo"
        case merchantOrderNo = "MerchantOrderNo"
        case lines = "Lines"
        case trackTraceNo = "TrackTraceNo"
        case trackTraceUrl = "TrackTraceUrl"
        case method = "Method"
    }


}

