// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation

public struct ReviewSubmissionItemUpdateRequest: Codable {
	public var data: Data

	public struct Data: Codable {
		public var type: `Type`
		public var id: String
		public var attributes: Attributes?

		public enum `Type`: String, Codable, CaseIterable {
			case reviewSubmissionItems
		}

		public struct Attributes: Codable {
			public var isResolved: Bool?
			public var isRemoved: Bool?

			public init(isResolved: Bool? = nil, isRemoved: Bool? = nil) {
				self.isResolved = isResolved
				self.isRemoved = isRemoved
			}

			private enum CodingKeys: String, CodingKey {
				case isResolved = "resolved"
				case isRemoved = "removed"
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
