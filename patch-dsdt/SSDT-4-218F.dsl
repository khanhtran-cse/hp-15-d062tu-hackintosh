/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20161210-64(RM)
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-4-218F.aml, Sun Apr  7 12:36:26 2019
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000348 (840)
 *     Revision         0x01
 *     Checksum         0x48
 *     OEM ID           "HPQOEM"
 *     OEM Table ID     "218F    "
 *     OEM Revision     0x00003000 (12288)
 *     Compiler ID      "ACPI"
 *     Compiler Version 0x00040000 (262144)
 */
DefinitionBlock ("", "SSDT", 1, "HPQOEM", "218F    ", 0x00003000)
{
    /*
     * External declarations were imported from
     * a reference file -- refs.txt
     */

    External (_GPE.MMTB, MethodObj)    // Imported: 0 Arguments
    External (_GPE.VHOV, MethodObj)    // Imported: 3 Arguments
    External (_PR_.CPU0._PTC, MethodObj)    // 0 Arguments
    External (_PR_.CPU0._TSS, MethodObj)    // 0 Arguments
    External (_PR_.CPU1, ProcessorObj)
    External (_PR_.CPU2, ProcessorObj)
    External (_PR_.CPU3, ProcessorObj)
    External (_PR_.CPU4, ProcessorObj)
    External (_PR_.CPU5, ProcessorObj)
    External (_PR_.CPU6, ProcessorObj)
    External (_PR_.CPU7, ProcessorObj)
    External (_SB_.PCI0.GFX0.DD02._BCM, MethodObj)    // Imported: 1 Arguments
    External (_SB_.PCI0.LPCB.H_EC.ECMD, MethodObj)    // Imported: 1 Arguments
    External (_SB_.PCI0.LPCB.H_EC.ECRD, MethodObj)    // Imported: 1 Arguments
    External (_SB_.PCI0.LPCB.H_EC.ECWT, MethodObj)    // Imported: 2 Arguments
    External (_SB_.PCI0.PEG0.PEGP.SGPO, MethodObj)    // Imported: 2 Arguments
    External (_SB_.PCI0.SAT0.SDSM, MethodObj)    // Imported: 4 Arguments
    External (_SB_.PCI0.XHC_.RHUB.TPLD, MethodObj)    // Imported: 2 Arguments
    External (MDBG, MethodObj)    // Imported: 1 Arguments
    External (PDC0, IntObj)
    External (TCNT, FieldUnitObj)

    Scope (\_PR.CPU1)
    {
        Name (_TPC, Zero)  // _TPC: Throttling Present Capabilities
        Method (_PTC, 0, NotSerialized)  // _PTC: Processor Throttling Control
        {
            Return (\_PR.CPU0._PTC ())
        }

        Method (_TSS, 0, NotSerialized)  // _TSS: Throttling Supported States
        {
            Return (\_PR.CPU0._TSS ())
        }

        Method (_TSD, 0, NotSerialized)  // _TSD: Throttling State Dependencies
        {
            If (LNot (And (PDC0, 0x04)))
            {
                Return (Package (0x01)
                {
                    Package (0x05)
                    {
                        0x05, 
                        Zero, 
                        Zero, 
                        0xFD, 
                        TCNT
                    }
                })
            }

            Return (Package (0x01)
            {
                Package (0x05)
                {
                    0x05, 
                    Zero, 
                    One, 
                    0xFC, 
                    One
                }
            })
        }
    }

    Scope (\_PR.CPU2)
    {
        Name (_TPC, Zero)  // _TPC: Throttling Present Capabilities
        Method (_PTC, 0, NotSerialized)  // _PTC: Processor Throttling Control
        {
            Return (\_PR.CPU0._PTC ())
        }

        Method (_TSS, 0, NotSerialized)  // _TSS: Throttling Supported States
        {
            Return (\_PR.CPU0._TSS ())
        }

        Method (_TSD, 0, NotSerialized)  // _TSD: Throttling State Dependencies
        {
            If (LNot (And (PDC0, 0x04)))
            {
                Return (Package (0x01)
                {
                    Package (0x05)
                    {
                        0x05, 
                        Zero, 
                        Zero, 
                        0xFD, 
                        TCNT
                    }
                })
            }

            Return (Package (0x01)
            {
                Package (0x05)
                {
                    0x05, 
                    Zero, 
                    0x02, 
                    0xFC, 
                    One
                }
            })
        }
    }

    Scope (\_PR.CPU3)
    {
        Name (_TPC, Zero)  // _TPC: Throttling Present Capabilities
        Method (_PTC, 0, NotSerialized)  // _PTC: Processor Throttling Control
        {
            Return (\_PR.CPU0._PTC ())
        }

        Method (_TSS, 0, NotSerialized)  // _TSS: Throttling Supported States
        {
            Return (\_PR.CPU0._TSS ())
        }

        Method (_TSD, 0, NotSerialized)  // _TSD: Throttling State Dependencies
        {
            If (LNot (And (PDC0, 0x04)))
            {
                Return (Package (0x01)
                {
                    Package (0x05)
                    {
                        0x05, 
                        Zero, 
                        Zero, 
                        0xFD, 
                        TCNT
                    }
                })
            }

            Return (Package (0x01)
            {
                Package (0x05)
                {
                    0x05, 
                    Zero, 
                    0x03, 
                    0xFC, 
                    One
                }
            })
        }
    }

    Scope (\_PR.CPU4)
    {
        Name (_TPC, Zero)  // _TPC: Throttling Present Capabilities
        Method (_PTC, 0, NotSerialized)  // _PTC: Processor Throttling Control
        {
            Return (\_PR.CPU0._PTC ())
        }

        Method (_TSS, 0, NotSerialized)  // _TSS: Throttling Supported States
        {
            Return (\_PR.CPU0._TSS ())
        }

        Method (_TSD, 0, NotSerialized)  // _TSD: Throttling State Dependencies
        {
            If (LNot (And (PDC0, 0x04)))
            {
                Return (Package (0x01)
                {
                    Package (0x05)
                    {
                        0x05, 
                        Zero, 
                        Zero, 
                        0xFD, 
                        TCNT
                    }
                })
            }

            Return (Package (0x01)
            {
                Package (0x05)
                {
                    0x05, 
                    Zero, 
                    0x04, 
                    0xFC, 
                    One
                }
            })
        }
    }

    Scope (\_PR.CPU5)
    {
        Name (_TPC, Zero)  // _TPC: Throttling Present Capabilities
        Method (_PTC, 0, NotSerialized)  // _PTC: Processor Throttling Control
        {
            Return (\_PR.CPU0._PTC ())
        }

        Method (_TSS, 0, NotSerialized)  // _TSS: Throttling Supported States
        {
            Return (\_PR.CPU0._TSS ())
        }

        Method (_TSD, 0, NotSerialized)  // _TSD: Throttling State Dependencies
        {
            If (LNot (And (PDC0, 0x04)))
            {
                Return (Package (0x01)
                {
                    Package (0x05)
                    {
                        0x05, 
                        Zero, 
                        Zero, 
                        0xFD, 
                        TCNT
                    }
                })
            }

            Return (Package (0x01)
            {
                Package (0x05)
                {
                    0x05, 
                    Zero, 
                    0x05, 
                    0xFC, 
                    One
                }
            })
        }
    }

    Scope (\_PR.CPU6)
    {
        Name (_TPC, Zero)  // _TPC: Throttling Present Capabilities
        Method (_PTC, 0, NotSerialized)  // _PTC: Processor Throttling Control
        {
            Return (\_PR.CPU0._PTC ())
        }

        Method (_TSS, 0, NotSerialized)  // _TSS: Throttling Supported States
        {
            Return (\_PR.CPU0._TSS ())
        }

        Method (_TSD, 0, NotSerialized)  // _TSD: Throttling State Dependencies
        {
            If (LNot (And (PDC0, 0x04)))
            {
                Return (Package (0x01)
                {
                    Package (0x05)
                    {
                        0x05, 
                        Zero, 
                        Zero, 
                        0xFD, 
                        TCNT
                    }
                })
            }

            Return (Package (0x01)
            {
                Package (0x05)
                {
                    0x05, 
                    Zero, 
                    0x06, 
                    0xFC, 
                    One
                }
            })
        }
    }

    Scope (\_PR.CPU7)
    {
        Name (_TPC, Zero)  // _TPC: Throttling Present Capabilities
        Method (_PTC, 0, NotSerialized)  // _PTC: Processor Throttling Control
        {
            Return (\_PR.CPU0._PTC ())
        }

        Method (_TSS, 0, NotSerialized)  // _TSS: Throttling Supported States
        {
            Return (\_PR.CPU0._TSS ())
        }

        Method (_TSD, 0, NotSerialized)  // _TSD: Throttling State Dependencies
        {
            If (LNot (And (PDC0, 0x04)))
            {
                Return (Package (0x01)
                {
                    Package (0x05)
                    {
                        0x05, 
                        Zero, 
                        Zero, 
                        0xFD, 
                        TCNT
                    }
                })
            }

            Return (Package (0x01)
            {
                Package (0x05)
                {
                    0x05, 
                    Zero, 
                    0x07, 
                    0xFC, 
                    One
                }
            })
        }
    }
}

