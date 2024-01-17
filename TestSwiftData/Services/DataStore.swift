//
//  DataStore.swift
//  Lesson-4.05_ContactList
//
//  Created by Юрий Куринной on 27.12.2023.
//

// MARK: - DataStore

final class DataStore {
    
    // MARK: - Public properties
    
    static let shared = DataStore()
    
    // MARK: - Names
    
    let names = [
        "Leanne",
        "Ervin",
        "Clementine",
        "Patricia",
        "Chelsey",
        "Dennis",
        "Kurtis",
        "Nicholas",
        "Glenna",
        "Clementina"
    ]
    
    // MARK: - Surnames
    
    let surnames = [
        "DuBuque",
        "Reichert",
        "Runolfsdottir",
        "Weissnat",
        "Schulist",
        "Dietrich",
        "Lebsack",
        "Bauch",
        "Howell",
        "Graham"
    ]
    
    // MARK: - Phone numbers
    
    let phoneNumbers = [
        "1-770-736-8031",
        "010-692-6593",
        "1-463-123-4447",
        "1-493-170-9623",
        "44(254)954-1289",
        "1-477-935-8478",
        "1-210-067-6132",
        "1-586-493-6943",
        "44(775)976-6794",
        "1-024-648-3804"
    ]
    
    // MARK: - E-mail addresses
    
    let emails = [
        "Rey.Padberg@karina.biz",
        "Chaim_McDermott@dana.io",
        "Sherwood@rosamond.me",
        "Telly.Hoeger@billy.biz",
        "Karley_Dach@jasper.info",
        "Lucio_Hettinger@annie.ca",
        "Julianne.OConner@kory.org",
        "Nathan@yesenia.net",
        "Shanna@melissa.tv",
        "Sincere@april.biz"
    ]
    
    // MARK: - Initializers
    
    private init() {}
    
}
