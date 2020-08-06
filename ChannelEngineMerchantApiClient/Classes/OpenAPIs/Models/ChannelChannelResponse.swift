//
// ChannelChannelResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct ChannelChannelResponse: Codable { 


    /** The ID of the Channel. */
    public var channelId: Int?
    /** A boolean value indicating whether the Channel is enabled. */
    public var isEnabled: Bool?
    /** The name of the Channel. */
    public var channelName: String?

    public init(channelId: Int? = nil, isEnabled: Bool? = nil, channelName: String? = nil) {
        self.channelId = channelId
        self.isEnabled = isEnabled
        self.channelName = channelName
    }

    public enum CodingKeys: String, CodingKey, CaseIterable { 
        case channelId = "ChannelId"
        case isEnabled = "IsEnabled"
        case channelName = "ChannelName"
    }

}