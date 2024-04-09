; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126184 () Bool)

(assert start!126184)

(declare-fun b!1476728 () Bool)

(declare-fun res!1003034 () Bool)

(declare-fun e!828516 () Bool)

(assert (=> b!1476728 (=> (not res!1003034) (not e!828516))))

(declare-datatypes ((array!99207 0))(
  ( (array!99208 (arr!47878 (Array (_ BitVec 32) (_ BitVec 64))) (size!48429 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99207)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99207 (_ BitVec 32)) Bool)

(assert (=> b!1476728 (= res!1003034 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1476729 () Bool)

(declare-fun res!1003038 () Bool)

(declare-fun e!828521 () Bool)

(assert (=> b!1476729 (=> (not res!1003038) (not e!828521))))

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12141 0))(
  ( (MissingZero!12141 (index!50955 (_ BitVec 32))) (Found!12141 (index!50956 (_ BitVec 32))) (Intermediate!12141 (undefined!12953 Bool) (index!50957 (_ BitVec 32)) (x!132559 (_ BitVec 32))) (Undefined!12141) (MissingVacant!12141 (index!50958 (_ BitVec 32))) )
))
(declare-fun lt!645081 () SeekEntryResult!12141)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99207 (_ BitVec 32)) SeekEntryResult!12141)

(assert (=> b!1476729 (= res!1003038 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47878 a!2862) j!93) a!2862 mask!2687) lt!645081))))

(declare-fun lt!645079 () (_ BitVec 64))

(declare-fun e!828514 () Bool)

(declare-fun b!1476730 () Bool)

(declare-fun lt!645078 () SeekEntryResult!12141)

(declare-fun lt!645082 () array!99207)

(assert (=> b!1476730 (= e!828514 (= lt!645078 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!645079 lt!645082 mask!2687)))))

(declare-fun b!1476731 () Bool)

(declare-fun e!828520 () Bool)

(assert (=> b!1476731 (= e!828521 e!828520)))

(declare-fun res!1003045 () Bool)

