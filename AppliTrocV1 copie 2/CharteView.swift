//
//  CharteView.swift
//  Troc
//
//  Created by Apprenant 08 on 12/05/2023.
//

import SwiftUI

struct CharteView: View {
    var body: some View {
        VStack{
            
        
            ScrollView {
                Text("""
                 Charte de confidentialité de l'application Troc. Nous attachons une grande importance à la protection de votre vie privée et nous nous engageons à protéger les informations que vous nous fournissez. Cette charte de confidentialité explique comment nous recueillons, utilisons, divulguons, transférons et stockons vos informations lorsque vous utilisez notre application de troc durable. Informations que nous recueillons. Lorsque vous utilisez notre application de troc durable, nous recueillons les informations suivantes :\\
                 1- Les informations que vous fournissez : Lorsque vous créez un compte, nous vous demandons de fournir des informations telles que votre nom, votre adresse e-mail et votre adresse de livraison. Nous pouvons également vous demander des informations supplémentaires pour compléter votre profil, telles que vos préférences de troc et vos intérêts.
                 2- Les informations de transaction : Lorsque vous effectuez une transaction sur notre plateforme, nous recueillons des informations sur les produits que vous troquez et les informations de paiement.
                 3- Les informations de communication : Lorsque vous communiquez avec nous par e-mail ou par le biais de notre système de messagerie interne, nous recueillons les informations que vous fournissez.
                 4- Les informations de navigation : Lorsque vous naviguez sur notre site, nous recueillons des informations sur les pages que vous consultez, les liens sur lesquels vous cliquez et d'autres actions que vous effectuez sur notre site.
                 
                 Utilisation des informations que nous recueillons

                 Nous utilisons les informations que nous recueillons pour les finalités suivantes :

                 1- Pour vous permettre d'utiliser notre application de troc durable et pour fournir les services que vous avez demandés.

                 2- Pour améliorer notre application de troc durable et pour personnaliser votre expérience.

                 3- Pour communiquer avec vous, notamment pour vous informer des mises à jour de notre application de troc durable et pour répondre à vos demandes d'assistance.

                 4- Pour prévenir la fraude et les activités illégales.

                 Divulgation des informations

                 Nous ne vendons pas vos informations à des tiers. Nous pouvons toutefois divulguer vos informations dans les situations suivantes :

                 - Pour fournir les services que vous avez demandés, tels que la livraison de produits troqués.
                 - Pour prévenir la fraude et les activités illégales.
                 - Pour se conformer à une exigence légale ou réglementaire.

                 Transfert des informations

                 Nous pouvons transférer vos informations vers des serveurs situés en dehors de votre pays de résidence, y compris vers des pays qui n'offrent pas le même niveau de protection des données que votre pays. Toutefois, nous prendrons des mesures raisonnables pour protéger vos informations.

                 Sécurité des informations

                 Nous prenons des mesures techniques et organisationnelles pour protéger vos informations contre l'accès non autorisé, la divulgation, la modification ou la destruction.

                 Vos droits

                 Vous avez le droit d'accéder, de corriger et de supprimer les informations que nous avons recueillies à votre sujet. Vous pouvez également vous opposer au traitement de vos informations et demander leur limitation ou leur portabilité. Pour exercer ces droits, veuillez nous contacter à l'adresse …
             """)
            }
            
        }.padding()
        
}
             }

struct CharteView_Previews: PreviewProvider {
    static var previews: some View {
        CharteView()
    }
}
