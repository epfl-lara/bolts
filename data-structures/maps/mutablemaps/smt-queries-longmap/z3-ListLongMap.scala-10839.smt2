; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!126924 () Bool)

(assert start!126924)

(declare-fun b!1490540 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun lt!649948 () (_ BitVec 64))

(declare-datatypes ((array!99614 0))(
  ( (array!99615 (arr!48074 (Array (_ BitVec 32) (_ BitVec 64))) (size!48625 (_ BitVec 32))) )
))
(declare-fun lt!649943 () array!99614)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun e!835250 () Bool)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12337 0))(
  ( (MissingZero!12337 (index!51739 (_ BitVec 32))) (Found!12337 (index!51740 (_ BitVec 32))) (Intermediate!12337 (undefined!13149 Bool) (index!51741 (_ BitVec 32)) (x!133332 (_ BitVec 32))) (Undefined!12337) (MissingVacant!12337 (index!51742 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99614 (_ BitVec 32)) SeekEntryResult!12337)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99614 (_ BitVec 32)) SeekEntryResult!12337)

(assert (=> b!1490540 (= e!835250 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!649948 lt!649943 mask!2687) (seekEntryOrOpen!0 lt!649948 lt!649943 mask!2687)))))

(declare-fun e!835246 () Bool)

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun b!1490541 () Bool)

(declare-fun a!2862 () array!99614)

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1490541 (= e!835246 (or (= (select (arr!48074 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48074 a!2862) intermediateBeforeIndex!19) (select (arr!48074 a!2862) j!93))))))

(declare-fun b!1490542 () Bool)

(declare-fun res!1013913 () Bool)

(declare-fun e!835253 () Bool)

(assert (=> b!1490542 (=> (not res!1013913) (not e!835253))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1490542 (= res!1013913 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48625 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48625 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48625 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1490543 () Bool)

(declare-fun lt!649945 () SeekEntryResult!12337)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99614 (_ BitVec 32)) SeekEntryResult!12337)

(assert (=> b!1490543 (= e!835250 (= lt!649945 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!649948 lt!649943 mask!2687)))))

(declare-fun res!1013912 () Bool)

(assert (=> start!126924 (=> (not res!1013912) (not e!835253))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126924 (= res!1013912 (validMask!0 mask!2687))))

(assert (=> start!126924 e!835253))

(assert (=> start!126924 true))

(declare-fun array_inv!37019 (array!99614) Bool)

(assert (=> start!126924 (array_inv!37019 a!2862)))

(declare-fun b!1490544 () Bool)

(declare-fun e!835247 () Bool)

(declare-fun e!835248 () Bool)

(assert (=> b!1490544 (= e!835247 e!835248)))

(declare-fun res!1013918 () Bool)

(assert (=> b!1490544 (=> (not res!1013918) (not e!835248))))

(declare-fun lt!649946 () SeekEntryResult!12337)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1490544 (= res!1013918 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48074 a!2862) j!93) mask!2687) (select (arr!48074 a!2862) j!93) a!2862 mask!2687) lt!649946))))

