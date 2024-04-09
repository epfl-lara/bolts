; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120030 () Bool)

(assert start!120030)

(declare-fun b!1396739 () Bool)

(declare-fun res!935769 () Bool)

(declare-fun e!790772 () Bool)

(assert (=> b!1396739 (=> (not res!935769) (not e!790772))))

(declare-datatypes ((array!95477 0))(
  ( (array!95478 (arr!46088 (Array (_ BitVec 32) (_ BitVec 64))) (size!46639 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95477)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95477 (_ BitVec 32)) Bool)

(assert (=> b!1396739 (= res!935769 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1396740 () Bool)

(declare-fun res!935767 () Bool)

(assert (=> b!1396740 (=> (not res!935767) (not e!790772))))

(declare-datatypes ((List!32787 0))(
  ( (Nil!32784) (Cons!32783 (h!34025 (_ BitVec 64)) (t!47488 List!32787)) )
))
(declare-fun arrayNoDuplicates!0 (array!95477 (_ BitVec 32) List!32787) Bool)

(assert (=> b!1396740 (= res!935767 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32784))))

(declare-fun b!1396741 () Bool)

(declare-fun e!790775 () Bool)

(declare-fun e!790773 () Bool)

(assert (=> b!1396741 (= e!790775 e!790773)))

(declare-fun res!935763 () Bool)

(assert (=> b!1396741 (=> res!935763 e!790773)))

(declare-datatypes ((SeekEntryResult!10427 0))(
  ( (MissingZero!10427 (index!44078 (_ BitVec 32))) (Found!10427 (index!44079 (_ BitVec 32))) (Intermediate!10427 (undefined!11239 Bool) (index!44080 (_ BitVec 32)) (x!125748 (_ BitVec 32))) (Undefined!10427) (MissingVacant!10427 (index!44081 (_ BitVec 32))) )
))
(declare-fun lt!613664 () SeekEntryResult!10427)

(declare-fun lt!613668 () (_ BitVec 32))

(declare-fun lt!613665 () SeekEntryResult!10427)

(get-info :version)

(assert (=> b!1396741 (= res!935763 (or (= lt!613665 lt!613664) (not ((_ is Intermediate!10427) lt!613664)) (bvslt (x!125748 lt!613665) #b00000000000000000000000000000000) (bvsgt (x!125748 lt!613665) #b01111111111111111111111111111110) (bvslt lt!613668 #b00000000000000000000000000000000) (bvsge lt!613668 (size!46639 a!2901)) (bvslt (index!44080 lt!613665) #b00000000000000000000000000000000) (bvsge (index!44080 lt!613665) (size!46639 a!2901)) (not (= lt!613665 (Intermediate!10427 false (index!44080 lt!613665) (x!125748 lt!613665)))) (not (= lt!613664 (Intermediate!10427 (undefined!11239 lt!613664) (index!44080 lt!613664) (x!125748 lt!613664))))))))

(declare-fun lt!613667 () array!95477)

(declare-fun lt!613666 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95477 (_ BitVec 32)) SeekEntryResult!10427)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1396741 (= lt!613664 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!613666 mask!2840) lt!613666 lt!613667 mask!2840))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1396741 (= lt!613666 (select (store (arr!46088 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1396741 (= lt!613667 (array!95478 (store (arr!46088 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46639 a!2901)))))

(declare-fun b!1396742 () Bool)

(assert (=> b!1396742 (= e!790772 (not e!790775))))

(declare-fun res!935765 () Bool)

(assert (=> b!1396742 (=> res!935765 e!790775)))

(assert (=> b!1396742 (= res!935765 (or (not ((_ is Intermediate!10427) lt!613665)) (undefined!11239 lt!613665)))))

(declare-fun e!790774 () Bool)

(assert (=> b!1396742 e!790774))

(declare-fun res!935768 () Bool)

(assert (=> b!1396742 (=> (not res!935768) (not e!790774))))

(assert (=> b!1396742 (= res!935768 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46808 0))(
  ( (Unit!46809) )
))
(declare-fun lt!613663 () Unit!46808)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95477 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46808)

(assert (=> b!1396742 (= lt!613663 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1396742 (= lt!613665 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!613668 (select (arr!46088 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1396742 (= lt!613668 (toIndex!0 (select (arr!46088 a!2901) j!112) mask!2840))))

(declare-fun b!1396743 () Bool)

(declare-fun res!935762 () Bool)

(assert (=> b!1396743 (=> (not res!935762) (not e!790772))))

(assert (=> b!1396743 (= res!935762 (and (= (size!46639 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46639 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46639 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1396744 () Bool)

(declare-fun res!935764 () Bool)

(assert (=> b!1396744 (=> (not res!935764) (not e!790772))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1396744 (= res!935764 (validKeyInArray!0 (select (arr!46088 a!2901) i!1037)))))

(declare-fun b!1396745 () Bool)

(declare-fun res!935766 () Bool)

(assert (=> b!1396745 (=> (not res!935766) (not e!790772))))

(assert (=> b!1396745 (= res!935766 (validKeyInArray!0 (select (arr!46088 a!2901) j!112)))))

(declare-fun b!1396746 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95477 (_ BitVec 32)) SeekEntryResult!10427)

(assert (=> b!1396746 (= e!790774 (= (seekEntryOrOpen!0 (select (arr!46088 a!2901) j!112) a!2901 mask!2840) (Found!10427 j!112)))))

(declare-fun b!1396747 () Bool)

(assert (=> b!1396747 (= e!790773 true)))

(declare-fun lt!613669 () SeekEntryResult!10427)

(assert (=> b!1396747 (= lt!613669 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!613668 lt!613666 lt!613667 mask!2840))))

(declare-fun res!935761 () Bool)

(assert (=> start!120030 (=> (not res!935761) (not e!790772))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120030 (= res!935761 (validMask!0 mask!2840))))

(assert (=> start!120030 e!790772))

(assert (=> start!120030 true))

(declare-fun array_inv!35033 (array!95477) Bool)

(assert (=> start!120030 (array_inv!35033 a!2901)))

(assert (= (and start!120030 res!935761) b!1396743))

(assert (= (and b!1396743 res!935762) b!1396744))

(assert (= (and b!1396744 res!935764) b!1396745))

(assert (= (and b!1396745 res!935766) b!1396739))

(assert (= (and b!1396739 res!935769) b!1396740))

(assert (= (and b!1396740 res!935767) b!1396742))

(assert (= (and b!1396742 res!935768) b!1396746))

(assert (= (and b!1396742 (not res!935765)) b!1396741))

(assert (= (and b!1396741 (not res!935763)) b!1396747))

(declare-fun m!1283363 () Bool)

(assert (=> start!120030 m!1283363))

(declare-fun m!1283365 () Bool)

(assert (=> start!120030 m!1283365))

(declare-fun m!1283367 () Bool)

(assert (=> b!1396746 m!1283367))

(assert (=> b!1396746 m!1283367))

(declare-fun m!1283369 () Bool)

(assert (=> b!1396746 m!1283369))

(declare-fun m!1283371 () Bool)

(assert (=> b!1396739 m!1283371))

(assert (=> b!1396742 m!1283367))

(declare-fun m!1283373 () Bool)

(assert (=> b!1396742 m!1283373))

(assert (=> b!1396742 m!1283367))

(declare-fun m!1283375 () Bool)

(assert (=> b!1396742 m!1283375))

(assert (=> b!1396742 m!1283367))

(declare-fun m!1283377 () Bool)

(assert (=> b!1396742 m!1283377))

(declare-fun m!1283379 () Bool)

(assert (=> b!1396742 m!1283379))

(assert (=> b!1396745 m!1283367))

(assert (=> b!1396745 m!1283367))

(declare-fun m!1283381 () Bool)

(assert (=> b!1396745 m!1283381))

(declare-fun m!1283383 () Bool)

(assert (=> b!1396744 m!1283383))

(assert (=> b!1396744 m!1283383))

(declare-fun m!1283385 () Bool)

(assert (=> b!1396744 m!1283385))

(declare-fun m!1283387 () Bool)

(assert (=> b!1396740 m!1283387))

(declare-fun m!1283389 () Bool)

(assert (=> b!1396747 m!1283389))

(declare-fun m!1283391 () Bool)

(assert (=> b!1396741 m!1283391))

(assert (=> b!1396741 m!1283391))

(declare-fun m!1283393 () Bool)

(assert (=> b!1396741 m!1283393))

(declare-fun m!1283395 () Bool)

(assert (=> b!1396741 m!1283395))

(declare-fun m!1283397 () Bool)

(assert (=> b!1396741 m!1283397))

(check-sat (not b!1396746) (not start!120030) (not b!1396740) (not b!1396744) (not b!1396745) (not b!1396747) (not b!1396742) (not b!1396739) (not b!1396741))
(check-sat)
