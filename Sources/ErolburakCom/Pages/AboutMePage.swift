import Ignite

struct AboutMePage: StaticPage {
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

        VStack(spacing: 32) {
            Text(language == .en ? "HELLO, WORLD!" : "HALLO, WELT!")
                .font(.title2)
                .fontWeight(.black)

            Text(
                markdown: language == .en
                    ? "I'm a Senior iOS Developer from Berlin and have been developing apps since 2016. I received my Bachelor of Science (B.Sc.) degree from the University of Applied Sciences Hof in the Mobile Computing course. My focus in this course was smartphone and tablet programming. That's how I ended up in the Apple cosmos while I was studying, and I've remained loyal to it ever since. You can get an impression of my portfolio [here](https://erolburak.com/en/portfolio)."
                    : "Ich bin ein Senior iOS Entwickler aus Berlin und entwickle Apps seit 2016. Den Bachelor of Science (B.Sc.) Abschluss habe ich an der Hochschule für Angewandte Wissenschaften Hof im Studiengang Mobile Computing erlangt. Meine Schwerpunkte in diesem Studiengang lagen in Smartphone- und Tablet-Programmierung. So hat es mich schon im Studium in den Apple Kosmos verschlagen, dem ich seitdem treu geblieben bin. [Hier](https://erolburak.com/de/portfolio) könnt ihr euch einen Eindruck über mein Portfolio verschaffen."
            )

            Text(
                language == .en
                    ? "Of course, I don't sit in front of the computer just all the time, but I like to spend my free time with the following hobbies:"
                    : "Natürlich sitze ich nicht die ganze Zeit nur vor dem Computer, sondern verbringe meine Freizeit gerne mit folgenden Hobbys:"
            )

            VStack(
                alignment: .leading,
                spacing: .zero
            ) {
                Text("• \(language == .en ? "Motorcycling" : "Motorrad fahren")")

                Text("• \(language == .en ? "Skateboarding" : "Skateboarden")")

                Text("• \(language == .en ? "Snowboarding" : "Snowboarden")")

                Text("• \(language == .en ? "Visiting concerts" : "Konzerte besuchen")")
            }
        }
        .class("body")
        .font(.title4)
        .fontWeight(.thin)
    }
}
