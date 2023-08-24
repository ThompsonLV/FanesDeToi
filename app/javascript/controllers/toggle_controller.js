import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle"
export default class extends Controller {
  static targets = ["togglableElement"]

  connect() {
  }

  fire() {
    if (this.togglableElementTarget.classList.contains("d-none")) {
      this.togglableElementTarget.classList.remove("d-none")
    } else {
      this.togglableElementTarget.classList.add("d-none")
    }
    console.log("click");
    }
}
