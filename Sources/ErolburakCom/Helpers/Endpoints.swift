enum Endpoints {
    // MARK: - Properties

    case aboutme, home, portfolio

    var path: String {
        switch self {
        case .aboutme:
            return "/aboutme"
        case .home:
            return "/home"
        case .portfolio:
            return "/portfolio"
        }
    }

    func title(language: Languages) -> String {
        switch self {
        case .aboutme:
            return language == .en ? "ABOUT ME" : "ÜBER MICH"
        case .home:
            return language == .en ? "HOME" : "STARTSEITE"
        case .portfolio:
            return "PORTFOLIO"
        }
    }
}
