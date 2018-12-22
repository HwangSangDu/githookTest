
#git config multimailhook.mailinglist ""
comment(){
    ${green};${bold}
    echo $@
    ${reset}
}

error(){
    ${red};${bold};
    printf "ERROR : ";${reset};${yellow};${bold};echo $@;
    ${reset}
}

warning(){
    ${yellow};${bold};
    printf "warning : ";${reset};${bold};echo $@;
    ${reset}
}


red='tput setaf 1';
green='tput setaf 2';
blue='tput setaf 4';
yellow='tput setaf 3';
reset='tput sgr0';
bold='tput bold'
underline='tput smul'



mailingList=$(git log --format=format:%ae | uniq)

for i in $mailingList:
do
#    echo $i
    j="$i, $j";
done
comment $j
git config multimailhook.mailinglist "$j"
