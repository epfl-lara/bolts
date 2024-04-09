; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!126186 () Bool)

(assert start!126186)

(declare-fun b!1476782 () Bool)

(declare-fun res!1003089 () Bool)

(declare-fun e!828547 () Bool)

(assert (=> b!1476782 (=> (not res!1003089) (not e!828547))))

(declare-datatypes ((SeekEntryResult!12142 0))(
  ( (MissingZero!12142 (index!50959 (_ BitVec 32))) (Found!12142 (index!50960 (_ BitVec 32))) (Intermediate!12142 (undefined!12954 Bool) (index!50961 (_ BitVec 32)) (x!132560 (_ BitVec 32))) (Undefined!12142) (MissingVacant!12142 (index!50962 (_ BitVec 32))) )
))
(declare-fun lt!645100 () SeekEntryResult!12142)

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!99209 0))(
  ( (array!99210 (arr!47879 (Array (_ BitVec 32) (_ BitVec 64))) (size!48430 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99209)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99209 (_ BitVec 32)) SeekEntryResult!12142)

(assert (=> b!1476782 (= res!1003089 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47879 a!2862) j!93) a!2862 mask!2687) lt!645100))))

(declare-fun b!1476783 () Bool)

(declare-fun res!1003083 () Bool)

(declare-fun e!828548 () Bool)

(assert (=> b!1476783 (=> (not res!1003083) (not e!828548))))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1476783 (= res!1003083 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1476784 () Bool)

(declare-fun res!1003085 () Bool)

(declare-fun e!828545 () Bool)

(assert (=> b!1476784 (=> (not res!1003085) (not e!828545))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1476784 (= res!1003085 (validKeyInArray!0 (select (arr!47879 a!2862) j!93)))))

(declare-fun b!1476785 () Bool)

(declare-fun e!828541 () Bool)

(declare-fun e!828543 () Bool)

(assert (=> b!1476785 (= e!828541 e!828543)))

(declare-fun res!1003091 () Bool)

(assert (=> b!1476785 (=> (not res!1003091) (not e!828543))))

(declare-fun lt!645098 () SeekEntryResult!12142)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99209 (_ BitVec 32)) SeekEntryResult!12142)

