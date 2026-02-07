import Ignite

struct MainLayout: Layout {
    // MARK: - Layouts

    var body: some Document {
        Head {
            MetaLink(
                href: "/fav/favicon-96x96.png",
                rel: .icon
            )
            .customAttribute(
                name: "type",
                value: "image/png"
            )
            .customAttribute(
                name: "sizes",
                value: "96x96"
            )

            MetaLink(
                href: "/fav/favicon.svg",
                rel: .icon
            )
            .customAttribute(
                name: "type",
                value: "image/svg+xml"
            )

            MetaLink(
                href: "/fav/favicon.ico",
                rel: "shortcut icon"
            )

            MetaLink(
                href: "/fav/apple-touch-icon.png",
                rel: "apple-touch-icon"
            )
            .customAttribute(
                name: "sizes",
                value: "180x180"
            )

            MetaTag(
                name: "apple-mobile-web-app-title",
                content: "Burak Erol"
            )

            MetaLink(
                href: "/fav/site.webmanifest",
                rel: .manifest
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
