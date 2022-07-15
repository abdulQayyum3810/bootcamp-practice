function validateForm(){
    var name= document.getElementById("name").value;
    var email= document.getElementById("email").value;
    var dob= document.getElementById("dob").value;
    var interest= document.getElementById("interest").value;
    var individual= document.getElementById("individual").checked;
    var organization= document.getElementById("organization").checked;
    var aboutyou= document.getElementById("about-you").value;
    console.log(interest)
    try{
        if(!name) throw "Name field is empty"
        if(!email) throw "email field is empty"
        if(!dob) throw "Please select valid date of birth"
        if(interest==="select") throw "Please select valid interest"
        if(!individual && !organization ) throw "please select individual or organization"
        if(!aboutyou) throw "Please write something about you"
        var qs="summary.html?name="+name+"&email="+email+"&dob="+dob+"&interest="+interest+"&individual="+individual+"&organization="+organization+"&aboutinfo="+aboutyou
    window.open(qs)
        
    }
    catch(err){
        window.alert(err)
    }
}