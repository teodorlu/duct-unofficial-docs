(defproject org.clojars.teodorlu/duct-unofficial-docs "0.2.1-SNAPSHOT"
  :description "FIXME: write description"
  :url "http://example.com/FIXME"
  :scm {:name "git" :url "https://github.com/teodorlu/duct-unofficial-docs"}
  :license {:name "EPL-2.0 OR GPL-2.0-or-later WITH Classpath-exception-2.0"
            :url "https://www.eclipse.org/legal/epl-2.0/"}
  :dependencies [[org.clojure/clojure "1.10.0"]
                 [duct/core "0.6.2"]]
  :repl-options {:init-ns duct-unofficial-docs.core}
  :deploy-repositories [["releases" {:url "https://clojars.org/repo"
                                     :creds :gpg}]])
