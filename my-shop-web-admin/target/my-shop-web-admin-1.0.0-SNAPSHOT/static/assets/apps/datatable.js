/**
 * 初始化DataTables
 * @type {{}}
 */
var DataTables = function () {
    var _dataTable;

    var handlerInitDataTables = function (url,columns) {
            _dataTable = $("#dataTable").DataTable({
            "ordering": false,
            "searching": false,
            "serverSide": true,
            "lengthChange": false,
            ajax: {
                url: url,
                type: 'GET',

            },
            columns: columns,
            language: {
                "sProcessing": "处理中...",
                "sLengthMenu": "显示 _MENU_ 项结果",
                "sZeroRecords": "没有匹配结果",
                "sInfo": "显示第 _START_ 至 _END_ 项结果，共 _TOTAL_ 项",
                "sInfoEmpty": "显示第 0 至 0 项结果，共 0 项",
                "sInfoFiltered": "(由 _MAX_ 项结果过滤)",
                "sInfoPostFix": "",
                "sSearch": "搜索:",
                "sUrl": "",
                "sEmptyTable": "表中数据为空",
                "sLoadingRecords": "载入中...",
                "sInfoThousands": ",",
                "oPaginate": {
                    "sFirst": "首页",
                    "sPrevious": "上页",
                    "sNext": "下页",
                    "sLast": "末页"
                },
                "oAria": {
                    "sSortAscending": ": 以升序排列此列",
                    "sSortDescending": ": 以降序排列此列"
                }
            },

             drawCallback : function(){
                 SweetAlert.initSweetAlert();
             },

    });



        //加载完成之后 初始化checkbox
        // checkbox(dataTable);


        //    全选
        $("#select_all").click(function () {
            if ($(this).prop("checked")) {
                $("input[name='select_one']").prop("checked", true);
                $("tr").addClass('selected');
            } else {
                $("input[name='select_one']").prop("checked", false);
                $("tr").removeClass('selected');
            }
        });
        return _dataTable;

    }

    return {
        initDataTables: function (url,columns) {
           return handlerInitDataTables(url,columns)
        }
    }
}();
