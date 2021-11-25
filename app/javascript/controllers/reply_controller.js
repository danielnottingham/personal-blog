import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["form"]
  // connect() {
  //   this.element.textContent = "Hello World!"
  // }
  toggle(e) {
    e.preventDefault();
    this.formTarget.classList.toggle("d-none");
  }
}
