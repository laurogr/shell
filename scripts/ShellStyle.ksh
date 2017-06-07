#!/bin/ksh

#
# Author: lgoncalvesdarocha
# Date: 05/06/17 (dd/mm/yy)
# Description: shell script references
#
# Change log
# 	description: adding err function
# 	author: lgoncalvesdarocha
# 	date: 06/06/17
#   bug XXX / jira XXX / XXX



# General comments

# [1. Identation]
  # Use blank lines between blocks to improve readability. Indentation is two spaces. 
  # Whatever you do, don't use tabs. For existing files, keep indentation.

# [2. Commands]
  # All fits on one line
  #command1 | command2

  # Long commands
  #command1 \
  #  | command2 \
  #  | command3 \
  #  | command4

# [3. Loops]

# for dir in ${dirs_to_cleanup}; do
#   if [[ -d "${dir}/${ORACLE_SID}" ]]; then
#     log_date "Cleaning up old files in ${dir}/${ORACLE_SID}"
#     rm "${dir}/${ORACLE_SID}/"*
#     if [[ "$?" -ne 0 ]]; then
#       error_message
#     fi
#   else
#     mkdir -p "${dir}/${ORACLE_SID}"
#     if [[ "$?" -ne 0 ]]; then
#       error_message
#     fi
#   fi
# done

# [4. Case]

# case "${expression}" in
#   a)
#     variable="..."
#     some_command "${variable}" "${other_expr}" ...
#     ;;
#   absolute)
#    actions="relative"
#     another_command "${actions}" "${other_expr}" ...
#     ;;
#   *)
#     error "Unexpected expression '${expression}'"
#     ;;
# esac


# [5. Strings]

# Do this:
# if [[ "${my_var}" = "some_string" ]]; then
#   do_something
# fi

# -z (string length is zero) and -n (string length is not zero) are
# preferred over testing for an empty string
# if [[ -z "${my_var}" ]]; then
#   do_something
# fi

# This is OK (ensure quotes on the empty side), but not preferred:
# if [[ "${my_var}" = "" ]]; then
#   do_something
# fi

# Not this:
# if [[ "${my_var}X" = "some_stringX" ]]; then
#   do_something
# fi

# [6. Eval]
# eval should be avoided

# [7. Functions]

# Single function
# my_func() {
#   ...
# }

# Part of a package
# mypackage::my_func() {
#   ...
# }


#GLOBAL VARIABLES
PAR=$@


#FUNCTIONS

#######################################
# err() : Error message function
# Globals:
#   None
# Arguments:
#   None
# Returns:
#   None
#######################################

# TODO(lgoncalvesdarocha): Improve err function to show other info (bug ####)
err() {
  echo "[$(date +'%Y-%m-%d T %H:%M:%S %z')]"
}

main() {
  echo $PAR
}


#EXECUTION
main

