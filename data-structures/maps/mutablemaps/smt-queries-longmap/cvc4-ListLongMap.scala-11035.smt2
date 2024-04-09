; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129092 () Bool)

(assert start!129092)

(declare-fun res!1033568 () Bool)

(declare-fun e!844770 () Bool)

(assert (=> start!129092 (=> (not res!1033568) (not e!844770))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129092 (= res!1033568 (validMask!0 mask!2512))))

(assert (=> start!129092 e!844770))

(assert (=> start!129092 true))

(declare-datatypes ((array!100861 0))(
  ( (array!100862 (arr!48663 (Array (_ BitVec 32) (_ BitVec 64))) (size!49214 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100861)

(declare-fun array_inv!37608 (array!100861) Bool)

(assert (=> start!129092 (array_inv!37608 a!2804)))

(declare-fun b!1513584 () Bool)

(declare-fun e!844774 () Bool)

(declare-fun e!844773 () Bool)

(assert (=> b!1513584 (= e!844774 e!844773)))

(declare-fun res!1033562 () Bool)

(assert (=> b!1513584 (=> (not res!1033562) (not e!844773))))

(declare-fun lt!656005 () array!100861)

(declare-fun lt!656004 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!12855 0))(
  ( (MissingZero!12855 (index!53814 (_ BitVec 32))) (Found!12855 (index!53815 (_ BitVec 32))) (Intermediate!12855 (undefined!13667 Bool) (index!53816 (_ BitVec 32)) (x!135538 (_ BitVec 32))) (Undefined!12855) (MissingVacant!12855 (index!53817 (_ BitVec 32))) )
))
(declare-fun lt!656008 () SeekEntryResult!12855)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100861 (_ BitVec 32)) SeekEntryResult!12855)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1513584 (= res!1033562 (= lt!656008 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!656004 mask!2512) lt!656004 lt!656005 mask!2512)))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(assert (=> b!1513584 (= lt!656004 (select (store (arr!48663 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1513584 (= lt!656005 (array!100862 (store (arr!48663 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49214 a!2804)))))

(declare-fun e!844769 () Bool)

(declare-fun index!487 () (_ BitVec 32))

(declare-fun b!1513585 () Bool)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100861 (_ BitVec 32)) SeekEntryResult!12855)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100861 (_ BitVec 32)) SeekEntryResult!12855)

(assert (=> b!1513585 (= e!844769 (= (seekEntryOrOpen!0 lt!656004 lt!656005 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!656004 lt!656005 mask!2512)))))

(declare-fun b!1513586 () Bool)

(declare-fun res!1033572 () Bool)

(assert (=> b!1513586 (=> (not res!1033572) (not e!844770))))

(declare-datatypes ((List!35326 0))(
  ( (Nil!35323) (Cons!35322 (h!36735 (_ BitVec 64)) (t!50027 List!35326)) )
))
(declare-fun arrayNoDuplicates!0 (array!100861 (_ BitVec 32) List!35326) Bool)

(assert (=> b!1513586 (= res!1033572 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35323))))

(declare-fun b!1513587 () Bool)

(declare-fun res!1033561 () Bool)

(assert (=> b!1513587 (=> (not res!1033561) (not e!844770))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100861 (_ BitVec 32)) Bool)

(assert (=> b!1513587 (= res!1033561 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1513588 () Bool)

(declare-fun res!1033571 () Bool)

(assert (=> b!1513588 (=> (not res!1033571) (not e!844774))))

(declare-fun lt!656006 () SeekEntryResult!12855)

(assert (=> b!1513588 (= res!1033571 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48663 a!2804) j!70) a!2804 mask!2512) lt!656006))))

(declare-fun b!1513589 () Bool)

(declare-fun e!844775 () Bool)

(assert (=> b!1513589 (= e!844775 e!844769)))

(declare-fun res!1033563 () Bool)

(assert (=> b!1513589 (=> (not res!1033563) (not e!844769))))

