; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129136 () Bool)

(assert start!129136)

(declare-fun b!1514508 () Bool)

(declare-fun res!1034485 () Bool)

(declare-fun e!845235 () Bool)

(assert (=> b!1514508 (=> (not res!1034485) (not e!845235))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-datatypes ((array!100905 0))(
  ( (array!100906 (arr!48685 (Array (_ BitVec 32) (_ BitVec 64))) (size!49236 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100905)

(assert (=> b!1514508 (= res!1034485 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49236 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49236 a!2804))))))

(declare-fun b!1514509 () Bool)

(declare-fun e!845234 () Bool)

(assert (=> b!1514509 (= e!845234 (not true))))

(declare-fun e!845236 () Bool)

(assert (=> b!1514509 e!845236))

(declare-fun res!1034490 () Bool)

(assert (=> b!1514509 (=> (not res!1034490) (not e!845236))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100905 (_ BitVec 32)) Bool)

(assert (=> b!1514509 (= res!1034490 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50578 0))(
  ( (Unit!50579) )
))
(declare-fun lt!656334 () Unit!50578)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100905 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50578)

(assert (=> b!1514509 (= lt!656334 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1514510 () Bool)

(declare-fun e!845231 () Bool)

(assert (=> b!1514510 (= e!845236 e!845231)))

(declare-fun res!1034483 () Bool)

(assert (=> b!1514510 (=> res!1034483 e!845231)))

(declare-fun lt!656338 () (_ BitVec 64))

(assert (=> b!1514510 (= res!1034483 (or (not (= (select (arr!48685 a!2804) j!70) lt!656338)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48685 a!2804) index!487) (select (arr!48685 a!2804) j!70)) (not (= (select (arr!48685 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!845237 () Bool)

(declare-fun b!1514511 () Bool)

(declare-fun lt!656335 () array!100905)

(declare-datatypes ((SeekEntryResult!12877 0))(
  ( (MissingZero!12877 (index!53902 (_ BitVec 32))) (Found!12877 (index!53903 (_ BitVec 32))) (Intermediate!12877 (undefined!13689 Bool) (index!53904 (_ BitVec 32)) (x!135624 (_ BitVec 32))) (Undefined!12877) (MissingVacant!12877 (index!53905 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100905 (_ BitVec 32)) SeekEntryResult!12877)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100905 (_ BitVec 32)) SeekEntryResult!12877)

(assert (=> b!1514511 (= e!845237 (= (seekEntryOrOpen!0 lt!656338 lt!656335 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!656338 lt!656335 mask!2512)))))

(declare-fun b!1514512 () Bool)

(declare-fun res!1034484 () Bool)

(assert (=> b!1514512 (=> (not res!1034484) (not e!845235))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1514512 (= res!1034484 (validKeyInArray!0 (select (arr!48685 a!2804) i!961)))))

(declare-fun b!1514513 () Bool)

(declare-fun res!1034488 () Bool)

(assert (=> b!1514513 (=> (not res!1034488) (not e!845235))))

(assert (=> b!1514513 (= res!1034488 (and (= (size!49236 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49236 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49236 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1514514 () Bool)

(declare-fun res!1034493 () Bool)

(assert (=> b!1514514 (=> (not res!1034493) (not e!845235))))

(assert (=> b!1514514 (= res!1034493 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun res!1034486 () Bool)

(assert (=> start!129136 (=> (not res!1034486) (not e!845235))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129136 (= res!1034486 (validMask!0 mask!2512))))

(assert (=> start!129136 e!845235))

(assert (=> start!129136 true))

(declare-fun array_inv!37630 (array!100905) Bool)

(assert (=> start!129136 (array_inv!37630 a!2804)))

(declare-fun b!1514515 () Bool)

(declare-fun res!1034495 () Bool)

(assert (=> b!1514515 (=> (not res!1034495) (not e!845235))))

(assert (=> b!1514515 (= res!1034495 (validKeyInArray!0 (select (arr!48685 a!2804) j!70)))))

(declare-fun b!1514516 () Bool)

(declare-fun e!845232 () Bool)

(assert (=> b!1514516 (= e!845235 e!845232)))

(declare-fun res!1034491 () Bool)

(assert (=> b!1514516 (=> (not res!1034491) (not e!845232))))

(declare-fun lt!656336 () SeekEntryResult!12877)

(declare-fun lt!656337 () SeekEntryResult!12877)

(assert (=> b!1514516 (= res!1034491 (= lt!656336 lt!656337))))

(assert (=> b!1514516 (= lt!656337 (Intermediate!12877 false resIndex!21 resX!21))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100905 (_ BitVec 32)) SeekEntryResult!12877)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1514516 (= lt!656336 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48685 a!2804) j!70) mask!2512) (select (arr!48685 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1514517 () Bool)

(declare-fun res!1034496 () Bool)

(assert (=> b!1514517 (=> (not res!1034496) (not e!845232))))

(assert (=> b!1514517 (= res!1034496 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48685 a!2804) j!70) a!2804 mask!2512) lt!656337))))

(declare-fun b!1514518 () Bool)

(assert (=> b!1514518 (= e!845232 e!845234)))

(declare-fun res!1034489 () Bool)

(assert (=> b!1514518 (=> (not res!1034489) (not e!845234))))

(assert (=> b!1514518 (= res!1034489 (= lt!656336 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!656338 mask!2512) lt!656338 lt!656335 mask!2512)))))

(assert (=> b!1514518 (= lt!656338 (select (store (arr!48685 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1514518 (= lt!656335 (array!100906 (store (arr!48685 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49236 a!2804)))))

(declare-fun b!1514519 () Bool)

(declare-fun res!1034492 () Bool)

(assert (=> b!1514519 (=> (not res!1034492) (not e!845235))))

(declare-datatypes ((List!35348 0))(
  ( (Nil!35345) (Cons!35344 (h!36757 (_ BitVec 64)) (t!50049 List!35348)) )
))
(declare-fun arrayNoDuplicates!0 (array!100905 (_ BitVec 32) List!35348) Bool)

(assert (=> b!1514519 (= res!1034492 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35345))))

(declare-fun b!1514520 () Bool)

(declare-fun res!1034494 () Bool)

(assert (=> b!1514520 (=> (not res!1034494) (not e!845236))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!100905 (_ BitVec 32)) SeekEntryResult!12877)

(assert (=> b!1514520 (= res!1034494 (= (seekEntry!0 (select (arr!48685 a!2804) j!70) a!2804 mask!2512) (Found!12877 j!70)))))

(declare-fun b!1514521 () Bool)

(assert (=> b!1514521 (= e!845231 e!845237)))

(declare-fun res!1034487 () Bool)

(assert (=> b!1514521 (=> (not res!1034487) (not e!845237))))

(assert (=> b!1514521 (= res!1034487 (= (seekEntryOrOpen!0 (select (arr!48685 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48685 a!2804) j!70) a!2804 mask!2512)))))

(assert (= (and start!129136 res!1034486) b!1514513))

(assert (= (and b!1514513 res!1034488) b!1514512))

(assert (= (and b!1514512 res!1034484) b!1514515))

(assert (= (and b!1514515 res!1034495) b!1514514))

(assert (= (and b!1514514 res!1034493) b!1514519))

(assert (= (and b!1514519 res!1034492) b!1514508))

(assert (= (and b!1514508 res!1034485) b!1514516))

(assert (= (and b!1514516 res!1034491) b!1514517))

(assert (= (and b!1514517 res!1034496) b!1514518))

(assert (= (and b!1514518 res!1034489) b!1514509))

(assert (= (and b!1514509 res!1034490) b!1514520))

(assert (= (and b!1514520 res!1034494) b!1514510))

(assert (= (and b!1514510 (not res!1034483)) b!1514521))

(assert (= (and b!1514521 res!1034487) b!1514511))

(declare-fun m!1397529 () Bool)

(assert (=> b!1514516 m!1397529))

(assert (=> b!1514516 m!1397529))

(declare-fun m!1397531 () Bool)

(assert (=> b!1514516 m!1397531))

(assert (=> b!1514516 m!1397531))

(assert (=> b!1514516 m!1397529))

(declare-fun m!1397533 () Bool)

(assert (=> b!1514516 m!1397533))

(declare-fun m!1397535 () Bool)

(assert (=> b!1514519 m!1397535))

(declare-fun m!1397537 () Bool)

(assert (=> start!129136 m!1397537))

(declare-fun m!1397539 () Bool)

(assert (=> start!129136 m!1397539))

(declare-fun m!1397541 () Bool)

(assert (=> b!1514512 m!1397541))

(assert (=> b!1514512 m!1397541))

(declare-fun m!1397543 () Bool)

(assert (=> b!1514512 m!1397543))

(assert (=> b!1514521 m!1397529))

(assert (=> b!1514521 m!1397529))

(declare-fun m!1397545 () Bool)

(assert (=> b!1514521 m!1397545))

(assert (=> b!1514521 m!1397529))

(declare-fun m!1397547 () Bool)

(assert (=> b!1514521 m!1397547))

(declare-fun m!1397549 () Bool)

(assert (=> b!1514509 m!1397549))

(declare-fun m!1397551 () Bool)

(assert (=> b!1514509 m!1397551))

(assert (=> b!1514520 m!1397529))

(assert (=> b!1514520 m!1397529))

(declare-fun m!1397553 () Bool)

(assert (=> b!1514520 m!1397553))

(declare-fun m!1397555 () Bool)

(assert (=> b!1514511 m!1397555))

(declare-fun m!1397557 () Bool)

(assert (=> b!1514511 m!1397557))

(assert (=> b!1514517 m!1397529))

(assert (=> b!1514517 m!1397529))

(declare-fun m!1397559 () Bool)

(assert (=> b!1514517 m!1397559))

(declare-fun m!1397561 () Bool)

(assert (=> b!1514514 m!1397561))

(assert (=> b!1514510 m!1397529))

(declare-fun m!1397563 () Bool)

(assert (=> b!1514510 m!1397563))

(assert (=> b!1514515 m!1397529))

(assert (=> b!1514515 m!1397529))

(declare-fun m!1397565 () Bool)

(assert (=> b!1514515 m!1397565))

(declare-fun m!1397567 () Bool)

(assert (=> b!1514518 m!1397567))

(assert (=> b!1514518 m!1397567))

(declare-fun m!1397569 () Bool)

(assert (=> b!1514518 m!1397569))

(declare-fun m!1397571 () Bool)

(assert (=> b!1514518 m!1397571))

(declare-fun m!1397573 () Bool)

(assert (=> b!1514518 m!1397573))

(push 1)

