#!/bin/sh

$(GITHUB_WORKSPACE)/gitleaks/gitleaks detect >> $GITHUB_STEP_SUMMARY

time=$(date)
echo "time=$time" >> $GITHUB_OUTPUT

#echo "### Hello world! :rocket:" >> $GITHUB_STEP_SUMMARY