$(function(){

	var $chickens= $('#chickens');
	var $farms = $('#farms');
	var $eggs= $('#eggs');
 	
 	var $chickenName= $('#heroName');
 	var $
 	var $skill = $('#skill');

 	var heroeTemplate = ""+
 	"<li data-id='{{id}}'>" +
 	"<p><strong>Name:</strong>{{heroName}}</p>" +
	"<p><strong>Skill:</strong>{{skill}}</p>" +
	"<button data-id='{{id}}' class='remove'>X</button>" +
	"<li>";
 	
 	function addHeroe(heroe){
 		$heroes.append(Mustache.render(heroeTemplate,heroe));
 	}

	$.ajax({
		type:'GET', 
		url:'/Ajax/heroes',
		success: function(heroes){
			$.each(heroes, function(i, heroe){
			  $heroes.append('<li> My Hero: ' +heroe.heroName+' - Skill: '+heroe.skill+' '+'<button data-id='+heroe.id+' class="remove">Delete</button></li>');
			});
		},
		error: function(){
			alert('Error');
		}
	});

	$('#addHero').on('click', function(){

		var hero = {
			heroName: $heroName.val(),
			skill: $skill.val(),
		};
		$.ajax({
			type:'POST',
			url: '/Ajax/add',
			data: hero,
				success: function(addHero){
			$heroes.append('<li> My Hero:' +addHero.heroName+' Skill: '+addHero.skill+'</li>');
				},
			error: function(){
				alert('error saving hero');
			}
		});
	});
	
	$heroes.delegate('.remove','click', function(){
		
		var $li = $(this).closest('li');
		$.ajax({
			type: 'DELETE',
			url: '/Ajax/remove/'+$(this).attr("data-id"),
			success: function(){
				$li.fadeOut(300, function(){
					$li.remove();
				})
			}
		})
	})
});