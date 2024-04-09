; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125378 () Bool)

(assert start!125378)

(declare-fun b!1464475 () Bool)

(declare-fun res!993638 () Bool)

(declare-fun e!823014 () Bool)

(assert (=> b!1464475 (=> (not res!993638) (not e!823014))))

(declare-datatypes ((array!98743 0))(
  ( (array!98744 (arr!47655 (Array (_ BitVec 32) (_ BitVec 64))) (size!48206 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98743)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11930 0))(
  ( (MissingZero!11930 (index!50111 (_ BitVec 32))) (Found!11930 (index!50112 (_ BitVec 32))) (Intermediate!11930 (undefined!12742 Bool) (index!50113 (_ BitVec 32)) (x!131694 (_ BitVec 32))) (Undefined!11930) (MissingVacant!11930 (index!50114 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98743 (_ BitVec 32)) SeekEntryResult!11930)

(assert (=> b!1464475 (= res!993638 (= (seekEntryOrOpen!0 (select (arr!47655 a!2862) j!93) a!2862 mask!2687) (Found!11930 j!93)))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun b!1464476 () Bool)

(declare-fun lt!641064 () (_ BitVec 64))

(declare-fun e!823022 () Bool)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun lt!641065 () (_ BitVec 32))

(declare-fun lt!641062 () array!98743)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98743 (_ BitVec 32)) SeekEntryResult!11930)

(assert (=> b!1464476 (= e!823022 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641065 intermediateAfterIndex!19 lt!641064 lt!641062 mask!2687) (seekEntryOrOpen!0 lt!641064 lt!641062 mask!2687))))))

(declare-fun b!1464477 () Bool)

(declare-fun e!823017 () Bool)

(declare-fun e!823021 () Bool)

(assert (=> b!1464477 (= e!823017 e!823021)))

(declare-fun res!993639 () Bool)

(assert (=> b!1464477 (=> res!993639 e!823021)))

