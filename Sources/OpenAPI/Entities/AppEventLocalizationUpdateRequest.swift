// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation

public struct AppEventLocalizationUpdateRequest: Codable {
	public var data: Data

	public struct Data: Codable {
		public var type: `Type`
		public var id: String
		public var attributes: Attributes?

		public enum `Type`: String, Codable, CaseIterable {
			case appEventLocalizations
		}

		public struct Attributes: Codable {
			public var name: String?
			public var shortDescription: String?
			public var longDescription: String?

			public init(name: String? = nil, shortDescription: String? = nil, longDescription: String? = nil) {
				self.name = name
				self.shortDescription = shortDescription
				self.longDescription = longDescription
			}
		}

		public init(type: `Type`, id: String, attributes: Attributes? = nil) {
			self.type = type
			self.id = id
			self.attributes = attributes
		}
	}

	public init(data: Data) {
		self.data = data
	}
}
