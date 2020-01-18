#!/bin/sh
set -exo pipefail

rm -rf dockerweb2-temp
git clone --bare 'https://github.com/Icinga/icingaweb2.git' dockerweb2-temp
# v2.7.3
git -C dockerweb2-temp archive --prefix=icingaweb2/ 06cabfe8ba28cf545a42c92f25484383191a4e51 |tar -x

if [ ! -e 'icingaweb2/modules/audit' ]; then
	rm -rf dockerweb2-temp
	git clone --bare 'https://github.com/Icinga/icingaweb2-module-audit.git' dockerweb2-temp
	# v1.0.1
	git -C dockerweb2-temp archive '--prefix=icingaweb2/modules/audit/' 0aa5f547a9829fae82df7481f1a1c871c5c75ac4 |tar -x
fi

if [ ! -e 'icingaweb2/modules/aws' ]; then
	rm -rf dockerweb2-temp
	git clone --bare 'https://github.com/Icinga/icingaweb2-module-aws.git' dockerweb2-temp
	# v1.0.0
	git -C dockerweb2-temp archive '--prefix=icingaweb2/modules/aws/' 0a889cc8eb60308e0dbe12e458298c1ef1a3553d |tar -x
fi

if [ ! -e 'icingaweb2/modules/bridgedays' ]; then
	rm -rf dockerweb2-temp
	git clone --bare 'https://github.com/Al2Klimov/icingaweb2-module-bridgedays.git' dockerweb2-temp
	# HEAD
	git -C dockerweb2-temp archive '--prefix=icingaweb2/modules/bridgedays/' d06cf114d8d3fee752d29ed126891757754770f8 |tar -x
fi

if [ ! -e 'icingaweb2/modules/bridgedays_input_netrp' ]; then
	rm -rf dockerweb2-temp
	git clone --bare 'https://github.com/Al2Klimov/icingaweb2-module-bridgedays_input_netrp.git' dockerweb2-temp
	# HEAD
	git -C dockerweb2-temp archive '--prefix=icingaweb2/modules/bridgedays_input_netrp/' 90e9e4952776cfd13215d62dc68b303e2ab6cc0f |tar -x
fi

if [ ! -e 'icingaweb2/modules/bridgedays_output_rt' ]; then
	rm -rf dockerweb2-temp
	git clone --bare 'https://github.com/Al2Klimov/icingaweb2-module-bridgedays_output_rt.git' dockerweb2-temp
	# HEAD
	git -C dockerweb2-temp archive '--prefix=icingaweb2/modules/bridgedays_output_rt/' 7a4657b51e95cb57b21601202579d0bd443d69fa |tar -x
fi

if [ ! -e 'icingaweb2/modules/businessprocess' ]; then
	rm -rf dockerweb2-temp
	git clone --bare 'https://github.com/Icinga/icingaweb2-module-businessprocess.git' dockerweb2-temp
	# v2.2.0
	git -C dockerweb2-temp archive '--prefix=icingaweb2/modules/businessprocess/' 73ad4a25ddfb6e0e0914d65109f3a83a6f876d34 |tar -x
fi

if [ ! -e 'icingaweb2/modules/cube' ]; then
	rm -rf dockerweb2-temp
	git clone --bare 'https://github.com/Icinga/icingaweb2-module-cube.git' dockerweb2-temp
	# v1.1.0
	git -C dockerweb2-temp archive '--prefix=icingaweb2/modules/cube/' 4f70d558b23e4341e7957ffb7229be7ca6487d80 |tar -x
fi

if [ ! -e 'icingaweb2/modules/director' ]; then
	rm -rf dockerweb2-temp
	git clone --bare 'https://github.com/Icinga/icingaweb2-module-director.git' dockerweb2-temp
	# v1.7.2
	git -C dockerweb2-temp archive '--prefix=icingaweb2/modules/director/' 9c95fb8680f6f389ca24ff6e41d9002185596cb3 |tar -x
