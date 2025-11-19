import Ignite

struct FooterHtml: HTML {
    // MARK: - Layouts

    var body: some HTML {
        Group {
            Text("© Burak Erol")
                .padding(
                    .horizontal,
                    6
                )
                .padding(
                    .vertical,
                    2
                )

            Script(file: "/js/footer.js")
        }
        .class("footer")
        .cornerRadius(6)
        .font(.xxxSmall)
        .fontWeight(.thin)
        .horizontalAlignment(.trailing)
        .margin()
        .style(
            .bottom,
            "0"
        )
        .style(
            .position,
            "fixed"
        )
        .style(
            .right,
            "0"
        )
        .id("footer")
    }
}
