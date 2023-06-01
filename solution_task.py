class Product:

    def __init__(self, uid: str, name: str):
        self.uid = uid
        self.name = name


class ProductsImpl:

    def __init__(self):
        self.products = []

    def add_product(self, product: Product) -> bool:
        for p in self.products:
            if p.uid == product.uid:
                return False
        self.products.append(product)
        return True

    def delete_product(self, product: Product) -> bool:
        for p in self.products:
            if p.uid == product.uid:
                self.products.remove(p)
                return True
        return False

    def get_name(self, uid: str) -> str:
        for product in self.products:
            if product.uid == uid:
                return product.name
        return ""

    def find_by_name(self, name: str) -> [str]:
        result = [product.uid for product in self.products if product.name == name]
        return result
