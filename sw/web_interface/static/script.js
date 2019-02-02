var status_ts = $("#status_ts");
var status_tb = $("#status_tb");
var status_back = $("#status_back");
var status_bot = $("#status_bot");
var status_bf = $("#status_bf");
var status_df = $("#status_df");
var status_light = $("#status_light");
var act_temp_elem = {};
var set_temp_elem = {};

function update_status_elements(data){
	if (data.top_big){
		status_tb.text("ON");	
		status_tb.removeClass();
		status_tb.addClass("on");
	} else {
		status_tb.text("OFF");	
		status_tb.removeClass();
		status_tb.addClass("off");
	}	
	if (data.top_small){
		status_ts.text("ON");	
		status_ts.removeClass();
		status_ts.addClass("on");
	} else {
		status_ts.text("OFF");	
		status_ts.removeClass();
		status_ts.addClass("off");
	}	
	if (data.back){
		status_back.text("ON");	
		status_back.removeClass();
		status_back.addClass("on");
	} else {
		status_back.text("OFF");	
		status_back.removeClass();
		status_back.addClass("off");
	}	
	if (data.bottom){
		status_bot.text("ON");	
		status_bot.removeClass();
		status_bot.addClass("on");
	} else {
		status_bot.text("OFF");	
		status_bot.removeClass();
		status_bot.addClass("off");
	}	
	if (data.back_fan){
		status_bf.text("ON");	
		status_bf.removeClass();
		status_bf.addClass("on");
	} else {
		status_bf.text("OFF");	
		status_bf.removeClass();
		status_bf.addClass("off");
	}	
	if (data.door_fan){
		status_df.text("ON");	
		status_df.removeClass();
		status_df.addClass("on");
	} else {
		status_df.text("OFF");	
		status_df.removeClass();
		status_df.addClass("off");
	}	
	if (data.light){
		status_light.text("ON");	
		status_light.removeClass();
		status_light.addClass("on");
	} else {
		status_light.text("OFF");	
		status_light.removeClass();
		status_light.addClass("off");
	}	
	act_temp_elem.text(Math.round(data.temp));
}
function update_req_elements(data){
	if (data.set_temp > 0){
		set_temp_elem.text(data.set_temp);
	} else {
		set_temp_elem.text("---");	
	}
}


function update_status() {
	status_ts = $("#status_ts");
	status_tb = $("#status_tb");
	status_back = $("#status_back");
	status_bot = $("#status_bot");
	status_bf = $("#status_bf");
	status_df = $("#status_df");
	status_light = $("#status_light");
	act_temp_elem = $("#act_temp");
	var poll = function() {
		$.ajax({
			url: 'status.json',
			dataType: 'json',
			type: 'get',
			success: update_status_elements,
			error: function() { // error logging
				console.log('Error!');
			}
		});
	};

	pollInterval = setInterval(function() { // run function every 2000 ms
		poll();
		}, 2000);
	poll(); // also run function on init
}

function update_requirements() {
	set_temp_elem = $("#set_temp");
	var poll = function() {
		$.ajax({
			url: 'req.json',
			dataType: 'json',
			type: 'get',
			success: update_req_elements,
			error: function() { // error logging
				console.log('Error!');
			}
		});
	};

	pollInterval = setInterval(function() { // run function every 2000 ms
		poll();
		}, 2000);
	poll(); // also run function on init
}

function set_temp(temp){
	$.get('/set/temp/'+temp);	
}

function set_light(light){
	$.get('/set/light/'+light);		
}

window.onload=function(){
		update_status();
		update_requirements();
		$("#temp_form").on('submit', function(){
			set_temp($("#temp_input").val());
			return false;
		});
	}
