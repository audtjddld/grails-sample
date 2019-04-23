<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
</head>

<body>
<div class="nav" role="navigation">
    <ul>
        <li><g:link class="list" action="index">리스트</g:link></li>
    </ul>
</div>

<div id="show-student" class="content scaffold-show" role="main">

    <g:form resource="${this.scrapingfilter}" method="PUT">
        <fieldset class="form">
            <div class="fieldcontain required">
                <label for="id">ID
                    <span class="required-indicator">*</span>
                </label>
                <input type="text" name="id" id="id" required value="${scrapingfilter.id}"/>
            </div>

            <div class="fieldcontain required">
                <label for="imageSelector">imageSelector</label>
                <input type="text" name="imageSelector" id="imageSelector" value="${scrapingfilter.imageSelector}"/>
            </div>

            <div class="fieldcontain required">
                <label for="titleSelector">titleSelector</label>
                <input type="text" name="titleSelector" id="titleSelector" value="${scrapingfilter.titleSelector}"/>
            </div>

            <div class="fieldcontain required">
                <label for="stockSelector">stockSelector</label>
                <input type="text" name="stockSelector" id="stockSelector" value="${scrapingfilter.stockSelector}"/>
            </div>

            <div class="fieldcontain required">
                <label for="priceSelector">priceSelector</label>
                <input type="text" name="priceSelector" id="priceSelector" value="${scrapingfilter.priceSelector}"/>
            </div>

            <div class="fieldcontain required">
                <label for="solutionId">solutionId</label>
                <input type="text" name="solutionId" id="solutionId" required value="${scrapingfilter.solutionId}"/>
            </div>
        </fieldset>
        <fieldset class="buttons">
            <g:submitButton name="save" class="save" value="수정"/>
            <input type="button" name="delete" class="delete" value="삭제" data-id="${scrapingfilter.id}" id="deleteBtn"/>
        </fieldset>
    </g:form>
</div>

<script type="text/javascript">
  $(function () {
    $('#deleteBtn').on('click', function () {
      if (confirm('삭제하시겠습니까?')) {
        var id = $(this).data('id');
        $.ajax({
          type: 'delete',
          url: '/scrapingfilter/delete/' + id,
          success: function (data) {
            alert('삭제되었습니다.');
            location.href= "/scrapingfilter/index";
          }
        });
      }
    })
  })

</script>
</body>
</html>