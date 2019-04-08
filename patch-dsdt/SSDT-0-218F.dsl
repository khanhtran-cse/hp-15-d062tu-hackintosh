/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20161210-64(RM)
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-0-218F.aml, Sun Apr  7 12:36:25 2019
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000166 (358)
 *     Revision         0x01
 *     Checksum         0xB6
 *     OEM ID           "HPQOEM"
 *     OEM Table ID     "218F    "
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "ACPI"
 *     Compiler Version 0x00040000 (262144)
 */
DefinitionBlock ("", "SSDT", 1, "HPQOEM", "218F    ", 0x00001000)
{
    /*
     * External declarations were imported from
     * a reference file -- refs.txt
     */

    External (_GPE.MMTB, MethodObj)    // Imported: 0 Arguments
    External (_GPE.VHOV, MethodObj)    // Imported: 3 Arguments
    External (_SB_.PCI0.GFX0.DD02._BCM, MethodObj)    // Imported: 1 Arguments
    External (_SB_.PCI0.LPCB.H_EC.ECMD, MethodObj)    // Imported: 1 Arguments
    External (_SB_.PCI0.LPCB.H_EC.ECRD, MethodObj)    // Imported: 1 Arguments
    External (_SB_.PCI0.LPCB.H_EC.ECWT, MethodObj)    // Imported: 2 Arguments
    External (_SB_.PCI0.PEG0.PEGP.SGPO, MethodObj)    // Imported: 2 Arguments
    External (_SB_.PCI0.SAT0.SDSM, MethodObj)    // Imported: 4 Arguments
    External (_SB_.PCI0.XHC_.RHUB.TPLD, MethodObj)    // Imported: 2 Arguments
    External (MDBG, MethodObj)    // Imported: 1 Arguments

    Scope (\_SB)
    {
        Device (PTID)
        {
            Name (_HID, EisaId ("INT340E"))  // _HID: Hardware ID
            Name (_CID, EisaId ("PNP0C02"))  // _CID: Compatible ID
            Name (IVER, 0x00030000)
            Name (TSDL, Package (0x04)
            {
                0x0D, 
                "Temperature 0", 
                0x0D, 
                "Temperature 1"
            })
            Name (TMPV, Package (0x02)
            {
                0xFF, 
                0xFF
            })
            Name (PSDL, Package (0x06)
            {
                0x0D, 
                "Power 0", 
                0x0D, 
                "Power 1", 
                0x0D, 
                "Power 2"
            })
            Name (PWRV, Package (0x03)
            {
                0xFF, 
                0xFF, 
                0xFF
            })
            Name (OSDL, Package (0x06)
            {
                0x04, 
                "Fan RPM", 
                "RPM", 
                0x0C, 
                "Battery Capacity", 
                "mAh"
            })
            Name (OSDV, Package (0x02)
            {
                0xFF, 
                0xFF
            })
            Method (TSOD, 0, NotSerialized)
            {
                Name (TMPC, Zero)
                Store (TMPC, Index (TMPV, Zero))
                Store (TMPC, Index (TMPV, One))
                Return (TMPV)
            }

            Method (PSDD, 0, NotSerialized)
            {
                Return (PWRV)
            }

            Method (OSDD, 0, NotSerialized)
            {
                Return (OSDV)
            }

            Method (SDSP, 0, NotSerialized)
            {
                Return (0x0A)
            }

            Name (PADT, Package (0x0A)
            {
                0x02, 
                0x06A4, 
                0x06A0, 
                0x18, 
                0x60, 
                0x61, 
                0x62, 
                0x63, 
                0x64, 
                0x65
            })
        }
    }
}

