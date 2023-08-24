import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr"; // You need to import this to use new flatpickr()

export default class extends Controller {
  static targets = ["picker", "start", "end"]

  static values = {
    dates: String
  }

  connect() {
    flatpickr(this.pickerTarget, {
      mode: "range",
      onChange: function(selectedDates, dateStr, instance) {
        this.startTarget.value = selectedDates[0]
        this.endTarget.value = selectedDates[1]
      }.bind(this),
      enable: [
        function(date) {
          const start = new Date(JSON.parse(this.datesValue)[0])
          start.setDate(start.getDate() - 1)
          const end = new Date(JSON.parse(this.datesValue)[1])
          return (date > start && date < end);
        }.bind(this)
      ]
    })
  }
}
