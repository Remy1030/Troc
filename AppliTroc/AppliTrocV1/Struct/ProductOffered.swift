import Foundation

struct ProductOffered: Identifiable {
    var id = UUID()
    var name: String
}
let productOffereds = [
    ProductOffered(name: "Pomme"),
    ProductOffered(name: "Tomates"),
    ProductOffered(name: "Pommes de Terre")
]
