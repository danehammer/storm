# kill old nimbus
jps | grep [n]imbus | awk '{print $1}' | xargs kill

lein1 jar
cp storm-0.8*.jar /usr/local/Cellar/storm/0.8.1/libexec/

storm nimbus &
