// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.GameCenterDetails.WithID.Relationships {
	public var gameCenterAppVersions: GameCenterAppVersions {
		GameCenterAppVersions(path: path + "/gameCenterAppVersions")
	}

	public struct GameCenterAppVersions {
		/// Path: `/v1/gameCenterDetails/{id}/relationships/gameCenterAppVersions`
		public let path: String
	}
}
