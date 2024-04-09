; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129134 () Bool)

(assert start!129134)

(declare-fun b!1514466 () Bool)

(declare-fun e!845211 () Bool)

(declare-fun e!845216 () Bool)

(assert (=> b!1514466 (= e!845211 e!845216)))

(declare-fun res!1034447 () Bool)

(assert (=> b!1514466 (=> res!1034447 e!845216)))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-datatypes ((array!100903 0))(
  ( (array!100904 (arr!48684 (Array (_ BitVec 32) (_ BitVec 64))) (size!49235 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100903)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun lt!656319 () (_ BitVec 64))

(assert (=> b!1514466 (= res!1034447 (or (not (= (select (arr!48684 a!2804) j!70) lt!656319)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48684 a!2804) index!487) (select (arr!48684 a!2804) j!70)) (not (= (select (arr!48684 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1514467 () Bool)

(declare-fun res!1034443 () Bool)

(declare-fun e!845213 () Bool)

(assert (=> b!1514467 (=> (not res!1034443) (not e!845213))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100903 (_ BitVec 32)) Bool)

(assert (=> b!1514467 (= res!1034443 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1514468 () Bool)

(declare-fun res!1034451 () Bool)

(assert (=> b!1514468 (=> (not res!1034451) (not e!845213))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1514468 (= res!1034451 (validKeyInArray!0 (select (arr!48684 a!2804) i!961)))))

(declare-fun b!1514469 () Bool)

(declare-fun e!845210 () Bool)

(assert (=> b!1514469 (= e!845210 (not true))))

(assert (=> b!1514469 e!845211))

(declare-fun res!1034452 () Bool)

(assert (=> b!1514469 (=> (not res!1034452) (not e!845211))))

(assert (=> b!1514469 (= res!1034452 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50576 0))(
  ( (Unit!50577) )
))
(declare-fun lt!656321 () Unit!50576)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100903 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50576)

(assert (=> b!1514469 (= lt!656321 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1514470 () Bool)

(declare-fun e!845212 () Bool)

(assert (=> b!1514470 (= e!845213 e!845212)))

(declare-fun res!1034442 () Bool)

(assert (=> b!1514470 (=> (not res!1034442) (not e!845212))))

(declare-datatypes ((SeekEntryResult!12876 0))(
  ( (MissingZero!12876 (index!53898 (_ BitVec 32))) (Found!12876 (index!53899 (_ BitVec 32))) (Intermediate!12876 (undefined!13688 Bool) (index!53900 (_ BitVec 32)) (x!135615 (_ BitVec 32))) (Undefined!12876) (MissingVacant!12876 (index!53901 (_ BitVec 32))) )
))
(declare-fun lt!656323 () SeekEntryResult!12876)

(declare-fun lt!656322 () SeekEntryResult!12876)

(assert (=> b!1514470 (= res!1034442 (= lt!656323 lt!656322))))

(assert (=> b!1514470 (= lt!656322 (Intermediate!12876 false resIndex!21 resX!21))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100903 (_ BitVec 32)) SeekEntryResult!12876)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1514470 (= lt!656323 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48684 a!2804) j!70) mask!2512) (select (arr!48684 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1514471 () Bool)

(declare-fun res!1034441 () Bool)

(assert (=> b!1514471 (=> (not res!1034441) (not e!845211))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!100903 (_ BitVec 32)) SeekEntryResult!12876)

(assert (=> b!1514471 (= res!1034441 (= (seekEntry!0 (select (arr!48684 a!2804) j!70) a!2804 mask!2512) (Found!12876 j!70)))))

(declare-fun b!1514472 () Bool)

(declare-fun res!1034448 () Bool)

(assert (=> b!1514472 (=> (not res!1034448) (not e!845213))))

(assert (=> b!1514472 (= res!1034448 (and (= (size!49235 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49235 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49235 a!2804)) (not (= i!961 j!70))))))

(declare-fun res!1034449 () Bool)

(assert (=> start!129134 (=> (not res!1034449) (not e!845213))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129134 (= res!1034449 (validMask!0 mask!2512))))

(assert (=> start!129134 e!845213))

(assert (=> start!129134 true))

(declare-fun array_inv!37629 (array!100903) Bool)

(assert (=> start!129134 (array_inv!37629 a!2804)))

(declare-fun b!1514473 () Bool)

(declare-fun res!1034453 () Bool)

(assert (=> b!1514473 (=> (not res!1034453) (not e!845213))))

(assert (=> b!1514473 (= res!1034453 (validKeyInArray!0 (select (arr!48684 a!2804) j!70)))))

(declare-fun b!1514474 () Bool)

(declare-fun res!1034444 () Bool)

(assert (=> b!1514474 (=> (not res!1034444) (not e!845213))))

(assert (=> b!1514474 (= res!1034444 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49235 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49235 a!2804))))))

(declare-fun lt!656320 () array!100903)

(declare-fun b!1514475 () Bool)

(declare-fun e!845214 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100903 (_ BitVec 32)) SeekEntryResult!12876)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100903 (_ BitVec 32)) SeekEntryResult!12876)

(assert (=> b!1514475 (= e!845214 (= (seekEntryOrOpen!0 lt!656319 lt!656320 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!656319 lt!656320 mask!2512)))))

(declare-fun b!1514476 () Bool)

(assert (=> b!1514476 (= e!845216 e!845214)))

(declare-fun res!1034445 () Bool)

(assert (=> b!1514476 (=> (not res!1034445) (not e!845214))))

(assert (=> b!1514476 (= res!1034445 (= (seekEntryOrOpen!0 (select (arr!48684 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48684 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1514477 () Bool)

(assert (=> b!1514477 (= e!845212 e!845210)))

(declare-fun res!1034446 () Bool)

(assert (=> b!1514477 (=> (not res!1034446) (not e!845210))))

(assert (=> b!1514477 (= res!1034446 (= lt!656323 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!656319 mask!2512) lt!656319 lt!656320 mask!2512)))))

(assert (=> b!1514477 (= lt!656319 (select (store (arr!48684 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1514477 (= lt!656320 (array!100904 (store (arr!48684 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49235 a!2804)))))

(declare-fun b!1514478 () Bool)

(declare-fun res!1034454 () Bool)

(assert (=> b!1514478 (=> (not res!1034454) (not e!845212))))

(assert (=> b!1514478 (= res!1034454 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48684 a!2804) j!70) a!2804 mask!2512) lt!656322))))

(declare-fun b!1514479 () Bool)

(declare-fun res!1034450 () Bool)

(assert (=> b!1514479 (=> (not res!1034450) (not e!845213))))

(declare-datatypes ((List!35347 0))(
  ( (Nil!35344) (Cons!35343 (h!36756 (_ BitVec 64)) (t!50048 List!35347)) )
))
(declare-fun arrayNoDuplicates!0 (array!100903 (_ BitVec 32) List!35347) Bool)

(assert (=> b!1514479 (= res!1034450 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35344))))

(assert (= (and start!129134 res!1034449) b!1514472))

(assert (= (and b!1514472 res!1034448) b!1514468))

(assert (= (and b!1514468 res!1034451) b!1514473))

(assert (= (and b!1514473 res!1034453) b!1514467))

(assert (= (and b!1514467 res!1034443) b!1514479))

(assert (= (and b!1514479 res!1034450) b!1514474))

(assert (= (and b!1514474 res!1034444) b!1514470))

(assert (= (and b!1514470 res!1034442) b!1514478))

(assert (= (and b!1514478 res!1034454) b!1514477))

(assert (= (and b!1514477 res!1034446) b!1514469))

(assert (= (and b!1514469 res!1034452) b!1514471))

(assert (= (and b!1514471 res!1034441) b!1514466))

(assert (= (and b!1514466 (not res!1034447)) b!1514476))

(assert (= (and b!1514476 res!1034445) b!1514475))

(declare-fun m!1397483 () Bool)

(assert (=> b!1514468 m!1397483))

(assert (=> b!1514468 m!1397483))

(declare-fun m!1397485 () Bool)

(assert (=> b!1514468 m!1397485))

(declare-fun m!1397487 () Bool)

(assert (=> start!129134 m!1397487))

(declare-fun m!1397489 () Bool)

(assert (=> start!129134 m!1397489))

(declare-fun m!1397491 () Bool)

(assert (=> b!1514469 m!1397491))

(declare-fun m!1397493 () Bool)

(assert (=> b!1514469 m!1397493))

(declare-fun m!1397495 () Bool)

(assert (=> b!1514467 m!1397495))

(declare-fun m!1397497 () Bool)

(assert (=> b!1514479 m!1397497))

(declare-fun m!1397499 () Bool)

(assert (=> b!1514478 m!1397499))

(assert (=> b!1514478 m!1397499))

(declare-fun m!1397501 () Bool)

(assert (=> b!1514478 m!1397501))

(assert (=> b!1514466 m!1397499))

(declare-fun m!1397503 () Bool)

(assert (=> b!1514466 m!1397503))

(assert (=> b!1514473 m!1397499))

(assert (=> b!1514473 m!1397499))

(declare-fun m!1397505 () Bool)

(assert (=> b!1514473 m!1397505))

(assert (=> b!1514470 m!1397499))

(assert (=> b!1514470 m!1397499))

(declare-fun m!1397507 () Bool)

(assert (=> b!1514470 m!1397507))

(assert (=> b!1514470 m!1397507))

(assert (=> b!1514470 m!1397499))

(declare-fun m!1397509 () Bool)

(assert (=> b!1514470 m!1397509))

(assert (=> b!1514471 m!1397499))

(assert (=> b!1514471 m!1397499))

(declare-fun m!1397511 () Bool)

(assert (=> b!1514471 m!1397511))

(declare-fun m!1397513 () Bool)

(assert (=> b!1514475 m!1397513))

(declare-fun m!1397515 () Bool)

(assert (=> b!1514475 m!1397515))

(declare-fun m!1397517 () Bool)

(assert (=> b!1514477 m!1397517))

(assert (=> b!1514477 m!1397517))

(declare-fun m!1397519 () Bool)

(assert (=> b!1514477 m!1397519))

(declare-fun m!1397521 () Bool)

(assert (=> b!1514477 m!1397521))

(declare-fun m!1397523 () Bool)

(assert (=> b!1514477 m!1397523))

(assert (=> b!1514476 m!1397499))

(assert (=> b!1514476 m!1397499))

(declare-fun m!1397525 () Bool)

(assert (=> b!1514476 m!1397525))

(assert (=> b!1514476 m!1397499))

(declare-fun m!1397527 () Bool)

(assert (=> b!1514476 m!1397527))

(push 1)

