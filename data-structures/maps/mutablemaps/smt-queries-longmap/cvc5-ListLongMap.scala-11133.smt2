; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130126 () Bool)

(assert start!130126)

(declare-fun b!1526733 () Bool)

(declare-fun res!1044914 () Bool)

(declare-fun e!851000 () Bool)

(assert (=> b!1526733 (=> (not res!1044914) (not e!851000))))

(declare-datatypes ((array!101466 0))(
  ( (array!101467 (arr!48955 (Array (_ BitVec 32) (_ BitVec 64))) (size!49506 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101466)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101466 (_ BitVec 32)) Bool)

(assert (=> b!1526733 (= res!1044914 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1526734 () Bool)

(declare-fun res!1044915 () Bool)

(assert (=> b!1526734 (=> (not res!1044915) (not e!851000))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1526734 (= res!1044915 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49506 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49506 a!2804))))))

(declare-fun b!1526735 () Bool)

(declare-fun e!850996 () Bool)

(declare-fun e!850998 () Bool)

(assert (=> b!1526735 (= e!850996 e!850998)))

(declare-fun res!1044912 () Bool)

(assert (=> b!1526735 (=> res!1044912 e!850998)))

(declare-fun lt!661148 () (_ BitVec 64))

(declare-fun j!70 () (_ BitVec 32))

(assert (=> b!1526735 (= res!1044912 (or (not (= (select (arr!48955 a!2804) j!70) lt!661148)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48955 a!2804) index!487) (select (arr!48955 a!2804) j!70)) (not (= (select (arr!48955 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1526736 () Bool)

(declare-fun res!1044916 () Bool)

(assert (=> b!1526736 (=> (not res!1044916) (not e!851000))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1526736 (= res!1044916 (validKeyInArray!0 (select (arr!48955 a!2804) i!961)))))

(declare-fun b!1526737 () Bool)

(declare-fun e!850999 () Bool)

(declare-fun e!850997 () Bool)

(assert (=> b!1526737 (= e!850999 e!850997)))

(declare-fun res!1044917 () Bool)

(assert (=> b!1526737 (=> (not res!1044917) (not e!850997))))

(declare-fun lt!661146 () array!101466)

(declare-datatypes ((SeekEntryResult!13141 0))(
  ( (MissingZero!13141 (index!54958 (_ BitVec 32))) (Found!13141 (index!54959 (_ BitVec 32))) (Intermediate!13141 (undefined!13953 Bool) (index!54960 (_ BitVec 32)) (x!136662 (_ BitVec 32))) (Undefined!13141) (MissingVacant!13141 (index!54961 (_ BitVec 32))) )
))
(declare-fun lt!661150 () SeekEntryResult!13141)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101466 (_ BitVec 32)) SeekEntryResult!13141)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1526737 (= res!1044917 (= lt!661150 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!661148 mask!2512) lt!661148 lt!661146 mask!2512)))))

(assert (=> b!1526737 (= lt!661148 (select (store (arr!48955 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1526737 (= lt!661146 (array!101467 (store (arr!48955 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49506 a!2804)))))

(declare-fun b!1526738 () Bool)

(declare-fun res!1044909 () Bool)

(assert (=> b!1526738 (=> (not res!1044909) (not e!851000))))

(declare-datatypes ((List!35618 0))(
  ( (Nil!35615) (Cons!35614 (h!37048 (_ BitVec 64)) (t!50319 List!35618)) )
))
(declare-fun arrayNoDuplicates!0 (array!101466 (_ BitVec 32) List!35618) Bool)

(assert (=> b!1526738 (= res!1044909 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35615))))

(declare-fun b!1526739 () Bool)

(assert (=> b!1526739 (= e!850997 (not true))))

(assert (=> b!1526739 e!850996))

(declare-fun res!1044908 () Bool)

(assert (=> b!1526739 (=> (not res!1044908) (not e!850996))))

(assert (=> b!1526739 (= res!1044908 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!51022 0))(
  ( (Unit!51023) )
))
(declare-fun lt!661147 () Unit!51022)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101466 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51022)

(assert (=> b!1526739 (= lt!661147 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1526740 () Bool)

(declare-fun res!1044918 () Bool)

(assert (=> b!1526740 (=> (not res!1044918) (not e!850996))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!101466 (_ BitVec 32)) SeekEntryResult!13141)

(assert (=> b!1526740 (= res!1044918 (= (seekEntry!0 (select (arr!48955 a!2804) j!70) a!2804 mask!2512) (Found!13141 j!70)))))

(declare-fun b!1526741 () Bool)

(declare-fun res!1044907 () Bool)

(assert (=> b!1526741 (=> (not res!1044907) (not e!850999))))

(declare-fun lt!661149 () SeekEntryResult!13141)

(assert (=> b!1526741 (= res!1044907 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48955 a!2804) j!70) a!2804 mask!2512) lt!661149))))

(declare-fun res!1044905 () Bool)

(assert (=> start!130126 (=> (not res!1044905) (not e!851000))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130126 (= res!1044905 (validMask!0 mask!2512))))

(assert (=> start!130126 e!851000))

(assert (=> start!130126 true))

(declare-fun array_inv!37900 (array!101466) Bool)

(assert (=> start!130126 (array_inv!37900 a!2804)))

(declare-fun b!1526742 () Bool)

(declare-fun e!850995 () Bool)

(assert (=> b!1526742 (= e!850998 e!850995)))

(declare-fun res!1044906 () Bool)

(assert (=> b!1526742 (=> (not res!1044906) (not e!850995))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101466 (_ BitVec 32)) SeekEntryResult!13141)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101466 (_ BitVec 32)) SeekEntryResult!13141)

