<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>Welcome to Dashen Bank's Human Resource Administration System</title>

    <spring:url value="/resources/css/bootstrap.min.css" var="boostrapCss" htmlEscape="true"/>
    <!-- Bootstrap core CSS -->
    <link href="${boostrapCss}" rel="stylesheet">

</head>
<style type="text/css">
    /* Move down content because we have a fixed navbar that is 50px tall */
    body {
        padding-top: 50px;
        padding-bottom: 20px;
    }

    /* highlight results */
    .ui-autocomplete span.hl_results {
        background-color: #ffff66;
    }

    /* loading - the AJAX indicator */
    .ui-autocomplete-loading {
        background: white url('../img/ui-anim_basic_16x16.gif') right center no-repeat;
    }

    /* scroll results */
    .ui-autocomplete {
        max-height: 250px;
        overflow-y: auto;
        /* prevent horizontal scrollbar */
        overflow-x: hidden;
        /* add padding for vertical scrollbar */
        padding-right: 5px;
    }

    .ui-autocomplete li {
        font-size: 16px;
    }

    /* IE 6 doesn't support max-height
    * we use height instead, but this forces the menu to always be this tall
    */
    * html .ui-autocomplete {
        height: 250px;
    }
</style>

<body>

<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">Dashen Bank's HR System</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
            <form class="navbar-form navbar-right">
                <div class="form-group">
                    <input type="text" placeholder="WebDomain" class="form-control">
                </div>
                <div class="form-group">
                    <input type="password" placeholder="Password" class="form-control">
                </div>
                <button type="submit" class="btn btn-success">Sign in</button>
            </form>
        </div><!--/.navbar-collapse -->
    </div>
</nav>

<!-- Main jumbotron for a primary marketing message or call to action -->
<div class="jumbotron">
    <h2 class="centerblock" style="text-align: center;">Search By Keyword :)</h2>
    <div class="container">
        <div class="row">
            <div class="col-xs-8 col-xs-offset-2">
                <div class="input-group">
                    <div class="input-group-btn search-panel">
                        <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                            <span id="search_concept">Filter by</span> <span class="caret"></span>
                        </button>
                        <ul class="dropdown-menu" role="menu">
                            <li><a href="#contains">Contains</a></li>
                            <li><a href="#its_equal">It's equal</a></li>
                            <li><a href="#greather_than">Greather than ></a></li>
                            <li><a href="#less_than">Less than < </a></li>
                            <li class="divider"></li>
                            <li><a href="#all">Anything</a></li>
                        </ul>
                    </div>
                    <input type="hidden" name="search_param" value="all" id="search_param">
                    <input type="text" class="form-control" name="search-query" id='search-query' placeholder="Search term...">
                <span class="input-group-btn">
                    <button class="btn btn-default" type="submit">Search<span class=""></span></button>
                </span>
                </div>
            </div>
        </div>
    </div>

</div>

<div class="container">
    <!-- Example row of columns -->
    <div class="row">
        <div class="col-md-4">
            <h2>SponsouredAd</h2>
            <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
            <p><a class="btn btn-default btn-success" href="#" role="button">Demo &raquo;</a></p>
        </div>
        <div class="col-md-4">
            <h2>Adver2</h2>
            <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
            <p><a class="btn btn-default" href="#" role="button">View details &raquo;</a></p>
        </div>
        <div class="col-md-4">
            <h2>Adver1</h2>
            <p>.</p>
            <p><a class="btn btn-default" href="#" role="button">View details &raquo;</a></p>
        </div>
    </div>

    <hr>

    <footer>
        <p>&copy; 2017 DanTheMan, Inc.</p>
    </footer>
</div> <!-- /container -->


<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="<c:url value="/resources/js/jquery.min.js"/>"></script>
<script src="<c:url value="/resources/js/jquery-ui.min.js"/>"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>

<c:set var="base_url" value="${pageContext.request.localName}"/>
<script type="text/javascript">
    $(document).ready(function() {
        alert('Welcome to HRMS Project Setup');
        console.log("starting javascript");
        $('.search-panel .dropdown-menu').find('a').click(function(e) {
            e.preventDefault();
            var param = $(this).attr("href").replace("#","");
            var concept = $(this).text();
            $('.search-panel span#search_concept').text(concept);
            $('.input-group #search_param').val(param);
        });

        $("#search-button").submit(function (e) {
            e.preventDefault();
            searchUsingApiCall();
        })

        function searchUsingApiCall() {

            var query = $("#search-query").val();

            $.ajax({

                type:"GET",
                contentType:"application/json",
                url:"${base_url}search/api/searchByKeyword",
                data:{"query":$query},
                dataType:"json",
                timeout:100000,
                success:function(data) {
                    console.log("SUCCESS: ", data);
                    display(data);
                },
                error : function(e) {
                    console.log("ERROR: ", e);
                    display(e);
                },
                done : function(e) {
                    console.log("DONE");
                }
            }); //end of ajax block

        }

        jQuery("#search-query").autocomplete({

            source: function (request, response) {
                //alert('im in');
                var query= {};
                query["keyword"] = $("#search-query").val();
                $.ajax({
                    type:"POST",
                    contentType:"application/json",
                    url:"search/api/getKeywords",
                    data:$("#search-query").val(),//JSON.stringify(query),
                    dataType:"json",
                    timeout:100000,
                    success:function(data) {
                        console.log("SUCCESS: ", data);
                        response(data);
                    },

                }); //end of ajax block
            },
            minLength: 1
        });

    });

</script>
</body>
</html>
