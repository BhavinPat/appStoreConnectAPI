// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation

public struct SubscriptionOfferCode: Codable {
	public var type: `Type`
	public var id: String
	public var attributes: Attributes?
	public var relationships: Relationships?
	public var links: ResourceLinks

	public enum `Type`: String, Codable, CaseIterable {
		case subscriptionOfferCodes
	}

	public struct Attributes: Codable {
		public var name: String?
		public var customerEligibilities: [SubscriptionCustomerEligibility]?
		public var offerEligibility: SubscriptionOfferEligibility?
		public var duration: SubscriptionOfferDuration?
		public var offerMode: SubscriptionOfferMode?
		public var numberOfPeriods: Int?
		public var totalNumberOfCodes: Int?
		public var isActive: Bool?

		public init(name: String? = nil, customerEligibilities: [SubscriptionCustomerEligibility]? = nil, offerEligibility: SubscriptionOfferEligibility? = nil, duration: SubscriptionOfferDuration? = nil, offerMode: SubscriptionOfferMode? = nil, numberOfPeriods: Int? = nil, totalNumberOfCodes: Int? = nil, isActive: Bool? = nil) {
			self.name = name
			self.customerEligibilities = customerEligibilities
			self.offerEligibility = offerEligibility
			self.duration = duration
			self.offerMode = offerMode
			self.numberOfPeriods = numberOfPeriods
			self.totalNumberOfCodes = totalNumberOfCodes
			self.isActive = isActive
		}

		private enum CodingKeys: String, CodingKey {
			case name
			case customerEligibilities
			case offerEligibility
			case duration
			case offerMode
			case numberOfPeriods
			case totalNumberOfCodes
			case isActive = "active"
		}
	}

	public struct Relationships: Codable {
		public var subscription: Subscription?
		public var oneTimeUseCodes: OneTimeUseCodes?
		public var customCodes: CustomCodes?
		public var prices: Prices?

		public struct Subscription: Codable {
			public var links: Links?
			public var data: Data?

			public struct Links: Codable {
				public var this: String?
				public var related: String?

				public init(this: String? = nil, related: String? = nil) {
					self.this = this
					self.related = related
				}

				private enum CodingKeys: String, CodingKey {
					case this = "self"
					case related
				}
			}

			public struct Data: Codable {
				public var type: `Type`
				public var id: String

				public enum `Type`: String, Codable, CaseIterable {
					case subscriptions
				}

				public init(type: `Type`, id: String) {
					self.type = type
					self.id = id
				}
			}

			public init(links: Links? = nil, data: Data? = nil) {
				self.links = links
				self.data = data
			}
		}

		public struct OneTimeUseCodes: Codable {
			public var links: Links?
			public var meta: PagingInformation?
			public var data: [Datum]?

			public struct Links: Codable {
				public var this: String?
				public var related: String?

				public init(this: String? = nil, related: String? = nil) {
					self.this = this
					self.related = related
				}

				private enum CodingKeys: String, CodingKey {
					case this = "self"
					case related
				}
			}

			public struct Datum: Codable {
				public var type: `Type`
				public var id: String

				public enum `Type`: String, Codable, CaseIterable {
					case subscriptionOfferCodeOneTimeUseCodes
				}

				public init(type: `Type`, id: String) {
					self.type = type
					self.id = id
				}
			}

			public init(links: Links? = nil, meta: PagingInformation? = nil, data: [Datum]? = nil) {
				self.links = links
				self.meta = meta
				self.data = data
			}
		}

		public struct CustomCodes: Codable {
			public var links: Links?
			public var meta: PagingInformation?
			public var data: [Datum]?

			public struct Links: Codable {
				public var this: String?
				public var related: String?

				public init(this: String? = nil, related: String? = nil) {
					self.this = this
					self.related = related
				}

				private enum CodingKeys: String, CodingKey {
					case this = "self"
					case related
				}
			}

			public struct Datum: Codable {
				public var type: `Type`
				public var id: String

				public enum `Type`: String, Codable, CaseIterable {
					case subscriptionOfferCodeCustomCodes
				}

				public init(type: `Type`, id: String) {
					self.type = type
					self.id = id
				}
			}

			public init(links: Links? = nil, meta: PagingInformation? = nil, data: [Datum]? = nil) {
				self.links = links
				self.meta = meta
				self.data = data
			}
		}

		public struct Prices: Codable {
			public var links: Links?
			public var meta: PagingInformation?
			public var data: [Datum]?

			public struct Links: Codable {
				public var this: String?
				public var related: String?

				public init(this: String? = nil, related: String? = nil) {
					self.this = this
					self.related = related
				}

				private enum CodingKeys: String, CodingKey {
					case this = "self"
					case related
				}
			}

			public struct Datum: Codable {
				public var type: `Type`
				public var id: String

				public enum `Type`: String, Codable, CaseIterable {
					case subscriptionOfferCodePrices
				}

				public init(type: `Type`, id: String) {
					self.type = type
					self.id = id
				}
			}

			public init(links: Links? = nil, meta: PagingInformation? = nil, data: [Datum]? = nil) {
				self.links = links
				self.meta = meta
				self.data = data
			}
		}

		public init(subscription: Subscription? = nil, oneTimeUseCodes: OneTimeUseCodes? = nil, customCodes: CustomCodes? = nil, prices: Prices? = nil) {
			self.subscription = subscription
			self.oneTimeUseCodes = oneTimeUseCodes
			self.customCodes = customCodes
			self.prices = prices
		}
	}

	public init(type: `Type`, id: String, attributes: Attributes? = nil, relationships: Relationships? = nil, links: ResourceLinks) {
		self.type = type
		self.id = id
		self.attributes = attributes
		self.relationships = relationships
		self.links = links
	}
}
