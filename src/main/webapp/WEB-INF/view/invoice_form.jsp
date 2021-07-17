<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en"> <!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
    <meta charset="UTF-8"/>
    <title> Digico Labs | Invoice </title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
    <meta content="" name="description"/>
    <meta content="" name="author"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <%@include file="header_src.jsp" %>
    <link rel="stylesheet" href="../../resources/static/assets/css/bootstrap-select.min.css" />
    <link rel="stylesheet" href="../../resources/static/assets/plugins/chosen/chosen.min.css" />
</head>

<!-- END HEAD -->

<!-- BEGIN BODY -->
<body class="padTop53 ">

<!-- MAIN WRAPPER -->
<div id="wrap">


    <!-- HEADER SECTION -->
    <%@include file="header.jsp" %>
    <!-- END HEADER SECTION -->


    <!-- MENU SECTION -->
    <%@include file="left.jsp" %>

    <!--END MENU SECTION -->


    <!--PAGE CONTENT -->
    <div id="content">

        <div class="inner" style="min-height: 700px;">
            <ul class="breadcrumb" style="margin-top:2%;">
                <li><a href="/home">Home</a></li>
                <li><a href="/invoice/insertPage">Add Invoice</a></li>
            </ul>
            <div class="row">


                <div class="col-lg-12">
                    <div class="box dark">
                        <header>
                            <div class="icons">
                                <i class="icon-glass"></i>
                            </div>
                            <h5>Enter Invoice Details</h5>
                        </header>

                        <br>


                        <form id="invoiceForm" class="form-horizontal" align="center"
                              novalidate>







                            <br/>
                            <div class="row page">
                                <div class="col-lg-12">
                                    <div class="box dark staticParent">

                                        <br/>

                                        <div class="row">
                                            <div class="form-group">
                                                <div class="col-md-4">
                                                    <label class="control-label col-md-5" style="float: right;"> User ID</label>
                                                </div>
                                                <div class="col-md-4">
                                                     <%--<c:forEach items="${user}" var="temp">--%>
                                                    <input type="text" id="memberId" name="memberId"
                                                           readonly="readonly" class="form-control"
                                                           value="<c:out value="${user.userId}" />"/>
                                                </div>
                                            </div>
                                        </div>

                                        <br>


                                        <div class="row">


                                            <div class="col-md-3 text-center">
                                                <strong>Product</strong>
                                            </div>
                                            <div class="col-md-2 text-center">
                                                <strong>Unit Price</strong>
                                            </div>
                                            <div class="col-md-1 text-center">
                                                <strong>Quantity</strong>
                                            </div>
                                            <div class="col-md-2 text-center" id="">
                                                <strong>Sub Total</strong>
                                            </div>

                                            <div class="col-md-2 text-center">
                                                <strong></strong>
                                            </div>
                                        </div>
                                        <br>
                                        <div class="inv_body">
                                            <div class="row inv_row" id="inv_row0">

                                                <div class="col-md-3 text-center">
                                                    <label>
                                                        <input id="name0" name="name" class="uniform" type="checkbox" onclick="isCheckedById(this.id)" value="Package1" onchange="myFunction0(this)" /> Package 01
                                                    </label>
                                                </div>

                                                <div class="col-md-2 text-center">
                                                    <input id="unitPrice0" class="form-control" style="text-align: right;"
                                                           name="unitPrice" type="text"
                                                           value="250"/>
                                                </div>
                                                <div class="col-md-1 form-group text-center " style="margin-left: 0%;">
                                                    <input class="form-control child" name="quantity" id="quantity0"
                                                           type="text" onchange="getSubtotal(this)" readonly="readonly
                                                           value="<c:out value="${invoice.quantity}" />"/>
                                                </div>

                                                <div class="col-md-2 text-center">
                                                    <input id="subTotal0" class="form-control amount" style="text-align: right;"
                                                           name="subTotal" type="text" readonly="readonly"
                                                           value="<c:out value="${invoice.subTotal}" />"/>
                                                </div>


                                            </div>
                                            <div class="row inv_row" id="inv_row1">

                                                <div class="col-md-3 text-center">
                                                    <label>
                                                        <input id="name1" name="name" class="uniform" onclick="isCheckedById(this.id)" type="checkbox" value="Package2" onchange="myFunction1(this)" /> Package 02
                                                    </label>
                                                </div>

                                                <div class="col-md-2 text-center">
                                                    <input id="unitPrice1" class="form-control" style="text-align: right;"
                                                           name="unitPrice" type="text"
                                                           value="350"/>
                                                </div>
                                                <div class="col-md-1 form-group text-center " style="margin-left: 0%;">
                                                    <input class="form-control child" name="quantity" id="quantity1"
                                                           type="text"  onchange="getSubtotal(this)" readonly="readonly"
                                                           value="<c:out value="${invoice.quantity}" />"/>
                                                </div>

                                                <div class="col-md-2 text-center">
                                                    <input id="subTotal1" class="form-control amount" style="text-align: right;"
                                                           name="subTotal" type="text" readonly="readonly"
                                                           value="<c:out value="${invoice.subTotal}" />"/>
                                                </div>


                                            </div>
                                            <div class="row inv_row" id="inv_row2">

                                                <div class="col-md-3 text-center">
                                                    <label>
                                                        <input id="name2" name="name" class="uniform" type="checkbox" onclick="isCheckedById(this.id)" value="Package3" onchange="myFunction2(this)" /> Package 03
                                                    </label>
                                                </div>

                                                <div class="col-md-2 text-center">
                                                    <input id="unitPrice2" class="form-control" style="text-align: right;"
                                                           name="unitPrice" type="text"
                                                           value="500"/>
                                                </div>
                                                <div class="col-md-1 form-group text-center " style="margin-left: 0%;">
                                                    <input class="form-control child" name="quantity" id="quantity2"
                                                           type="text"  onchange="getSubtotal(this)" readonly="readonly"
                                                           value="<c:out value="${invoice.quantity}" />"/>
                                                </div>

                                                <div class="col-md-2 text-center">
                                                    <input id="subTotal2" class="form-control amount" style="text-align: right;"
                                                           name="subTotal" type="text" readonly="readonly"
                                                           value="<c:out value="${invoice.subTotal}" />"/>
                                                </div>


                                            </div>




                                        </div>


                                        <div id="cash">

                                            <br>

                                            <div class="row inv_row">
                                                <div class="col-md-3 text-center">
                                                    <label style="margin-left:-2%;">Total (Rs.):</label>
                                                </div>
                                                <div class="col-md-3">
                                                    <input placeholder="Total" type="text"
                                                           id="payTotal" name="total" style="text-align: right;"
                                                           class="form-control total">
                                                </div>
                                            </div>

                                        </div>

                                        <br>
                                        <div class="row">
                                            <div class="form-actions no-margin-bottom"
                                                 style="text-align: center;">
                                                <div class="col-sm-4"></div>
                                                <div class="col-sm-4">
                                                    <div>
                                                        <input id="btn_save"
                                                               value="Save" class="btn btn-success btn-md " type="submit" >
                                                        <input id="btn_reset" value="Reset"
                                                               class="btn btn-warning btn-md " type="reset"/> <a
                                                            class="btn btn-danger btn-md"
                                                            href="/dashboard/">Cancel</a>
                                                    </div>

                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>


                            </div>
                        </form>


                    </div>
                </div>


            </div>


        </div>

    </div>
    <!--END PAGE CONTENT -->


