// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation

public struct CiAction: Codable {
	public var name: String?
	public var actionType: CiActionType?
	public var destination: Destination?
	public var buildDistributionAudience: BuildAudienceType?
	public var testConfiguration: TestConfiguration?
	public var scheme: String?
	public var platform: Platform?
	public var isRequiredToPass: Bool?

	public enum Destination: String, Codable, CaseIterable {
		case anyIosDevice = "ANY_IOS_DEVICE"
		case anyIosSimulator = "ANY_IOS_SIMULATOR"
		case anyTvosDevice = "ANY_TVOS_DEVICE"
		case anyTvosSimulator = "ANY_TVOS_SIMULATOR"
		case anyWatchosDevice = "ANY_WATCHOS_DEVICE"
		case anyWatchosSimulator = "ANY_WATCHOS_SIMULATOR"
		case anyMac = "ANY_MAC"
		case anyMacCatalyst = "ANY_MAC_CATALYST"
	}

	public struct TestConfiguration: Codable {
		public var kind: Kind?
		public var testPlanName: String?
		public var testDestinations: [CiTestDestination]?

		public enum Kind: String, Codable, CaseIterable {
			case useSchemeSettings = "USE_SCHEME_SETTINGS"
			case specificTestPlans = "SPECIFIC_TEST_PLANS"
		}

		public init(kind: Kind? = nil, testPlanName: String? = nil, testDestinations: [CiTestDestination]? = nil) {
			self.kind = kind
			self.testPlanName = testPlanName
			self.testDestinations = testDestinations
		}
	}

	public enum Platform: String, Codable, CaseIterable {
		case macos = "MACOS"
		case ios = "IOS"
		case tvos = "TVOS"
		case watchos = "WATCHOS"
	}

	public init(name: String? = nil, actionType: CiActionType? = nil, destination: Destination? = nil, buildDistributionAudience: BuildAudienceType? = nil, testConfiguration: TestConfiguration? = nil, scheme: String? = nil, platform: Platform? = nil, isRequiredToPass: Bool? = nil) {
		self.name = name
		self.actionType = actionType
		self.destination = destination
		self.buildDistributionAudience = buildDistributionAudience
		self.testConfiguration = testConfiguration
		self.scheme = scheme
		self.platform = platform
		self.isRequiredToPass = isRequiredToPass
	}
}