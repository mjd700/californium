#! /bin/bash

# start_clients.sh<NUMNOTIFICATIONSPERCLIENT>

pmins=(20 50 20)
pmaxs=(100 70 30)
tLen=${#pmins[@]}
for (( i=0; i<${tLen}; i++ ));
do
    echo "Client $i - pmin ${pmins[$i]} -pmax ${pmaxs[$i]}"
java -jar ../run/cf-coreinterface-client-1.0.0-SNAPSHOT.jar -l result$i.log -n $1 -pmax ${pmaxs[$i]} -pmin ${pmins[$i]} -u coap://127.0.0.1:5683/10.0.0.2:5683/CoREInterfaceResource -i 10.0.0.5 &
done