import Foundation

struct Notif: Identifiable{
    
    var id = UUID()
    var userName: User
    var notifContent: String
    var isRead: Bool
    
}
