; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129178 () Bool)

(assert start!129178)

(declare-fun b!1515361 () Bool)

(declare-fun res!1035342 () Bool)

(declare-fun e!845676 () Bool)

(assert (=> b!1515361 (=> (not res!1035342) (not e!845676))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-datatypes ((array!100947 0))(
  ( (array!100948 (arr!48706 (Array (_ BitVec 32) (_ BitVec 64))) (size!49257 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100947)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1515361 (= res!1035342 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49257 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49257 a!2804))))))

(declare-fun b!1515362 () Bool)

(declare-fun res!1035345 () Bool)

(declare-fun e!845675 () Bool)

(assert (=> b!1515362 (=> (not res!1035345) (not e!845675))))

(declare-datatypes ((SeekEntryResult!12898 0))(
  ( (MissingZero!12898 (index!53986 (_ BitVec 32))) (Found!12898 (index!53987 (_ BitVec 32))) (Intermediate!12898 (undefined!13710 Bool) (index!53988 (_ BitVec 32)) (x!135701 (_ BitVec 32))) (Undefined!12898) (MissingVacant!12898 (index!53989 (_ BitVec 32))) )
))
(declare-fun lt!656795 () SeekEntryResult!12898)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100947 (_ BitVec 32)) SeekEntryResult!12898)

(assert (=> b!1515362 (= res!1035345 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48706 a!2804) j!70) a!2804 mask!2512) lt!656795))))

(declare-fun b!1515363 () Bool)

(declare-fun res!1035336 () Bool)

