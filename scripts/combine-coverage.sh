#!/bin/bash

PROJECT_ROOT_PATH=$1
while read FILENAME; do
  LCOV_INPUT_FILES="$LCOV_INPUT_FILES -a \"$PROJECT_ROOT_PATH/coverage/$FILENAME\""
done < <( ls "$1/coverage/" )

eval lcov "${LCOV_INPUT_FILES}" -o $PROJECT_ROOT_PATH/coverage_report/combined_lcov.info

lcov --remove $PROJECT_ROOT_PATH/coverage_report/combined_lcov.info \
  "lib/main_*.dart" \
  "*.gr.dart" \
  "*.g.dart" \
  "*.freezed.dart" \
  "*di.config.dart" \
  "*.i69n.dart" \
  "*/generated/*" \
  "*.theme_extension.dart" \
  -o $PROJECT_ROOT_PATH/coverage_report/cleaned_combined_lcov.info