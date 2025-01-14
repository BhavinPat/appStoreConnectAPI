// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation

public struct AppCustomProductPageVersion: Codable {
	public var type: `Type`
	public var id: String
	public var attributes: Attributes?
	public var relationships: Relationships?
	public var links: ResourceLinks

	public enum `Type`: String, Codable, CaseIterable {
		case appCustomProductPageVersions
	}

	public struct Attributes: Codable {
		public var version: String?
		public var state: State?

		public enum State: String, Codable, CaseIterable {
			case prepareForSubmission = "PREPARE_FOR_SUBMISSION"
			case readyForReview = "READY_FOR_REVIEW"
			case waitingForReview = "WAITING_FOR_REVIEW"
			case inReview = "IN_REVIEW"
			case accepted = "ACCEPTED"
			case approved = "APPROVED"
			case replacedWithNewVersion = "REPLACED_WITH_NEW_VERSION"
			case rejected = "REJECTED"
		}

		public init(version: String? = nil, state: State? = nil) {
			self.version = version
			self.state = state
		}
	}

	public struct Relationships: Codable {
		public var appCustomProductPage: AppCustomProductPage?
		public var appCustomProductPageLocalizations: AppCustomProductPageLocalizations?

		public struct AppCustomProductPage: Codable {
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
					case appCustomProductPages
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

		public struct AppCustomProductPageLocalizations: Codable {
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
					case appCustomProductPageLocalizations
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

		public init(appCustomProductPage: AppCustomProductPage? = nil, appCustomProductPageLocalizations: AppCustomProductPageLocalizations? = nil) {
			self.appCustomProductPage = appCustomProductPage
			self.appCustomProductPageLocalizations = appCustomProductPageLocalizations
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
