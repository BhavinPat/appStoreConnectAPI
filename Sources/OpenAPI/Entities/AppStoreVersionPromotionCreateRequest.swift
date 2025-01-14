// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation

public struct AppStoreVersionPromotionCreateRequest: Codable {
	public var data: Data

	public struct Data: Codable {
		public var type: `Type`
		public var relationships: Relationships

		public enum `Type`: String, Codable, CaseIterable {
			case appStoreVersionPromotions
		}

		public struct Relationships: Codable {
			public var appStoreVersion: AppStoreVersion
			public var appStoreVersionExperimentTreatment: AppStoreVersionExperimentTreatment

			public struct AppStoreVersion: Codable {
				public var data: Data

				public struct Data: Codable {
					public var type: `Type`
					public var id: String

					public enum `Type`: String, Codable, CaseIterable {
						case appStoreVersions
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

			public struct AppStoreVersionExperimentTreatment: Codable {
				public var data: Data

				public struct Data: Codable {
					public var type: `Type`
					public var id: String

					public enum `Type`: String, Codable, CaseIterable {
						case appStoreVersionExperimentTreatments
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

			public init(appStoreVersion: AppStoreVersion, appStoreVersionExperimentTreatment: AppStoreVersionExperimentTreatment) {
				self.appStoreVersion = appStoreVersion
				self.appStoreVersionExperimentTreatment = appStoreVersionExperimentTreatment
			}
		}

		public init(type: `Type`, relationships: Relationships) {
			self.type = type
			self.relationships = relationships
		}
	}

	public init(data: Data) {
		self.data = data
	}
}
