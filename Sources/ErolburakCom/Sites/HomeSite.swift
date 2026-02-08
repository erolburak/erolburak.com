import Ignite

struct HomeSite: Site {
    // MARK: - Properties

    let author = "Burak Erol"

    let homePage = HomePage(
        endpoint: .home,
        language: .en
    )

    let layout = MainLayout()
    let name = "HOME"
    let titleSuffix = " | [BE]"
    let url = URL(static: ErolburakComWebsite.url)

    var staticPages: [any StaticPage] {
        for language in Languages.allCases {
            AboutMePage(
                endpoint: .aboutme,
                language: language
            )
            HomePage(
                endpoint: .home,
                language: language
            )
            PortfolioPage(
                endpoint: .portfolio,
                language: language
            )
        }
    }
}
