; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125384 () Bool)

(assert start!125384)

(declare-fun res!993799 () Bool)

(declare-fun e!823103 () Bool)

(assert (=> start!125384 (=> (not res!993799) (not e!823103))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125384 (= res!993799 (validMask!0 mask!2687))))

(assert (=> start!125384 e!823103))

(assert (=> start!125384 true))

(declare-datatypes ((array!98749 0))(
  ( (array!98750 (arr!47658 (Array (_ BitVec 32) (_ BitVec 64))) (size!48209 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98749)

(declare-fun array_inv!36603 (array!98749) Bool)

(assert (=> start!125384 (array_inv!36603 a!2862)))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun lt!641129 () (_ BitVec 32))

(declare-fun lt!641126 () (_ BitVec 64))

(declare-fun b!1464673 () Bool)

(declare-fun lt!641128 () array!98749)

(declare-fun e!823112 () Bool)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11933 0))(
  ( (MissingZero!11933 (index!50123 (_ BitVec 32))) (Found!11933 (index!50124 (_ BitVec 32))) (Intermediate!11933 (undefined!12745 Bool) (index!50125 (_ BitVec 32)) (x!131705 (_ BitVec 32))) (Undefined!11933) (MissingVacant!11933 (index!50126 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98749 (_ BitVec 32)) SeekEntryResult!11933)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98749 (_ BitVec 32)) SeekEntryResult!11933)

(assert (=> b!1464673 (= e!823112 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641129 intermediateAfterIndex!19 lt!641126 lt!641128 mask!2687) (seekEntryOrOpen!0 lt!641126 lt!641128 mask!2687))))))

(declare-fun b!1464674 () Bool)

(declare-fun res!993801 () Bool)

(declare-fun e!823106 () Bool)

(assert (=> b!1464674 (=> res!993801 e!823106)))

(declare-fun lt!641131 () SeekEntryResult!11933)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98749 (_ BitVec 32)) SeekEntryResult!11933)

(assert (=> b!1464674 (= res!993801 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641129 (select (arr!47658 a!2862) j!93) a!2862 mask!2687) lt!641131)))))

(declare-fun b!1464675 () Bool)

(declare-fun res!993808 () Bool)

