//
//  SiteHeader.swift
//
//
//  Created by Burak Erol on 25.10.23.
//

import Plot
import Publish

struct SiteHeader<Site: Website>: Component {
    // MARK: - Private Properties

    private var languagePath: String { language == .german ? "/de/" : "/en/" }

    // MARK: - Properties

    let context: PublishingContext<Site>
    let language: Language
    let selectedSectionId: Site.SectionID?

    // MARK: - Layouts

    var body: Component {
        Header {
            let lastPath = selectedSectionId != nil ? context.sections[selectedSectionId!].path.string + "/" : ""

            Wrapper {
                Wrapper {
                    LinkImage(image: Image("/resources/linkedin.svg"),
                              url: "https://linkedin.com/in/burakerol44")

                    LinkImage(image: Image("/resources/github.svg"),
                              url: "https://github.com/erolburak")

                    LinkImage(image: Image("/resources/email.svg"),
                              url: "mailto:erolburak@icloud.com")
                }
                .class("wrapper-links-left")

                Wrapper {
                    Link(language == .german ? "DE" : "EN",
                         url: (language == .german ? "/en/" : "/de/") + lastPath)
                        .class("link-language")
                }
                .class("wrapper-link-language")
            }
            .class("wrapper-links")

            Wrapper {
                Link(context.site.name.uppercased(),
                     url: languagePath)
                    .class("site-name")

                Section()
            }
            .class("wrapper")
        }
    }

    private func Section() -> Component {
        Navigation {
            List(Site.SectionID.allCases) {
                let section = context.sections[$0]
                var title = ""

                if section.id.rawValue == ErolburakCom.SectionID.portfolio.rawValue {
                    title = "Portfolio"
                } else if section.id.rawValue == ErolburakCom.SectionID.aboutme.rawValue {
                    title = language == .german ? "Über mich" : "About me"
                }

                return Link(title.uppercased(),
                            url: languagePath + section.path.string)
                    .class($0 == selectedSectionId ? "selected" : "")
            }
        }
    }
}
