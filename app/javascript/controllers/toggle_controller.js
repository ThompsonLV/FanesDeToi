import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle"
export default class extends Controller {
  connect() {
    console.log("Hello from toggle_controller.js")

  }
static targets = ["togglableElement"]

fire() {
  if (this.togglableElementTarget.classList.contains("visible")) {
    this.togglableElementTarget.classList.add("invisible")
    this.togglableElementTarget.classList.remove("visible")
  } else {
    this.togglableElementTarget.classList.add("visible")
    this.togglableElementTarget.classList.remove("invisible")
  }
  console.log("click");
  }
}
