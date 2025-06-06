//
//  ErolburakCom.swift
//
//
//  Created by Burak Erol on 20.10.23.
//

import Foundation
import Plot
import Publish

struct ErolburakCom: MultiLanguageWebsite {
    // MARK: - Type Definitions

    enum SectionID: String, WebsiteSectionID {
        case portfolio
        case aboutme
    }

    // MARK: - Properties

    let description = ""
    let favicon: Favicon? = Favicon(path: "/resources/fav.png")
    let language: Language = .english
    let languages = [Language.english,
                     Language.german]
    let name = "[BE]"
    let url = URL(string: "https://erolburak.com")!
    var imagePath: Path? { favicon?.path }

    struct ItemMetadata: MultiLanguageWebsiteItemMetadata {
        // MARK: - Properties

        var alternateLinkIdentifier: String?
    }
}
