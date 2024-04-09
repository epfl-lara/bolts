; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124922 () Bool)

(assert start!124922)

(declare-fun b!1450257 () Bool)

(declare-fun res!981725 () Bool)

(declare-fun e!816686 () Bool)

(assert (=> b!1450257 (=> (not res!981725) (not e!816686))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1450257 (= res!981725 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun res!981727 () Bool)

(declare-fun e!816685 () Bool)

(assert (=> start!124922 (=> (not res!981727) (not e!816685))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124922 (= res!981727 (validMask!0 mask!2687))))

(assert (=> start!124922 e!816685))

(assert (=> start!124922 true))

(declare-datatypes ((array!98287 0))(
  ( (array!98288 (arr!47427 (Array (_ BitVec 32) (_ BitVec 64))) (size!47978 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98287)

(declare-fun array_inv!36372 (array!98287) Bool)

(assert (=> start!124922 (array_inv!36372 a!2862)))

(declare-fun b!1450258 () Bool)

(declare-fun res!981731 () Bool)

(declare-fun e!816680 () Bool)

(assert (=> b!1450258 (=> (not res!981731) (not e!816680))))

(declare-datatypes ((SeekEntryResult!11702 0))(
  ( (MissingZero!11702 (index!49199 (_ BitVec 32))) (Found!11702 (index!49200 (_ BitVec 32))) (Intermediate!11702 (undefined!12514 Bool) (index!49201 (_ BitVec 32)) (x!130858 (_ BitVec 32))) (Undefined!11702) (MissingVacant!11702 (index!49202 (_ BitVec 32))) )
))
(declare-fun lt!636192 () SeekEntryResult!11702)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98287 (_ BitVec 32)) SeekEntryResult!11702)

(assert (=> b!1450258 (= res!981731 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47427 a!2862) j!93) a!2862 mask!2687) lt!636192))))

(declare-fun b!1450259 () Bool)

(declare-fun res!981730 () Bool)

(assert (=> b!1450259 (=> (not res!981730) (not e!816685))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1450259 (= res!981730 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47978 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47978 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47978 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun lt!636197 () (_ BitVec 64))

(declare-fun b!1450260 () Bool)

(declare-fun lt!636198 () array!98287)

(declare-fun e!816681 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98287 (_ BitVec 32)) SeekEntryResult!11702)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98287 (_ BitVec 32)) SeekEntryResult!11702)

(assert (=> b!1450260 (= e!816681 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!636197 lt!636198 mask!2687) (seekEntryOrOpen!0 lt!636197 lt!636198 mask!2687)))))

(declare-fun b!1450261 () Bool)

(declare-fun res!981718 () Bool)

(assert (=> b!1450261 (=> (not res!981718) (not e!816685))))

