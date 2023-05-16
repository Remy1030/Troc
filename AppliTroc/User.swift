import Foundation

struct User: Identifiable{
    var id = UUID()
    var firstName: String
    var lastName: String
    var age: Int
    var adress: String
    var img: String
    var location: String
    var date: String
    //    var job: String
    var service: Service

    func toString() -> String {
        return "\(firstName) \(lastName)"
    }
}



var users = [
    User(firstName: "Chloé",
        lastName: "Durand",
        age: 23,
        adress: "5 rue de l'étoile",
        img: "chloe",
        location: "10 rue du Chat",
        date: "10 Mai 2023",
         
        //        job: "Producteur"
        service: Service(annonceTitle: "Tomates contre aide compta",
                         productOffered: [
                            ProductOffered(name: "Tomates"),
                            ProductOffered(name: "Pommes"),
                            ProductOffered(name: "Pommes de Terre")
                         ],
                         desiredService: [
                            DesiredService(name: "Elaguer potager"),
                            DesiredService(name: "Ramasser des Pommes de Terre"),
                            DesiredService(name: "Aide sur la comptabilité")
                         ]
                        )
    ),
    
    User(firstName: "Patrick",
         lastName: "Martin",
         age: 40,
         adress: "5 rue de l'étoile",
         img: "patrick",
         location: "10 rue du Chat",
         date: "10 Mai 2023",
         //         job: "Electricien",
         service: Service(annonceTitle: "Déménagement contre légumes",
                          productOffered: [
                            ProductOffered(name: "Tomates"),
                            ProductOffered(name: "Pommes"),
                            ProductOffered(name: "Pommes de Terre")
                          ],
                          desiredService: [
                            DesiredService(name: "Elaguer potager"),
                            DesiredService(name: "Ramasser des Pommes de Terre"),
                            DesiredService(name: "Aide sur la comptabilité")
                          ]
                         )
        ),
    User(firstName: "Sharik",
         lastName: "Torez",
         age: 30,
         adress: "3 rue Richelieu",
         img: "sharik",
         location: "3 rue Richelieu",
         date: "10 Mai 2023",
         //         job: "Electricien",
         service: Service(annonceTitle: "Légumes contre peinture mur",
                          productOffered: [
                            ProductOffered(name: "Navets"),
                            ProductOffered(name: "Radis"),
                            ProductOffered(name: "Pommes de Terre")
                          ],
                          desiredService: [
                            DesiredService(name: "Peindre un mur"),
                            DesiredService(name: "Refaire une cloture"),
                            DesiredService(name: "Couper un arbuste")
                          ]
                         )
        ),
    User(firstName: "Clara",
         lastName: "Michel",
         age: 32,
         adress: "8 chemin Caillau",
         img: "clara",
         location: "8 chemin Caillau",
         date: "12 avril 2023",
         //         job: "Electricien",
         service: Service(annonceTitle: "Fraise contre taillage de haie",
                          productOffered: [
                            ProductOffered(name: "Fraises"),
                            ProductOffered(name: "Semis de tomates"),
                            ProductOffered(name: "Pied de framboisier")
                          ],
                          desiredService: [
                            DesiredService(name: "Tailler une haie"),
                            DesiredService(name: "Installer un brise-vue sur cloture"),
                            DesiredService(name: "Nourrir les chevaux")
                          ]
                         )
        ),
    User(firstName: "Rémy",
         lastName: "Paul",
         age: 40,
         adress: "10 rue du cheval",
         img: "remy",
         location: "10 rue du Cheval",
         date: "10 Mai 2023",
         //         job: "Electricien",
         service: Service(annonceTitle: "Abricots contre réparation piscine",
                          productOffered: [
                            ProductOffered(name: "Tomates"),
                            ProductOffered(name: "Abricots"),
                            ProductOffered(name: "Framboises")
                          ],
                          desiredService: [
                            DesiredService(name: "Réparation fuite piscine"),
                            DesiredService(name: "Tailler une haie"),
                            DesiredService(name: "Tondre la pelouse")
                          ]
                         )
        ),
    User(firstName: "Marine",
         lastName: "Dupuis",
         age: 35,
         adress: "18 rue du moulin",
         img: "marine",
         location: "18 rue du moulin",
         date: "5 Mai 2023",
         //         job: "Electricien",
         service: Service(annonceTitle: "Légumes contre ménage",
                          productOffered: [
                            ProductOffered(name: "Poireaux"),
                            ProductOffered(name: "Salades"),
                            ProductOffered(name: "Asperges")
                          ],
                          desiredService: [
                            DesiredService(name: "Garde d'enfant"),
                            DesiredService(name: "Ménage"),
                            DesiredService(name: "Ratissage du foin")
                          ]
                         )
        )
]
