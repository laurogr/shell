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

# 1. Identation
  # Use blank lines between blocks to improve readability. Indentation is two spaces. 
  # Whatever you do, don't use tabs. For existing files, keep indentation.

# 2. Commands
  # All fits on one line
  #command1 | command2

  # Long commands
  #command1 \
  #  | command2 \
  #  | command3 \
  #  | command4




#GLOBAL VARIABLES
PAR=$*


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

