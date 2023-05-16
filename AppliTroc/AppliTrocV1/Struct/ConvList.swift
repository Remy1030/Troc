import Foundation

struct ConvList: Identifiable {
    var id = UUID()
    var user: User
    var annonce: Service
}

var conversations = [

    ConvList(user: users[1], annonce: serviceDone[2]),
    ConvList(user: users[0], annonce: serviceDone[2])

]
