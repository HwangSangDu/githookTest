
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

comment $mailingList
e1={sed $mailingList -n 1p }
comment $e1
#comment ($mailingList | sed -n 1p)
# mailing=$(mailingList | sed -n 1p)

# mailing=$(mailingList | sed -n 1p)
# for string in ${mailing=$(mailingList | sed -n 1p)} do;
#for i in $(mailingList | sed -n 1p);do echo $i;done

