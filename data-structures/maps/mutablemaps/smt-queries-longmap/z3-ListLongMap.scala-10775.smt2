; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!126192 () Bool)

(assert start!126192)

(declare-fun b!1476944 () Bool)

(declare-fun res!1003237 () Bool)

(declare-fun e!828626 () Bool)

(assert (=> b!1476944 (=> (not res!1003237) (not e!828626))))

(declare-datatypes ((array!99215 0))(
  ( (array!99216 (arr!47882 (Array (_ BitVec 32) (_ BitVec 64))) (size!48433 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99215)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1476944 (= res!1003237 (validKeyInArray!0 (select (arr!47882 a!2862) j!93)))))

(declare-fun b!1476945 () Bool)

(declare-fun res!1003227 () Bool)

(assert (=> b!1476945 (=> (not res!1003227) (not e!828626))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1476945 (= res!1003227 (validKeyInArray!0 (select (arr!47882 a!2862) i!1006)))))

(declare-fun b!1476946 () Bool)

(declare-fun e!828629 () Bool)

(declare-fun e!828623 () Bool)

(assert (=> b!1476946 (= e!828629 e!828623)))

(declare-fun res!1003231 () Bool)

(assert (=> b!1476946 (=> res!1003231 e!828623)))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1476946 (= res!1003231 (or (and (= (select (arr!47882 a!2862) index!646) (select (store (arr!47882 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47882 a!2862) index!646) (select (arr!47882 a!2862) j!93))) (not (= (select (arr!47882 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1476947 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun e!828627 () Bool)

(assert (=> b!1476947 (= e!828627 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1476948 () Bool)

(declare-fun e!828622 () Bool)

(declare-fun e!828621 () Bool)

(assert (=> b!1476948 (= e!828622 e!828621)))

(declare-fun res!1003232 () Bool)

(assert (=> b!1476948 (=> (not res!1003232) (not e!828621))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12145 0))(
  ( (MissingZero!12145 (index!50971 (_ BitVec 32))) (Found!12145 (index!50972 (_ BitVec 32))) (Intermediate!12145 (undefined!12957 Bool) (index!50973 (_ BitVec 32)) (x!132571 (_ BitVec 32))) (Undefined!12145) (MissingVacant!12145 (index!50974 (_ BitVec 32))) )
))
(declare-fun lt!645153 () SeekEntryResult!12145)

(assert (=> b!1476948 (= res!1003232 (= lt!645153 (Intermediate!12145 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!645150 () (_ BitVec 64))

(declare-fun lt!645152 () array!99215)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99215 (_ BitVec 32)) SeekEntryResult!12145)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1476948 (= lt!645153 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!645150 mask!2687) lt!645150 lt!645152 mask!2687))))

(assert (=> b!1476948 (= lt!645150 (select (store (arr!47882 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1476949 () Bool)

(declare-fun e!828628 () Bool)

(assert (=> b!1476949 (= e!828628 e!828622)))

(declare-fun res!1003235 () Bool)

(assert (=> b!1476949 (=> (not res!1003235) (not e!828622))))

(declare-fun lt!645154 () SeekEntryResult!12145)

(assert (=> b!1476949 (= res!1003235 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47882 a!2862) j!93) mask!2687) (select (arr!47882 a!2862) j!93) a!2862 mask!2687) lt!645154))))

(assert (=> b!1476949 (= lt!645154 (Intermediate!12145 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1476950 () Bool)

(assert (=> b!1476950 (= e!828623 e!828627)))

(declare-fun res!1003229 () Bool)

(assert (=> b!1476950 (=> (not res!1003229) (not e!828627))))

(declare-fun lt!645151 () SeekEntryResult!12145)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99215 (_ BitVec 32)) SeekEntryResult!12145)

(assert (=> b!1476950 (= res!1003229 (= lt!645151 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47882 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun res!1003224 () Bool)

(assert (=> start!126192 (=> (not res!1003224) (not e!828626))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126192 (= res!1003224 (validMask!0 mask!2687))))

(assert (=> start!126192 e!828626))

(assert (=> start!126192 true))

(declare-fun array_inv!36827 (array!99215) Bool)

(assert (=> start!126192 (array_inv!36827 a!2862)))

(declare-fun b!1476951 () Bool)

(declare-fun res!1003233 () Bool)

(assert (=> b!1476951 (=> (not res!1003233) (not e!828621))))

(declare-fun e!828625 () Bool)

(assert (=> b!1476951 (= res!1003233 e!828625)))

(declare-fun c!136382 () Bool)

(assert (=> b!1476951 (= c!136382 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1476952 () Bool)

(assert (=> b!1476952 (= e!828625 (= lt!645153 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!645150 lt!645152 mask!2687)))))

(declare-fun b!1476953 () Bool)

(declare-fun res!1003226 () Bool)

(assert (=> b!1476953 (=> (not res!1003226) (not e!828626))))

(assert (=> b!1476953 (= res!1003226 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48433 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48433 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48433 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1476954 () Bool)

(declare-fun res!1003228 () Bool)

(assert (=> b!1476954 (=> (not res!1003228) (not e!828622))))

(assert (=> b!1476954 (= res!1003228 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47882 a!2862) j!93) a!2862 mask!2687) lt!645154))))

(declare-fun b!1476955 () Bool)

(declare-fun res!1003234 () Bool)

(assert (=> b!1476955 (=> (not res!1003234) (not e!828626))))

(declare-datatypes ((List!34563 0))(
  ( (Nil!34560) (Cons!34559 (h!35927 (_ BitVec 64)) (t!49264 List!34563)) )
))
(declare-fun arrayNoDuplicates!0 (array!99215 (_ BitVec 32) List!34563) Bool)

(assert (=> b!1476955 (= res!1003234 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34560))))

(declare-fun b!1476956 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99215 (_ BitVec 32)) SeekEntryResult!12145)

(assert (=> b!1476956 (= e!828625 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!645150 lt!645152 mask!2687) (seekEntryOrOpen!0 lt!645150 lt!645152 mask!2687)))))

(declare-fun b!1476957 () Bool)

(declare-fun res!1003238 () Bool)

(assert (=> b!1476957 (=> (not res!1003238) (not e!828621))))

(assert (=> b!1476957 (= res!1003238 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1476958 () Bool)

(assert (=> b!1476958 (= e!828626 e!828628)))

(declare-fun res!1003230 () Bool)

(assert (=> b!1476958 (=> (not res!1003230) (not e!828628))))

(assert (=> b!1476958 (= res!1003230 (= (select (store (arr!47882 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1476958 (= lt!645152 (array!99216 (store (arr!47882 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48433 a!2862)))))

(declare-fun b!1476959 () Bool)

(declare-fun res!1003236 () Bool)

(assert (=> b!1476959 (=> (not res!1003236) (not e!828626))))

(assert (=> b!1476959 (= res!1003236 (and (= (size!48433 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48433 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48433 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1476960 () Bool)

(declare-fun res!1003239 () Bool)

(assert (=> b!1476960 (=> (not res!1003239) (not e!828626))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99215 (_ BitVec 32)) Bool)

(assert (=> b!1476960 (= res!1003239 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1476961 () Bool)

(assert (=> b!1476961 (= e!828621 (not true))))

(assert (=> b!1476961 e!828629))

(declare-fun res!1003225 () Bool)

(assert (=> b!1476961 (=> (not res!1003225) (not e!828629))))

(assert (=> b!1476961 (= res!1003225 (and (= lt!645151 (Found!12145 j!93)) (or (= (select (arr!47882 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47882 a!2862) intermediateBeforeIndex!19) (select (arr!47882 a!2862) j!93)))))))

(assert (=> b!1476961 (= lt!645151 (seekEntryOrOpen!0 (select (arr!47882 a!2862) j!93) a!2862 mask!2687))))

(assert (=> b!1476961 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!49578 0))(
  ( (Unit!49579) )
))
(declare-fun lt!645149 () Unit!49578)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99215 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49578)

(assert (=> b!1476961 (= lt!645149 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(assert (= (and start!126192 res!1003224) b!1476959))

(assert (= (and b!1476959 res!1003236) b!1476945))

(assert (= (and b!1476945 res!1003227) b!1476944))

(assert (= (and b!1476944 res!1003237) b!1476960))

(assert (= (and b!1476960 res!1003239) b!1476955))

(assert (= (and b!1476955 res!1003234) b!1476953))

(assert (= (and b!1476953 res!1003226) b!1476958))

(assert (= (and b!1476958 res!1003230) b!1476949))

(assert (= (and b!1476949 res!1003235) b!1476954))

(assert (= (and b!1476954 res!1003228) b!1476948))

(assert (= (and b!1476948 res!1003232) b!1476951))

(assert (= (and b!1476951 c!136382) b!1476952))

(assert (= (and b!1476951 (not c!136382)) b!1476956))

(assert (= (and b!1476951 res!1003233) b!1476957))

(assert (= (and b!1476957 res!1003238) b!1476961))

(assert (= (and b!1476961 res!1003225) b!1476946))

(assert (= (and b!1476946 (not res!1003231)) b!1476950))

(assert (= (and b!1476950 res!1003229) b!1476947))

(declare-fun m!1362967 () Bool)

(assert (=> b!1476944 m!1362967))

(assert (=> b!1476944 m!1362967))

(declare-fun m!1362969 () Bool)

(assert (=> b!1476944 m!1362969))

(declare-fun m!1362971 () Bool)

(assert (=> b!1476952 m!1362971))

(declare-fun m!1362973 () Bool)

(assert (=> b!1476945 m!1362973))

(assert (=> b!1476945 m!1362973))

(declare-fun m!1362975 () Bool)

(assert (=> b!1476945 m!1362975))

(declare-fun m!1362977 () Bool)

(assert (=> b!1476955 m!1362977))

(declare-fun m!1362979 () Bool)

(assert (=> b!1476948 m!1362979))

(assert (=> b!1476948 m!1362979))

(declare-fun m!1362981 () Bool)

(assert (=> b!1476948 m!1362981))

(declare-fun m!1362983 () Bool)

(assert (=> b!1476948 m!1362983))

(declare-fun m!1362985 () Bool)

(assert (=> b!1476948 m!1362985))

(assert (=> b!1476954 m!1362967))

(assert (=> b!1476954 m!1362967))

(declare-fun m!1362987 () Bool)

(assert (=> b!1476954 m!1362987))

(declare-fun m!1362989 () Bool)

(assert (=> b!1476946 m!1362989))

(assert (=> b!1476946 m!1362983))

(declare-fun m!1362991 () Bool)

(assert (=> b!1476946 m!1362991))

(assert (=> b!1476946 m!1362967))

(declare-fun m!1362993 () Bool)

(assert (=> b!1476960 m!1362993))

(declare-fun m!1362995 () Bool)

(assert (=> start!126192 m!1362995))

(declare-fun m!1362997 () Bool)

(assert (=> start!126192 m!1362997))

(declare-fun m!1362999 () Bool)

(assert (=> b!1476956 m!1362999))

(declare-fun m!1363001 () Bool)

(assert (=> b!1476956 m!1363001))

(assert (=> b!1476958 m!1362983))

(declare-fun m!1363003 () Bool)

(assert (=> b!1476958 m!1363003))

(assert (=> b!1476950 m!1362967))

(assert (=> b!1476950 m!1362967))

(declare-fun m!1363005 () Bool)

(assert (=> b!1476950 m!1363005))

(assert (=> b!1476949 m!1362967))

(assert (=> b!1476949 m!1362967))

(declare-fun m!1363007 () Bool)

(assert (=> b!1476949 m!1363007))

(assert (=> b!1476949 m!1363007))

(assert (=> b!1476949 m!1362967))

(declare-fun m!1363009 () Bool)

(assert (=> b!1476949 m!1363009))

(declare-fun m!1363011 () Bool)

(assert (=> b!1476961 m!1363011))

(declare-fun m!1363013 () Bool)

(assert (=> b!1476961 m!1363013))

(assert (=> b!1476961 m!1362967))

(declare-fun m!1363015 () Bool)

(assert (=> b!1476961 m!1363015))

(declare-fun m!1363017 () Bool)

(assert (=> b!1476961 m!1363017))

(assert (=> b!1476961 m!1362967))

(check-sat (not b!1476954) (not b!1476961) (not b!1476950) (not b!1476945) (not b!1476952) (not b!1476944) (not b!1476960) (not b!1476956) (not b!1476955) (not b!1476949) (not b!1476948) (not start!126192))
(check-sat)
