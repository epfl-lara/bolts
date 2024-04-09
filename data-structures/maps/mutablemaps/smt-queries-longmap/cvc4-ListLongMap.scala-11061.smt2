; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129248 () Bool)

(assert start!129248)

(declare-fun b!1516663 () Bool)

(declare-fun res!1036640 () Bool)

(declare-fun e!846284 () Bool)

(assert (=> b!1516663 (=> (not res!1036640) (not e!846284))))

(declare-datatypes ((array!101017 0))(
  ( (array!101018 (arr!48741 (Array (_ BitVec 32) (_ BitVec 64))) (size!49292 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101017)

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1516663 (= res!1036640 (validKeyInArray!0 (select (arr!48741 a!2804) i!961)))))

(declare-fun b!1516665 () Bool)

(declare-fun res!1036643 () Bool)

(assert (=> b!1516665 (=> (not res!1036643) (not e!846284))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1516665 (= res!1036643 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49292 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49292 a!2804))))))

(declare-fun b!1516666 () Bool)

(declare-fun e!846287 () Bool)

(declare-fun e!846286 () Bool)

(assert (=> b!1516666 (= e!846287 (not e!846286))))

(declare-fun res!1036642 () Bool)

(assert (=> b!1516666 (=> res!1036642 e!846286)))

(declare-fun j!70 () (_ BitVec 32))

