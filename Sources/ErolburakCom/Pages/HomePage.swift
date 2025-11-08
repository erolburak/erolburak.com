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
        VStack(spacing: .zero) {
            HeaderHtml(
                endpoint: endpoint,
                language: language
            )

            VStack(spacing: 24) {
                VStack(alignment: .leading) {
                    Text("BURAK EROL")
                        .font(.title4)
                        .fontWeight(.black)

                    Text(language == .en ? "SENIOR IOS DEVELOPER" : "SENIOR IOS ENTWICKLER")
                        .font(.title6)
                        .fontWeight(.thin)
                }
                .frame(width: .percent(100%))

                Image("/images/burakerol.png")
                    .frame(width: .percent(75%))
            }
            .class("body-content")
            .frame(width: .percent(100%))
            .padding(
                .bottom,
                64
            )
            .padding(
                [
                    .horizontal,
                    .top,
                ]
            )
        }
    }
}
