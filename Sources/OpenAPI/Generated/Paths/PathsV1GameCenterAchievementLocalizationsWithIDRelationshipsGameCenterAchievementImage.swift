// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.GameCenterAchievementLocalizations.WithID.Relationships {
	public var gameCenterAchievementImage: GameCenterAchievementImage {
		GameCenterAchievementImage(path: path + "/gameCenterAchievementImage")
	}

	public struct GameCenterAchievementImage {
		/// Path: `/v1/gameCenterAchievementLocalizations/{id}/relationships/gameCenterAchievementImage`
		public let path: String
	}
}
