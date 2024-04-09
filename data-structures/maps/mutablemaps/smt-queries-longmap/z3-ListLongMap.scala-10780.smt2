; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!126222 () Bool)

(assert start!126222)

(declare-fun b!1477754 () Bool)

(declare-fun res!1003952 () Bool)

(declare-fun e!829033 () Bool)

(assert (=> b!1477754 (=> (not res!1003952) (not e!829033))))

(declare-datatypes ((array!99245 0))(
  ( (array!99246 (arr!47897 (Array (_ BitVec 32) (_ BitVec 64))) (size!48448 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99245)

(declare-datatypes ((List!34578 0))(
  ( (Nil!34575) (Cons!34574 (h!35942 (_ BitVec 64)) (t!49279 List!34578)) )
))
(declare-fun arrayNoDuplicates!0 (array!99245 (_ BitVec 32) List!34578) Bool)

(assert (=> b!1477754 (= res!1003952 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34575))))

(declare-fun e!829027 () Bool)

(declare-datatypes ((SeekEntryResult!12160 0))(
  ( (MissingZero!12160 (index!51031 (_ BitVec 32))) (Found!12160 (index!51032 (_ BitVec 32))) (Intermediate!12160 (undefined!12972 Bool) (index!51033 (_ BitVec 32)) (x!132626 (_ BitVec 32))) (Undefined!12160) (MissingVacant!12160 (index!51034 (_ BitVec 32))) )
))
(declare-fun lt!645424 () SeekEntryResult!12160)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun lt!645422 () (_ BitVec 64))

(declare-fun lt!645423 () array!99245)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun b!1477755 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99245 (_ BitVec 32)) SeekEntryResult!12160)

(assert (=> b!1477755 (= e!829027 (= lt!645424 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!645422 lt!645423 mask!2687)))))

(declare-fun b!1477756 () Bool)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99245 (_ BitVec 32)) SeekEntryResult!12160)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99245 (_ BitVec 32)) SeekEntryResult!12160)

(assert (=> b!1477756 (= e!829027 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!645422 lt!645423 mask!2687) (seekEntryOrOpen!0 lt!645422 lt!645423 mask!2687)))))

(declare-fun b!1477757 () Bool)

(declare-fun e!829029 () Bool)

(assert (=> b!1477757 (= e!829029 (not true))))

(declare-fun e!829031 () Bool)

(assert (=> b!1477757 e!829031))

(declare-fun res!1003945 () Bool)

(assert (=> b!1477757 (=> (not res!1003945) (not e!829031))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun lt!645420 () SeekEntryResult!12160)

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1477757 (= res!1003945 (and (= lt!645420 (Found!12160 j!93)) (or (= (select (arr!47897 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47897 a!2862) intermediateBeforeIndex!19) (select (arr!47897 a!2862) j!93)))))))

