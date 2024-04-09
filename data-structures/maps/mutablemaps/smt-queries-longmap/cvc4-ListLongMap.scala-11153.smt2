; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130316 () Bool)

(assert start!130316)

(declare-fun b!1529549 () Bool)

(declare-fun e!852385 () Bool)

(declare-fun e!852383 () Bool)

(assert (=> b!1529549 (= e!852385 e!852383)))

(declare-fun res!1047400 () Bool)

(assert (=> b!1529549 (=> (not res!1047400) (not e!852383))))

(declare-datatypes ((SeekEntryResult!13203 0))(
  ( (MissingZero!13203 (index!55206 (_ BitVec 32))) (Found!13203 (index!55207 (_ BitVec 32))) (Intermediate!13203 (undefined!14015 Bool) (index!55208 (_ BitVec 32)) (x!136893 (_ BitVec 32))) (Undefined!13203) (MissingVacant!13203 (index!55209 (_ BitVec 32))) )
))
(declare-fun lt!662436 () SeekEntryResult!13203)

(declare-fun lt!662437 () SeekEntryResult!13203)

(assert (=> b!1529549 (= res!1047400 (= lt!662436 lt!662437))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1529549 (= lt!662437 (Intermediate!13203 false resIndex!21 resX!21))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!101593 0))(
  ( (array!101594 (arr!49017 (Array (_ BitVec 32) (_ BitVec 64))) (size!49568 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101593)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101593 (_ BitVec 32)) SeekEntryResult!13203)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1529549 (= lt!662436 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!49017 a!2804) j!70) mask!2512) (select (arr!49017 a!2804) j!70) a!2804 mask!2512))))

(declare-fun res!1047403 () Bool)

(assert (=> start!130316 (=> (not res!1047403) (not e!852385))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130316 (= res!1047403 (validMask!0 mask!2512))))

(assert (=> start!130316 e!852385))

(assert (=> start!130316 true))

(declare-fun array_inv!37962 (array!101593) Bool)

(assert (=> start!130316 (array_inv!37962 a!2804)))

(declare-fun b!1529550 () Bool)

(declare-fun res!1047397 () Bool)

(assert (=> b!1529550 (=> (not res!1047397) (not e!852385))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1529550 (= res!1047397 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49568 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49568 a!2804))))))

(declare-fun b!1529551 () Bool)

(declare-fun res!1047405 () Bool)

(assert (=> b!1529551 (=> (not res!1047405) (not e!852385))))

(declare-datatypes ((List!35680 0))(
  ( (Nil!35677) (Cons!35676 (h!37113 (_ BitVec 64)) (t!50381 List!35680)) )
))
(declare-fun arrayNoDuplicates!0 (array!101593 (_ BitVec 32) List!35680) Bool)

(assert (=> b!1529551 (= res!1047405 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35677))))

(declare-fun b!1529552 () Bool)

(declare-fun res!1047401 () Bool)

