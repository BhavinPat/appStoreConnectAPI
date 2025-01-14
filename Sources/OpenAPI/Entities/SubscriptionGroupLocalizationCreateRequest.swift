// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation

public struct SubscriptionGroupLocalizationCreateRequest: Codable {
	public var data: Data

	public struct Data: Codable {
		public var type: `Type`
		public var attributes: Attributes
		public var relationships: Relationships

		public enum `Type`: String, Codable, CaseIterable {
			case subscriptionGroupLocalizations
		}

		public struct Attributes: Codable {
			public var name: String
			public var customAppName: String?
			public var locale: String

			public init(name: String, customAppName: String? = nil, locale: String) {
				self.name = name
				self.customAppName = customAppName
				self.locale = locale
			}
		}

		public struct Relationships: Codable {
			public var subscriptionGroup: SubscriptionGroup

			public struct SubscriptionGroup: Codable {
				public var data: Data

				public struct Data: Codable {
					public var type: `Type`
					public var id: String

					public enum `Type`: String, Codable, CaseIterable {
						case subscriptionGroups
					}

					public init(type: `Type`, id: String) {
						self.type = type
						self.id = id
					}
				}

				public init(data: Data) {
					self.data = data
				}
			}

			public init(subscriptionGroup: SubscriptionGroup) {
				self.subscriptionGroup = subscriptionGroup
			}
		}

		public init(type: `Type`, attributes: Attributes, relationships: Relationships) {
			self.type = type
			self.attributes = attributes
			self.relationships = relationships
		}
	}

	public init(data: Data) {
		self.data = data
	}
}