fi

if [ ! -e 'icingaweb2/modules/discourse_notifier' ]; then
	rm -rf dockerweb2-temp
	git clone --bare 'https://github.com/Al2Klimov/icingaweb2-module-discourse_notifier.git' dockerweb2-temp
	# HEAD
	git -C dockerweb2-temp archive '--prefix=icingaweb2/modules/discourse_notifier/' 8481d6f667f0c84d9e73365e191861ddb2e90fa9 |tar -x
fi

if [ ! -e 'icingaweb2/modules/doc' ]; then
	rm -rf dockerweb2-temp
	git clone --bare 'https://github.com/Icinga/icingaweb2-module-doc.git' dockerweb2-temp
	# HEAD
	git -C dockerweb2-temp archive '--prefix=icingaweb2/modules/doc/' e91a17c6011963430c88005c58196d3c26f78364 |tar -x
fi

if [ ! -e 'icingaweb2/modules/elasticsearch' ]; then
	rm -rf dockerweb2-temp
	git clone --bare 'https://github.com/Icinga/icingaweb2-module-elasticsearch.git' dockerweb2-temp
	# v0.9.0
	git -C dockerweb2-temp archive '--prefix=icingaweb2/modules/elasticsearch/' aebb9bb7b8521ac1ab88173c4d6874f7c560d973 |tar -x
fi

if [ ! -e 'icingaweb2/modules/eventdb' ]; then
	rm -rf dockerweb2-temp
	git clone --bare 'https://github.com/Icinga/icingaweb2-module-eventdb.git' dockerweb2-temp
	# v1.3.0
	git -C dockerweb2-temp archive '--prefix=icingaweb2/modules/eventdb/' 0db0e6268d1f0564d5631104186a418c25dc417e |tar -x
fi

if [ ! -e 'icingaweb2/modules/fileshipper' ]; then
	rm -rf dockerweb2-temp
	git clone --bare 'https://github.com/Icinga/icingaweb2-module-fileshipper.git' dockerweb2-temp
	# v1.1.0
	git -C dockerweb2-temp archive '--prefix=icingaweb2/modules/fileshipper/' c800286277fbd7676573a17026071ebc1c85de7e |tar -x
fi

if [ ! -e 'icingaweb2/modules/generictts' ]; then
	rm -rf dockerweb2-temp
	git clone --bare 'https://github.com/Icinga/icingaweb2-module-generictts.git' dockerweb2-temp
	# v2.0.0
	git -C dockerweb2-temp archive '--prefix=icingaweb2/modules/generictts/' dddccc4d9274e491caf9dc6425a48adecc0c2d65 |tar -x
fi

if [ ! -e 'icingaweb2/modules/graphite' ]; then
	rm -rf dockerweb2-temp
	git clone --bare 'https://github.com/Icinga/icingaweb2-module-graphite.git' dockerweb2-temp
	# v1.1.0
	git -C dockerweb2-temp archive '--prefix=icingaweb2/modules/graphite/' cb2a94397529f5a4b73d423fe89fabf2b0f064a6 |tar -x
fi

if [ ! -e 'icingaweb2/modules/icingadb' ]; then
	rm -rf dockerweb2-temp
	git clone --bare 'https://github.com/Icinga/icingaweb2-module-icingadb.git' dockerweb2-temp
	# HEAD
	git -C dockerweb2-temp archive '--prefix=icingaweb2/modules/icingadb/' d839784ded32771f09f9ad75c92ed7f13462c8a9 |tar -x
fi

if [ ! -e 'icingaweb2/modules/idoreports' ]; then
	rm -rf dockerweb2-temp
	git clone --bare 'https://github.com/Icinga/icingaweb2-module-idoreports.git' dockerweb2-temp
	# v0.9.1
	git -C dockerweb2-temp archive '--prefix=icingaweb2/modules/idoreports/' cdeecede5faeba71b9d83a64be019a0592e5f296 |tar -x
fi

