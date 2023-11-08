import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="error-message"
export default class extends Controller {
  static targets = ['msg']
  connect() {
  }

  close_error_message(e){
    e.preventDefault()
    let error_msg = this.msgTarget
    error_msg.innerHTML = ''
  }
}