(assert (=> b!1450261 (= res!981718 (and (= (size!47978 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47978 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47978 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1450262 () Bool)

(declare-fun e!816679 () Bool)

(assert (=> b!1450262 (= e!816679 true)))

(declare-fun lt!636199 () SeekEntryResult!11702)

(assert (=> b!1450262 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!636197 lt!636198 mask!2687) lt!636199)))

(declare-datatypes ((Unit!48848 0))(
  ( (Unit!48849) )
))
(declare-fun lt!636196 () Unit!48848)

(declare-fun lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 (array!98287 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48848)

(assert (=> b!1450262 (= lt!636196 (lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 a!2862 i!1006 j!93 x!665 index!646 intermediateBeforeIndex!19 intermediateAfterIndex!19 mask!2687))))

(declare-fun b!1450263 () Bool)

(declare-fun res!981721 () Bool)

(assert (=> b!1450263 (=> res!981721 e!816679)))

(assert (=> b!1450263 (= res!981721 (not (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateBeforeIndex!19 (select (arr!47427 a!2862) j!93) a!2862 mask!2687) lt!636199)))))

(declare-fun b!1450264 () Bool)

(declare-fun res!981719 () Bool)

(assert (=> b!1450264 (=> (not res!981719) (not e!816686))))

(assert (=> b!1450264 (= res!981719 e!816681)))

(declare-fun c!133784 () Bool)

(assert (=> b!1450264 (= c!133784 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1450265 () Bool)

(declare-fun e!816684 () Bool)

(declare-fun e!816677 () Bool)

(assert (=> b!1450265 (= e!816684 e!816677)))

(declare-fun res!981716 () Bool)

(assert (=> b!1450265 (=> res!981716 e!816677)))

(assert (=> b!1450265 (= res!981716 (or (and (= (select (arr!47427 a!2862) index!646) (select (store (arr!47427 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47427 a!2862) index!646) (select (arr!47427 a!2862) j!93))) (not (= (select (arr!47427 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1450266 () Bool)

(declare-fun e!816678 () Bool)

(assert (=> b!1450266 (= e!816685 e!816678)))

(declare-fun res!981715 () Bool)

(assert (=> b!1450266 (=> (not res!981715) (not e!816678))))

(assert (=> b!1450266 (= res!981715 (= (select (store (arr!47427 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1450266 (= lt!636198 (array!98288 (store (arr!47427 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47978 a!2862)))))

(declare-fun b!1450267 () Bool)

(assert (=> b!1450267 (= e!816678 e!816680)))

(declare-fun res!981726 () Bool)

(assert (=> b!1450267 (=> (not res!981726) (not e!816680))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1450267 (= res!981726 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47427 a!2862) j!93) mask!2687) (select (arr!47427 a!2862) j!93) a!2862 mask!2687) lt!636192))))

(assert (=> b!1450267 (= lt!636192 (Intermediate!11702 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1450268 () Bool)

(declare-fun res!981728 () Bool)

(assert (=> b!1450268 (=> (not res!981728) (not e!816685))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98287 (_ BitVec 32)) Bool)

(assert (=> b!1450268 (= res!981728 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1450269 () Bool)

(declare-fun res!981722 () Bool)

(assert (=> b!1450269 (=> (not res!981722) (not e!816685))))

(declare-datatypes ((List!34108 0))(
  ( (Nil!34105) (Cons!34104 (h!35454 (_ BitVec 64)) (t!48809 List!34108)) )
))
(declare-fun arrayNoDuplicates!0 (array!98287 (_ BitVec 32) List!34108) Bool)

(assert (=> b!1450269 (= res!981722 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34105))))

(declare-fun e!816682 () Bool)

(declare-fun b!1450270 () Bool)

(assert (=> b!1450270 (= e!816682 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1450271 () Bool)

(declare-fun lt!636195 () SeekEntryResult!11702)

(assert (=> b!1450271 (= e!816681 (= lt!636195 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!636197 lt!636198 mask!2687)))))

(declare-fun b!1450272 () Bool)

(assert (=> b!1450272 (= e!816686 (not e!816679))))

(declare-fun res!981723 () Bool)

(assert (=> b!1450272 (=> res!981723 e!816679)))

(assert (=> b!1450272 (= res!981723 (or (and (= (select (arr!47427 a!2862) index!646) (select (store (arr!47427 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47427 a!2862) index!646) (select (arr!47427 a!2862) j!93))) (not (= (select (arr!47427 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47427 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1450272 e!816684))

(declare-fun res!981720 () Bool)

(assert (=> b!1450272 (=> (not res!981720) (not e!816684))))

(declare-fun lt!636194 () SeekEntryResult!11702)

(assert (=> b!1450272 (= res!981720 (and (= lt!636194 lt!636199) (or (= (select (arr!47427 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47427 a!2862) intermediateBeforeIndex!19) (select (arr!47427 a!2862) j!93)))))))

(assert (=> b!1450272 (= lt!636199 (Found!11702 j!93))))

(assert (=> b!1450272 (= lt!636194 (seekEntryOrOpen!0 (select (arr!47427 a!2862) j!93) a!2862 mask!2687))))

(assert (=> b!1450272 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-fun lt!636193 () Unit!48848)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98287 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48848)

(assert (=> b!1450272 (= lt!636193 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1450273 () Bool)

(assert (=> b!1450273 (= e!816680 e!816686)))

(declare-fun res!981717 () Bool)

(assert (=> b!1450273 (=> (not res!981717) (not e!816686))))

(assert (=> b!1450273 (= res!981717 (= lt!636195 (Intermediate!11702 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1450273 (= lt!636195 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!636197 mask!2687) lt!636197 lt!636198 mask!2687))))

(assert (=> b!1450273 (= lt!636197 (select (store (arr!47427 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1450274 () Bool)

(declare-fun res!981729 () Bool)

(assert (=> b!1450274 (=> (not res!981729) (not e!816685))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1450274 (= res!981729 (validKeyInArray!0 (select (arr!47427 a!2862) i!1006)))))

(declare-fun b!1450275 () Bool)

(assert (=> b!1450275 (= e!816677 e!816682)))

(declare-fun res!981732 () Bool)

(assert (=> b!1450275 (=> (not res!981732) (not e!816682))))

(assert (=> b!1450275 (= res!981732 (= lt!636194 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47427 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1450276 () Bool)

(declare-fun res!981724 () Bool)

(assert (=> b!1450276 (=> (not res!981724) (not e!816685))))

(assert (=> b!1450276 (= res!981724 (validKeyInArray!0 (select (arr!47427 a!2862) j!93)))))

(assert (= (and start!124922 res!981727) b!1450261))

(assert (= (and b!1450261 res!981718) b!1450274))

(assert (= (and b!1450274 res!981729) b!1450276))

(assert (= (and b!1450276 res!981724) b!1450268))

(assert (= (and b!1450268 res!981728) b!1450269))

(assert (= (and b!1450269 res!981722) b!1450259))

(assert (= (and b!1450259 res!981730) b!1450266))

(assert (= (and b!1450266 res!981715) b!1450267))

(assert (= (and b!1450267 res!981726) b!1450258))

(assert (= (and b!1450258 res!981731) b!1450273))

(assert (= (and b!1450273 res!981717) b!1450264))

(assert (= (and b!1450264 c!133784) b!1450271))

(assert (= (and b!1450264 (not c!133784)) b!1450260))

(assert (= (and b!1450264 res!981719) b!1450257))

(assert (= (and b!1450257 res!981725) b!1450272))

(assert (= (and b!1450272 res!981720) b!1450265))

(assert (= (and b!1450265 (not res!981716)) b!1450275))

(assert (= (and b!1450275 res!981732) b!1450270))

(assert (= (and b!1450272 (not res!981723)) b!1450263))

(assert (= (and b!1450263 (not res!981721)) b!1450262))

(declare-fun m!1338967 () Bool)

(assert (=> b!1450262 m!1338967))

(declare-fun m!1338969 () Bool)

(assert (=> b!1450262 m!1338969))

(declare-fun m!1338971 () Bool)

(assert (=> b!1450258 m!1338971))

(assert (=> b!1450258 m!1338971))

(declare-fun m!1338973 () Bool)

(assert (=> b!1450258 m!1338973))

(assert (=> b!1450260 m!1338967))

(declare-fun m!1338975 () Bool)

(assert (=> b!1450260 m!1338975))

(assert (=> b!1450275 m!1338971))

(assert (=> b!1450275 m!1338971))

(declare-fun m!1338977 () Bool)

(assert (=> b!1450275 m!1338977))

(assert (=> b!1450267 m!1338971))

(assert (=> b!1450267 m!1338971))

(declare-fun m!1338979 () Bool)

(assert (=> b!1450267 m!1338979))

(assert (=> b!1450267 m!1338979))

(assert (=> b!1450267 m!1338971))

(declare-fun m!1338981 () Bool)

(assert (=> b!1450267 m!1338981))

(declare-fun m!1338983 () Bool)

(assert (=> start!124922 m!1338983))

(declare-fun m!1338985 () Bool)

(assert (=> start!124922 m!1338985))

(declare-fun m!1338987 () Bool)

(assert (=> b!1450273 m!1338987))

(assert (=> b!1450273 m!1338987))

(declare-fun m!1338989 () Bool)

(assert (=> b!1450273 m!1338989))

(declare-fun m!1338991 () Bool)

(assert (=> b!1450273 m!1338991))

(declare-fun m!1338993 () Bool)

(assert (=> b!1450273 m!1338993))

(declare-fun m!1338995 () Bool)

(assert (=> b!1450268 m!1338995))

(assert (=> b!1450263 m!1338971))

(assert (=> b!1450263 m!1338971))

(declare-fun m!1338997 () Bool)

(assert (=> b!1450263 m!1338997))

(declare-fun m!1338999 () Bool)

(assert (=> b!1450272 m!1338999))

(assert (=> b!1450272 m!1338991))

(declare-fun m!1339001 () Bool)

(assert (=> b!1450272 m!1339001))

(declare-fun m!1339003 () Bool)

(assert (=> b!1450272 m!1339003))

(declare-fun m!1339005 () Bool)

(assert (=> b!1450272 m!1339005))

(assert (=> b!1450272 m!1338971))

(declare-fun m!1339007 () Bool)

(assert (=> b!1450272 m!1339007))

(declare-fun m!1339009 () Bool)

(assert (=> b!1450272 m!1339009))

(assert (=> b!1450272 m!1338971))

(assert (=> b!1450265 m!1339005))

(assert (=> b!1450265 m!1338991))

(assert (=> b!1450265 m!1339003))

(assert (=> b!1450265 m!1338971))

(assert (=> b!1450266 m!1338991))

(declare-fun m!1339011 () Bool)

(assert (=> b!1450266 m!1339011))

(declare-fun m!1339013 () Bool)

(assert (=> b!1450269 m!1339013))

(assert (=> b!1450276 m!1338971))

(assert (=> b!1450276 m!1338971))

(declare-fun m!1339015 () Bool)

(assert (=> b!1450276 m!1339015))

(declare-fun m!1339017 () Bool)

(assert (=> b!1450271 m!1339017))

(declare-fun m!1339019 () Bool)

(assert (=> b!1450274 m!1339019))

(assert (=> b!1450274 m!1339019))

(declare-fun m!1339021 () Bool)

(assert (=> b!1450274 m!1339021))

(push 1)

