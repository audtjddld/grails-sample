<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
</head>

<body>
<div class="nav" role="navigation">
    <ul>
        <li><g:link class="create" action="create">필터 추가</g:link></li>
    </ul>
</div>

<div id="list-student" class="content scaffold-list" role="main">
    <f:table collection="${scrapingfilterList}"
             properties="['id', 'titleSelector', 'imageSelector', 'stockSelector', 'priceSelector', 'solutionId']"/>
</div>
</body>
</html>
