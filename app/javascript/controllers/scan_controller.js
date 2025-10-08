import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = []

  connect() {
  this.container = this.element.querySelector("#scan_items_container")
  this.nextId = this.container ? this.container.children.length : 0
  console.log("ScanController подключён! nextId:", this.nextId)
}

  delete(event) {
    event.preventDefault()
    const id = event.target.dataset.scanId
    const frame = document.getElementById(`scan_item_${id}`)
    if(frame) frame.remove()
  }

  add(event) {
    event.preventDefault()
    const div = document.createElement("div")
    div.id = `scan_item_${this.nextId}`
    div.className = "scan-item"
    div.style.display = "flex"
    div.style.gap = "1rem"
    div.style.marginBottom = "0.5rem"

    div.innerHTML = `
      <input type="text" placeholder="Название">
      <input type="number" value="1" style="width:50px;">
      <input type="text" placeholder="Ед.изм" style="width:80px;">
      <input type="number" placeholder="грамм" style="width:60px;">
      <button data-action="click->scan#delete" data-scan-id="${this.nextId}">Удалить</button>
    `
    this.container.appendChild(div)
    this.nextId++
  }
}

