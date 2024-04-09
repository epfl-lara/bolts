; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129046 () Bool)

(assert start!129046)

(declare-fun b!1512634 () Bool)

(declare-fun res!1032616 () Bool)

(declare-fun e!844309 () Bool)

(assert (=> b!1512634 (=> (not res!1032616) (not e!844309))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-datatypes ((array!100815 0))(
  ( (array!100816 (arr!48640 (Array (_ BitVec 32) (_ BitVec 64))) (size!49191 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100815)

(declare-fun x!534 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12832 0))(
  ( (MissingZero!12832 (index!53722 (_ BitVec 32))) (Found!12832 (index!53723 (_ BitVec 32))) (Intermediate!12832 (undefined!13644 Bool) (index!53724 (_ BitVec 32)) (x!135459 (_ BitVec 32))) (Undefined!12832) (MissingVacant!12832 (index!53725 (_ BitVec 32))) )
))
(declare-fun lt!655693 () SeekEntryResult!12832)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100815 (_ BitVec 32)) SeekEntryResult!12832)

(assert (=> b!1512634 (= res!1032616 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48640 a!2804) j!70) a!2804 mask!2512) lt!655693))))

(declare-fun e!844312 () Bool)

(declare-fun b!1512635 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100815 (_ BitVec 32)) SeekEntryResult!12832)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100815 (_ BitVec 32)) SeekEntryResult!12832)

