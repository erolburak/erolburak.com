import Ignite

struct HeaderHtml: HTML {
    // MARK: - Properties

    let endpoint: Endpoints
    let language: Languages

    // MARK: - Layouts

    var body: some HTML {
        VStack {
            VStack(
                alignment: .leading,
                spacing: 8
            ) {
                HStack {
                    LinkImage(
                        image: "/images/linkedin.svg",
                        target: "https://linkedin.com/in/burakerol44"
                    )

                    LinkImage(
                        image: "/images/github.svg",
                        target: "https://github.com/erolburak"
                    )

                    LinkImage(
                        image: "/images/email.svg",
                        target: "mailto:erolburak@icloud.com"
                    )

                    Spacer()

                    Link(
                        language == .en ? Languages.de.localized : Languages.en.localized,
                        target:
                            "\(ErolburakComWebsite.url)\(language == .en ? Languages.de.path : Languages.en.path)\(endpoint.path)"
                    )
                    .fontWeight(.black)
                    .textDecoration(.none)
                }
                .frame(width: .percent(100%))

                HStack {
                    LinkSection(endpoint: .home)

                    LinkSection(endpoint: .portfolio)

                    LinkSection(endpoint: .aboutme)
                }
            }
            .class("body-header")
            .frame(width: .percent(100%))
            .padding(.horizontal)
            .padding(
                .vertical,
                8
            )
        }
        .class("body-header-background")
        .position(.fixedTop)
        .style(
            .zIndex,
            "1"
        )
        .ignorePageGutters()
    }

    private func LinkImage(
        image: String,
        target: String
    ) -> some InlineElement {
        Link(target: target) {
            Image(image)
                .class("image")
                .frame(width: 16)
        }
        .target(.blank)
        .textDecoration(.none)
    }

    private func LinkSection(endpoint: Endpoints) -> some InlineElement {
        Link(
            endpoint.title(language: language),
            target: "\(ErolburakComWebsite.url)\(language.path)\(endpoint.path)"
        )
        .fontWeight(self.endpoint == endpoint ? .black : .thin)
        .textDecoration(.none)
    }
}
