<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
  <head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="Grails"/></title>
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap-responsive.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'justnav.css')}" type="text/css">
		<r:external uri="/js/application.js"/>
		<r:external uri="/js/bootstrap.min.js"/>
		<g:layoutHead/>
		<r:layoutResources />
	</head>
	<body>
	<div class="”container”">

		<div class="navbar">

            <div class="navbar-inner">
                <div class="container">
                  <ul class="tnav">
					<g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">
						<li class="controller"><g:link controller="${c.logicalPropertyName}">${c.name}</g:link></li>
					</g:each>
                  </ul>
                </div>
             </div>
         </div>
         <div class=row>
          <div class="span1 offset1"/>
          <div class="span9">
          		 <g:layoutBody/>
          </div>
         <div class="span1"/>
		 </div>
		<g:javascript library="application"/>
		<r:layoutResources />
	</div>
	</body>
</html>