(assert (=> b!1515363 (=> (not res!1035336) (not e!845676))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1515363 (= res!1035336 (and (= (size!49257 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49257 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49257 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1515365 () Bool)

(declare-fun e!845672 () Bool)

(declare-fun e!845678 () Bool)

(assert (=> b!1515365 (= e!845672 (not e!845678))))

(declare-fun res!1035347 () Bool)

(assert (=> b!1515365 (=> res!1035347 e!845678)))

(declare-fun lt!656802 () (_ BitVec 64))

(assert (=> b!1515365 (= res!1035347 (or (not (= (select (arr!48706 a!2804) j!70) lt!656802)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48706 a!2804) index!487) (select (arr!48706 a!2804) j!70)) (not (= (select (arr!48706 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!845674 () Bool)

(assert (=> b!1515365 e!845674))

(declare-fun res!1035343 () Bool)

(assert (=> b!1515365 (=> (not res!1035343) (not e!845674))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100947 (_ BitVec 32)) Bool)

(assert (=> b!1515365 (= res!1035343 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50620 0))(
  ( (Unit!50621) )
))
(declare-fun lt!656803 () Unit!50620)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100947 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50620)

(assert (=> b!1515365 (= lt!656803 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1515366 () Bool)

(declare-fun res!1035339 () Bool)

(assert (=> b!1515366 (=> (not res!1035339) (not e!845676))))

(declare-datatypes ((List!35369 0))(
  ( (Nil!35366) (Cons!35365 (h!36778 (_ BitVec 64)) (t!50070 List!35369)) )
))
(declare-fun arrayNoDuplicates!0 (array!100947 (_ BitVec 32) List!35369) Bool)

(assert (=> b!1515366 (= res!1035339 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35366))))

(declare-fun b!1515367 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!100947 (_ BitVec 32)) SeekEntryResult!12898)

(assert (=> b!1515367 (= e!845674 (= (seekEntry!0 (select (arr!48706 a!2804) j!70) a!2804 mask!2512) (Found!12898 j!70)))))

(declare-fun b!1515368 () Bool)

(declare-fun res!1035346 () Bool)

(assert (=> b!1515368 (=> (not res!1035346) (not e!845676))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1515368 (= res!1035346 (validKeyInArray!0 (select (arr!48706 a!2804) i!961)))))

(declare-fun b!1515369 () Bool)

(declare-fun res!1035348 () Bool)

(assert (=> b!1515369 (=> (not res!1035348) (not e!845676))))

(assert (=> b!1515369 (= res!1035348 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1515370 () Bool)

(assert (=> b!1515370 (= e!845676 e!845675)))

(declare-fun res!1035341 () Bool)

(assert (=> b!1515370 (=> (not res!1035341) (not e!845675))))

(declare-fun lt!656794 () SeekEntryResult!12898)

(assert (=> b!1515370 (= res!1035341 (= lt!656794 lt!656795))))

(assert (=> b!1515370 (= lt!656795 (Intermediate!12898 false resIndex!21 resX!21))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1515370 (= lt!656794 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48706 a!2804) j!70) mask!2512) (select (arr!48706 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1515371 () Bool)

(declare-fun e!845677 () Bool)

(assert (=> b!1515371 (= e!845677 true)))

(declare-fun lt!656797 () SeekEntryResult!12898)

(declare-fun lt!656796 () SeekEntryResult!12898)

(assert (=> b!1515371 (= lt!656797 lt!656796)))

(declare-fun lt!656799 () Unit!50620)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 (array!100947 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50620)

(assert (=> b!1515371 (= lt!656799 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 a!2804 i!961 j!70 x!534 index!487 index!487 mask!2512))))

(declare-fun b!1515372 () Bool)

(assert (=> b!1515372 (= e!845678 e!845677)))

(declare-fun res!1035337 () Bool)

(assert (=> b!1515372 (=> res!1035337 e!845677)))

(assert (=> b!1515372 (= res!1035337 (not (= lt!656796 (Found!12898 j!70))))))

(declare-fun lt!656798 () SeekEntryResult!12898)

(assert (=> b!1515372 (= lt!656798 lt!656797)))

(declare-fun lt!656801 () array!100947)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100947 (_ BitVec 32)) SeekEntryResult!12898)

(assert (=> b!1515372 (= lt!656797 (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!656802 lt!656801 mask!2512))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100947 (_ BitVec 32)) SeekEntryResult!12898)

(assert (=> b!1515372 (= lt!656798 (seekEntryOrOpen!0 lt!656802 lt!656801 mask!2512))))

(declare-fun lt!656800 () SeekEntryResult!12898)

(assert (=> b!1515372 (= lt!656800 lt!656796)))

(assert (=> b!1515372 (= lt!656796 (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48706 a!2804) j!70) a!2804 mask!2512))))

(assert (=> b!1515372 (= lt!656800 (seekEntryOrOpen!0 (select (arr!48706 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1515373 () Bool)

(assert (=> b!1515373 (= e!845675 e!845672)))

(declare-fun res!1035340 () Bool)

(assert (=> b!1515373 (=> (not res!1035340) (not e!845672))))

(assert (=> b!1515373 (= res!1035340 (= lt!656794 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!656802 mask!2512) lt!656802 lt!656801 mask!2512)))))

(assert (=> b!1515373 (= lt!656802 (select (store (arr!48706 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1515373 (= lt!656801 (array!100948 (store (arr!48706 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49257 a!2804)))))

(declare-fun b!1515364 () Bool)

(declare-fun res!1035344 () Bool)

(assert (=> b!1515364 (=> (not res!1035344) (not e!845676))))

(assert (=> b!1515364 (= res!1035344 (validKeyInArray!0 (select (arr!48706 a!2804) j!70)))))

(declare-fun res!1035338 () Bool)

(assert (=> start!129178 (=> (not res!1035338) (not e!845676))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129178 (= res!1035338 (validMask!0 mask!2512))))

(assert (=> start!129178 e!845676))

(assert (=> start!129178 true))

(declare-fun array_inv!37651 (array!100947) Bool)

(assert (=> start!129178 (array_inv!37651 a!2804)))

(assert (= (and start!129178 res!1035338) b!1515363))

(assert (= (and b!1515363 res!1035336) b!1515368))

(assert (= (and b!1515368 res!1035346) b!1515364))

(assert (= (and b!1515364 res!1035344) b!1515369))

(assert (= (and b!1515369 res!1035348) b!1515366))

(assert (= (and b!1515366 res!1035339) b!1515361))

(assert (= (and b!1515361 res!1035342) b!1515370))

(assert (= (and b!1515370 res!1035341) b!1515362))

(assert (= (and b!1515362 res!1035345) b!1515373))

(assert (= (and b!1515373 res!1035340) b!1515365))

(assert (= (and b!1515365 res!1035343) b!1515367))

(assert (= (and b!1515365 (not res!1035347)) b!1515372))

(assert (= (and b!1515372 (not res!1035337)) b!1515371))

(declare-fun m!1398513 () Bool)

(assert (=> b!1515371 m!1398513))

(declare-fun m!1398515 () Bool)

(assert (=> b!1515369 m!1398515))

(declare-fun m!1398517 () Bool)

(assert (=> b!1515366 m!1398517))

(declare-fun m!1398519 () Bool)

(assert (=> b!1515367 m!1398519))

(assert (=> b!1515367 m!1398519))

(declare-fun m!1398521 () Bool)

(assert (=> b!1515367 m!1398521))

(assert (=> b!1515370 m!1398519))

(assert (=> b!1515370 m!1398519))

(declare-fun m!1398523 () Bool)

(assert (=> b!1515370 m!1398523))

(assert (=> b!1515370 m!1398523))

(assert (=> b!1515370 m!1398519))

(declare-fun m!1398525 () Bool)

(assert (=> b!1515370 m!1398525))

(assert (=> b!1515365 m!1398519))

(declare-fun m!1398527 () Bool)

(assert (=> b!1515365 m!1398527))

(declare-fun m!1398529 () Bool)

(assert (=> b!1515365 m!1398529))

(declare-fun m!1398531 () Bool)

(assert (=> b!1515365 m!1398531))

(declare-fun m!1398533 () Bool)

(assert (=> b!1515373 m!1398533))

(assert (=> b!1515373 m!1398533))

(declare-fun m!1398535 () Bool)

(assert (=> b!1515373 m!1398535))

(declare-fun m!1398537 () Bool)

(assert (=> b!1515373 m!1398537))

(declare-fun m!1398539 () Bool)

(assert (=> b!1515373 m!1398539))

(assert (=> b!1515372 m!1398519))

(declare-fun m!1398541 () Bool)

(assert (=> b!1515372 m!1398541))

(assert (=> b!1515372 m!1398519))

(declare-fun m!1398543 () Bool)

(assert (=> b!1515372 m!1398543))

(declare-fun m!1398545 () Bool)

(assert (=> b!1515372 m!1398545))

(assert (=> b!1515372 m!1398519))

(declare-fun m!1398547 () Bool)

(assert (=> b!1515372 m!1398547))

(assert (=> b!1515364 m!1398519))

(assert (=> b!1515364 m!1398519))

(declare-fun m!1398549 () Bool)

(assert (=> b!1515364 m!1398549))

(assert (=> b!1515362 m!1398519))

(assert (=> b!1515362 m!1398519))

(declare-fun m!1398551 () Bool)

(assert (=> b!1515362 m!1398551))

(declare-fun m!1398553 () Bool)

(assert (=> b!1515368 m!1398553))

(assert (=> b!1515368 m!1398553))

(declare-fun m!1398555 () Bool)

(assert (=> b!1515368 m!1398555))

(declare-fun m!1398557 () Bool)

(assert (=> start!129178 m!1398557))

(declare-fun m!1398559 () Bool)

(assert (=> start!129178 m!1398559))

(push 1)

