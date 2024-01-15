
//@TODO Change api variable api path
//@var change variable name value
const INQUIRY_API =  "api/send.php";
const BOOKING_API =  "api/booking.php";

// Pre-Booking Method
function preBooking() {
    /**
     * Change json collections
     */
    //@TODO change json collection
    //@var change variable name and value
    let jsonInputs = {
        email : $("#customer_email").val()
	}

    $.ajax({
        "url" : BOOKING_API ,
        "type" : "POST",
        "data" : "pre_book=" + JSON.stringify(jsonInputs), //@var dont forget to change
        "success" : function(response) {

            let responseJSON = JSON.parse(response)
            
            if(responseJSON.code === 200) {
                $("#customer_email").val('')
                
                alert(responseJSON.description)

                return false;
            }else {
                alert(responseJSON.description)

                return false;
            }
            
        }
    })

    return false;
}

// Inguiry Method
function submitEmail() {
    /**
     * Change json collections
     */
    //@TODO change json collection
    //@var change variable name and value
    let formDetails = {
		name : $("#name").val(),
        email : $("#email").val(),
        phoneNumber : $("#phone").val(),
        message : $("#message").val(),
        recaptcha : grecaptcha.getResponse()
	}

    $.ajax({
        "url" : INQUIRY_API ,
        "type" : "POST",
        "data" : "store=" + JSON.stringify(formDetails), //@var dont forget to change
        "success" : function(response) {

            let responseJSON = JSON.parse(response)

            // alert(responseJSON.description);

            // index();
            
            if(responseJSON.code === 200) {
                $("#name").val('')
                $("#email").val('')
                $("#phone").val('')
                $("#message").val('')
                grecaptcha.reset()
                
                alert(responseJSON.description)

                return false;
            }else {
                alert(responseJSON.description)

                return false;
            }
            
            return false;
        }
    })

    return false;

}