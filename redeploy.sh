# kill old nimbus
jps | grep [n]imbus | awk '{print $1}' | xargs kill

lein jar
cp target/storm-0.9.0-wip9.jar storm-0.9.0-wip9/ 

storm-0.9.0-wip9/bin/storm nimbus &
