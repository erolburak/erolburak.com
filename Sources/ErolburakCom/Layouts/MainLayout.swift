import Ignite

struct MainLayout: Layout {
    // MARK: - Layouts

    var body: some Document {
        Head {
            for size in Sizes.AppleTouch.allCases {
                MetaLink(
                    href: "/fav/apple-touch-icon-\(size.localized).png",
                    rel: "apple-touch-icon"
                )
                .customAttribute(
                    name: "sizes",
                    value: size.localized
                )
            }

            for size in Sizes.Fav.allCases {
                MetaLink(
                    href: "/fav/favicon-\(size.localized).png",
                    rel: .icon
                )
                .customAttribute(
                    name: "type",
                    value: "image/png"
                )
                .customAttribute(
                    name: "sizes",
                    value: size.localized
                )
            }

            MetaLink(
                href: "/fav/favicon.ico",
                rel: "shortcut icon"
            )

            MetaLink(
                href: "/fav/favicon.svg",
                rel: .icon
            )
            .customAttribute(
                name: "type",
                value: "image/svg+xml"
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
