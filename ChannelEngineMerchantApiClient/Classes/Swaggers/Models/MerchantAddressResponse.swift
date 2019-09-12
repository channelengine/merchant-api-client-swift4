//
// MerchantAddressResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct MerchantAddressResponse: Codable {

    public enum Gender: String, Codable { 
        case male = "MALE"
        case female = "FEMALE"
        case notApplicable = "NOT_APPLICABLE"
    }
    /** The first address line, use this field if address validation is disabled in ChannelEngine. */
    public var line1: String?
    /** The second address line, use this field if address validation is disabled in ChannelEngine. */
    public var line2: String?
    /** The third address line, use this field if address validation is disabled in ChannelEngine. */
    public var line3: String?
    /** Optional. The customer&#39;s gender */
    public var gender: Gender?
    /** Optional. Company addressed too. */
    public var companyName: String?
    /** The first name of the customer */
    public var firstName: String?
    /** The last name of the customer (includes the surname prefix [tussenvoegsel] like &#39;de&#39;, &#39;van&#39;, &#39;du&#39;) */
    public var lastName: String?
    /** The name of the street (without house number information)  This field might be empty if address validation is disabled in ChannelEngine */
    public var streetName: String?
    /** The house number  This field might be empty if address validation is disabled in ChannelEngine */
    public var houseNr: String?
    /** Optional. Addition to the house number  If the address is: Groenhazengracht 2c, the address will be:  StreetName: Groenhazengracht  HouseNo: 2  HouseNrAddition: c  This field might be empty if address validation is disabled in ChannelEngine */
    public var houseNrAddition: String?
    /** The zip or postal code */
    public var zipCode: String?
    /** The name of the city */
    public var city: String?
    /** Optional. State/province/region */
    public var region: String?
    /** For example: NL, BE, FR */
    public var countryIso: String?
    /** Optional. The address as a single string: use in case the address lines are entered  as single lines and later parsed into street, house number and house number addition. */
    public var original: String?

    public init(line1: String?, line2: String?, line3: String?, gender: Gender?, companyName: String?, firstName: String?, lastName: String?, streetName: String?, houseNr: String?, houseNrAddition: String?, zipCode: String?, city: String?, region: String?, countryIso: String?, original: String?) {
        self.line1 = line1
        self.line2 = line2
        self.line3 = line3
        self.gender = gender
        self.companyName = companyName
        self.firstName = firstName
        self.lastName = lastName
        self.streetName = streetName
        self.houseNr = houseNr
        self.houseNrAddition = houseNrAddition
        self.zipCode = zipCode
        self.city = city
        self.region = region
        self.countryIso = countryIso
        self.original = original
    }

    public enum CodingKeys: String, CodingKey { 
        case line1 = "Line1"
        case line2 = "Line2"
        case line3 = "Line3"
        case gender = "Gender"
        case companyName = "CompanyName"
        case firstName = "FirstName"
        case lastName = "LastName"
        case streetName = "StreetName"
        case houseNr = "HouseNr"
        case houseNrAddition = "HouseNrAddition"
        case zipCode = "ZipCode"
        case city = "City"
        case region = "Region"
        case countryIso = "CountryIso"
        case original = "Original"
    }


}

