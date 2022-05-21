// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: users.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

///Тип счёта.
public enum AccountType: SwiftProtobuf.Enum {
  public typealias RawValue = Int

  ///Тип аккаунта не определён.
  case unspecified // = 0

  ///Брокерский счёт Тинькофф.
  case tinkoff // = 1

  ///ИИС счёт.
  case tinkoffIis // = 2

  ///Инвесткопилка.
  case investBox // = 3
  case UNRECOGNIZED(Int)

  public init() {
    self = .unspecified
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .unspecified
    case 1: self = .tinkoff
    case 2: self = .tinkoffIis
    case 3: self = .investBox
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .unspecified: return 0
    case .tinkoff: return 1
    case .tinkoffIis: return 2
    case .investBox: return 3
    case .UNRECOGNIZED(let i): return i
    }
  }

}

#if swift(>=4.2)

extension AccountType: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [AccountType] = [
    .unspecified,
    .tinkoff,
    .tinkoffIis,
    .investBox,
  ]
}

#endif  // swift(>=4.2)

///Статус счёта.
public enum AccountStatus: SwiftProtobuf.Enum {
  public typealias RawValue = Int

  ///Статус счёта не определён.
  case unspecified // = 0

  ///Новый, в процессе открытия.
  case new // = 1

  ///Открытый и активный счёт.
  case `open` // = 2

  ///Закрытый счёт.
  case closed // = 3
  case UNRECOGNIZED(Int)

  public init() {
    self = .unspecified
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .unspecified
    case 1: self = .new
    case 2: self = .open
    case 3: self = .closed
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .unspecified: return 0
    case .new: return 1
    case .open: return 2
    case .closed: return 3
    case .UNRECOGNIZED(let i): return i
    }
  }

}

#if swift(>=4.2)

extension AccountStatus: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [AccountStatus] = [
    .unspecified,
    .new,
    .open,
    .closed,
  ]
}

#endif  // swift(>=4.2)

///Уровень доступа к счёту.
public enum AccessLevel: SwiftProtobuf.Enum {
  public typealias RawValue = Int

  ///Уровень доступа не определён.
  case accountAccessLevelUnspecified // = 0

  ///Полный доступ к счёту.
  case accountAccessLevelFullAccess // = 1

  ///Доступ с уровнем прав "только чтение".
  case accountAccessLevelReadOnly // = 2

  ///Доступ отсутствует.
  case accountAccessLevelNoAccess // = 3
  case UNRECOGNIZED(Int)

  public init() {
    self = .accountAccessLevelUnspecified
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .accountAccessLevelUnspecified
    case 1: self = .accountAccessLevelFullAccess
    case 2: self = .accountAccessLevelReadOnly
    case 3: self = .accountAccessLevelNoAccess
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .accountAccessLevelUnspecified: return 0
    case .accountAccessLevelFullAccess: return 1
    case .accountAccessLevelReadOnly: return 2
    case .accountAccessLevelNoAccess: return 3
    case .UNRECOGNIZED(let i): return i
    }
  }

}

#if swift(>=4.2)

extension AccessLevel: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [AccessLevel] = [
    .accountAccessLevelUnspecified,
    .accountAccessLevelFullAccess,
    .accountAccessLevelReadOnly,
    .accountAccessLevelNoAccess,
  ]
}

#endif  // swift(>=4.2)

///Запрос получения счетов пользователя.
public struct GetAccountsRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

///Список счетов пользователя.
public struct GetAccountsResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Массив счетов клиента.
  public var accounts: [Account] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

///Информация о счёте.
public struct Account {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Идентификатор счёта.
  public var id: String = String()

  /// Тип счёта.
  public var type: AccountType = .unspecified

  /// Название счёта.
  public var name: String = String()

  /// Статус счёта.
  public var status: AccountStatus = .unspecified

  /// Дата открытия счёта в часовом поясе UTC.
  public var openedDate: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _openedDate ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_openedDate = newValue}
  }
  /// Returns true if `openedDate` has been explicitly set.
  public var hasOpenedDate: Bool {return self._openedDate != nil}
  /// Clears the value of `openedDate`. Subsequent reads from it will return its default value.
  public mutating func clearOpenedDate() {self._openedDate = nil}

  /// Дата закрытия счёта в часовом поясе UTC.
  public var closedDate: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _closedDate ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_closedDate = newValue}
  }
  /// Returns true if `closedDate` has been explicitly set.
  public var hasClosedDate: Bool {return self._closedDate != nil}
  /// Clears the value of `closedDate`. Subsequent reads from it will return its default value.
  public mutating func clearClosedDate() {self._closedDate = nil}

  /// Уровень доступа к текущему счёту (определяется токеном).
  public var accessLevel: AccessLevel = .accountAccessLevelUnspecified

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _openedDate: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
  fileprivate var _closedDate: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
}

