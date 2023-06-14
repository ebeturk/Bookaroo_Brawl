import { Controller } from "@hotwired/stimulus"



// Connects to data-controller="toggle"
export default class extends Controller {
  static targets = ["togglableElement", "button"]
  connect() {
    console.log("Hello from toggle_controller.js")
  }
  fire() {
    this.togglableElementTarget.classList.toggle("d-none");

    if (this.buttonTarget.innerText === "See the Edit Form") {
      this.buttonTarget.innerText = "Hide the Edit Form";
    } else {
      this.buttonTarget.innerText = "See the Edit Form"
    }
  }
}