(assert (=> b!1477757 (= lt!645420 (seekEntryOrOpen!0 (select (arr!47897 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99245 (_ BitVec 32)) Bool)

(assert (=> b!1477757 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!49608 0))(
  ( (Unit!49609) )
))
(declare-fun lt!645421 () Unit!49608)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99245 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49608)

(assert (=> b!1477757 (= lt!645421 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1477758 () Bool)

(declare-fun e!829034 () Bool)

(assert (=> b!1477758 (= e!829034 e!829029)))

(declare-fun res!1003956 () Bool)

(assert (=> b!1477758 (=> (not res!1003956) (not e!829029))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1477758 (= res!1003956 (= lt!645424 (Intermediate!12160 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1477758 (= lt!645424 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!645422 mask!2687) lt!645422 lt!645423 mask!2687))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1477758 (= lt!645422 (select (store (arr!47897 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1477760 () Bool)

(declare-fun res!1003959 () Bool)

(assert (=> b!1477760 (=> (not res!1003959) (not e!829033))))

(assert (=> b!1477760 (= res!1003959 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1477761 () Bool)

(declare-fun res!1003953 () Bool)

(assert (=> b!1477761 (=> (not res!1003953) (not e!829033))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1477761 (= res!1003953 (validKeyInArray!0 (select (arr!47897 a!2862) j!93)))))

(declare-fun b!1477762 () Bool)

(declare-fun e!829028 () Bool)

(assert (=> b!1477762 (= e!829028 e!829034)))

(declare-fun res!1003954 () Bool)

(assert (=> b!1477762 (=> (not res!1003954) (not e!829034))))

(declare-fun lt!645419 () SeekEntryResult!12160)

(assert (=> b!1477762 (= res!1003954 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47897 a!2862) j!93) mask!2687) (select (arr!47897 a!2862) j!93) a!2862 mask!2687) lt!645419))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1477762 (= lt!645419 (Intermediate!12160 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1477763 () Bool)

(declare-fun res!1003955 () Bool)

(assert (=> b!1477763 (=> (not res!1003955) (not e!829034))))

(assert (=> b!1477763 (= res!1003955 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47897 a!2862) j!93) a!2862 mask!2687) lt!645419))))

(declare-fun b!1477764 () Bool)

(declare-fun res!1003948 () Bool)

(assert (=> b!1477764 (=> (not res!1003948) (not e!829033))))

(assert (=> b!1477764 (= res!1003948 (and (= (size!48448 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48448 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48448 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1477765 () Bool)

(assert (=> b!1477765 (= e!829033 e!829028)))

(declare-fun res!1003944 () Bool)

(assert (=> b!1477765 (=> (not res!1003944) (not e!829028))))

(assert (=> b!1477765 (= res!1003944 (= (select (store (arr!47897 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1477765 (= lt!645423 (array!99246 (store (arr!47897 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48448 a!2862)))))

(declare-fun b!1477766 () Bool)

(declare-fun res!1003957 () Bool)

(assert (=> b!1477766 (=> (not res!1003957) (not e!829029))))

(assert (=> b!1477766 (= res!1003957 e!829027)))

(declare-fun c!136427 () Bool)

(assert (=> b!1477766 (= c!136427 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1477767 () Bool)

(declare-fun e!829032 () Bool)

(assert (=> b!1477767 (= e!829031 e!829032)))

(declare-fun res!1003951 () Bool)

(assert (=> b!1477767 (=> res!1003951 e!829032)))

(assert (=> b!1477767 (= res!1003951 (or (and (= (select (arr!47897 a!2862) index!646) (select (store (arr!47897 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47897 a!2862) index!646) (select (arr!47897 a!2862) j!93))) (not (= (select (arr!47897 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1477768 () Bool)

(declare-fun e!829026 () Bool)

(assert (=> b!1477768 (= e!829032 e!829026)))

(declare-fun res!1003947 () Bool)

(assert (=> b!1477768 (=> (not res!1003947) (not e!829026))))

(assert (=> b!1477768 (= res!1003947 (= lt!645420 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47897 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1477769 () Bool)

(declare-fun res!1003958 () Bool)

(assert (=> b!1477769 (=> (not res!1003958) (not e!829033))))

(assert (=> b!1477769 (= res!1003958 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48448 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48448 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48448 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1477759 () Bool)

(assert (=> b!1477759 (= e!829026 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun res!1003946 () Bool)

(assert (=> start!126222 (=> (not res!1003946) (not e!829033))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126222 (= res!1003946 (validMask!0 mask!2687))))

(assert (=> start!126222 e!829033))

(assert (=> start!126222 true))

(declare-fun array_inv!36842 (array!99245) Bool)

(assert (=> start!126222 (array_inv!36842 a!2862)))

(declare-fun b!1477770 () Bool)

(declare-fun res!1003949 () Bool)

(assert (=> b!1477770 (=> (not res!1003949) (not e!829033))))

(assert (=> b!1477770 (= res!1003949 (validKeyInArray!0 (select (arr!47897 a!2862) i!1006)))))

(declare-fun b!1477771 () Bool)

(declare-fun res!1003950 () Bool)

(assert (=> b!1477771 (=> (not res!1003950) (not e!829029))))

(assert (=> b!1477771 (= res!1003950 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(assert (= (and start!126222 res!1003946) b!1477764))

(assert (= (and b!1477764 res!1003948) b!1477770))

(assert (= (and b!1477770 res!1003949) b!1477761))

(assert (= (and b!1477761 res!1003953) b!1477760))

(assert (= (and b!1477760 res!1003959) b!1477754))

(assert (= (and b!1477754 res!1003952) b!1477769))

(assert (= (and b!1477769 res!1003958) b!1477765))

(assert (= (and b!1477765 res!1003944) b!1477762))

(assert (= (and b!1477762 res!1003954) b!1477763))

(assert (= (and b!1477763 res!1003955) b!1477758))

(assert (= (and b!1477758 res!1003956) b!1477766))

(assert (= (and b!1477766 c!136427) b!1477755))

(assert (= (and b!1477766 (not c!136427)) b!1477756))

(assert (= (and b!1477766 res!1003957) b!1477771))

(assert (= (and b!1477771 res!1003950) b!1477757))

(assert (= (and b!1477757 res!1003945) b!1477767))

(assert (= (and b!1477767 (not res!1003951)) b!1477768))

(assert (= (and b!1477768 res!1003947) b!1477759))

(declare-fun m!1363747 () Bool)

(assert (=> b!1477765 m!1363747))

(declare-fun m!1363749 () Bool)

(assert (=> b!1477765 m!1363749))

(declare-fun m!1363751 () Bool)

(assert (=> b!1477755 m!1363751))

(declare-fun m!1363753 () Bool)

(assert (=> b!1477768 m!1363753))

(assert (=> b!1477768 m!1363753))

(declare-fun m!1363755 () Bool)

(assert (=> b!1477768 m!1363755))

(declare-fun m!1363757 () Bool)

(assert (=> b!1477767 m!1363757))

(assert (=> b!1477767 m!1363747))

(declare-fun m!1363759 () Bool)

(assert (=> b!1477767 m!1363759))

(assert (=> b!1477767 m!1363753))

(declare-fun m!1363761 () Bool)

(assert (=> b!1477754 m!1363761))

(assert (=> b!1477761 m!1363753))

(assert (=> b!1477761 m!1363753))

(declare-fun m!1363763 () Bool)

(assert (=> b!1477761 m!1363763))

(declare-fun m!1363765 () Bool)

(assert (=> b!1477756 m!1363765))

(declare-fun m!1363767 () Bool)

(assert (=> b!1477756 m!1363767))

(declare-fun m!1363769 () Bool)

(assert (=> b!1477758 m!1363769))

(assert (=> b!1477758 m!1363769))

(declare-fun m!1363771 () Bool)

(assert (=> b!1477758 m!1363771))

(assert (=> b!1477758 m!1363747))

(declare-fun m!1363773 () Bool)

(assert (=> b!1477758 m!1363773))

(assert (=> b!1477763 m!1363753))

(assert (=> b!1477763 m!1363753))

(declare-fun m!1363775 () Bool)

(assert (=> b!1477763 m!1363775))

(declare-fun m!1363777 () Bool)

(assert (=> b!1477757 m!1363777))

(declare-fun m!1363779 () Bool)

(assert (=> b!1477757 m!1363779))

(assert (=> b!1477757 m!1363753))

(declare-fun m!1363781 () Bool)

(assert (=> b!1477757 m!1363781))

(declare-fun m!1363783 () Bool)

(assert (=> b!1477757 m!1363783))

(assert (=> b!1477757 m!1363753))

(declare-fun m!1363785 () Bool)

(assert (=> start!126222 m!1363785))

(declare-fun m!1363787 () Bool)

(assert (=> start!126222 m!1363787))

(declare-fun m!1363789 () Bool)

(assert (=> b!1477770 m!1363789))

(assert (=> b!1477770 m!1363789))

(declare-fun m!1363791 () Bool)

(assert (=> b!1477770 m!1363791))

(assert (=> b!1477762 m!1363753))

(assert (=> b!1477762 m!1363753))

(declare-fun m!1363793 () Bool)

(assert (=> b!1477762 m!1363793))

(assert (=> b!1477762 m!1363793))

(assert (=> b!1477762 m!1363753))

(declare-fun m!1363795 () Bool)

(assert (=> b!1477762 m!1363795))

(declare-fun m!1363797 () Bool)

(assert (=> b!1477760 m!1363797))

(check-sat (not b!1477754) (not b!1477768) (not b!1477755) (not b!1477761) (not b!1477770) (not b!1477758) (not b!1477762) (not start!126222) (not b!1477757) (not b!1477760) (not b!1477756) (not b!1477763))
(check-sat)
