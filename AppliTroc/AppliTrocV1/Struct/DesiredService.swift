import Foundation


struct DesiredService: Identifiable {
    var id = UUID()
    var name: String
}
let desiredServices = [
    DesiredService(name: "Elagage d'une parcelle"),
    DesiredService(name: "Déplacer une prise électrique"),
    DesiredService(name: "Cueillir les tomates")
]
