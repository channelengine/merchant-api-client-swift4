//
// MerchantShipmentTrackingRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct MerchantShipmentTrackingRequest: Codable { 


    /** Shipment method (carrier). */
    public var method: String
    /** The unique shipping reference used by the Shipping carrier (track &amp; trace number). */
    public var trackTraceNo: String
    /** The unique return shipping reference that may be used by the Shipping carrier (track &amp; trace number) if the shipment is returned. */
    public var returnTrackTraceNo: String?
    /** A link to a page of the carrier where the customer can track the shipping of her package. */
    public var trackTraceUrl: String?

    public init(method: String, trackTraceNo: String, returnTrackTraceNo: String? = nil, trackTraceUrl: String? = nil) {
        self.method = method
        self.trackTraceNo = trackTraceNo
        self.returnTrackTraceNo = returnTrackTraceNo
        self.trackTraceUrl = trackTraceUrl
    }

    public enum CodingKeys: String, CodingKey, CaseIterable { 
        case method = "Method"
        case trackTraceNo = "TrackTraceNo"
        case returnTrackTraceNo = "ReturnTrackTraceNo"
        case trackTraceUrl = "TrackTraceUrl"
    }

}