if [ ! -e 'icingaweb2/modules/incubator' ]; then
	rm -rf dockerweb2-temp
	git clone --bare 'https://github.com/Icinga/icingaweb2-module-incubator.git' dockerweb2-temp
	# v0.5.0
	git -C dockerweb2-temp archive '--prefix=icingaweb2/modules/incubator/' f24a26f51d37688e85617da713be54c4e853e462 |tar -x
fi

if [ ! -e 'icingaweb2/modules/ipl' ]; then
	rm -rf dockerweb2-temp
	git clone --bare 'https://github.com/Icinga/icingaweb2-module-ipl.git' dockerweb2-temp
	# v0.4.0
	git -C dockerweb2-temp archive '--prefix=icingaweb2/modules/ipl/' 8fe523cecb6a62643b70efcaf8ae7d5870f97e0d |tar -x
fi

if [ ! -e 'icingaweb2/modules/jira' ]; then
	rm -rf dockerweb2-temp
	git clone --bare 'https://github.com/Icinga/icingaweb2-module-jira.git' dockerweb2-temp
	# v1.0.1
	git -C dockerweb2-temp archive '--prefix=icingaweb2/modules/jira/' c645ff56f60c6418155cd9c02101ae0cb390fa32 |tar -x
fi

if [ ! -e 'icingaweb2/modules/lynxtechnik' ]; then
	rm -rf dockerweb2-temp
	git clone --bare 'https://github.com/Icinga/icingaweb2-module-lynxtechnik.git' dockerweb2-temp
	# HEAD
	git -C dockerweb2-temp archive '--prefix=icingaweb2/modules/lynxtechnik/' 0da6458c637a9955a874f153a4a6a1b73bc2cf19 |tar -x
fi

if [ ! -e 'icingaweb2/modules/masifupgrader' ]; then
	rm -rf dockerweb2-temp
	git clone --bare 'https://github.com/masif-upgrader/icingaweb2-module-masifupgrader.git' dockerweb2-temp
	# v0.6
	git -C dockerweb2-temp archive '--prefix=icingaweb2/modules/masifupgrader/' 71a41ddc0811a6d1e62fde8604618a2f50a92e74 |tar -x
fi

if [ ! -e 'icingaweb2/modules/nagvis' ]; then
	rm -rf dockerweb2-temp
	git clone --bare 'https://github.com/Icinga/icingaweb2-module-nagvis.git' dockerweb2-temp
	# v1.1.1
	git -C dockerweb2-temp archive '--prefix=icingaweb2/modules/nagvis/' 7eda23781cac6488b863d103d42007bd558302d6 |tar -x
fi

if [ ! -e 'icingaweb2/modules/pdfexport' ]; then
	rm -rf dockerweb2-temp
	git clone --bare 'https://github.com/Icinga/icingaweb2-module-pdfexport.git' dockerweb2-temp
	# v0.9.1
	git -C dockerweb2-temp archive '--prefix=icingaweb2/modules/pdfexport/' 94f00d13b842ffe68de032b216c721957917ed0e |tar -x
fi

if [ ! -e 'icingaweb2/modules/pnp' ]; then
	rm -rf dockerweb2-temp
	git clone --bare 'https://github.com/Icinga/icingaweb2-module-pnp.git' dockerweb2-temp
	# v1.1.0
	git -C dockerweb2-temp archive '--prefix=icingaweb2/modules/pnp/' 6377405e7b0f9f01b441a38ca63f2c9adaef3f5e |tar -x
fi

if [ ! -e 'icingaweb2/modules/pnp4nagios' ]; then
	rm -rf dockerweb2-temp
	git clone --bare 'https://github.com/Icinga/icingaweb2-module-pnp4nagios.git' dockerweb2-temp
	# HEAD
	git -C dockerweb2-temp archive '--prefix=icingaweb2/modules/pnp4nagios/' 20700b13383df553440bf140273855204839e1f0 |tar -x
fi

