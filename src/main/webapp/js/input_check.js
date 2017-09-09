var checker = {
    notNull:function (value) {
        if(value && value.length && value.length>0){
            return true;
        }
        return false;
    },
    idCard:function (value) {
        var idReg = /(^\d{15}$)|(^\d{17}([0-9]|X)$)/;
        if(checker.notNull(value)){
            return idReg.test(value);
        }
        return false;
    }
};

var addHelper = function (id,method) {
    var jqDom = $('#'+id);
    var group = $('#'+id+'Wrapper');
    var helperBlock = group.find('.help-block');
    helperBlock.addClass('hide');

    jqDom.bind('input propertychange',function () {

       if(checker[(method ||'notNull')]($(this).val())){
           group.removeClass('has-error');
           group.addClass('has-success');
           helperBlock.addClass('hide');
       }else{
           group.removeClass('has-success');
           group.addClass('has-error');
           helperBlock.removeClass('hide');
       }
    });


};

var addHelper2 = function (id,method) {
    var jqDom = $('#'+id);
    var tdDom = jqDom.parent();

    jqDom.bind('input propertychange',function () {

        if(checker[(method ||'notNull')]($(this).val())){
            tdDom.removeClass('error');
        }else{
            tdDom.addClass('error');
        }

    });
};