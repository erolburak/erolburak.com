import Ignite

@main
struct ErolburakComWebsite {
    // MARK: - Properties

    static let url: StaticString = "https://erolburak.com"

    // MARK: - Methods

    static func main() async {
        var homeSite = HomeSite()
        do {
            try await homeSite.publish()
        } catch {
            print(error.localizedDescription)
        }
    }
}