(assert (=> b!1512635 (= e!844312 (= (seekEntryOrOpen!0 (select (arr!48640 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48640 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1512636 () Bool)

(declare-fun e!844313 () Bool)

(assert (=> b!1512636 (= e!844313 e!844312)))

(declare-fun res!1032615 () Bool)

(assert (=> b!1512636 (=> res!1032615 e!844312)))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1512636 (= res!1032615 (or (not (= (select (arr!48640 a!2804) j!70) (select (store (arr!48640 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48640 a!2804) index!487) (select (arr!48640 a!2804) j!70)) (not (= (select (arr!48640 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1512637 () Bool)

(assert (=> b!1512637 (= e!844309 (not true))))

(assert (=> b!1512637 e!844313))

(declare-fun res!1032618 () Bool)

(assert (=> b!1512637 (=> (not res!1032618) (not e!844313))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100815 (_ BitVec 32)) Bool)

(assert (=> b!1512637 (= res!1032618 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50488 0))(
  ( (Unit!50489) )
))
(declare-fun lt!655692 () Unit!50488)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100815 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50488)

(assert (=> b!1512637 (= lt!655692 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1512638 () Bool)

(declare-fun res!1032614 () Bool)

(declare-fun e!844311 () Bool)

(assert (=> b!1512638 (=> (not res!1032614) (not e!844311))))

(assert (=> b!1512638 (= res!1032614 (and (= (size!49191 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49191 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49191 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1512639 () Bool)

(declare-fun res!1032620 () Bool)

(assert (=> b!1512639 (=> (not res!1032620) (not e!844311))))

(assert (=> b!1512639 (= res!1032620 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1512640 () Bool)

(declare-fun res!1032621 () Bool)

(assert (=> b!1512640 (=> (not res!1032621) (not e!844311))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1512640 (= res!1032621 (validKeyInArray!0 (select (arr!48640 a!2804) j!70)))))

(declare-fun b!1512641 () Bool)

(declare-fun res!1032613 () Bool)

(assert (=> b!1512641 (=> (not res!1032613) (not e!844311))))

(assert (=> b!1512641 (= res!1032613 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49191 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49191 a!2804))))))

(declare-fun b!1512642 () Bool)

(declare-fun res!1032611 () Bool)

(assert (=> b!1512642 (=> (not res!1032611) (not e!844311))))

(declare-datatypes ((List!35303 0))(
  ( (Nil!35300) (Cons!35299 (h!36712 (_ BitVec 64)) (t!50004 List!35303)) )
))
(declare-fun arrayNoDuplicates!0 (array!100815 (_ BitVec 32) List!35303) Bool)

(assert (=> b!1512642 (= res!1032611 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35300))))

(declare-fun b!1512643 () Bool)

(declare-fun res!1032610 () Bool)

(assert (=> b!1512643 (=> (not res!1032610) (not e!844313))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!100815 (_ BitVec 32)) SeekEntryResult!12832)

(assert (=> b!1512643 (= res!1032610 (= (seekEntry!0 (select (arr!48640 a!2804) j!70) a!2804 mask!2512) (Found!12832 j!70)))))

(declare-fun b!1512644 () Bool)

(declare-fun res!1032617 () Bool)

(assert (=> b!1512644 (=> (not res!1032617) (not e!844309))))

(declare-fun lt!655691 () SeekEntryResult!12832)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1512644 (= res!1032617 (= lt!655691 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48640 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48640 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100816 (store (arr!48640 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49191 a!2804)) mask!2512)))))

(declare-fun res!1032609 () Bool)

(assert (=> start!129046 (=> (not res!1032609) (not e!844311))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129046 (= res!1032609 (validMask!0 mask!2512))))

(assert (=> start!129046 e!844311))

(assert (=> start!129046 true))

(declare-fun array_inv!37585 (array!100815) Bool)

(assert (=> start!129046 (array_inv!37585 a!2804)))

(declare-fun b!1512645 () Bool)

(declare-fun res!1032619 () Bool)

(assert (=> b!1512645 (=> (not res!1032619) (not e!844311))))

(assert (=> b!1512645 (= res!1032619 (validKeyInArray!0 (select (arr!48640 a!2804) i!961)))))

(declare-fun b!1512646 () Bool)

(assert (=> b!1512646 (= e!844311 e!844309)))

(declare-fun res!1032612 () Bool)

(assert (=> b!1512646 (=> (not res!1032612) (not e!844309))))

(assert (=> b!1512646 (= res!1032612 (= lt!655691 lt!655693))))

(assert (=> b!1512646 (= lt!655693 (Intermediate!12832 false resIndex!21 resX!21))))

(assert (=> b!1512646 (= lt!655691 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48640 a!2804) j!70) mask!2512) (select (arr!48640 a!2804) j!70) a!2804 mask!2512))))

(assert (= (and start!129046 res!1032609) b!1512638))

(assert (= (and b!1512638 res!1032614) b!1512645))

(assert (= (and b!1512645 res!1032619) b!1512640))

(assert (= (and b!1512640 res!1032621) b!1512639))

(assert (= (and b!1512639 res!1032620) b!1512642))

(assert (= (and b!1512642 res!1032611) b!1512641))

(assert (= (and b!1512641 res!1032613) b!1512646))

(assert (= (and b!1512646 res!1032612) b!1512634))

(assert (= (and b!1512634 res!1032616) b!1512644))

(assert (= (and b!1512644 res!1032617) b!1512637))

(assert (= (and b!1512637 res!1032618) b!1512643))

(assert (= (and b!1512643 res!1032610) b!1512636))

(assert (= (and b!1512636 (not res!1032615)) b!1512635))

(declare-fun m!1395477 () Bool)

(assert (=> b!1512642 m!1395477))

(declare-fun m!1395479 () Bool)

(assert (=> b!1512634 m!1395479))

(assert (=> b!1512634 m!1395479))

(declare-fun m!1395481 () Bool)

(assert (=> b!1512634 m!1395481))

(declare-fun m!1395483 () Bool)

(assert (=> b!1512639 m!1395483))

(declare-fun m!1395485 () Bool)

(assert (=> b!1512637 m!1395485))

(declare-fun m!1395487 () Bool)

(assert (=> b!1512637 m!1395487))

(assert (=> b!1512643 m!1395479))

(assert (=> b!1512643 m!1395479))

(declare-fun m!1395489 () Bool)

(assert (=> b!1512643 m!1395489))

(declare-fun m!1395491 () Bool)

(assert (=> b!1512644 m!1395491))

(declare-fun m!1395493 () Bool)

(assert (=> b!1512644 m!1395493))

(assert (=> b!1512644 m!1395493))

(declare-fun m!1395495 () Bool)

(assert (=> b!1512644 m!1395495))

(assert (=> b!1512644 m!1395495))

(assert (=> b!1512644 m!1395493))

(declare-fun m!1395497 () Bool)

(assert (=> b!1512644 m!1395497))

(assert (=> b!1512646 m!1395479))

(assert (=> b!1512646 m!1395479))

(declare-fun m!1395499 () Bool)

(assert (=> b!1512646 m!1395499))

(assert (=> b!1512646 m!1395499))

(assert (=> b!1512646 m!1395479))

(declare-fun m!1395501 () Bool)

(assert (=> b!1512646 m!1395501))

(assert (=> b!1512640 m!1395479))

(assert (=> b!1512640 m!1395479))

(declare-fun m!1395503 () Bool)

(assert (=> b!1512640 m!1395503))

(declare-fun m!1395505 () Bool)

(assert (=> start!129046 m!1395505))

(declare-fun m!1395507 () Bool)

(assert (=> start!129046 m!1395507))

(declare-fun m!1395509 () Bool)

(assert (=> b!1512645 m!1395509))

(assert (=> b!1512645 m!1395509))

(declare-fun m!1395511 () Bool)

(assert (=> b!1512645 m!1395511))

(assert (=> b!1512635 m!1395479))

(assert (=> b!1512635 m!1395479))

(declare-fun m!1395513 () Bool)

(assert (=> b!1512635 m!1395513))

(assert (=> b!1512635 m!1395479))

(declare-fun m!1395515 () Bool)

(assert (=> b!1512635 m!1395515))

(assert (=> b!1512636 m!1395479))

(assert (=> b!1512636 m!1395491))

(assert (=> b!1512636 m!1395493))

(declare-fun m!1395517 () Bool)

(assert (=> b!1512636 m!1395517))

(push 1)

