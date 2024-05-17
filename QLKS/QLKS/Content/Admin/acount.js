(function ($) {

    $(document).ready(function () {
        jQuery.validator.addMethod("headphone", function (value, element) {
            var vnf_regex = /((032|033|034|035|036|037|038|039|056|058|059|070|076|077|078|079|081|082|083|084|085|086|087|088|089|090|091|092|093|094|096|097|098|099)+([0-9]{7})\b)/g;
            return vnf_regex.test(value);
        });
        jQuery.validator.addMethod("rigidemail", function (value, element) {
            var testemail = /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i;
            return testemail.test(value);
        });
        jQuery.validator.addMethod("matkhau", function (value, element) {           
            var testemail = /^(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*[!@#$%&*])[a-zA-Z0-9!@#$%&*]+$/i;
            return testemail.test(value);
        });
        $("#form-submit").validate({
            rules:
            {
                tai_khoan: {
                    required: true,
                    minlength: 3,
                },
                sdt: {
                    required: true,
                    headphone: true,
                    minlength: 10,
                    min: 0,
                    maxlength: 10,
                    number: isNaN
                },
                mat_khau: {
                    required: true,
                    minlength: 6,
                    maxlength: 20,
                    matkhau: true,
                },
                mail: {
                    required: true,
                    rigidemail: true
                },
                cmt: {
                    required: true,
                    number: isNaN
                }
                //address: {
                //    maxlength:129
                //}
            },
            messages:
            {
                tai_khoan: {
                    required: "Họ tên không được để trống",
                    minlength: "Tên tối thiểu 3 đến 20 kí tự",
                    maxlength: "Tên tối thiểu 3 đến 20 kí tự",
                },
                sdt: {
                    required: "Số điện thoại không được để trống",
                    headphone: "Số điện thoại không hợp lệ",
                    number: "Vui lòng nhập số"
                },
                mat_khau: {
                    required: "Mật khẩu tối thiểu từ 6 đến 20 bao gồm ký tự đặc biệt, số, chữ; phân biệt chữ hoa chữ thường",
                    minlength: "Mật khẩu tối thiểu từ 6 đến 20 bao gồm ký tự đặc biệt, số, chữ; phân biệt chữ hoa chữ thường",
                    matkhau: "Mật khẩu tối thiểu từ 6 đến 20 bao gồm ký tự đặc biệt, số, chữ; phân biệt chữ hoa chữ thường",
                    maxlength: "Mật khẩu tối thiểu từ 6 đến 20 bao gồm ký tự đặc biệt, số, chữ; phân biệt chữ hoa chữ thường",

                },
                mail: {
                    required: "Email không được để trống",
                    rigidemail: "Email không đúng định dạng",
                },
                cmt: {
                    required: "Vui lòng nhập số CMT",
                    number: "Vui lòng nhập số"
                }
            },
            submitHandler: function (form) {
                form.submit();
            }
        });
    })
})(jQuery);