; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!123398 () Bool)

(assert start!123398)

(declare-fun b!1430430 () Bool)

(declare-fun res!964976 () Bool)

(declare-fun e!807599 () Bool)

(assert (=> b!1430430 (=> (not res!964976) (not e!807599))))

(declare-datatypes ((array!97426 0))(
  ( (array!97427 (arr!47019 (Array (_ BitVec 32) (_ BitVec 64))) (size!47570 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97426)

(declare-fun j!81 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1430430 (= res!964976 (validKeyInArray!0 (select (arr!47019 a!2831) j!81)))))

(declare-fun b!1430431 () Bool)

(declare-fun res!964972 () Bool)

(declare-fun e!807600 () Bool)

(assert (=> b!1430431 (=> (not res!964972) (not e!807600))))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11320 0))(
  ( (MissingZero!11320 (index!47671 (_ BitVec 32))) (Found!11320 (index!47672 (_ BitVec 32))) (Intermediate!11320 (undefined!12132 Bool) (index!47673 (_ BitVec 32)) (x!129307 (_ BitVec 32))) (Undefined!11320) (MissingVacant!11320 (index!47674 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97426 (_ BitVec 32)) SeekEntryResult!11320)

(assert (=> b!1430431 (= res!964972 (= (seekEntryOrOpen!0 (select (arr!47019 a!2831) j!81) a!2831 mask!2608) (Found!11320 j!81)))))

(declare-fun b!1430432 () Bool)

(declare-fun res!964978 () Bool)

(assert (=> b!1430432 (=> (not res!964978) (not e!807599))))

(declare-datatypes ((List!33709 0))(
  ( (Nil!33706) (Cons!33705 (h!35022 (_ BitVec 64)) (t!48410 List!33709)) )
))
(declare-fun arrayNoDuplicates!0 (array!97426 (_ BitVec 32) List!33709) Bool)

(assert (=> b!1430432 (= res!964978 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33706))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun e!807601 () Bool)

(declare-fun b!1430433 () Bool)

(declare-fun index!585 () (_ BitVec 32))

(declare-fun i!982 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(assert (=> b!1430433 (= e!807601 (not (or (= (select (arr!47019 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47019 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47019 a!2831) index!585) (select (arr!47019 a!2831) j!81)) (not (= (select (store (arr!47019 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvslt intermediateAfterX!13 intermediateBeforeX!13))))))

(assert (=> b!1430433 e!807600))

(declare-fun res!964968 () Bool)

(assert (=> b!1430433 (=> (not res!964968) (not e!807600))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97426 (_ BitVec 32)) Bool)

(assert (=> b!1430433 (= res!964968 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48334 0))(
  ( (Unit!48335) )
))
(declare-fun lt!629728 () Unit!48334)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97426 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48334)

(assert (=> b!1430433 (= lt!629728 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1430434 () Bool)

(declare-fun res!964974 () Bool)

(assert (=> b!1430434 (=> (not res!964974) (not e!807599))))

(assert (=> b!1430434 (= res!964974 (and (= (size!47570 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47570 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47570 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1430435 () Bool)

(declare-fun res!964980 () Bool)

(assert (=> b!1430435 (=> (not res!964980) (not e!807599))))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(assert (=> b!1430435 (= res!964980 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47570 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47570 a!2831))))))

(declare-fun b!1430436 () Bool)

(declare-fun res!964967 () Bool)

(assert (=> b!1430436 (=> (not res!964967) (not e!807601))))

(declare-fun lt!629727 () SeekEntryResult!11320)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97426 (_ BitVec 32)) SeekEntryResult!11320)

(assert (=> b!1430436 (= res!964967 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!47019 a!2831) j!81) a!2831 mask!2608) lt!629727))))

(declare-fun b!1430438 () Bool)

(declare-fun res!964969 () Bool)

(assert (=> b!1430438 (=> (not res!964969) (not e!807599))))

(assert (=> b!1430438 (= res!964969 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun b!1430439 () Bool)

(assert (=> b!1430439 (= e!807600 (or (= (select (arr!47019 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47019 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47019 a!2831) index!585) (select (arr!47019 a!2831) j!81)) (not (= (select (store (arr!47019 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)) (and (= index!585 intermediateAfterIndex!13) (= intermediateAfterIndex!13 i!982))))))

(declare-fun b!1430440 () Bool)

(declare-fun res!964979 () Bool)

(assert (=> b!1430440 (=> (not res!964979) (not e!807601))))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1430440 (= res!964979 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1430441 () Bool)

(declare-fun res!964977 () Bool)

(assert (=> b!1430441 (=> (not res!964977) (not e!807599))))

(assert (=> b!1430441 (= res!964977 (validKeyInArray!0 (select (arr!47019 a!2831) i!982)))))

(declare-fun b!1430437 () Bool)

(declare-fun e!807602 () Bool)

(assert (=> b!1430437 (= e!807599 e!807602)))

(declare-fun res!964975 () Bool)

(assert (=> b!1430437 (=> (not res!964975) (not e!807602))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1430437 (= res!964975 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47019 a!2831) j!81) mask!2608) (select (arr!47019 a!2831) j!81) a!2831 mask!2608) lt!629727))))

(assert (=> b!1430437 (= lt!629727 (Intermediate!11320 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun res!964970 () Bool)

(assert (=> start!123398 (=> (not res!964970) (not e!807599))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123398 (= res!964970 (validMask!0 mask!2608))))

(assert (=> start!123398 e!807599))

(assert (=> start!123398 true))

(declare-fun array_inv!35964 (array!97426) Bool)

(assert (=> start!123398 (array_inv!35964 a!2831)))

(declare-fun b!1430442 () Bool)

(assert (=> b!1430442 (= e!807602 e!807601)))

(declare-fun res!964971 () Bool)

(assert (=> b!1430442 (=> (not res!964971) (not e!807601))))

(declare-fun lt!629726 () array!97426)

(declare-fun lt!629724 () (_ BitVec 64))

(declare-fun lt!629725 () SeekEntryResult!11320)

(assert (=> b!1430442 (= res!964971 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!629724 mask!2608) lt!629724 lt!629726 mask!2608) lt!629725))))

(assert (=> b!1430442 (= lt!629725 (Intermediate!11320 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1430442 (= lt!629724 (select (store (arr!47019 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1430442 (= lt!629726 (array!97427 (store (arr!47019 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47570 a!2831)))))

(declare-fun b!1430443 () Bool)

(declare-fun res!964973 () Bool)

(assert (=> b!1430443 (=> (not res!964973) (not e!807601))))

(assert (=> b!1430443 (= res!964973 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!629724 lt!629726 mask!2608) lt!629725))))

(assert (= (and start!123398 res!964970) b!1430434))

(assert (= (and b!1430434 res!964974) b!1430441))

(assert (= (and b!1430441 res!964977) b!1430430))

(assert (= (and b!1430430 res!964976) b!1430438))

(assert (= (and b!1430438 res!964969) b!1430432))

(assert (= (and b!1430432 res!964978) b!1430435))

(assert (= (and b!1430435 res!964980) b!1430437))

(assert (= (and b!1430437 res!964975) b!1430442))

(assert (= (and b!1430442 res!964971) b!1430436))

(assert (= (and b!1430436 res!964967) b!1430443))

(assert (= (and b!1430443 res!964973) b!1430440))

(assert (= (and b!1430440 res!964979) b!1430433))

(assert (= (and b!1430433 res!964968) b!1430431))

(assert (= (and b!1430431 res!964972) b!1430439))

(declare-fun m!1320461 () Bool)

(assert (=> b!1430431 m!1320461))

(assert (=> b!1430431 m!1320461))

(declare-fun m!1320463 () Bool)

(assert (=> b!1430431 m!1320463))

(declare-fun m!1320465 () Bool)

(assert (=> b!1430441 m!1320465))

(assert (=> b!1430441 m!1320465))

(declare-fun m!1320467 () Bool)

(assert (=> b!1430441 m!1320467))

(declare-fun m!1320469 () Bool)

(assert (=> b!1430442 m!1320469))

(assert (=> b!1430442 m!1320469))

(declare-fun m!1320471 () Bool)

(assert (=> b!1430442 m!1320471))

(declare-fun m!1320473 () Bool)

(assert (=> b!1430442 m!1320473))

(declare-fun m!1320475 () Bool)

(assert (=> b!1430442 m!1320475))

(declare-fun m!1320477 () Bool)

(assert (=> b!1430443 m!1320477))

(assert (=> b!1430437 m!1320461))

(assert (=> b!1430437 m!1320461))

(declare-fun m!1320479 () Bool)

(assert (=> b!1430437 m!1320479))

(assert (=> b!1430437 m!1320479))

(assert (=> b!1430437 m!1320461))

(declare-fun m!1320481 () Bool)

(assert (=> b!1430437 m!1320481))

(assert (=> b!1430436 m!1320461))

(assert (=> b!1430436 m!1320461))

(declare-fun m!1320483 () Bool)

(assert (=> b!1430436 m!1320483))

(declare-fun m!1320485 () Bool)

(assert (=> b!1430432 m!1320485))

(assert (=> b!1430433 m!1320473))

(declare-fun m!1320487 () Bool)

(assert (=> b!1430433 m!1320487))

(declare-fun m!1320489 () Bool)

(assert (=> b!1430433 m!1320489))

(declare-fun m!1320491 () Bool)

(assert (=> b!1430433 m!1320491))

(assert (=> b!1430433 m!1320461))

(declare-fun m!1320493 () Bool)

(assert (=> b!1430433 m!1320493))

(assert (=> b!1430439 m!1320489))

(assert (=> b!1430439 m!1320461))

(assert (=> b!1430439 m!1320473))

(assert (=> b!1430439 m!1320487))

(assert (=> b!1430430 m!1320461))

(assert (=> b!1430430 m!1320461))

(declare-fun m!1320495 () Bool)

(assert (=> b!1430430 m!1320495))

(declare-fun m!1320497 () Bool)

(assert (=> b!1430438 m!1320497))

(declare-fun m!1320499 () Bool)

(assert (=> start!123398 m!1320499))

(declare-fun m!1320501 () Bool)

(assert (=> start!123398 m!1320501))

(push 1)

(assert (not b!1430437))

(assert (not b!1430442))

(assert (not b!1430432))

(assert (not b!1430443))

(assert (not start!123398))

(assert (not b!1430431))

(assert (not b!1430436))

(assert (not b!1430433))

(assert (not b!1430441))

(assert (not b!1430438))

(assert (not b!1430430))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!153603 () Bool)

(assert (=> d!153603 (= (validKeyInArray!0 (select (arr!47019 a!2831) j!81)) (and (not (= (select (arr!47019 a!2831) j!81) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47019 a!2831) j!81) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1430430 d!153603))

(declare-fun d!153605 () Bool)

(assert (=> d!153605 (= (validKeyInArray!0 (select (arr!47019 a!2831) i!982)) (and (not (= (select (arr!47019 a!2831) i!982) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47019 a!2831) i!982) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1430441 d!153605))

(declare-fun b!1430534 () Bool)

(declare-fun e!807665 () Bool)

(declare-fun lt!629761 () SeekEntryResult!11320)

(assert (=> b!1430534 (= e!807665 (bvsge (x!129307 lt!629761) #b01111111111111111111111111111110))))

(declare-fun b!1430535 () Bool)

(declare-fun e!807667 () SeekEntryResult!11320)

(assert (=> b!1430535 (= e!807667 (Intermediate!11320 true (toIndex!0 lt!629724 mask!2608) #b00000000000000000000000000000000))))

(declare-fun b!1430536 () Bool)

(declare-fun e!807664 () SeekEntryResult!11320)

(assert (=> b!1430536 (= e!807664 (Intermediate!11320 false (toIndex!0 lt!629724 mask!2608) #b00000000000000000000000000000000))))

(declare-fun d!153607 () Bool)

(assert (=> d!153607 e!807665))

(declare-fun c!132256 () Bool)

(assert (=> d!153607 (= c!132256 (and (is-Intermediate!11320 lt!629761) (undefined!12132 lt!629761)))))

(assert (=> d!153607 (= lt!629761 e!807667)))

(declare-fun c!132255 () Bool)

(assert (=> d!153607 (= c!132255 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!629760 () (_ BitVec 64))

(assert (=> d!153607 (= lt!629760 (select (arr!47019 lt!629726) (toIndex!0 lt!629724 mask!2608)))))

(assert (=> d!153607 (validMask!0 mask!2608)))

(assert (=> d!153607 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!629724 mask!2608) lt!629724 lt!629726 mask!2608) lt!629761)))

(declare-fun b!1430537 () Bool)

(assert (=> b!1430537 (and (bvsge (index!47673 lt!629761) #b00000000000000000000000000000000) (bvslt (index!47673 lt!629761) (size!47570 lt!629726)))))

(declare-fun res!965018 () Bool)

(assert (=> b!1430537 (= res!965018 (= (select (arr!47019 lt!629726) (index!47673 lt!629761)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!807666 () Bool)

(assert (=> b!1430537 (=> res!965018 e!807666)))

(declare-fun b!1430538 () Bool)

(assert (=> b!1430538 (and (bvsge (index!47673 lt!629761) #b00000000000000000000000000000000) (bvslt (index!47673 lt!629761) (size!47570 lt!629726)))))

(assert (=> b!1430538 (= e!807666 (= (select (arr!47019 lt!629726) (index!47673 lt!629761)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1430539 () Bool)

(declare-fun e!807668 () Bool)

(assert (=> b!1430539 (= e!807665 e!807668)))

(declare-fun res!965019 () Bool)

(assert (=> b!1430539 (= res!965019 (and (is-Intermediate!11320 lt!629761) (not (undefined!12132 lt!629761)) (bvslt (x!129307 lt!629761) #b01111111111111111111111111111110) (bvsge (x!129307 lt!629761) #b00000000000000000000000000000000) (bvsge (x!129307 lt!629761) #b00000000000000000000000000000000)))))

(assert (=> b!1430539 (=> (not res!965019) (not e!807668))))

(declare-fun b!1430540 () Bool)

(assert (=> b!1430540 (= e!807667 e!807664)))

(declare-fun c!132257 () Bool)

(assert (=> b!1430540 (= c!132257 (or (= lt!629760 lt!629724) (= (bvadd lt!629760 lt!629760) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1430541 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1430541 (= e!807664 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!629724 mask!2608) #b00000000000000000000000000000000 mask!2608) lt!629724 lt!629726 mask!2608))))

(declare-fun b!1430542 () Bool)

(assert (=> b!1430542 (and (bvsge (index!47673 lt!629761) #b00000000000000000000000000000000) (bvslt (index!47673 lt!629761) (size!47570 lt!629726)))))

(declare-fun res!965017 () Bool)

(assert (=> b!1430542 (= res!965017 (= (select (arr!47019 lt!629726) (index!47673 lt!629761)) lt!629724))))

(assert (=> b!1430542 (=> res!965017 e!807666)))

(assert (=> b!1430542 (= e!807668 e!807666)))

(assert (= (and d!153607 c!132255) b!1430535))

(assert (= (and d!153607 (not c!132255)) b!1430540))

(assert (= (and b!1430540 c!132257) b!1430536))

(assert (= (and b!1430540 (not c!132257)) b!1430541))

(assert (= (and d!153607 c!132256) b!1430534))

(assert (= (and d!153607 (not c!132256)) b!1430539))

(assert (= (and b!1430539 res!965019) b!1430542))

(assert (= (and b!1430542 (not res!965017)) b!1430537))

(assert (= (and b!1430537 (not res!965018)) b!1430538))

(declare-fun m!1320543 () Bool)

(assert (=> b!1430542 m!1320543))

(assert (=> d!153607 m!1320469))

(declare-fun m!1320545 () Bool)

(assert (=> d!153607 m!1320545))

(assert (=> d!153607 m!1320499))

(assert (=> b!1430541 m!1320469))

(declare-fun m!1320547 () Bool)

(assert (=> b!1430541 m!1320547))

(assert (=> b!1430541 m!1320547))

(declare-fun m!1320549 () Bool)

(assert (=> b!1430541 m!1320549))

(assert (=> b!1430537 m!1320543))

(assert (=> b!1430538 m!1320543))

(assert (=> b!1430442 d!153607))

(declare-fun d!153623 () Bool)

(declare-fun lt!629770 () (_ BitVec 32))

(declare-fun lt!629769 () (_ BitVec 32))

(assert (=> d!153623 (= lt!629770 (bvmul (bvxor lt!629769 (bvlshr lt!629769 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!153623 (= lt!629769 ((_ extract 31 0) (bvand (bvxor lt!629724 (bvlshr lt!629724 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!153623 (and (bvsge mask!2608 #b00000000000000000000000000000000) (let ((res!965020 (let ((h!35023 ((_ extract 31 0) (bvand (bvxor lt!629724 (bvlshr lt!629724 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!129309 (bvmul (bvxor h!35023 (bvlshr h!35023 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!129309 (bvlshr x!129309 #b00000000000000000000000000001101)) mask!2608))))) (and (bvslt res!965020 (bvadd mask!2608 #b00000000000000000000000000000001)) (bvsge res!965020 #b00000000000000000000000000000000))))))

(assert (=> d!153623 (= (toIndex!0 lt!629724 mask!2608) (bvand (bvxor lt!629770 (bvlshr lt!629770 #b00000000000000000000000000001101)) mask!2608))))

(assert (=> b!1430442 d!153623))

(declare-fun b!1430640 () Bool)

(declare-fun e!807725 () SeekEntryResult!11320)

(declare-fun e!807723 () SeekEntryResult!11320)

(assert (=> b!1430640 (= e!807725 e!807723)))

(declare-fun lt!629808 () (_ BitVec 64))

(declare-fun lt!629807 () SeekEntryResult!11320)

(assert (=> b!1430640 (= lt!629808 (select (arr!47019 a!2831) (index!47673 lt!629807)))))

(declare-fun c!132293 () Bool)

(assert (=> b!1430640 (= c!132293 (= lt!629808 (select (arr!47019 a!2831) j!81)))))

(declare-fun b!1430641 () Bool)

(assert (=> b!1430641 (= e!807725 Undefined!11320)))

(declare-fun d!153627 () Bool)

(declare-fun lt!629806 () SeekEntryResult!11320)

(assert (=> d!153627 (and (or (is-Undefined!11320 lt!629806) (not (is-Found!11320 lt!629806)) (and (bvsge (index!47672 lt!629806) #b00000000000000000000000000000000) (bvslt (index!47672 lt!629806) (size!47570 a!2831)))) (or (is-Undefined!11320 lt!629806) (is-Found!11320 lt!629806) (not (is-MissingZero!11320 lt!629806)) (and (bvsge (index!47671 lt!629806) #b00000000000000000000000000000000) (bvslt (index!47671 lt!629806) (size!47570 a!2831)))) (or (is-Undefined!11320 lt!629806) (is-Found!11320 lt!629806) (is-MissingZero!11320 lt!629806) (not (is-MissingVacant!11320 lt!629806)) (and (bvsge (index!47674 lt!629806) #b00000000000000000000000000000000) (bvslt (index!47674 lt!629806) (size!47570 a!2831)))) (or (is-Undefined!11320 lt!629806) (ite (is-Found!11320 lt!629806) (= (select (arr!47019 a!2831) (index!47672 lt!629806)) (select (arr!47019 a!2831) j!81)) (ite (is-MissingZero!11320 lt!629806) (= (select (arr!47019 a!2831) (index!47671 lt!629806)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!11320 lt!629806) (= (select (arr!47019 a!2831) (index!47674 lt!629806)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!153627 (= lt!629806 e!807725)))

(declare-fun c!132292 () Bool)

(assert (=> d!153627 (= c!132292 (and (is-Intermediate!11320 lt!629807) (undefined!12132 lt!629807)))))

(assert (=> d!153627 (= lt!629807 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47019 a!2831) j!81) mask!2608) (select (arr!47019 a!2831) j!81) a!2831 mask!2608))))

(assert (=> d!153627 (validMask!0 mask!2608)))

(assert (=> d!153627 (= (seekEntryOrOpen!0 (select (arr!47019 a!2831) j!81) a!2831 mask!2608) lt!629806)))

(declare-fun e!807724 () SeekEntryResult!11320)

(declare-fun b!1430642 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97426 (_ BitVec 32)) SeekEntryResult!11320)

(assert (=> b!1430642 (= e!807724 (seekKeyOrZeroReturnVacant!0 (x!129307 lt!629807) (index!47673 lt!629807) (index!47673 lt!629807) (select (arr!47019 a!2831) j!81) a!2831 mask!2608))))

(declare-fun b!1430643 () Bool)

(declare-fun c!132294 () Bool)

(assert (=> b!1430643 (= c!132294 (= lt!629808 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1430643 (= e!807723 e!807724)))

(declare-fun b!1430644 () Bool)

(assert (=> b!1430644 (= e!807724 (MissingZero!11320 (index!47673 lt!629807)))))

(declare-fun b!1430645 () Bool)

(assert (=> b!1430645 (= e!807723 (Found!11320 (index!47673 lt!629807)))))

(assert (= (and d!153627 c!132292) b!1430641))

(assert (= (and d!153627 (not c!132292)) b!1430640))

(assert (= (and b!1430640 c!132293) b!1430645))

(assert (= (and b!1430640 (not c!132293)) b!1430643))

(assert (= (and b!1430643 c!132294) b!1430644))

(assert (= (and b!1430643 (not c!132294)) b!1430642))

(declare-fun m!1320595 () Bool)

(assert (=> b!1430640 m!1320595))

(assert (=> d!153627 m!1320479))

(assert (=> d!153627 m!1320461))

(assert (=> d!153627 m!1320481))

(declare-fun m!1320597 () Bool)

(assert (=> d!153627 m!1320597))

(assert (=> d!153627 m!1320499))

(assert (=> d!153627 m!1320461))

(assert (=> d!153627 m!1320479))

(declare-fun m!1320599 () Bool)

(assert (=> d!153627 m!1320599))

(declare-fun m!1320601 () Bool)

(assert (=> d!153627 m!1320601))

(assert (=> b!1430642 m!1320461))

(declare-fun m!1320603 () Bool)

(assert (=> b!1430642 m!1320603))

(assert (=> b!1430431 d!153627))

(declare-fun b!1430678 () Bool)

(declare-fun e!807749 () Bool)

(declare-fun contains!9873 (List!33709 (_ BitVec 64)) Bool)

(assert (=> b!1430678 (= e!807749 (contains!9873 Nil!33706 (select (arr!47019 a!2831) #b00000000000000000000000000000000)))))

(declare-fun b!1430679 () Bool)

(declare-fun e!807747 () Bool)

(declare-fun e!807750 () Bool)

(assert (=> b!1430679 (= e!807747 e!807750)))

(declare-fun c!132304 () Bool)

(assert (=> b!1430679 (= c!132304 (validKeyInArray!0 (select (arr!47019 a!2831) #b00000000000000000000000000000000)))))

(declare-fun d!153647 () Bool)

(declare-fun res!965066 () Bool)

(declare-fun e!807748 () Bool)

(assert (=> d!153647 (=> res!965066 e!807748)))

(assert (=> d!153647 (= res!965066 (bvsge #b00000000000000000000000000000000 (size!47570 a!2831)))))

(assert (=> d!153647 (= (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33706) e!807748)))

(declare-fun b!1430680 () Bool)

(declare-fun call!67442 () Bool)

(assert (=> b!1430680 (= e!807750 call!67442)))

(declare-fun b!1430681 () Bool)

(assert (=> b!1430681 (= e!807748 e!807747)))

(declare-fun res!965068 () Bool)

(assert (=> b!1430681 (=> (not res!965068) (not e!807747))))

(assert (=> b!1430681 (= res!965068 (not e!807749))))

(declare-fun res!965067 () Bool)

(assert (=> b!1430681 (=> (not res!965067) (not e!807749))))

(assert (=> b!1430681 (= res!965067 (validKeyInArray!0 (select (arr!47019 a!2831) #b00000000000000000000000000000000)))))

(declare-fun bm!67439 () Bool)

(assert (=> bm!67439 (= call!67442 (arrayNoDuplicates!0 a!2831 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!132304 (Cons!33705 (select (arr!47019 a!2831) #b00000000000000000000000000000000) Nil!33706) Nil!33706)))))

(declare-fun b!1430682 () Bool)

(assert (=> b!1430682 (= e!807750 call!67442)))

(assert (= (and d!153647 (not res!965066)) b!1430681))

(assert (= (and b!1430681 res!965067) b!1430678))

(assert (= (and b!1430681 res!965068) b!1430679))

(assert (= (and b!1430679 c!132304) b!1430680))

(assert (= (and b!1430679 (not c!132304)) b!1430682))

(assert (= (or b!1430680 b!1430682) bm!67439))

(declare-fun m!1320627 () Bool)

(assert (=> b!1430678 m!1320627))

(assert (=> b!1430678 m!1320627))

(declare-fun m!1320629 () Bool)

(assert (=> b!1430678 m!1320629))

(assert (=> b!1430679 m!1320627))

(assert (=> b!1430679 m!1320627))

(declare-fun m!1320631 () Bool)

(assert (=> b!1430679 m!1320631))

(assert (=> b!1430681 m!1320627))

(assert (=> b!1430681 m!1320627))

(assert (=> b!1430681 m!1320631))

(assert (=> bm!67439 m!1320627))

(declare-fun m!1320633 () Bool)

(assert (=> bm!67439 m!1320633))

(assert (=> b!1430432 d!153647))

(declare-fun b!1430683 () Bool)

(declare-fun e!807752 () Bool)

(declare-fun lt!629826 () SeekEntryResult!11320)

(assert (=> b!1430683 (= e!807752 (bvsge (x!129307 lt!629826) #b01111111111111111111111111111110))))

(declare-fun b!1430684 () Bool)

(declare-fun e!807754 () SeekEntryResult!11320)

(assert (=> b!1430684 (= e!807754 (Intermediate!11320 true index!585 x!605))))

(declare-fun b!1430685 () Bool)

(declare-fun e!807751 () SeekEntryResult!11320)

(assert (=> b!1430685 (= e!807751 (Intermediate!11320 false index!585 x!605))))

(declare-fun d!153657 () Bool)

(assert (=> d!153657 e!807752))

(declare-fun c!132306 () Bool)

(assert (=> d!153657 (= c!132306 (and (is-Intermediate!11320 lt!629826) (undefined!12132 lt!629826)))))

(assert (=> d!153657 (= lt!629826 e!807754)))

(declare-fun c!132305 () Bool)

(assert (=> d!153657 (= c!132305 (bvsge x!605 #b01111111111111111111111111111110))))

(declare-fun lt!629825 () (_ BitVec 64))

(assert (=> d!153657 (= lt!629825 (select (arr!47019 lt!629726) index!585))))

(assert (=> d!153657 (validMask!0 mask!2608)))

(assert (=> d!153657 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!629724 lt!629726 mask!2608) lt!629826)))

(declare-fun b!1430686 () Bool)

(assert (=> b!1430686 (and (bvsge (index!47673 lt!629826) #b00000000000000000000000000000000) (bvslt (index!47673 lt!629826) (size!47570 lt!629726)))))

(declare-fun res!965070 () Bool)

(assert (=> b!1430686 (= res!965070 (= (select (arr!47019 lt!629726) (index!47673 lt!629826)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!807753 () Bool)

(assert (=> b!1430686 (=> res!965070 e!807753)))

(declare-fun b!1430687 () Bool)

(assert (=> b!1430687 (and (bvsge (index!47673 lt!629826) #b00000000000000000000000000000000) (bvslt (index!47673 lt!629826) (size!47570 lt!629726)))))

(assert (=> b!1430687 (= e!807753 (= (select (arr!47019 lt!629726) (index!47673 lt!629826)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1430688 () Bool)

(declare-fun e!807755 () Bool)

(assert (=> b!1430688 (= e!807752 e!807755)))

(declare-fun res!965071 () Bool)

(assert (=> b!1430688 (= res!965071 (and (is-Intermediate!11320 lt!629826) (not (undefined!12132 lt!629826)) (bvslt (x!129307 lt!629826) #b01111111111111111111111111111110) (bvsge (x!129307 lt!629826) #b00000000000000000000000000000000) (bvsge (x!129307 lt!629826) x!605)))))

(assert (=> b!1430688 (=> (not res!965071) (not e!807755))))

(declare-fun b!1430689 () Bool)

(assert (=> b!1430689 (= e!807754 e!807751)))

(declare-fun c!132307 () Bool)

(assert (=> b!1430689 (= c!132307 (or (= lt!629825 lt!629724) (= (bvadd lt!629825 lt!629825) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1430690 () Bool)

(assert (=> b!1430690 (= e!807751 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!605 #b00000000000000000000000000000001) (nextIndex!0 index!585 x!605 mask!2608) lt!629724 lt!629726 mask!2608))))

(declare-fun b!1430691 () Bool)

(assert (=> b!1430691 (and (bvsge (index!47673 lt!629826) #b00000000000000000000000000000000) (bvslt (index!47673 lt!629826) (size!47570 lt!629726)))))

(declare-fun res!965069 () Bool)

(assert (=> b!1430691 (= res!965069 (= (select (arr!47019 lt!629726) (index!47673 lt!629826)) lt!629724))))

(assert (=> b!1430691 (=> res!965069 e!807753)))

(assert (=> b!1430691 (= e!807755 e!807753)))

(assert (= (and d!153657 c!132305) b!1430684))

(assert (= (and d!153657 (not c!132305)) b!1430689))

(assert (= (and b!1430689 c!132307) b!1430685))

(assert (= (and b!1430689 (not c!132307)) b!1430690))

(assert (= (and d!153657 c!132306) b!1430683))

(assert (= (and d!153657 (not c!132306)) b!1430688))

(assert (= (and b!1430688 res!965071) b!1430691))

(assert (= (and b!1430691 (not res!965069)) b!1430686))

(assert (= (and b!1430686 (not res!965070)) b!1430687))

(declare-fun m!1320635 () Bool)

(assert (=> b!1430691 m!1320635))

(declare-fun m!1320637 () Bool)

(assert (=> d!153657 m!1320637))

(assert (=> d!153657 m!1320499))

(declare-fun m!1320639 () Bool)

(assert (=> b!1430690 m!1320639))

(assert (=> b!1430690 m!1320639))

(declare-fun m!1320641 () Bool)

(assert (=> b!1430690 m!1320641))

(assert (=> b!1430686 m!1320635))

(assert (=> b!1430687 m!1320635))

(assert (=> b!1430443 d!153657))

(declare-fun b!1430700 () Bool)

(declare-fun e!807763 () Bool)

(declare-fun e!807764 () Bool)

(assert (=> b!1430700 (= e!807763 e!807764)))

(declare-fun lt!629833 () (_ BitVec 64))

(assert (=> b!1430700 (= lt!629833 (select (arr!47019 a!2831) j!81))))

(declare-fun lt!629835 () Unit!48334)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!97426 (_ BitVec 64) (_ BitVec 32)) Unit!48334)

(assert (=> b!1430700 (= lt!629835 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2831 lt!629833 j!81))))

(declare-fun arrayContainsKey!0 (array!97426 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1430700 (arrayContainsKey!0 a!2831 lt!629833 #b00000000000000000000000000000000)))

(declare-fun lt!629834 () Unit!48334)

(assert (=> b!1430700 (= lt!629834 lt!629835)))

(declare-fun res!965076 () Bool)

(assert (=> b!1430700 (= res!965076 (= (seekEntryOrOpen!0 (select (arr!47019 a!2831) j!81) a!2831 mask!2608) (Found!11320 j!81)))))

(assert (=> b!1430700 (=> (not res!965076) (not e!807764))))

(declare-fun b!1430701 () Bool)

(declare-fun e!807762 () Bool)

(assert (=> b!1430701 (= e!807762 e!807763)))

(declare-fun c!132310 () Bool)

(assert (=> b!1430701 (= c!132310 (validKeyInArray!0 (select (arr!47019 a!2831) j!81)))))

(declare-fun bm!67442 () Bool)

(declare-fun call!67445 () Bool)

(assert (=> bm!67442 (= call!67445 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!81 #b00000000000000000000000000000001) a!2831 mask!2608))))

(declare-fun b!1430702 () Bool)

(assert (=> b!1430702 (= e!807763 call!67445)))

(declare-fun d!153659 () Bool)

(declare-fun res!965077 () Bool)

(assert (=> d!153659 (=> res!965077 e!807762)))

(assert (=> d!153659 (= res!965077 (bvsge j!81 (size!47570 a!2831)))))

(assert (=> d!153659 (= (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608) e!807762)))

(declare-fun b!1430703 () Bool)

(assert (=> b!1430703 (= e!807764 call!67445)))

(assert (= (and d!153659 (not res!965077)) b!1430701))

(assert (= (and b!1430701 c!132310) b!1430700))

(assert (= (and b!1430701 (not c!132310)) b!1430702))

(assert (= (and b!1430700 res!965076) b!1430703))

(assert (= (or b!1430703 b!1430702) bm!67442))

(assert (=> b!1430700 m!1320461))

(declare-fun m!1320643 () Bool)

(assert (=> b!1430700 m!1320643))

(declare-fun m!1320645 () Bool)

(assert (=> b!1430700 m!1320645))

(assert (=> b!1430700 m!1320461))

(assert (=> b!1430700 m!1320463))

(assert (=> b!1430701 m!1320461))

(assert (=> b!1430701 m!1320461))

(assert (=> b!1430701 m!1320495))

(declare-fun m!1320647 () Bool)

(assert (=> bm!67442 m!1320647))

(assert (=> b!1430433 d!153659))

(declare-fun d!153665 () Bool)

(assert (=> d!153665 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608)))

(declare-fun lt!629838 () Unit!48334)

(declare-fun choose!38 (array!97426 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48334)

(assert (=> d!153665 (= lt!629838 (choose!38 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(assert (=> d!153665 (validMask!0 mask!2608)))

(assert (=> d!153665 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81) lt!629838)))

(declare-fun bs!41665 () Bool)

(assert (= bs!41665 d!153665))

(assert (=> bs!41665 m!1320491))

(declare-fun m!1320649 () Bool)

(assert (=> bs!41665 m!1320649))

(assert (=> bs!41665 m!1320499))

(assert (=> b!1430433 d!153665))

(declare-fun b!1430704 () Bool)

(declare-fun e!807766 () Bool)

(declare-fun lt!629840 () SeekEntryResult!11320)

(assert (=> b!1430704 (= e!807766 (bvsge (x!129307 lt!629840) #b01111111111111111111111111111110))))

(declare-fun b!1430705 () Bool)

(declare-fun e!807768 () SeekEntryResult!11320)

(assert (=> b!1430705 (= e!807768 (Intermediate!11320 true index!585 x!605))))

(declare-fun b!1430706 () Bool)

(declare-fun e!807765 () SeekEntryResult!11320)

(assert (=> b!1430706 (= e!807765 (Intermediate!11320 false index!585 x!605))))

(declare-fun d!153667 () Bool)

(assert (=> d!153667 e!807766))

(declare-fun c!132312 () Bool)

(assert (=> d!153667 (= c!132312 (and (is-Intermediate!11320 lt!629840) (undefined!12132 lt!629840)))))

(assert (=> d!153667 (= lt!629840 e!807768)))

(declare-fun c!132311 () Bool)

(assert (=> d!153667 (= c!132311 (bvsge x!605 #b01111111111111111111111111111110))))

(declare-fun lt!629839 () (_ BitVec 64))

(assert (=> d!153667 (= lt!629839 (select (arr!47019 a!2831) index!585))))

(assert (=> d!153667 (validMask!0 mask!2608)))

(assert (=> d!153667 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!47019 a!2831) j!81) a!2831 mask!2608) lt!629840)))

(declare-fun b!1430707 () Bool)

(assert (=> b!1430707 (and (bvsge (index!47673 lt!629840) #b00000000000000000000000000000000) (bvslt (index!47673 lt!629840) (size!47570 a!2831)))))

(declare-fun res!965079 () Bool)

(assert (=> b!1430707 (= res!965079 (= (select (arr!47019 a!2831) (index!47673 lt!629840)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!807767 () Bool)

(assert (=> b!1430707 (=> res!965079 e!807767)))

(declare-fun b!1430708 () Bool)

(assert (=> b!1430708 (and (bvsge (index!47673 lt!629840) #b00000000000000000000000000000000) (bvslt (index!47673 lt!629840) (size!47570 a!2831)))))

(assert (=> b!1430708 (= e!807767 (= (select (arr!47019 a!2831) (index!47673 lt!629840)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1430709 () Bool)

(declare-fun e!807769 () Bool)

(assert (=> b!1430709 (= e!807766 e!807769)))

(declare-fun res!965080 () Bool)

(assert (=> b!1430709 (= res!965080 (and (is-Intermediate!11320 lt!629840) (not (undefined!12132 lt!629840)) (bvslt (x!129307 lt!629840) #b01111111111111111111111111111110) (bvsge (x!129307 lt!629840) #b00000000000000000000000000000000) (bvsge (x!129307 lt!629840) x!605)))))

(assert (=> b!1430709 (=> (not res!965080) (not e!807769))))

(declare-fun b!1430710 () Bool)

(assert (=> b!1430710 (= e!807768 e!807765)))

(declare-fun c!132313 () Bool)

(assert (=> b!1430710 (= c!132313 (or (= lt!629839 (select (arr!47019 a!2831) j!81)) (= (bvadd lt!629839 lt!629839) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1430711 () Bool)

(assert (=> b!1430711 (= e!807765 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!605 #b00000000000000000000000000000001) (nextIndex!0 index!585 x!605 mask!2608) (select (arr!47019 a!2831) j!81) a!2831 mask!2608))))

(declare-fun b!1430712 () Bool)

(assert (=> b!1430712 (and (bvsge (index!47673 lt!629840) #b00000000000000000000000000000000) (bvslt (index!47673 lt!629840) (size!47570 a!2831)))))

(declare-fun res!965078 () Bool)

(assert (=> b!1430712 (= res!965078 (= (select (arr!47019 a!2831) (index!47673 lt!629840)) (select (arr!47019 a!2831) j!81)))))

(assert (=> b!1430712 (=> res!965078 e!807767)))

(assert (=> b!1430712 (= e!807769 e!807767)))

(assert (= (and d!153667 c!132311) b!1430705))

(assert (= (and d!153667 (not c!132311)) b!1430710))

(assert (= (and b!1430710 c!132313) b!1430706))

(assert (= (and b!1430710 (not c!132313)) b!1430711))

(assert (= (and d!153667 c!132312) b!1430704))

(assert (= (and d!153667 (not c!132312)) b!1430709))

(assert (= (and b!1430709 res!965080) b!1430712))

(assert (= (and b!1430712 (not res!965078)) b!1430707))

(assert (= (and b!1430707 (not res!965079)) b!1430708))

(declare-fun m!1320651 () Bool)

(assert (=> b!1430712 m!1320651))

(assert (=> d!153667 m!1320489))

(assert (=> d!153667 m!1320499))

(assert (=> b!1430711 m!1320639))

(assert (=> b!1430711 m!1320639))

(assert (=> b!1430711 m!1320461))

(declare-fun m!1320653 () Bool)

(assert (=> b!1430711 m!1320653))

(assert (=> b!1430707 m!1320651))

(assert (=> b!1430708 m!1320651))

(assert (=> b!1430436 d!153667))

(declare-fun d!153669 () Bool)

(assert (=> d!153669 (= (validMask!0 mask!2608) (and (or (= mask!2608 #b00000000000000000000000000000111) (= mask!2608 #b00000000000000000000000000001111) (= mask!2608 #b00000000000000000000000000011111) (= mask!2608 #b00000000000000000000000000111111) (= mask!2608 #b00000000000000000000000001111111) (= mask!2608 #b00000000000000000000000011111111) (= mask!2608 #b00000000000000000000000111111111) (= mask!2608 #b00000000000000000000001111111111) (= mask!2608 #b00000000000000000000011111111111) (= mask!2608 #b00000000000000000000111111111111) (= mask!2608 #b00000000000000000001111111111111) (= mask!2608 #b00000000000000000011111111111111) (= mask!2608 #b00000000000000000111111111111111) (= mask!2608 #b00000000000000001111111111111111) (= mask!2608 #b00000000000000011111111111111111) (= mask!2608 #b00000000000000111111111111111111) (= mask!2608 #b00000000000001111111111111111111) (= mask!2608 #b00000000000011111111111111111111) (= mask!2608 #b00000000000111111111111111111111) (= mask!2608 #b00000000001111111111111111111111) (= mask!2608 #b00000000011111111111111111111111) (= mask!2608 #b00000000111111111111111111111111) (= mask!2608 #b00000001111111111111111111111111) (= mask!2608 #b00000011111111111111111111111111) (= mask!2608 #b00000111111111111111111111111111) (= mask!2608 #b00001111111111111111111111111111) (= mask!2608 #b00011111111111111111111111111111) (= mask!2608 #b00111111111111111111111111111111)) (bvsle mask!2608 #b00111111111111111111111111111111)))))

(assert (=> start!123398 d!153669))

(declare-fun d!153671 () Bool)

(assert (=> d!153671 (= (array_inv!35964 a!2831) (bvsge (size!47570 a!2831) #b00000000000000000000000000000000))))

(assert (=> start!123398 d!153671))

(declare-fun b!1430725 () Bool)

(declare-fun e!807777 () Bool)

(declare-fun lt!629848 () SeekEntryResult!11320)

(assert (=> b!1430725 (= e!807777 (bvsge (x!129307 lt!629848) #b01111111111111111111111111111110))))

(declare-fun e!807779 () SeekEntryResult!11320)

(declare-fun b!1430726 () Bool)

(assert (=> b!1430726 (= e!807779 (Intermediate!11320 true (toIndex!0 (select (arr!47019 a!2831) j!81) mask!2608) #b00000000000000000000000000000000))))

(declare-fun b!1430727 () Bool)

(declare-fun e!807776 () SeekEntryResult!11320)

(assert (=> b!1430727 (= e!807776 (Intermediate!11320 false (toIndex!0 (select (arr!47019 a!2831) j!81) mask!2608) #b00000000000000000000000000000000))))

(declare-fun d!153673 () Bool)

(assert (=> d!153673 e!807777))

(declare-fun c!132321 () Bool)

(assert (=> d!153673 (= c!132321 (and (is-Intermediate!11320 lt!629848) (undefined!12132 lt!629848)))))

(assert (=> d!153673 (= lt!629848 e!807779)))

(declare-fun c!132320 () Bool)

(assert (=> d!153673 (= c!132320 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!629847 () (_ BitVec 64))

(assert (=> d!153673 (= lt!629847 (select (arr!47019 a!2831) (toIndex!0 (select (arr!47019 a!2831) j!81) mask!2608)))))

(assert (=> d!153673 (validMask!0 mask!2608)))

(assert (=> d!153673 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47019 a!2831) j!81) mask!2608) (select (arr!47019 a!2831) j!81) a!2831 mask!2608) lt!629848)))

(declare-fun b!1430728 () Bool)

(assert (=> b!1430728 (and (bvsge (index!47673 lt!629848) #b00000000000000000000000000000000) (bvslt (index!47673 lt!629848) (size!47570 a!2831)))))

(declare-fun res!965082 () Bool)

(assert (=> b!1430728 (= res!965082 (= (select (arr!47019 a!2831) (index!47673 lt!629848)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!807778 () Bool)

(assert (=> b!1430728 (=> res!965082 e!807778)))

(declare-fun b!1430729 () Bool)

(assert (=> b!1430729 (and (bvsge (index!47673 lt!629848) #b00000000000000000000000000000000) (bvslt (index!47673 lt!629848) (size!47570 a!2831)))))

(assert (=> b!1430729 (= e!807778 (= (select (arr!47019 a!2831) (index!47673 lt!629848)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1430730 () Bool)

(declare-fun e!807780 () Bool)

(assert (=> b!1430730 (= e!807777 e!807780)))

(declare-fun res!965083 () Bool)

(assert (=> b!1430730 (= res!965083 (and (is-Intermediate!11320 lt!629848) (not (undefined!12132 lt!629848)) (bvslt (x!129307 lt!629848) #b01111111111111111111111111111110) (bvsge (x!129307 lt!629848) #b00000000000000000000000000000000) (bvsge (x!129307 lt!629848) #b00000000000000000000000000000000)))))

(assert (=> b!1430730 (=> (not res!965083) (not e!807780))))

(declare-fun b!1430731 () Bool)

(assert (=> b!1430731 (= e!807779 e!807776)))

(declare-fun c!132322 () Bool)

(assert (=> b!1430731 (= c!132322 (or (= lt!629847 (select (arr!47019 a!2831) j!81)) (= (bvadd lt!629847 lt!629847) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1430732 () Bool)

(assert (=> b!1430732 (= e!807776 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!47019 a!2831) j!81) mask!2608) #b00000000000000000000000000000000 mask!2608) (select (arr!47019 a!2831) j!81) a!2831 mask!2608))))

(declare-fun b!1430733 () Bool)

(assert (=> b!1430733 (and (bvsge (index!47673 lt!629848) #b00000000000000000000000000000000) (bvslt (index!47673 lt!629848) (size!47570 a!2831)))))

(declare-fun res!965081 () Bool)

(assert (=> b!1430733 (= res!965081 (= (select (arr!47019 a!2831) (index!47673 lt!629848)) (select (arr!47019 a!2831) j!81)))))

(assert (=> b!1430733 (=> res!965081 e!807778)))

(assert (=> b!1430733 (= e!807780 e!807778)))

(assert (= (and d!153673 c!132320) b!1430726))

(assert (= (and d!153673 (not c!132320)) b!1430731))

(assert (= (and b!1430731 c!132322) b!1430727))

(assert (= (and b!1430731 (not c!132322)) b!1430732))

(assert (= (and d!153673 c!132321) b!1430725))

(assert (= (and d!153673 (not c!132321)) b!1430730))

(assert (= (and b!1430730 res!965083) b!1430733))

(assert (= (and b!1430733 (not res!965081)) b!1430728))

(assert (= (and b!1430728 (not res!965082)) b!1430729))

(declare-fun m!1320655 () Bool)

(assert (=> b!1430733 m!1320655))

(assert (=> d!153673 m!1320479))

(declare-fun m!1320657 () Bool)

(assert (=> d!153673 m!1320657))

(assert (=> d!153673 m!1320499))

(assert (=> b!1430732 m!1320479))

(declare-fun m!1320659 () Bool)

(assert (=> b!1430732 m!1320659))

(assert (=> b!1430732 m!1320659))

(assert (=> b!1430732 m!1320461))

(declare-fun m!1320661 () Bool)

(assert (=> b!1430732 m!1320661))

(assert (=> b!1430728 m!1320655))

(assert (=> b!1430729 m!1320655))

(assert (=> b!1430437 d!153673))

(declare-fun d!153675 () Bool)

(declare-fun lt!629850 () (_ BitVec 32))

(declare-fun lt!629849 () (_ BitVec 32))

(assert (=> d!153675 (= lt!629850 (bvmul (bvxor lt!629849 (bvlshr lt!629849 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!153675 (= lt!629849 ((_ extract 31 0) (bvand (bvxor (select (arr!47019 a!2831) j!81) (bvlshr (select (arr!47019 a!2831) j!81) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!153675 (and (bvsge mask!2608 #b00000000000000000000000000000000) (let ((res!965020 (let ((h!35023 ((_ extract 31 0) (bvand (bvxor (select (arr!47019 a!2831) j!81) (bvlshr (select (arr!47019 a!2831) j!81) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!129309 (bvmul (bvxor h!35023 (bvlshr h!35023 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!129309 (bvlshr x!129309 #b00000000000000000000000000001101)) mask!2608))))) (and (bvslt res!965020 (bvadd mask!2608 #b00000000000000000000000000000001)) (bvsge res!965020 #b00000000000000000000000000000000))))))

(assert (=> d!153675 (= (toIndex!0 (select (arr!47019 a!2831) j!81) mask!2608) (bvand (bvxor lt!629850 (bvlshr lt!629850 #b00000000000000000000000000001101)) mask!2608))))

(assert (=> b!1430437 d!153675))

(declare-fun b!1430734 () Bool)

(declare-fun e!807782 () Bool)

(declare-fun e!807783 () Bool)

(assert (=> b!1430734 (= e!807782 e!807783)))

(declare-fun lt!629851 () (_ BitVec 64))

(assert (=> b!1430734 (= lt!629851 (select (arr!47019 a!2831) #b00000000000000000000000000000000))))

(declare-fun lt!629853 () Unit!48334)

(assert (=> b!1430734 (= lt!629853 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2831 lt!629851 #b00000000000000000000000000000000))))

(assert (=> b!1430734 (arrayContainsKey!0 a!2831 lt!629851 #b00000000000000000000000000000000)))

(declare-fun lt!629852 () Unit!48334)

(assert (=> b!1430734 (= lt!629852 lt!629853)))

(declare-fun res!965084 () Bool)

(assert (=> b!1430734 (= res!965084 (= (seekEntryOrOpen!0 (select (arr!47019 a!2831) #b00000000000000000000000000000000) a!2831 mask!2608) (Found!11320 #b00000000000000000000000000000000)))))

(assert (=> b!1430734 (=> (not res!965084) (not e!807783))))

(declare-fun b!1430735 () Bool)

(declare-fun e!807781 () Bool)

(assert (=> b!1430735 (= e!807781 e!807782)))

(declare-fun c!132323 () Bool)

(assert (=> b!1430735 (= c!132323 (validKeyInArray!0 (select (arr!47019 a!2831) #b00000000000000000000000000000000)))))

(declare-fun bm!67443 () Bool)

(declare-fun call!67446 () Bool)

(assert (=> bm!67443 (= call!67446 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2831 mask!2608))))

(declare-fun b!1430736 () Bool)

(assert (=> b!1430736 (= e!807782 call!67446)))

(declare-fun d!153677 () Bool)

(declare-fun res!965085 () Bool)

(assert (=> d!153677 (=> res!965085 e!807781)))

(assert (=> d!153677 (= res!965085 (bvsge #b00000000000000000000000000000000 (size!47570 a!2831)))))

(assert (=> d!153677 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608) e!807781)))

(declare-fun b!1430737 () Bool)

(assert (=> b!1430737 (= e!807783 call!67446)))

(assert (= (and d!153677 (not res!965085)) b!1430735))

(assert (= (and b!1430735 c!132323) b!1430734))

(assert (= (and b!1430735 (not c!132323)) b!1430736))

(assert (= (and b!1430734 res!965084) b!1430737))

(assert (= (or b!1430737 b!1430736) bm!67443))

(assert (=> b!1430734 m!1320627))

(declare-fun m!1320663 () Bool)

(assert (=> b!1430734 m!1320663))

(declare-fun m!1320665 () Bool)

(assert (=> b!1430734 m!1320665))

(assert (=> b!1430734 m!1320627))

(declare-fun m!1320667 () Bool)

(assert (=> b!1430734 m!1320667))

(assert (=> b!1430735 m!1320627))

(assert (=> b!1430735 m!1320627))

(assert (=> b!1430735 m!1320631))

(declare-fun m!1320669 () Bool)

(assert (=> bm!67443 m!1320669))

(assert (=> b!1430438 d!153677))

(push 1)

(assert (not bm!67439))

(assert (not b!1430701))

(assert (not b!1430700))

(assert (not d!153627))

(assert (not d!153607))

(assert (not d!153667))

(assert (not bm!67442))

(assert (not b!1430642))

(assert (not b!1430711))

(assert (not b!1430678))

(assert (not b!1430679))

(assert (not b!1430734))

(assert (not b!1430690))

(assert (not b!1430732))

(assert (not bm!67443))

(assert (not d!153673))

(assert (not b!1430681))

(assert (not b!1430735))

(assert (not d!153657))

(assert (not d!153665))

(assert (not b!1430541))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1430840 () Bool)

(declare-fun e!807849 () Bool)

(declare-fun lt!629897 () SeekEntryResult!11320)

(assert (=> b!1430840 (= e!807849 (bvsge (x!129307 lt!629897) #b01111111111111111111111111111110))))

(declare-fun b!1430841 () Bool)

(declare-fun e!807851 () SeekEntryResult!11320)

(assert (=> b!1430841 (= e!807851 (Intermediate!11320 true (nextIndex!0 index!585 x!605 mask!2608) (bvadd x!605 #b00000000000000000000000000000001)))))

(declare-fun e!807848 () SeekEntryResult!11320)

(declare-fun b!1430842 () Bool)

(assert (=> b!1430842 (= e!807848 (Intermediate!11320 false (nextIndex!0 index!585 x!605 mask!2608) (bvadd x!605 #b00000000000000000000000000000001)))))

(declare-fun d!153723 () Bool)

(assert (=> d!153723 e!807849))

(declare-fun c!132358 () Bool)

(assert (=> d!153723 (= c!132358 (and (is-Intermediate!11320 lt!629897) (undefined!12132 lt!629897)))))

(assert (=> d!153723 (= lt!629897 e!807851)))

(declare-fun c!132357 () Bool)

(assert (=> d!153723 (= c!132357 (bvsge (bvadd x!605 #b00000000000000000000000000000001) #b01111111111111111111111111111110))))

(declare-fun lt!629896 () (_ BitVec 64))

(assert (=> d!153723 (= lt!629896 (select (arr!47019 a!2831) (nextIndex!0 index!585 x!605 mask!2608)))))

(assert (=> d!153723 (validMask!0 mask!2608)))

(assert (=> d!153723 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd x!605 #b00000000000000000000000000000001) (nextIndex!0 index!585 x!605 mask!2608) (select (arr!47019 a!2831) j!81) a!2831 mask!2608) lt!629897)))

(declare-fun b!1430843 () Bool)

(assert (=> b!1430843 (and (bvsge (index!47673 lt!629897) #b00000000000000000000000000000000) (bvslt (index!47673 lt!629897) (size!47570 a!2831)))))

(declare-fun res!965123 () Bool)

(assert (=> b!1430843 (= res!965123 (= (select (arr!47019 a!2831) (index!47673 lt!629897)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!807850 () Bool)

(assert (=> b!1430843 (=> res!965123 e!807850)))

(declare-fun b!1430844 () Bool)

(assert (=> b!1430844 (and (bvsge (index!47673 lt!629897) #b00000000000000000000000000000000) (bvslt (index!47673 lt!629897) (size!47570 a!2831)))))

(assert (=> b!1430844 (= e!807850 (= (select (arr!47019 a!2831) (index!47673 lt!629897)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1430845 () Bool)

(declare-fun e!807852 () Bool)

(assert (=> b!1430845 (= e!807849 e!807852)))

(declare-fun res!965124 () Bool)

(assert (=> b!1430845 (= res!965124 (and (is-Intermediate!11320 lt!629897) (not (undefined!12132 lt!629897)) (bvslt (x!129307 lt!629897) #b01111111111111111111111111111110) (bvsge (x!129307 lt!629897) #b00000000000000000000000000000000) (bvsge (x!129307 lt!629897) (bvadd x!605 #b00000000000000000000000000000001))))))

(assert (=> b!1430845 (=> (not res!965124) (not e!807852))))

(declare-fun b!1430846 () Bool)

(assert (=> b!1430846 (= e!807851 e!807848)))

(declare-fun c!132359 () Bool)

(assert (=> b!1430846 (= c!132359 (or (= lt!629896 (select (arr!47019 a!2831) j!81)) (= (bvadd lt!629896 lt!629896) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1430847 () Bool)

(assert (=> b!1430847 (= e!807848 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!605 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (nextIndex!0 (nextIndex!0 index!585 x!605 mask!2608) (bvadd x!605 #b00000000000000000000000000000001) mask!2608) (select (arr!47019 a!2831) j!81) a!2831 mask!2608))))

(declare-fun b!1430848 () Bool)

(assert (=> b!1430848 (and (bvsge (index!47673 lt!629897) #b00000000000000000000000000000000) (bvslt (index!47673 lt!629897) (size!47570 a!2831)))))

(declare-fun res!965122 () Bool)

(assert (=> b!1430848 (= res!965122 (= (select (arr!47019 a!2831) (index!47673 lt!629897)) (select (arr!47019 a!2831) j!81)))))

(assert (=> b!1430848 (=> res!965122 e!807850)))

(assert (=> b!1430848 (= e!807852 e!807850)))

(assert (= (and d!153723 c!132357) b!1430841))

(assert (= (and d!153723 (not c!132357)) b!1430846))

(assert (= (and b!1430846 c!132359) b!1430842))

(assert (= (and b!1430846 (not c!132359)) b!1430847))

(assert (= (and d!153723 c!132358) b!1430840))

(assert (= (and d!153723 (not c!132358)) b!1430845))

(assert (= (and b!1430845 res!965124) b!1430848))

(assert (= (and b!1430848 (not res!965122)) b!1430843))

(assert (= (and b!1430843 (not res!965123)) b!1430844))

(declare-fun m!1320789 () Bool)

(assert (=> b!1430848 m!1320789))

(assert (=> d!153723 m!1320639))

(declare-fun m!1320791 () Bool)

(assert (=> d!153723 m!1320791))

(assert (=> d!153723 m!1320499))

(assert (=> b!1430847 m!1320639))

(declare-fun m!1320793 () Bool)

(assert (=> b!1430847 m!1320793))

(assert (=> b!1430847 m!1320793))

(assert (=> b!1430847 m!1320461))

(declare-fun m!1320795 () Bool)

(assert (=> b!1430847 m!1320795))

(assert (=> b!1430843 m!1320789))

(assert (=> b!1430844 m!1320789))

(assert (=> b!1430711 d!153723))

(declare-fun d!153725 () Bool)

(declare-fun lt!629900 () (_ BitVec 32))

(assert (=> d!153725 (and (bvsge lt!629900 #b00000000000000000000000000000000) (bvslt lt!629900 (bvadd mask!2608 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!153725 (= lt!629900 (choose!52 index!585 x!605 mask!2608))))

(assert (=> d!153725 (validMask!0 mask!2608)))

(assert (=> d!153725 (= (nextIndex!0 index!585 x!605 mask!2608) lt!629900)))

(declare-fun bs!41672 () Bool)

(assert (= bs!41672 d!153725))

(declare-fun m!1320797 () Bool)

(assert (=> bs!41672 m!1320797))

(assert (=> bs!41672 m!1320499))

(assert (=> b!1430711 d!153725))

(assert (=> d!153667 d!153669))

(declare-fun d!153727 () Bool)

(assert (=> d!153727 (arrayContainsKey!0 a!2831 lt!629833 #b00000000000000000000000000000000)))

(declare-fun lt!629903 () Unit!48334)

(declare-fun choose!13 (array!97426 (_ BitVec 64) (_ BitVec 32)) Unit!48334)

(assert (=> d!153727 (= lt!629903 (choose!13 a!2831 lt!629833 j!81))))

(assert (=> d!153727 (bvsge j!81 #b00000000000000000000000000000000)))

(assert (=> d!153727 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2831 lt!629833 j!81) lt!629903)))

(declare-fun bs!41673 () Bool)

(assert (= bs!41673 d!153727))

(assert (=> bs!41673 m!1320645))

(declare-fun m!1320799 () Bool)

(assert (=> bs!41673 m!1320799))

(assert (=> b!1430700 d!153727))

(declare-fun d!153729 () Bool)

(declare-fun res!965129 () Bool)

(declare-fun e!807857 () Bool)

(assert (=> d!153729 (=> res!965129 e!807857)))

(assert (=> d!153729 (= res!965129 (= (select (arr!47019 a!2831) #b00000000000000000000000000000000) lt!629833))))

(assert (=> d!153729 (= (arrayContainsKey!0 a!2831 lt!629833 #b00000000000000000000000000000000) e!807857)))

(declare-fun b!1430853 () Bool)

(declare-fun e!807858 () Bool)

(assert (=> b!1430853 (= e!807857 e!807858)))

(declare-fun res!965130 () Bool)

(assert (=> b!1430853 (=> (not res!965130) (not e!807858))))

(assert (=> b!1430853 (= res!965130 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!47570 a!2831)))))

(declare-fun b!1430854 () Bool)

(assert (=> b!1430854 (= e!807858 (arrayContainsKey!0 a!2831 lt!629833 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!153729 (not res!965129)) b!1430853))

(assert (= (and b!1430853 res!965130) b!1430854))

(assert (=> d!153729 m!1320627))

(declare-fun m!1320801 () Bool)

(assert (=> b!1430854 m!1320801))

(assert (=> b!1430700 d!153729))

(assert (=> b!1430700 d!153627))

(declare-fun d!153731 () Bool)

(assert (=> d!153731 (arrayContainsKey!0 a!2831 lt!629851 #b00000000000000000000000000000000)))

(declare-fun lt!629904 () Unit!48334)

(assert (=> d!153731 (= lt!629904 (choose!13 a!2831 lt!629851 #b00000000000000000000000000000000))))

(assert (=> d!153731 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!153731 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2831 lt!629851 #b00000000000000000000000000000000) lt!629904)))

(declare-fun bs!41674 () Bool)

(assert (= bs!41674 d!153731))

(assert (=> bs!41674 m!1320665))

(declare-fun m!1320803 () Bool)

(assert (=> bs!41674 m!1320803))

(assert (=> b!1430734 d!153731))

(declare-fun d!153733 () Bool)

(declare-fun res!965131 () Bool)

(declare-fun e!807859 () Bool)

(assert (=> d!153733 (=> res!965131 e!807859)))

(assert (=> d!153733 (= res!965131 (= (select (arr!47019 a!2831) #b00000000000000000000000000000000) lt!629851))))

(assert (=> d!153733 (= (arrayContainsKey!0 a!2831 lt!629851 #b00000000000000000000000000000000) e!807859)))

(declare-fun b!1430855 () Bool)

(declare-fun e!807860 () Bool)

(assert (=> b!1430855 (= e!807859 e!807860)))

(declare-fun res!965132 () Bool)

(assert (=> b!1430855 (=> (not res!965132) (not e!807860))))

(assert (=> b!1430855 (= res!965132 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!47570 a!2831)))))

(declare-fun b!1430856 () Bool)

(assert (=> b!1430856 (= e!807860 (arrayContainsKey!0 a!2831 lt!629851 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!153733 (not res!965131)) b!1430855))

(assert (= (and b!1430855 res!965132) b!1430856))

(assert (=> d!153733 m!1320627))

(declare-fun m!1320805 () Bool)

(assert (=> b!1430856 m!1320805))

(assert (=> b!1430734 d!153733))

(declare-fun b!1430857 () Bool)

(declare-fun e!807863 () SeekEntryResult!11320)

(declare-fun e!807861 () SeekEntryResult!11320)

(assert (=> b!1430857 (= e!807863 e!807861)))

(declare-fun lt!629907 () (_ BitVec 64))

(declare-fun lt!629906 () SeekEntryResult!11320)

(assert (=> b!1430857 (= lt!629907 (select (arr!47019 a!2831) (index!47673 lt!629906)))))

(declare-fun c!132361 () Bool)

(assert (=> b!1430857 (= c!132361 (= lt!629907 (select (arr!47019 a!2831) #b00000000000000000000000000000000)))))

(declare-fun b!1430858 () Bool)

(assert (=> b!1430858 (= e!807863 Undefined!11320)))

(declare-fun d!153735 () Bool)

(declare-fun lt!629905 () SeekEntryResult!11320)

(assert (=> d!153735 (and (or (is-Undefined!11320 lt!629905) (not (is-Found!11320 lt!629905)) (and (bvsge (index!47672 lt!629905) #b00000000000000000000000000000000) (bvslt (index!47672 lt!629905) (size!47570 a!2831)))) (or (is-Undefined!11320 lt!629905) (is-Found!11320 lt!629905) (not (is-MissingZero!11320 lt!629905)) (and (bvsge (index!47671 lt!629905) #b00000000000000000000000000000000) (bvslt (index!47671 lt!629905) (size!47570 a!2831)))) (or (is-Undefined!11320 lt!629905) (is-Found!11320 lt!629905) (is-MissingZero!11320 lt!629905) (not (is-MissingVacant!11320 lt!629905)) (and (bvsge (index!47674 lt!629905) #b00000000000000000000000000000000) (bvslt (index!47674 lt!629905) (size!47570 a!2831)))) (or (is-Undefined!11320 lt!629905) (ite (is-Found!11320 lt!629905) (= (select (arr!47019 a!2831) (index!47672 lt!629905)) (select (arr!47019 a!2831) #b00000000000000000000000000000000)) (ite (is-MissingZero!11320 lt!629905) (= (select (arr!47019 a!2831) (index!47671 lt!629905)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!11320 lt!629905) (= (select (arr!47019 a!2831) (index!47674 lt!629905)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!153735 (= lt!629905 e!807863)))

(declare-fun c!132360 () Bool)

(assert (=> d!153735 (= c!132360 (and (is-Intermediate!11320 lt!629906) (undefined!12132 lt!629906)))))

(assert (=> d!153735 (= lt!629906 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47019 a!2831) #b00000000000000000000000000000000) mask!2608) (select (arr!47019 a!2831) #b00000000000000000000000000000000) a!2831 mask!2608))))

(assert (=> d!153735 (validMask!0 mask!2608)))

(assert (=> d!153735 (= (seekEntryOrOpen!0 (select (arr!47019 a!2831) #b00000000000000000000000000000000) a!2831 mask!2608) lt!629905)))

(declare-fun e!807862 () SeekEntryResult!11320)

(declare-fun b!1430859 () Bool)

(assert (=> b!1430859 (= e!807862 (seekKeyOrZeroReturnVacant!0 (x!129307 lt!629906) (index!47673 lt!629906) (index!47673 lt!629906) (select (arr!47019 a!2831) #b00000000000000000000000000000000) a!2831 mask!2608))))

(declare-fun b!1430860 () Bool)

(declare-fun c!132362 () Bool)

(assert (=> b!1430860 (= c!132362 (= lt!629907 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1430860 (= e!807861 e!807862)))

(declare-fun b!1430861 () Bool)

(assert (=> b!1430861 (= e!807862 (MissingZero!11320 (index!47673 lt!629906)))))

(declare-fun b!1430862 () Bool)

(assert (=> b!1430862 (= e!807861 (Found!11320 (index!47673 lt!629906)))))

(assert (= (and d!153735 c!132360) b!1430858))

(assert (= (and d!153735 (not c!132360)) b!1430857))

(assert (= (and b!1430857 c!132361) b!1430862))

(assert (= (and b!1430857 (not c!132361)) b!1430860))

(assert (= (and b!1430860 c!132362) b!1430861))

(assert (= (and b!1430860 (not c!132362)) b!1430859))

(declare-fun m!1320807 () Bool)

(assert (=> b!1430857 m!1320807))

(declare-fun m!1320809 () Bool)

(assert (=> d!153735 m!1320809))

(assert (=> d!153735 m!1320627))

(declare-fun m!1320811 () Bool)

(assert (=> d!153735 m!1320811))

(declare-fun m!1320813 () Bool)

(assert (=> d!153735 m!1320813))

(assert (=> d!153735 m!1320499))

(assert (=> d!153735 m!1320627))

(assert (=> d!153735 m!1320809))

(declare-fun m!1320815 () Bool)

(assert (=> d!153735 m!1320815))

(declare-fun m!1320817 () Bool)

(assert (=> d!153735 m!1320817))

(assert (=> b!1430859 m!1320627))

(declare-fun m!1320819 () Bool)

(assert (=> b!1430859 m!1320819))

(assert (=> b!1430734 d!153735))

(assert (=> b!1430701 d!153603))

(declare-fun d!153737 () Bool)

(assert (=> d!153737 (= (validKeyInArray!0 (select (arr!47019 a!2831) #b00000000000000000000000000000000)) (and (not (= (select (arr!47019 a!2831) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47019 a!2831) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1430735 d!153737))

(declare-fun b!1430863 () Bool)

(declare-fun e!807865 () Bool)

(declare-fun e!807866 () Bool)

(assert (=> b!1430863 (= e!807865 e!807866)))

(declare-fun lt!629908 () (_ BitVec 64))

(assert (=> b!1430863 (= lt!629908 (select (arr!47019 a!2831) (bvadd j!81 #b00000000000000000000000000000001)))))

(declare-fun lt!629910 () Unit!48334)

(assert (=> b!1430863 (= lt!629910 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2831 lt!629908 (bvadd j!81 #b00000000000000000000000000000001)))))

(assert (=> b!1430863 (arrayContainsKey!0 a!2831 lt!629908 #b00000000000000000000000000000000)))

(declare-fun lt!629909 () Unit!48334)

(assert (=> b!1430863 (= lt!629909 lt!629910)))

(declare-fun res!965133 () Bool)

(assert (=> b!1430863 (= res!965133 (= (seekEntryOrOpen!0 (select (arr!47019 a!2831) (bvadd j!81 #b00000000000000000000000000000001)) a!2831 mask!2608) (Found!11320 (bvadd j!81 #b00000000000000000000000000000001))))))

(assert (=> b!1430863 (=> (not res!965133) (not e!807866))))

(declare-fun b!1430864 () Bool)

(declare-fun e!807864 () Bool)

(assert (=> b!1430864 (= e!807864 e!807865)))

(declare-fun c!132363 () Bool)

(assert (=> b!1430864 (= c!132363 (validKeyInArray!0 (select (arr!47019 a!2831) (bvadd j!81 #b00000000000000000000000000000001))))))

(declare-fun call!67450 () Bool)

(declare-fun bm!67447 () Bool)

(assert (=> bm!67447 (= call!67450 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!81 #b00000000000000000000000000000001 #b00000000000000000000000000000001) a!2831 mask!2608))))

(declare-fun b!1430865 () Bool)

(assert (=> b!1430865 (= e!807865 call!67450)))

(declare-fun d!153739 () Bool)

(declare-fun res!965134 () Bool)

(assert (=> d!153739 (=> res!965134 e!807864)))

(assert (=> d!153739 (= res!965134 (bvsge (bvadd j!81 #b00000000000000000000000000000001) (size!47570 a!2831)))))

(assert (=> d!153739 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd j!81 #b00000000000000000000000000000001) a!2831 mask!2608) e!807864)))

(declare-fun b!1430866 () Bool)

(assert (=> b!1430866 (= e!807866 call!67450)))

(assert (= (and d!153739 (not res!965134)) b!1430864))

(assert (= (and b!1430864 c!132363) b!1430863))

(assert (= (and b!1430864 (not c!132363)) b!1430865))

(assert (= (and b!1430863 res!965133) b!1430866))

(assert (= (or b!1430866 b!1430865) bm!67447))

(declare-fun m!1320821 () Bool)

(assert (=> b!1430863 m!1320821))

(declare-fun m!1320823 () Bool)

(assert (=> b!1430863 m!1320823))

(declare-fun m!1320825 () Bool)

(assert (=> b!1430863 m!1320825))

(assert (=> b!1430863 m!1320821))

(declare-fun m!1320827 () Bool)

(assert (=> b!1430863 m!1320827))

(assert (=> b!1430864 m!1320821))

(assert (=> b!1430864 m!1320821))

(declare-fun m!1320829 () Bool)

(assert (=> b!1430864 m!1320829))

(declare-fun m!1320831 () Bool)

(assert (=> bm!67447 m!1320831))

(assert (=> bm!67442 d!153739))

(assert (=> d!153665 d!153659))

(declare-fun d!153741 () Bool)

(assert (=> d!153741 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608)))

(assert (=> d!153741 true))

(declare-fun _$72!146 () Unit!48334)

(assert (=> d!153741 (= (choose!38 a!2831 mask!2608 #b00000000000000000000000000000000 j!81) _$72!146)))

(declare-fun bs!41675 () Bool)

(assert (= bs!41675 d!153741))

(assert (=> bs!41675 m!1320491))

(assert (=> d!153665 d!153741))

(assert (=> d!153665 d!153669))

(assert (=> d!153627 d!153673))

(assert (=> d!153627 d!153675))

(assert (=> d!153627 d!153669))

(declare-fun b!1430867 () Bool)

(declare-fun e!807868 () Bool)

(declare-fun e!807869 () Bool)

(assert (=> b!1430867 (= e!807868 e!807869)))

(declare-fun lt!629911 () (_ BitVec 64))

(assert (=> b!1430867 (= lt!629911 (select (arr!47019 a!2831) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!629913 () Unit!48334)

(assert (=> b!1430867 (= lt!629913 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2831 lt!629911 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!1430867 (arrayContainsKey!0 a!2831 lt!629911 #b00000000000000000000000000000000)))

(declare-fun lt!629912 () Unit!48334)

(assert (=> b!1430867 (= lt!629912 lt!629913)))

(declare-fun res!965135 () Bool)

(assert (=> b!1430867 (= res!965135 (= (seekEntryOrOpen!0 (select (arr!47019 a!2831) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) a!2831 mask!2608) (Found!11320 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!1430867 (=> (not res!965135) (not e!807869))))

(declare-fun b!1430868 () Bool)

(declare-fun e!807867 () Bool)

(assert (=> b!1430868 (= e!807867 e!807868)))

(declare-fun c!132364 () Bool)

(assert (=> b!1430868 (= c!132364 (validKeyInArray!0 (select (arr!47019 a!2831) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun bm!67448 () Bool)

(declare-fun call!67451 () Bool)

(assert (=> bm!67448 (= call!67451 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) a!2831 mask!2608))))

(declare-fun b!1430869 () Bool)

(assert (=> b!1430869 (= e!807868 call!67451)))

(declare-fun d!153743 () Bool)

(declare-fun res!965136 () Bool)

(assert (=> d!153743 (=> res!965136 e!807867)))

(assert (=> d!153743 (= res!965136 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!47570 a!2831)))))

(assert (=> d!153743 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2831 mask!2608) e!807867)))

(declare-fun b!1430870 () Bool)

(assert (=> b!1430870 (= e!807869 call!67451)))

(assert (= (and d!153743 (not res!965136)) b!1430868))

(assert (= (and b!1430868 c!132364) b!1430867))

(assert (= (and b!1430868 (not c!132364)) b!1430869))

(assert (= (and b!1430867 res!965135) b!1430870))

(assert (= (or b!1430870 b!1430869) bm!67448))

(declare-fun m!1320833 () Bool)

(assert (=> b!1430867 m!1320833))

(declare-fun m!1320835 () Bool)

(assert (=> b!1430867 m!1320835))

(declare-fun m!1320837 () Bool)

(assert (=> b!1430867 m!1320837))

(assert (=> b!1430867 m!1320833))

(declare-fun m!1320839 () Bool)

(assert (=> b!1430867 m!1320839))

(assert (=> b!1430868 m!1320833))

(assert (=> b!1430868 m!1320833))

(declare-fun m!1320841 () Bool)

(assert (=> b!1430868 m!1320841))

(declare-fun m!1320843 () Bool)

(assert (=> bm!67448 m!1320843))

(assert (=> bm!67443 d!153743))

(declare-fun d!153745 () Bool)

(declare-fun lt!629916 () Bool)

(declare-fun content!776 (List!33709) (Set (_ BitVec 64)))

(assert (=> d!153745 (= lt!629916 (member (select (arr!47019 a!2831) #b00000000000000000000000000000000) (content!776 Nil!33706)))))

(declare-fun e!807875 () Bool)

(assert (=> d!153745 (= lt!629916 e!807875)))

(declare-fun res!965142 () Bool)

(assert (=> d!153745 (=> (not res!965142) (not e!807875))))

(assert (=> d!153745 (= res!965142 (is-Cons!33705 Nil!33706))))

(assert (=> d!153745 (= (contains!9873 Nil!33706 (select (arr!47019 a!2831) #b00000000000000000000000000000000)) lt!629916)))

(declare-fun b!1430875 () Bool)

(declare-fun e!807874 () Bool)

(assert (=> b!1430875 (= e!807875 e!807874)))

(declare-fun res!965141 () Bool)

(assert (=> b!1430875 (=> res!965141 e!807874)))

(assert (=> b!1430875 (= res!965141 (= (h!35022 Nil!33706) (select (arr!47019 a!2831) #b00000000000000000000000000000000)))))

(declare-fun b!1430876 () Bool)

(assert (=> b!1430876 (= e!807874 (contains!9873 (t!48410 Nil!33706) (select (arr!47019 a!2831) #b00000000000000000000000000000000)))))

(assert (= (and d!153745 res!965142) b!1430875))

(assert (= (and b!1430875 (not res!965141)) b!1430876))

(declare-fun m!1320845 () Bool)

(assert (=> d!153745 m!1320845))

(assert (=> d!153745 m!1320627))

(declare-fun m!1320847 () Bool)

(assert (=> d!153745 m!1320847))

(assert (=> b!1430876 m!1320627))

(declare-fun m!1320849 () Bool)

(assert (=> b!1430876 m!1320849))

(assert (=> b!1430678 d!153745))

(assert (=> b!1430679 d!153737))

(declare-fun b!1430877 () Bool)

(declare-fun e!807877 () Bool)

(declare-fun lt!629918 () SeekEntryResult!11320)

(assert (=> b!1430877 (= e!807877 (bvsge (x!129307 lt!629918) #b01111111111111111111111111111110))))

(declare-fun b!1430878 () Bool)

(declare-fun e!807879 () SeekEntryResult!11320)

(assert (=> b!1430878 (= e!807879 (Intermediate!11320 true (nextIndex!0 (toIndex!0 lt!629724 mask!2608) #b00000000000000000000000000000000 mask!2608) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun b!1430879 () Bool)

(declare-fun e!807876 () SeekEntryResult!11320)

(assert (=> b!1430879 (= e!807876 (Intermediate!11320 false (nextIndex!0 (toIndex!0 lt!629724 mask!2608) #b00000000000000000000000000000000 mask!2608) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun d!153747 () Bool)

(assert (=> d!153747 e!807877))

(declare-fun c!132366 () Bool)

(assert (=> d!153747 (= c!132366 (and (is-Intermediate!11320 lt!629918) (undefined!12132 lt!629918)))))

(assert (=> d!153747 (= lt!629918 e!807879)))

(declare-fun c!132365 () Bool)

(assert (=> d!153747 (= c!132365 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b01111111111111111111111111111110))))

(declare-fun lt!629917 () (_ BitVec 64))

(assert (=> d!153747 (= lt!629917 (select (arr!47019 lt!629726) (nextIndex!0 (toIndex!0 lt!629724 mask!2608) #b00000000000000000000000000000000 mask!2608)))))

(assert (=> d!153747 (validMask!0 mask!2608)))

(assert (=> d!153747 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!629724 mask!2608) #b00000000000000000000000000000000 mask!2608) lt!629724 lt!629726 mask!2608) lt!629918)))

(declare-fun b!1430880 () Bool)

(assert (=> b!1430880 (and (bvsge (index!47673 lt!629918) #b00000000000000000000000000000000) (bvslt (index!47673 lt!629918) (size!47570 lt!629726)))))

(declare-fun res!965144 () Bool)

(assert (=> b!1430880 (= res!965144 (= (select (arr!47019 lt!629726) (index!47673 lt!629918)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!807878 () Bool)

(assert (=> b!1430880 (=> res!965144 e!807878)))

(declare-fun b!1430881 () Bool)

(assert (=> b!1430881 (and (bvsge (index!47673 lt!629918) #b00000000000000000000000000000000) (bvslt (index!47673 lt!629918) (size!47570 lt!629726)))))

(assert (=> b!1430881 (= e!807878 (= (select (arr!47019 lt!629726) (index!47673 lt!629918)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1430882 () Bool)

(declare-fun e!807880 () Bool)

(assert (=> b!1430882 (= e!807877 e!807880)))

(declare-fun res!965145 () Bool)

(assert (=> b!1430882 (= res!965145 (and (is-Intermediate!11320 lt!629918) (not (undefined!12132 lt!629918)) (bvslt (x!129307 lt!629918) #b01111111111111111111111111111110) (bvsge (x!129307 lt!629918) #b00000000000000000000000000000000) (bvsge (x!129307 lt!629918) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!1430882 (=> (not res!965145) (not e!807880))))

(declare-fun b!1430883 () Bool)

(assert (=> b!1430883 (= e!807879 e!807876)))

(declare-fun c!132367 () Bool)

(assert (=> b!1430883 (= c!132367 (or (= lt!629917 lt!629724) (= (bvadd lt!629917 lt!629917) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1430884 () Bool)

(assert (=> b!1430884 (= e!807876 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (nextIndex!0 (nextIndex!0 (toIndex!0 lt!629724 mask!2608) #b00000000000000000000000000000000 mask!2608) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) mask!2608) lt!629724 lt!629726 mask!2608))))

(declare-fun b!1430885 () Bool)

(assert (=> b!1430885 (and (bvsge (index!47673 lt!629918) #b00000000000000000000000000000000) (bvslt (index!47673 lt!629918) (size!47570 lt!629726)))))

(declare-fun res!965143 () Bool)

(assert (=> b!1430885 (= res!965143 (= (select (arr!47019 lt!629726) (index!47673 lt!629918)) lt!629724))))

(assert (=> b!1430885 (=> res!965143 e!807878)))

(assert (=> b!1430885 (= e!807880 e!807878)))

(assert (= (and d!153747 c!132365) b!1430878))

(assert (= (and d!153747 (not c!132365)) b!1430883))

(assert (= (and b!1430883 c!132367) b!1430879))

(assert (= (and b!1430883 (not c!132367)) b!1430884))

(assert (= (and d!153747 c!132366) b!1430877))

(assert (= (and d!153747 (not c!132366)) b!1430882))

(assert (= (and b!1430882 res!965145) b!1430885))

(assert (= (and b!1430885 (not res!965143)) b!1430880))

(assert (= (and b!1430880 (not res!965144)) b!1430881))

(declare-fun m!1320851 () Bool)

(assert (=> b!1430885 m!1320851))

(assert (=> d!153747 m!1320547))

(declare-fun m!1320853 () Bool)

(assert (=> d!153747 m!1320853))

(assert (=> d!153747 m!1320499))

(assert (=> b!1430884 m!1320547))

(declare-fun m!1320855 () Bool)

(assert (=> b!1430884 m!1320855))

(assert (=> b!1430884 m!1320855))

(declare-fun m!1320857 () Bool)

(assert (=> b!1430884 m!1320857))

(assert (=> b!1430880 m!1320851))

(assert (=> b!1430881 m!1320851))

(assert (=> b!1430541 d!153747))

(declare-fun d!153749 () Bool)

(declare-fun lt!629919 () (_ BitVec 32))

(assert (=> d!153749 (and (bvsge lt!629919 #b00000000000000000000000000000000) (bvslt lt!629919 (bvadd mask!2608 #b00000000000000000000000000000001)))))

(assert (=> d!153749 (= lt!629919 (choose!52 (toIndex!0 lt!629724 mask!2608) #b00000000000000000000000000000000 mask!2608))))

(assert (=> d!153749 (validMask!0 mask!2608)))

(assert (=> d!153749 (= (nextIndex!0 (toIndex!0 lt!629724 mask!2608) #b00000000000000000000000000000000 mask!2608) lt!629919)))

(declare-fun bs!41676 () Bool)

(assert (= bs!41676 d!153749))

(assert (=> bs!41676 m!1320469))

(declare-fun m!1320859 () Bool)

(assert (=> bs!41676 m!1320859))

(assert (=> bs!41676 m!1320499))

(assert (=> b!1430541 d!153749))

(declare-fun b!1430899 () Bool)

(declare-fun e!807887 () SeekEntryResult!11320)

(declare-fun e!807889 () SeekEntryResult!11320)

(assert (=> b!1430899 (= e!807887 e!807889)))

(declare-fun c!132374 () Bool)

(declare-fun lt!629924 () (_ BitVec 64))

(assert (=> b!1430899 (= c!132374 (= lt!629924 (select (arr!47019 a!2831) j!81)))))

(declare-fun b!1430900 () Bool)

(assert (=> b!1430900 (= e!807887 Undefined!11320)))

(declare-fun b!1430901 () Bool)

(declare-fun e!807888 () SeekEntryResult!11320)

(assert (=> b!1430901 (= e!807888 (seekKeyOrZeroReturnVacant!0 (bvadd (x!129307 lt!629807) #b00000000000000000000000000000001) (nextIndex!0 (index!47673 lt!629807) (x!129307 lt!629807) mask!2608) (index!47673 lt!629807) (select (arr!47019 a!2831) j!81) a!2831 mask!2608))))

(declare-fun b!1430902 () Bool)

(assert (=> b!1430902 (= e!807889 (Found!11320 (index!47673 lt!629807)))))

(declare-fun b!1430903 () Bool)

(assert (=> b!1430903 (= e!807888 (MissingVacant!11320 (index!47673 lt!629807)))))

(declare-fun d!153751 () Bool)

(declare-fun lt!629925 () SeekEntryResult!11320)

(assert (=> d!153751 (and (or (is-Undefined!11320 lt!629925) (not (is-Found!11320 lt!629925)) (and (bvsge (index!47672 lt!629925) #b00000000000000000000000000000000) (bvslt (index!47672 lt!629925) (size!47570 a!2831)))) (or (is-Undefined!11320 lt!629925) (is-Found!11320 lt!629925) (not (is-MissingVacant!11320 lt!629925)) (not (= (index!47674 lt!629925) (index!47673 lt!629807))) (and (bvsge (index!47674 lt!629925) #b00000000000000000000000000000000) (bvslt (index!47674 lt!629925) (size!47570 a!2831)))) (or (is-Undefined!11320 lt!629925) (ite (is-Found!11320 lt!629925) (= (select (arr!47019 a!2831) (index!47672 lt!629925)) (select (arr!47019 a!2831) j!81)) (and (is-MissingVacant!11320 lt!629925) (= (index!47674 lt!629925) (index!47673 lt!629807)) (= (select (arr!47019 a!2831) (index!47674 lt!629925)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!153751 (= lt!629925 e!807887)))

(declare-fun c!132376 () Bool)

(assert (=> d!153751 (= c!132376 (bvsge (x!129307 lt!629807) #b01111111111111111111111111111110))))

(assert (=> d!153751 (= lt!629924 (select (arr!47019 a!2831) (index!47673 lt!629807)))))

(assert (=> d!153751 (validMask!0 mask!2608)))

(assert (=> d!153751 (= (seekKeyOrZeroReturnVacant!0 (x!129307 lt!629807) (index!47673 lt!629807) (index!47673 lt!629807) (select (arr!47019 a!2831) j!81) a!2831 mask!2608) lt!629925)))

(declare-fun b!1430898 () Bool)

(declare-fun c!132375 () Bool)

(assert (=> b!1430898 (= c!132375 (= lt!629924 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1430898 (= e!807889 e!807888)))

(assert (= (and d!153751 c!132376) b!1430900))

(assert (= (and d!153751 (not c!132376)) b!1430899))

(assert (= (and b!1430899 c!132374) b!1430902))

(assert (= (and b!1430899 (not c!132374)) b!1430898))

(assert (= (and b!1430898 c!132375) b!1430903))

(assert (= (and b!1430898 (not c!132375)) b!1430901))

(declare-fun m!1320861 () Bool)

(assert (=> b!1430901 m!1320861))

(assert (=> b!1430901 m!1320861))

(assert (=> b!1430901 m!1320461))

(declare-fun m!1320863 () Bool)

(assert (=> b!1430901 m!1320863))

(declare-fun m!1320865 () Bool)

(assert (=> d!153751 m!1320865))

(declare-fun m!1320867 () Bool)

(assert (=> d!153751 m!1320867))

(assert (=> d!153751 m!1320595))

(assert (=> d!153751 m!1320499))

(assert (=> b!1430642 d!153751))

(assert (=> b!1430681 d!153737))

(declare-fun b!1430904 () Bool)

(declare-fun e!807891 () Bool)

(declare-fun lt!629927 () SeekEntryResult!11320)

(assert (=> b!1430904 (= e!807891 (bvsge (x!129307 lt!629927) #b01111111111111111111111111111110))))

(declare-fun b!1430905 () Bool)

(declare-fun e!807893 () SeekEntryResult!11320)

(assert (=> b!1430905 (= e!807893 (Intermediate!11320 true (nextIndex!0 (toIndex!0 (select (arr!47019 a!2831) j!81) mask!2608) #b00000000000000000000000000000000 mask!2608) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun b!1430906 () Bool)

(declare-fun e!807890 () SeekEntryResult!11320)

(assert (=> b!1430906 (= e!807890 (Intermediate!11320 false (nextIndex!0 (toIndex!0 (select (arr!47019 a!2831) j!81) mask!2608) #b00000000000000000000000000000000 mask!2608) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun d!153753 () Bool)

(assert (=> d!153753 e!807891))

(declare-fun c!132378 () Bool)

(assert (=> d!153753 (= c!132378 (and (is-Intermediate!11320 lt!629927) (undefined!12132 lt!629927)))))

(assert (=> d!153753 (= lt!629927 e!807893)))

(declare-fun c!132377 () Bool)

(assert (=> d!153753 (= c!132377 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b01111111111111111111111111111110))))

(declare-fun lt!629926 () (_ BitVec 64))

(assert (=> d!153753 (= lt!629926 (select (arr!47019 a!2831) (nextIndex!0 (toIndex!0 (select (arr!47019 a!2831) j!81) mask!2608) #b00000000000000000000000000000000 mask!2608)))))

(assert (=> d!153753 (validMask!0 mask!2608)))

(assert (=> d!153753 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!47019 a!2831) j!81) mask!2608) #b00000000000000000000000000000000 mask!2608) (select (arr!47019 a!2831) j!81) a!2831 mask!2608) lt!629927)))

(declare-fun b!1430907 () Bool)

(assert (=> b!1430907 (and (bvsge (index!47673 lt!629927) #b00000000000000000000000000000000) (bvslt (index!47673 lt!629927) (size!47570 a!2831)))))

(declare-fun res!965147 () Bool)

(assert (=> b!1430907 (= res!965147 (= (select (arr!47019 a!2831) (index!47673 lt!629927)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!807892 () Bool)

(assert (=> b!1430907 (=> res!965147 e!807892)))

(declare-fun b!1430908 () Bool)

(assert (=> b!1430908 (and (bvsge (index!47673 lt!629927) #b00000000000000000000000000000000) (bvslt (index!47673 lt!629927) (size!47570 a!2831)))))

(assert (=> b!1430908 (= e!807892 (= (select (arr!47019 a!2831) (index!47673 lt!629927)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1430909 () Bool)

(declare-fun e!807894 () Bool)

(assert (=> b!1430909 (= e!807891 e!807894)))

(declare-fun res!965148 () Bool)

(assert (=> b!1430909 (= res!965148 (and (is-Intermediate!11320 lt!629927) (not (undefined!12132 lt!629927)) (bvslt (x!129307 lt!629927) #b01111111111111111111111111111110) (bvsge (x!129307 lt!629927) #b00000000000000000000000000000000) (bvsge (x!129307 lt!629927) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!1430909 (=> (not res!965148) (not e!807894))))

(declare-fun b!1430910 () Bool)

(assert (=> b!1430910 (= e!807893 e!807890)))

(declare-fun c!132379 () Bool)

(assert (=> b!1430910 (= c!132379 (or (= lt!629926 (select (arr!47019 a!2831) j!81)) (= (bvadd lt!629926 lt!629926) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1430911 () Bool)

(assert (=> b!1430911 (= e!807890 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (nextIndex!0 (nextIndex!0 (toIndex!0 (select (arr!47019 a!2831) j!81) mask!2608) #b00000000000000000000000000000000 mask!2608) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) mask!2608) (select (arr!47019 a!2831) j!81) a!2831 mask!2608))))

(declare-fun b!1430912 () Bool)

(assert (=> b!1430912 (and (bvsge (index!47673 lt!629927) #b00000000000000000000000000000000) (bvslt (index!47673 lt!629927) (size!47570 a!2831)))))

(declare-fun res!965146 () Bool)

(assert (=> b!1430912 (= res!965146 (= (select (arr!47019 a!2831) (index!47673 lt!629927)) (select (arr!47019 a!2831) j!81)))))

(assert (=> b!1430912 (=> res!965146 e!807892)))

(assert (=> b!1430912 (= e!807894 e!807892)))

(assert (= (and d!153753 c!132377) b!1430905))

(assert (= (and d!153753 (not c!132377)) b!1430910))

(assert (= (and b!1430910 c!132379) b!1430906))

(assert (= (and b!1430910 (not c!132379)) b!1430911))

(assert (= (and d!153753 c!132378) b!1430904))

(assert (= (and d!153753 (not c!132378)) b!1430909))

(assert (= (and b!1430909 res!965148) b!1430912))

(assert (= (and b!1430912 (not res!965146)) b!1430907))

(assert (= (and b!1430907 (not res!965147)) b!1430908))

(declare-fun m!1320869 () Bool)

(assert (=> b!1430912 m!1320869))

(assert (=> d!153753 m!1320659))

(declare-fun m!1320871 () Bool)

(assert (=> d!153753 m!1320871))

(assert (=> d!153753 m!1320499))

(assert (=> b!1430911 m!1320659))

(declare-fun m!1320873 () Bool)

(assert (=> b!1430911 m!1320873))

(assert (=> b!1430911 m!1320873))

(assert (=> b!1430911 m!1320461))

(declare-fun m!1320875 () Bool)

(assert (=> b!1430911 m!1320875))

(assert (=> b!1430907 m!1320869))

(assert (=> b!1430908 m!1320869))

(assert (=> b!1430732 d!153753))

(declare-fun d!153755 () Bool)

(declare-fun lt!629928 () (_ BitVec 32))

(assert (=> d!153755 (and (bvsge lt!629928 #b00000000000000000000000000000000) (bvslt lt!629928 (bvadd mask!2608 #b00000000000000000000000000000001)))))

(assert (=> d!153755 (= lt!629928 (choose!52 (toIndex!0 (select (arr!47019 a!2831) j!81) mask!2608) #b00000000000000000000000000000000 mask!2608))))

(assert (=> d!153755 (validMask!0 mask!2608)))

(assert (=> d!153755 (= (nextIndex!0 (toIndex!0 (select (arr!47019 a!2831) j!81) mask!2608) #b00000000000000000000000000000000 mask!2608) lt!629928)))

(declare-fun bs!41677 () Bool)

(assert (= bs!41677 d!153755))

(assert (=> bs!41677 m!1320479))

(declare-fun m!1320877 () Bool)

(assert (=> bs!41677 m!1320877))

(assert (=> bs!41677 m!1320499))

(assert (=> b!1430732 d!153755))

(assert (=> d!153673 d!153669))

(assert (=> d!153607 d!153669))

(declare-fun b!1430913 () Bool)

(declare-fun e!807896 () Bool)

(declare-fun lt!629930 () SeekEntryResult!11320)

(assert (=> b!1430913 (= e!807896 (bvsge (x!129307 lt!629930) #b01111111111111111111111111111110))))

(declare-fun e!807898 () SeekEntryResult!11320)

(declare-fun b!1430914 () Bool)

(assert (=> b!1430914 (= e!807898 (Intermediate!11320 true (nextIndex!0 index!585 x!605 mask!2608) (bvadd x!605 #b00000000000000000000000000000001)))))

(declare-fun b!1430915 () Bool)

(declare-fun e!807895 () SeekEntryResult!11320)

(assert (=> b!1430915 (= e!807895 (Intermediate!11320 false (nextIndex!0 index!585 x!605 mask!2608) (bvadd x!605 #b00000000000000000000000000000001)))))

(declare-fun d!153757 () Bool)

(assert (=> d!153757 e!807896))

(declare-fun c!132381 () Bool)

(assert (=> d!153757 (= c!132381 (and (is-Intermediate!11320 lt!629930) (undefined!12132 lt!629930)))))

(assert (=> d!153757 (= lt!629930 e!807898)))

(declare-fun c!132380 () Bool)

(assert (=> d!153757 (= c!132380 (bvsge (bvadd x!605 #b00000000000000000000000000000001) #b01111111111111111111111111111110))))

(declare-fun lt!629929 () (_ BitVec 64))

(assert (=> d!153757 (= lt!629929 (select (arr!47019 lt!629726) (nextIndex!0 index!585 x!605 mask!2608)))))

(assert (=> d!153757 (validMask!0 mask!2608)))

(assert (=> d!153757 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd x!605 #b00000000000000000000000000000001) (nextIndex!0 index!585 x!605 mask!2608) lt!629724 lt!629726 mask!2608) lt!629930)))

(declare-fun b!1430916 () Bool)

(assert (=> b!1430916 (and (bvsge (index!47673 lt!629930) #b00000000000000000000000000000000) (bvslt (index!47673 lt!629930) (size!47570 lt!629726)))))

(declare-fun res!965150 () Bool)

(assert (=> b!1430916 (= res!965150 (= (select (arr!47019 lt!629726) (index!47673 lt!629930)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!807897 () Bool)

(assert (=> b!1430916 (=> res!965150 e!807897)))

(declare-fun b!1430917 () Bool)

(assert (=> b!1430917 (and (bvsge (index!47673 lt!629930) #b00000000000000000000000000000000) (bvslt (index!47673 lt!629930) (size!47570 lt!629726)))))

(assert (=> b!1430917 (= e!807897 (= (select (arr!47019 lt!629726) (index!47673 lt!629930)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1430918 () Bool)

(declare-fun e!807899 () Bool)

(assert (=> b!1430918 (= e!807896 e!807899)))

(declare-fun res!965151 () Bool)

(assert (=> b!1430918 (= res!965151 (and (is-Intermediate!11320 lt!629930) (not (undefined!12132 lt!629930)) (bvslt (x!129307 lt!629930) #b01111111111111111111111111111110) (bvsge (x!129307 lt!629930) #b00000000000000000000000000000000) (bvsge (x!129307 lt!629930) (bvadd x!605 #b00000000000000000000000000000001))))))

(assert (=> b!1430918 (=> (not res!965151) (not e!807899))))

(declare-fun b!1430919 () Bool)

(assert (=> b!1430919 (= e!807898 e!807895)))

(declare-fun c!132382 () Bool)

(assert (=> b!1430919 (= c!132382 (or (= lt!629929 lt!629724) (= (bvadd lt!629929 lt!629929) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1430920 () Bool)

(assert (=> b!1430920 (= e!807895 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!605 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (nextIndex!0 (nextIndex!0 index!585 x!605 mask!2608) (bvadd x!605 #b00000000000000000000000000000001) mask!2608) lt!629724 lt!629726 mask!2608))))

(declare-fun b!1430921 () Bool)

(assert (=> b!1430921 (and (bvsge (index!47673 lt!629930) #b00000000000000000000000000000000) (bvslt (index!47673 lt!629930) (size!47570 lt!629726)))))

(declare-fun res!965149 () Bool)

(assert (=> b!1430921 (= res!965149 (= (select (arr!47019 lt!629726) (index!47673 lt!629930)) lt!629724))))

(assert (=> b!1430921 (=> res!965149 e!807897)))

(assert (=> b!1430921 (= e!807899 e!807897)))

(assert (= (and d!153757 c!132380) b!1430914))

(assert (= (and d!153757 (not c!132380)) b!1430919))

(assert (= (and b!1430919 c!132382) b!1430915))

(assert (= (and b!1430919 (not c!132382)) b!1430920))

(assert (= (and d!153757 c!132381) b!1430913))

(assert (= (and d!153757 (not c!132381)) b!1430918))

(assert (= (and b!1430918 res!965151) b!1430921))

(assert (= (and b!1430921 (not res!965149)) b!1430916))

(assert (= (and b!1430916 (not res!965150)) b!1430917))

(declare-fun m!1320879 () Bool)

(assert (=> b!1430921 m!1320879))

(assert (=> d!153757 m!1320639))

(declare-fun m!1320881 () Bool)

(assert (=> d!153757 m!1320881))

(assert (=> d!153757 m!1320499))

(assert (=> b!1430920 m!1320639))

(assert (=> b!1430920 m!1320793))

(assert (=> b!1430920 m!1320793))

(declare-fun m!1320883 () Bool)

(assert (=> b!1430920 m!1320883))

(assert (=> b!1430916 m!1320879))

(assert (=> b!1430917 m!1320879))

(assert (=> b!1430690 d!153757))

(assert (=> b!1430690 d!153725))

(declare-fun b!1430922 () Bool)

(declare-fun e!807902 () Bool)

(assert (=> b!1430922 (= e!807902 (contains!9873 (ite c!132304 (Cons!33705 (select (arr!47019 a!2831) #b00000000000000000000000000000000) Nil!33706) Nil!33706) (select (arr!47019 a!2831) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1430923 () Bool)

(declare-fun e!807900 () Bool)

(declare-fun e!807903 () Bool)

(assert (=> b!1430923 (= e!807900 e!807903)))

(declare-fun c!132383 () Bool)

(assert (=> b!1430923 (= c!132383 (validKeyInArray!0 (select (arr!47019 a!2831) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!153759 () Bool)

(declare-fun res!965152 () Bool)

(declare-fun e!807901 () Bool)

(assert (=> d!153759 (=> res!965152 e!807901)))

(assert (=> d!153759 (= res!965152 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!47570 a!2831)))))

(assert (=> d!153759 (= (arrayNoDuplicates!0 a!2831 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!132304 (Cons!33705 (select (arr!47019 a!2831) #b00000000000000000000000000000000) Nil!33706) Nil!33706)) e!807901)))

(declare-fun b!1430924 () Bool)

(declare-fun call!67452 () Bool)

(assert (=> b!1430924 (= e!807903 call!67452)))

(declare-fun b!1430925 () Bool)

(assert (=> b!1430925 (= e!807901 e!807900)))

(declare-fun res!965154 () Bool)

(assert (=> b!1430925 (=> (not res!965154) (not e!807900))))

(assert (=> b!1430925 (= res!965154 (not e!807902))))

(declare-fun res!965153 () Bool)

(assert (=> b!1430925 (=> (not res!965153) (not e!807902))))

(assert (=> b!1430925 (= res!965153 (validKeyInArray!0 (select (arr!47019 a!2831) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun bm!67449 () Bool)

(assert (=> bm!67449 (= call!67452 (arrayNoDuplicates!0 a!2831 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!132383 (Cons!33705 (select (arr!47019 a!2831) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!132304 (Cons!33705 (select (arr!47019 a!2831) #b00000000000000000000000000000000) Nil!33706) Nil!33706)) (ite c!132304 (Cons!33705 (select (arr!47019 a!2831) #b00000000000000000000000000000000) Nil!33706) Nil!33706))))))

(declare-fun b!1430926 () Bool)

(assert (=> b!1430926 (= e!807903 call!67452)))

(assert (= (and d!153759 (not res!965152)) b!1430925))

(assert (= (and b!1430925 res!965153) b!1430922))

(assert (= (and b!1430925 res!965154) b!1430923))

(assert (= (and b!1430923 c!132383) b!1430924))

(assert (= (and b!1430923 (not c!132383)) b!1430926))

(assert (= (or b!1430924 b!1430926) bm!67449))

(assert (=> b!1430922 m!1320833))

(assert (=> b!1430922 m!1320833))

(declare-fun m!1320885 () Bool)

(assert (=> b!1430922 m!1320885))

(assert (=> b!1430923 m!1320833))

(assert (=> b!1430923 m!1320833))

(assert (=> b!1430923 m!1320841))

(assert (=> b!1430925 m!1320833))

(assert (=> b!1430925 m!1320833))

(assert (=> b!1430925 m!1320841))

(assert (=> bm!67449 m!1320833))

(declare-fun m!1320887 () Bool)

(assert (=> bm!67449 m!1320887))

(assert (=> bm!67439 d!153759))

(assert (=> d!153657 d!153669))

(push 1)

(assert (not d!153753))

(assert (not b!1430925))

(assert (not d!153735))

(assert (not d!153741))

(assert (not bm!67448))

(assert (not b!1430911))

(assert (not d!153725))

(assert (not d!153723))

(assert (not d!153749))

(assert (not b!1430847))

(assert (not b!1430856))

(assert (not d!153745))

(assert (not d!153757))

(assert (not bm!67447))

(assert (not b!1430884))

(assert (not b!1430920))

(assert (not b!1430901))

(assert (not d!153727))

(assert (not bm!67449))

(assert (not b!1430868))

(assert (not b!1430863))

(assert (not b!1430864))

(assert (not b!1430854))

(assert (not d!153731))

(assert (not b!1430876))

(assert (not b!1430923))

(assert (not d!153747))

(assert (not b!1430859))

(assert (not d!153755))

(assert (not d!153751))

(assert (not b!1430922))

(assert (not b!1430867))

(check-sat)

(pop 1)

(push 1)

(check-sat)

