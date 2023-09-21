#!/bin/bash
set -e

ADDONS_DIR=$PWD/addons
ADDONS_REPO_DIR=$PWD/addon_repos
DEFAULT_BRANCH=15.0

mkdir -p $ADDONS_DIR
mkdir -p $ADDONS_REPO_DIR
cd $ADDONS_REPO_DIR

ODOOMATES_ODOOAPPS=https://github.com/odoomates/odooapps
ODOOMATES_ODOOAPPS_BRANCH=$DEFAULT_BRANCH
git clone $ODOOMATES_ODOOAPPS
cd $(basename $ODOOMATES_ODOOAPPS)
git checkout $ODOOMATES_ODOOAPPS_BRANCH
cp -r */ $ADDONS_DIR

OCA_ACCOUNT_RECONCILE=https://github.com/OCA/account-reconcile
OCA_ACCOUNT_RECONCILE_BRANCH=$DEFAULT_BRANCH
git clone $OCA_ACCOUNT_RECONCILE
cd $(basename $OCA_ACCOUNT_RECONCILE)
git checkout $OCA_ACCOUNT_RECONCILE_BRANCH
cp -r account_*/ $ADDONS_DIR

OCA_ACCOUNT_FINANCIAL_REPORTING=https://github.com/OCA/account-financial-reporting
OCA_ACCOUNT_FINANCIAL_REPORTING_BRANCH=$DEFAULT_BRANCH
git clone $OCA_ACCOUNT_FINANCIAL_REPORTING
cd $(basename $OCA_ACCOUNT_FINANCIAL_REPORTING)
git checkout $OCA_ACCOUNT_FINANCIAL_REPORTING_BRANCH
cp -r account_*/ $ADDONS_DIR
cp -r mis_*/ $ADDONS_DIR
cp -r partner_statement $ADDONS_DIR

OCA_WEB=https://github.com/OCA/web
OCA_WEB_BRANCH=$DEFAULT_BRANCH
git clone $OCA_WEB
cd $(basename $OCA_WEB)
git checkout $OCA_WEB_BRANCH
cp -r web_*/ $ADDONS_DIR
cp -r support_branding $ADDONS_DIR

OCA_BANK_STATEMENT_IMPORT=https://github.com/OCA/bank-statement-import
OCA_BANK_STATEMENT_IMPORT_BRANCH=$DEFAULT_BRANCH
git clone $OCA_BANK_STATEMENT_IMPORT
cd $(basename $OCA_BANK_STATEMENT_IMPORT)
git checkout $OCA_BANK_STATEMENT_IMPORT_BRANCH
cp -r account_*/ $ADDONS_DIR

