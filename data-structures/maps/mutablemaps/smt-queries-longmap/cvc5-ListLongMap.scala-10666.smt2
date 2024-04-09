; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125176 () Bool)

(assert start!125176)

(declare-fun b!1457980 () Bool)

(declare-fun e!820157 () Bool)

(declare-fun e!820154 () Bool)

(assert (=> b!1457980 (= e!820157 (not e!820154))))

(declare-fun res!988287 () Bool)

(assert (=> b!1457980 (=> res!988287 e!820154)))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!98541 0))(
  ( (array!98542 (arr!47554 (Array (_ BitVec 32) (_ BitVec 64))) (size!48105 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98541)

(assert (=> b!1457980 (= res!988287 (or (and (= (select (arr!47554 a!2862) index!646) (select (store (arr!47554 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47554 a!2862) index!646) (select (arr!47554 a!2862) j!93))) (= (select (arr!47554 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(declare-fun e!820160 () Bool)

(assert (=> b!1457980 e!820160))

(declare-fun res!988280 () Bool)

(assert (=> b!1457980 (=> (not res!988280) (not e!820160))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98541 (_ BitVec 32)) Bool)

(assert (=> b!1457980 (= res!988280 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49102 0))(
  ( (Unit!49103) )
))
(declare-fun lt!638845 () Unit!49102)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98541 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49102)

(assert (=> b!1457980 (= lt!638845 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1457981 () Bool)

(declare-fun e!820156 () Bool)

(assert (=> b!1457981 (= e!820154 e!820156)))

(declare-fun res!988282 () Bool)

(assert (=> b!1457981 (=> res!988282 e!820156)))

(declare-fun lt!638844 () (_ BitVec 32))

(assert (=> b!1457981 (= res!988282 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!638844 #b00000000000000000000000000000000) (bvsge lt!638844 (size!48105 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1457981 (= lt!638844 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-datatypes ((SeekEntryResult!11829 0))(
  ( (MissingZero!11829 (index!49707 (_ BitVec 32))) (Found!11829 (index!49708 (_ BitVec 32))) (Intermediate!11829 (undefined!12641 Bool) (index!49709 (_ BitVec 32)) (x!131329 (_ BitVec 32))) (Undefined!11829) (MissingVacant!11829 (index!49710 (_ BitVec 32))) )
))
(declare-fun lt!638847 () SeekEntryResult!11829)

(declare-fun lt!638848 () array!98541)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun lt!638850 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98541 (_ BitVec 32)) SeekEntryResult!11829)

(assert (=> b!1457981 (= lt!638847 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!638850 lt!638848 mask!2687))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98541 (_ BitVec 32)) SeekEntryResult!11829)

(assert (=> b!1457981 (= lt!638847 (seekEntryOrOpen!0 lt!638850 lt!638848 mask!2687))))

(declare-fun b!1457982 () Bool)

(declare-fun e!820155 () Bool)

(declare-fun e!820163 () Bool)

(assert (=> b!1457982 (= e!820155 e!820163)))

(declare-fun res!988276 () Bool)

(assert (=> b!1457982 (=> (not res!988276) (not e!820163))))

(declare-fun lt!638849 () SeekEntryResult!11829)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98541 (_ BitVec 32)) SeekEntryResult!11829)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1457982 (= res!988276 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47554 a!2862) j!93) mask!2687) (select (arr!47554 a!2862) j!93) a!2862 mask!2687) lt!638849))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1457982 (= lt!638849 (Intermediate!11829 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1457983 () Bool)

(declare-fun res!988284 () Bool)

(assert (=> b!1457983 (=> (not res!988284) (not e!820157))))

(assert (=> b!1457983 (= res!988284 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1457984 () Bool)

(declare-fun e!820162 () Bool)

(assert (=> b!1457984 (= e!820162 e!820155)))

(declare-fun res!988288 () Bool)

(assert (=> b!1457984 (=> (not res!988288) (not e!820155))))

(assert (=> b!1457984 (= res!988288 (= (select (store (arr!47554 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1457984 (= lt!638848 (array!98542 (store (arr!47554 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48105 a!2862)))))

(declare-fun res!988285 () Bool)

(assert (=> start!125176 (=> (not res!988285) (not e!820162))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125176 (= res!988285 (validMask!0 mask!2687))))

(assert (=> start!125176 e!820162))

(assert (=> start!125176 true))

(declare-fun array_inv!36499 (array!98541) Bool)

(assert (=> start!125176 (array_inv!36499 a!2862)))

(declare-fun b!1457985 () Bool)

(assert (=> b!1457985 (= e!820156 true)))

(declare-fun lt!638846 () Bool)

(declare-fun e!820159 () Bool)

(assert (=> b!1457985 (= lt!638846 e!820159)))

(declare-fun c!134365 () Bool)

(assert (=> b!1457985 (= c!134365 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1457986 () Bool)

(declare-fun e!820161 () Bool)

(declare-fun lt!638851 () SeekEntryResult!11829)

(assert (=> b!1457986 (= e!820161 (= lt!638851 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!638850 lt!638848 mask!2687)))))

(declare-fun b!1457987 () Bool)

(assert (=> b!1457987 (= e!820159 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638844 intermediateAfterIndex!19 lt!638850 lt!638848 mask!2687) lt!638847)))))

(declare-fun b!1457988 () Bool)

(declare-fun res!988277 () Bool)

(assert (=> b!1457988 (=> (not res!988277) (not e!820162))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1457988 (= res!988277 (validKeyInArray!0 (select (arr!47554 a!2862) i!1006)))))

(declare-fun b!1457989 () Bool)

(declare-fun res!988291 () Bool)

(assert (=> b!1457989 (=> (not res!988291) (not e!820162))))

(assert (=> b!1457989 (= res!988291 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1457990 () Bool)

(declare-fun res!988290 () Bool)

(assert (=> b!1457990 (=> (not res!988290) (not e!820160))))

(assert (=> b!1457990 (= res!988290 (= (seekEntryOrOpen!0 (select (arr!47554 a!2862) j!93) a!2862 mask!2687) (Found!11829 j!93)))))

(declare-fun b!1457991 () Bool)

(declare-fun res!988293 () Bool)

(assert (=> b!1457991 (=> (not res!988293) (not e!820162))))

(declare-datatypes ((List!34235 0))(
  ( (Nil!34232) (Cons!34231 (h!35581 (_ BitVec 64)) (t!48936 List!34235)) )
))
(declare-fun arrayNoDuplicates!0 (array!98541 (_ BitVec 32) List!34235) Bool)

(assert (=> b!1457991 (= res!988293 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34232))))

(declare-fun b!1457992 () Bool)

(assert (=> b!1457992 (= e!820160 (and (or (= (select (arr!47554 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47554 a!2862) intermediateBeforeIndex!19) (select (arr!47554 a!2862) j!93))) (let ((bdg!53395 (select (store (arr!47554 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!47554 a!2862) index!646) bdg!53395) (= (select (arr!47554 a!2862) index!646) (select (arr!47554 a!2862) j!93))) (= (select (arr!47554 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!53395 #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!1457993 () Bool)

(declare-fun res!988279 () Bool)

(assert (=> b!1457993 (=> (not res!988279) (not e!820163))))

(assert (=> b!1457993 (= res!988279 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47554 a!2862) j!93) a!2862 mask!2687) lt!638849))))

(declare-fun b!1457994 () Bool)

(declare-fun res!988286 () Bool)

(assert (=> b!1457994 (=> (not res!988286) (not e!820157))))

(assert (=> b!1457994 (= res!988286 e!820161)))

(declare-fun c!134366 () Bool)

(assert (=> b!1457994 (= c!134366 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1457995 () Bool)

(assert (=> b!1457995 (= e!820159 (not (= lt!638851 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638844 lt!638850 lt!638848 mask!2687))))))

(declare-fun b!1457996 () Bool)

(assert (=> b!1457996 (= e!820163 e!820157)))

(declare-fun res!988289 () Bool)

(assert (=> b!1457996 (=> (not res!988289) (not e!820157))))

(assert (=> b!1457996 (= res!988289 (= lt!638851 (Intermediate!11829 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1457996 (= lt!638851 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!638850 mask!2687) lt!638850 lt!638848 mask!2687))))

(assert (=> b!1457996 (= lt!638850 (select (store (arr!47554 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1457997 () Bool)

(declare-fun res!988278 () Bool)

(assert (=> b!1457997 (=> res!988278 e!820156)))

(assert (=> b!1457997 (= res!988278 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638844 (select (arr!47554 a!2862) j!93) a!2862 mask!2687) lt!638849)))))

(declare-fun b!1457998 () Bool)

(declare-fun res!988281 () Bool)

(assert (=> b!1457998 (=> (not res!988281) (not e!820162))))

(assert (=> b!1457998 (= res!988281 (validKeyInArray!0 (select (arr!47554 a!2862) j!93)))))

(declare-fun b!1457999 () Bool)

(declare-fun res!988292 () Bool)

(assert (=> b!1457999 (=> (not res!988292) (not e!820162))))

(assert (=> b!1457999 (= res!988292 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48105 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48105 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48105 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1458000 () Bool)

(assert (=> b!1458000 (= e!820161 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!638850 lt!638848 mask!2687) (seekEntryOrOpen!0 lt!638850 lt!638848 mask!2687)))))

(declare-fun b!1458001 () Bool)

(declare-fun res!988283 () Bool)

(assert (=> b!1458001 (=> (not res!988283) (not e!820162))))

(assert (=> b!1458001 (= res!988283 (and (= (size!48105 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48105 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48105 a!2862)) (not (= i!1006 j!93))))))

(assert (= (and start!125176 res!988285) b!1458001))

(assert (= (and b!1458001 res!988283) b!1457988))

(assert (= (and b!1457988 res!988277) b!1457998))

(assert (= (and b!1457998 res!988281) b!1457989))

(assert (= (and b!1457989 res!988291) b!1457991))

(assert (= (and b!1457991 res!988293) b!1457999))

(assert (= (and b!1457999 res!988292) b!1457984))

(assert (= (and b!1457984 res!988288) b!1457982))

(assert (= (and b!1457982 res!988276) b!1457993))

(assert (= (and b!1457993 res!988279) b!1457996))

(assert (= (and b!1457996 res!988289) b!1457994))

(assert (= (and b!1457994 c!134366) b!1457986))

(assert (= (and b!1457994 (not c!134366)) b!1458000))

(assert (= (and b!1457994 res!988286) b!1457983))

(assert (= (and b!1457983 res!988284) b!1457980))

(assert (= (and b!1457980 res!988280) b!1457990))

(assert (= (and b!1457990 res!988290) b!1457992))

(assert (= (and b!1457980 (not res!988287)) b!1457981))

(assert (= (and b!1457981 (not res!988282)) b!1457997))

(assert (= (and b!1457997 (not res!988278)) b!1457985))

(assert (= (and b!1457985 c!134365) b!1457995))

(assert (= (and b!1457985 (not c!134365)) b!1457987))

(declare-fun m!1345941 () Bool)

(assert (=> b!1457990 m!1345941))

(assert (=> b!1457990 m!1345941))

(declare-fun m!1345943 () Bool)

(assert (=> b!1457990 m!1345943))

(declare-fun m!1345945 () Bool)

(assert (=> b!1457980 m!1345945))

(declare-fun m!1345947 () Bool)

(assert (=> b!1457980 m!1345947))

(declare-fun m!1345949 () Bool)

(assert (=> b!1457980 m!1345949))

(declare-fun m!1345951 () Bool)

(assert (=> b!1457980 m!1345951))

(declare-fun m!1345953 () Bool)

(assert (=> b!1457980 m!1345953))

(assert (=> b!1457980 m!1345941))

(declare-fun m!1345955 () Bool)

(assert (=> start!125176 m!1345955))

(declare-fun m!1345957 () Bool)

(assert (=> start!125176 m!1345957))

(declare-fun m!1345959 () Bool)

(assert (=> b!1457986 m!1345959))

(declare-fun m!1345961 () Bool)

(assert (=> b!1457981 m!1345961))

(declare-fun m!1345963 () Bool)

(assert (=> b!1457981 m!1345963))

(declare-fun m!1345965 () Bool)

(assert (=> b!1457981 m!1345965))

(declare-fun m!1345967 () Bool)

(assert (=> b!1457995 m!1345967))

(declare-fun m!1345969 () Bool)

(assert (=> b!1457989 m!1345969))

(assert (=> b!1458000 m!1345963))

(assert (=> b!1458000 m!1345965))

(assert (=> b!1457984 m!1345947))

(declare-fun m!1345971 () Bool)

(assert (=> b!1457984 m!1345971))

(assert (=> b!1457997 m!1345941))

(assert (=> b!1457997 m!1345941))

(declare-fun m!1345973 () Bool)

(assert (=> b!1457997 m!1345973))

(assert (=> b!1457993 m!1345941))

(assert (=> b!1457993 m!1345941))

(declare-fun m!1345975 () Bool)

(assert (=> b!1457993 m!1345975))

(assert (=> b!1457982 m!1345941))

(assert (=> b!1457982 m!1345941))

(declare-fun m!1345977 () Bool)

(assert (=> b!1457982 m!1345977))

(assert (=> b!1457982 m!1345977))

(assert (=> b!1457982 m!1345941))

(declare-fun m!1345979 () Bool)

(assert (=> b!1457982 m!1345979))

(declare-fun m!1345981 () Bool)

(assert (=> b!1457991 m!1345981))

(assert (=> b!1457998 m!1345941))

(assert (=> b!1457998 m!1345941))

(declare-fun m!1345983 () Bool)

(assert (=> b!1457998 m!1345983))

(declare-fun m!1345985 () Bool)

(assert (=> b!1457988 m!1345985))

(assert (=> b!1457988 m!1345985))

(declare-fun m!1345987 () Bool)

(assert (=> b!1457988 m!1345987))

(declare-fun m!1345989 () Bool)

(assert (=> b!1457996 m!1345989))

(assert (=> b!1457996 m!1345989))

(declare-fun m!1345991 () Bool)

(assert (=> b!1457996 m!1345991))

(assert (=> b!1457996 m!1345947))

(declare-fun m!1345993 () Bool)

(assert (=> b!1457996 m!1345993))

(declare-fun m!1345995 () Bool)

(assert (=> b!1457987 m!1345995))

(assert (=> b!1457992 m!1345947))

(declare-fun m!1345997 () Bool)

(assert (=> b!1457992 m!1345997))

(assert (=> b!1457992 m!1345949))

(assert (=> b!1457992 m!1345951))

(assert (=> b!1457992 m!1345941))

(push 1)