if [ ! -e 'icingaweb2/modules/puppetdb' ]; then
	rm -rf dockerweb2-temp
	git clone --bare 'https://github.com/Icinga/icingaweb2-module-puppetdb.git' dockerweb2-temp
	# v1.0.0
	git -C dockerweb2-temp archive '--prefix=icingaweb2/modules/puppetdb/' 1d9d9cf2bc18ed6e15f6f93bd5c34dc331097c2a |tar -x
fi

if [ ! -e 'icingaweb2/modules/reactbundle' ]; then
	rm -rf dockerweb2-temp
	git clone --bare 'https://github.com/Icinga/icingaweb2-module-reactbundle.git' dockerweb2-temp
	# v0.7.0
	git -C dockerweb2-temp archive '--prefix=icingaweb2/modules/reactbundle/' 8b8c9689e5883cd890fb92b7ca22659af56b2c94 |tar -x
fi

if [ ! -e 'icingaweb2/modules/reporting' ]; then
	rm -rf dockerweb2-temp
	git clone --bare 'https://github.com/Icinga/icingaweb2-module-reporting.git' dockerweb2-temp
	# v0.9.2
	git -C dockerweb2-temp archive '--prefix=icingaweb2/modules/reporting/' 5d59f5001ad8cfe316f9e1570f8ebbdad08b9261 |tar -x
fi

if [ ! -e 'icingaweb2/modules/test' ]; then
	rm -rf dockerweb2-temp
	git clone --bare 'https://github.com/Icinga/icingaweb2-module-test.git' dockerweb2-temp
	# HEAD
	git -C dockerweb2-temp archive '--prefix=icingaweb2/modules/test/' ea5d8f9ffc8fedf86f77b135128ff431e8570a35 |tar -x
fi

if [ ! -e 'icingaweb2/modules/toplevelview' ]; then
	rm -rf dockerweb2-temp
	git clone --bare 'https://github.com/Icinga/icingaweb2-module-toplevelview.git' dockerweb2-temp
	# v0.3.1
	git -C dockerweb2-temp archive '--prefix=icingaweb2/modules/toplevelview/' 463873b658b1063f92712b124f33e1ae56bae284 |tar -x
fi

if [ ! -e 'icingaweb2/modules/training' ]; then
	rm -rf dockerweb2-temp
	git clone --bare 'https://github.com/Icinga/icingaweb2-module-training.git' dockerweb2-temp
	# HEAD
	git -C dockerweb2-temp archive '--prefix=icingaweb2/modules/training/' 8f4510cf90ba076c7f7244db3651c006beac4442 |tar -x
fi

if [ ! -e 'icingaweb2/modules/vsphere' ]; then
	rm -rf dockerweb2-temp
	git clone --bare 'https://github.com/Icinga/icingaweb2-module-vsphere.git' dockerweb2-temp
	# v1.1.0
	git -C dockerweb2-temp archive '--prefix=icingaweb2/modules/vsphere/' 516dae9c01dbde84b9e45628e81fd981061800df |tar -x
fi

if [ ! -e 'icingaweb2/modules/vspheredb' ]; then
	rm -rf dockerweb2-temp
	git clone --bare 'https://github.com/Icinga/icingaweb2-module-vspheredb.git' dockerweb2-temp
	# v1.1.0
	git -C dockerweb2-temp archive '--prefix=icingaweb2/modules/vspheredb/' 5bc3546ce53f59c37814e8572823a2556b0507a7 |tar -x
fi

if [ ! -e 'icingaweb2/modules/x509' ]; then
	rm -rf dockerweb2-temp
	git clone --bare 'https://github.com/Icinga/icingaweb2-module-x509.git' dockerweb2-temp
	# v1.0.0
	git -C dockerweb2-temp archive '--prefix=icingaweb2/modules/x509/' 0997bf734b54b62582b3a000c4f04980a583a9e2 |tar -x
fi

rm -rf dockerweb2-temp
