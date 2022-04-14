#!/usr/bin/env bash

release_version=$(jq --raw-output ".version" manifest.json)
octo_gmail_enhancer_fullname="octo_gmail_enhancer_v${release_version}"
release_folder=release
octo_gmail_enhancer_release_folder="${release_folder}/${octo_gmail_enhancer_fullname}"

rm -rf "${octo_gmail_enhancer_release_folder}" && mkdir -p "${octo_gmail_enhancer_release_folder}"
cp *.js icon.png manifest.json "${octo_gmail_enhancer_release_folder}"

pushd "${release_folder}"
rm -f "${octo_gmail_enhancer_fullname}.zip"
zip -r "${octo_gmail_enhancer_fullname}.zip" "${octo_gmail_enhancer_fullname}"
