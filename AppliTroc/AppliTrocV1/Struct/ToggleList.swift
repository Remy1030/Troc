import Foundation

struct ToggleList : Identifiable{
    var id = UUID()
    var items: String
    var switchOn = false
}
