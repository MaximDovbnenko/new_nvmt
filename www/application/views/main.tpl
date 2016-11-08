<!DOCTYPE html>
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="http://bootstrap-3.ru/assets/ico/favicon.ico">

    <title>НЦ НВМТ РАН</title>

  <style id="holderjs-style" type="text/css"></style></head>

  <body>

    <div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="http://bootstrap-3.ru/examples/dashboard/#">НЦ НВМТ РАН - Центр коллективного пользования</a>
        </div>
        <div class="navbar-collapse collapse">
          <ul class="nav navbar-nav navbar-left">
            <li><a href="/HardwereList">Наше ооборудование</a></li>
            <li><a href="/SendRequest">Подать заявку</a></li>
            <li><a href="/">Статус заявки</a></li>
            <li><a href="#">Обратная связь</a></li>
          </ul>
        </div>
      </div>
    </div>
    <div class="container-fluid">
      <?php include 'application/views/'.$content; ?>
    </div>
</body>
</html>

<script type="text/javascript" src="application/js/jquery-3.1.1.min.js"></script>
<link href="application/css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="application/core/js/common.js"></script>
<link rel="stylesheet" href="application/css/bootstrap.min.css">
<link rel="stylesheet" href="application/css/bootstrap-theme.min.css">
<script src="application/js/bootstrap.min.js"></script>