import Ignite

struct FooterHtml: HTML {
    // MARK: - Layouts

    var body: some HTML {
        Text("")
            .class("footer")
            .cornerRadius(8)
            .font(.xxSmall)
            .id("footer")

        Script(file: "/js/footer.js")
    }
}
