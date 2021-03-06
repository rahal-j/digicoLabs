﻿function formValidation() {
    "use strict";
    $(document).ready(function () {


        function valID(value, element) {
            return /^[0-9]{9}[VXvx]+$/.test(value);
        }

        function NameValidation(value, element) {
            return /^[a-zA-Z.\s]+$/.test(value);

        }

        function PhoneValidation(value, element) {
            return /[0-9]{9}/.test(value);
        }

        function QtyValidation(value, element) {
            return /[1-9]/.test(value);
        }

        function DiscountVal(value, element) {
            return /[0-9]/.test(value);
        }

        function NoSpace(value, element) {
            return /^[a-zA-Z_\-]+$/.test(value);
        }

        function Noleak(value, element) {
            return value.indexOf(" ") < 0 && value != "";
        }

        function myDisc(value, element) {
            return /^(0|[0-99]\d?)\.\d{2}|100\.00$/.test(value);
        }


        $.validator.addMethod("nic", valID, "Please insert valid NIC format");
        $.validator.addMethod("name_validation", NameValidation, "Please insert only alphabetic characters with . or spaces");
        $.validator.addMethod("phone_number", PhoneValidation, "Please insert valid Phone number");
        $.validator.addMethod("qty", QtyValidation, "Please Enter positive value");
        $.validator.addMethod("disc", DiscountVal, "Please Enter valid discount");
        $.validator.addMethod("no_space", NoSpace, "Please Enter no spaces");
        $.validator.addMethod("noSpace", Noleak, "Please Enter no spaces or blanks");
        $.validator.addMethod("my_disc", myDisc, "Please Enter a valid discount testerf");






        /*----------- END validate CODE -------------------------*/
        $("#new_login").validate({
            rules: {

                password: {
                    required: true,
                    minlength: 5
                },
                re_password: {
                    required: true,
                    equalTo: "#password"
                }
            },
            messages: {
                password: {
                    required: "Please enter new password",
                    minlength: "Enter at least five characters"
                },
                re_password: {
                    required: "Please confirm new password"
                }
            },
            errorClass: 'help-block',
            errorElement: 'span',
            highlight: function (element, errorClass, validClass) {
                $(element).parents('.form-group').removeClass('has-success').addClass('has-error');
            },
            unhighlight: function (element, errorClass, validClass) {
                $(element).parents('.form-group').removeClass('has-error').addClass('has-success');
            }
        });


        $('#userForm').validate({

            rules: {
                /*
                             this is product form validation */
                desc: "required",
                firstName: {
                    required: true,
                    name_validation: true,
                    no_space: true
                },

                lastName: {
                    required: true,
                    name_validation: true,
                    no_space: false
                },
                title: {
                    required: true,
                },
                email: {
                    required: true,
                    email: true,
                    no_space: false
                },
                nic: {
                    required: true,
                    nic: true,
                    no_space: false
                },
                telephone: {
                    phone_number: true,
                    no_space: false,
                    required: true,
                    minlength: 10,
                    maxlength: 10
                },
                emergencyNo: {
                    phone_number: true,
                    no_space: false,
                    required: true,
                    minlength: 10
                },

                address: {
                    required: true,

                },
                gender: {
                    required: true,

                },


                password: {
                    required: true,
                    minlength: 5
                },
                rePassword: {
                    required: true,
                    equalTo: "#password"
                },
                userName: {
                    required: true,

                },

                agree2: "required",
                digits: {
                    required: true,
                    digits: true
                },
                range: {
                    required: true,
                    range: [5, 16]
                }
            },
            messages: {

                password: {
                    required: "Please enter new password",
                    minlength: "Enter at least five characters"
                },
                rePassword: {
                    required: "Please confirm new password"
                },

                first_name: {
                    required: "Please fill this field",
                    name_validation: "Please insert only alphabetic characters",
                    //	no_space:"No Spaces please"

                },
                last_name: {
                    required: "Please fill this field",
                    name_validation: "Please insert only alphabetic characters",
                    //  no_space:"No Spaces please"
                },
                email: {
                    required: "Please fill this field",
                    email: "Enter a valid e-mail",
                    // no_space:"No Spaces please"
                },
                nic: {
                    nic: "Please insert valid NIC format",
                    required: "Please fill this field",
                    //  no_space:"No Spaces please"

                },
                mobile_number: {

                    phone_number: "Please insert valid Phone number",
                    //  	no_space:"No Spaces please",
                    required: "Please fill this field",
                    minlength: "min length is 10",
                    maxlength: "max length is 10"
                },

                address: {
                    required: "Enter your address"

                },


            },
            errorClass: 'help-block',
            errorElement: 'span',
            highlight: function (element, errorClass, validClass) {
                $(element).parents('.form-group').removeClass('has-success').addClass('has-error');
                $(element).parents('.input-group-addon').removeClass('has-success').addClass('has-error');

            },
            unhighlight: function (element, errorClass, validClass) {
                $(element).parents('.form-group').removeClass('has-error').addClass('has-success');
            }
        });
        $('#front_registration_form').validate({

            rules: {
                /*
                             this is product form validation */
                desc: "required",
                First_Name: {
                    name_validation: true,
                    required: true,
                    no_space: false,
                },

                last_name: {
                    required: true,
                    name_validation: true,
                    no_space: false,
                },
                gender: {
                    required: true,

                },
                email: {
                    required: true,
                    remote: {
                        url: 'UserCon?action=checkExistingMail',
                        type: 'GET',
                        //   data: { email: $('#email').val()},
                        async: true
                    }
                },
                nic: {
                    required: true,
                    nic: true,
                    remote: {
                        url: 'UserCon?action=UserIdChecker',
                        type: 'GET',
                        //  data: { nic: $('#nic').val()},
                        async: true
                    }

                },
                mobile_number: {
                    phone_number: true,

                },

                address: {
                    required: true,

                },

                dob: {
                    required: true,
                },
                status: {
                    required: true,
                },

            },
            messages: {

                first_name: {
                    required: "Please fill this field",
                    name_validation: "Please insert only alphabetic characters",
                    //	no_space:"No Spaces please"

                },
                last_name: {
                    required: "Please fill this field",
                    name_validation: "Please insert only alphabetic characters",
                    //  no_space:"No Spaces please"
                },
                email: {
                    required: "Please fill this field",
                    email: "Enter a valid e-mail",
                    remote: "This email already exist!",
                    // no_space:"No Spaces please"
                },
                nic: {
                    nic: "Please insert valid NIC format",
                    required: "Please fill this field",
                    remote: "This NIC already exist!",
                    //  no_space:"No Spaces please"

                },
                mobile_number: {

                    phone_number: "Please insert valid Phone number",
                    //  	no_space:"No Spaces please",
                    required: "Please fill this field",
                    minlength: "min length is 10"
                },

                address: {
                    required: "Enter your address"

                },


            },
            errorClass: 'help-block',
            errorElement: 'span',
            highlight: function (element, errorClass, validClass) {
                $(element).parents('.form-group').removeClass('has-success').addClass('has-error');
                $(element).parents('.input-group-addon').removeClass('has-success').addClass('has-error');

            },
            unhighlight: function (element, errorClass, validClass) {
                $(element).parents('.form-group').removeClass('has-error').addClass('has-success');
            }
        });

        $('#classRoomForm').validate({

            rules: {
                name: "required",
                status: {
                    required: true
                }
            },
            messages: {

                name: {
                    required: "Please Enter Class name",
                },
            },
            errorClass: 'help-block',
            errorElement: 'span',
            highlight: function (element, errorClass, validClass) {
                $(element).parents('.form-group').removeClass('has-success').addClass('has-error');
                $(element).parents('.input-group-addon').removeClass('has-success').addClass('has-error');

            },
            unhighlight: function (element, errorClass, validClass) {
                $(element).parents('.form-group').removeClass('has-error').addClass('has-success');
            }
        });

        $('#exerciseForm').validate({

            rules: {
                name: "required",
                status: {
                    required: true
                }
            },
            messages: {

                name: {
                    required: "Please Enter Exercise name",
                },
            },
            errorClass: 'help-block',
            errorElement: 'span',
            highlight: function (element, errorClass, validClass) {
                $(element).parents('.form-group').removeClass('has-success').addClass('has-error');
                $(element).parents('.input-group-addon').removeClass('has-success').addClass('has-error');

            },
            unhighlight: function (element, errorClass, validClass) {
                $(element).parents('.form-group').removeClass('has-error').addClass('has-success');
            }
        });

        $('#subscriptionForm').validate({

            rules: {
                name: "required",
                status: {
                    required: true
                }
            },
            messages: {

                name: {
                    required: "Please Enter Subscription name",
                },
            },
            errorClass: 'help-block',
            errorElement: 'span',
            highlight: function (element, errorClass, validClass) {
                $(element).parents('.form-group').removeClass('has-success').addClass('has-error');
                $(element).parents('.input-group-addon').removeClass('has-success').addClass('has-error');

            },
            unhighlight: function (element, errorClass, validClass) {
                $(element).parents('.form-group').removeClass('has-error').addClass('has-success');
            }
        });

        $('#userCourseForm').validate({

            rules: {
                name: "required",
                status: {
                    required: true
                }
            },
            messages: {

                course: {
                    required: "Please Select Course !",
                },
            },
            errorClass: 'help-block',
            errorElement: 'span',
            highlight: function (element, errorClass, validClass) {
                $(element).parents('.form-group').removeClass('has-success').addClass('has-error');
                $(element).parents('.input-group-addon').removeClass('has-success').addClass('has-error');

            },
            unhighlight: function (element, errorClass, validClass) {
                $(element).parents('.form-group').removeClass('has-error').addClass('has-success');
            }
        });


        $('#userRoleForm').validate({

            rules: {
                name: "required",
                status: {
                    required: true
                }
            },
            messages: {

                name: {
                    required: "Please Enter UserRole name",
                },
            },
            errorClass: 'help-block',
            errorElement: 'span',
            highlight: function (element, errorClass, validClass) {
                $(element).parents('.form-group').removeClass('has-success').addClass('has-error');
                $(element).parents('.input-group-addon').removeClass('has-success').addClass('has-error');

            },
            unhighlight: function (element, errorClass, validClass) {
                $(element).parents('.form-group').removeClass('has-error').addClass('has-success');
            }
        });


        $('#paymentForm').validate({

            rules: {
                name: "required",
                status: {
                    required: true
                },
                amount: {
                    required: true
                },
                createdUserName: {
                    required: true
                },
                paymentFromDate: {
                    required: true
                },
                paymentToDate: {
                    required: true
                }
            },
            messages: {

                name: {
                    required: "Please Enter Course name",
                },
                startDate: {
                    required: "Please Enter valid date",
                },
                endDate: {
                    required: "Please Enter valid date"
                }
            },
            errorClass: 'help-block',
            errorElement: 'span',
            highlight: function (element, errorClass, validClass) {
                $(element).parents('.form-group').removeClass('has-success').addClass('has-error');
                $(element).parents('.input-group-addon').removeClass('has-success').addClass('has-error');

            },
            unhighlight: function (element, errorClass, validClass) {
                $(element).parents('.form-group').removeClass('has-error').addClass('has-success');

            }
        });



        $('#roomScheduleForm').validate({

            rules: {
                room: "required",
                status: {
                    required: true
                },
                course: {
                    required: true
                },
                startTime: {
                    required: true
                },
                endTime: {
                    required: true
                },
            },
            messages: {


                startDate: {
                    required: "Please Enter valid date",
                },
                endDate: {
                    required: "Please Enter valid date"
                }
            },
            errorClass: 'help-block',
            errorElement: 'span',
            highlight: function (element, errorClass, validClass) {
                $(element).parents('.form-group').removeClass('has-success').addClass('has-error');
                $(element).parents('.input-group-addon').removeClass('has-success').addClass('has-error');

            },
            unhighlight: function (element, errorClass, validClass) {
                $(element).parents('.form-group').removeClass('has-error').addClass('has-success');

            }
        });

        $('#classRoomForm1').validate({

            rules: {
                name: {
                    required: true,


                },
                status: {
                    required: true,
                },
                messages: {

                    desc: {
                        required: "Please fill this field",


                    }
                },
                errorClass: 'help-block',
                errorElement: 'span',
                highlight: function (element, errorClass, validClass) {
                    $(element).parents('.form-group').removeClass('has-success').addClass('has-error');
                    $(element).parents('.input-group-addon').removeClass('has-success').addClass('has-error');

                },
                unhighlight: function (element, errorClass, validClass) {
                    $(element).parents('.form-group').removeClass('has-error').addClass('has-success');
                }
            }
        });

        $('#barcode_submit_form').validate({

            rules: {
                barcode_name: {
                    required: true,

                },
                messages: {

                    barcode_name: {
                        required: "Please Use Your ID",


                    }
                },
                errorClass: 'has-error',
                errorElement: 'span',
                highlight: function (element, errorClass, validClass) {
                    $(element).parents('.form-group').removeClass('has-success').addClass('has-error');
                    $(element).parents('.input-group-addon').removeClass('has-success').addClass('has-error');

                },
                unhighlight: function (element, errorClass, validClass) {
                    $(element).parents('.form-group').removeClass('has-error').addClass('has-success');
                }
            }
        });


        $('#invoiceForm').validate({

            rules: {

                desc: "required",
                first_name: {
                    required: true,
                    name_validation: true
                },

                b_name: {
                    required: true,
                    name_validation: true
                },
                email: {
                    required: true,
                    email: true
                },
                nic: {
                    required: true,
                    nic: true
                },
                disc: {

                    min: 0,
                    max: 100,
                    disc: true,


                },


                /*   inv_qty: {

                       qty:true,
                       required: true,
                       minlength: 1

                   },*/

                address: {
                    required: true,

                },
                role: {
                    required: true,

                },
                dob: {
                    required: true,

                },
                confirm_password2: {
                    required: true,
                    minlength: 5,
                    equalTo: "#password2"
                },
                agree2: "required",
                digits: {
                    required: true,
                    digits: true
                },
                range: {
                    required: true,
                    range: [5, 16]
                }
            },
            messages: {

                first_name: {
                    required: "Please fill this field",
                    name_validation: "Please insert only alphabetic characters"
                },
                last_name: {
                    required: "Please fill this field",
                    name_validation: "Please insert only alphabetic characters"
                },
                email: {
                    required: "Please fill this field",
                    email: "Enter a valid e-mail"
                },
                nic: {
                    nic: "Please insert valid NIC format",
                    required: "Please fill this field"
                },
                inv_qty: {
                    minus: "Only alphabatic characters allowed",
                    qty: "Enter more than 1",
                    required: "Please fill this field",
                    minlength: 1
                },

                address: {
                    required: "Enter your address"

                },


            },
            errorClass: 'help-block',
            errorElement: 'span',
            highlight: function (element, errorClass, validClass) {
                $(element).parents('.form-group').removeClass('has-success').addClass('has-error');
                $(element).parents('.input-group-addon').removeClass('has-success').addClass('has-error');

            },
            unhighlight: function (element, errorClass, validClass) {
                $(element).parents('.form-group').removeClass('has-error').addClass('has-success');
            }


        });


        $('#sheduleForm').validate({

            rules: {


                description: {
                    required: true
                },
                set_per_rep: {
                    required: true,
                    qty: true
                },

                no_of_rep: {
                    required: true,
                    qty: true
                }
            },
            messages: {

                set_per_rep: {
                    required: "Please fill this field",
                    qty: "Please insert only numbers"
                },
                no_of_rep: {
                    required: "Please fill this field",
                    qty: "Please insert only numbers"
                }


            },
            errorClass: 'help-block',
            errorElement: 'span',
            highlight: function (element, errorClass, validClass) {
                $(element).parents('.form-group').removeClass('has-success').addClass('has-error');
                $(element).parents('.input-group-addon').removeClass('has-success').addClass('has-error');

            },
            unhighlight: function (element, errorClass, validClass) {
                $(element).parents('.form-group').removeClass('has-error').addClass('has-success');
            }


        });
        $('#memDetailForm').validate({

            rules: {

                user_id: {
                    required: true,
                },

                height: {
                    required: true,
                    qty: true,
                },
                weight: {
                    required: true,
                    qty: true,
                },

                goal_weight: {
                    required: true,
                    qty: true,
                },
                bicep: {

                    number: true,
                },
                chest: {

                    number: true,
                },
                hip: {

                    number: true,
                },
                thigh: {

                    number: true,
                },
                sholuder_length: {

                    number: true,

                }
            },
            messages: {},
            errorClass: 'help-block',
            errorElement: 'span',
            highlight: function (element, errorClass, validClass) {
                $(element).parents('.form-group').removeClass('has-success').addClass('has-error');
                $(element).parents('.input-group-addon').removeClass('has-success').addClass('has-error');

            },
            unhighlight: function (element, errorClass, validClass) {
                $(element).parents('.form-group').removeClass('has-error').addClass('has-success');
            }


        });


    });
}

function noLetter() {

    $(function () {
        $('.staticParent').on('keydown', '.child', function (e) {
            -1 !== $.inArray(e.keyCode, [46, 8, 9, 27, 13, 110, 190]) || /65|67|86|88/.test(e.keyCode) && (!0 === e.ctrlKey || !0 === e.metaKey) || 35 <= e.keyCode && 40 >= e.keyCode || (e.shiftKey || 48 > e.keyCode || 57 < e.keyCode) && (96 > e.keyCode || 105 < e.keyCode) && e.preventDefault()
        });
    })


}
