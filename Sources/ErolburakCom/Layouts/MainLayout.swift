import Ignite

struct MainLayout: Layout {
    // MARK: - Layouts

    var body: some Document {
        Head {
            MetaLink(
                href: "/css/styles.css",
                rel: .stylesheet
            )
        }

        Body {
            content
                .class("body-content")

            FooterHtml()
        }
        .ignorePageGutters()
    }
}
