function noproxy -d "Unset all proxy variables"
    for v in {all,ftp,http,https}_proxy
        set -e $v
        set -e (string upper $v)
    end
end
