require 'gibbon'

module WeeklyUpdateHelper
	def send_update(regular, diesel)
		html = '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"><html><head><!-- This is a simple example template that you can edit to create your own custom templates --><!-- Facebook sharing information tags -->
<meta http-equiv="Content-Type" content="text/html; charset=us-ascii"><title>DOE Weekly Fuel Update</title>
		
	<style type="text/css">
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
    <body leftmargin="0" marginwidth="0" topmargin="0" marginheight="0" offset="0" style="-webkit-text-size-adjust: none;margin: 0;padding: 0;background-color: #3498db;width: 100% !important;">
    	<center>
        	<table border="0" cellpadding="0" cellspacing="0" height="100%" width="100%" id="backgroundTable" style="margin: 0;padding: 0;height: 100% !important;width: 100% !important;">
            	<tr>
                	<td align="center" valign="top">
                        <table border="0" cellpadding="0" cellspacing="0" width="600" id="templateContainer" style="border: 1px solid #DDDDDD;background-color: #FDFDFD;">
                        	<tr>
                            	<td align="center" valign="top">
                                    <!-- // Begin Template Header \\ -->
                                	<table border="0" cellpadding="0" cellspacing="0" width="600" id="templateHeader" style="background-color: #FFFFFF;border-bottom: 0;">
                                        <tr>
                                            <td class="headerContent" style="color: #202020;font-family: Arial;font-size: 34px;font-weight: bold;line-height: 100%;padding: 0;text-align: center;vertical-align: middle;">
                                            	Weekly DOE Fuel Update for XX/XX/XXXX
                                            </td>
                                        </tr>
                                    </table>
                                    <!-- // End Template Header \\ -->
                                </td>
                            </tr>
                        	<tr>
                            	<td align="center" valign="top">
                                    <!-- // Begin Template Body \\ -->
                                	<table border="0" cellpadding="10" cellspacing="0" width="600" id="templateBody">
                                    	<tr>
                                            <td valign="top" class="bodyContent" style="background-color: #FDFDFD;">
                                
                                                <!-- // Begin Module: Standard Content \\ -->
                                                <table border="0" cellpadding="10" cellspacing="0" width="100%">
                                                    <tr>
                                                        <td valign="top">
                                                            <div style="color: #505050;font-family: Arial;font-size: 14px;line-height: 150%;text-align: left;">
                                                                
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
                            	<td align="center" valign="top">
                                    <!-- // Begin Template Footer \\ -->
                                	<table border="0" cellpadding="10" cellspacing="0" width="600" id="templateFooter" style="background-color: #FDFDFD;border-top: 0;">
                                    	<tr>
                                        	<td valign="top" class="footerContent">
                                            
                                                <!-- // Begin Module: Standard Footer \\ -->
                                                <table border="0" cellpadding="10" cellspacing="0" width="100%">
                                                    <tr>
                                                        <td valign="top" width="370">
                                                            <br>
                                                            <div style="color: #707070;font-family: Arial;font-size: 12px;line-height: 125%;text-align: left;">
                                                                
                                                                <em>Copyright &copy; 2013 bulletshot60, All rights reserved.</em>
                                                                <br>
                                                                <!-- 
 -->
                                                                You are receiving this email because you opted-in via http://doefuel.herokuapp.com.
                                                                <br>
                                                                <strong>Our mailing address is:</strong>
                                                                <br>
                                                                <div class="vcard"><span class="org fn">bulletshot60</span><div class="adr"><div class="street-address">Sulphur Springs Road</div><span class="locality">Greenville</span>, <span class="region">SC</span>  <span class="postal-code">29617</span></div><br><a href="http://herokuapp.us7.list-manage1.com/vcard?u=4b8e0c0ffbfd836e88702418e&amp;id=46e4fe84a5" class="hcard-download">Add us to your address book</a></div>
                                                                <br>
                                                                <!-- 
 -->
                                                                
                                                            </div>
                                                            <br>
                                                        </td>
                                                        <td valign="top" width="170" id="monkeyRewards">
                                                            <br>
                                                            <div style="color: #707070;font-family: Arial;font-size: 12px;line-height: 125%;text-align: left;">
                                                                
 <a href="http://www.mailchimp.com/monkey-rewards/?utm_source=freemium_newsletter&amp;utm_medium=email&amp;utm_campaign=monkey_rewards&amp;aid=4b8e0c0ffbfd836e88702418e&amp;afl=1"><img src="http://cdn-images.mailchimp.com/monkey_rewards/MC_MonkeyReward_15.png" border="0" alt="Email Marketing Powered by MailChimp" title="MailChimp Email Marketing" width="139" height="54"></a> 
                                                            </div>
                                                            <br>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="2" valign="middle" id="utility" style="background-color: #FDFDFD;border-top: 1px solid #F5F5F5;">
                                                            <div style="color: #707070;font-family: Arial;font-size: 12px;line-height: 125%;text-align: center;">
                                                                &nbsp;<a href="http://herokuapp.us7.list-manage.com/unsubscribe?u=4b8e0c0ffbfd836e88702418e&amp;id=46e4fe84a5&amp;e=7f4a3340f0&amp;c=f9b672c580" style="color: #336699;font-weight: normal;text-decoration: underline;">unsubscribe from this list</a> | <a href="http://herokuapp.us7.list-manage.com/profile?u=4b8e0c0ffbfd836e88702418e&amp;id=46e4fe84a5&amp;e=7f4a3340f0" style="color: #336699;font-weight: normal;text-decoration: underline;">update subscription preferences</a><!-- 
 --> | <a href="http://us7.campaign-archive1.com/?u=4b8e0c0ffbfd836e88702418e&amp;id=f9b672c580&amp;e=7f4a3340f0" style="color: #336699;font-weight: normal;text-decoration: underline;">view email in browser</a><!-- 
 -->&nbsp;
                                                            </div>
                                                        </td>
                                                    </tr>
                                                </table>
                                                <!-- // End Module: Standard Footer \\ -->
                                            
                                            </td>
                                        </tr>
                                    </table>
                                    <!-- // End Template Footer \\ -->
                                </td>
                            </tr>
                        </table>
                        <br>
                    </td>
                </tr>
            </table>
        </center>
    <img src="http://portal.mxlogic.com/images/transparent.gif" height="1" width="1"></body>
</html>'

		gb = Gibbon::API.new(ENV["MAILCHIMP_API_KEY"])
		gb.campaigns.create({type: "regular", options: {list_id: "46e4fe84a5", subject: "DOE Weekly Fuel Update: #{regular.effective_date}", from_email: "no-reply@doefuel.herokuapp.com", from_name: "DOE Fuel App", generate_text: true}, content: {html: html}})
	end
end
