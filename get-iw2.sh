#!/bin/sh
set -exo pipefail

rm -rf dockerweb2-temp
git clone --bare 'https://github.com/Icinga/icingaweb2.git' dockerweb2-temp
# v2.8.2
git -C dockerweb2-temp archive --prefix=icingaweb2/ 8a89839af94a247ee2149b2336c73b8251b477c0 |tar -x

if [ ! -e 'icingaweb2/modules/apocalypse' ]; then
	rm -rf dockerweb2-temp
	git clone --bare 'https://github.com/Al2Klimov/icingaweb2-theme-apocalypse.git' dockerweb2-temp
	# v1.0
	git -C dockerweb2-temp archive '--prefix=icingaweb2/modules/apocalypse/' 7de563c4b0c368e2cf347659211f61eb13f24ae6 |tar -x
fi

if [ ! -e 'icingaweb2/modules/audit' ]; then
	rm -rf dockerweb2-temp
	git clone --bare 'https://github.com/Icinga/icingaweb2-module-audit.git' dockerweb2-temp
	# v1.0.1
	git -C dockerweb2-temp archive '--prefix=icingaweb2/modules/audit/' 0aa5f547a9829fae82df7481f1a1c871c5c75ac4 |tar -x
fi

if [ ! -e 'icingaweb2/modules/aws' ]; then
	rm -rf dockerweb2-temp
	git clone --bare 'https://github.com/Icinga/icingaweb2-module-aws.git' dockerweb2-temp
	# v1.1.0
	git -C dockerweb2-temp archive '--prefix=icingaweb2/modules/aws/' 2494e4d3c4db39e674c9e547dd04d8f771322fb5 |tar -x
fi

if [ ! -e 'icingaweb2/modules/bayerisch' ]; then
	rm -rf dockerweb2-temp
	git clone --bare 'https://github.com/NETWAYS/icingaweb2-theme-bayerisch.git' dockerweb2-temp
	# v1.0.0
	git -C dockerweb2-temp archive '--prefix=icingaweb2/modules/bayerisch/' 17423cc54ed1c0405cab64365767dfd2ce72da4d |tar -x
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
	# v2.3.0
	git -C dockerweb2-temp archive '--prefix=icingaweb2/modules/businessprocess/' 346ace79d0a2908e7cc73ab832233ab58c63da6a |tar -x
fi

if [ ! -e 'icingaweb2/modules/company' ]; then
	rm -rf dockerweb2-temp
	git clone --bare 'https://github.com/Icinga/icingaweb2-theme-company.git' dockerweb2-temp
	# v1.0.0
	git -C dockerweb2-temp archive '--prefix=icingaweb2/modules/company/' 17a15575ce6e887baab69d053318a48e707a1816 |tar -x
fi

if [ ! -e 'icingaweb2/modules/cube' ]; then
	rm -rf dockerweb2-temp
	git clone --bare 'https://github.com/Icinga/icingaweb2-module-cube.git' dockerweb2-temp
	# v1.1.1
	git -C dockerweb2-temp archive '--prefix=icingaweb2/modules/cube/' 62a3d0605efaf1d20f8023fee740eb4c457ac835 |tar -x
fi

if [ ! -e 'icingaweb2/modules/director' ]; then
	rm -rf dockerweb2-temp
	git clone --bare 'https://github.com/Icinga/icingaweb2-module-director.git' dockerweb2-temp
	# v1.8.0
	git -C dockerweb2-temp archive '--prefix=icingaweb2/modules/director/' bce17819729a9a26fd693bd5bd17f3a1482b5a91 |tar -x
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
	# v1.2.0
	git -C dockerweb2-temp archive '--prefix=icingaweb2/modules/fileshipper/' fa8e7cd008cb2ff49bbfa3d62d335f043f783b53 |tar -x
fi

if [ ! -e 'icingaweb2/modules/fraenkisch' ]; then
	rm -rf dockerweb2-temp
	git clone --bare 'https://github.com/NETWAYS/icingaweb2-theme-fraenkisch.git' dockerweb2-temp
	# v1.0.0
	git -C dockerweb2-temp archive '--prefix=icingaweb2/modules/fraenkisch/' d19c6071f670c2ceea7cef956d0957c5c50754bb |tar -x
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
	git clone --bare 'https://github.com/Icinga/icingadb-web.git' dockerweb2-temp
	# v1.0.0-rc1
	git -C dockerweb2-temp archive '--prefix=icingaweb2/modules/icingadb/' 5cdad5f122da48965303fea2b5a2509eb2568667 |tar -x
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
	# v0.6.0
	git -C dockerweb2-temp archive '--prefix=icingaweb2/modules/incubator/' e3915b41b4cb64f88de7ca64a72e5bec8bb12d7d |tar -x
