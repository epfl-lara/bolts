; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!126270 () Bool)

(assert start!126270)

(declare-fun b!1479050 () Bool)

(declare-fun res!1005100 () Bool)

(declare-fun e!829680 () Bool)

(assert (=> b!1479050 (=> (not res!1005100) (not e!829680))))

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12184 0))(
  ( (MissingZero!12184 (index!51127 (_ BitVec 32))) (Found!12184 (index!51128 (_ BitVec 32))) (Intermediate!12184 (undefined!12996 Bool) (index!51129 (_ BitVec 32)) (x!132714 (_ BitVec 32))) (Undefined!12184) (MissingVacant!12184 (index!51130 (_ BitVec 32))) )
))
(declare-fun lt!645852 () SeekEntryResult!12184)

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!99293 0))(
  ( (array!99294 (arr!47921 (Array (_ BitVec 32) (_ BitVec 64))) (size!48472 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99293)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99293 (_ BitVec 32)) SeekEntryResult!12184)

(assert (=> b!1479050 (= res!1005100 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47921 a!2862) j!93) a!2862 mask!2687) lt!645852))))

(declare-fun b!1479051 () Bool)

(declare-fun res!1005097 () Bool)

(declare-fun e!829674 () Bool)

(assert (=> b!1479051 (=> (not res!1005097) (not e!829674))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99293 (_ BitVec 32)) Bool)

