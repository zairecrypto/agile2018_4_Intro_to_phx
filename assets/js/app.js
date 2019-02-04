import Vue from "vue";
import axios from "axios"; 

new Vue({
  el: '#takso-app',
  data: {
    pickup_address: "Liivi 2",
    dropoff_address: ""
  },
  methods: {
    submitBookingRequest: function() {
    //   console.log(this.pickup_address, this.dropoff_address);
    //   alert("pickup_address : " +  this.pickup_address + " dropoff_address : " + this.dropoff_address);

        axios.post(
            "/api/bookings", 
            {
                pickup_address: this.pickup_address, 
                dropoff_address: this.dropoff_address
            }
        )
        .then(response => console.log(response))
        .catch(error => console.log(error));
    }
  }
});