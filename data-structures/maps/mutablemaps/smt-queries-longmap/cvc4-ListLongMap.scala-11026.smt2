; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129038 () Bool)

(assert start!129038)

(declare-fun b!1512478 () Bool)

(declare-fun e!844249 () Bool)

(declare-fun e!844250 () Bool)

(assert (=> b!1512478 (= e!844249 e!844250)))

(declare-fun res!1032461 () Bool)

(assert (=> b!1512478 (=> (not res!1032461) (not e!844250))))

(declare-datatypes ((SeekEntryResult!12828 0))(
  ( (MissingZero!12828 (index!53706 (_ BitVec 32))) (Found!12828 (index!53707 (_ BitVec 32))) (Intermediate!12828 (undefined!13640 Bool) (index!53708 (_ BitVec 32)) (x!135439 (_ BitVec 32))) (Undefined!12828) (MissingVacant!12828 (index!53709 (_ BitVec 32))) )
))
(declare-fun lt!655657 () SeekEntryResult!12828)

(declare-fun lt!655656 () SeekEntryResult!12828)

(assert (=> b!1512478 (= res!1032461 (= lt!655657 lt!655656))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1512478 (= lt!655656 (Intermediate!12828 false resIndex!21 resX!21))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!100807 0))(
  ( (array!100808 (arr!48636 (Array (_ BitVec 32) (_ BitVec 64))) (size!49187 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100807)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100807 (_ BitVec 32)) SeekEntryResult!12828)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1512478 (= lt!655657 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48636 a!2804) j!70) mask!2512) (select (arr!48636 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1512479 () Bool)

(declare-fun res!1032456 () Bool)

(assert (=> b!1512479 (=> (not res!1032456) (not e!844249))))

(declare-datatypes ((List!35299 0))(
  ( (Nil!35296) (Cons!35295 (h!36708 (_ BitVec 64)) (t!50000 List!35299)) )
))
(declare-fun arrayNoDuplicates!0 (array!100807 (_ BitVec 32) List!35299) Bool)

(assert (=> b!1512479 (= res!1032456 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35296))))

(declare-fun b!1512480 () Bool)

(declare-fun res!1032455 () Bool)

(declare-fun e!844252 () Bool)

(assert (=> b!1512480 (=> (not res!1032455) (not e!844252))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!100807 (_ BitVec 32)) SeekEntryResult!12828)

(assert (=> b!1512480 (= res!1032455 (= (seekEntry!0 (select (arr!48636 a!2804) j!70) a!2804 mask!2512) (Found!12828 j!70)))))

(declare-fun res!1032458 () Bool)

(assert (=> start!129038 (=> (not res!1032458) (not e!844249))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129038 (= res!1032458 (validMask!0 mask!2512))))

(assert (=> start!129038 e!844249))

(assert (=> start!129038 true))

(declare-fun array_inv!37581 (array!100807) Bool)