(assert (=> b!1490544 (= lt!649946 (Intermediate!12337 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1490545 () Bool)

(declare-fun e!835251 () Bool)

(declare-fun e!835252 () Bool)

(assert (=> b!1490545 (= e!835251 (not e!835252))))

(declare-fun res!1013922 () Bool)

(assert (=> b!1490545 (=> res!1013922 e!835252)))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1490545 (= res!1013922 (or (and (= (select (arr!48074 a!2862) index!646) (select (store (arr!48074 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48074 a!2862) index!646) (select (arr!48074 a!2862) j!93))) (= (select (arr!48074 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(assert (=> b!1490545 e!835246))

(declare-fun res!1013909 () Bool)

(assert (=> b!1490545 (=> (not res!1013909) (not e!835246))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99614 (_ BitVec 32)) Bool)

(assert (=> b!1490545 (= res!1013909 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49962 0))(
  ( (Unit!49963) )
))
(declare-fun lt!649947 () Unit!49962)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99614 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49962)

(assert (=> b!1490545 (= lt!649947 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1490546 () Bool)

(declare-fun res!1013920 () Bool)

(assert (=> b!1490546 (=> (not res!1013920) (not e!835246))))

(assert (=> b!1490546 (= res!1013920 (= (seekEntryOrOpen!0 (select (arr!48074 a!2862) j!93) a!2862 mask!2687) (Found!12337 j!93)))))

(declare-fun b!1490547 () Bool)

(declare-fun res!1013911 () Bool)

(assert (=> b!1490547 (=> (not res!1013911) (not e!835251))))

(assert (=> b!1490547 (= res!1013911 e!835250)))

(declare-fun c!137846 () Bool)

(assert (=> b!1490547 (= c!137846 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1490548 () Bool)

(declare-fun res!1013915 () Bool)

(assert (=> b!1490548 (=> (not res!1013915) (not e!835253))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1490548 (= res!1013915 (validKeyInArray!0 (select (arr!48074 a!2862) j!93)))))

(declare-fun b!1490549 () Bool)

(assert (=> b!1490549 (= e!835253 e!835247)))

(declare-fun res!1013910 () Bool)

(assert (=> b!1490549 (=> (not res!1013910) (not e!835247))))

(assert (=> b!1490549 (= res!1013910 (= (select (store (arr!48074 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1490549 (= lt!649943 (array!99615 (store (arr!48074 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48625 a!2862)))))

(declare-fun b!1490550 () Bool)

(assert (=> b!1490550 (= e!835248 e!835251)))

(declare-fun res!1013916 () Bool)

(assert (=> b!1490550 (=> (not res!1013916) (not e!835251))))

(assert (=> b!1490550 (= res!1013916 (= lt!649945 (Intermediate!12337 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1490550 (= lt!649945 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!649948 mask!2687) lt!649948 lt!649943 mask!2687))))

(assert (=> b!1490550 (= lt!649948 (select (store (arr!48074 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1490551 () Bool)

(declare-fun res!1013908 () Bool)

(assert (=> b!1490551 (=> (not res!1013908) (not e!835253))))

(assert (=> b!1490551 (= res!1013908 (validKeyInArray!0 (select (arr!48074 a!2862) i!1006)))))

(declare-fun b!1490552 () Bool)

(declare-fun res!1013919 () Bool)

(assert (=> b!1490552 (=> (not res!1013919) (not e!835251))))

(assert (=> b!1490552 (= res!1013919 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1490553 () Bool)

(declare-fun res!1013921 () Bool)

(assert (=> b!1490553 (=> (not res!1013921) (not e!835248))))

(assert (=> b!1490553 (= res!1013921 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48074 a!2862) j!93) a!2862 mask!2687) lt!649946))))

(declare-fun b!1490554 () Bool)

(declare-fun res!1013907 () Bool)

(assert (=> b!1490554 (=> (not res!1013907) (not e!835253))))

(declare-datatypes ((List!34755 0))(
  ( (Nil!34752) (Cons!34751 (h!36134 (_ BitVec 64)) (t!49456 List!34755)) )
))
(declare-fun arrayNoDuplicates!0 (array!99614 (_ BitVec 32) List!34755) Bool)

(assert (=> b!1490554 (= res!1013907 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34752))))

(declare-fun b!1490555 () Bool)

(declare-fun res!1013914 () Bool)

(assert (=> b!1490555 (=> (not res!1013914) (not e!835253))))

(assert (=> b!1490555 (= res!1013914 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1490556 () Bool)

(declare-fun res!1013917 () Bool)

(assert (=> b!1490556 (=> (not res!1013917) (not e!835253))))

(assert (=> b!1490556 (= res!1013917 (and (= (size!48625 a!2862) (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48625 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48625 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1490557 () Bool)

(assert (=> b!1490557 (= e!835252 true)))

(declare-fun lt!649944 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1490557 (= lt!649944 (nextIndex!0 index!646 x!665 mask!2687))))

(assert (= (and start!126924 res!1013912) b!1490556))

(assert (= (and b!1490556 res!1013917) b!1490551))

(assert (= (and b!1490551 res!1013908) b!1490548))

(assert (= (and b!1490548 res!1013915) b!1490555))

(assert (= (and b!1490555 res!1013914) b!1490554))

(assert (= (and b!1490554 res!1013907) b!1490542))

(assert (= (and b!1490542 res!1013913) b!1490549))

(assert (= (and b!1490549 res!1013910) b!1490544))

(assert (= (and b!1490544 res!1013918) b!1490553))

(assert (= (and b!1490553 res!1013921) b!1490550))

(assert (= (and b!1490550 res!1013916) b!1490547))

(assert (= (and b!1490547 c!137846) b!1490543))

(assert (= (and b!1490547 (not c!137846)) b!1490540))

(assert (= (and b!1490547 res!1013911) b!1490552))

(assert (= (and b!1490552 res!1013919) b!1490545))

(assert (= (and b!1490545 res!1013909) b!1490546))

(assert (= (and b!1490546 res!1013920) b!1490541))

(assert (= (and b!1490545 (not res!1013922)) b!1490557))

(declare-fun m!1374751 () Bool)

(assert (=> b!1490549 m!1374751))

(declare-fun m!1374753 () Bool)

(assert (=> b!1490549 m!1374753))

(declare-fun m!1374755 () Bool)

(assert (=> b!1490546 m!1374755))

(assert (=> b!1490546 m!1374755))

(declare-fun m!1374757 () Bool)

(assert (=> b!1490546 m!1374757))

(declare-fun m!1374759 () Bool)

(assert (=> b!1490545 m!1374759))

(assert (=> b!1490545 m!1374751))

(declare-fun m!1374761 () Bool)

(assert (=> b!1490545 m!1374761))

(declare-fun m!1374763 () Bool)

(assert (=> b!1490545 m!1374763))

(declare-fun m!1374765 () Bool)

(assert (=> b!1490545 m!1374765))

(assert (=> b!1490545 m!1374755))

(declare-fun m!1374767 () Bool)

(assert (=> b!1490540 m!1374767))

(declare-fun m!1374769 () Bool)

(assert (=> b!1490540 m!1374769))

(declare-fun m!1374771 () Bool)

(assert (=> b!1490541 m!1374771))

(assert (=> b!1490541 m!1374755))

(declare-fun m!1374773 () Bool)

(assert (=> b!1490550 m!1374773))

(assert (=> b!1490550 m!1374773))

(declare-fun m!1374775 () Bool)

(assert (=> b!1490550 m!1374775))

(assert (=> b!1490550 m!1374751))

(declare-fun m!1374777 () Bool)

(assert (=> b!1490550 m!1374777))

(declare-fun m!1374779 () Bool)

(assert (=> b!1490554 m!1374779))

(assert (=> b!1490544 m!1374755))

(assert (=> b!1490544 m!1374755))

(declare-fun m!1374781 () Bool)

(assert (=> b!1490544 m!1374781))

(assert (=> b!1490544 m!1374781))

(assert (=> b!1490544 m!1374755))

(declare-fun m!1374783 () Bool)

(assert (=> b!1490544 m!1374783))

(declare-fun m!1374785 () Bool)

(assert (=> b!1490551 m!1374785))

(assert (=> b!1490551 m!1374785))

(declare-fun m!1374787 () Bool)

(assert (=> b!1490551 m!1374787))

(declare-fun m!1374789 () Bool)

(assert (=> b!1490557 m!1374789))

(declare-fun m!1374791 () Bool)

(assert (=> b!1490543 m!1374791))

(assert (=> b!1490548 m!1374755))

(assert (=> b!1490548 m!1374755))

(declare-fun m!1374793 () Bool)

(assert (=> b!1490548 m!1374793))

(declare-fun m!1374795 () Bool)

(assert (=> start!126924 m!1374795))

(declare-fun m!1374797 () Bool)

(assert (=> start!126924 m!1374797))

(declare-fun m!1374799 () Bool)

(assert (=> b!1490555 m!1374799))

(assert (=> b!1490553 m!1374755))

(assert (=> b!1490553 m!1374755))

(declare-fun m!1374801 () Bool)

(assert (=> b!1490553 m!1374801))

(check-sat (not b!1490550) (not b!1490554) (not start!126924) (not b!1490555) (not b!1490553) (not b!1490545) (not b!1490544) (not b!1490540) (not b!1490548) (not b!1490551) (not b!1490543) (not b!1490546) (not b!1490557))
(check-sat)
