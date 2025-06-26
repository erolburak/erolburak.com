import Ignite

struct HeaderHtml: HTML {
    // MARK: - Properties

    let endpoint: Endpoints
    let language: Languages

    // MARK: - Layouts

    var body: some HTML {
        VStack {
            HStack(spacing: 4) {
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
                .class("link-image-and-language")
                .cornerRadius(8)
                .frame(
                    width: 32,
                    height: 32
                )
                .textDecoration(.none)
            }
            .frame(width: .percent(100%))
            .padding()

            Link(
                "[BE]",
                target: "\(ErolburakComWebsite.url)\(language.path)\(Endpoints.home.path)"
            )
            .class("link-title")
            .textDecoration(.none)
            .padding(.bottom)

            HStack(spacing: 40) {
                LinkSection(endpoint: .portfolio)

                LinkSection(endpoint: .aboutme)
            }
            .padding(
                .bottom,
                32
            )
        }
        .class("header")
    }

    private func LinkImage(
        image: String,
        target: String
    ) -> some InlineElement {
        Link(target: target) {
            Image(image)
                .class("image")
                .frame(
                    width: 16,
                    height: 16
                )
        }
        .target(.blank)
        .class("link-image-and-language")
        .cornerRadius(8)
        .frame(
            width: 32,
            height: 32
        )
        .textDecoration(.none)
    }

    private func LinkSection(endpoint: Endpoints) -> some InlineElement {
        Link(
            endpoint.title(language: language),
            target: "\(ErolburakComWebsite.url)\(language.path)\(endpoint.path)"
        )
        .class(self.endpoint == endpoint ? "link-section-selected" : "link-section")
        .cornerRadius(8)
        .frame(height: 40)
        .padding()
        .textDecoration(.none)
    }
}
