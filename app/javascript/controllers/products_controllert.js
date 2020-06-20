import { Controller } from "stimulus";

export default class extends Controller {
  // Fica atento aqui, esses targets vão ser referenciados na View
  static targets = ["productPrice", "productQuantity", "total"];

  connect() {
    console.log(“products”)
  }

  calculatePrice() {
    let total = this.productPrice * this.productQuantity
    this.total.innerHTML = total
    console.log(total)
  }

  get productPrice() {
    return this.productPriceTarget
  }

  get productQuantity() {
    return this.productQuantityTarget
  }

  get total() {
    return this.totalTarget
  }
}