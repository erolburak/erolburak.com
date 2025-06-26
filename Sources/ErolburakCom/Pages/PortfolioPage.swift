import Ignite

struct PortfolioPage: StaticPage {
    // MARK: - Properties

    let endpoint: Endpoints
    let language: Languages

    var path: String {
        "\(language.path)\(endpoint.path)"
    }

    var title: String {
        endpoint.title(language: language)
    }

    // MARK: - Layouts

    var body: some HTML {
        HeaderHtml(
            endpoint: endpoint,
            language: language
        )

        VStack(spacing: 80) {
            PortfolioSection(
                image: "/images/github.svg",
                markdown: language == .en
                    ? "<b>erolburak.com</b> is my own project, which is used to create a static website that I developed using <a href=\"https://github.com/twostraws/Ignite\" target=\"_blank\">Ignite</a>. The website contains my portfolio as a Senior iOS Developer and information about me. The portfolio area lists my private apps, which can be viewed publicly on my <a href=\"https://github.com/erolburak\" target=\"_blank\">GitHub Profile</a>, but also apps that I have worked on as an employee. The project and current screenshots can be found on my <a href=\"https://github.com/erolburak/erolburak.com\" target=\"_blank\">GitHub Profile</a>."
                    : "<b>erolburak.com</b> ist ein eigenes Projekt von mir, welche zur Erstellung einer statischen Webseite dient, die ich mithilfe von <a href=\"https://github.com/twostraws/Ignite\" target=\"_blank\">Ignite</a> entwickelt habe. Die Webeite beinhaltet mein Portfolio als Senior iOS Entwickler und Informationen über mich. Im Portfolio Bereich werden meine privaten Apps gelistet, die man sich öffentlich auf meinem <a href=\"https://github.com/erolburak\" target=\"_blank\">GitHub Profil</a> ansehen kann, aber auch Apps an denen ich als Angestellter mitgewirkt habe. Das Projekt und aktuelle Screenshots findet man auf meinem <a href=\"https://github.com/erolburak/erolburak.com\" target=\"_blank\">GitHub Profil</a>.",
                target: "https://github.com/erolburak/erolburak.com",
                title: "EROLBURAK.COM"
            )

            PortfolioSection(
                image: "/images/github.svg",
                markdown: language == .en
                    ? "The <b>BobbysNews</b> app is also my own project, which uses a public API to retrieve headlines from across the web. These headlines are displayed in a list and also contain a detail page for more information. The project and current screenshots can be found on my <a href=\"https://github.com/erolburak/bobbysnews\" target=\"_blank\">GitHub Profile</a>."
                    : "Die <b>BobbysNews</b> App ist ebenfalls ein eigenes Projekt von mir, welches eine öffentliche API zum Abrufen von Schlagzeilen aus dem gesamten Web nutzt. Diese Schlagzeilen werden in einer Liste angezeigt und enthalten ebenfalls eine Detailseite für mehr Informationen. Das Projekt und aktuelle Screenshots findet man auf meinem <a href=\"https://github.com/erolburak/bobbysnews\" target=\"_blank\">GitHub Profil</a>.",
                target: "https://github.com/erolburak/bobbysnews",
                title: "BOBBYSNEWS"
            )

            PortfolioSection(
                image: "/images/github.svg",
                markdown: language == .en
                    ? "Also the <b>BobbysCounter</b> app is my own project, which can increase and decrease a counter value. Such a value can be created for each day. The values entered for the last few days and weeks are visualized in a chart and displayed in a list. The average of the last 7, 30 and 90 counter values is displayed in a separate view. In addition, today's value can be edited in a widget. The project and current screenshots can be found on my <a href=\"https://github.com/erolburak/bobbyscounter\" target=\"_blank\">GitHub Profile</a>."
                    : "Auch die <b>BobbysCounter</b> App ist ein eigenes Projekt von mir, das einen Zählerwert erhöhen und verringern kann. Für jeden Tag kann ein solcher Wert angelegt werden. Die eingetragenen Werte der letzten Tage und Wochen werden in einem Chart visualisiert und in einer Liste angezeigt. Der Durchschnitt der letzten 7, 30 und 90 Zählerwerte wird in einer separaten Ansicht angezeigt. Zusätzlich kann der Wert des heutigen Tages in einem Widget editiert werden. Das Projekt und aktuelle Screenshots findet man auf meinem <a href=\"https://github.com/erolburak/bobbyscounter\" target=\"_blank\">GitHub Profil</a>.",
                target: "https://github.com/erolburak/bobbyscounter",
                title: "BOBBYSCOUNTER"
            )

            PortfolioSection(
                image: "/images/appstore.svg",
                markdown: language == .en
                    ? "The <b>BARMER eCare</b> app represents the electronic patient records and is available exclusively to BARMER insurance holders. Medical, laboratory or surgery reports can be saved and shared with doctors if necessary. The app and current screenshots can be found in the <a href=\"https://apps.apple.com/app/id1509460198\" target=\"_blank\">App Store</a>."
                    : "Die <b>BARMER eCare</b> App stellt die elektronische Patientenakte dar und steht exklusiv BARMER-Versicherten zur Verfügung. Arztbriefe, Laborbefunde oder OP-Berichte können abgespeichert und bei Bedarf mit Ärztinnen und Ärzten geteilt werden. Die App und aktuelle Screenshots findet man im <a href=\"https://apps.apple.com/de/app/id1509460198\" target=\"_blank\">App Store</a>.",
                target: language == .en
                    ? "https://apps.apple.com/app/id1509460198"
                    : "https://apps.apple.com/de/app/id1509460198",
                title: "BARMER ECARE"
            )

            PortfolioSection(
                image: "/images/appstore.svg",
                markdown: language == .en
                    ? "The <b>CLAAS connect Farm Management</b> app offers the digital solution for field and core data management and illustrates this information in a clear format. Important resources such as machines, employees, equipment and fields can be created and managed. For optimal management, the map provides information about the position and status of the machines. The app and current screenshots can be found in the <a href=\"https://apps.apple.com/app/id6475955826\" target=\"_blank\">App Store</a>."
                    : "Die <b>CLAAS connect Farm Management</b> App bietet die digitale Lösung für die Schlag- und Stammdatenverwaltung an und veranschaulicht diese Informationen in einer übersichtlichen Form. Wichtige Resourcen wie Maschinen, Mitarbeitende, Betriebsmittel und Schläge können angelegt und verwaltet werden. Für ein optimales Management gibt die Karte Auskunft über die Position und den Status der Maschinen. Die App und aktuelle Screenshots findet man im <a href=\"https://apps.apple.com/de/app/id6475955826\" target=\"_blank\">App Store</a>.",
                target: language == .en
                    ? "https://apps.apple.com/app/id6475955826"
                    : "https://apps.apple.com/de/app/id6475955826",
                title: "CLAAS CONNECT FARM MANAGEMENT"
            )

            PortfolioSection(
                image: "/images/appstore.svg",
                markdown: language == .en
                    ? "The <b>infield</b> app offers the option of searching for festivals or events and clearly illustrating important related information. Information such as timetables and programs are offered, as well as the opportunity to purchase tickets. To give it a social touch, camps can be created and managed in which members of a camp can plan and organize a festival trip together. The app and current screenshots can be found in the <a href=\"https://apps.apple.com/app/id1577521278\" target=\"_blank\">App Store</a>."
                    : "Die <b>infield</b> App bietet die Möglichkeit Festivals oder Events zu suchen und wichtige dazugehörige Informationen übersichtlich zu veranschaulichen. Informationen wie Timetables und Programme werden angeboten, sowie die Möglichkeit Tickets zu erwerben. Um dem ganzen einen sozialen Touch zu geben, können Camps angelegt und verwaltet werden, in denen Mitglieder eines Camps zusammen eine Festivalreise planen und organisieren können. Die App und aktuelle Screenshots findet man im <a href=\"https://apps.apple.com/de/app/id1577521278\" target=\"_blank\">App Store</a>.",
                target: language == .en
                    ? "https://apps.apple.com/app/id1577521278"
                    : "https://apps.apple.com/de/app/id1577521278",
                title: "INFIELD"
            )

            PortfolioSection(
                image: "/images/appstore.svg",
                markdown: language == .en
                    ? "The <b>Berliner Philharmoniker</b> app provides the video stream of various classical concerts, films and interviews from the Philharmonie Berlin, as well as over 40 live broadcasts per season. The app is based on a subscription model, as not all content is transmitted free of charge. The app and current screenshots can be found in the <a href=\"https://apps.apple.com/app/id554616591\" target=\"_blank\">App Store</a>."
                    : "Die <b>Berliner Philharmoniker</b> App stellt den Video-Stream verschiedener klassischer Konzerte, Filme und Interviews der Philharmonie Berlin zur Verfügung, sowie auch über 40 Live-Übertragungen pro Saison. Die App basiert auf einem Abo-Modell, da nicht alle Inhalte kostenfrei übertragen werden. Die App und aktuelle Screenshots findet man im <a href=\"https://apps.apple.com/de/app/id554616591\" target=\"_blank\">App Store</a>.",
                target: language == .en
                    ? "https://apps.apple.com/app/id554616591"
                    : "https://apps.apple.com/de/app/id554616591",
                title: "BERLINER PHILHARMONIKER"
            )
        }
        .class("body")
    }

    private func PortfolioSection(
        image: String,
        markdown: String,
        target: String,
        title: String
    ) -> some HTML {
        VStack(spacing: 32) {
            HStack {
                Text(title)
                    .font(.title2)
                    .fontWeight(.black)
                    .padding(.trailing)

                Spacer()

                Link(target: target) {
                    Image(image)
                        .class("image")
                        .frame(
                            width: 32,
                            height: 32
                        )
                }
                .target(.blank)
                .frame(
                    width: 32,
                    height: 32
                )
            }
            .frame(width: .percent(100%))

            Text(markdown: markdown)
                .font(.title4)
                .fontWeight(.thin)
        }
    }
}
