echo "Starting cleanup =============================="

    echo "Deleting Helm charts -------------------------"
    #Delete kong releases if already there
    ## delete control plane helm
    helm del kongcp -n cp
    ## delete postgres helm
    helm del kongpg -n pg
    ## delete data plane helm
    helm del kongdp -n dp

    echo "Deleting Namespaces -------------------------"
    #Delete k8s namespaces
    ## delete control plane namespaces
    kubectl delete namespace cp
    ## delete data plane namespaces
    kubectl delete namespace dp
    ## delete postgres namespaces
    kubectl delete namespace pg

    echo "Cleanup complete."
    
    exit