(assert (=> b!1526742 (= res!1044906 (= (seekEntryOrOpen!0 (select (arr!48955 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48955 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1526743 () Bool)

(assert (=> b!1526743 (= e!851000 e!850999)))

(declare-fun res!1044913 () Bool)

(assert (=> b!1526743 (=> (not res!1044913) (not e!850999))))

(assert (=> b!1526743 (= res!1044913 (= lt!661150 lt!661149))))

(assert (=> b!1526743 (= lt!661149 (Intermediate!13141 false resIndex!21 resX!21))))

(assert (=> b!1526743 (= lt!661150 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48955 a!2804) j!70) mask!2512) (select (arr!48955 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1526744 () Bool)

(declare-fun res!1044910 () Bool)

(assert (=> b!1526744 (=> (not res!1044910) (not e!851000))))

(assert (=> b!1526744 (= res!1044910 (validKeyInArray!0 (select (arr!48955 a!2804) j!70)))))

(declare-fun b!1526745 () Bool)

(assert (=> b!1526745 (= e!850995 (= (seekEntryOrOpen!0 lt!661148 lt!661146 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!661148 lt!661146 mask!2512)))))

(declare-fun b!1526746 () Bool)

(declare-fun res!1044911 () Bool)

(assert (=> b!1526746 (=> (not res!1044911) (not e!851000))))

(assert (=> b!1526746 (= res!1044911 (and (= (size!49506 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49506 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49506 a!2804)) (not (= i!961 j!70))))))

(assert (= (and start!130126 res!1044905) b!1526746))

(assert (= (and b!1526746 res!1044911) b!1526736))

(assert (= (and b!1526736 res!1044916) b!1526744))

(assert (= (and b!1526744 res!1044910) b!1526733))

(assert (= (and b!1526733 res!1044914) b!1526738))

(assert (= (and b!1526738 res!1044909) b!1526734))

(assert (= (and b!1526734 res!1044915) b!1526743))

(assert (= (and b!1526743 res!1044913) b!1526741))

(assert (= (and b!1526741 res!1044907) b!1526737))

(assert (= (and b!1526737 res!1044917) b!1526739))

(assert (= (and b!1526739 res!1044908) b!1526740))

(assert (= (and b!1526740 res!1044918) b!1526735))

(assert (= (and b!1526735 (not res!1044912)) b!1526742))

(assert (= (and b!1526742 res!1044906) b!1526745))

(declare-fun m!1409625 () Bool)

(assert (=> b!1526745 m!1409625))

(declare-fun m!1409627 () Bool)

(assert (=> b!1526745 m!1409627))

(declare-fun m!1409629 () Bool)

(assert (=> b!1526735 m!1409629))

(declare-fun m!1409631 () Bool)

(assert (=> b!1526735 m!1409631))

(declare-fun m!1409633 () Bool)

(assert (=> start!130126 m!1409633))

(declare-fun m!1409635 () Bool)

(assert (=> start!130126 m!1409635))

(assert (=> b!1526742 m!1409629))

(assert (=> b!1526742 m!1409629))

(declare-fun m!1409637 () Bool)

(assert (=> b!1526742 m!1409637))

(assert (=> b!1526742 m!1409629))

(declare-fun m!1409639 () Bool)

(assert (=> b!1526742 m!1409639))

(declare-fun m!1409641 () Bool)

(assert (=> b!1526737 m!1409641))

(assert (=> b!1526737 m!1409641))

(declare-fun m!1409643 () Bool)

(assert (=> b!1526737 m!1409643))

(declare-fun m!1409645 () Bool)

(assert (=> b!1526737 m!1409645))

(declare-fun m!1409647 () Bool)

(assert (=> b!1526737 m!1409647))

(assert (=> b!1526744 m!1409629))

(assert (=> b!1526744 m!1409629))

(declare-fun m!1409649 () Bool)

(assert (=> b!1526744 m!1409649))

(declare-fun m!1409651 () Bool)

(assert (=> b!1526736 m!1409651))

(assert (=> b!1526736 m!1409651))

(declare-fun m!1409653 () Bool)

(assert (=> b!1526736 m!1409653))

(declare-fun m!1409655 () Bool)

(assert (=> b!1526733 m!1409655))

(assert (=> b!1526743 m!1409629))

(assert (=> b!1526743 m!1409629))

(declare-fun m!1409657 () Bool)

(assert (=> b!1526743 m!1409657))

(assert (=> b!1526743 m!1409657))

(assert (=> b!1526743 m!1409629))

(declare-fun m!1409659 () Bool)

(assert (=> b!1526743 m!1409659))

(assert (=> b!1526741 m!1409629))

(assert (=> b!1526741 m!1409629))

(declare-fun m!1409661 () Bool)

(assert (=> b!1526741 m!1409661))

(declare-fun m!1409663 () Bool)

(assert (=> b!1526739 m!1409663))

(declare-fun m!1409665 () Bool)

(assert (=> b!1526739 m!1409665))

(assert (=> b!1526740 m!1409629))

(assert (=> b!1526740 m!1409629))

(declare-fun m!1409667 () Bool)

(assert (=> b!1526740 m!1409667))

(declare-fun m!1409669 () Bool)

(assert (=> b!1526738 m!1409669))

(push 1)