(assert (=> b!1476785 (= res!1003091 (= lt!645098 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47879 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1476786 () Bool)

(declare-fun res!1003081 () Bool)

(assert (=> b!1476786 (=> (not res!1003081) (not e!828545))))

(assert (=> b!1476786 (= res!1003081 (and (= (size!48430 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48430 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48430 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1476787 () Bool)

(declare-fun e!828546 () Bool)

(assert (=> b!1476787 (= e!828546 e!828541)))

(declare-fun res!1003082 () Bool)

(assert (=> b!1476787 (=> res!1003082 e!828541)))

(assert (=> b!1476787 (= res!1003082 (or (and (= (select (arr!47879 a!2862) index!646) (select (store (arr!47879 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47879 a!2862) index!646) (select (arr!47879 a!2862) j!93))) (not (= (select (arr!47879 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1476788 () Bool)

(declare-fun e!828540 () Bool)

(assert (=> b!1476788 (= e!828540 e!828547)))

(declare-fun res!1003086 () Bool)

(assert (=> b!1476788 (=> (not res!1003086) (not e!828547))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1476788 (= res!1003086 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47879 a!2862) j!93) mask!2687) (select (arr!47879 a!2862) j!93) a!2862 mask!2687) lt!645100))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1476788 (= lt!645100 (Intermediate!12142 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1476789 () Bool)

(assert (=> b!1476789 (= e!828547 e!828548)))

(declare-fun res!1003095 () Bool)

(assert (=> b!1476789 (=> (not res!1003095) (not e!828548))))

(declare-fun lt!645096 () SeekEntryResult!12142)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1476789 (= res!1003095 (= lt!645096 (Intermediate!12142 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!645099 () (_ BitVec 64))

(declare-fun lt!645097 () array!99209)

(assert (=> b!1476789 (= lt!645096 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!645099 mask!2687) lt!645099 lt!645097 mask!2687))))

(assert (=> b!1476789 (= lt!645099 (select (store (arr!47879 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1476790 () Bool)

(assert (=> b!1476790 (= e!828543 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun res!1003080 () Bool)

(assert (=> start!126186 (=> (not res!1003080) (not e!828545))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126186 (= res!1003080 (validMask!0 mask!2687))))

(assert (=> start!126186 e!828545))

(assert (=> start!126186 true))

(declare-fun array_inv!36824 (array!99209) Bool)

(assert (=> start!126186 (array_inv!36824 a!2862)))

(declare-fun b!1476791 () Bool)

(assert (=> b!1476791 (= e!828545 e!828540)))

(declare-fun res!1003090 () Bool)

(assert (=> b!1476791 (=> (not res!1003090) (not e!828540))))

(assert (=> b!1476791 (= res!1003090 (= (select (store (arr!47879 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1476791 (= lt!645097 (array!99210 (store (arr!47879 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48430 a!2862)))))

(declare-fun b!1476792 () Bool)

(declare-fun res!1003084 () Bool)

(assert (=> b!1476792 (=> (not res!1003084) (not e!828545))))

(assert (=> b!1476792 (= res!1003084 (validKeyInArray!0 (select (arr!47879 a!2862) i!1006)))))

(declare-fun b!1476793 () Bool)

(declare-fun res!1003093 () Bool)

(assert (=> b!1476793 (=> (not res!1003093) (not e!828545))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99209 (_ BitVec 32)) Bool)

(assert (=> b!1476793 (= res!1003093 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1476794 () Bool)

(declare-fun res!1003094 () Bool)

(assert (=> b!1476794 (=> (not res!1003094) (not e!828545))))

(declare-datatypes ((List!34560 0))(
  ( (Nil!34557) (Cons!34556 (h!35924 (_ BitVec 64)) (t!49261 List!34560)) )
))
(declare-fun arrayNoDuplicates!0 (array!99209 (_ BitVec 32) List!34560) Bool)

(assert (=> b!1476794 (= res!1003094 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34557))))

(declare-fun b!1476795 () Bool)

(declare-fun res!1003087 () Bool)

(assert (=> b!1476795 (=> (not res!1003087) (not e!828548))))

(declare-fun e!828544 () Bool)

(assert (=> b!1476795 (= res!1003087 e!828544)))

(declare-fun c!136373 () Bool)

(assert (=> b!1476795 (= c!136373 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1476796 () Bool)

(assert (=> b!1476796 (= e!828548 (not true))))

(assert (=> b!1476796 e!828546))

(declare-fun res!1003088 () Bool)

(assert (=> b!1476796 (=> (not res!1003088) (not e!828546))))

(assert (=> b!1476796 (= res!1003088 (and (= lt!645098 (Found!12142 j!93)) (or (= (select (arr!47879 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47879 a!2862) intermediateBeforeIndex!19) (select (arr!47879 a!2862) j!93)))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99209 (_ BitVec 32)) SeekEntryResult!12142)

(assert (=> b!1476796 (= lt!645098 (seekEntryOrOpen!0 (select (arr!47879 a!2862) j!93) a!2862 mask!2687))))

(assert (=> b!1476796 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!49572 0))(
  ( (Unit!49573) )
))
(declare-fun lt!645095 () Unit!49572)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99209 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49572)

(assert (=> b!1476796 (= lt!645095 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1476797 () Bool)

(assert (=> b!1476797 (= e!828544 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!645099 lt!645097 mask!2687) (seekEntryOrOpen!0 lt!645099 lt!645097 mask!2687)))))

(declare-fun b!1476798 () Bool)

(declare-fun res!1003092 () Bool)

(assert (=> b!1476798 (=> (not res!1003092) (not e!828545))))

(assert (=> b!1476798 (= res!1003092 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48430 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48430 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48430 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1476799 () Bool)

(assert (=> b!1476799 (= e!828544 (= lt!645096 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!645099 lt!645097 mask!2687)))))

(assert (= (and start!126186 res!1003080) b!1476786))

(assert (= (and b!1476786 res!1003081) b!1476792))

(assert (= (and b!1476792 res!1003084) b!1476784))

(assert (= (and b!1476784 res!1003085) b!1476793))

(assert (= (and b!1476793 res!1003093) b!1476794))

(assert (= (and b!1476794 res!1003094) b!1476798))

(assert (= (and b!1476798 res!1003092) b!1476791))

(assert (= (and b!1476791 res!1003090) b!1476788))

(assert (= (and b!1476788 res!1003086) b!1476782))

(assert (= (and b!1476782 res!1003089) b!1476789))

(assert (= (and b!1476789 res!1003095) b!1476795))

(assert (= (and b!1476795 c!136373) b!1476799))

(assert (= (and b!1476795 (not c!136373)) b!1476797))

(assert (= (and b!1476795 res!1003087) b!1476783))

(assert (= (and b!1476783 res!1003083) b!1476796))

(assert (= (and b!1476796 res!1003088) b!1476787))

(assert (= (and b!1476787 (not res!1003082)) b!1476785))

(assert (= (and b!1476785 res!1003091) b!1476790))

(declare-fun m!1362811 () Bool)

(assert (=> b!1476785 m!1362811))

(assert (=> b!1476785 m!1362811))

(declare-fun m!1362813 () Bool)

(assert (=> b!1476785 m!1362813))

(assert (=> b!1476788 m!1362811))

(assert (=> b!1476788 m!1362811))

(declare-fun m!1362815 () Bool)

(assert (=> b!1476788 m!1362815))

(assert (=> b!1476788 m!1362815))

(assert (=> b!1476788 m!1362811))

(declare-fun m!1362817 () Bool)

(assert (=> b!1476788 m!1362817))

(assert (=> b!1476784 m!1362811))

(assert (=> b!1476784 m!1362811))

(declare-fun m!1362819 () Bool)

(assert (=> b!1476784 m!1362819))

(declare-fun m!1362821 () Bool)

(assert (=> b!1476794 m!1362821))

(declare-fun m!1362823 () Bool)

(assert (=> b!1476796 m!1362823))

(declare-fun m!1362825 () Bool)

(assert (=> b!1476796 m!1362825))

(assert (=> b!1476796 m!1362811))

(declare-fun m!1362827 () Bool)

(assert (=> b!1476796 m!1362827))

(declare-fun m!1362829 () Bool)

(assert (=> b!1476796 m!1362829))

(assert (=> b!1476796 m!1362811))

(declare-fun m!1362831 () Bool)

(assert (=> b!1476792 m!1362831))

(assert (=> b!1476792 m!1362831))

(declare-fun m!1362833 () Bool)

(assert (=> b!1476792 m!1362833))

(declare-fun m!1362835 () Bool)

(assert (=> b!1476791 m!1362835))

(declare-fun m!1362837 () Bool)

(assert (=> b!1476791 m!1362837))

(declare-fun m!1362839 () Bool)

(assert (=> b!1476789 m!1362839))

(assert (=> b!1476789 m!1362839))

(declare-fun m!1362841 () Bool)

(assert (=> b!1476789 m!1362841))

(assert (=> b!1476789 m!1362835))

(declare-fun m!1362843 () Bool)

(assert (=> b!1476789 m!1362843))

(declare-fun m!1362845 () Bool)

(assert (=> b!1476793 m!1362845))

(declare-fun m!1362847 () Bool)

(assert (=> start!126186 m!1362847))

(declare-fun m!1362849 () Bool)

(assert (=> start!126186 m!1362849))

(assert (=> b!1476782 m!1362811))

(assert (=> b!1476782 m!1362811))

(declare-fun m!1362851 () Bool)

(assert (=> b!1476782 m!1362851))

(declare-fun m!1362853 () Bool)

(assert (=> b!1476797 m!1362853))

(declare-fun m!1362855 () Bool)

(assert (=> b!1476797 m!1362855))

(declare-fun m!1362857 () Bool)

(assert (=> b!1476787 m!1362857))

(assert (=> b!1476787 m!1362835))

(declare-fun m!1362859 () Bool)

(assert (=> b!1476787 m!1362859))

(assert (=> b!1476787 m!1362811))

(declare-fun m!1362861 () Bool)

(assert (=> b!1476799 m!1362861))

(check-sat (not b!1476789) (not b!1476784) (not b!1476794) (not b!1476799) (not b!1476785) (not b!1476792) (not start!126186) (not b!1476788) (not b!1476793) (not b!1476782) (not b!1476796) (not b!1476797))
(check-sat)
