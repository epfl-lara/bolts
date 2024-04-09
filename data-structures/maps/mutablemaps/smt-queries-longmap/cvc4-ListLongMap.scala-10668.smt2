; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125192 () Bool)

(assert start!125192)

(declare-fun b!1458508 () Bool)

(declare-fun e!820403 () Bool)

(declare-fun e!820398 () Bool)

(assert (=> b!1458508 (= e!820403 e!820398)))

(declare-fun res!988715 () Bool)

(assert (=> b!1458508 (=> (not res!988715) (not e!820398))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!98557 0))(
  ( (array!98558 (arr!47562 (Array (_ BitVec 32) (_ BitVec 64))) (size!48113 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98557)

(assert (=> b!1458508 (= res!988715 (= (select (store (arr!47562 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!639037 () array!98557)

(assert (=> b!1458508 (= lt!639037 (array!98558 (store (arr!47562 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48113 a!2862)))))

(declare-fun b!1458509 () Bool)

(declare-fun res!988712 () Bool)

(assert (=> b!1458509 (=> (not res!988712) (not e!820403))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1458509 (= res!988712 (validKeyInArray!0 (select (arr!47562 a!2862) i!1006)))))

(declare-fun b!1458510 () Bool)

(declare-fun e!820400 () Bool)

(assert (=> b!1458510 (= e!820398 e!820400)))

(declare-fun res!988713 () Bool)

(assert (=> b!1458510 (=> (not res!988713) (not e!820400))))

(declare-datatypes ((SeekEntryResult!11837 0))(
  ( (MissingZero!11837 (index!49739 (_ BitVec 32))) (Found!11837 (index!49740 (_ BitVec 32))) (Intermediate!11837 (undefined!12649 Bool) (index!49741 (_ BitVec 32)) (x!131353 (_ BitVec 32))) (Undefined!11837) (MissingVacant!11837 (index!49742 (_ BitVec 32))) )
))
(declare-fun lt!639038 () SeekEntryResult!11837)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98557 (_ BitVec 32)) SeekEntryResult!11837)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1458510 (= res!988713 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47562 a!2862) j!93) mask!2687) (select (arr!47562 a!2862) j!93) a!2862 mask!2687) lt!639038))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1458510 (= lt!639038 (Intermediate!11837 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun res!988717 () Bool)

(assert (=> start!125192 (=> (not res!988717) (not e!820403))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125192 (= res!988717 (validMask!0 mask!2687))))

(assert (=> start!125192 e!820403))

(assert (=> start!125192 true))

(declare-fun array_inv!36507 (array!98557) Bool)

(assert (=> start!125192 (array_inv!36507 a!2862)))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun e!820401 () Bool)

(declare-fun b!1458511 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1458511 (= e!820401 (and (or (= (select (arr!47562 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47562 a!2862) intermediateBeforeIndex!19) (select (arr!47562 a!2862) j!93))) (let ((bdg!53437 (select (store (arr!47562 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!47562 a!2862) index!646) bdg!53437) (= (select (arr!47562 a!2862) index!646) (select (arr!47562 a!2862) j!93))) (= (select (arr!47562 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!53437 #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!1458512 () Bool)

(declare-fun res!988708 () Bool)

(assert (=> b!1458512 (=> (not res!988708) (not e!820403))))

(assert (=> b!1458512 (= res!988708 (and (= (size!48113 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48113 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48113 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1458513 () Bool)

(declare-fun e!820397 () Bool)

(declare-fun e!820399 () Bool)

(assert (=> b!1458513 (= e!820397 e!820399)))

(declare-fun res!988722 () Bool)

(assert (=> b!1458513 (=> res!988722 e!820399)))

(declare-fun lt!639039 () (_ BitVec 32))

(assert (=> b!1458513 (= res!988722 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!639039 #b00000000000000000000000000000000) (bvsge lt!639039 (size!48113 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1458513 (= lt!639039 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun lt!639040 () (_ BitVec 64))

(declare-fun lt!639043 () SeekEntryResult!11837)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98557 (_ BitVec 32)) SeekEntryResult!11837)

(assert (=> b!1458513 (= lt!639043 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!639040 lt!639037 mask!2687))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98557 (_ BitVec 32)) SeekEntryResult!11837)

(assert (=> b!1458513 (= lt!639043 (seekEntryOrOpen!0 lt!639040 lt!639037 mask!2687))))

(declare-fun b!1458514 () Bool)

(declare-fun e!820395 () Bool)

(assert (=> b!1458514 (= e!820395 (not e!820397))))

(declare-fun res!988724 () Bool)

(assert (=> b!1458514 (=> res!988724 e!820397)))

(assert (=> b!1458514 (= res!988724 (or (and (= (select (arr!47562 a!2862) index!646) (select (store (arr!47562 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47562 a!2862) index!646) (select (arr!47562 a!2862) j!93))) (= (select (arr!47562 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1458514 e!820401))

(declare-fun res!988709 () Bool)

(assert (=> b!1458514 (=> (not res!988709) (not e!820401))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98557 (_ BitVec 32)) Bool)

(assert (=> b!1458514 (= res!988709 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49118 0))(
  ( (Unit!49119) )
))
(declare-fun lt!639042 () Unit!49118)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98557 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49118)

(assert (=> b!1458514 (= lt!639042 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1458515 () Bool)

(declare-fun res!988710 () Bool)

(assert (=> b!1458515 (=> (not res!988710) (not e!820403))))

(assert (=> b!1458515 (= res!988710 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1458516 () Bool)

(declare-fun res!988714 () Bool)

(assert (=> b!1458516 (=> (not res!988714) (not e!820395))))

(assert (=> b!1458516 (= res!988714 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1458517 () Bool)

(assert (=> b!1458517 (= e!820400 e!820395)))

(declare-fun res!988711 () Bool)

(assert (=> b!1458517 (=> (not res!988711) (not e!820395))))

(declare-fun lt!639041 () SeekEntryResult!11837)

(assert (=> b!1458517 (= res!988711 (= lt!639041 (Intermediate!11837 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1458517 (= lt!639041 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!639040 mask!2687) lt!639040 lt!639037 mask!2687))))

(assert (=> b!1458517 (= lt!639040 (select (store (arr!47562 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun e!820394 () Bool)

(declare-fun b!1458518 () Bool)

(assert (=> b!1458518 (= e!820394 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!639039 intermediateAfterIndex!19 lt!639040 lt!639037 mask!2687) lt!639043)))))

(declare-fun b!1458519 () Bool)

(assert (=> b!1458519 (= e!820399 true)))

(declare-fun lt!639036 () Bool)

(assert (=> b!1458519 (= lt!639036 e!820394)))

(declare-fun c!134414 () Bool)

(assert (=> b!1458519 (= c!134414 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1458520 () Bool)

(declare-fun res!988723 () Bool)

(assert (=> b!1458520 (=> (not res!988723) (not e!820403))))

(assert (=> b!1458520 (= res!988723 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48113 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48113 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48113 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1458521 () Bool)

(declare-fun res!988720 () Bool)

(assert (=> b!1458521 (=> (not res!988720) (not e!820403))))

(assert (=> b!1458521 (= res!988720 (validKeyInArray!0 (select (arr!47562 a!2862) j!93)))))

(declare-fun b!1458522 () Bool)

(declare-fun e!820396 () Bool)

(assert (=> b!1458522 (= e!820396 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!639040 lt!639037 mask!2687) (seekEntryOrOpen!0 lt!639040 lt!639037 mask!2687)))))

(declare-fun b!1458523 () Bool)

(declare-fun res!988716 () Bool)

(assert (=> b!1458523 (=> (not res!988716) (not e!820401))))

(assert (=> b!1458523 (= res!988716 (= (seekEntryOrOpen!0 (select (arr!47562 a!2862) j!93) a!2862 mask!2687) (Found!11837 j!93)))))

(declare-fun b!1458524 () Bool)

(declare-fun res!988721 () Bool)

(assert (=> b!1458524 (=> (not res!988721) (not e!820403))))

(declare-datatypes ((List!34243 0))(
  ( (Nil!34240) (Cons!34239 (h!35589 (_ BitVec 64)) (t!48944 List!34243)) )
))
(declare-fun arrayNoDuplicates!0 (array!98557 (_ BitVec 32) List!34243) Bool)

(assert (=> b!1458524 (= res!988721 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34240))))

(declare-fun b!1458525 () Bool)

(assert (=> b!1458525 (= e!820394 (not (= lt!639041 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!639039 lt!639040 lt!639037 mask!2687))))))

(declare-fun b!1458526 () Bool)

(assert (=> b!1458526 (= e!820396 (= lt!639041 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!639040 lt!639037 mask!2687)))))

(declare-fun b!1458527 () Bool)

(declare-fun res!988725 () Bool)

(assert (=> b!1458527 (=> res!988725 e!820399)))

(assert (=> b!1458527 (= res!988725 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!639039 (select (arr!47562 a!2862) j!93) a!2862 mask!2687) lt!639038)))))

(declare-fun b!1458528 () Bool)

(declare-fun res!988718 () Bool)

(assert (=> b!1458528 (=> (not res!988718) (not e!820395))))

(assert (=> b!1458528 (= res!988718 e!820396)))

(declare-fun c!134413 () Bool)

(assert (=> b!1458528 (= c!134413 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1458529 () Bool)

(declare-fun res!988719 () Bool)

(assert (=> b!1458529 (=> (not res!988719) (not e!820400))))

(assert (=> b!1458529 (= res!988719 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47562 a!2862) j!93) a!2862 mask!2687) lt!639038))))

(assert (= (and start!125192 res!988717) b!1458512))

(assert (= (and b!1458512 res!988708) b!1458509))

(assert (= (and b!1458509 res!988712) b!1458521))

(assert (= (and b!1458521 res!988720) b!1458515))

(assert (= (and b!1458515 res!988710) b!1458524))

(assert (= (and b!1458524 res!988721) b!1458520))

(assert (= (and b!1458520 res!988723) b!1458508))

(assert (= (and b!1458508 res!988715) b!1458510))

(assert (= (and b!1458510 res!988713) b!1458529))

(assert (= (and b!1458529 res!988719) b!1458517))

(assert (= (and b!1458517 res!988711) b!1458528))

(assert (= (and b!1458528 c!134413) b!1458526))

(assert (= (and b!1458528 (not c!134413)) b!1458522))

(assert (= (and b!1458528 res!988718) b!1458516))

(assert (= (and b!1458516 res!988714) b!1458514))

(assert (= (and b!1458514 res!988709) b!1458523))

(assert (= (and b!1458523 res!988716) b!1458511))

(assert (= (and b!1458514 (not res!988724)) b!1458513))

(assert (= (and b!1458513 (not res!988722)) b!1458527))

(assert (= (and b!1458527 (not res!988725)) b!1458519))

(assert (= (and b!1458519 c!134414) b!1458525))

(assert (= (and b!1458519 (not c!134414)) b!1458518))

(declare-fun m!1346405 () Bool)

(assert (=> b!1458513 m!1346405))

(declare-fun m!1346407 () Bool)

(assert (=> b!1458513 m!1346407))

(declare-fun m!1346409 () Bool)

(assert (=> b!1458513 m!1346409))

(declare-fun m!1346411 () Bool)

(assert (=> start!125192 m!1346411))

(declare-fun m!1346413 () Bool)

(assert (=> start!125192 m!1346413))

(declare-fun m!1346415 () Bool)

(assert (=> b!1458518 m!1346415))

(declare-fun m!1346417 () Bool)

(assert (=> b!1458508 m!1346417))

(declare-fun m!1346419 () Bool)

(assert (=> b!1458508 m!1346419))

(declare-fun m!1346421 () Bool)

(assert (=> b!1458510 m!1346421))

(assert (=> b!1458510 m!1346421))

(declare-fun m!1346423 () Bool)

(assert (=> b!1458510 m!1346423))

(assert (=> b!1458510 m!1346423))

(assert (=> b!1458510 m!1346421))

(declare-fun m!1346425 () Bool)

(assert (=> b!1458510 m!1346425))

(declare-fun m!1346427 () Bool)

(assert (=> b!1458524 m!1346427))

(declare-fun m!1346429 () Bool)

(assert (=> b!1458509 m!1346429))

(assert (=> b!1458509 m!1346429))

(declare-fun m!1346431 () Bool)

(assert (=> b!1458509 m!1346431))

(assert (=> b!1458521 m!1346421))

(assert (=> b!1458521 m!1346421))

(declare-fun m!1346433 () Bool)

(assert (=> b!1458521 m!1346433))

(assert (=> b!1458523 m!1346421))

(assert (=> b!1458523 m!1346421))

(declare-fun m!1346435 () Bool)

(assert (=> b!1458523 m!1346435))

(assert (=> b!1458522 m!1346407))

(assert (=> b!1458522 m!1346409))

(assert (=> b!1458511 m!1346417))

(declare-fun m!1346437 () Bool)

(assert (=> b!1458511 m!1346437))

(declare-fun m!1346439 () Bool)

(assert (=> b!1458511 m!1346439))

(declare-fun m!1346441 () Bool)

(assert (=> b!1458511 m!1346441))

(assert (=> b!1458511 m!1346421))

(declare-fun m!1346443 () Bool)

(assert (=> b!1458517 m!1346443))

(assert (=> b!1458517 m!1346443))

(declare-fun m!1346445 () Bool)

(assert (=> b!1458517 m!1346445))

(assert (=> b!1458517 m!1346417))

(declare-fun m!1346447 () Bool)

(assert (=> b!1458517 m!1346447))

(declare-fun m!1346449 () Bool)

(assert (=> b!1458514 m!1346449))

(assert (=> b!1458514 m!1346417))

(assert (=> b!1458514 m!1346439))

(assert (=> b!1458514 m!1346441))

(declare-fun m!1346451 () Bool)

(assert (=> b!1458514 m!1346451))

(assert (=> b!1458514 m!1346421))

(assert (=> b!1458527 m!1346421))

(assert (=> b!1458527 m!1346421))

(declare-fun m!1346453 () Bool)

(assert (=> b!1458527 m!1346453))

(declare-fun m!1346455 () Bool)

(assert (=> b!1458515 m!1346455))

(declare-fun m!1346457 () Bool)

(assert (=> b!1458526 m!1346457))

(assert (=> b!1458529 m!1346421))

(assert (=> b!1458529 m!1346421))

(declare-fun m!1346459 () Bool)

(assert (=> b!1458529 m!1346459))

(declare-fun m!1346461 () Bool)

(assert (=> b!1458525 m!1346461))

(push 1)