</div>

<!--END MAIN WRAPPER -->

<!-- FOOTER -->
<%@include file="footer.jsp" %>
<!--END FOOTER -->

<%@include file="footer_src.jsp" %>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.13.4/jquery.mask.min.js"></script>


<script>




    function myFunction0() {
        document.getElementById("quantity0").readOnly = false;
    }
    function myFunction1() {
        document.getElementById("quantity1").readOnly = false;
    }
    function myFunction2() {
        document.getElementById("quantity2").readOnly = false;
    }


    function getTotal() {
        $("#payTotal").val(0);

        val0 = $('#subTotal0').val() == "" ? 0 : $('#subTotal0').val();
        val1 = $('#subTotal1').val() == "" ? 0 : $('#subTotal1').val();
        val2 = $('#subTotal2').val() == "" ? 0 : $('#subTotal2').val();

        $("#payTotal").val(parseInt(val0)+parseInt(val1) + parseInt(val2));

    }



    </script>




<script src="../../resources/static/assets/plugins/chosen/chosen.jquery.min.js"></script>


<script>

    function getSubtotal(t){

        var id_ = t.id;
        var lineID = id_.replace("quantity", "");
        var unitPrice =  Number($("#unitPrice"+lineID).val());
        $("#subTotal"+lineID).val(unitPrice * Number(t.value));
        getTotal();
    }


