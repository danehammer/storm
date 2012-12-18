# kill old nimbus
jps | grep [n]imbus | awk '{print $1}' | xargs kill

lein jar
cp target/storm-0.9*.jar /usr/local/Cellar/storm/0.8.1/libexec/

storm nimbus &
