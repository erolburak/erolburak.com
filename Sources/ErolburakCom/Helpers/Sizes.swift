enum Sizes {
    // MARK: - Properties

    enum AppleTouch: CaseIterable {
        // MARK: - Properties

        case `57`, `60`, `72`, `76`, `114`, `120`, `144`, `152`, `167`, `180`, `1024`

        var localized: String {
            switch self {
            case .`57`:
                "57x57"
            case .`60`:
                "60x60"
            case .`72`:
                "72x72"
            case .`76`:
                "76x76"
            case .`114`:
                "114x114"
            case .`120`:
                "120x120"
            case .`144`:
                "144x144"
            case .`152`:
                "152x152"
            case .`167`:
                "167x167"
            case .`180`:
                "180x180"
            case .`1024`:
                "1024x1024"
            }
        }
    }

    enum Fav: CaseIterable {
        // MARK: - Properties

        case `16`, `32`, `48`, `64`, `96`

        var localized: String {
            switch self {
            case .`16`:
                "16x16"
            case .`32`:
                "32x32"
            case .`48`:
                "48x48"
            case .`64`:
                "64x64"
            case .`96`:
                "96x96"
            }
        }
    }
}