(assert (=> b!1516666 (= res!1036642 (or (not (= (select (arr!48741 a!2804) j!70) (select (store (arr!48741 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (= x!534 resX!21)))))

(declare-fun e!846282 () Bool)

(assert (=> b!1516666 e!846282))

(declare-fun res!1036645 () Bool)

(assert (=> b!1516666 (=> (not res!1036645) (not e!846282))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101017 (_ BitVec 32)) Bool)

(assert (=> b!1516666 (= res!1036645 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50690 0))(
  ( (Unit!50691) )
))
(declare-fun lt!657462 () Unit!50690)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101017 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50690)

(assert (=> b!1516666 (= lt!657462 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1516667 () Bool)

(declare-fun res!1036648 () Bool)

(assert (=> b!1516667 (=> (not res!1036648) (not e!846284))))

(assert (=> b!1516667 (= res!1036648 (and (= (size!49292 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49292 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49292 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1516668 () Bool)

(declare-fun res!1036639 () Bool)

(assert (=> b!1516668 (=> (not res!1036639) (not e!846284))))

(declare-datatypes ((List!35404 0))(
  ( (Nil!35401) (Cons!35400 (h!36813 (_ BitVec 64)) (t!50105 List!35404)) )
))
(declare-fun arrayNoDuplicates!0 (array!101017 (_ BitVec 32) List!35404) Bool)

(assert (=> b!1516668 (= res!1036639 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35401))))

(declare-fun b!1516669 () Bool)

(declare-fun res!1036644 () Bool)

(assert (=> b!1516669 (=> (not res!1036644) (not e!846284))))

(assert (=> b!1516669 (= res!1036644 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1516670 () Bool)

(declare-fun e!846285 () Bool)

(assert (=> b!1516670 (= e!846285 true)))

(declare-fun lt!657465 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12933 0))(
  ( (MissingZero!12933 (index!54126 (_ BitVec 32))) (Found!12933 (index!54127 (_ BitVec 32))) (Intermediate!12933 (undefined!13745 Bool) (index!54128 (_ BitVec 32)) (x!135824 (_ BitVec 32))) (Undefined!12933) (MissingVacant!12933 (index!54129 (_ BitVec 32))) )
))
(declare-fun lt!657463 () SeekEntryResult!12933)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101017 (_ BitVec 32)) SeekEntryResult!12933)

(assert (=> b!1516670 (= lt!657463 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!534) lt!657465 (select (arr!48741 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1516671 () Bool)

(declare-fun res!1036646 () Bool)

(assert (=> b!1516671 (=> (not res!1036646) (not e!846287))))

(declare-fun lt!657464 () SeekEntryResult!12933)

(assert (=> b!1516671 (= res!1036646 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48741 a!2804) j!70) a!2804 mask!2512) lt!657464))))

(declare-fun b!1516672 () Bool)

(assert (=> b!1516672 (= e!846286 e!846285)))

(declare-fun res!1036649 () Bool)

(assert (=> b!1516672 (=> res!1036649 e!846285)))

(assert (=> b!1516672 (= res!1036649 (or (bvslt (bvadd #b00000000000000000000000000000001 x!534) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!534) #b01111111111111111111111111111110) (bvslt lt!657465 #b00000000000000000000000000000000) (bvsge lt!657465 (size!49292 a!2804))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1516672 (= lt!657465 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1516673 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101017 (_ BitVec 32)) SeekEntryResult!12933)

(assert (=> b!1516673 (= e!846282 (= (seekEntry!0 (select (arr!48741 a!2804) j!70) a!2804 mask!2512) (Found!12933 j!70)))))

(declare-fun res!1036638 () Bool)

(assert (=> start!129248 (=> (not res!1036638) (not e!846284))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129248 (= res!1036638 (validMask!0 mask!2512))))

(assert (=> start!129248 e!846284))

(assert (=> start!129248 true))

(declare-fun array_inv!37686 (array!101017) Bool)

(assert (=> start!129248 (array_inv!37686 a!2804)))

(declare-fun b!1516664 () Bool)

(assert (=> b!1516664 (= e!846284 e!846287)))

(declare-fun res!1036650 () Bool)

(assert (=> b!1516664 (=> (not res!1036650) (not e!846287))))

(declare-fun lt!657466 () SeekEntryResult!12933)

(assert (=> b!1516664 (= res!1036650 (= lt!657466 lt!657464))))

(assert (=> b!1516664 (= lt!657464 (Intermediate!12933 false resIndex!21 resX!21))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1516664 (= lt!657466 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48741 a!2804) j!70) mask!2512) (select (arr!48741 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1516674 () Bool)

(declare-fun res!1036647 () Bool)

(assert (=> b!1516674 (=> (not res!1036647) (not e!846284))))

(assert (=> b!1516674 (= res!1036647 (validKeyInArray!0 (select (arr!48741 a!2804) j!70)))))

(declare-fun b!1516675 () Bool)

(declare-fun res!1036641 () Bool)

(assert (=> b!1516675 (=> (not res!1036641) (not e!846287))))

(assert (=> b!1516675 (= res!1036641 (= lt!657466 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48741 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48741 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101018 (store (arr!48741 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49292 a!2804)) mask!2512)))))

(assert (= (and start!129248 res!1036638) b!1516667))

(assert (= (and b!1516667 res!1036648) b!1516663))

(assert (= (and b!1516663 res!1036640) b!1516674))

(assert (= (and b!1516674 res!1036647) b!1516669))

(assert (= (and b!1516669 res!1036644) b!1516668))

(assert (= (and b!1516668 res!1036639) b!1516665))

(assert (= (and b!1516665 res!1036643) b!1516664))

(assert (= (and b!1516664 res!1036650) b!1516671))

(assert (= (and b!1516671 res!1036646) b!1516675))

(assert (= (and b!1516675 res!1036641) b!1516666))

(assert (= (and b!1516666 res!1036645) b!1516673))

(assert (= (and b!1516666 (not res!1036642)) b!1516672))

(assert (= (and b!1516672 (not res!1036649)) b!1516670))

(declare-fun m!1399991 () Bool)

(assert (=> b!1516673 m!1399991))

(assert (=> b!1516673 m!1399991))

(declare-fun m!1399993 () Bool)

(assert (=> b!1516673 m!1399993))

(declare-fun m!1399995 () Bool)

(assert (=> start!129248 m!1399995))

(declare-fun m!1399997 () Bool)

(assert (=> start!129248 m!1399997))

(declare-fun m!1399999 () Bool)

(assert (=> b!1516668 m!1399999))

(assert (=> b!1516674 m!1399991))

(assert (=> b!1516674 m!1399991))

(declare-fun m!1400001 () Bool)

(assert (=> b!1516674 m!1400001))

(assert (=> b!1516670 m!1399991))

(assert (=> b!1516670 m!1399991))

(declare-fun m!1400003 () Bool)

(assert (=> b!1516670 m!1400003))

(declare-fun m!1400005 () Bool)

(assert (=> b!1516669 m!1400005))

(declare-fun m!1400007 () Bool)

(assert (=> b!1516663 m!1400007))

(assert (=> b!1516663 m!1400007))

(declare-fun m!1400009 () Bool)

(assert (=> b!1516663 m!1400009))

(assert (=> b!1516666 m!1399991))

(declare-fun m!1400011 () Bool)

(assert (=> b!1516666 m!1400011))

(declare-fun m!1400013 () Bool)

(assert (=> b!1516666 m!1400013))

(declare-fun m!1400015 () Bool)

(assert (=> b!1516666 m!1400015))

(declare-fun m!1400017 () Bool)

(assert (=> b!1516666 m!1400017))

(assert (=> b!1516675 m!1400013))

(assert (=> b!1516675 m!1400015))

(assert (=> b!1516675 m!1400015))

(declare-fun m!1400019 () Bool)

(assert (=> b!1516675 m!1400019))

(assert (=> b!1516675 m!1400019))

(assert (=> b!1516675 m!1400015))

(declare-fun m!1400021 () Bool)

(assert (=> b!1516675 m!1400021))

(assert (=> b!1516671 m!1399991))

(assert (=> b!1516671 m!1399991))

(declare-fun m!1400023 () Bool)

(assert (=> b!1516671 m!1400023))

(assert (=> b!1516664 m!1399991))

(assert (=> b!1516664 m!1399991))

(declare-fun m!1400025 () Bool)

(assert (=> b!1516664 m!1400025))

(assert (=> b!1516664 m!1400025))

(assert (=> b!1516664 m!1399991))

(declare-fun m!1400027 () Bool)

(assert (=> b!1516664 m!1400027))

(declare-fun m!1400029 () Bool)

(assert (=> b!1516672 m!1400029))

(push 1)

(assert (not b!1516668))

(assert (not start!129248))

(assert (not b!1516664))

(assert (not b!1516674))

(assert (not b!1516673))

