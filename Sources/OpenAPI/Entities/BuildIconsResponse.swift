// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation

public struct BuildIconsResponse: Codable {
	public var data: [BuildIcon]
	public var links: PagedDocumentLinks
	public var meta: PagingInformation?

	public init(data: [BuildIcon], links: PagedDocumentLinks, meta: PagingInformation? = nil) {
		self.data = data
		self.links = links
		self.meta = meta
	}
}
