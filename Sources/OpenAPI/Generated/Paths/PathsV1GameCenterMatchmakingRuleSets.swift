// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1 {
	public var gameCenterMatchmakingRuleSets: GameCenterMatchmakingRuleSets {
		GameCenterMatchmakingRuleSets(path: path + "/gameCenterMatchmakingRuleSets")
	}

	public struct GameCenterMatchmakingRuleSets {
		/// Path: `/v1/gameCenterMatchmakingRuleSets`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.GameCenterMatchmakingRuleSetsResponse> {
			Request(path: path, method: "GET", query: parameters?.asQuery, id: "gameCenterMatchmakingRuleSets-get_collection")
		}

		public struct GetParameters {
			public var fieldsGameCenterMatchmakingRuleSets: [FieldsGameCenterMatchmakingRuleSets]?
			public var limit: Int?
			public var include: [Include]?
			public var fieldsGameCenterMatchmakingQueues: [FieldsGameCenterMatchmakingQueues]?
			public var fieldsGameCenterMatchmakingTeams: [FieldsGameCenterMatchmakingTeams]?
			public var fieldsGameCenterMatchmakingRules: [FieldsGameCenterMatchmakingRules]?
			public var limitMatchmakingQueues: Int?
			public var limitRules: Int?
			public var limitTeams: Int?

			public enum FieldsGameCenterMatchmakingRuleSets: String, Codable, CaseIterable {
				case matchmakingQueues
				case maxPlayers
				case minPlayers
				case referenceName
				case ruleLanguageVersion
				case rules
				case teams
			}

			public enum Include: String, Codable, CaseIterable {
				case matchmakingQueues
				case rules
				case teams
			}

			public enum FieldsGameCenterMatchmakingQueues: String, Codable, CaseIterable {
				case experimentRuleSet
				case referenceName
				case ruleSet
			}

			public enum FieldsGameCenterMatchmakingTeams: String, Codable, CaseIterable {
				case maxPlayers
				case minPlayers
				case referenceName
				case ruleSet
			}

			public enum FieldsGameCenterMatchmakingRules: String, Codable, CaseIterable {
				case description
				case expression
				case referenceName
				case ruleSet
				case type
				case weight
			}

			public init(fieldsGameCenterMatchmakingRuleSets: [FieldsGameCenterMatchmakingRuleSets]? = nil, limit: Int? = nil, include: [Include]? = nil, fieldsGameCenterMatchmakingQueues: [FieldsGameCenterMatchmakingQueues]? = nil, fieldsGameCenterMatchmakingTeams: [FieldsGameCenterMatchmakingTeams]? = nil, fieldsGameCenterMatchmakingRules: [FieldsGameCenterMatchmakingRules]? = nil, limitMatchmakingQueues: Int? = nil, limitRules: Int? = nil, limitTeams: Int? = nil) {
				self.fieldsGameCenterMatchmakingRuleSets = fieldsGameCenterMatchmakingRuleSets
				self.limit = limit
				self.include = include
				self.fieldsGameCenterMatchmakingQueues = fieldsGameCenterMatchmakingQueues
				self.fieldsGameCenterMatchmakingTeams = fieldsGameCenterMatchmakingTeams
				self.fieldsGameCenterMatchmakingRules = fieldsGameCenterMatchmakingRules
				self.limitMatchmakingQueues = limitMatchmakingQueues
				self.limitRules = limitRules
				self.limitTeams = limitTeams
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(fieldsGameCenterMatchmakingRuleSets, forKey: "fields[gameCenterMatchmakingRuleSets]")
				encoder.encode(limit, forKey: "limit")
				encoder.encode(include, forKey: "include")
				encoder.encode(fieldsGameCenterMatchmakingQueues, forKey: "fields[gameCenterMatchmakingQueues]")
				encoder.encode(fieldsGameCenterMatchmakingTeams, forKey: "fields[gameCenterMatchmakingTeams]")
				encoder.encode(fieldsGameCenterMatchmakingRules, forKey: "fields[gameCenterMatchmakingRules]")
				encoder.encode(limitMatchmakingQueues, forKey: "limit[matchmakingQueues]")
				encoder.encode(limitRules, forKey: "limit[rules]")
				encoder.encode(limitTeams, forKey: "limit[teams]")
				return encoder.items
			}
		}

		public func post(_ body: AppStoreConnect_Swift_SDK.GameCenterMatchmakingRuleSetCreateRequest) -> Request<AppStoreConnect_Swift_SDK.GameCenterMatchmakingRuleSetResponse> {
			Request(path: path, method: "POST", body: body, id: "gameCenterMatchmakingRuleSets-create_instance")
		}
	}
}
