// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

function FrontPage_Form1_Validator(theForm)
{
  if (theForm.regno.value == "")
  {
    alert("Please enter a value for the \"Seat No\" field.");
    theForm.regno.focus();
    return (false);
  }

  if (theForm.regno.value.length < 7)
  {
    alert("Please Enter Valid Candidate Seat Number in the \"Seat No\" field.");
    theForm.regno.focus();
    return (false);
  }

  var checkOK = "PNRMXVST";
  
  var checkStr = theForm.regno.value;
  checkStr=checkStr.toUpperCase();
  var firstChar=checkStr.charAt(0);
  var remaining=checkStr.substring(1,checkStr.length);  
  
  
  var allValid = true;
  var decPoints = 0;
  var allNum = "";
  for (i = 0;  i < remaining.length;  i++)
  {
  ch = checkStr.charAt(0);
    for (j = 0;  j < checkOK.length;  j++)
      if (ch == checkOK.charAt(j))
        break;
    if (j == checkOK.length)
    {
      allValid = false;
      break;
    }
   // allNum += ch;
  }
  if (!allValid)
  {
    alert("Please enter valid characters in the \"Seat No.\" field.");
    theForm.regno.focus();
    return (false);
  }
     
  if( isNaN(remaining)){
   alert("Please Enter Valid Candidate Seat Number"); 
   theForm.regno.focus();
   return false;
  }
  return (true);
}

function admission_message(){
	$("#adv_message").show();
	$("#adv_message").fadeOut(3000);
}
