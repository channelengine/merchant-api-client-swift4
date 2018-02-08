//
// MerchantShipmentRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct MerchantShipmentRequest: Codable {

    public var merchantShipmentNo: String
    public var merchantOrderNo: String
    public var lines: [MerchantShipmentLineRequest]
    public var trackTraceNo: String?
    public var trackTraceUrl: String?
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