(assert (=> b!1464477 (= res!993639 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!641065 #b00000000000000000000000000000000) (bvsge lt!641065 (size!48206 a!2862))))))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1464477 (= lt!641065 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1464478 () Bool)

(declare-fun e!823018 () Bool)

(declare-fun e!823019 () Bool)

(assert (=> b!1464478 (= e!823018 e!823019)))

(declare-fun res!993633 () Bool)

(assert (=> b!1464478 (=> (not res!993633) (not e!823019))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun lt!641068 () SeekEntryResult!11930)

(assert (=> b!1464478 (= res!993633 (= lt!641068 (Intermediate!11930 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98743 (_ BitVec 32)) SeekEntryResult!11930)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1464478 (= lt!641068 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!641064 mask!2687) lt!641064 lt!641062 mask!2687))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1464478 (= lt!641064 (select (store (arr!47655 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1464479 () Bool)

(declare-fun res!993645 () Bool)

(assert (=> b!1464479 (=> (not res!993645) (not e!823019))))

(declare-fun e!823013 () Bool)

(assert (=> b!1464479 (= res!993645 e!823013)))

(declare-fun c!134936 () Bool)

(assert (=> b!1464479 (= c!134936 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1464480 () Bool)

(declare-fun res!993642 () Bool)

(declare-fun e!823016 () Bool)

(assert (=> b!1464480 (=> (not res!993642) (not e!823016))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1464480 (= res!993642 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48206 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48206 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48206 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1464482 () Bool)

(assert (=> b!1464482 (= e!823019 (not e!823017))))

(declare-fun res!993632 () Bool)

(assert (=> b!1464482 (=> res!993632 e!823017)))

(assert (=> b!1464482 (= res!993632 (or (and (= (select (arr!47655 a!2862) index!646) (select (store (arr!47655 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47655 a!2862) index!646) (select (arr!47655 a!2862) j!93))) (= (select (arr!47655 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(assert (=> b!1464482 e!823014))

(declare-fun res!993646 () Bool)

(assert (=> b!1464482 (=> (not res!993646) (not e!823014))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98743 (_ BitVec 32)) Bool)

(assert (=> b!1464482 (= res!993646 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49304 0))(
  ( (Unit!49305) )
))
(declare-fun lt!641067 () Unit!49304)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98743 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49304)

(assert (=> b!1464482 (= lt!641067 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1464483 () Bool)

(assert (=> b!1464483 (= e!823021 true)))

(declare-fun lt!641066 () Bool)

(assert (=> b!1464483 (= lt!641066 e!823022)))

(declare-fun c!134935 () Bool)

(assert (=> b!1464483 (= c!134935 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1464484 () Bool)

(declare-fun res!993635 () Bool)

(assert (=> b!1464484 (=> (not res!993635) (not e!823018))))

(declare-fun lt!641063 () SeekEntryResult!11930)

(assert (=> b!1464484 (= res!993635 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47655 a!2862) j!93) a!2862 mask!2687) lt!641063))))

(declare-fun b!1464485 () Bool)

(declare-fun res!993643 () Bool)

(assert (=> b!1464485 (=> res!993643 e!823021)))

(assert (=> b!1464485 (= res!993643 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641065 (select (arr!47655 a!2862) j!93) a!2862 mask!2687) lt!641063)))))

(declare-fun b!1464486 () Bool)

(assert (=> b!1464486 (= e!823022 (not (= lt!641068 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641065 lt!641064 lt!641062 mask!2687))))))

(declare-fun b!1464487 () Bool)

(declare-fun res!993636 () Bool)

(assert (=> b!1464487 (=> (not res!993636) (not e!823016))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1464487 (= res!993636 (validKeyInArray!0 (select (arr!47655 a!2862) j!93)))))

(declare-fun b!1464488 () Bool)

(assert (=> b!1464488 (= e!823013 (= lt!641068 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!641064 lt!641062 mask!2687)))))

(declare-fun b!1464489 () Bool)

(declare-fun e!823020 () Bool)

(assert (=> b!1464489 (= e!823020 e!823018)))

(declare-fun res!993634 () Bool)

(assert (=> b!1464489 (=> (not res!993634) (not e!823018))))

(assert (=> b!1464489 (= res!993634 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47655 a!2862) j!93) mask!2687) (select (arr!47655 a!2862) j!93) a!2862 mask!2687) lt!641063))))

(assert (=> b!1464489 (= lt!641063 (Intermediate!11930 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1464490 () Bool)

(declare-fun res!993648 () Bool)

(assert (=> b!1464490 (=> (not res!993648) (not e!823016))))

(assert (=> b!1464490 (= res!993648 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1464491 () Bool)

(assert (=> b!1464491 (= e!823016 e!823020)))

(declare-fun res!993647 () Bool)

(assert (=> b!1464491 (=> (not res!993647) (not e!823020))))

(assert (=> b!1464491 (= res!993647 (= (select (store (arr!47655 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1464491 (= lt!641062 (array!98744 (store (arr!47655 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48206 a!2862)))))

(declare-fun b!1464492 () Bool)

(declare-fun res!993640 () Bool)

(assert (=> b!1464492 (=> (not res!993640) (not e!823019))))

(assert (=> b!1464492 (= res!993640 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1464493 () Bool)

(assert (=> b!1464493 (= e!823013 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!641064 lt!641062 mask!2687) (seekEntryOrOpen!0 lt!641064 lt!641062 mask!2687)))))

(declare-fun b!1464494 () Bool)

(declare-fun res!993631 () Bool)

(assert (=> b!1464494 (=> (not res!993631) (not e!823016))))

(assert (=> b!1464494 (= res!993631 (and (= (size!48206 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48206 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48206 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1464481 () Bool)

(assert (=> b!1464481 (= e!823014 (or (= (select (arr!47655 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47655 a!2862) intermediateBeforeIndex!19) (select (arr!47655 a!2862) j!93))))))

(declare-fun res!993641 () Bool)

(assert (=> start!125378 (=> (not res!993641) (not e!823016))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125378 (= res!993641 (validMask!0 mask!2687))))

(assert (=> start!125378 e!823016))

(assert (=> start!125378 true))

(declare-fun array_inv!36600 (array!98743) Bool)

(assert (=> start!125378 (array_inv!36600 a!2862)))

(declare-fun b!1464495 () Bool)

(declare-fun res!993637 () Bool)

(assert (=> b!1464495 (=> (not res!993637) (not e!823016))))

(assert (=> b!1464495 (= res!993637 (validKeyInArray!0 (select (arr!47655 a!2862) i!1006)))))

(declare-fun b!1464496 () Bool)

(declare-fun res!993644 () Bool)

(assert (=> b!1464496 (=> (not res!993644) (not e!823016))))

(declare-datatypes ((List!34336 0))(
  ( (Nil!34333) (Cons!34332 (h!35682 (_ BitVec 64)) (t!49037 List!34336)) )
))
(declare-fun arrayNoDuplicates!0 (array!98743 (_ BitVec 32) List!34336) Bool)

(assert (=> b!1464496 (= res!993644 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34333))))

(assert (= (and start!125378 res!993641) b!1464494))

(assert (= (and b!1464494 res!993631) b!1464495))

(assert (= (and b!1464495 res!993637) b!1464487))

(assert (= (and b!1464487 res!993636) b!1464490))

(assert (= (and b!1464490 res!993648) b!1464496))

(assert (= (and b!1464496 res!993644) b!1464480))

(assert (= (and b!1464480 res!993642) b!1464491))

(assert (= (and b!1464491 res!993647) b!1464489))

(assert (= (and b!1464489 res!993634) b!1464484))

(assert (= (and b!1464484 res!993635) b!1464478))

(assert (= (and b!1464478 res!993633) b!1464479))

(assert (= (and b!1464479 c!134936) b!1464488))

(assert (= (and b!1464479 (not c!134936)) b!1464493))

(assert (= (and b!1464479 res!993645) b!1464492))

(assert (= (and b!1464492 res!993640) b!1464482))

(assert (= (and b!1464482 res!993646) b!1464475))

(assert (= (and b!1464475 res!993638) b!1464481))

(assert (= (and b!1464482 (not res!993632)) b!1464477))

(assert (= (and b!1464477 (not res!993639)) b!1464485))

(assert (= (and b!1464485 (not res!993643)) b!1464483))

(assert (= (and b!1464483 c!134935) b!1464486))

(assert (= (and b!1464483 (not c!134935)) b!1464476))

(declare-fun m!1351733 () Bool)

(assert (=> b!1464493 m!1351733))

(declare-fun m!1351735 () Bool)

(assert (=> b!1464493 m!1351735))

(declare-fun m!1351737 () Bool)

(assert (=> b!1464478 m!1351737))

(assert (=> b!1464478 m!1351737))

(declare-fun m!1351739 () Bool)

(assert (=> b!1464478 m!1351739))

(declare-fun m!1351741 () Bool)

(assert (=> b!1464478 m!1351741))

(declare-fun m!1351743 () Bool)

(assert (=> b!1464478 m!1351743))

(declare-fun m!1351745 () Bool)

(assert (=> b!1464487 m!1351745))

(assert (=> b!1464487 m!1351745))

(declare-fun m!1351747 () Bool)

(assert (=> b!1464487 m!1351747))

(assert (=> b!1464491 m!1351741))

(declare-fun m!1351749 () Bool)

(assert (=> b!1464491 m!1351749))

(declare-fun m!1351751 () Bool)

(assert (=> b!1464482 m!1351751))

(assert (=> b!1464482 m!1351741))

(declare-fun m!1351753 () Bool)

(assert (=> b!1464482 m!1351753))

(declare-fun m!1351755 () Bool)

(assert (=> b!1464482 m!1351755))

(declare-fun m!1351757 () Bool)

(assert (=> b!1464482 m!1351757))

(assert (=> b!1464482 m!1351745))

(assert (=> b!1464485 m!1351745))

(assert (=> b!1464485 m!1351745))

(declare-fun m!1351759 () Bool)

(assert (=> b!1464485 m!1351759))

(declare-fun m!1351761 () Bool)

(assert (=> b!1464486 m!1351761))

(assert (=> b!1464489 m!1351745))

(assert (=> b!1464489 m!1351745))

(declare-fun m!1351763 () Bool)

(assert (=> b!1464489 m!1351763))

(assert (=> b!1464489 m!1351763))

(assert (=> b!1464489 m!1351745))

(declare-fun m!1351765 () Bool)

(assert (=> b!1464489 m!1351765))

(declare-fun m!1351767 () Bool)

(assert (=> b!1464477 m!1351767))

(declare-fun m!1351769 () Bool)

(assert (=> b!1464496 m!1351769))

(assert (=> b!1464475 m!1351745))

(assert (=> b!1464475 m!1351745))

(declare-fun m!1351771 () Bool)

(assert (=> b!1464475 m!1351771))

(declare-fun m!1351773 () Bool)

(assert (=> b!1464476 m!1351773))

(assert (=> b!1464476 m!1351735))

(declare-fun m!1351775 () Bool)

(assert (=> b!1464488 m!1351775))

(declare-fun m!1351777 () Bool)

(assert (=> b!1464481 m!1351777))

(assert (=> b!1464481 m!1351745))

(declare-fun m!1351779 () Bool)

(assert (=> start!125378 m!1351779))

(declare-fun m!1351781 () Bool)

(assert (=> start!125378 m!1351781))

(assert (=> b!1464484 m!1351745))

(assert (=> b!1464484 m!1351745))

(declare-fun m!1351783 () Bool)

(assert (=> b!1464484 m!1351783))

(declare-fun m!1351785 () Bool)

(assert (=> b!1464495 m!1351785))

(assert (=> b!1464495 m!1351785))

(declare-fun m!1351787 () Bool)

(assert (=> b!1464495 m!1351787))

(declare-fun m!1351789 () Bool)

(assert (=> b!1464490 m!1351789))

(push 1)

