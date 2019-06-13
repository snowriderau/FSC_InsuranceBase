# IDO - FSC Base Package Deployment V.0.1 Beta 

<a href="https://githubsfdeploy.herokuapp.com?owner=snowriderau&repo=FSC_InsuranceBase&ref=master">
  <img alt="Deploy to Salesforce"
       src="https://raw.githubusercontent.com/afawcett/githubsfdeploy/master/deploy.png">
</a>

This instructs you on how to deploy the latest base FSC Insurance build into your org with a few steps. Will install into any FSC Org (in theory, best if it io seitehr a Insurance or Banking IDO.)

Pre Install Requirments.

1. FSC PSL License Added to your Org. 
2. FSC Insurance Permset assigned to your user
3. External ID set on a Person account with the value Insurance.001 this record will have the base data applied. (Eg Rachel Adams)
4. External ID set on a User account with the value InsAgent.001, (Eg Craig Holman)

Deploy the base package.

Start with a fresh browser window
Log into your org as the admin.
Open this Repo 

https://github.com/snowriderau/FSC_InsuranceBase

On the read me page click deploy to salesforce. click login, then deploy 

Assign perms to your admin/users. 

Package includes a permset called  FSC Insurance IDO Base to every user that needs it. 
This will ensure you have access to all new fields and record types created. 
Add related list to your main page layout for your person account, add insurance Policies, claims and Customer Property.
Assign Customer Property Page to their Layouts

Load Base Data into your org

Following object data needs to be loaded into your org in the following order, Make sure you are using api version 46 and Upsert.

Producer 
CustomerProperty
InsurancePolicy
InsurancePolicyAsset
InsurancePolicyCoverage
Claim
PersonLifeEvent* some issues loading this one.. 


Setting up your Lightning Page

It's likely you will want to add these components to the page. 
Set Up Basic Page Layout for your Insurance Console,* best down in console app in lightning.

Add Life Events to your page, (recommend in a tab as takes up a lot of realestate, I like to put in the summary or details tab).
Create a Policies Tab
Add The Policy Component.
Create a customer Property Tab and a single related list showing customer Property.

TODO's

Add Example Lightning Page Layout
Package Record Type assignments for Page Layouts



