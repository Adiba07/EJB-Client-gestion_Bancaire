<img src="img/logo20.png"/>
<footer class="row">
        <p class="col-md-9 col-sm-9 col-xs-12 copyright">&copy; <a href="http://usman.it" target="_blank">Reda&amp;Nesrine
                </a> 2017 - 2018</p>

        <p class="col-md-3 col-sm-3 col-xs-12 powered-by">Powered by: <a
                href="http://usman.it/free-responsive-admin-template">Charisma</a></p>
    </footer>

</div><!--/.fluid-container-->

<script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

<!-- library for cookie management -->
<script src="js/jquery.cookie.js"></script>
<!-- calender plugin -->
<script src='bower_components/moment/min/moment.min.js'></script>
<script src='bower_components/fullcalendar/dist/fullcalendar.min.js'></script>
<!-- data table plugin -->
<script src='js/jquery.dataTables.min.js'></script>

<!-- select or dropdown enhancer -->
<script src="bower_components/chosen/chosen.jquery.min.js"></script>
<!-- plugin for gallery image view -->
<script src="bower_components/colorbox/jquery.colorbox-min.js"></script>
<!-- notification plugin -->
<script src="js/jquery.noty.js"></script>
<!-- library for making tables responsive -->
<script src="bower_components/responsive-tables/responsive-tables.js"></script>
<!-- tour plugin -->
<script src="bower_components/bootstrap-tour/build/js/bootstrap-tour.min.js"></script>
<!-- star rating plugin -->
<script src="js/jquery.raty.min.js"></script>
<!-- for iOS style toggle switch -->
<script src="js/jquery.iphone.toggle.js"></script>
<!-- autogrowing textarea plugin -->
<script src="js/jquery.autogrow-textarea.js"></script>
<!-- multiple file upload plugin -->
<script src="js/jquery.uploadify-3.1.min.js"></script>
<!-- history.js for cross-browser state change on ajax -->
<script src="js/jquery.history.js"></script>
<!-- application script for Charisma demo -->
<script src="js/charisma.js"></script>
<script>
$(document).ready(function () {
$('.btn-delete').click(function (e) {
	var id = $(this).data('id');
    swal({
    	  title: "Voulez-vous vraiment supprimer le compte N� "+id+" ?",
    	  text: "Une fois supprimer, vous ne pouvez plus le recuperer!",
    	  icon: "warning",
    	  buttons: ["Non!", "Oui!"],
    	  dangerMode: true,
    	})
    	.then((willDelete) => {
    	  if (willDelete) {
    		  $.ajax({
  				type : 'get',
  				url : 'GestionComptes?supprimer='+id,
  				success : function(data) {
  					if (data == "true"){
  						swal("Poof! Compte Supprimez!", {
  			    	      icon: "success",
  			    	    }).then((val) => {
  			    	    	
  			    	      location.reload();
  			    	      
  			    	      });
  					}else {
  			    	    swal("Probleme avec la base de donnees!");
  			    	  	location.reload();
  					}		
  				}
  			});
    	    
    	  } else {
    	    swal("Suppression Annuler!");
    	  }
    	});
    });
});
$(document).ready(function () {
	$('.btn-delete-client').click(function (e) {
		var id = $(this).data('id');
	    swal({
	    	  title: "Voulez-vous vraiment supprimer le client dont l'id : "+id+" ?",
	    	  text: "Une fois supprimer, vous ne pouvez plus le recuperer!",
	    	  icon: "warning",
	    	  buttons: ["Non!", "Oui!"],
	    	  dangerMode: true,
	    	})
	    	.then((willDelete) => {
	    	  if (willDelete) {
	    		  $.ajax({
	  				type : 'get',
	  				url : 'GestionClients?supprimer='+id,
	  				success : function(data) {
	  					if (data == "true"){
	  						swal("Poof! Client Supprimez!", {
	  			    	      icon: "success",
	  			    	    }).then((val) => {
	  			    	    	
	  			    	      location.reload();
	  			    	      
	  			    	      });
	  					}else {
	  			    	    swal("Probleme avec la base de donnees!");
	  			    	  	location.reload();
	  					}		
	  				}
	  			});
	    	    
	    	  } else {
	    	    swal("Suppression Annuler!");
	    	  }
	    	});
	    });
	});
</script>
</body>
</html>