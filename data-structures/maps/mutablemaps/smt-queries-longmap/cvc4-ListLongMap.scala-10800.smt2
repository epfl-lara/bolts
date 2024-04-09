; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126434 () Bool)

(assert start!126434)

(declare-fun b!1481736 () Bool)

(declare-fun res!1007137 () Bool)

(declare-fun e!831015 () Bool)

(assert (=> b!1481736 (=> (not res!1007137) (not e!831015))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!99370 0))(
  ( (array!99371 (arr!47958 (Array (_ BitVec 32) (_ BitVec 64))) (size!48509 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99370)

(assert (=> b!1481736 (= res!1007137 (and (= (size!48509 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48509 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48509 a!2862)) (not (= i!1006 j!93))))))

(declare-fun lt!646827 () array!99370)

(declare-datatypes ((SeekEntryResult!12221 0))(
  ( (MissingZero!12221 (index!51275 (_ BitVec 32))) (Found!12221 (index!51276 (_ BitVec 32))) (Intermediate!12221 (undefined!13033 Bool) (index!51277 (_ BitVec 32)) (x!132859 (_ BitVec 32))) (Undefined!12221) (MissingVacant!12221 (index!51278 (_ BitVec 32))) )
))
(declare-fun lt!646828 () SeekEntryResult!12221)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun lt!646830 () (_ BitVec 64))

(declare-fun b!1481737 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun e!831019 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99370 (_ BitVec 32)) SeekEntryResult!12221)

(assert (=> b!1481737 (= e!831019 (= lt!646828 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!646830 lt!646827 mask!2687)))))

(declare-fun b!1481738 () Bool)

(declare-fun res!1007133 () Bool)

(declare-fun e!831020 () Bool)

