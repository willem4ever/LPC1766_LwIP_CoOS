<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<Project>
  <Device>
    <Manufacturer id="NXP" name="NXP"/>
    <Chip id="LPC1766" name="LPC1766"/>
  </Device>
  <Components>
    <Component id="c37a9351-96ed-11df-80ae-001d7d723e56" name="C Library"/>
    <Component id="c37f2731-96ed-11df-80ae-001d7d723e56" name="Retarget printf"/>
    <Component id="bf7c3c91-96ed-11df-80ae-001d7d723e56" name="CMSIS core"/>
    <Component id="c34fd9d1-96ed-11df-80ae-001d7d723e56" name="CooCox OS"/>
    <Component id="c2351b01-96ed-11df-80ae-001d7d723e56" name="CMSIS_boot"/>
    <Component id="c23cbc21-96ed-11df-80ae-001d7d723e56" name="Common_Header"/>
    <Component id="c242d6a1-96ed-11df-80ae-001d7d723e56" name="CLKPWR"/>
    <Component id="c24d8502-96ed-11df-80ae-001d7d723e56" name="GPIO"/>
    <Component id="c256acc1-96ed-11df-80ae-001d7d723e56" name="PINSEL"/>
  </Components>
  <ExcludedFiles>
    <Exclude path="lpc17xx_lib/include/lpc17xx_pinsel.h"/>
    <Exclude path="lpc17xx_lib/source/lpc17xx_emac.c"/>
    <Exclude path="lpc17xx_lib/source/lpc17xx_pinsel.c"/>
  </ExcludedFiles>
  <Drivers/>
</Project>
