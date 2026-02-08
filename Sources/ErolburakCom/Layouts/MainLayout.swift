import Ignite

struct MainLayout: Layout {
    // MARK: - Layouts

    var body: some Document {
        Head {
            MetaLink(
                href: "/css/styles.css",
                rel: .stylesheet
            )

            MetaTag(
                name: "apple-mobile-web-app-title",
                content: "erolburak.com"
            )

            MetaLink(
                href: "/icons/fav-180x180.png",
                rel: "apple-touch-icon"
            )
            .customAttribute(
                name: "sizes",
                value: "180x180"
            )

            MetaLink(
                href: "/icons/fav-1024x1024.png",
                rel: "apple-touch-icon"
            )
            .customAttribute(
                name: "sizes",
                value: "1024x1024"
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
                href: "/icons/mask.svg",
                rel: "mask-icon"
            )

            MetaLink(
                href: "/icons/fav.ico",
                rel: .icon
            )
            .customAttribute(
                name: "type",
                value: "image/x-icon"
            )

            MetaLink(
                href: "/icons/fav.ico",
                rel: "shortcut icon"
            )
            .customAttribute(
                name: "type",
                value: "image/x-icon"
            )

            MetaLink(
                href: "/site.webmanifest",
                rel: .manifest
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
