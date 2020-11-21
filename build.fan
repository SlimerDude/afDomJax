using build::BuildPod

class Build : BuildPod {

	new make() {
		podName = "afDomJax"
		summary = "My Awesome domJax project"
		version = Version("0.2.2")
 
		meta = [
			"pod.dis"		: "DomJax",
			"repo.tags"		: "web",
			"repo.public"	: "true",
			"repo.internal"	: "true",
			"afIoc.module"	: "afDomJax::DomJaxModule"
		]

		depends = [
			// ---- Fantom Core -----------------
			"sys          1.0.73 - 1.0",
			"concurrent   1.0.73 - 1.0",
			"dom          1.0.73 - 1.0",
			"util         1.0.73 - 1.0",

			// ---- Fantom Factory Core ---------
			"afIoc        3.0.8  - 3.0",
			"afIocEnv     1.1.0  - 1.1",
			"afIocConfig  1.1.0  - 1.1",

			// ---- Fantom Factory Web ----------
			"afBedSheet   1.5.16 - 1.5",
			"afDuvet      1.1.10 - 1.1",
			"afPickle     0.0.4  - 1.0",
		]

		srcDirs = [`fan/`, `fan/bedsheet/`, `fan/client/`]
		resDirs = [`doc/`, `res/`]
		jsDirs  = [`js/`]
	}
}