(assert (=> b!1476731 (=> (not res!1003045) (not e!828520))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1476731 (= res!1003045 (= lt!645078 (Intermediate!12141 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1476731 (= lt!645078 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!645079 mask!2687) lt!645079 lt!645082 mask!2687))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1476731 (= lt!645079 (select (store (arr!47878 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun res!1003041 () Bool)

(assert (=> start!126184 (=> (not res!1003041) (not e!828516))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126184 (= res!1003041 (validMask!0 mask!2687))))

(assert (=> start!126184 e!828516))

(assert (=> start!126184 true))

(declare-fun array_inv!36823 (array!99207) Bool)

(assert (=> start!126184 (array_inv!36823 a!2862)))

(declare-fun b!1476732 () Bool)

(declare-fun res!1003040 () Bool)

(assert (=> b!1476732 (=> (not res!1003040) (not e!828516))))

(assert (=> b!1476732 (= res!1003040 (and (= (size!48429 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48429 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48429 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1476733 () Bool)

(declare-fun e!828518 () Bool)

(declare-fun e!828515 () Bool)

(assert (=> b!1476733 (= e!828518 e!828515)))

(declare-fun res!1003047 () Bool)

(assert (=> b!1476733 (=> res!1003047 e!828515)))

(assert (=> b!1476733 (= res!1003047 (or (and (= (select (arr!47878 a!2862) index!646) (select (store (arr!47878 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47878 a!2862) index!646) (select (arr!47878 a!2862) j!93))) (not (= (select (arr!47878 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1476734 () Bool)

(declare-fun e!828513 () Bool)

(assert (=> b!1476734 (= e!828516 e!828513)))

(declare-fun res!1003043 () Bool)

(assert (=> b!1476734 (=> (not res!1003043) (not e!828513))))

(assert (=> b!1476734 (= res!1003043 (= (select (store (arr!47878 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1476734 (= lt!645082 (array!99208 (store (arr!47878 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48429 a!2862)))))

(declare-fun b!1476735 () Bool)

(declare-fun res!1003037 () Bool)

(assert (=> b!1476735 (=> (not res!1003037) (not e!828516))))

(declare-datatypes ((List!34559 0))(
  ( (Nil!34556) (Cons!34555 (h!35923 (_ BitVec 64)) (t!49260 List!34559)) )
))
(declare-fun arrayNoDuplicates!0 (array!99207 (_ BitVec 32) List!34559) Bool)

(assert (=> b!1476735 (= res!1003037 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34556))))

(declare-fun b!1476736 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99207 (_ BitVec 32)) SeekEntryResult!12141)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99207 (_ BitVec 32)) SeekEntryResult!12141)

(assert (=> b!1476736 (= e!828514 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!645079 lt!645082 mask!2687) (seekEntryOrOpen!0 lt!645079 lt!645082 mask!2687)))))

(declare-fun b!1476737 () Bool)

(declare-fun res!1003032 () Bool)

(assert (=> b!1476737 (=> (not res!1003032) (not e!828516))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1476737 (= res!1003032 (validKeyInArray!0 (select (arr!47878 a!2862) j!93)))))

(declare-fun b!1476738 () Bool)

(assert (=> b!1476738 (= e!828520 (not true))))

(assert (=> b!1476738 e!828518))

(declare-fun res!1003033 () Bool)

(assert (=> b!1476738 (=> (not res!1003033) (not e!828518))))

(declare-fun lt!645080 () SeekEntryResult!12141)

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1476738 (= res!1003033 (and (= lt!645080 (Found!12141 j!93)) (or (= (select (arr!47878 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47878 a!2862) intermediateBeforeIndex!19) (select (arr!47878 a!2862) j!93)))))))

(assert (=> b!1476738 (= lt!645080 (seekEntryOrOpen!0 (select (arr!47878 a!2862) j!93) a!2862 mask!2687))))

(assert (=> b!1476738 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!49570 0))(
  ( (Unit!49571) )
))
(declare-fun lt!645077 () Unit!49570)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99207 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49570)

(assert (=> b!1476738 (= lt!645077 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun b!1476739 () Bool)

(declare-fun e!828517 () Bool)

(assert (=> b!1476739 (= e!828517 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1476740 () Bool)

(declare-fun res!1003044 () Bool)

(assert (=> b!1476740 (=> (not res!1003044) (not e!828520))))

(assert (=> b!1476740 (= res!1003044 e!828514)))

(declare-fun c!136370 () Bool)

(assert (=> b!1476740 (= c!136370 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1476741 () Bool)

(assert (=> b!1476741 (= e!828513 e!828521)))

(declare-fun res!1003039 () Bool)

(assert (=> b!1476741 (=> (not res!1003039) (not e!828521))))

(assert (=> b!1476741 (= res!1003039 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47878 a!2862) j!93) mask!2687) (select (arr!47878 a!2862) j!93) a!2862 mask!2687) lt!645081))))

(assert (=> b!1476741 (= lt!645081 (Intermediate!12141 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1476742 () Bool)

(assert (=> b!1476742 (= e!828515 e!828517)))

(declare-fun res!1003042 () Bool)

(assert (=> b!1476742 (=> (not res!1003042) (not e!828517))))

(assert (=> b!1476742 (= res!1003042 (= lt!645080 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47878 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1476743 () Bool)

(declare-fun res!1003046 () Bool)

(assert (=> b!1476743 (=> (not res!1003046) (not e!828520))))

(assert (=> b!1476743 (= res!1003046 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1476744 () Bool)

(declare-fun res!1003035 () Bool)

(assert (=> b!1476744 (=> (not res!1003035) (not e!828516))))

(assert (=> b!1476744 (= res!1003035 (validKeyInArray!0 (select (arr!47878 a!2862) i!1006)))))

(declare-fun b!1476745 () Bool)

(declare-fun res!1003036 () Bool)

(assert (=> b!1476745 (=> (not res!1003036) (not e!828516))))

(assert (=> b!1476745 (= res!1003036 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48429 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48429 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48429 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(assert (= (and start!126184 res!1003041) b!1476732))

(assert (= (and b!1476732 res!1003040) b!1476744))

(assert (= (and b!1476744 res!1003035) b!1476737))

(assert (= (and b!1476737 res!1003032) b!1476728))

(assert (= (and b!1476728 res!1003034) b!1476735))

(assert (= (and b!1476735 res!1003037) b!1476745))

(assert (= (and b!1476745 res!1003036) b!1476734))

(assert (= (and b!1476734 res!1003043) b!1476741))

(assert (= (and b!1476741 res!1003039) b!1476729))

(assert (= (and b!1476729 res!1003038) b!1476731))

(assert (= (and b!1476731 res!1003045) b!1476740))

(assert (= (and b!1476740 c!136370) b!1476730))

(assert (= (and b!1476740 (not c!136370)) b!1476736))

(assert (= (and b!1476740 res!1003044) b!1476743))

(assert (= (and b!1476743 res!1003046) b!1476738))

(assert (= (and b!1476738 res!1003033) b!1476733))

(assert (= (and b!1476733 (not res!1003047)) b!1476742))

(assert (= (and b!1476742 res!1003042) b!1476739))

(declare-fun m!1362759 () Bool)

(assert (=> b!1476730 m!1362759))

(declare-fun m!1362761 () Bool)

(assert (=> b!1476741 m!1362761))

(assert (=> b!1476741 m!1362761))

(declare-fun m!1362763 () Bool)

(assert (=> b!1476741 m!1362763))

(assert (=> b!1476741 m!1362763))

(assert (=> b!1476741 m!1362761))

(declare-fun m!1362765 () Bool)

(assert (=> b!1476741 m!1362765))

(declare-fun m!1362767 () Bool)

(assert (=> b!1476744 m!1362767))

(assert (=> b!1476744 m!1362767))

(declare-fun m!1362769 () Bool)

(assert (=> b!1476744 m!1362769))

(declare-fun m!1362771 () Bool)

(assert (=> b!1476733 m!1362771))

(declare-fun m!1362773 () Bool)

(assert (=> b!1476733 m!1362773))

(declare-fun m!1362775 () Bool)

(assert (=> b!1476733 m!1362775))

(assert (=> b!1476733 m!1362761))

(assert (=> b!1476729 m!1362761))

(assert (=> b!1476729 m!1362761))

(declare-fun m!1362777 () Bool)

(assert (=> b!1476729 m!1362777))

(declare-fun m!1362779 () Bool)

(assert (=> b!1476731 m!1362779))

(assert (=> b!1476731 m!1362779))

(declare-fun m!1362781 () Bool)

(assert (=> b!1476731 m!1362781))

(assert (=> b!1476731 m!1362773))

(declare-fun m!1362783 () Bool)

(assert (=> b!1476731 m!1362783))

(declare-fun m!1362785 () Bool)

(assert (=> b!1476735 m!1362785))

(declare-fun m!1362787 () Bool)

(assert (=> b!1476738 m!1362787))

(declare-fun m!1362789 () Bool)

(assert (=> b!1476738 m!1362789))

(assert (=> b!1476738 m!1362761))

(declare-fun m!1362791 () Bool)

(assert (=> b!1476738 m!1362791))

(declare-fun m!1362793 () Bool)

(assert (=> b!1476738 m!1362793))

(assert (=> b!1476738 m!1362761))

(declare-fun m!1362795 () Bool)

(assert (=> b!1476728 m!1362795))

(assert (=> b!1476734 m!1362773))

(declare-fun m!1362797 () Bool)

(assert (=> b!1476734 m!1362797))

(declare-fun m!1362799 () Bool)

(assert (=> start!126184 m!1362799))

(declare-fun m!1362801 () Bool)

(assert (=> start!126184 m!1362801))

(assert (=> b!1476742 m!1362761))

(assert (=> b!1476742 m!1362761))

(declare-fun m!1362803 () Bool)

(assert (=> b!1476742 m!1362803))

(declare-fun m!1362805 () Bool)

(assert (=> b!1476736 m!1362805))

(declare-fun m!1362807 () Bool)

(assert (=> b!1476736 m!1362807))

(assert (=> b!1476737 m!1362761))

(assert (=> b!1476737 m!1362761))

(declare-fun m!1362809 () Bool)

(assert (=> b!1476737 m!1362809))

(push 1)

