//
// MerchantShipmentRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct MerchantShipmentRequest: Codable { 


    /** The unique shipment reference used by the Merchant. */
    public var merchantShipmentNo: String
    /** The unique order reference used by the Merchant. */
    public var merchantOrderNo: String
    public var lines: [MerchantShipmentLineRequest]
    /** The unique shipping reference used by the Shipping carrier (track&amp;trace number). */
    public var trackTraceNo: String?
    /** A link to a page of the carrier where the customer can track the shipping of her package. */
    public var trackTraceUrl: String?
    /** The unique return shipping reference that may be used by the Shipping carrier (track &amp; trace number) if the shipment is returned. */
    public var returnTrackTraceNo: String?
    /** Shipment method: the carrier used for shipping the package. E.g. DHL, postNL. */
    public var method: String?

    public init(merchantShipmentNo: String, merchantOrderNo: String, lines: [MerchantShipmentLineRequest], trackTraceNo: String? = nil, trackTraceUrl: String? = nil, returnTrackTraceNo: String? = nil, method: String? = nil) {
        self.merchantShipmentNo = merchantShipmentNo
        self.merchantOrderNo = merchantOrderNo
        self.lines = lines
        self.trackTraceNo = trackTraceNo
        self.trackTraceUrl = trackTraceUrl
        self.returnTrackTraceNo = returnTrackTraceNo
        self.method = method
    }

    public enum CodingKeys: String, CodingKey, CaseIterable { 
        case merchantShipmentNo = "MerchantShipmentNo"
        case merchantOrderNo = "MerchantOrderNo"
        case lines = "Lines"
        case trackTraceNo = "TrackTraceNo"
        case trackTraceUrl = "TrackTraceUrl"
        case returnTrackTraceNo = "ReturnTrackTraceNo"
        case method = "Method"
    }

}
