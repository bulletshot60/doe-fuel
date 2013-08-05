require 'gibbon'
require 'nestful'

module ApplicationHelper
	def send_update(regular, diesel)
		html = "<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\"><html><head><!-- This is a simple example template that you can edit to create your own custom templates --><!-- Facebook sharing information tags -->
<meta http-equiv=\"Content-Type\" content=\"text/html; charset=us-ascii\"><title>DOE Weekly Fuel Update</title>
		
	<style type=\"text/css\">
		#outlook a{
			padding:0;
		}
		body{
			width:100% !important;
		}
		body{
			-webkit-text-size-adjust:none;
		}
		body{
			margin:0;
			padding:0;
		}
		img{
			border:none;
			font-size:14px;
			font-weight:bold;
			height:auto;
			line-height:100%;
			outline:none;
			text-decoration:none;
			text-transform:capitalize;
		}
		#backgroundTable{
			height:100% !important;
			margin:0;
			padding:0;
			width:100% !important;
		}
		body,.backgroundTable{
			background-color:#3498db;
		}
		#templateContainer{
			border:1px solid #DDDDDD;
		}
		h1,.h1{
			color:#202020;
			display:block;
			font-family:Arial;
			font-size:34px;
			font-weight:bold;
			line-height:100%;
			margin-bottom:10px;
			text-align:left;
		}
		h2,.h2{
			color:#202020;
			display:block;
			font-family:Arial;
			font-size:30px;
			font-weight:bold;
			line-height:100%;
			margin-bottom:10px;
			text-align:left;
		}
		h3,.h3{
			color:#202020;
			display:block;
			font-family:Arial;
			font-size:26px;
			font-weight:bold;
			line-height:100%;
			margin-bottom:10px;
			text-align:left;
		}
		h4,.h4{
			color:#202020;
			display:block;
			font-family:Arial;
			font-size:22px;
			font-weight:bold;
			line-height:100%;
			margin-bottom:10px;
			text-align:left;
		}
		#templatePreheader{
			background-color:#FAFAFA;
		}
		.preheaderContent div{
			color:#505050;
			font-family:Arial;
			font-size:10px;
			line-height:100%;
			text-align:left;
		}
		.preheaderContent div a:link,.preheaderContent div a:visited{
			color:#336699;
			font-weight:normal;
			text-decoration:underline;
		}
		.preheaderContent div img{
			height:auto;
			max-width:600px;
		}
		#templateHeader{
			background-color:#FFFFFF;
			border-bottom:0;
		}
		.headerContent{
			color:#202020;
			font-family:Arial;
			font-size:34px;
			font-weight:bold;
			line-height:100%;
			padding:0;
			text-align:center;
			vertical-align:middle;
		}
		.headerContent a:link,.headerContent a:visited{
			color:#336699;
			font-weight:normal;
			text-decoration:underline;
		}
		#headerImage{
			height:auto;
			max-width:600px !important;
		}
		#templateContainer,.bodyContent{
			background-color:#FDFDFD;
		}
		.bodyContent div{
			color:#505050;
			font-family:Arial;
			font-size:14px;
			line-height:150%;
			text-align:left;
		}
		.bodyContent div a:link,.bodyContent div a:visited{
			color:#336699;
			font-weight:normal;
			text-decoration:underline;
		}
		.bodyContent img{
			display:inline;
			margin-bottom:10px;
		}
		#templateFooter{
			background-color:#FDFDFD;
			border-top:0;
		}
		.footerContent div{
			color:#707070;
			font-family:Arial;
			font-size:12px;
			line-height:125%;
			text-align:left;
		}
		.footerContent div a:link,.footerContent div a:visited{
			color:#336699;
			font-weight:normal;
			text-decoration:underline;
		}
		.footerContent img{
			display:inline;
		}
		#social{
			background-color:#FAFAFA;
			border:1px solid #F5F5F5;
		}
		#social div{
			text-align:center;
		}
		#utility{
			background-color:#FDFDFD;
			border-top:1px solid #F5F5F5;
		}
		#utility div{
			text-align:center;
		}
		#monkeyRewards img{
			max-width:160px;
		}
