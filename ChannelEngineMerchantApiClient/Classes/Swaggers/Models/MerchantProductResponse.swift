//
// MerchantProductResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct MerchantProductResponse: Codable {

    public enum VatRateType: String, Codable { 
        case standard = "STANDARD"
        case reduced = "REDUCED"
        case superReduced = "SUPER_REDUCED"
    }
    /** Is the product active for the Merchant? */
    public var isActive: Bool?
    /** A unique identifier of the product. (sku) */
    public var merchantProductNo: String?
    public var extraData: [MerchantProductExtraDataItemResponse]?
    /** The name of the product */
    public var name: String?
    /** A description of the product. Can contain these HTML tags:  div, span, pre, p, br, hr, hgroup, h1, h2, h3, h4, h5, h6, ul, ol, li, dl, dt, dd, strong, em, b, i, u, img, a, abbr, address, blockquote, area, audio, video, caption, table, tbody, td, tfoot, th, thead, tr */
    public var _description: String?
    /** The brand of the product */
    public var brand: String?
    /** Optional. The size of the product (variant). E.g. fashion size (S-XL, 46-56, etc), width of the watch, etc.. */
    public var size: String?
    /** Optional. The color of the product (variant). */
    public var color: String?
    /** The EAN of GTIN of the product */
    public var ean: String?
    /** The unique product reference used by the manufacturer/vendor of the product */
    public var manufacturerProductNumber: String?
    /** The number of items in stock */
    public var stock: Int?
    /** Price, including VAT. */
    public var price: Double?
    /** Manufacturer&#39;s suggested retail price */
    public var MSRP: Double?
    /** Optional. The purchase price of the product. Useful for repricing. */
    public var purchasePrice: Double?
    /** The type of VAT which applies to this product.  See: http://ec.europa.eu/taxation_customs/taxation/vat/topics/rates_en.htm */
    public var vatRateType: VatRateType?
    /** Shipping cost of the product. */
    public var shippingCost: Double?
    /** A textual representation of the shippingtime.  For example, in Dutch: &#39;Op werkdagen voor 22:00 uur besteld, morgen in huis&#39; */
    public var shippingTime: String?
    /** A URL pointing to the merchant&#39;s webpage  which displays this product. */
    public var url: String?
    /** A URL at which an image of this product  can be found. */
    public var imageUrl: String?
    /** Url to an additional image of product (1) */
    public var extraImageUrl1: String?
    /** Url to an additional image of product (2) */
    public var extraImageUrl2: String?
    /** Url to an additional image of product (3) */
    public var extraImageUrl3: String?
    /** Url to an additional image of product (4) */
    public var extraImageUrl4: String?
    /** Url to an additional image of product (5) */
    public var extraImageUrl5: String?
    /** Url to an additional image of product (6) */
    public var extraImageUrl6: String?
    /** Url to an additional image of product (7) */
    public var extraImageUrl7: String?
    /** Url to an additional image of product (8) */
    public var extraImageUrl8: String?
    /** Url to an additional image of product (9) */
    public var extraImageUrl9: String?
    /** The category to which this product belongs.  Please supply this field in the following format:  &#39;maincategory &amp;gt; category &amp;gt; subcategory&#39;  For example:  &#39;vehicles &amp;gt; bikes &amp;gt; mountainbike&#39; */
    public var categoryTrail: String?

    public init(isActive: Bool?, merchantProductNo: String?, extraData: [MerchantProductExtraDataItemResponse]?, name: String?, _description: String?, brand: String?, size: String?, color: String?, ean: String?, manufacturerProductNumber: String?, stock: Int?, price: Double?, MSRP: Double?, purchasePrice: Double?, vatRateType: VatRateType?, shippingCost: Double?, shippingTime: String?, url: String?, imageUrl: String?, extraImageUrl1: String?, extraImageUrl2: String?, extraImageUrl3: String?, extraImageUrl4: String?, extraImageUrl5: String?, extraImageUrl6: String?, extraImageUrl7: String?, extraImageUrl8: String?, extraImageUrl9: String?, categoryTrail: String?) {
        self.isActive = isActive
        self.merchantProductNo = merchantProductNo
        self.extraData = extraData
        self.name = name
        self._description = _description
        self.brand = brand
        self.size = size
        self.color = color
        self.ean = ean
        self.manufacturerProductNumber = manufacturerProductNumber
        self.stock = stock
        self.price = price
        self.MSRP = MSRP
        self.purchasePrice = purchasePrice
        self.vatRateType = vatRateType
        self.shippingCost = shippingCost
        self.shippingTime = shippingTime
        self.url = url
        self.imageUrl = imageUrl
        self.extraImageUrl1 = extraImageUrl1
        self.extraImageUrl2 = extraImageUrl2
        self.extraImageUrl3 = extraImageUrl3
        self.extraImageUrl4 = extraImageUrl4
        self.extraImageUrl5 = extraImageUrl5
        self.extraImageUrl6 = extraImageUrl6
        self.extraImageUrl7 = extraImageUrl7
        self.extraImageUrl8 = extraImageUrl8
        self.extraImageUrl9 = extraImageUrl9
        self.categoryTrail = categoryTrail
    }

    public enum CodingKeys: String, CodingKey { 
        case isActive = "IsActive"
        case merchantProductNo = "MerchantProductNo"
        case extraData = "ExtraData"
        case name = "Name"
        case _description = "Description"
        case brand = "Brand"
        case size = "Size"
        case color = "Color"
        case ean = "Ean"
        case manufacturerProductNumber = "ManufacturerProductNumber"
        case stock = "Stock"
        case price = "Price"
        case MSRP
        case purchasePrice = "PurchasePrice"
        case vatRateType = "VatRateType"
        case shippingCost = "ShippingCost"
        case shippingTime = "ShippingTime"
        case url = "Url"
        case imageUrl = "ImageUrl"
        case extraImageUrl1 = "ExtraImageUrl1"
        case extraImageUrl2 = "ExtraImageUrl2"
        case extraImageUrl3 = "ExtraImageUrl3"
        case extraImageUrl4 = "ExtraImageUrl4"
        case extraImageUrl5 = "ExtraImageUrl5"
        case extraImageUrl6 = "ExtraImageUrl6"
        case extraImageUrl7 = "ExtraImageUrl7"
        case extraImageUrl8 = "ExtraImageUrl8"
        case extraImageUrl9 = "ExtraImageUrl9"
        case categoryTrail = "CategoryTrail"
    }


}

