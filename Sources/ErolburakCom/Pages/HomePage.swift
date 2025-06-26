import Ignite

struct HomePage: StaticPage {
    // MARK: - Properties

    let endpoint: Endpoints
    let language: Languages

    var path: String {
        "\(language.path)\(endpoint.path)"
    }

    var title: String {
        endpoint.title(language: language)
    }

    // MARK: - Layouts

    var body: some HTML {
        HeaderHtml(
            endpoint: endpoint,
            language: language
        )

        VStack(spacing: .zero) {
            Text("BURAK EROL")
                .font(.title2)
                .fontWeight(.black)

            Text(language == .en ? "SENIOR IOS DEVELOPER" : "SENIOR IOS ENTWICKLER")
                .font(.title4)
                .fontWeight(.ultraLight)
                .foregroundStyle(.darkGray)
                .padding(
                    .bottom,
                    32
                )

            Image("/images/burakerol.png")
                .frame(width: .percent(75%))
        }
        .class("body")
        .horizontalAlignment(.center)
    }
}