</style></head>
    <body leftmargin=\"0\" marginwidth=\"0\" topmargin=\"0\" marginheight=\"0\" offset=\"0\" style=\"-webkit-text-size-adjust: none;margin: 0;padding: 0;background-color: #3498db;width: 100% !important;\">
    	<center>
        	<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" height=\"100%\" width=\"100%\" id=\"backgroundTable\" style=\"margin: 0;padding: 0;height: 100% !important;width: 100% !important;\">
            	<tr>
                	<td align=\"center\" valign=\"top\">
                        <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" id=\"templateContainer\" style=\"border: 1px solid #DDDDDD;background-color: #FDFDFD;\">
                        	<tr>
                            	<td align=\"center\" valign=\"top\">
                                    <!-- // Begin Template Header \\ -->
                                	<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" id=\"templateHeader\" style=\"background-color: #FFFFFF;border-bottom: 0;\">
                                        <tr>
                                            <td class=\"headerContent\" style=\"color: #202020;font-family: Arial;font-size: 34px;font-weight: bold;line-height: 100%;padding: 0;text-align: center;vertical-align: middle;\">
                                            	Weekly DOE Fuel Update for #{regular.effective_date}
                                            </td>
                                        </tr>
                                    </table>
                                    <!-- // End Template Header \\ -->
                                </td>
                            </tr>
                        	<tr>
                            	<td align=\"center\" valign=\"top\">
                                    <!-- // Begin Template Body \\ -->
                                	<table border=\"0\" cellpadding=\"10\" cellspacing=\"0\" width=\"600\" id=\"templateBody\">
                                    	<tr>
                                            <td valign=\"top\" class=\"bodyContent\" style=\"background-color: #FDFDFD;\">
                                
                                                <!-- // Begin Module: Standard Content \\ -->
                                                <table border=\"0\" cellpadding=\"10\" cellspacing=\"0\" width=\"100%\">
                                                    <tr>
                                                        <td valign=\"top\">
                                                            <div style=\"color: #505050;font-family: Arial;font-size: 14px;line-height: 150%;text-align: left;\">
                                                            	<h3>Regular Fuel Prices by Region</h3>
                                                                <table style=\"width: 100%;\">
                                                                	<tr>
                                                                		<td style=\"width: 80%\" colspan=\"2\">US National Average</td>
                                                                		<td style=\"width: 20%\">#{regular.us_national_average}</td>
                                                                	</tr>
                                                                	<tr>
                                                                		<td style=\"width: 80%\" colspan=\"2\">East Coast</td>
                                                                		<td style=\"width: 20%\">#{regular.east_coast}</td>
                                                                	</tr>
                                                                	<tr>
                                                                		<td style=\"width: 10%\"></td>
                                                                		<td style=\"width: 70%\">New England</td>
                                                                		<td style=\"width: 20%\">#{regular.new_england}</td>
                                                                	</tr>
                                                                	<tr>
                                                                		<td style=\"width: 10%\"></td>
                                                                		<td style=\"width: 70%\">Central Atlantic</td>
                                                                		<td style=\"width: 20%\">#{regular.central_atlantic}</td>
                                                                	</tr>
                                                                	<tr>
                                                                		<td style=\"width: 10%\"></td>
                                                                		<td style=\"width: 70%\">Lower Atlantic</td>
                                                                		<td style=\"width: 20%\">#{regular.lower_atlantic}</td>
                                                                	</tr>
                                                                	<tr>
                                                                		<td style=\"width: 80%\" colspan=\"2\">Midwest</td>
                                                                		<td style=\"width: 20%\">#{regular.midwest}</td>
                                                                	</tr>
                                                                	<tr>
                                                                		<td style=\"width: 80%\" colspan=\"2\">Gulf Coast</td>
                                                                		<td style=\"width: 20%\">#{regular.gulf_coast}</td>
                                                                	</tr>
                                                                	<tr>
                                                                		<td style=\"width: 80%\" colspan=\"2\">Rocky Mountains</td>
                                                                		<td style=\"width: 20%\">#{regular.rocky_mountains}</td>
                                                                	</tr>
                                                                	<tr>
                                                                		<td style=\"width: 80%\" colspan=\"2\">West Coast</td>
                                                                		<td style=\"width: 20%\">#{regular.west_coast}</td>
                                                                	</tr>
                                                                	<tr>
                                                                		<td style=\"width: 10%\"></td>
                                                                		<td style=\"width: 70%\">California</td>
                                                                		<td style=\"width: 20%\">#{regular.california}</td>
                                                                	</tr>
                                                                </table>
                                                                <hr/>
                                                                <h3>Regular Fuel Prices by State</h3>
                                                                 <table style=\"width: 100%;\">
                                                                	<tr>
                                                                		<td style=\"width: 80%\" colspan=\"2\">Colorado</td>
                                                                		<td style=\"width: 20%\">#{regular.colorado}</td>
                                                                	</tr>
                                                                	<tr>
                                                                		<td style=\"width: 80%\" colspan=\"2\">Florida</td>
                                                                		<td style=\"width: 20%\">#{regular.florida}</td>
                                                                	</tr>
                                                                	<tr>
                                                                		<td style=\"width: 80%\" colspan=\"2\">Massachusetts</td>
                                                                		<td style=\"width: 20%\">#{regular.massachusetts}</td>
                                                                	</tr>
                                                                	<tr>
                                                                		<td style=\"width: 80%\" colspan=\"2\">Minnesota</td>
                                                                		<td style=\"width: 20%\">#{regular.minnesota}</td>
                                                                	</tr>
                                                                	<tr>
                                                                		<td style=\"width: 80%\" colspan=\"2\">New York</td>
                                                                		<td style=\"width: 20%\">#{regular.new_york}</td>
                                                                	</tr>
                                                                	<tr>
                                                                		<td style=\"width: 80%\" colspan=\"2\">Ohio</td>
                                                                		<td style=\"width: 20%\">#{regular.ohio}</td>
                                                                	</tr>
                                                                	<tr>
                                                                		<td style=\"width: 80%\" colspan=\"2\">Texas</td>
                                                                		<td style=\"width: 20%\">#{regular.texas}</td>
                                                                	</tr>
                                                                	<tr>
                                                                		<td style=\"width: 80%\" colspan=\"2\">Washington</td>
                                                                		<td style=\"width: 20%\">#{regular.washington}</td>
                                                                	</tr>
                                                                </table>
                                                                <hr/>
                                                                <h3>Regular Fuel Prices by City</h3>
                                                                <table style=\"width: 100%;\">
                                                                    <tr>
                                                                		<td style=\"width: 80%\" colspan=\"2\">Boston</td>
                                                                		<td style=\"width: 20%\">#{regular.boston}</td>
                                                                	</tr>
                                                                	<tr>
                                                                		<td style=\"width: 80%\" colspan=\"2\">Chicago</td>
                                                                		<td style=\"width: 20%\">#{regular.chicago}</td>
                                                                	</tr>
                                                                	<tr>
                                                                		<td style=\"width: 80%\" colspan=\"2\">Cleveland</td>
                                                                		<td style=\"width: 20%\">#{regular.cleveland}</td>
                                                                	</tr>
                                                                	<tr>
                                                                		<td style=\"width: 80%\" colspan=\"2\">Denver</td>
                                                                		<td style=\"width: 20%\">#{regular.denver}</td>
                                                                	</tr>
                                                                	<tr>
                                                                		<td style=\"width: 80%\" colspan=\"2\">Houston</td>
                                                                		<td style=\"width: 20%\">#{regular.houston}</td>
                                                                	</tr>
                                                                	<tr>
                                                                		<td style=\"width: 80%\" colspan=\"2\">Los Angeles</td>
                                                                		<td style=\"width: 20%\">#{regular.los_angeles}</td>
                                                                	</tr>
                                                                	<tr>
                                                                		<td style=\"width: 80%\" colspan=\"2\">Miami</td>
                                                                		<td style=\"width: 20%\">#{regular.miami}</td>
                                                                	</tr>
                                                                	<tr>
                                                                		<td style=\"width: 80%\" colspan=\"2\">New York City</td>
                                                                		<td style=\"width: 20%\">#{regular.new_york_city}</td>
                                                                	</tr>
                                                                	<tr>
                                                                		<td style=\"width: 80%\" colspan=\"2\">San Francisco</td>
                                                                		<td style=\"width: 20%\">#{regular.san_francisco}</td>
                                                                	</tr>
                                                                	<tr>
                                                                		<td style=\"width: 80%\" colspan=\"2\">Seattle</td>
                                                                		<td style=\"width: 20%\">#{regular.seattle}</td>
                                                                	</tr>
                                                                </table>
                                                                <hr/>
                                                                <h3>Diesel Fuel Prices</h3>
                                                                 <table style=\"width: 100%;\">
                                                                	<tr>
                                                                		<td style=\"width: 80%\" colspan=\"2\">US National Average</td>
                                                                		<td style=\"width: 20%\">#{diesel.us_national_average}</td>
                                                                	</tr>
                                                                	<tr>
                                                                		<td style=\"width: 80%\" colspan=\"2\">East Coast</td>
                                                                		<td style=\"width: 20%\">#{diesel.east_coast}</td>
                                                                	</tr>
                                                                	<tr>
                                                                		<td style=\"width: 10%\"></td>
                                                                		<td style=\"width: 70%\">New England</td>
                                                                		<td style=\"width: 20%\">#{diesel.new_england}</td>
                                                                	</tr>
                                                                	<tr>
                                                                		<td style=\"width: 10%\"></td>
                                                                		<td style=\"width: 70%\">Central Atlantic</td>
                                                                		<td style=\"width: 20%\">#{diesel.central_atlantic}</td>
                                                                	</tr>
                                                                	<tr>
                                                                		<td style=\"width: 10%\"></td>
                                                                		<td style=\"width: 70%\">Lower Atlantic</td>
                                                                		<td style=\"width: 20%\">#{diesel.lower_atlantic}</td>
                                                                	</tr>
                                                                	<tr>
                                                                		<td style=\"width: 80%\" colspan=\"2\">Midwest</td>
                                                                		<td style=\"width: 20%\">#{diesel.midwest}</td>
                                                                	</tr>
                                                                	<tr>
                                                                		<td style=\"width: 80%\" colspan=\"2\">Gulf Coast</td>
                                                                		<td style=\"width: 20%\">#{diesel.gulf_coast}</td>
                                                                	</tr>
                                                                	<tr>
                                                                		<td style=\"width: 80%\" colspan=\"2\">Rocky Mountains</td>
                                                                		<td style=\"width: 20%\">#{diesel.rocky_mountains}</td>
                                                                	</tr>
                                                                	<tr>
                                                                		<td style=\"width: 80%\" colspan=\"2\">West Coast</td>
                                                                		<td style=\"width: 20%\">#{diesel.west_coast}</td>
                                                                	</tr>
                                                                	<tr>
                                                                		<td style=\"width: 10%\"></td>
                                                                		<td style=\"width: 70%\">California</td>
                                                                		<td style=\"width: 20%\">#{diesel.california}</td>
                                                                	</tr>
                                                                </table>
                                                            </div>
														</td>
                                                    </tr>
                                                </table>
                                                <!-- // End Module: Standard Content \\ -->
                                                
                                            </td>
                                        </tr>
                                    </table>
                                    <!-- // End Template Body \\ -->
                                </td>
                            </tr>
                        	<tr>
                            	<td align=\"center\" valign=\"top\">
                                    
                                </td>
                            </tr>
                        </table>
                        <br>
                    </td>
                </tr>
            </table>
        </center>
    <img src=\"http://portal.mxlogic.com/images/transparent.gif\" height=\"1\" width=\"1\"></body>
</html>"

		gb = Gibbon::API.new(ENV["MAILCHIMP_API_KEY"])
		cpm = gb.campaigns.create({type: "regular", options: {list_id: "46e4fe84a5", subject: "DOE Weekly Fuel Update: #{regular.effective_date}", from_email: "bulletshot60@gmail.com", from_name: "DOE Fuel App", generate_text: true}, content: {html: html}})
		puts cpm
		puts Nestful.post "https://us7.api.mailchimp.com/2.0/campaigns/send", { :apikey => ENV["MAILCHIMP_API_KEY"], :cid => cpm["id"] }, :format => :json
	end
end
