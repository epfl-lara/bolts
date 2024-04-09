; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126296 () Bool)

(assert start!126296)

(declare-fun b!1479813 () Bool)

(declare-fun res!1005783 () Bool)

(declare-fun e!830061 () Bool)

(assert (=> b!1479813 (=> (not res!1005783) (not e!830061))))

(declare-datatypes ((array!99319 0))(
  ( (array!99320 (arr!47934 (Array (_ BitVec 32) (_ BitVec 64))) (size!48485 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99319)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1479813 (= res!1005783 (validKeyInArray!0 (select (arr!47934 a!2862) j!93)))))

(declare-fun b!1479814 () Bool)

(declare-fun res!1005781 () Bool)

(assert (=> b!1479814 (=> (not res!1005781) (not e!830061))))

(declare-datatypes ((List!34615 0))(
  ( (Nil!34612) (Cons!34611 (h!35979 (_ BitVec 64)) (t!49316 List!34615)) )
))
(declare-fun arrayNoDuplicates!0 (array!99319 (_ BitVec 32) List!34615) Bool)

(assert (=> b!1479814 (= res!1005781 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34612))))

(declare-fun b!1479815 () Bool)

(declare-fun e!830064 () Bool)

(declare-fun e!830060 () Bool)

(assert (=> b!1479815 (= e!830064 e!830060)))

(declare-fun res!1005786 () Bool)

(assert (=> b!1479815 (=> res!1005786 e!830060)))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1479815 (= res!1005786 (or (and (= (select (arr!47934 a!2862) index!646) (select (store (arr!47934 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47934 a!2862) index!646) (select (arr!47934 a!2862) j!93))) (not (= (select (arr!47934 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1479816 () Bool)

(declare-fun e!830069 () Bool)

(assert (=> b!1479816 (= e!830069 true)))

(declare-fun lt!646151 () (_ BitVec 64))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun lt!646146 () array!99319)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12197 0))(
  ( (MissingZero!12197 (index!51179 (_ BitVec 32))) (Found!12197 (index!51180 (_ BitVec 32))) (Intermediate!12197 (undefined!13009 Bool) (index!51181 (_ BitVec 32)) (x!132759 (_ BitVec 32))) (Undefined!12197) (MissingVacant!12197 (index!51182 (_ BitVec 32))) )
))
(declare-fun lt!646153 () SeekEntryResult!12197)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99319 (_ BitVec 32)) SeekEntryResult!12197)

(assert (=> b!1479816 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!646151 lt!646146 mask!2687) lt!646153)))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-datatypes ((Unit!49682 0))(
  ( (Unit!49683) )
))
(declare-fun lt!646147 () Unit!49682)

(declare-fun lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 (array!99319 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49682)

(assert (=> b!1479816 (= lt!646147 (lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 a!2862 i!1006 j!93 x!665 index!646 intermediateBeforeIndex!19 intermediateAfterIndex!19 mask!2687))))

(declare-fun b!1479817 () Bool)

(declare-fun res!1005785 () Bool)

(assert (=> b!1479817 (=> (not res!1005785) (not e!830061))))

(assert (=> b!1479817 (= res!1005785 (and (= (size!48485 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48485 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48485 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1479818 () Bool)

(declare-fun e!830067 () Bool)

(declare-fun e!830062 () Bool)

(assert (=> b!1479818 (= e!830067 e!830062)))

(declare-fun res!1005791 () Bool)

(assert (=> b!1479818 (=> (not res!1005791) (not e!830062))))

(declare-fun lt!646152 () SeekEntryResult!12197)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99319 (_ BitVec 32)) SeekEntryResult!12197)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1479818 (= res!1005791 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47934 a!2862) j!93) mask!2687) (select (arr!47934 a!2862) j!93) a!2862 mask!2687) lt!646152))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1479818 (= lt!646152 (Intermediate!12197 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1479819 () Bool)

(declare-fun res!1005790 () Bool)

(assert (=> b!1479819 (=> res!1005790 e!830069)))

(assert (=> b!1479819 (= res!1005790 (not (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateBeforeIndex!19 (select (arr!47934 a!2862) j!93) a!2862 mask!2687) lt!646153)))))

(declare-fun b!1479820 () Bool)

(declare-fun e!830068 () Bool)

(assert (=> b!1479820 (= e!830062 e!830068)))

(declare-fun res!1005793 () Bool)