(assert (=> b!1529552 (=> (not res!1047401) (not e!852385))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1529552 (= res!1047401 (and (= (size!49568 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49568 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49568 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1529553 () Bool)

(declare-fun res!1047395 () Bool)

(assert (=> b!1529553 (=> (not res!1047395) (not e!852385))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1529553 (= res!1047395 (validKeyInArray!0 (select (arr!49017 a!2804) i!961)))))

(declare-fun b!1529554 () Bool)

(declare-fun e!852386 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101593 (_ BitVec 32)) SeekEntryResult!13203)

(assert (=> b!1529554 (= e!852386 (= (seekEntry!0 (select (arr!49017 a!2804) j!70) a!2804 mask!2512) (Found!13203 j!70)))))

(declare-fun b!1529555 () Bool)

(declare-fun e!852382 () Bool)

(assert (=> b!1529555 (= e!852383 (not e!852382))))

(declare-fun res!1047396 () Bool)

(assert (=> b!1529555 (=> res!1047396 e!852382)))

(assert (=> b!1529555 (= res!1047396 (or (not (= (select (arr!49017 a!2804) j!70) (select (store (arr!49017 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (= x!534 resX!21)))))

(assert (=> b!1529555 e!852386))

(declare-fun res!1047404 () Bool)

(assert (=> b!1529555 (=> (not res!1047404) (not e!852386))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101593 (_ BitVec 32)) Bool)

(assert (=> b!1529555 (= res!1047404 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!51146 0))(
  ( (Unit!51147) )
))
(declare-fun lt!662435 () Unit!51146)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101593 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51146)

(assert (=> b!1529555 (= lt!662435 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1529556 () Bool)

(declare-fun res!1047399 () Bool)

(assert (=> b!1529556 (=> (not res!1047399) (not e!852383))))

(assert (=> b!1529556 (= res!1047399 (= lt!662436 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!49017 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!49017 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101594 (store (arr!49017 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49568 a!2804)) mask!2512)))))

(declare-fun b!1529557 () Bool)

(assert (=> b!1529557 (= e!852382 true)))

(declare-fun lt!662434 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1529557 (= lt!662434 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1529558 () Bool)

(declare-fun res!1047402 () Bool)

(assert (=> b!1529558 (=> (not res!1047402) (not e!852385))))

(assert (=> b!1529558 (= res!1047402 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1529559 () Bool)

(declare-fun res!1047398 () Bool)

(assert (=> b!1529559 (=> (not res!1047398) (not e!852383))))

(assert (=> b!1529559 (= res!1047398 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!49017 a!2804) j!70) a!2804 mask!2512) lt!662437))))

(declare-fun b!1529560 () Bool)

(declare-fun res!1047394 () Bool)

(assert (=> b!1529560 (=> (not res!1047394) (not e!852385))))

(assert (=> b!1529560 (= res!1047394 (validKeyInArray!0 (select (arr!49017 a!2804) j!70)))))

(assert (= (and start!130316 res!1047403) b!1529552))

(assert (= (and b!1529552 res!1047401) b!1529553))

(assert (= (and b!1529553 res!1047395) b!1529560))

(assert (= (and b!1529560 res!1047394) b!1529558))

(assert (= (and b!1529558 res!1047402) b!1529551))

(assert (= (and b!1529551 res!1047405) b!1529550))

(assert (= (and b!1529550 res!1047397) b!1529549))

(assert (= (and b!1529549 res!1047400) b!1529559))

(assert (= (and b!1529559 res!1047398) b!1529556))

(assert (= (and b!1529556 res!1047399) b!1529555))

(assert (= (and b!1529555 res!1047404) b!1529554))

(assert (= (and b!1529555 (not res!1047396)) b!1529557))

(declare-fun m!1412557 () Bool)

(assert (=> b!1529553 m!1412557))

(assert (=> b!1529553 m!1412557))

(declare-fun m!1412559 () Bool)

(assert (=> b!1529553 m!1412559))

(declare-fun m!1412561 () Bool)

(assert (=> start!130316 m!1412561))

(declare-fun m!1412563 () Bool)

(assert (=> start!130316 m!1412563))

(declare-fun m!1412565 () Bool)

(assert (=> b!1529558 m!1412565))

(declare-fun m!1412567 () Bool)

(assert (=> b!1529560 m!1412567))

(assert (=> b!1529560 m!1412567))

(declare-fun m!1412569 () Bool)

(assert (=> b!1529560 m!1412569))

(assert (=> b!1529549 m!1412567))

(assert (=> b!1529549 m!1412567))

(declare-fun m!1412571 () Bool)

(assert (=> b!1529549 m!1412571))

(assert (=> b!1529549 m!1412571))

(assert (=> b!1529549 m!1412567))

(declare-fun m!1412573 () Bool)

(assert (=> b!1529549 m!1412573))

(assert (=> b!1529559 m!1412567))

(assert (=> b!1529559 m!1412567))

(declare-fun m!1412575 () Bool)

(assert (=> b!1529559 m!1412575))

(assert (=> b!1529554 m!1412567))

(assert (=> b!1529554 m!1412567))

(declare-fun m!1412577 () Bool)

(assert (=> b!1529554 m!1412577))

(declare-fun m!1412579 () Bool)

(assert (=> b!1529556 m!1412579))

(declare-fun m!1412581 () Bool)

(assert (=> b!1529556 m!1412581))

(assert (=> b!1529556 m!1412581))

(declare-fun m!1412583 () Bool)

(assert (=> b!1529556 m!1412583))

(assert (=> b!1529556 m!1412583))

(assert (=> b!1529556 m!1412581))

(declare-fun m!1412585 () Bool)

(assert (=> b!1529556 m!1412585))

(declare-fun m!1412587 () Bool)

(assert (=> b!1529557 m!1412587))

(declare-fun m!1412589 () Bool)

(assert (=> b!1529551 m!1412589))

(assert (=> b!1529555 m!1412567))

(declare-fun m!1412591 () Bool)

(assert (=> b!1529555 m!1412591))

(assert (=> b!1529555 m!1412579))

(assert (=> b!1529555 m!1412581))

(declare-fun m!1412593 () Bool)

(assert (=> b!1529555 m!1412593))

(push 1)

(assert (not b!1529559))

