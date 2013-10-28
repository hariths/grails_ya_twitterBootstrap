//
// This script is executed by Grails after plugin was installed to project.
// This script is a Gant script so you can use all special variables provided
// by Gant (such as 'baseDir' which points on project base dir). You can
// use 'ant' to access a global instance of AntBuilder
//
// For example you can create directory under project tree:
//
   
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