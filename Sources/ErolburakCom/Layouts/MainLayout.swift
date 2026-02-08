import Ignite

struct MainLayout: Layout {
    // MARK: - Layouts

    var body: some Document {
        Head {
            MetaLink(
                href: "/site.webmanifest",
                rel: .manifest
            )

            MetaTag(
                name: "apple-mobile-web-app-title",
                content: "erolburak.com"
            )

            MetaLink(
                href: "/icons/apple-touch.png",
                rel: "apple-touch-icon"
            )

            MetaLink(
                href: "/icons/fav.svg",
                rel: .icon
            )
            .customAttribute(
                name: "type",
                value: "image/svg+xml"
            )

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