///Запрос маржинальных показателей по счёту
public struct GetMarginAttributesRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Идентификатор счёта пользователя.
  public var accountID: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

///Маржинальные показатели по счёту.
public struct GetMarginAttributesResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Ликвидная стоимость портфеля. Подробнее: [что такое ликвидный портфель?](https://help.tinkoff.ru/margin-trade/short/liquid-portfolio/).
  public var liquidPortfolio: MoneyValue {
    get {return _liquidPortfolio ?? MoneyValue()}
    set {_liquidPortfolio = newValue}
  }
  /// Returns true if `liquidPortfolio` has been explicitly set.
  public var hasLiquidPortfolio: Bool {return self._liquidPortfolio != nil}
  /// Clears the value of `liquidPortfolio`. Subsequent reads from it will return its default value.
  public mutating func clearLiquidPortfolio() {self._liquidPortfolio = nil}

  /// Начальная маржа — начальное обеспечение для совершения новой сделки. Подробнее: [начальная и минимальная маржа](https://help.tinkoff.ru/margin-trade/short/initial-and-maintenance-margin/).
  public var startingMargin: MoneyValue {
    get {return _startingMargin ?? MoneyValue()}
    set {_startingMargin = newValue}
  }
  /// Returns true if `startingMargin` has been explicitly set.
  public var hasStartingMargin: Bool {return self._startingMargin != nil}
  /// Clears the value of `startingMargin`. Subsequent reads from it will return its default value.
  public mutating func clearStartingMargin() {self._startingMargin = nil}

  /// Минимальная маржа — это минимальное обеспечение для поддержания позиции, которую вы уже открыли. Подробнее: [начальная и минимальная маржа](https://help.tinkoff.ru/margin-trade/short/initial-and-maintenance-margin/).
  public var minimalMargin: MoneyValue {
    get {return _minimalMargin ?? MoneyValue()}
    set {_minimalMargin = newValue}
  }
  /// Returns true if `minimalMargin` has been explicitly set.
  public var hasMinimalMargin: Bool {return self._minimalMargin != nil}
  /// Clears the value of `minimalMargin`. Subsequent reads from it will return its default value.
  public mutating func clearMinimalMargin() {self._minimalMargin = nil}

  /// Уровень достаточности средств. Соотношение стоимости ликвидного портфеля к начальной марже.
  public var fundsSufficiencyLevel: Quotation {
    get {return _fundsSufficiencyLevel ?? Quotation()}
    set {_fundsSufficiencyLevel = newValue}
  }
  /// Returns true if `fundsSufficiencyLevel` has been explicitly set.
  public var hasFundsSufficiencyLevel: Bool {return self._fundsSufficiencyLevel != nil}
  /// Clears the value of `fundsSufficiencyLevel`. Subsequent reads from it will return its default value.
  public mutating func clearFundsSufficiencyLevel() {self._fundsSufficiencyLevel = nil}

  /// Объем недостающих средств. Разница между стартовой маржой и ликвидной стоимости портфеля.
  public var amountOfMissingFunds: MoneyValue {
    get {return _amountOfMissingFunds ?? MoneyValue()}
    set {_amountOfMissingFunds = newValue}
  }
  /// Returns true if `amountOfMissingFunds` has been explicitly set.
  public var hasAmountOfMissingFunds: Bool {return self._amountOfMissingFunds != nil}
  /// Clears the value of `amountOfMissingFunds`. Subsequent reads from it will return its default value.
  public mutating func clearAmountOfMissingFunds() {self._amountOfMissingFunds = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _liquidPortfolio: MoneyValue? = nil
  fileprivate var _startingMargin: MoneyValue? = nil
  fileprivate var _minimalMargin: MoneyValue? = nil
  fileprivate var _fundsSufficiencyLevel: Quotation? = nil
  fileprivate var _amountOfMissingFunds: MoneyValue? = nil
}

///Запрос текущих лимитов пользователя.
public struct GetUserTariffRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

///Текущие лимиты пользователя.
public struct GetUserTariffResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  ///Массив лимитов пользователя по unary-запросам
  public var unaryLimits: [UnaryLimit] = []

  ///Массив лимитов пользователей для stream-соединений
  public var streamLimits: [StreamLimit] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

///Лимит unary-методов.
public struct UnaryLimit {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  ///Количество unary-запросов в минуту
  public var limitPerMinute: Int32 = 0

  ///Названия методов
  public var methods: [String] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

///Лимит stream-соединений.
public struct StreamLimit {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  ///Максимальное количество stream-соединений
  public var limit: Int32 = 0

  ///Названия stream-методов
  public var streams: [String] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

///Запрос информации о пользователе.
public struct GetInfoRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

///Информация о пользователе.
public struct GetInfoResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  ///Признак премиум клиента.
  public var premStatus: Bool = false

  ///Признак квалифицированного инвестора.
  public var qualStatus: Bool = false

  ///Набор требующих тестирования инструментов и возможностей, с которыми может работать пользователь. [Подробнее](https://tinkoff.github.io/investAPI/faq_users/).
  public var qualifiedForWorkWith: [String] = []

  ///Наименование тарифа пользователя.
  public var tariff: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "tinkoff.public.invest.api.contract.v1"

extension AccountType: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "ACCOUNT_TYPE_UNSPECIFIED"),
    1: .same(proto: "ACCOUNT_TYPE_TINKOFF"),
    2: .same(proto: "ACCOUNT_TYPE_TINKOFF_IIS"),
    3: .same(proto: "ACCOUNT_TYPE_INVEST_BOX"),
  ]
}