fi

if [ ! -e 'icingaweb2/modules/ipl' ]; then
	rm -rf dockerweb2-temp
	git clone --bare 'https://github.com/Icinga/icingaweb2-module-ipl.git' dockerweb2-temp
	# v0.5.0
	git -C dockerweb2-temp archive '--prefix=icingaweb2/modules/ipl/' dd3e987a4b7967d087e1a69f6ebeca4ed4a5d89d |tar -x
fi

if [ ! -e 'icingaweb2/modules/jira' ]; then
	rm -rf dockerweb2-temp
	git clone --bare 'https://github.com/Icinga/icingaweb2-module-jira.git' dockerweb2-temp
	# v1.1.0
	git -C dockerweb2-temp archive '--prefix=icingaweb2/modules/jira/' 648c7295ca462053df4e9928c614caeb59e1a486 |tar -x
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
	# v0.8
	git -C dockerweb2-temp archive '--prefix=icingaweb2/modules/masifupgrader/' d8f9923bae8c33cfd43f1ce50926dce52e9ca025 |tar -x
fi

if [ ! -e 'icingaweb2/modules/nagvis' ]; then
	rm -rf dockerweb2-temp
	git clone --bare 'https://github.com/Icinga/icingaweb2-module-nagvis.git' dockerweb2-temp
	# v1.1.1
	git -C dockerweb2-temp archive '--prefix=icingaweb2/modules/nagvis/' 7eda23781cac6488b863d103d42007bd558302d6 |tar -x
fi

if [ ! -e 'icingaweb2/modules/oesterreichisch' ]; then
	rm -rf dockerweb2-temp
	git clone --bare 'https://github.com/NETWAYS/icingaweb2-theme-oesterreichisch.git' dockerweb2-temp
	# v1.0.0
	git -C dockerweb2-temp archive '--prefix=icingaweb2/modules/oesterreichisch/' f5895897245a25258b40656da1b650ff25158924 |tar -x
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
	# v0.9.0
	git -C dockerweb2-temp archive '--prefix=icingaweb2/modules/reactbundle/' 30b5d1c2c6d13a685c7b4eac7679e733559c4d90 |tar -x
fi

if [ ! -e 'icingaweb2/modules/reporting' ]; then
	rm -rf dockerweb2-temp
	git clone --bare 'https://github.com/Icinga/icingaweb2-module-reporting.git' dockerweb2-temp
	# v0.9.2
	git -C dockerweb2-temp archive '--prefix=icingaweb2/modules/reporting/' 5d59f5001ad8cfe316f9e1570f8ebbdad08b9261 |tar -x
fi

if [ ! -e 'icingaweb2/modules/spb' ]; then
	rm -rf dockerweb2-temp
	git clone --bare 'https://github.com/Al2Klimov/icingaweb2-theme-spb.git' dockerweb2-temp
	# v1.0
	git -C dockerweb2-temp archive '--prefix=icingaweb2/modules/spb/' 19824d40b84db8e172fc849a2a09a93fd4e24f7c |tar -x
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
	# v0.3.2
	git -C dockerweb2-temp archive '--prefix=icingaweb2/modules/toplevelview/' 4a1a81a59a29e01fbbe834e99fc8928f059d7100 |tar -x
fi

if [ ! -e 'icingaweb2/modules/training' ]; then
	rm -rf dockerweb2-temp
	git clone --bare 'https://github.com/Icinga/icingaweb2-module-training.git' dockerweb2-temp
	# HEAD
	git -C dockerweb2-temp archive '--prefix=icingaweb2/modules/training/' 414811208c02889ec54a826b6ee134f268664f70 |tar -x
fi

if [ ! -e 'icingaweb2/modules/vola' ]; then
	rm -rf dockerweb2-temp
	git clone --bare 'https://github.com/Icinga/vola.git' dockerweb2-temp
	# v1.0.0
	git -C dockerweb2-temp archive '--prefix=icingaweb2/modules/vola/' cc067bae6632cb3efe1819b1a5d6c48c5756a9a6 |tar -x
fi

if [ ! -e 'icingaweb2/modules/vsphere' ]; then
	rm -rf dockerweb2-temp
	git clone --bare 'https://github.com/Icinga/icingaweb2-module-vsphere.git' dockerweb2-temp
	# v1.1.1
	git -C dockerweb2-temp archive '--prefix=icingaweb2/modules/vsphere/' 012083aa3c0ef3306e82f64c0d498a4c31af8a01 |tar -x
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