(assert (=> b!1464675 (=> (not res!993808) (not e!823103))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1464675 (= res!993808 (and (= (size!48209 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48209 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48209 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1464676 () Bool)

(declare-fun res!993809 () Bool)

(assert (=> b!1464676 (=> (not res!993809) (not e!823103))))

(declare-datatypes ((List!34339 0))(
  ( (Nil!34336) (Cons!34335 (h!35685 (_ BitVec 64)) (t!49040 List!34339)) )
))
(declare-fun arrayNoDuplicates!0 (array!98749 (_ BitVec 32) List!34339) Bool)

(assert (=> b!1464676 (= res!993809 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34336))))

(declare-fun b!1464677 () Bool)

(declare-fun e!823104 () Bool)

(declare-fun e!823109 () Bool)

(assert (=> b!1464677 (= e!823104 (not e!823109))))

(declare-fun res!993803 () Bool)

(assert (=> b!1464677 (=> res!993803 e!823109)))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1464677 (= res!993803 (or (and (= (select (arr!47658 a!2862) index!646) (select (store (arr!47658 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47658 a!2862) index!646) (select (arr!47658 a!2862) j!93))) (= (select (arr!47658 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(declare-fun e!823108 () Bool)

(assert (=> b!1464677 e!823108))

(declare-fun res!993795 () Bool)

(assert (=> b!1464677 (=> (not res!993795) (not e!823108))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98749 (_ BitVec 32)) Bool)

(assert (=> b!1464677 (= res!993795 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49310 0))(
  ( (Unit!49311) )
))
(declare-fun lt!641127 () Unit!49310)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98749 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49310)

(assert (=> b!1464677 (= lt!641127 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1464678 () Bool)

(declare-fun res!993798 () Bool)

(assert (=> b!1464678 (=> (not res!993798) (not e!823103))))

(assert (=> b!1464678 (= res!993798 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1464679 () Bool)

(assert (=> b!1464679 (= e!823109 e!823106)))

(declare-fun res!993797 () Bool)

(assert (=> b!1464679 (=> res!993797 e!823106)))

(assert (=> b!1464679 (= res!993797 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!641129 #b00000000000000000000000000000000) (bvsge lt!641129 (size!48209 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1464679 (= lt!641129 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1464680 () Bool)

(declare-fun e!823111 () Bool)

(assert (=> b!1464680 (= e!823111 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!641126 lt!641128 mask!2687) (seekEntryOrOpen!0 lt!641126 lt!641128 mask!2687)))))

(declare-fun b!1464681 () Bool)

(declare-fun res!993810 () Bool)

(assert (=> b!1464681 (=> (not res!993810) (not e!823103))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1464681 (= res!993810 (validKeyInArray!0 (select (arr!47658 a!2862) j!93)))))

(declare-fun b!1464682 () Bool)

(assert (=> b!1464682 (= e!823106 true)))

(declare-fun lt!641125 () Bool)

(assert (=> b!1464682 (= lt!641125 e!823112)))

(declare-fun c!134954 () Bool)

(assert (=> b!1464682 (= c!134954 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1464683 () Bool)

(declare-fun res!993800 () Bool)

(assert (=> b!1464683 (=> (not res!993800) (not e!823103))))

(assert (=> b!1464683 (= res!993800 (validKeyInArray!0 (select (arr!47658 a!2862) i!1006)))))

(declare-fun b!1464684 () Bool)

(declare-fun e!823110 () Bool)

(assert (=> b!1464684 (= e!823103 e!823110)))

(declare-fun res!993806 () Bool)

(assert (=> b!1464684 (=> (not res!993806) (not e!823110))))

(assert (=> b!1464684 (= res!993806 (= (select (store (arr!47658 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1464684 (= lt!641128 (array!98750 (store (arr!47658 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48209 a!2862)))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun b!1464685 () Bool)

(assert (=> b!1464685 (= e!823108 (or (= (select (arr!47658 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47658 a!2862) intermediateBeforeIndex!19) (select (arr!47658 a!2862) j!93))))))

(declare-fun b!1464686 () Bool)

(declare-fun e!823105 () Bool)

(assert (=> b!1464686 (= e!823105 e!823104)))

(declare-fun res!993802 () Bool)

(assert (=> b!1464686 (=> (not res!993802) (not e!823104))))

(declare-fun lt!641130 () SeekEntryResult!11933)

(assert (=> b!1464686 (= res!993802 (= lt!641130 (Intermediate!11933 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1464686 (= lt!641130 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!641126 mask!2687) lt!641126 lt!641128 mask!2687))))

(assert (=> b!1464686 (= lt!641126 (select (store (arr!47658 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1464687 () Bool)

(declare-fun res!993807 () Bool)

(assert (=> b!1464687 (=> (not res!993807) (not e!823104))))

(assert (=> b!1464687 (= res!993807 e!823111)))

(declare-fun c!134953 () Bool)

(assert (=> b!1464687 (= c!134953 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1464688 () Bool)

(declare-fun res!993793 () Bool)

(assert (=> b!1464688 (=> (not res!993793) (not e!823108))))

(assert (=> b!1464688 (= res!993793 (= (seekEntryOrOpen!0 (select (arr!47658 a!2862) j!93) a!2862 mask!2687) (Found!11933 j!93)))))

(declare-fun b!1464689 () Bool)

(declare-fun res!993804 () Bool)

(assert (=> b!1464689 (=> (not res!993804) (not e!823103))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1464689 (= res!993804 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48209 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48209 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48209 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1464690 () Bool)

(declare-fun res!993805 () Bool)

(assert (=> b!1464690 (=> (not res!993805) (not e!823104))))

(assert (=> b!1464690 (= res!993805 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1464691 () Bool)

(assert (=> b!1464691 (= e!823110 e!823105)))

(declare-fun res!993796 () Bool)

(assert (=> b!1464691 (=> (not res!993796) (not e!823105))))

(assert (=> b!1464691 (= res!993796 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47658 a!2862) j!93) mask!2687) (select (arr!47658 a!2862) j!93) a!2862 mask!2687) lt!641131))))

(assert (=> b!1464691 (= lt!641131 (Intermediate!11933 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1464692 () Bool)

(assert (=> b!1464692 (= e!823112 (not (= lt!641130 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641129 lt!641126 lt!641128 mask!2687))))))

(declare-fun b!1464693 () Bool)

(assert (=> b!1464693 (= e!823111 (= lt!641130 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!641126 lt!641128 mask!2687)))))

(declare-fun b!1464694 () Bool)

(declare-fun res!993794 () Bool)

(assert (=> b!1464694 (=> (not res!993794) (not e!823105))))

(assert (=> b!1464694 (= res!993794 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47658 a!2862) j!93) a!2862 mask!2687) lt!641131))))

(assert (= (and start!125384 res!993799) b!1464675))

(assert (= (and b!1464675 res!993808) b!1464683))

(assert (= (and b!1464683 res!993800) b!1464681))

(assert (= (and b!1464681 res!993810) b!1464678))

(assert (= (and b!1464678 res!993798) b!1464676))

(assert (= (and b!1464676 res!993809) b!1464689))

(assert (= (and b!1464689 res!993804) b!1464684))

(assert (= (and b!1464684 res!993806) b!1464691))

(assert (= (and b!1464691 res!993796) b!1464694))

(assert (= (and b!1464694 res!993794) b!1464686))

(assert (= (and b!1464686 res!993802) b!1464687))

(assert (= (and b!1464687 c!134953) b!1464693))

(assert (= (and b!1464687 (not c!134953)) b!1464680))

(assert (= (and b!1464687 res!993807) b!1464690))

(assert (= (and b!1464690 res!993805) b!1464677))

(assert (= (and b!1464677 res!993795) b!1464688))

(assert (= (and b!1464688 res!993793) b!1464685))

(assert (= (and b!1464677 (not res!993803)) b!1464679))

(assert (= (and b!1464679 (not res!993797)) b!1464674))

(assert (= (and b!1464674 (not res!993801)) b!1464682))

(assert (= (and b!1464682 c!134954) b!1464692))

(assert (= (and b!1464682 (not c!134954)) b!1464673))

(declare-fun m!1351907 () Bool)

(assert (=> b!1464680 m!1351907))

(declare-fun m!1351909 () Bool)

(assert (=> b!1464680 m!1351909))

(declare-fun m!1351911 () Bool)

(assert (=> start!125384 m!1351911))

(declare-fun m!1351913 () Bool)

(assert (=> start!125384 m!1351913))

(declare-fun m!1351915 () Bool)

(assert (=> b!1464673 m!1351915))

(assert (=> b!1464673 m!1351909))

(declare-fun m!1351917 () Bool)

(assert (=> b!1464684 m!1351917))

(declare-fun m!1351919 () Bool)

(assert (=> b!1464684 m!1351919))

(declare-fun m!1351921 () Bool)

(assert (=> b!1464692 m!1351921))

(declare-fun m!1351923 () Bool)

(assert (=> b!1464694 m!1351923))

(assert (=> b!1464694 m!1351923))

(declare-fun m!1351925 () Bool)

(assert (=> b!1464694 m!1351925))

(declare-fun m!1351927 () Bool)

(assert (=> b!1464685 m!1351927))

(assert (=> b!1464685 m!1351923))

(declare-fun m!1351929 () Bool)

(assert (=> b!1464677 m!1351929))

(assert (=> b!1464677 m!1351917))

(declare-fun m!1351931 () Bool)

(assert (=> b!1464677 m!1351931))

(declare-fun m!1351933 () Bool)

(assert (=> b!1464677 m!1351933))

(declare-fun m!1351935 () Bool)

(assert (=> b!1464677 m!1351935))

(assert (=> b!1464677 m!1351923))

(declare-fun m!1351937 () Bool)

(assert (=> b!1464676 m!1351937))

(assert (=> b!1464688 m!1351923))

(assert (=> b!1464688 m!1351923))

(declare-fun m!1351939 () Bool)

(assert (=> b!1464688 m!1351939))

(declare-fun m!1351941 () Bool)

(assert (=> b!1464678 m!1351941))

(assert (=> b!1464681 m!1351923))

(assert (=> b!1464681 m!1351923))

(declare-fun m!1351943 () Bool)

(assert (=> b!1464681 m!1351943))

(declare-fun m!1351945 () Bool)

(assert (=> b!1464679 m!1351945))

(declare-fun m!1351947 () Bool)

(assert (=> b!1464683 m!1351947))

(assert (=> b!1464683 m!1351947))

(declare-fun m!1351949 () Bool)

(assert (=> b!1464683 m!1351949))

(assert (=> b!1464674 m!1351923))

(assert (=> b!1464674 m!1351923))

(declare-fun m!1351951 () Bool)

(assert (=> b!1464674 m!1351951))

(declare-fun m!1351953 () Bool)

(assert (=> b!1464686 m!1351953))

(assert (=> b!1464686 m!1351953))

(declare-fun m!1351955 () Bool)

(assert (=> b!1464686 m!1351955))

(assert (=> b!1464686 m!1351917))

(declare-fun m!1351957 () Bool)

(assert (=> b!1464686 m!1351957))

(declare-fun m!1351959 () Bool)

(assert (=> b!1464693 m!1351959))

(assert (=> b!1464691 m!1351923))

(assert (=> b!1464691 m!1351923))

(declare-fun m!1351961 () Bool)

(assert (=> b!1464691 m!1351961))

(assert (=> b!1464691 m!1351961))

(assert (=> b!1464691 m!1351923))

(declare-fun m!1351963 () Bool)

(assert (=> b!1464691 m!1351963))

(push 1)

