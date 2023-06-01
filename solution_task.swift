struct Product {
    let uid: String
    let name: String
}

class ProductsImpl {
    private var products: [Product] = []


    func addProduct(_ product: Product) -> Bool {
        for p in products {
            if p.uid == product.uid {
                return false
            }
        }
        products.append(product)
        return true
    }

    func deleteProduct(_ product: Product) -> Bool {
        if let index = products.firstIndex(where: { $0.uid == product.uid }) {
            products.remove(at: index)
            return true
        }
        return false
    }

    func getName(_ uid: String) -> String {
        if let product = products.first(where: { $0.uid == uid }) {
            return product.name
        }
        return ""
    }

    func findByName(_ name: String) -> [String] {
        let result = products.filter { $0.name == name }.map { $0.uid }
        return result
    }
}
