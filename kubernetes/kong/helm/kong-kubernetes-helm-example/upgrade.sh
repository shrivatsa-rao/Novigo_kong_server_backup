echo "Starting upgrade =============================="

    #echo "Upgrade Postgres helm charts -------------------------"
    #helm upgrade kongpg bitnami/postgresql -f ./charts/pg_values.yaml -n pg
    
    echo "Upgrade Control Plane helm charts -------------------------"
    helm upgrade kongcp kong/kong --values=./charts/cp_values.yaml -n cp
    
    echo "Upgrade Data Plane helm charts -------------------------"
    helm upgrade kongdp  kong/kong --values=./charts/dp_values.yaml -n dp