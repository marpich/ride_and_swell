import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["startdate", "enddate", "totalpriceinput", "totalprice"]

  static values = { dailyprice: Number }

  update() {
      if (this.startdateTarget.value && this.enddateTarget.value) {
        const startdate = new Date(this.startdateTarget.value);
        const enddate = new Date(this.enddateTarget.value);
        const diffTime = Math.abs(enddate - startdate);
        const diffDays = Math.ceil(diffTime / (1000 * 60 * 60 * 24)) + 1;

        const totalprice = diffDays * this.dailypriceValue
        this.totalpriceinputTarget.value = totalprice
        this.totalpriceTarget.innerHTML = totalprice
        console.log(this.totalpriceTarget)
      }

  }
}
