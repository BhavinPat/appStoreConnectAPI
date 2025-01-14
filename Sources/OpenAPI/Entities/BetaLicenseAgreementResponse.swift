// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation

public struct BetaLicenseAgreementResponse: Codable {
	/// BetaLicenseAgreement
	public var data: BetaLicenseAgreement
	public var included: [App]?
	public var links: DocumentLinks

	public init(data: BetaLicenseAgreement, included: [App]? = nil, links: DocumentLinks) {
		self.data = data
		self.included = included
		self.links = links
	}
}