(assert (=> b!1481738 (=> (not res!1007133) (not e!831020))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1481738 (= res!1007133 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1481739 () Bool)

(declare-fun e!831014 () Bool)

(assert (=> b!1481739 (= e!831014 e!831020)))

(declare-fun res!1007135 () Bool)

(assert (=> b!1481739 (=> (not res!1007135) (not e!831020))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1481739 (= res!1007135 (= lt!646828 (Intermediate!12221 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1481739 (= lt!646828 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!646830 mask!2687) lt!646830 lt!646827 mask!2687))))

(assert (=> b!1481739 (= lt!646830 (select (store (arr!47958 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1481741 () Bool)

(declare-fun res!1007136 () Bool)

(declare-fun e!831017 () Bool)

(assert (=> b!1481741 (=> (not res!1007136) (not e!831017))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99370 (_ BitVec 32)) SeekEntryResult!12221)

(assert (=> b!1481741 (= res!1007136 (= (seekEntryOrOpen!0 (select (arr!47958 a!2862) j!93) a!2862 mask!2687) (Found!12221 j!93)))))

(declare-fun b!1481742 () Bool)

(declare-fun res!1007139 () Bool)

(assert (=> b!1481742 (=> (not res!1007139) (not e!831015))))

(declare-datatypes ((List!34639 0))(
  ( (Nil!34636) (Cons!34635 (h!36006 (_ BitVec 64)) (t!49340 List!34639)) )
))
(declare-fun arrayNoDuplicates!0 (array!99370 (_ BitVec 32) List!34639) Bool)

(assert (=> b!1481742 (= res!1007139 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34636))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun b!1481743 () Bool)

(assert (=> b!1481743 (= e!831017 (and (or (= (select (arr!47958 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47958 a!2862) intermediateBeforeIndex!19) (select (arr!47958 a!2862) j!93))) (or (and (= (select (arr!47958 a!2862) index!646) (select (store (arr!47958 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47958 a!2862) index!646) (select (arr!47958 a!2862) j!93))) (= (select (arr!47958 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= (select (store (arr!47958 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1481744 () Bool)

(declare-fun res!1007129 () Bool)

(assert (=> b!1481744 (=> (not res!1007129) (not e!831015))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99370 (_ BitVec 32)) Bool)

(assert (=> b!1481744 (= res!1007129 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1481745 () Bool)

(declare-fun e!831018 () Bool)

(assert (=> b!1481745 (= e!831015 e!831018)))

(declare-fun res!1007134 () Bool)

(assert (=> b!1481745 (=> (not res!1007134) (not e!831018))))

(assert (=> b!1481745 (= res!1007134 (= (select (store (arr!47958 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1481745 (= lt!646827 (array!99371 (store (arr!47958 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48509 a!2862)))))

(declare-fun b!1481746 () Bool)

(assert (=> b!1481746 (= e!831020 (not true))))

(assert (=> b!1481746 e!831017))

(declare-fun res!1007126 () Bool)

(assert (=> b!1481746 (=> (not res!1007126) (not e!831017))))

(assert (=> b!1481746 (= res!1007126 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49730 0))(
  ( (Unit!49731) )
))
(declare-fun lt!646831 () Unit!49730)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99370 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49730)

(assert (=> b!1481746 (= lt!646831 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1481747 () Bool)

(declare-fun res!1007125 () Bool)

(assert (=> b!1481747 (=> (not res!1007125) (not e!831020))))

(assert (=> b!1481747 (= res!1007125 e!831019)))

(declare-fun c!136829 () Bool)

(assert (=> b!1481747 (= c!136829 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1481748 () Bool)

(declare-fun res!1007132 () Bool)

(assert (=> b!1481748 (=> (not res!1007132) (not e!831014))))

(declare-fun lt!646829 () SeekEntryResult!12221)

(assert (=> b!1481748 (= res!1007132 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47958 a!2862) j!93) a!2862 mask!2687) lt!646829))))

(declare-fun b!1481749 () Bool)

(declare-fun res!1007131 () Bool)

(assert (=> b!1481749 (=> (not res!1007131) (not e!831015))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1481749 (= res!1007131 (validKeyInArray!0 (select (arr!47958 a!2862) j!93)))))

(declare-fun b!1481750 () Bool)

(declare-fun res!1007130 () Bool)

(assert (=> b!1481750 (=> (not res!1007130) (not e!831015))))

(assert (=> b!1481750 (= res!1007130 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48509 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48509 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48509 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1481740 () Bool)

(declare-fun res!1007128 () Bool)

(assert (=> b!1481740 (=> (not res!1007128) (not e!831015))))

(assert (=> b!1481740 (= res!1007128 (validKeyInArray!0 (select (arr!47958 a!2862) i!1006)))))

(declare-fun res!1007127 () Bool)

(assert (=> start!126434 (=> (not res!1007127) (not e!831015))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126434 (= res!1007127 (validMask!0 mask!2687))))

(assert (=> start!126434 e!831015))

(assert (=> start!126434 true))

(declare-fun array_inv!36903 (array!99370) Bool)

(assert (=> start!126434 (array_inv!36903 a!2862)))

(declare-fun b!1481751 () Bool)

(assert (=> b!1481751 (= e!831018 e!831014)))

(declare-fun res!1007138 () Bool)

(assert (=> b!1481751 (=> (not res!1007138) (not e!831014))))

(assert (=> b!1481751 (= res!1007138 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47958 a!2862) j!93) mask!2687) (select (arr!47958 a!2862) j!93) a!2862 mask!2687) lt!646829))))

(assert (=> b!1481751 (= lt!646829 (Intermediate!12221 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1481752 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99370 (_ BitVec 32)) SeekEntryResult!12221)

(assert (=> b!1481752 (= e!831019 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!646830 lt!646827 mask!2687) (seekEntryOrOpen!0 lt!646830 lt!646827 mask!2687)))))

(assert (= (and start!126434 res!1007127) b!1481736))

(assert (= (and b!1481736 res!1007137) b!1481740))

(assert (= (and b!1481740 res!1007128) b!1481749))

(assert (= (and b!1481749 res!1007131) b!1481744))

(assert (= (and b!1481744 res!1007129) b!1481742))

(assert (= (and b!1481742 res!1007139) b!1481750))

(assert (= (and b!1481750 res!1007130) b!1481745))

(assert (= (and b!1481745 res!1007134) b!1481751))

(assert (= (and b!1481751 res!1007138) b!1481748))

(assert (= (and b!1481748 res!1007132) b!1481739))

(assert (= (and b!1481739 res!1007135) b!1481747))

(assert (= (and b!1481747 c!136829) b!1481737))

(assert (= (and b!1481747 (not c!136829)) b!1481752))

(assert (= (and b!1481747 res!1007125) b!1481738))

(assert (= (and b!1481738 res!1007133) b!1481746))

(assert (= (and b!1481746 res!1007126) b!1481741))

(assert (= (and b!1481741 res!1007136) b!1481743))

(declare-fun m!1367527 () Bool)

(assert (=> b!1481741 m!1367527))

(assert (=> b!1481741 m!1367527))

(declare-fun m!1367529 () Bool)

(assert (=> b!1481741 m!1367529))

(declare-fun m!1367531 () Bool)

(assert (=> b!1481739 m!1367531))

(assert (=> b!1481739 m!1367531))

(declare-fun m!1367533 () Bool)

(assert (=> b!1481739 m!1367533))

(declare-fun m!1367535 () Bool)

(assert (=> b!1481739 m!1367535))

(declare-fun m!1367537 () Bool)

(assert (=> b!1481739 m!1367537))

(declare-fun m!1367539 () Bool)

(assert (=> b!1481737 m!1367539))

(assert (=> b!1481748 m!1367527))

(assert (=> b!1481748 m!1367527))

(declare-fun m!1367541 () Bool)

(assert (=> b!1481748 m!1367541))

(declare-fun m!1367543 () Bool)

(assert (=> b!1481746 m!1367543))

(declare-fun m!1367545 () Bool)

(assert (=> b!1481746 m!1367545))

(assert (=> b!1481749 m!1367527))

(assert (=> b!1481749 m!1367527))

(declare-fun m!1367547 () Bool)

(assert (=> b!1481749 m!1367547))

(declare-fun m!1367549 () Bool)

(assert (=> b!1481744 m!1367549))

(declare-fun m!1367551 () Bool)

(assert (=> b!1481740 m!1367551))

(assert (=> b!1481740 m!1367551))

(declare-fun m!1367553 () Bool)

(assert (=> b!1481740 m!1367553))

(assert (=> b!1481743 m!1367535))

(declare-fun m!1367555 () Bool)

(assert (=> b!1481743 m!1367555))

(declare-fun m!1367557 () Bool)

(assert (=> b!1481743 m!1367557))

(declare-fun m!1367559 () Bool)

(assert (=> b!1481743 m!1367559))

(assert (=> b!1481743 m!1367527))

(declare-fun m!1367561 () Bool)

(assert (=> start!126434 m!1367561))

(declare-fun m!1367563 () Bool)

(assert (=> start!126434 m!1367563))

(declare-fun m!1367565 () Bool)

(assert (=> b!1481752 m!1367565))

(declare-fun m!1367567 () Bool)

(assert (=> b!1481752 m!1367567))

(declare-fun m!1367569 () Bool)

(assert (=> b!1481742 m!1367569))

(assert (=> b!1481751 m!1367527))

(assert (=> b!1481751 m!1367527))

(declare-fun m!1367571 () Bool)

(assert (=> b!1481751 m!1367571))

(assert (=> b!1481751 m!1367571))

(assert (=> b!1481751 m!1367527))

(declare-fun m!1367573 () Bool)

(assert (=> b!1481751 m!1367573))

(assert (=> b!1481745 m!1367535))

(declare-fun m!1367575 () Bool)

(assert (=> b!1481745 m!1367575))

(push 1)

