func fetchData() async throws -> Data {
    let url = URL(string: "https://api.example.com/data")!
    let (data, _) = try await URLSession.shared.data(from: url)
    return data
}

Task { //This will cause the error
    do {
        let data = try await fetchData()
        // Process data
    } catch {
        print("Error fetching data: \(error)")
    }
}