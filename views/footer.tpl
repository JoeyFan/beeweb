{{define "footer_en"}}
<div class="footer-landscape">
    <div class="footer-landscape-image">
        <!-- footer -->
        <div class="container">
            <div class="row">
                <div class="span12 footer">
                    <div class="span8 tbox">
                    	Beego web framework is an open source project, launched by <a href="https://github.com/astaxie">AstaXie</a>, and maintained by Beego developer community. Under the <a href="http://www.apache.org/licenses/LICENSE-2.0.html">apache 2.0 licence</a>.
                        <strong>Language:</strong>
					    <div class="btn-group dropup">
						    <button class="btn dropdown-toggle" data-toggle="dropdown">{{.CurLang}} <span class="caret"></span></button>
						    <ul class="dropdown-menu">
							{{$keyword := .Keyword}}
						    	{{range .RestLangs}}
						    	<li><a href="?lang={{.Lang}}&q={{$keyword}}">{{.Name}}</a></li>
						    	{{end}}
						    </ul>
					    </div>
                    </div>

                    <div class="span4 tbox textright social links">
                        <a class="twitter" href="https://twitter.com/xiemengjun">Twitter</a>
                        <a class="github" href="https://github.com/astaxie/beego">GitHub</a>
                        <a class="googleplus" href="https://plus.google.com/111292884696033638814">Goolge+</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- end of footer -->
    </div>
</div>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
<script src="/static/js/bootstrap.min.js"></script>
<script src="/static/js/jquery.scrollTo-min.js"></script>
{{template "static_file" .}}
{{end}}

{{define "footer_zh"}}
<div class="footer-landscape">
    <div class="footer-landscape-image">
        <!-- footer -->
        <div class="container">
            <div class="row">
                <div class="span12 footer">
                    <div class="span8 tbox">
                    	Beego Web 框架是一个开源项目，初经 <a href="https://github.com/astaxie">Asta谢</a> 发起，现由 Beego 开发者社区维护。授权许可遵循 <a href="http://www.apache.org/licenses/LICENSE-2.0.html">apache 2.0 licence</a>。
                        <strong>语言选项：</strong>
					    <div class="btn-group dropup">
						    <button class="btn dropdown-toggle" data-toggle="dropdown">{{.CurLang}} <span class="caret"></span></button>
						    <ul class="dropdown-menu">
							{{$keyword := .Keyword}}
						    	{{range .RestLangs}}
						    	<li><a href="?lang={{.Lang}}&q={{$keyword}}">{{.Name}}</a></li>
						    	{{end}}
						    </ul>
					    </div>
                    </div>

                    <div class="span4 tbox textright social links">
                        <a class="twitter" href="https://twitter.com/xiemengjun">Twitter</a>
                        <a class="github" href="https://github.com/astaxie/beego">GitHub</a>
                        <a class="googleplus" href="https://plus.google.com/111292884696033638814">Goolge+</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- end of footer -->
    </div>
</div>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
<script src="/static/js/bootstrap.min.js"></script>
<script src="/static/js/jquery.scrollTo-min.js"></script>
{{template "static_file" .}}
{{end}}

{{define "static_file"}}
{{if .IsHome}}
<script type="text/javascript">
    function moveRight() {
        $('#tweets-container').scrollTo( '+=620px', 300 );
    }
    function moveLeft() {
        $('#tweets-container').scrollTo( '-=620px', 300 );
    }
    function showLeftShadow() {
        $('.tweet-navigator-left').addClass('shadow').show();
    }

    $('document').ready(function() {
        $('.tweet-navigator-right').click(moveRight);
        $('.tweet-navigator-left').click(moveLeft);

        $('#tweets-container').scroll(showLeftShadow);
    })
</script>
{{end}}

{{if .IsHasMarkdown}}
<script type="text/javascript" src="/static/js/showdown.js"></script>
<script type="text/javascript">
    var converter = new Showdown.converter({});
    var readme = document.getElementById("markdown");
    readme.innerHTML = converter.makeHtml(document.getElementById("markdown").innerHTML);
    readme.innerHTML = readme.innerHTML.replace("&amp;", "&");
    readme.style.display = "block";
</script>
{{end}}

<script type="text/javascript">
    // Function to make the sticky header possible
    var shiftWindow = function() {
        scrollBy(0, -80);
    };
    window.addEventListener("hashchange", shiftWindow);
    $(window).load(function() {
        if (window.location.hash) {
            shiftWindow();
        }
    });
</script>

<script>
	// (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
	// (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
	// m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
	// })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

	// ga('create', 'UA-40109089-2', 'gowalker.org');
	// ga('send', 'pageview');
</script>
{{end}}