(assert (=> b!1479820 (=> (not res!1005793) (not e!830068))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun lt!646149 () SeekEntryResult!12197)

(assert (=> b!1479820 (= res!1005793 (= lt!646149 (Intermediate!12197 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1479820 (= lt!646149 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!646151 mask!2687) lt!646151 lt!646146 mask!2687))))

(assert (=> b!1479820 (= lt!646151 (select (store (arr!47934 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1479821 () Bool)

(declare-fun res!1005792 () Bool)

(assert (=> b!1479821 (=> (not res!1005792) (not e!830061))))

(assert (=> b!1479821 (= res!1005792 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48485 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48485 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48485 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun res!1005788 () Bool)

(assert (=> start!126296 (=> (not res!1005788) (not e!830061))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126296 (= res!1005788 (validMask!0 mask!2687))))

(assert (=> start!126296 e!830061))

(assert (=> start!126296 true))

(declare-fun array_inv!36879 (array!99319) Bool)

(assert (=> start!126296 (array_inv!36879 a!2862)))

(declare-fun e!830063 () Bool)

(declare-fun b!1479822 () Bool)

(assert (=> b!1479822 (= e!830063 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1479823 () Bool)

(assert (=> b!1479823 (= e!830061 e!830067)))

(declare-fun res!1005789 () Bool)

(assert (=> b!1479823 (=> (not res!1005789) (not e!830067))))

(assert (=> b!1479823 (= res!1005789 (= (select (store (arr!47934 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1479823 (= lt!646146 (array!99320 (store (arr!47934 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48485 a!2862)))))

(declare-fun b!1479824 () Bool)

(declare-fun res!1005797 () Bool)

(assert (=> b!1479824 (=> (not res!1005797) (not e!830068))))

(declare-fun e!830065 () Bool)

(assert (=> b!1479824 (= res!1005797 e!830065)))

(declare-fun c!136538 () Bool)

(assert (=> b!1479824 (= c!136538 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1479825 () Bool)

(assert (=> b!1479825 (= e!830065 (= lt!646149 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!646151 lt!646146 mask!2687)))))

(declare-fun b!1479826 () Bool)

(assert (=> b!1479826 (= e!830068 (not e!830069))))

(declare-fun res!1005787 () Bool)

(assert (=> b!1479826 (=> res!1005787 e!830069)))

(assert (=> b!1479826 (= res!1005787 (or (and (= (select (arr!47934 a!2862) index!646) (select (store (arr!47934 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47934 a!2862) index!646) (select (arr!47934 a!2862) j!93))) (not (= (select (arr!47934 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47934 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1479826 e!830064))

(declare-fun res!1005798 () Bool)

(assert (=> b!1479826 (=> (not res!1005798) (not e!830064))))

(declare-fun lt!646148 () SeekEntryResult!12197)

(assert (=> b!1479826 (= res!1005798 (and (= lt!646148 lt!646153) (or (= (select (arr!47934 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47934 a!2862) intermediateBeforeIndex!19) (select (arr!47934 a!2862) j!93)))))))

(assert (=> b!1479826 (= lt!646153 (Found!12197 j!93))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99319 (_ BitVec 32)) SeekEntryResult!12197)

(assert (=> b!1479826 (= lt!646148 (seekEntryOrOpen!0 (select (arr!47934 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99319 (_ BitVec 32)) Bool)

(assert (=> b!1479826 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-fun lt!646150 () Unit!49682)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99319 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49682)

(assert (=> b!1479826 (= lt!646150 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1479827 () Bool)

(declare-fun res!1005794 () Bool)

(assert (=> b!1479827 (=> (not res!1005794) (not e!830068))))

(assert (=> b!1479827 (= res!1005794 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1479828 () Bool)

(declare-fun res!1005795 () Bool)

(assert (=> b!1479828 (=> (not res!1005795) (not e!830062))))

(assert (=> b!1479828 (= res!1005795 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47934 a!2862) j!93) a!2862 mask!2687) lt!646152))))

(declare-fun b!1479829 () Bool)

(assert (=> b!1479829 (= e!830060 e!830063)))

(declare-fun res!1005782 () Bool)

(assert (=> b!1479829 (=> (not res!1005782) (not e!830063))))

(assert (=> b!1479829 (= res!1005782 (= lt!646148 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47934 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1479830 () Bool)

(assert (=> b!1479830 (= e!830065 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!646151 lt!646146 mask!2687) (seekEntryOrOpen!0 lt!646151 lt!646146 mask!2687)))))

(declare-fun b!1479831 () Bool)

(declare-fun res!1005796 () Bool)

(assert (=> b!1479831 (=> (not res!1005796) (not e!830061))))

(assert (=> b!1479831 (= res!1005796 (validKeyInArray!0 (select (arr!47934 a!2862) i!1006)))))

(declare-fun b!1479832 () Bool)

(declare-fun res!1005784 () Bool)

(assert (=> b!1479832 (=> (not res!1005784) (not e!830061))))

(assert (=> b!1479832 (= res!1005784 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(assert (= (and start!126296 res!1005788) b!1479817))

(assert (= (and b!1479817 res!1005785) b!1479831))

(assert (= (and b!1479831 res!1005796) b!1479813))

(assert (= (and b!1479813 res!1005783) b!1479832))

(assert (= (and b!1479832 res!1005784) b!1479814))

(assert (= (and b!1479814 res!1005781) b!1479821))

(assert (= (and b!1479821 res!1005792) b!1479823))

(assert (= (and b!1479823 res!1005789) b!1479818))

(assert (= (and b!1479818 res!1005791) b!1479828))

(assert (= (and b!1479828 res!1005795) b!1479820))

(assert (= (and b!1479820 res!1005793) b!1479824))

(assert (= (and b!1479824 c!136538) b!1479825))

(assert (= (and b!1479824 (not c!136538)) b!1479830))

(assert (= (and b!1479824 res!1005797) b!1479827))

(assert (= (and b!1479827 res!1005794) b!1479826))

(assert (= (and b!1479826 res!1005798) b!1479815))

(assert (= (and b!1479815 (not res!1005786)) b!1479829))

(assert (= (and b!1479829 res!1005782) b!1479822))

(assert (= (and b!1479826 (not res!1005787)) b!1479819))

(assert (= (and b!1479819 (not res!1005790)) b!1479816))

(declare-fun m!1365709 () Bool)

(assert (=> b!1479826 m!1365709))

(declare-fun m!1365711 () Bool)

(assert (=> b!1479826 m!1365711))

(declare-fun m!1365713 () Bool)

(assert (=> b!1479826 m!1365713))

(declare-fun m!1365715 () Bool)

(assert (=> b!1479826 m!1365715))

(declare-fun m!1365717 () Bool)

(assert (=> b!1479826 m!1365717))

(declare-fun m!1365719 () Bool)

(assert (=> b!1479826 m!1365719))

(declare-fun m!1365721 () Bool)

(assert (=> b!1479826 m!1365721))

(declare-fun m!1365723 () Bool)

(assert (=> b!1479826 m!1365723))

(assert (=> b!1479826 m!1365719))

(declare-fun m!1365725 () Bool)

(assert (=> b!1479816 m!1365725))

(declare-fun m!1365727 () Bool)

(assert (=> b!1479816 m!1365727))

(assert (=> b!1479813 m!1365719))

(assert (=> b!1479813 m!1365719))

(declare-fun m!1365729 () Bool)

(assert (=> b!1479813 m!1365729))

(declare-fun m!1365731 () Bool)

(assert (=> b!1479825 m!1365731))

(assert (=> b!1479818 m!1365719))

(assert (=> b!1479818 m!1365719))

(declare-fun m!1365733 () Bool)

(assert (=> b!1479818 m!1365733))

(assert (=> b!1479818 m!1365733))

(assert (=> b!1479818 m!1365719))

(declare-fun m!1365735 () Bool)

(assert (=> b!1479818 m!1365735))

(assert (=> b!1479830 m!1365725))

(declare-fun m!1365737 () Bool)

(assert (=> b!1479830 m!1365737))

(declare-fun m!1365739 () Bool)

(assert (=> b!1479831 m!1365739))

(assert (=> b!1479831 m!1365739))

(declare-fun m!1365741 () Bool)

(assert (=> b!1479831 m!1365741))

(assert (=> b!1479819 m!1365719))

(assert (=> b!1479819 m!1365719))

(declare-fun m!1365743 () Bool)

(assert (=> b!1479819 m!1365743))

(declare-fun m!1365745 () Bool)

(assert (=> b!1479832 m!1365745))

(assert (=> b!1479823 m!1365711))

(declare-fun m!1365747 () Bool)

(assert (=> b!1479823 m!1365747))

(assert (=> b!1479828 m!1365719))

(assert (=> b!1479828 m!1365719))

(declare-fun m!1365749 () Bool)

(assert (=> b!1479828 m!1365749))

(assert (=> b!1479829 m!1365719))

(assert (=> b!1479829 m!1365719))

(declare-fun m!1365751 () Bool)

(assert (=> b!1479829 m!1365751))

(declare-fun m!1365753 () Bool)

(assert (=> start!126296 m!1365753))

(declare-fun m!1365755 () Bool)

(assert (=> start!126296 m!1365755))

(assert (=> b!1479815 m!1365717))

(assert (=> b!1479815 m!1365711))

(assert (=> b!1479815 m!1365715))

(assert (=> b!1479815 m!1365719))

(declare-fun m!1365757 () Bool)

(assert (=> b!1479814 m!1365757))

(declare-fun m!1365759 () Bool)

(assert (=> b!1479820 m!1365759))

(assert (=> b!1479820 m!1365759))

(declare-fun m!1365761 () Bool)

(assert (=> b!1479820 m!1365761))

(assert (=> b!1479820 m!1365711))

(declare-fun m!1365763 () Bool)

(assert (=> b!1479820 m!1365763))

(push 1)

