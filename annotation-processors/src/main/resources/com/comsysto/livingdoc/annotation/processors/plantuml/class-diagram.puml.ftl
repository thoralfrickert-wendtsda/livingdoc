<#-- @ftlvariable name="title" type="String" -->
<#-- @ftlvariable name="parts" type="java.util.List<com.comsysto.livingdoc.annotation.processors.plantuml.model.ClassDiagramPart>" -->
<#import "types.part.ftl" as types>
@startuml
<#list getIncludeFiles() as includeFile>
!include ${includeFile}
</#list>
hide empty members
<#if title??>
title ${title}
</#if>
<#list parts as part>
    <@types.renderType part/>
</#list>

<#list getInheritanceAssociations() as association>
    <@types.renderAssociation association/>
</#list>

<#list getReferenceAssociations() as association>
    <@types.renderAssociation association/>
</#list>

@enduml
