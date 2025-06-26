enum Languages: CaseIterable {
    // MARK: - Properties

    case de, en

    var localized: String {
        switch self {
        case .de:
            return "DE"
        case .en:
            return "EN"
        }
    }

    var path: String {
        switch self {
        case .de:
            return "/de"
        case .en:
            return "/en"
        }
    }
}
