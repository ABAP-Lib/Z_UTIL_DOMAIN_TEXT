@AbapCatalog.sqlViewName: 'ZVI_DOMAIN_TEXT'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Textos domínio'
define view ZI_DOMAIN_TEXT
    with parameters 
        IV_DOMNAME: DOMNAME,
        @Environment.systemField : #SYSTEM_LANGUAGE
        IV_DDLANGUAGE : DDLANGUAGE
as select from dd07t
{
    key domvalue_l,
    ddtext
}
where
    domname = :IV_DOMNAME and
    as4local = 'A' and
    ddlanguage = :IV_DDLANGUAGE