(assert (=> b!1513589 (= res!1033563 (= (seekEntryOrOpen!0 (select (arr!48663 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48663 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1513590 () Bool)

(assert (=> b!1513590 (= e!844770 e!844774)))

(declare-fun res!1033565 () Bool)

(assert (=> b!1513590 (=> (not res!1033565) (not e!844774))))

(assert (=> b!1513590 (= res!1033565 (= lt!656008 lt!656006))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1513590 (= lt!656006 (Intermediate!12855 false resIndex!21 resX!21))))

(assert (=> b!1513590 (= lt!656008 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48663 a!2804) j!70) mask!2512) (select (arr!48663 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1513591 () Bool)

(assert (=> b!1513591 (= e!844773 (not true))))

(declare-fun e!844771 () Bool)

(assert (=> b!1513591 e!844771))

(declare-fun res!1033570 () Bool)

(assert (=> b!1513591 (=> (not res!1033570) (not e!844771))))

(assert (=> b!1513591 (= res!1033570 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50534 0))(
  ( (Unit!50535) )
))
(declare-fun lt!656007 () Unit!50534)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100861 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50534)

(assert (=> b!1513591 (= lt!656007 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1513592 () Bool)

(declare-fun res!1033566 () Bool)

(assert (=> b!1513592 (=> (not res!1033566) (not e!844770))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1513592 (= res!1033566 (validKeyInArray!0 (select (arr!48663 a!2804) j!70)))))

(declare-fun b!1513593 () Bool)

(declare-fun res!1033567 () Bool)

(assert (=> b!1513593 (=> (not res!1033567) (not e!844770))))

(assert (=> b!1513593 (= res!1033567 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49214 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49214 a!2804))))))

(declare-fun b!1513594 () Bool)

(declare-fun res!1033564 () Bool)

(assert (=> b!1513594 (=> (not res!1033564) (not e!844770))))

(assert (=> b!1513594 (= res!1033564 (validKeyInArray!0 (select (arr!48663 a!2804) i!961)))))

(declare-fun b!1513595 () Bool)

(assert (=> b!1513595 (= e!844771 e!844775)))

(declare-fun res!1033560 () Bool)

(assert (=> b!1513595 (=> res!1033560 e!844775)))

(assert (=> b!1513595 (= res!1033560 (or (not (= (select (arr!48663 a!2804) j!70) lt!656004)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48663 a!2804) index!487) (select (arr!48663 a!2804) j!70)) (not (= (select (arr!48663 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1513596 () Bool)

(declare-fun res!1033559 () Bool)

(assert (=> b!1513596 (=> (not res!1033559) (not e!844770))))

(assert (=> b!1513596 (= res!1033559 (and (= (size!49214 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49214 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49214 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1513597 () Bool)

(declare-fun res!1033569 () Bool)

(assert (=> b!1513597 (=> (not res!1033569) (not e!844771))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!100861 (_ BitVec 32)) SeekEntryResult!12855)

(assert (=> b!1513597 (= res!1033569 (= (seekEntry!0 (select (arr!48663 a!2804) j!70) a!2804 mask!2512) (Found!12855 j!70)))))

(assert (= (and start!129092 res!1033568) b!1513596))

(assert (= (and b!1513596 res!1033559) b!1513594))

(assert (= (and b!1513594 res!1033564) b!1513592))

(assert (= (and b!1513592 res!1033566) b!1513587))

(assert (= (and b!1513587 res!1033561) b!1513586))

(assert (= (and b!1513586 res!1033572) b!1513593))

(assert (= (and b!1513593 res!1033567) b!1513590))

(assert (= (and b!1513590 res!1033565) b!1513588))

(assert (= (and b!1513588 res!1033571) b!1513584))

(assert (= (and b!1513584 res!1033562) b!1513591))

(assert (= (and b!1513591 res!1033570) b!1513597))

(assert (= (and b!1513597 res!1033569) b!1513595))

(assert (= (and b!1513595 (not res!1033560)) b!1513589))

(assert (= (and b!1513589 res!1033563) b!1513585))

(declare-fun m!1396517 () Bool)

(assert (=> b!1513591 m!1396517))

(declare-fun m!1396519 () Bool)

(assert (=> b!1513591 m!1396519))

(declare-fun m!1396521 () Bool)

(assert (=> b!1513588 m!1396521))

(assert (=> b!1513588 m!1396521))

(declare-fun m!1396523 () Bool)

(assert (=> b!1513588 m!1396523))

(declare-fun m!1396525 () Bool)

(assert (=> b!1513585 m!1396525))

(declare-fun m!1396527 () Bool)

(assert (=> b!1513585 m!1396527))

(declare-fun m!1396529 () Bool)

(assert (=> b!1513586 m!1396529))

(assert (=> b!1513597 m!1396521))

(assert (=> b!1513597 m!1396521))

(declare-fun m!1396531 () Bool)

(assert (=> b!1513597 m!1396531))

(assert (=> b!1513590 m!1396521))

(assert (=> b!1513590 m!1396521))

(declare-fun m!1396533 () Bool)

(assert (=> b!1513590 m!1396533))

(assert (=> b!1513590 m!1396533))

(assert (=> b!1513590 m!1396521))

(declare-fun m!1396535 () Bool)

(assert (=> b!1513590 m!1396535))

(declare-fun m!1396537 () Bool)

(assert (=> b!1513594 m!1396537))

(assert (=> b!1513594 m!1396537))

(declare-fun m!1396539 () Bool)

(assert (=> b!1513594 m!1396539))

(assert (=> b!1513589 m!1396521))

(assert (=> b!1513589 m!1396521))

(declare-fun m!1396541 () Bool)

(assert (=> b!1513589 m!1396541))

(assert (=> b!1513589 m!1396521))

(declare-fun m!1396543 () Bool)

(assert (=> b!1513589 m!1396543))

(declare-fun m!1396545 () Bool)

(assert (=> b!1513587 m!1396545))

(declare-fun m!1396547 () Bool)

(assert (=> b!1513584 m!1396547))

(assert (=> b!1513584 m!1396547))

(declare-fun m!1396549 () Bool)

(assert (=> b!1513584 m!1396549))

(declare-fun m!1396551 () Bool)

(assert (=> b!1513584 m!1396551))

(declare-fun m!1396553 () Bool)

(assert (=> b!1513584 m!1396553))

(assert (=> b!1513595 m!1396521))

(declare-fun m!1396555 () Bool)

(assert (=> b!1513595 m!1396555))

(assert (=> b!1513592 m!1396521))

(assert (=> b!1513592 m!1396521))

(declare-fun m!1396557 () Bool)

(assert (=> b!1513592 m!1396557))

(declare-fun m!1396559 () Bool)

(assert (=> start!129092 m!1396559))

(declare-fun m!1396561 () Bool)

(assert (=> start!129092 m!1396561))

(push 1)

(assert (not b!1513587))

(assert (not b!1513590))

(assert (not start!129092))

(assert (not b!1513597))

(assert (not b!1513592))

(assert (not b!1513584))

