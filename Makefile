plugin_name = appdynamics-plugin
publish_bucket = cloudbees-clickstack
publish_repo = dev
publish_url = s3://$(publish_bucket)/$(publish_repo)/

deps = lib/appdynamics.zip

pkg_files = README LICENSE setup functions lib

include plugin.mk

appdynamics_ver = 3.3.4.2
appdynamics_src = https://s3.amazonaws.com/cloudbees-downloads/appserver/appdynamics-$(appdynamics_ver).zip

# TODO: do we need the whole zip, or just the jar?

lib/appdynamics.zip:
	mkdir -p lib
	curl -fLo lib/appdynamics.zip $(appdynamics_src)
