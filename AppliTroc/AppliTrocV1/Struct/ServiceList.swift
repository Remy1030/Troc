import Foundation

struct Service: Identifiable {
    var id = UUID()
    var annonceTitle: String
    var productOffered: [ProductOffered]
    var desiredService: [DesiredService]
}

var serviceDone = [
            

    
    
    Service(annonceTitle: "Tomates",
            productOffered: [
                ProductOffered(name: "Tomates"),
                ProductOffered(name: "Pommes"),
                ProductOffered(name: "Pommes de Terre")],
            desiredService: [
                DesiredService(name: "Elaguer potager"),
                DesiredService(name: "Ramasser des Pommes de Terre"),
                DesiredService(name: "Aide sur la comptabilité"),]),
    Service(annonceTitle: "Déménagement",
            productOffered: [
                ProductOffered(name: "Tomates"),
                ProductOffered(name: "Pommes"),
                ProductOffered(name: "Pommes de Terre")],
            desiredService: [
                DesiredService(name: "Elaguer potager"),
                DesiredService(name: "Ramasser des Pommes de Terre"),
                DesiredService(name: "Aide sur la comptabilité"),]),
    Service(annonceTitle: "Désherber un potager",
            productOffered: [
                ProductOffered(name: "Tomates"),
                ProductOffered(name: "Pommes"),
                ProductOffered(name: "Pommes de Terre")],
            desiredService: [
                DesiredService(name: "Elaguer potager"),
                DesiredService(name: "Ramasser des Pommes de Terre"),
                DesiredService(name: "Aide sur la comptabilité"),])
    
]