extension AccountStatus: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "ACCOUNT_STATUS_UNSPECIFIED"),
    1: .same(proto: "ACCOUNT_STATUS_NEW"),
    2: .same(proto: "ACCOUNT_STATUS_OPEN"),
    3: .same(proto: "ACCOUNT_STATUS_CLOSED"),
  ]
}

extension AccessLevel: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "ACCOUNT_ACCESS_LEVEL_UNSPECIFIED"),
    1: .same(proto: "ACCOUNT_ACCESS_LEVEL_FULL_ACCESS"),
    2: .same(proto: "ACCOUNT_ACCESS_LEVEL_READ_ONLY"),
    3: .same(proto: "ACCOUNT_ACCESS_LEVEL_NO_ACCESS"),
  ]
}

extension GetAccountsRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".GetAccountsRequest"
  public static let _protobuf_nameMap = SwiftProtobuf._NameMap()

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let _ = try decoder.nextFieldNumber() {
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: GetAccountsRequest, rhs: GetAccountsRequest) -> Bool {
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension GetAccountsResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".GetAccountsResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "accounts"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.accounts) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.accounts.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.accounts, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: GetAccountsResponse, rhs: GetAccountsResponse) -> Bool {
    if lhs.accounts != rhs.accounts {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Account: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Account"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "id"),
    2: .same(proto: "type"),
    3: .same(proto: "name"),
    4: .same(proto: "status"),
    5: .standard(proto: "opened_date"),
    6: .standard(proto: "closed_date"),
    7: .standard(proto: "access_level"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.id) }()
      case 2: try { try decoder.decodeSingularEnumField(value: &self.type) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.name) }()
      case 4: try { try decoder.decodeSingularEnumField(value: &self.status) }()
      case 5: try { try decoder.decodeSingularMessageField(value: &self._openedDate) }()
      case 6: try { try decoder.decodeSingularMessageField(value: &self._closedDate) }()
      case 7: try { try decoder.decodeSingularEnumField(value: &self.accessLevel) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    if !self.id.isEmpty {
      try visitor.visitSingularStringField(value: self.id, fieldNumber: 1)
    }
    if self.type != .unspecified {
      try visitor.visitSingularEnumField(value: self.type, fieldNumber: 2)
    }
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 3)
    }
    if self.status != .unspecified {
      try visitor.visitSingularEnumField(value: self.status, fieldNumber: 4)
    }
    try { if let v = self._openedDate {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
    } }()
    try { if let v = self._closedDate {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 6)
    } }()
    if self.accessLevel != .accountAccessLevelUnspecified {
      try visitor.visitSingularEnumField(value: self.accessLevel, fieldNumber: 7)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Account, rhs: Account) -> Bool {
    if lhs.id != rhs.id {return false}
    if lhs.type != rhs.type {return false}
    if lhs.name != rhs.name {return false}
    if lhs.status != rhs.status {return false}
    if lhs._openedDate != rhs._openedDate {return false}
    if lhs._closedDate != rhs._closedDate {return false}
    if lhs.accessLevel != rhs.accessLevel {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension GetMarginAttributesRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".GetMarginAttributesRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "account_id"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.accountID) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.accountID.isEmpty {
      try visitor.visitSingularStringField(value: self.accountID, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: GetMarginAttributesRequest, rhs: GetMarginAttributesRequest) -> Bool {
    if lhs.accountID != rhs.accountID {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension GetMarginAttributesResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".GetMarginAttributesResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "liquid_portfolio"),
    2: .standard(proto: "starting_margin"),
    3: .standard(proto: "minimal_margin"),
    4: .standard(proto: "funds_sufficiency_level"),
    5: .standard(proto: "amount_of_missing_funds"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._liquidPortfolio) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._startingMargin) }()
      case 3: try { try decoder.decodeSingularMessageField(value: &self._minimalMargin) }()
      case 4: try { try decoder.decodeSingularMessageField(value: &self._fundsSufficiencyLevel) }()
      case 5: try { try decoder.decodeSingularMessageField(value: &self._amountOfMissingFunds) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._liquidPortfolio {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    } }()
    try { if let v = self._startingMargin {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    } }()
    try { if let v = self._minimalMargin {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    } }()
    try { if let v = self._fundsSufficiencyLevel {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
    } }()
    try { if let v = self._amountOfMissingFunds {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: GetMarginAttributesResponse, rhs: GetMarginAttributesResponse) -> Bool {
    if lhs._liquidPortfolio != rhs._liquidPortfolio {return false}
    if lhs._startingMargin != rhs._startingMargin {return false}
    if lhs._minimalMargin != rhs._minimalMargin {return false}
    if lhs._fundsSufficiencyLevel != rhs._fundsSufficiencyLevel {return false}
    if lhs._amountOfMissingFunds != rhs._amountOfMissingFunds {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension GetUserTariffRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".GetUserTariffRequest"
  public static let _protobuf_nameMap = SwiftProtobuf._NameMap()

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let _ = try decoder.nextFieldNumber() {
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: GetUserTariffRequest, rhs: GetUserTariffRequest) -> Bool {
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension GetUserTariffResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".GetUserTariffResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "unary_limits"),
    2: .standard(proto: "stream_limits"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.unaryLimits) }()
      case 2: try { try decoder.decodeRepeatedMessageField(value: &self.streamLimits) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.unaryLimits.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.unaryLimits, fieldNumber: 1)
    }
    if !self.streamLimits.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.streamLimits, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: GetUserTariffResponse, rhs: GetUserTariffResponse) -> Bool {
    if lhs.unaryLimits != rhs.unaryLimits {return false}
    if lhs.streamLimits != rhs.streamLimits {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension UnaryLimit: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".UnaryLimit"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "limit_per_minute"),
    2: .same(proto: "methods"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularInt32Field(value: &self.limitPerMinute) }()
      case 2: try { try decoder.decodeRepeatedStringField(value: &self.methods) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.limitPerMinute != 0 {
      try visitor.visitSingularInt32Field(value: self.limitPerMinute, fieldNumber: 1)
    }
    if !self.methods.isEmpty {
      try visitor.visitRepeatedStringField(value: self.methods, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: UnaryLimit, rhs: UnaryLimit) -> Bool {
    if lhs.limitPerMinute != rhs.limitPerMinute {return false}
    if lhs.methods != rhs.methods {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension StreamLimit: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".StreamLimit"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "limit"),
    2: .same(proto: "streams"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularInt32Field(value: &self.limit) }()
      case 2: try { try decoder.decodeRepeatedStringField(value: &self.streams) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.limit != 0 {
      try visitor.visitSingularInt32Field(value: self.limit, fieldNumber: 1)
    }
    if !self.streams.isEmpty {
      try visitor.visitRepeatedStringField(value: self.streams, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: StreamLimit, rhs: StreamLimit) -> Bool {
    if lhs.limit != rhs.limit {return false}
    if lhs.streams != rhs.streams {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension GetInfoRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".GetInfoRequest"
  public static let _protobuf_nameMap = SwiftProtobuf._NameMap()

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let _ = try decoder.nextFieldNumber() {
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: GetInfoRequest, rhs: GetInfoRequest) -> Bool {
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension GetInfoResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".GetInfoResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "prem_status"),
    2: .standard(proto: "qual_status"),
    3: .standard(proto: "qualified_for_work_with"),
    4: .same(proto: "tariff"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularBoolField(value: &self.premStatus) }()
      case 2: try { try decoder.decodeSingularBoolField(value: &self.qualStatus) }()
      case 3: try { try decoder.decodeRepeatedStringField(value: &self.qualifiedForWorkWith) }()
      case 4: try { try decoder.decodeSingularStringField(value: &self.tariff) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.premStatus != false {
      try visitor.visitSingularBoolField(value: self.premStatus, fieldNumber: 1)
    }
    if self.qualStatus != false {
      try visitor.visitSingularBoolField(value: self.qualStatus, fieldNumber: 2)
    }
    if !self.qualifiedForWorkWith.isEmpty {
      try visitor.visitRepeatedStringField(value: self.qualifiedForWorkWith, fieldNumber: 3)
    }
    if !self.tariff.isEmpty {
      try visitor.visitSingularStringField(value: self.tariff, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: GetInfoResponse, rhs: GetInfoResponse) -> Bool {
    if lhs.premStatus != rhs.premStatus {return false}
    if lhs.qualStatus != rhs.qualStatus {return false}
    if lhs.qualifiedForWorkWith != rhs.qualifiedForWorkWith {return false}
    if lhs.tariff != rhs.tariff {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
