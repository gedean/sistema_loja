import { Controller } from "stimulus"

export default class extends Controller {
  // Fica atento aqui, esses targets vão ser referenciados na View
  static targets = ["productPrice", "productQuantity", "total"];

  connect() {
    console.log("connected to stimulus products controller")
  }

  // Método que quando acontece um alteração em um dos campos de preço ou
  // quantidade, é chamado para atualizar o valor do campo total.
  // Ele detecta a alteração a partir do evento 'keyup'
  calculatePrice() {
    this.total = this.productPrice * this.productQuantity
  }

  get productPrice() {
    return parseFloat(this.productPriceTarget.value)
  }

  get productQuantity() {
    return parseInt(this.productQuantityTarget.value)
  }

  // Método Setter que altera o valor de total
  set total(value) {
    this.totalTarget.value = value
  }

  get total() {
    return this.totalTarget.value
  }
}