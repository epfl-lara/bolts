; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125358 () Bool)

(assert start!125358)

(declare-fun b!1463815 () Bool)

(declare-fun e!822713 () Bool)

(declare-fun e!822721 () Bool)

(assert (=> b!1463815 (= e!822713 (not e!822721))))

(declare-fun res!993100 () Bool)

(assert (=> b!1463815 (=> res!993100 e!822721)))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!98723 0))(
  ( (array!98724 (arr!47645 (Array (_ BitVec 32) (_ BitVec 64))) (size!48196 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98723)

(assert (=> b!1463815 (= res!993100 (or (and (= (select (arr!47645 a!2862) index!646) (select (store (arr!47645 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47645 a!2862) index!646) (select (arr!47645 a!2862) j!93))) (= (select (arr!47645 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(declare-fun e!822714 () Bool)

(assert (=> b!1463815 e!822714))

(declare-fun res!993104 () Bool)

(assert (=> b!1463815 (=> (not res!993104) (not e!822714))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98723 (_ BitVec 32)) Bool)

(assert (=> b!1463815 (= res!993104 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49284 0))(
  ( (Unit!49285) )
))
(declare-fun lt!640852 () Unit!49284)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98723 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49284)

(assert (=> b!1463815 (= lt!640852 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1463816 () Bool)

(declare-fun res!993106 () Bool)

(declare-fun e!822722 () Bool)

(assert (=> b!1463816 (=> (not res!993106) (not e!822722))))

(declare-datatypes ((SeekEntryResult!11920 0))(
  ( (MissingZero!11920 (index!50071 (_ BitVec 32))) (Found!11920 (index!50072 (_ BitVec 32))) (Intermediate!11920 (undefined!12732 Bool) (index!50073 (_ BitVec 32)) (x!131660 (_ BitVec 32))) (Undefined!11920) (MissingVacant!11920 (index!50074 (_ BitVec 32))) )
))
(declare-fun lt!640855 () SeekEntryResult!11920)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98723 (_ BitVec 32)) SeekEntryResult!11920)

(assert (=> b!1463816 (= res!993106 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47645 a!2862) j!93) a!2862 mask!2687) lt!640855))))

(declare-fun b!1463817 () Bool)

(declare-fun res!993094 () Bool)

(assert (=> b!1463817 (=> (not res!993094) (not e!822713))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1463817 (= res!993094 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1463818 () Bool)

(declare-fun e!822716 () Bool)

(assert (=> b!1463818 (= e!822716 e!822722)))

(declare-fun res!993097 () Bool)

(assert (=> b!1463818 (=> (not res!993097) (not e!822722))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1463818 (= res!993097 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47645 a!2862) j!93) mask!2687) (select (arr!47645 a!2862) j!93) a!2862 mask!2687) lt!640855))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1463818 (= lt!640855 (Intermediate!11920 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1463819 () Bool)

(declare-fun res!993102 () Bool)

(declare-fun e!822720 () Bool)

(assert (=> b!1463819 (=> (not res!993102) (not e!822720))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1463819 (= res!993102 (validKeyInArray!0 (select (arr!47645 a!2862) i!1006)))))

(declare-fun b!1463820 () Bool)

(assert (=> b!1463820 (= e!822722 e!822713)))

(declare-fun res!993098 () Bool)

(assert (=> b!1463820 (=> (not res!993098) (not e!822713))))

(declare-fun lt!640856 () SeekEntryResult!11920)

(assert (=> b!1463820 (= res!993098 (= lt!640856 (Intermediate!11920 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!640854 () array!98723)

(declare-fun lt!640853 () (_ BitVec 64))

(assert (=> b!1463820 (= lt!640856 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!640853 mask!2687) lt!640853 lt!640854 mask!2687))))

(assert (=> b!1463820 (= lt!640853 (select (store (arr!47645 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1463821 () Bool)

(declare-fun res!993095 () Bool)

(assert (=> b!1463821 (=> (not res!993095) (not e!822713))))

(declare-fun e!822717 () Bool)

(assert (=> b!1463821 (= res!993095 e!822717)))

(declare-fun c!134876 () Bool)

(assert (=> b!1463821 (= c!134876 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1463822 () Bool)

(declare-fun e!822718 () Bool)

(assert (=> b!1463822 (= e!822718 true)))

(declare-fun lt!640858 () Bool)

(declare-fun e!822715 () Bool)

(assert (=> b!1463822 (= lt!640858 e!822715)))

(declare-fun c!134875 () Bool)

(assert (=> b!1463822 (= c!134875 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1463823 () Bool)

(declare-fun lt!640857 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98723 (_ BitVec 32)) SeekEntryResult!11920)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98723 (_ BitVec 32)) SeekEntryResult!11920)

(assert (=> b!1463823 (= e!822715 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640857 intermediateAfterIndex!19 lt!640853 lt!640854 mask!2687) (seekEntryOrOpen!0 lt!640853 lt!640854 mask!2687))))))

(declare-fun b!1463824 () Bool)

(assert (=> b!1463824 (= e!822717 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!640853 lt!640854 mask!2687) (seekEntryOrOpen!0 lt!640853 lt!640854 mask!2687)))))

(declare-fun b!1463825 () Bool)

(assert (=> b!1463825 (= e!822720 e!822716)))

(declare-fun res!993105 () Bool)

(assert (=> b!1463825 (=> (not res!993105) (not e!822716))))

(assert (=> b!1463825 (= res!993105 (= (select (store (arr!47645 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1463825 (= lt!640854 (array!98724 (store (arr!47645 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48196 a!2862)))))

(declare-fun b!1463826 () Bool)

(assert (=> b!1463826 (= e!822717 (= lt!640856 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!640853 lt!640854 mask!2687)))))

(declare-fun b!1463827 () Bool)

(declare-fun res!993091 () Bool)

(assert (=> b!1463827 (=> (not res!993091) (not e!822720))))

(assert (=> b!1463827 (= res!993091 (and (= (size!48196 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48196 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48196 a!2862)) (not (= i!1006 j!93))))))

(declare-fun res!993103 () Bool)

(assert (=> start!125358 (=> (not res!993103) (not e!822720))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125358 (= res!993103 (validMask!0 mask!2687))))

(assert (=> start!125358 e!822720))

(assert (=> start!125358 true))

(declare-fun array_inv!36590 (array!98723) Bool)

(assert (=> start!125358 (array_inv!36590 a!2862)))

(declare-fun b!1463828 () Bool)

(declare-fun res!993096 () Bool)

(assert (=> b!1463828 (=> res!993096 e!822718)))

(assert (=> b!1463828 (= res!993096 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640857 (select (arr!47645 a!2862) j!93) a!2862 mask!2687) lt!640855)))))

(declare-fun b!1463829 () Bool)

(declare-fun res!993108 () Bool)

(assert (=> b!1463829 (=> (not res!993108) (not e!822720))))

(assert (=> b!1463829 (= res!993108 (validKeyInArray!0 (select (arr!47645 a!2862) j!93)))))

(declare-fun b!1463830 () Bool)

(declare-fun res!993099 () Bool)

(assert (=> b!1463830 (=> (not res!993099) (not e!822714))))

(assert (=> b!1463830 (= res!993099 (= (seekEntryOrOpen!0 (select (arr!47645 a!2862) j!93) a!2862 mask!2687) (Found!11920 j!93)))))

(declare-fun b!1463831 () Bool)

(declare-fun res!993093 () Bool)

(assert (=> b!1463831 (=> (not res!993093) (not e!822720))))

(assert (=> b!1463831 (= res!993093 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48196 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48196 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48196 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1463832 () Bool)

(assert (=> b!1463832 (= e!822714 (or (= (select (arr!47645 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47645 a!2862) intermediateBeforeIndex!19) (select (arr!47645 a!2862) j!93))))))

(declare-fun b!1463833 () Bool)

(assert (=> b!1463833 (= e!822715 (not (= lt!640856 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640857 lt!640853 lt!640854 mask!2687))))))

(declare-fun b!1463834 () Bool)

(declare-fun res!993092 () Bool)

(assert (=> b!1463834 (=> (not res!993092) (not e!822720))))

(declare-datatypes ((List!34326 0))(
  ( (Nil!34323) (Cons!34322 (h!35672 (_ BitVec 64)) (t!49027 List!34326)) )
))
(declare-fun arrayNoDuplicates!0 (array!98723 (_ BitVec 32) List!34326) Bool)

(assert (=> b!1463834 (= res!993092 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34323))))

(declare-fun b!1463835 () Bool)

(declare-fun res!993107 () Bool)

(assert (=> b!1463835 (=> (not res!993107) (not e!822720))))

(assert (=> b!1463835 (= res!993107 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1463836 () Bool)

(assert (=> b!1463836 (= e!822721 e!822718)))

(declare-fun res!993101 () Bool)

(assert (=> b!1463836 (=> res!993101 e!822718)))

(assert (=> b!1463836 (= res!993101 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!640857 #b00000000000000000000000000000000) (bvsge lt!640857 (size!48196 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1463836 (= lt!640857 (nextIndex!0 index!646 x!665 mask!2687))))

(assert (= (and start!125358 res!993103) b!1463827))

(assert (= (and b!1463827 res!993091) b!1463819))

(assert (= (and b!1463819 res!993102) b!1463829))

(assert (= (and b!1463829 res!993108) b!1463835))

(assert (= (and b!1463835 res!993107) b!1463834))

(assert (= (and b!1463834 res!993092) b!1463831))

(assert (= (and b!1463831 res!993093) b!1463825))

(assert (= (and b!1463825 res!993105) b!1463818))

(assert (= (and b!1463818 res!993097) b!1463816))

(assert (= (and b!1463816 res!993106) b!1463820))

(assert (= (and b!1463820 res!993098) b!1463821))

(assert (= (and b!1463821 c!134876) b!1463826))

(assert (= (and b!1463821 (not c!134876)) b!1463824))

(assert (= (and b!1463821 res!993095) b!1463817))

(assert (= (and b!1463817 res!993094) b!1463815))

(assert (= (and b!1463815 res!993104) b!1463830))

(assert (= (and b!1463830 res!993099) b!1463832))

(assert (= (and b!1463815 (not res!993100)) b!1463836))

(assert (= (and b!1463836 (not res!993101)) b!1463828))

(assert (= (and b!1463828 (not res!993096)) b!1463822))

(assert (= (and b!1463822 c!134875) b!1463833))

(assert (= (and b!1463822 (not c!134875)) b!1463823))

(declare-fun m!1351153 () Bool)

(assert (=> b!1463825 m!1351153))

(declare-fun m!1351155 () Bool)

(assert (=> b!1463825 m!1351155))

(declare-fun m!1351157 () Bool)

(assert (=> b!1463823 m!1351157))

(declare-fun m!1351159 () Bool)

(assert (=> b!1463823 m!1351159))

(declare-fun m!1351161 () Bool)

(assert (=> b!1463828 m!1351161))

(assert (=> b!1463828 m!1351161))

(declare-fun m!1351163 () Bool)

(assert (=> b!1463828 m!1351163))

(declare-fun m!1351165 () Bool)

(assert (=> b!1463819 m!1351165))

(assert (=> b!1463819 m!1351165))

(declare-fun m!1351167 () Bool)

(assert (=> b!1463819 m!1351167))

(declare-fun m!1351169 () Bool)

(assert (=> b!1463835 m!1351169))

(declare-fun m!1351171 () Bool)

(assert (=> b!1463834 m!1351171))

(declare-fun m!1351173 () Bool)

(assert (=> b!1463832 m!1351173))

(assert (=> b!1463832 m!1351161))

(assert (=> b!1463818 m!1351161))

(assert (=> b!1463818 m!1351161))

(declare-fun m!1351175 () Bool)

(assert (=> b!1463818 m!1351175))

(assert (=> b!1463818 m!1351175))

(assert (=> b!1463818 m!1351161))

(declare-fun m!1351177 () Bool)

(assert (=> b!1463818 m!1351177))

(declare-fun m!1351179 () Bool)

(assert (=> b!1463824 m!1351179))

(assert (=> b!1463824 m!1351159))

(declare-fun m!1351181 () Bool)

(assert (=> b!1463826 m!1351181))

(assert (=> b!1463816 m!1351161))

(assert (=> b!1463816 m!1351161))

(declare-fun m!1351183 () Bool)

(assert (=> b!1463816 m!1351183))

(assert (=> b!1463829 m!1351161))

(assert (=> b!1463829 m!1351161))

(declare-fun m!1351185 () Bool)

(assert (=> b!1463829 m!1351185))

(declare-fun m!1351187 () Bool)

(assert (=> b!1463820 m!1351187))

(assert (=> b!1463820 m!1351187))

(declare-fun m!1351189 () Bool)

(assert (=> b!1463820 m!1351189))

(assert (=> b!1463820 m!1351153))

(declare-fun m!1351191 () Bool)

(assert (=> b!1463820 m!1351191))

(declare-fun m!1351193 () Bool)

(assert (=> b!1463836 m!1351193))

(assert (=> b!1463830 m!1351161))

(assert (=> b!1463830 m!1351161))

(declare-fun m!1351195 () Bool)

(assert (=> b!1463830 m!1351195))

(declare-fun m!1351197 () Bool)

(assert (=> b!1463833 m!1351197))

(declare-fun m!1351199 () Bool)

(assert (=> start!125358 m!1351199))

(declare-fun m!1351201 () Bool)

(assert (=> start!125358 m!1351201))

(declare-fun m!1351203 () Bool)

(assert (=> b!1463815 m!1351203))

(assert (=> b!1463815 m!1351153))

(declare-fun m!1351205 () Bool)

(assert (=> b!1463815 m!1351205))

(declare-fun m!1351207 () Bool)

(assert (=> b!1463815 m!1351207))

(declare-fun m!1351209 () Bool)

(assert (=> b!1463815 m!1351209))

(assert (=> b!1463815 m!1351161))

(check-sat (not b!1463833) (not b!1463815) (not b!1463826) (not b!1463834) (not b!1463824) (not start!125358) (not b!1463828) (not b!1463830) (not b!1463816) (not b!1463823) (not b!1463818) (not b!1463829) (not b!1463820) (not b!1463819) (not b!1463836) (not b!1463835))
(check-sat)
