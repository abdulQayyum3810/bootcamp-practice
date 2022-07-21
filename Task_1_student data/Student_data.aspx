<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Student_data.aspx.cs" Inherits="Task1_Student_data.Student_data" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <title></title>
    <script type="text/javascript">



            $("#StudentListDropDown").on("change", function () {
                var studentName = $("#StudentListDropDown").val();
                console.log(studentName);

                $.ajax({

                    url: "Student_data.aspx/GetStudentData",
                    type: "GET",
                    contentType: "application/json; charset=utf-8",
                    data= { "name": studentName },
                    dataType: "json",
                    success: function (data) {

                        /*$("#student-data").text(data.d.Name)*/;
                        console.log(data.d)

                    },
                    error: function (data) {
                        alert('error');
                    }

                });

            });


    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DropDownList ID="StudentListDropDown"  runat="server" ></asp:DropDownList>
            <asp:ScriptManager runat="server"></asp:ScriptManager>
            <button id="btn" >change</button>
            <h2 id="student-data">


            </h2>
            
        </div>
    </form>


</body>

</html>
