#!/bin/sh -l

/gitleaks/gitleaks detect >> $GITHUB_STEP_SUMMARY

time=$(date)
echo "time=$time" >> $GITHUB_OUTPUT