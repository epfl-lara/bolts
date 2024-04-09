; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126700 () Bool)

(assert start!126700)

(declare-fun b!1486733 () Bool)

(declare-fun e!833437 () Bool)

(declare-fun e!833444 () Bool)

(assert (=> b!1486733 (= e!833437 e!833444)))

(declare-fun res!1011159 () Bool)

(assert (=> b!1486733 (=> res!1011159 e!833444)))

(declare-fun lt!648535 () (_ BitVec 64))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!99516 0))(
  ( (array!99517 (arr!48028 (Array (_ BitVec 32) (_ BitVec 64))) (size!48579 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99516)

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1486733 (= res!1011159 (or (and (= (select (arr!48028 a!2862) index!646) lt!648535) (= (select (arr!48028 a!2862) index!646) (select (arr!48028 a!2862) j!93))) (= (select (arr!48028 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1486733 (= lt!648535 (select (store (arr!48028 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))))

(declare-fun b!1486734 () Bool)

(declare-fun e!833435 () Bool)

(declare-fun e!833439 () Bool)

(assert (=> b!1486734 (= e!833435 (not e!833439))))

(declare-fun res!1011168 () Bool)

(assert (=> b!1486734 (=> res!1011168 e!833439)))

(assert (=> b!1486734 (= res!1011168 (or (and (= (select (arr!48028 a!2862) index!646) (select (store (arr!48028 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48028 a!2862) index!646) (select (arr!48028 a!2862) j!93))) (= (select (arr!48028 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1486734 e!833437))

(declare-fun res!1011170 () Bool)

(assert (=> b!1486734 (=> (not res!1011170) (not e!833437))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99516 (_ BitVec 32)) Bool)

(assert (=> b!1486734 (= res!1011170 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49870 0))(
  ( (Unit!49871) )
))
(declare-fun lt!648536 () Unit!49870)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99516 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49870)

(assert (=> b!1486734 (= lt!648536 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1486735 () Bool)

(assert (=> b!1486735 (= e!833439 true)))

(declare-fun lt!648537 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1486735 (= lt!648537 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1486736 () Bool)

(declare-fun res!1011166 () Bool)

(assert (=> b!1486736 (=> (not res!1011166) (not e!833435))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1486736 (= res!1011166 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1486737 () Bool)

(declare-fun e!833442 () Bool)

(declare-fun e!833441 () Bool)

(assert (=> b!1486737 (= e!833442 e!833441)))

(declare-fun res!1011157 () Bool)

(assert (=> b!1486737 (=> (not res!1011157) (not e!833441))))

(assert (=> b!1486737 (= res!1011157 (= (select (store (arr!48028 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!648533 () array!99516)

(assert (=> b!1486737 (= lt!648533 (array!99517 (store (arr!48028 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48579 a!2862)))))

(declare-fun res!1011156 () Bool)

(assert (=> start!126700 (=> (not res!1011156) (not e!833442))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126700 (= res!1011156 (validMask!0 mask!2687))))

(assert (=> start!126700 e!833442))

(assert (=> start!126700 true))

(declare-fun array_inv!36973 (array!99516) Bool)

(assert (=> start!126700 (array_inv!36973 a!2862)))

(declare-fun b!1486738 () Bool)

(declare-fun e!833443 () Bool)

(declare-fun lt!648538 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!12291 0))(
  ( (MissingZero!12291 (index!51555 (_ BitVec 32))) (Found!12291 (index!51556 (_ BitVec 32))) (Intermediate!12291 (undefined!13103 Bool) (index!51557 (_ BitVec 32)) (x!133142 (_ BitVec 32))) (Undefined!12291) (MissingVacant!12291 (index!51558 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99516 (_ BitVec 32)) SeekEntryResult!12291)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99516 (_ BitVec 32)) SeekEntryResult!12291)

(assert (=> b!1486738 (= e!833443 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!648538 lt!648533 mask!2687) (seekEntryOrOpen!0 lt!648538 lt!648533 mask!2687)))))

(declare-fun e!833440 () Bool)

(declare-fun b!1486739 () Bool)

(assert (=> b!1486739 (= e!833440 (= (seekEntryOrOpen!0 lt!648538 lt!648533 mask!2687) (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!648538 lt!648533 mask!2687)))))

(declare-fun b!1486740 () Bool)

(declare-fun lt!648534 () SeekEntryResult!12291)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99516 (_ BitVec 32)) SeekEntryResult!12291)

(assert (=> b!1486740 (= e!833443 (= lt!648534 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!648538 lt!648533 mask!2687)))))

(declare-fun b!1486741 () Bool)

(declare-fun res!1011160 () Bool)

(assert (=> b!1486741 (=> (not res!1011160) (not e!833437))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1486741 (= res!1011160 (or (= (select (arr!48028 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48028 a!2862) intermediateBeforeIndex!19) (select (arr!48028 a!2862) j!93))))))

(declare-fun b!1486742 () Bool)

(declare-fun res!1011172 () Bool)

(assert (=> b!1486742 (=> (not res!1011172) (not e!833442))))

(assert (=> b!1486742 (= res!1011172 (and (= (size!48579 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48579 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48579 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1486743 () Bool)

(declare-fun res!1011163 () Bool)

(assert (=> b!1486743 (=> (not res!1011163) (not e!833442))))

(assert (=> b!1486743 (= res!1011163 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48579 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48579 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48579 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1486744 () Bool)

(declare-fun res!1011164 () Bool)

(assert (=> b!1486744 (=> (not res!1011164) (not e!833442))))

(declare-datatypes ((List!34709 0))(
  ( (Nil!34706) (Cons!34705 (h!36082 (_ BitVec 64)) (t!49410 List!34709)) )
))
(declare-fun arrayNoDuplicates!0 (array!99516 (_ BitVec 32) List!34709) Bool)

(assert (=> b!1486744 (= res!1011164 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34706))))

(declare-fun b!1486745 () Bool)

(declare-fun res!1011171 () Bool)

(declare-fun e!833436 () Bool)

(assert (=> b!1486745 (=> (not res!1011171) (not e!833436))))

(declare-fun lt!648532 () SeekEntryResult!12291)

(assert (=> b!1486745 (= res!1011171 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48028 a!2862) j!93) a!2862 mask!2687) lt!648532))))

(declare-fun b!1486746 () Bool)

(declare-fun res!1011165 () Bool)

(assert (=> b!1486746 (=> (not res!1011165) (not e!833437))))

(assert (=> b!1486746 (= res!1011165 (= (seekEntryOrOpen!0 (select (arr!48028 a!2862) j!93) a!2862 mask!2687) (Found!12291 j!93)))))

(declare-fun b!1486747 () Bool)

(declare-fun res!1011169 () Bool)

(assert (=> b!1486747 (=> (not res!1011169) (not e!833435))))

(assert (=> b!1486747 (= res!1011169 e!833443)))

(declare-fun c!137315 () Bool)

(assert (=> b!1486747 (= c!137315 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1486748 () Bool)

(assert (=> b!1486748 (= e!833441 e!833436)))

(declare-fun res!1011173 () Bool)

(assert (=> b!1486748 (=> (not res!1011173) (not e!833436))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1486748 (= res!1011173 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48028 a!2862) j!93) mask!2687) (select (arr!48028 a!2862) j!93) a!2862 mask!2687) lt!648532))))

(assert (=> b!1486748 (= lt!648532 (Intermediate!12291 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1486749 () Bool)

(declare-fun res!1011161 () Bool)

(assert (=> b!1486749 (=> (not res!1011161) (not e!833442))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1486749 (= res!1011161 (validKeyInArray!0 (select (arr!48028 a!2862) i!1006)))))

(declare-fun b!1486750 () Bool)

(assert (=> b!1486750 (= e!833444 e!833440)))

(declare-fun res!1011158 () Bool)

(assert (=> b!1486750 (=> (not res!1011158) (not e!833440))))

(assert (=> b!1486750 (= res!1011158 (and (= index!646 intermediateAfterIndex!19) (= lt!648535 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1486751 () Bool)

(assert (=> b!1486751 (= e!833436 e!833435)))

(declare-fun res!1011162 () Bool)

(assert (=> b!1486751 (=> (not res!1011162) (not e!833435))))

(assert (=> b!1486751 (= res!1011162 (= lt!648534 (Intermediate!12291 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1486751 (= lt!648534 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!648538 mask!2687) lt!648538 lt!648533 mask!2687))))

(assert (=> b!1486751 (= lt!648538 (select (store (arr!48028 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1486752 () Bool)

(declare-fun res!1011174 () Bool)

(assert (=> b!1486752 (=> (not res!1011174) (not e!833442))))

(assert (=> b!1486752 (= res!1011174 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1486753 () Bool)

(declare-fun res!1011167 () Bool)

(assert (=> b!1486753 (=> (not res!1011167) (not e!833442))))

(assert (=> b!1486753 (= res!1011167 (validKeyInArray!0 (select (arr!48028 a!2862) j!93)))))

(assert (= (and start!126700 res!1011156) b!1486742))

(assert (= (and b!1486742 res!1011172) b!1486749))

(assert (= (and b!1486749 res!1011161) b!1486753))

(assert (= (and b!1486753 res!1011167) b!1486752))

(assert (= (and b!1486752 res!1011174) b!1486744))

(assert (= (and b!1486744 res!1011164) b!1486743))

(assert (= (and b!1486743 res!1011163) b!1486737))

(assert (= (and b!1486737 res!1011157) b!1486748))

(assert (= (and b!1486748 res!1011173) b!1486745))

(assert (= (and b!1486745 res!1011171) b!1486751))

(assert (= (and b!1486751 res!1011162) b!1486747))

(assert (= (and b!1486747 c!137315) b!1486740))

(assert (= (and b!1486747 (not c!137315)) b!1486738))

(assert (= (and b!1486747 res!1011169) b!1486736))

(assert (= (and b!1486736 res!1011166) b!1486734))

(assert (= (and b!1486734 res!1011170) b!1486746))

(assert (= (and b!1486746 res!1011165) b!1486741))

(assert (= (and b!1486741 res!1011160) b!1486733))

(assert (= (and b!1486733 (not res!1011159)) b!1486750))

(assert (= (and b!1486750 res!1011158) b!1486739))

(assert (= (and b!1486734 (not res!1011168)) b!1486735))

(declare-fun m!1371603 () Bool)

(assert (=> b!1486734 m!1371603))

(declare-fun m!1371605 () Bool)

(assert (=> b!1486734 m!1371605))

(declare-fun m!1371607 () Bool)

(assert (=> b!1486734 m!1371607))

(declare-fun m!1371609 () Bool)

(assert (=> b!1486734 m!1371609))

(declare-fun m!1371611 () Bool)

(assert (=> b!1486734 m!1371611))

(declare-fun m!1371613 () Bool)

(assert (=> b!1486734 m!1371613))

(declare-fun m!1371615 () Bool)

(assert (=> b!1486735 m!1371615))

(assert (=> b!1486746 m!1371613))

(assert (=> b!1486746 m!1371613))

(declare-fun m!1371617 () Bool)

(assert (=> b!1486746 m!1371617))

(assert (=> b!1486733 m!1371609))

(assert (=> b!1486733 m!1371613))

(assert (=> b!1486733 m!1371605))

(assert (=> b!1486733 m!1371607))

(assert (=> b!1486753 m!1371613))

(assert (=> b!1486753 m!1371613))

(declare-fun m!1371619 () Bool)

(assert (=> b!1486753 m!1371619))

(declare-fun m!1371621 () Bool)

(assert (=> b!1486751 m!1371621))

(assert (=> b!1486751 m!1371621))

(declare-fun m!1371623 () Bool)

(assert (=> b!1486751 m!1371623))

(assert (=> b!1486751 m!1371605))

(declare-fun m!1371625 () Bool)

(assert (=> b!1486751 m!1371625))

(assert (=> b!1486745 m!1371613))

(assert (=> b!1486745 m!1371613))

(declare-fun m!1371627 () Bool)

(assert (=> b!1486745 m!1371627))

(declare-fun m!1371629 () Bool)

(assert (=> b!1486738 m!1371629))

(declare-fun m!1371631 () Bool)

(assert (=> b!1486738 m!1371631))

(declare-fun m!1371633 () Bool)

(assert (=> b!1486741 m!1371633))

(assert (=> b!1486741 m!1371613))

(declare-fun m!1371635 () Bool)

(assert (=> b!1486744 m!1371635))

(assert (=> b!1486748 m!1371613))

(assert (=> b!1486748 m!1371613))

(declare-fun m!1371637 () Bool)

(assert (=> b!1486748 m!1371637))

(assert (=> b!1486748 m!1371637))

(assert (=> b!1486748 m!1371613))

(declare-fun m!1371639 () Bool)

(assert (=> b!1486748 m!1371639))

(assert (=> b!1486737 m!1371605))

(declare-fun m!1371641 () Bool)

(assert (=> b!1486737 m!1371641))

(assert (=> b!1486739 m!1371631))

(assert (=> b!1486739 m!1371629))

(declare-fun m!1371643 () Bool)

(assert (=> start!126700 m!1371643))

(declare-fun m!1371645 () Bool)

(assert (=> start!126700 m!1371645))

(declare-fun m!1371647 () Bool)

(assert (=> b!1486749 m!1371647))

(assert (=> b!1486749 m!1371647))

(declare-fun m!1371649 () Bool)

(assert (=> b!1486749 m!1371649))

(declare-fun m!1371651 () Bool)

(assert (=> b!1486740 m!1371651))

(declare-fun m!1371653 () Bool)

(assert (=> b!1486752 m!1371653))

(push 1)

