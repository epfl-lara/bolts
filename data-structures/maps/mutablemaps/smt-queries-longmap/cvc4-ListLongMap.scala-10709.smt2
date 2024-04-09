; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125438 () Bool)

(assert start!125438)

(declare-fun b!1466455 () Bool)

(declare-fun res!995251 () Bool)

(declare-fun e!823884 () Bool)

(assert (=> b!1466455 (=> res!995251 e!823884)))

(declare-fun e!823883 () Bool)

(assert (=> b!1466455 (= res!995251 e!823883)))

(declare-fun c!135115 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1466455 (= c!135115 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1466456 () Bool)

(declare-fun e!823880 () Bool)

(declare-fun e!823885 () Bool)

(assert (=> b!1466456 (= e!823880 e!823885)))

(declare-fun res!995258 () Bool)

(assert (=> b!1466456 (=> (not res!995258) (not e!823885))))

(declare-datatypes ((SeekEntryResult!11960 0))(
  ( (MissingZero!11960 (index!50231 (_ BitVec 32))) (Found!11960 (index!50232 (_ BitVec 32))) (Intermediate!11960 (undefined!12772 Bool) (index!50233 (_ BitVec 32)) (x!131804 (_ BitVec 32))) (Undefined!11960) (MissingVacant!11960 (index!50234 (_ BitVec 32))) )
))
(declare-fun lt!641727 () SeekEntryResult!11960)

(declare-datatypes ((array!98803 0))(
  ( (array!98804 (arr!47685 (Array (_ BitVec 32) (_ BitVec 64))) (size!48236 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98803)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98803 (_ BitVec 32)) SeekEntryResult!11960)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1466456 (= res!995258 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47685 a!2862) j!93) mask!2687) (select (arr!47685 a!2862) j!93) a!2862 mask!2687) lt!641727))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1466456 (= lt!641727 (Intermediate!11960 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1466457 () Bool)

(declare-fun res!995266 () Bool)

(declare-fun e!823878 () Bool)

(assert (=> b!1466457 (=> (not res!995266) (not e!823878))))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1466457 (= res!995266 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48236 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48236 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48236 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1466458 () Bool)

(declare-fun res!995252 () Bool)

(assert (=> b!1466458 (=> (not res!995252) (not e!823878))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98803 (_ BitVec 32)) Bool)

(assert (=> b!1466458 (= res!995252 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1466459 () Bool)

(declare-fun res!995264 () Bool)

(assert (=> b!1466459 (=> (not res!995264) (not e!823878))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1466459 (= res!995264 (validKeyInArray!0 (select (arr!47685 a!2862) j!93)))))

(declare-fun b!1466460 () Bool)

(declare-fun res!995261 () Bool)

(assert (=> b!1466460 (=> (not res!995261) (not e!823878))))

(declare-datatypes ((List!34366 0))(
  ( (Nil!34363) (Cons!34362 (h!35712 (_ BitVec 64)) (t!49067 List!34366)) )
))
(declare-fun arrayNoDuplicates!0 (array!98803 (_ BitVec 32) List!34366) Bool)

(assert (=> b!1466460 (= res!995261 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34363))))

(declare-fun b!1466461 () Bool)

(declare-fun lt!641731 () array!98803)

(declare-fun lt!641733 () (_ BitVec 64))

(declare-fun lt!641732 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98803 (_ BitVec 32)) SeekEntryResult!11960)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98803 (_ BitVec 32)) SeekEntryResult!11960)

(assert (=> b!1466461 (= e!823883 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641732 intermediateAfterIndex!19 lt!641733 lt!641731 mask!2687) (seekEntryOrOpen!0 lt!641733 lt!641731 mask!2687))))))

(declare-fun b!1466463 () Bool)

(declare-fun e!823879 () Bool)

(assert (=> b!1466463 (= e!823879 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!641733 lt!641731 mask!2687) (seekEntryOrOpen!0 lt!641733 lt!641731 mask!2687)))))

(declare-fun b!1466464 () Bool)

(declare-fun res!995267 () Bool)

(assert (=> b!1466464 (=> res!995267 e!823884)))

