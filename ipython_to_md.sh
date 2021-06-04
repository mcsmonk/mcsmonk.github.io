#!/bin/bash/


FILE_NAME="$1"
echo ${FILE_NAME}

function converter() {
    #change these 2 lines to match your specific setup
    POST_PATH=`pwd`/_posts
    IMG_PATH=`pwd`/images

    CURR_DIR=`pwd`
    FILE_BASE=`basename $FILE_NAME .ipynb`

    POST_NAME="${FILE_BASE}.md"
    IMG_NAME="${FILE_BASE}_files"

    POST_DATE_NAME=`date "+%Y-%m-%d-"`${POST_NAME}

    # convert the notebook
    jupyter nbconvert --to markdown --template jekyll.tpl $CURR_DIR"/_ipynbs/"$FILE_NAME

    # change image paths
    #sed -i .bak "s:\[png\](:[png](/images//images/:" $POST_NAME

    # move everything to blog area
    mv  $CURR_DIR"/_ipynbs/"$POST_NAME "${POST_PATH}/${POST_DATE_NAME}"
    #mv  $IMG_NAME "${IMG_PATH}/"
}
converter
