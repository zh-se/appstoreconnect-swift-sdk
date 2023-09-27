// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation

public struct GameCenterLeaderboardsResponse: Codable {
	public var data: [GameCenterLeaderboard]
	public var included: [IncludedItem]?
	public var links: PagedDocumentLinks
	public var meta: PagingInformation?

	public enum IncludedItem: Codable {
		case gameCenterDetail(GameCenterDetail)
		case gameCenterGroup(GameCenterGroup)
		case gameCenterLeaderboard(GameCenterLeaderboard)
		case gameCenterLeaderboardSet(GameCenterLeaderboardSet)
		case gameCenterLeaderboardLocalization(GameCenterLeaderboardLocalization)
		case gameCenterLeaderboardRelease(GameCenterLeaderboardRelease)

		public init(from decoder: Decoder) throws {
			let container = try decoder.singleValueContainer()
			if let value = try? container.decode(GameCenterDetail.self) {
				self = .gameCenterDetail(value)
			} else if let value = try? container.decode(GameCenterGroup.self) {
				self = .gameCenterGroup(value)
			} else if let value = try? container.decode(GameCenterLeaderboard.self) {
				self = .gameCenterLeaderboard(value)
			} else if let value = try? container.decode(GameCenterLeaderboardSet.self) {
				self = .gameCenterLeaderboardSet(value)
			} else if let value = try? container.decode(GameCenterLeaderboardLocalization.self) {
				self = .gameCenterLeaderboardLocalization(value)
			} else if let value = try? container.decode(GameCenterLeaderboardRelease.self) {
				self = .gameCenterLeaderboardRelease(value)
			} else {
				throw DecodingError.dataCorruptedError(in: container, debugDescription: "Failed to intialize `oneOf`")
			}
		}

		public func encode(to encoder: Encoder) throws {
			var container = encoder.singleValueContainer()
			switch self {
			case .gameCenterDetail(let value): try container.encode(value)
			case .gameCenterGroup(let value): try container.encode(value)
			case .gameCenterLeaderboard(let value): try container.encode(value)
			case .gameCenterLeaderboardSet(let value): try container.encode(value)
			case .gameCenterLeaderboardLocalization(let value): try container.encode(value)
			case .gameCenterLeaderboardRelease(let value): try container.encode(value)
			}
		}
	}

	public init(data: [GameCenterLeaderboard], included: [IncludedItem]? = nil, links: PagedDocumentLinks, meta: PagingInformation? = nil) {
		self.data = data
		self.included = included
		self.links = links
		self.meta = meta
	}

	public init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: StringCodingKey.self)
		self.data = try values.decode([GameCenterLeaderboard].self, forKey: "data")
		self.included = try values.decodeIfPresent([IncludedItem].self, forKey: "included")
		self.links = try values.decode(PagedDocumentLinks.self, forKey: "links")
		self.meta = try values.decodeIfPresent(PagingInformation.self, forKey: "meta")
	}

	public func encode(to encoder: Encoder) throws {
		var values = encoder.container(keyedBy: StringCodingKey.self)
		try values.encode(data, forKey: "data")
		try values.encodeIfPresent(included, forKey: "included")
		try values.encode(links, forKey: "links")
		try values.encodeIfPresent(meta, forKey: "meta")
	}
}
