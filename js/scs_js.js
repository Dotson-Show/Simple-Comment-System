$(function(){

    displayComments();

	var months = new Array("Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec");

 	var d = new Date();

  	var year = d.getFullYear();

 	var m = d.getMonth();

 	var month = months[m];

 	var day = d.getDate();

  	var $newDate = month + ' ' + day + ', ' + year;

	$("#addComnt").click(function(){

        if ($("#userNameField").val() && $("#userComment").val() && ($("#userNameField").val() !== "Admin") && ($("#userNameField").val() !== "admin")){

            var user = {
			name: $("#userNameField").val(),
			content: $("#userComment").val(),
			date: $newDate,
		    };

		    $.ajax({
			    url: "ajax.php",
                type: "POST",
                async: false,
			    data: user,
			    success: function(data){
                    displayComments();
                    $("#userNameField").val('');
                    $("#userComment").val(''); 
			    }
            });
        
        }else{
            alert('Please enter a valid name and comment!!');
        }

	});
});
function displayComments(){
    $.ajax({
        url: "ajax.php",
        type: "POST",
        async: false,
        data: {
            "display": 1,
        },
        success: function(d){
            $("#container").html(d);
        }
    });
}
