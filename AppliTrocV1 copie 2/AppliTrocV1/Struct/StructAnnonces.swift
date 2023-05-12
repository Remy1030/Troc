//
//  StructAnnonces.swift
//  ListView
//
//  Created by Apprenant 08 on 05/05/2023.
//

import Foundation
struct Annonce: Identifiable{
    var id = UUID()
    var imgAnnonce:String
    var title: String
    var location: String
    var date: String
    var startDescription:String
    var description: String
    var contrePartie: String
}



var annonces = [

    Annonce(imgAnnonce: "adibou", title: "Panier de fruits et légumes",  location: "Montauban", date: "24 Juin 2023", startDescription: "Je propose des...", description: "Je propose des tomates, carottes et salades ", contrePartie: "Désherbage du potager"),
    Annonce(imgAnnonce: "adibou", title: "Débroussaillage", location: "Grenade", date: "6 Juillet 2023",startDescription: "Je propose mes service...", description: "Je propose mes services de débroussaillage", contrePartie: "Fruits de saison"),
    Annonce(imgAnnonce: "adibou", title: "Produits de la ferme", location: "Labège", date: "30 Octobre 2023", startDescription: "Je propose du", description: "Je propose du paté, du fromage et du lait", contrePartie: "Entretien de l'étable")

]
