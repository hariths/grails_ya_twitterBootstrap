println ('* creating the img directory ')
ant.mkdir(dir:"${basedir}/web-app/img")

println ('* copying images ')
ant.copy(todir: "${basedir}/web-app/img") {
	fileset(dir:"${pluginBasedir}/web-app/img", includes:'*.png')
}

println ('* copying CSS files ')
ant.copy(todir: "${basedir}/web-app/css") {
	fileset(dir:"${pluginBasedir}/web-app/css", includes:'*.css')
}

println ('* modifying the main layout ')
ant.copy(file: "${pluginBasedir}/grails-app/views/layouts/main.gsp",
         todir: "${basedir}/grails-app/views/layouts")

println ('* modifying the index page to demonstrate modification and use of twitter grid layout ')
ant.copy(file: "${pluginBasedir}/grails-app/views/index.gsp",
         todir: "${basedir}/grails-app/views")
