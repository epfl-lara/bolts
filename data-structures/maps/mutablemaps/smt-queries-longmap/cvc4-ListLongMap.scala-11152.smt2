; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130310 () Bool)

(assert start!130310)

(declare-fun e!852341 () Bool)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!101587 0))(
  ( (array!101588 (arr!49014 (Array (_ BitVec 32) (_ BitVec 64))) (size!49565 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101587)

(declare-fun b!1529441 () Bool)

(declare-datatypes ((SeekEntryResult!13200 0))(
  ( (MissingZero!13200 (index!55194 (_ BitVec 32))) (Found!13200 (index!55195 (_ BitVec 32))) (Intermediate!13200 (undefined!14012 Bool) (index!55196 (_ BitVec 32)) (x!136882 (_ BitVec 32))) (Undefined!13200) (MissingVacant!13200 (index!55197 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!101587 (_ BitVec 32)) SeekEntryResult!13200)

(assert (=> b!1529441 (= e!852341 (= (seekEntry!0 (select (arr!49014 a!2804) j!70) a!2804 mask!2512) (Found!13200 j!70)))))

(declare-fun b!1529442 () Bool)

(declare-fun res!1047290 () Bool)

(declare-fun e!852340 () Bool)

(assert (=> b!1529442 (=> (not res!1047290) (not e!852340))))

(declare-fun lt!662400 () SeekEntryResult!13200)

(declare-fun i!961 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101587 (_ BitVec 32)) SeekEntryResult!13200)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1529442 (= res!1047290 (= lt!662400 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!49014 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!49014 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101588 (store (arr!49014 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49565 a!2804)) mask!2512)))))

(declare-fun b!1529443 () Bool)

(declare-fun e!852337 () Bool)

(assert (=> b!1529443 (= e!852337 e!852340)))

(declare-fun res!1047297 () Bool)

(assert (=> b!1529443 (=> (not res!1047297) (not e!852340))))

(declare-fun lt!662401 () SeekEntryResult!13200)

(assert (=> b!1529443 (= res!1047297 (= lt!662400 lt!662401))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1529443 (= lt!662401 (Intermediate!13200 false resIndex!21 resX!21))))

(assert (=> b!1529443 (= lt!662400 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!49014 a!2804) j!70) mask!2512) (select (arr!49014 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1529444 () Bool)

(declare-fun res!1047295 () Bool)

(assert (=> b!1529444 (=> (not res!1047295) (not e!852337))))

(assert (=> b!1529444 (= res!1047295 (and (= (size!49565 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49565 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49565 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1529445 () Bool)

(declare-fun res!1047292 () Bool)

(assert (=> b!1529445 (=> (not res!1047292) (not e!852337))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1529445 (= res!1047292 (validKeyInArray!0 (select (arr!49014 a!2804) j!70)))))

(declare-fun b!1529446 () Bool)

(declare-fun res!1047287 () Bool)

(assert (=> b!1529446 (=> (not res!1047287) (not e!852337))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101587 (_ BitVec 32)) Bool)

(assert (=> b!1529446 (= res!1047287 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1529447 () Bool)

(declare-fun res!1047288 () Bool)

(assert (=> b!1529447 (=> (not res!1047288) (not e!852337))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1529447 (= res!1047288 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49565 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49565 a!2804))))))

(declare-fun b!1529448 () Bool)

(declare-fun res!1047286 () Bool)

(assert (=> b!1529448 (=> (not res!1047286) (not e!852337))))

(declare-datatypes ((List!35677 0))(
  ( (Nil!35674) (Cons!35673 (h!37110 (_ BitVec 64)) (t!50378 List!35677)) )
))
(declare-fun arrayNoDuplicates!0 (array!101587 (_ BitVec 32) List!35677) Bool)

(assert (=> b!1529448 (= res!1047286 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35674))))

(declare-fun res!1047296 () Bool)

(assert (=> start!130310 (=> (not res!1047296) (not e!852337))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130310 (= res!1047296 (validMask!0 mask!2512))))

(assert (=> start!130310 e!852337))

(assert (=> start!130310 true))

(declare-fun array_inv!37959 (array!101587) Bool)

(assert (=> start!130310 (array_inv!37959 a!2804)))

(declare-fun b!1529449 () Bool)

(declare-fun e!852338 () Bool)

(assert (=> b!1529449 (= e!852338 true)))

(declare-fun lt!662399 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1529449 (= lt!662399 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1529450 () Bool)

(declare-fun res!1047289 () Bool)

(assert (=> b!1529450 (=> (not res!1047289) (not e!852337))))

(assert (=> b!1529450 (= res!1047289 (validKeyInArray!0 (select (arr!49014 a!2804) i!961)))))

(declare-fun b!1529451 () Bool)

(assert (=> b!1529451 (= e!852340 (not e!852338))))

(declare-fun res!1047291 () Bool)

(assert (=> b!1529451 (=> res!1047291 e!852338)))

(assert (=> b!1529451 (= res!1047291 (or (not (= (select (arr!49014 a!2804) j!70) (select (store (arr!49014 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (= x!534 resX!21)))))

(assert (=> b!1529451 e!852341))

(declare-fun res!1047294 () Bool)

(assert (=> b!1529451 (=> (not res!1047294) (not e!852341))))

(assert (=> b!1529451 (= res!1047294 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!51140 0))(
  ( (Unit!51141) )
))
(declare-fun lt!662398 () Unit!51140)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101587 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51140)

(assert (=> b!1529451 (= lt!662398 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1529452 () Bool)

(declare-fun res!1047293 () Bool)

(assert (=> b!1529452 (=> (not res!1047293) (not e!852340))))

(assert (=> b!1529452 (= res!1047293 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!49014 a!2804) j!70) a!2804 mask!2512) lt!662401))))

(assert (= (and start!130310 res!1047296) b!1529444))

(assert (= (and b!1529444 res!1047295) b!1529450))

(assert (= (and b!1529450 res!1047289) b!1529445))

(assert (= (and b!1529445 res!1047292) b!1529446))

(assert (= (and b!1529446 res!1047287) b!1529448))

(assert (= (and b!1529448 res!1047286) b!1529447))

(assert (= (and b!1529447 res!1047288) b!1529443))

(assert (= (and b!1529443 res!1047297) b!1529452))

(assert (= (and b!1529452 res!1047293) b!1529442))

(assert (= (and b!1529442 res!1047290) b!1529451))

(assert (= (and b!1529451 res!1047294) b!1529441))

(assert (= (and b!1529451 (not res!1047291)) b!1529449))

(declare-fun m!1412443 () Bool)

(assert (=> b!1529443 m!1412443))

(assert (=> b!1529443 m!1412443))

(declare-fun m!1412445 () Bool)

(assert (=> b!1529443 m!1412445))

(assert (=> b!1529443 m!1412445))

(assert (=> b!1529443 m!1412443))

(declare-fun m!1412447 () Bool)

(assert (=> b!1529443 m!1412447))

(assert (=> b!1529441 m!1412443))

(assert (=> b!1529441 m!1412443))

(declare-fun m!1412449 () Bool)

(assert (=> b!1529441 m!1412449))

(assert (=> b!1529445 m!1412443))

(assert (=> b!1529445 m!1412443))

(declare-fun m!1412451 () Bool)

(assert (=> b!1529445 m!1412451))

(declare-fun m!1412453 () Bool)

(assert (=> start!130310 m!1412453))

(declare-fun m!1412455 () Bool)

(assert (=> start!130310 m!1412455))

(assert (=> b!1529451 m!1412443))

(declare-fun m!1412457 () Bool)

(assert (=> b!1529451 m!1412457))

(declare-fun m!1412459 () Bool)

(assert (=> b!1529451 m!1412459))

(declare-fun m!1412461 () Bool)

(assert (=> b!1529451 m!1412461))

(declare-fun m!1412463 () Bool)

(assert (=> b!1529451 m!1412463))

(assert (=> b!1529452 m!1412443))

(assert (=> b!1529452 m!1412443))

(declare-fun m!1412465 () Bool)

(assert (=> b!1529452 m!1412465))

(declare-fun m!1412467 () Bool)

(assert (=> b!1529448 m!1412467))

(assert (=> b!1529442 m!1412459))

(assert (=> b!1529442 m!1412461))

(assert (=> b!1529442 m!1412461))

(declare-fun m!1412469 () Bool)

(assert (=> b!1529442 m!1412469))

(assert (=> b!1529442 m!1412469))

(assert (=> b!1529442 m!1412461))

(declare-fun m!1412471 () Bool)

(assert (=> b!1529442 m!1412471))

(declare-fun m!1412473 () Bool)

(assert (=> b!1529450 m!1412473))

(assert (=> b!1529450 m!1412473))

(declare-fun m!1412475 () Bool)

(assert (=> b!1529450 m!1412475))

(declare-fun m!1412477 () Bool)

(assert (=> b!1529449 m!1412477))

(declare-fun m!1412479 () Bool)

(assert (=> b!1529446 m!1412479))

(push 1)

