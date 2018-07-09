$(document).ready(function () {
    function addRow() {
        var html = '<tr>' +
					'<td><input type="checkbox" name="record" style="width:5vw;height:5vh;" id="select_equip"></td>' +
                    '<td><input type="text" runat="server" class="form-control" id="txt_Equipment" /></td>' +
                    '<td><a class="nav-link" data-toggle="modal" href="maintops.aspx" data-target="#editDetailsModal"><button type="button" class="btn btn-primary">Edit Details</button></a ></td>' +
            '</tr>'
        $("#editDetailsModal").load("maintops.aspx");
		
		
        $(html).appendTo($("#equipment_table"))
    };
    $("#add_row").click(addRow);


    $("#equipment_table").on("click", "#add_row", addRow);

    $("#delete_row").click(function () {
        $("table tbody").find('input[name="record"]').each(function () {
            if ($(this).is(":checked")) {
                $(this).parents("tr").remove();
            }
        });
    });

    function loadPopup() {
        $.ajax({
            type: "GET",
            url: "login.aspx"
        }).done(function (data) {
            $('body').append($(data).popup());
            $('#popup1').popup('open');
        });
    }

});