(assert (=> b!1466464 (= res!995267 (bvsgt (bvadd #b00000000000000000000000000000001 x!665) intermediateBeforeX!19))))

(declare-fun b!1466465 () Bool)

(declare-fun e!823882 () Bool)

(declare-fun e!823881 () Bool)

(assert (=> b!1466465 (= e!823882 (not e!823881))))

(declare-fun res!995255 () Bool)

(assert (=> b!1466465 (=> res!995255 e!823881)))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1466465 (= res!995255 (or (and (= (select (arr!47685 a!2862) index!646) (select (store (arr!47685 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47685 a!2862) index!646) (select (arr!47685 a!2862) j!93))) (= (select (arr!47685 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(declare-fun lt!641730 () SeekEntryResult!11960)

(assert (=> b!1466465 (and (= lt!641730 (Found!11960 j!93)) (or (= (select (arr!47685 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47685 a!2862) intermediateBeforeIndex!19) (select (arr!47685 a!2862) j!93))))))

(assert (=> b!1466465 (= lt!641730 (seekEntryOrOpen!0 (select (arr!47685 a!2862) j!93) a!2862 mask!2687))))

(assert (=> b!1466465 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!49364 0))(
  ( (Unit!49365) )
))
(declare-fun lt!641729 () Unit!49364)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98803 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49364)

(assert (=> b!1466465 (= lt!641729 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1466466 () Bool)

(declare-fun res!995256 () Bool)

(assert (=> b!1466466 (=> (not res!995256) (not e!823878))))

(assert (=> b!1466466 (= res!995256 (validKeyInArray!0 (select (arr!47685 a!2862) i!1006)))))

(declare-fun b!1466467 () Bool)

(declare-fun res!995254 () Bool)

(assert (=> b!1466467 (=> res!995254 e!823884)))

(assert (=> b!1466467 (= res!995254 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641732 (select (arr!47685 a!2862) j!93) a!2862 mask!2687) lt!641727)))))

(declare-fun b!1466468 () Bool)

(declare-fun res!995262 () Bool)

(assert (=> b!1466468 (=> (not res!995262) (not e!823882))))

(assert (=> b!1466468 (= res!995262 e!823879)))

(declare-fun c!135116 () Bool)

(assert (=> b!1466468 (= c!135116 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1466469 () Bool)

(declare-fun res!995263 () Bool)

(assert (=> b!1466469 (=> (not res!995263) (not e!823878))))

(assert (=> b!1466469 (= res!995263 (and (= (size!48236 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48236 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48236 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1466470 () Bool)

(declare-fun lt!641734 () SeekEntryResult!11960)

(assert (=> b!1466470 (= e!823879 (= lt!641734 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!641733 lt!641731 mask!2687)))))

(declare-fun b!1466471 () Bool)

(assert (=> b!1466471 (= e!823885 e!823882)))

(declare-fun res!995257 () Bool)

(assert (=> b!1466471 (=> (not res!995257) (not e!823882))))

(assert (=> b!1466471 (= res!995257 (= lt!641734 (Intermediate!11960 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1466471 (= lt!641734 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!641733 mask!2687) lt!641733 lt!641731 mask!2687))))

(assert (=> b!1466471 (= lt!641733 (select (store (arr!47685 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1466472 () Bool)

(assert (=> b!1466472 (= e!823881 e!823884)))

(declare-fun res!995259 () Bool)

(assert (=> b!1466472 (=> res!995259 e!823884)))

(assert (=> b!1466472 (= res!995259 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!641732 #b00000000000000000000000000000000) (bvsge lt!641732 (size!48236 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1466472 (= lt!641732 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1466462 () Bool)

(assert (=> b!1466462 (= e!823878 e!823880)))

(declare-fun res!995253 () Bool)

(assert (=> b!1466462 (=> (not res!995253) (not e!823880))))

(assert (=> b!1466462 (= res!995253 (= (select (store (arr!47685 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1466462 (= lt!641731 (array!98804 (store (arr!47685 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48236 a!2862)))))

(declare-fun res!995260 () Bool)

(assert (=> start!125438 (=> (not res!995260) (not e!823878))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125438 (= res!995260 (validMask!0 mask!2687))))

(assert (=> start!125438 e!823878))

(assert (=> start!125438 true))

(declare-fun array_inv!36630 (array!98803) Bool)

(assert (=> start!125438 (array_inv!36630 a!2862)))

(declare-fun b!1466473 () Bool)

(declare-fun res!995265 () Bool)

(assert (=> b!1466473 (=> (not res!995265) (not e!823885))))

(assert (=> b!1466473 (= res!995265 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47685 a!2862) j!93) a!2862 mask!2687) lt!641727))))

(declare-fun b!1466474 () Bool)

(assert (=> b!1466474 (= e!823883 (not (= lt!641734 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641732 lt!641733 lt!641731 mask!2687))))))

(declare-fun b!1466475 () Bool)

(assert (=> b!1466475 (= e!823884 true)))

(assert (=> b!1466475 (= lt!641730 (seekEntryOrOpen!0 lt!641733 lt!641731 mask!2687))))

(declare-fun lt!641728 () Unit!49364)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 (array!98803 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49364)

(assert (=> b!1466475 (= lt!641728 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 a!2862 i!1006 j!93 (bvadd #b00000000000000000000000000000001 x!665) lt!641732 intermediateBeforeX!19 intermediateBeforeIndex!19 intermediateAfterX!19 intermediateAfterIndex!19 mask!2687))))

(declare-fun b!1466476 () Bool)

(declare-fun res!995268 () Bool)

(assert (=> b!1466476 (=> (not res!995268) (not e!823882))))

(assert (=> b!1466476 (= res!995268 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(assert (= (and start!125438 res!995260) b!1466469))

(assert (= (and b!1466469 res!995263) b!1466466))

(assert (= (and b!1466466 res!995256) b!1466459))

(assert (= (and b!1466459 res!995264) b!1466458))

(assert (= (and b!1466458 res!995252) b!1466460))

(assert (= (and b!1466460 res!995261) b!1466457))

(assert (= (and b!1466457 res!995266) b!1466462))

(assert (= (and b!1466462 res!995253) b!1466456))

(assert (= (and b!1466456 res!995258) b!1466473))

(assert (= (and b!1466473 res!995265) b!1466471))

(assert (= (and b!1466471 res!995257) b!1466468))

(assert (= (and b!1466468 c!135116) b!1466470))

(assert (= (and b!1466468 (not c!135116)) b!1466463))

(assert (= (and b!1466468 res!995262) b!1466476))

(assert (= (and b!1466476 res!995268) b!1466465))

(assert (= (and b!1466465 (not res!995255)) b!1466472))

(assert (= (and b!1466472 (not res!995259)) b!1466467))

(assert (= (and b!1466467 (not res!995254)) b!1466455))

(assert (= (and b!1466455 c!135115) b!1466474))

(assert (= (and b!1466455 (not c!135115)) b!1466461))

(assert (= (and b!1466455 (not res!995251)) b!1466464))

(assert (= (and b!1466464 (not res!995267)) b!1466475))

(declare-fun m!1353495 () Bool)

(assert (=> b!1466466 m!1353495))

(assert (=> b!1466466 m!1353495))

(declare-fun m!1353497 () Bool)

(assert (=> b!1466466 m!1353497))

(declare-fun m!1353499 () Bool)

(assert (=> b!1466456 m!1353499))

(assert (=> b!1466456 m!1353499))

(declare-fun m!1353501 () Bool)

(assert (=> b!1466456 m!1353501))

(assert (=> b!1466456 m!1353501))

(assert (=> b!1466456 m!1353499))

(declare-fun m!1353503 () Bool)

(assert (=> b!1466456 m!1353503))

(declare-fun m!1353505 () Bool)

(assert (=> b!1466463 m!1353505))

(declare-fun m!1353507 () Bool)

(assert (=> b!1466463 m!1353507))

(declare-fun m!1353509 () Bool)

(assert (=> b!1466465 m!1353509))

(declare-fun m!1353511 () Bool)

(assert (=> b!1466465 m!1353511))

(declare-fun m!1353513 () Bool)

(assert (=> b!1466465 m!1353513))

(declare-fun m!1353515 () Bool)

(assert (=> b!1466465 m!1353515))

(declare-fun m!1353517 () Bool)

(assert (=> b!1466465 m!1353517))

(assert (=> b!1466465 m!1353499))

(declare-fun m!1353519 () Bool)

(assert (=> b!1466465 m!1353519))

(declare-fun m!1353521 () Bool)

(assert (=> b!1466465 m!1353521))

(assert (=> b!1466465 m!1353499))

(declare-fun m!1353523 () Bool)

(assert (=> b!1466461 m!1353523))

(assert (=> b!1466461 m!1353507))

(declare-fun m!1353525 () Bool)

(assert (=> b!1466470 m!1353525))

(declare-fun m!1353527 () Bool)

(assert (=> b!1466458 m!1353527))

(assert (=> b!1466473 m!1353499))

(assert (=> b!1466473 m!1353499))

(declare-fun m!1353529 () Bool)

(assert (=> b!1466473 m!1353529))

(assert (=> b!1466475 m!1353507))

(declare-fun m!1353531 () Bool)

(assert (=> b!1466475 m!1353531))

(assert (=> b!1466462 m!1353511))

(declare-fun m!1353533 () Bool)

(assert (=> b!1466462 m!1353533))

(assert (=> b!1466459 m!1353499))

(assert (=> b!1466459 m!1353499))

(declare-fun m!1353535 () Bool)

(assert (=> b!1466459 m!1353535))

(declare-fun m!1353537 () Bool)

(assert (=> b!1466474 m!1353537))

(declare-fun m!1353539 () Bool)

(assert (=> b!1466472 m!1353539))

(assert (=> b!1466467 m!1353499))

(assert (=> b!1466467 m!1353499))

(declare-fun m!1353541 () Bool)

(assert (=> b!1466467 m!1353541))

(declare-fun m!1353543 () Bool)

(assert (=> start!125438 m!1353543))

(declare-fun m!1353545 () Bool)

(assert (=> start!125438 m!1353545))

(declare-fun m!1353547 () Bool)

(assert (=> b!1466460 m!1353547))

(declare-fun m!1353549 () Bool)

(assert (=> b!1466471 m!1353549))

(assert (=> b!1466471 m!1353549))

(declare-fun m!1353551 () Bool)

(assert (=> b!1466471 m!1353551))

(assert (=> b!1466471 m!1353511))

(declare-fun m!1353553 () Bool)

(assert (=> b!1466471 m!1353553))

(push 1)

