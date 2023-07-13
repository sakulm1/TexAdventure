//>##############################>
//||                            ||
//||           Story            ||
//||                            ||
//>##############################>

import Foundation

/// Die `choice` Struktur repräsentiert eine Entscheidung, die ein Spieler in der Geschichte treffen kann.
struct Choice{
    var text: String  // Der Text der Entscheidung.
    var destination: Int  // Die Seitennummer, zu der die Geschichte geht, wenn diese Entscheidung ausgewählt wird.
}

/// Die `StoryPage` Struktur repräsentiert eine Seite der Geschichte.
struct StoryPage{
    var text: String  // Der Text der Geschichte auf dieser Seite.
    var time: Int  // Die für diese Seite benötigte Zeit. (Ohne zusätzlichen Kontext ist nicht klar, was dies darstellt)
    var choices: [Choice]  // Die Entscheidungen, die der Spieler auf dieser Seite treffen kann.
    
    // Initialisiert eine neue StoryPage mit dem gegebenen Text, der Zeit und den Entscheidungen.
    init(text: String, time: Int, choices: [Choice]) {
        self.text = text
        self.time = time
        self.choices = choices
    }
}

enum StoryPageCategory{
    case storyPage(StoryPage)
    case fightPage(FightPage)
}

struct FightPage{
    var monster: Enemy
    var nextPageIfWon: Int
    var nextPageIfLost: Int
}

/// Die `Story` Struktur repräsentiert die gesamte Geschichte, die aus mehreren StoryPages besteht.
struct Story{
    var pages: [StoryPageCategory]  // Die Seiten der Geschichte.
    
    // Gibt die Seite an dem gegebenen Index zurück.
    subscript (_ pageIndex: Int) -> StoryPageCategory{
        return pages[pageIndex]
    }
}

//>##############################>
//||                            ||
//||         Inventory          ||
//||                            ||
//>##############################>

/// Die `InventoryModel` Struktur repräsentiert das Inventar eines Spielers.
struct InventoryModel {
    var slots: [Slot]  // Die Slots des Inventars.
    
    // Gibt den Slot an dem gegebenen Index zurück, oder nil wenn der Index außerhalb des Bereichs liegt.
    subscript(_ inventoryIndex: Int) -> Slot? {
        guard inventoryIndex >= 0 && inventoryIndex < slots.count else {
            return nil
        }
        return slots[inventoryIndex]
    }
}

/// Die `Slot` Struktur repräsentiert einen Slot im Inventar des Spielers.
struct Slot{
    var item: ItemType  // Der Gegenstand in diesem Slot.
    var id: UUID?  // Die eindeutige Kennung für diesen Slot.
    var quantity: Int  // Die Menge des Gegenstandes in diesem Slot.
}

/// Die `ItemType` Aufzählung repräsentiert die Arten von Gegenständen, die in einem Slot im Inventar sein können.
enum ItemType {
    case weapon(Weapon)
    case generalItem(GeneralItem)
    case food(Food)
}

/// Die `Weapon` Struktur repräsentiert einen Waffengegenstand.
struct Weapon{
    var name: String  // Der Name der Waffe.
    var image: String  // Das Bild der Waffe.
    var value: Int  // Der Wert der Waffe.
    var damage: Int  // Der Schaden, den die Waffe zufügen kann.
    var haltbarkeit: Int  // Die Haltbarkeit der Waffe.
}

/// Die `GeneralItem` Struktur repräsentiert einen allgemeinen Gegenstand.
struct GeneralItem {
    var name: String  // Der Name des Gegenstandes.
    var image: String  // Das Bild des Gegenstandes.
    var value: Int  // Der Wert des Gegenstandes.
}

/// Die `Food` Struktur repräsentiert einen Lebensmittelgegenstand.
struct Food {
    var name: String  // Der Name des Lebensmittels.
    var image: String  // Das Bild des Lebensmittels.
    var value: Int  // Der Wert des Lebensmittels.
    var addLife: Int  // Die Menge an Leben, die das Essen dieses Lebensmittels hinzufügt.
}

/// Die `Armour` Struktur repräsentiert einen Lebensmittelgegenstand.
struct Armour {
    var name: String
    var bodypart: String
    var image: String
    var value: Int
    var haltbarkeit: Int
}