(assert (=> start!129038 (array_inv!37581 a!2804)))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun b!1512481 () Bool)

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1512481 (= e!844250 (not (or (not (= (select (arr!48636 a!2804) j!70) (select (store (arr!48636 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48636 a!2804) index!487) (select (arr!48636 a!2804) j!70)) (not (= (select (arr!48636 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvslt mask!2512 #b00000000000000000000000000000000) (bvslt index!487 (bvadd #b00000000000000000000000000000001 mask!2512)))))))

(assert (=> b!1512481 e!844252))

(declare-fun res!1032462 () Bool)

(assert (=> b!1512481 (=> (not res!1032462) (not e!844252))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100807 (_ BitVec 32)) Bool)

(assert (=> b!1512481 (= res!1032462 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50480 0))(
  ( (Unit!50481) )
))
(declare-fun lt!655655 () Unit!50480)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100807 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50480)

(assert (=> b!1512481 (= lt!655655 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1512482 () Bool)

(declare-fun e!844253 () Bool)

(assert (=> b!1512482 (= e!844252 e!844253)))

(declare-fun res!1032463 () Bool)

(assert (=> b!1512482 (=> res!1032463 e!844253)))

(assert (=> b!1512482 (= res!1032463 (or (not (= (select (arr!48636 a!2804) j!70) (select (store (arr!48636 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48636 a!2804) index!487) (select (arr!48636 a!2804) j!70)) (not (= (select (arr!48636 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1512483 () Bool)

(declare-fun res!1032459 () Bool)

(assert (=> b!1512483 (=> (not res!1032459) (not e!844250))))

(assert (=> b!1512483 (= res!1032459 (= lt!655657 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48636 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48636 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100808 (store (arr!48636 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49187 a!2804)) mask!2512)))))

(declare-fun b!1512484 () Bool)

(declare-fun res!1032464 () Bool)

(assert (=> b!1512484 (=> (not res!1032464) (not e!844249))))

(assert (=> b!1512484 (= res!1032464 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1512485 () Bool)

(declare-fun res!1032460 () Bool)

(assert (=> b!1512485 (=> (not res!1032460) (not e!844249))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1512485 (= res!1032460 (validKeyInArray!0 (select (arr!48636 a!2804) i!961)))))

(declare-fun b!1512486 () Bool)

(declare-fun res!1032453 () Bool)

(assert (=> b!1512486 (=> (not res!1032453) (not e!844249))))

(assert (=> b!1512486 (= res!1032453 (and (= (size!49187 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49187 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49187 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1512487 () Bool)

(declare-fun res!1032457 () Bool)

(assert (=> b!1512487 (=> (not res!1032457) (not e!844249))))

(assert (=> b!1512487 (= res!1032457 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49187 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49187 a!2804))))))

(declare-fun b!1512488 () Bool)

(declare-fun res!1032465 () Bool)

(assert (=> b!1512488 (=> (not res!1032465) (not e!844249))))

(assert (=> b!1512488 (= res!1032465 (validKeyInArray!0 (select (arr!48636 a!2804) j!70)))))

(declare-fun b!1512489 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100807 (_ BitVec 32)) SeekEntryResult!12828)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100807 (_ BitVec 32)) SeekEntryResult!12828)

(assert (=> b!1512489 (= e!844253 (= (seekEntryOrOpen!0 (select (arr!48636 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48636 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1512490 () Bool)

(declare-fun res!1032454 () Bool)

(assert (=> b!1512490 (=> (not res!1032454) (not e!844250))))

(assert (=> b!1512490 (= res!1032454 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48636 a!2804) j!70) a!2804 mask!2512) lt!655656))))

(assert (= (and start!129038 res!1032458) b!1512486))

(assert (= (and b!1512486 res!1032453) b!1512485))

(assert (= (and b!1512485 res!1032460) b!1512488))

(assert (= (and b!1512488 res!1032465) b!1512484))

(assert (= (and b!1512484 res!1032464) b!1512479))

(assert (= (and b!1512479 res!1032456) b!1512487))

(assert (= (and b!1512487 res!1032457) b!1512478))

(assert (= (and b!1512478 res!1032461) b!1512490))

(assert (= (and b!1512490 res!1032454) b!1512483))

(assert (= (and b!1512483 res!1032459) b!1512481))

(assert (= (and b!1512481 res!1032462) b!1512480))

(assert (= (and b!1512480 res!1032455) b!1512482))

(assert (= (and b!1512482 (not res!1032463)) b!1512489))

(declare-fun m!1395309 () Bool)

(assert (=> b!1512481 m!1395309))

(declare-fun m!1395311 () Bool)

(assert (=> b!1512481 m!1395311))

(declare-fun m!1395313 () Bool)

(assert (=> b!1512481 m!1395313))

(declare-fun m!1395315 () Bool)

(assert (=> b!1512481 m!1395315))

(declare-fun m!1395317 () Bool)

(assert (=> b!1512481 m!1395317))

(declare-fun m!1395319 () Bool)

(assert (=> b!1512481 m!1395319))

(assert (=> b!1512489 m!1395309))

(assert (=> b!1512489 m!1395309))

(declare-fun m!1395321 () Bool)

(assert (=> b!1512489 m!1395321))

(assert (=> b!1512489 m!1395309))

(declare-fun m!1395323 () Bool)

(assert (=> b!1512489 m!1395323))

(assert (=> b!1512488 m!1395309))

(assert (=> b!1512488 m!1395309))

(declare-fun m!1395325 () Bool)

(assert (=> b!1512488 m!1395325))

(declare-fun m!1395327 () Bool)

(assert (=> b!1512484 m!1395327))

(assert (=> b!1512482 m!1395309))

(assert (=> b!1512482 m!1395313))

(assert (=> b!1512482 m!1395317))

(assert (=> b!1512482 m!1395315))

(assert (=> b!1512483 m!1395313))

(assert (=> b!1512483 m!1395317))

(assert (=> b!1512483 m!1395317))

(declare-fun m!1395329 () Bool)

(assert (=> b!1512483 m!1395329))

(assert (=> b!1512483 m!1395329))

(assert (=> b!1512483 m!1395317))

(declare-fun m!1395331 () Bool)

(assert (=> b!1512483 m!1395331))

(declare-fun m!1395333 () Bool)

(assert (=> start!129038 m!1395333))

(declare-fun m!1395335 () Bool)

(assert (=> start!129038 m!1395335))

(assert (=> b!1512490 m!1395309))

(assert (=> b!1512490 m!1395309))

(declare-fun m!1395337 () Bool)

(assert (=> b!1512490 m!1395337))

(declare-fun m!1395339 () Bool)

(assert (=> b!1512485 m!1395339))

(assert (=> b!1512485 m!1395339))

(declare-fun m!1395341 () Bool)

(assert (=> b!1512485 m!1395341))

(declare-fun m!1395343 () Bool)

(assert (=> b!1512479 m!1395343))

(assert (=> b!1512480 m!1395309))

(assert (=> b!1512480 m!1395309))

(declare-fun m!1395345 () Bool)

(assert (=> b!1512480 m!1395345))

(assert (=> b!1512478 m!1395309))

(assert (=> b!1512478 m!1395309))

(declare-fun m!1395347 () Bool)

(assert (=> b!1512478 m!1395347))

(assert (=> b!1512478 m!1395347))

(assert (=> b!1512478 m!1395309))

(declare-fun m!1395349 () Bool)

(assert (=> b!1512478 m!1395349))

(push 1)

(assert (not b!1512484))

(assert (not b!1512478))

(assert (not b!1512481))

(assert (not b!1512483))

(assert (not b!1512489))

(assert (not b!1512485))

(assert (not b!1512480))

(assert (not start!129038))

(assert (not b!1512488))

(assert (not b!1512490))

(assert (not b!1512479))

(check-sat)

(pop 1)

(push 1)

(check-sat)