(assert (=> b!1479051 (= res!1005097 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1479052 () Bool)

(declare-fun res!1005110 () Bool)

(assert (=> b!1479052 (=> (not res!1005110) (not e!829674))))

(declare-datatypes ((List!34602 0))(
  ( (Nil!34599) (Cons!34598 (h!35966 (_ BitVec 64)) (t!49303 List!34602)) )
))
(declare-fun arrayNoDuplicates!0 (array!99293 (_ BitVec 32) List!34602) Bool)

(assert (=> b!1479052 (= res!1005110 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34599))))

(declare-fun b!1479053 () Bool)

(declare-fun e!829682 () Bool)

(declare-fun e!829679 () Bool)

(assert (=> b!1479053 (= e!829682 e!829679)))

(declare-fun res!1005107 () Bool)

(assert (=> b!1479053 (=> res!1005107 e!829679)))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1479053 (= res!1005107 (or (and (= (select (arr!47921 a!2862) index!646) (select (store (arr!47921 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47921 a!2862) index!646) (select (arr!47921 a!2862) j!93))) (not (= (select (arr!47921 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1479054 () Bool)

(declare-fun res!1005103 () Bool)

(assert (=> b!1479054 (=> (not res!1005103) (not e!829674))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1479054 (= res!1005103 (validKeyInArray!0 (select (arr!47921 a!2862) j!93)))))

(declare-fun lt!645855 () SeekEntryResult!12184)

(declare-fun b!1479055 () Bool)

(declare-fun lt!645853 () array!99293)

(declare-fun e!829677 () Bool)

(declare-fun lt!645856 () (_ BitVec 64))

(assert (=> b!1479055 (= e!829677 (= lt!645855 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!645856 lt!645853 mask!2687)))))

(declare-fun b!1479056 () Bool)

(declare-fun res!1005098 () Bool)

(assert (=> b!1479056 (=> (not res!1005098) (not e!829674))))

(assert (=> b!1479056 (= res!1005098 (and (= (size!48472 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48472 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48472 a!2862)) (not (= i!1006 j!93))))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun b!1479057 () Bool)

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun e!829678 () Bool)

(assert (=> b!1479057 (= e!829678 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1479058 () Bool)

(declare-fun res!1005104 () Bool)

(assert (=> b!1479058 (=> (not res!1005104) (not e!829674))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1479058 (= res!1005104 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48472 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48472 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48472 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun res!1005102 () Bool)

(assert (=> start!126270 (=> (not res!1005102) (not e!829674))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126270 (= res!1005102 (validMask!0 mask!2687))))

(assert (=> start!126270 e!829674))

(assert (=> start!126270 true))

(declare-fun array_inv!36866 (array!99293) Bool)

(assert (=> start!126270 (array_inv!36866 a!2862)))

(declare-fun b!1479059 () Bool)

(declare-fun res!1005101 () Bool)

(declare-fun e!829681 () Bool)

(assert (=> b!1479059 (=> (not res!1005101) (not e!829681))))

(assert (=> b!1479059 (= res!1005101 e!829677)))

(declare-fun c!136499 () Bool)

(assert (=> b!1479059 (= c!136499 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1479060 () Bool)

(declare-fun res!1005109 () Bool)

(assert (=> b!1479060 (=> (not res!1005109) (not e!829681))))

(assert (=> b!1479060 (= res!1005109 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1479061 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99293 (_ BitVec 32)) SeekEntryResult!12184)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99293 (_ BitVec 32)) SeekEntryResult!12184)

(assert (=> b!1479061 (= e!829677 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!645856 lt!645853 mask!2687) (seekEntryOrOpen!0 lt!645856 lt!645853 mask!2687)))))

(declare-fun b!1479062 () Bool)

(assert (=> b!1479062 (= e!829681 (not true))))

(assert (=> b!1479062 e!829682))

(declare-fun res!1005108 () Bool)

(assert (=> b!1479062 (=> (not res!1005108) (not e!829682))))

(declare-fun lt!645854 () SeekEntryResult!12184)

(assert (=> b!1479062 (= res!1005108 (and (= lt!645854 (Found!12184 j!93)) (or (= (select (arr!47921 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47921 a!2862) intermediateBeforeIndex!19) (select (arr!47921 a!2862) j!93)))))))

(assert (=> b!1479062 (= lt!645854 (seekEntryOrOpen!0 (select (arr!47921 a!2862) j!93) a!2862 mask!2687))))

(assert (=> b!1479062 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!49656 0))(
  ( (Unit!49657) )
))
(declare-fun lt!645851 () Unit!49656)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99293 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49656)

(assert (=> b!1479062 (= lt!645851 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1479063 () Bool)

(assert (=> b!1479063 (= e!829679 e!829678)))

(declare-fun res!1005105 () Bool)

(assert (=> b!1479063 (=> (not res!1005105) (not e!829678))))

(assert (=> b!1479063 (= res!1005105 (= lt!645854 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47921 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1479064 () Bool)

(assert (=> b!1479064 (= e!829680 e!829681)))

(declare-fun res!1005106 () Bool)

(assert (=> b!1479064 (=> (not res!1005106) (not e!829681))))

(assert (=> b!1479064 (= res!1005106 (= lt!645855 (Intermediate!12184 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1479064 (= lt!645855 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!645856 mask!2687) lt!645856 lt!645853 mask!2687))))

(assert (=> b!1479064 (= lt!645856 (select (store (arr!47921 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1479065 () Bool)

(declare-fun e!829676 () Bool)

(assert (=> b!1479065 (= e!829674 e!829676)))

(declare-fun res!1005111 () Bool)

(assert (=> b!1479065 (=> (not res!1005111) (not e!829676))))

(assert (=> b!1479065 (= res!1005111 (= (select (store (arr!47921 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1479065 (= lt!645853 (array!99294 (store (arr!47921 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48472 a!2862)))))

(declare-fun b!1479066 () Bool)

(assert (=> b!1479066 (= e!829676 e!829680)))

(declare-fun res!1005099 () Bool)

(assert (=> b!1479066 (=> (not res!1005099) (not e!829680))))

(assert (=> b!1479066 (= res!1005099 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47921 a!2862) j!93) mask!2687) (select (arr!47921 a!2862) j!93) a!2862 mask!2687) lt!645852))))

(assert (=> b!1479066 (= lt!645852 (Intermediate!12184 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1479067 () Bool)

(declare-fun res!1005096 () Bool)

(assert (=> b!1479067 (=> (not res!1005096) (not e!829674))))

(assert (=> b!1479067 (= res!1005096 (validKeyInArray!0 (select (arr!47921 a!2862) i!1006)))))

(assert (= (and start!126270 res!1005102) b!1479056))

(assert (= (and b!1479056 res!1005098) b!1479067))

(assert (= (and b!1479067 res!1005096) b!1479054))

(assert (= (and b!1479054 res!1005103) b!1479051))

(assert (= (and b!1479051 res!1005097) b!1479052))

(assert (= (and b!1479052 res!1005110) b!1479058))

(assert (= (and b!1479058 res!1005104) b!1479065))

(assert (= (and b!1479065 res!1005111) b!1479066))

(assert (= (and b!1479066 res!1005099) b!1479050))

(assert (= (and b!1479050 res!1005100) b!1479064))

(assert (= (and b!1479064 res!1005106) b!1479059))

(assert (= (and b!1479059 c!136499) b!1479055))

(assert (= (and b!1479059 (not c!136499)) b!1479061))

(assert (= (and b!1479059 res!1005101) b!1479060))

(assert (= (and b!1479060 res!1005109) b!1479062))

(assert (= (and b!1479062 res!1005108) b!1479053))

(assert (= (and b!1479053 (not res!1005107)) b!1479063))

(assert (= (and b!1479063 res!1005105) b!1479057))

(declare-fun m!1364995 () Bool)

(assert (=> b!1479065 m!1364995))

(declare-fun m!1364997 () Bool)

(assert (=> b!1479065 m!1364997))

(declare-fun m!1364999 () Bool)

(assert (=> b!1479053 m!1364999))

(assert (=> b!1479053 m!1364995))

(declare-fun m!1365001 () Bool)

(assert (=> b!1479053 m!1365001))

(declare-fun m!1365003 () Bool)

(assert (=> b!1479053 m!1365003))

(assert (=> b!1479063 m!1365003))

(assert (=> b!1479063 m!1365003))

(declare-fun m!1365005 () Bool)

(assert (=> b!1479063 m!1365005))

(declare-fun m!1365007 () Bool)

(assert (=> start!126270 m!1365007))

(declare-fun m!1365009 () Bool)

(assert (=> start!126270 m!1365009))

(assert (=> b!1479050 m!1365003))

(assert (=> b!1479050 m!1365003))

(declare-fun m!1365011 () Bool)

(assert (=> b!1479050 m!1365011))

(declare-fun m!1365013 () Bool)

(assert (=> b!1479061 m!1365013))

(declare-fun m!1365015 () Bool)

(assert (=> b!1479061 m!1365015))

(declare-fun m!1365017 () Bool)

(assert (=> b!1479051 m!1365017))

(declare-fun m!1365019 () Bool)

(assert (=> b!1479055 m!1365019))

(declare-fun m!1365021 () Bool)

(assert (=> b!1479064 m!1365021))

(assert (=> b!1479064 m!1365021))

(declare-fun m!1365023 () Bool)

(assert (=> b!1479064 m!1365023))

(assert (=> b!1479064 m!1364995))

(declare-fun m!1365025 () Bool)

(assert (=> b!1479064 m!1365025))

(declare-fun m!1365027 () Bool)

(assert (=> b!1479052 m!1365027))

(declare-fun m!1365029 () Bool)

(assert (=> b!1479062 m!1365029))

(declare-fun m!1365031 () Bool)

(assert (=> b!1479062 m!1365031))

(assert (=> b!1479062 m!1365003))

(declare-fun m!1365033 () Bool)

(assert (=> b!1479062 m!1365033))

(declare-fun m!1365035 () Bool)

(assert (=> b!1479062 m!1365035))

(assert (=> b!1479062 m!1365003))

(declare-fun m!1365037 () Bool)

(assert (=> b!1479067 m!1365037))

(assert (=> b!1479067 m!1365037))

(declare-fun m!1365039 () Bool)

(assert (=> b!1479067 m!1365039))

(assert (=> b!1479066 m!1365003))

(assert (=> b!1479066 m!1365003))

(declare-fun m!1365041 () Bool)

(assert (=> b!1479066 m!1365041))

(assert (=> b!1479066 m!1365041))

(assert (=> b!1479066 m!1365003))

(declare-fun m!1365043 () Bool)

(assert (=> b!1479066 m!1365043))

(assert (=> b!1479054 m!1365003))

(assert (=> b!1479054 m!1365003))

(declare-fun m!1365045 () Bool)

(assert (=> b!1479054 m!1365045))

(check-sat (not b!1479066) (not b!1479061) (not b!1479050) (not b!1479051) (not b!1479062) (not b!1479054) (not b!1479067) (not b!1479055) (not b!1479063) (not start!126270) (not b!1479064) (not b!1479052))
(check-sat)
