// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation

public struct AppPreview: Codable {
	public var type: `Type`
	public var id: String
	public var attributes: Attributes?
	public var relationships: Relationships?
	public var links: ResourceLinks

	public enum `Type`: String, Codable, CaseIterable {
		case appPreviews
	}

	public struct Attributes: Codable {
		public var fileSize: Int?
		public var fileName: String?
		public var sourceFileChecksum: String?
		public var previewFrameTimeCode: String?
		public var mimeType: String?
		public var videoURL: String?
		public var previewImage: ImageAsset?
		public var uploadOperations: [UploadOperation]?
		public var assetDeliveryState: AppMediaAssetState?

		public init(fileSize: Int? = nil, fileName: String? = nil, sourceFileChecksum: String? = nil, previewFrameTimeCode: String? = nil, mimeType: String? = nil, videoURL: String? = nil, previewImage: ImageAsset? = nil, uploadOperations: [UploadOperation]? = nil, assetDeliveryState: AppMediaAssetState? = nil) {
			self.fileSize = fileSize
			self.fileName = fileName
			self.sourceFileChecksum = sourceFileChecksum
			self.previewFrameTimeCode = previewFrameTimeCode
			self.mimeType = mimeType
			self.videoURL = videoURL
			self.previewImage = previewImage
			self.uploadOperations = uploadOperations
			self.assetDeliveryState = assetDeliveryState
		}

		private enum CodingKeys: String, CodingKey {
			case fileSize
			case fileName
			case sourceFileChecksum
			case previewFrameTimeCode
			case mimeType
			case videoURL = "videoUrl"
			case previewImage
			case uploadOperations
			case assetDeliveryState
		}
	}

	public struct Relationships: Codable {
		public var appPreviewSet: AppPreviewSet?

		public struct AppPreviewSet: Codable {
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
					case appPreviewSets
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

		public init(appPreviewSet: AppPreviewSet? = nil) {
			self.appPreviewSet = appPreviewSet
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
