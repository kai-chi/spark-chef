name             "hadoop_spark"
maintainer       "Jim Dowling"
maintainer_email "jdowling@kth.se"
license          "Apache v2"
description      'Installs/Configures Spark'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.10.0"
source_url       "https://github.com/hopshadoop/spark-chef"

depends          "kagent"
depends          "java"
depends          "hops"
depends          "magic_shell"
depends          "hopsmonitor"
depends          'hive2'

recipe           "install", "Installs Spark binaries"
recipe           "yarn", "Creates directories for yarn. Run on only one machine."
recipe           "default", "Install spark binaries only."
recipe           "historyserver", "Installs/starts the Spark historyserver"

attribute "hadoop_spark/user",
          :description => "Username to run spark master/worker as",
          :type => 'string'

attribute "hadoop_spark/group",
          :description => "Groupname to run spark master/worker as",
          :type => 'string'

attribute "hadoop_spark/dir",
          :description => "Installation dir for spark",
          :type => 'string'

attribute "hadoop_spark/executor_memory",
          :description => "Executor memory (e.g., 512m)",
          :type => 'string'

attribute "hadoop_spark/driver_memory",
          :description => "Driver memory (e.g., 1g)",
          :type => 'string'

attribute "hadoop_spark/eventlog_enabled",
          :description => "Eventlog enabled (true|false)",
          :type => 'string'

attribute "hadoop_spark/streaming/stopGracefullyOnShutdown",
          :description => "Shut down the StreamingContext gracefully on JVM shutdown rather than immediately (true|false)",
          :type => 'string'

attribute "hadoop_spark/worker/cleanup/enabled",
          :description => "Spark standalone worker cleanup enabled (true|false)",
          :type => 'string'

attribute "hadoop_spark/version",
          :description => "Spark version (e.g., 1.6.1 or 2.0.1 or 2.1.0)",
          :type => 'string'

attribute "hadoop_spark/history/fs/cleaner/enabled",
          :description => "'true' to enable cleanup of the historyservers logs",
          :type => 'string'

attribute "hadoop_spark/history/fs/cleaner/interval",
          :description => "How often to run the cleanup of the historyservers logs (e.g., '1d' for once per day)",
          :type => 'string'

attribute "hadoop_spark/history/fs/cleaner/maxAge",
          :description => "Age in days of the historyservers logs before they are removed (e.g., '7d' for 7 days)",
          :type => 'string'

attribute "hadoop_spark/yarn/am/attemptFailuresValidityInterval",
          :description => "Defines the validity interval for AM failure tracking. If the AM has been running for at least the defined interval, the AM failure count will be reset.",
          :type => 'string'

attribute "hadoop_spark/driver/maxResultSize",
          :description => "Default '5g'. Change to '1g', '500m', etc",
          :type => 'string'

attribute "hadoop_spark/local/dir",
          :description => "Default /tmp'. Change to: '/srv/disk1/tmp,/srv/disk2/tmp,/srv/disk3/tmp'",
          :type => 'string'

attribute "hadoop_spark/historyserver/private_ips",
          :description => "historyserver private ip addrs",
          :type => 'array'

attribute "hadoop_spark/historyserver/public_ips",
          :description => "historyserver public ip addrs",
          :type => 'array'

attribute "install/dir",
          :description => "Set to a base directory under which we will install.",
          :type => "string"

attribute "install/user",
          :description => "User to install the services as",
          :type => "string"

attribute "hadoop_spark/tf_spark_connector_version",
          :description => "the version of the tf-spark-connector .jar",
          :type => "string"

attribute "hadoop_spark/hopsutil_version",
          :description => "the version of the hops-library .jar",
          :type => "string"

attribute "hadoop_spark/hopsutil/url",
          :description => "the url for dowloading the hopsutil .jar",
          :type => "string"

attribute "hadoop_spark/hopsexamples_version",
          :description => "the version of the hops-examples artifacts",
          :type => "string"

attribute "hadoop_spark/hopsexamples_spark/url",
          :description => "the url for dowloading the hopsexamples_spark jar",
          :type => "string"

attribute "hadoop_spark/hopsexamples_hive/url",
          :description => "the url for dowloading the hopsexamples_hive jar",
          :type => "string"

attribute "hadoop_spark/hopsexamples_flink/url",
          :description => "the url for dowloading the hopsexamples_flink jar",
          :type => "string"

attribute "hadoop_spark/hopsexamples_featurestore/url",
          :description => "the url for dowloading the hopsexamples_featurestore jar",
          :type => "string"

attribute "hadoop_spark/spark_avro_version",
          :description => "the version of the spark-avro jar",
          :type => "string"