</script>


<script>

   var total_amount = function () {

       var sum = 0;

       $('.amount').each(function () {

           var num = $(this).val();
           
           if(num != 0){
               sum += parseFloat(num);
           }
       });
       $('#payTotal').val(sum);

   }
   $('.amount').keyup(function () {

       total_amount();

   });

    </script>


<script>

    function getFormDataAsDTO(formId) {
        var formElement = $('form#' + formId);
        var formData = new Object();



        var count = Number($("[id^='inv_row']").last().attr('id').replace("inv_row", ""));
        var names =[];
        var unitPrices =[];
        var quantities=[];
        var subTotals=[];
        var i;
        for (i = 0; i <= count; i++) {
            names[i] = $("#name"+i).val();
            unitPrices[i]= $("#unitPrice"+i).val();
            quantities [i]=$("#quantity"+i).val();
            subTotals [i]=$("#subTotal"+i).val();


        }
        formData['names']= names;
        formData['unitPrices']= unitPrices;
        formData['quantities']= quantities;
        formData['subTotals']=subTotals;
        formData['memberId']= $('#memberId').val();
        formData['total'] = $('#payTotal').val();

        return JSON.stringify(formData);
    }

    function isCheckedById(id) {

       //  var id_ = $("#"+id).val();
        var index_no = id.substring(4,5);

        if ($("#"+id).is(':checked')) {

        } else {
             $('#quantity'+index_no).val("");
             $('#subTotal'+index_no).val("");
        }
    }


</script>



<script>
    $(function() {
        formValidation();
        noLetter();
    });
    $(function() {
        /*----------- BEGIN chosen CODE -------------------------*/

        $(".chzn-select").chosen();
        $(".chzn-select-deselect").chosen({
            allow_single_deselect : false

        });
        /*----------- END chosen CODE -------------------------*/
    });


    function calculateTotal(){
        val0 =  $('#subTotal0').val()==""?0:$('#subTotal0').val();
        val1 =  $('#subTotal1').val()==""?0:$('#subTotal1').val();
        val2 =  $('#subTotal2').val()==""?0:$('#subTotal2').val();

        $("#payTotal").val(val0+val1+val2);


    }
</script>




<script type="text/javascript">
    $(document).ready(function () {
        $(function() {
            formValidation();
        });
        $("#invoiceForm").submit(
            function (e) {
                e.preventDefault();
                if (!$("#invoiceForm").valid())
                    return false;
                var formData = getFormDataAsDTO("invoiceForm");
                $.ajax({
                    type: "POST",
                    url: "/invoice/save",
                    dataType: 'json',
                    contentType: 'application/json',
                    data: formData,
                    success: function (data) {
                        if (data.code == 'SUCCESS') {
                            swal(
                                {
                                    title: "Success Function!",
                                    text: data.message,
                                    type: "success",
                                    showCancelButton: false,
                                    confirmButtonColor: "#DD6B55",
                                    confirmButtonText: "OK!",
                                    closeOnConfirm: false
                                },
                                function () {
                                    window.location = "/dashboard/";
                                });
                        } else {
                            swal(
                                "Data not saved!",
                                data.message,
                                "error");
                        }
                    }

                });

            });


    });


</script>



</body>

<!-- END BODY -->
</html>
