; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125830 () Bool)

(assert start!125830)

(declare-fun b!1472178 () Bool)

(declare-fun e!826264 () Bool)

(declare-fun e!826263 () Bool)

(assert (=> b!1472178 (= e!826264 e!826263)))

(declare-fun res!999977 () Bool)

(assert (=> b!1472178 (=> (not res!999977) (not e!826263))))

(declare-datatypes ((SeekEntryResult!12084 0))(
  ( (MissingZero!12084 (index!50727 (_ BitVec 32))) (Found!12084 (index!50728 (_ BitVec 32))) (Intermediate!12084 (undefined!12896 Bool) (index!50729 (_ BitVec 32)) (x!132314 (_ BitVec 32))) (Undefined!12084) (MissingVacant!12084 (index!50730 (_ BitVec 32))) )
))
(declare-fun lt!643459 () SeekEntryResult!12084)

(declare-datatypes ((array!99081 0))(
  ( (array!99082 (arr!47821 (Array (_ BitVec 32) (_ BitVec 64))) (size!48372 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99081)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99081 (_ BitVec 32)) SeekEntryResult!12084)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1472178 (= res!999977 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47821 a!2862) j!93) mask!2687) (select (arr!47821 a!2862) j!93) a!2862 mask!2687) lt!643459))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1472178 (= lt!643459 (Intermediate!12084 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1472179 () Bool)

(declare-fun res!999978 () Bool)

(declare-fun e!826262 () Bool)

(assert (=> b!1472179 (=> (not res!999978) (not e!826262))))

(declare-datatypes ((List!34502 0))(
  ( (Nil!34499) (Cons!34498 (h!35854 (_ BitVec 64)) (t!49203 List!34502)) )
))
(declare-fun arrayNoDuplicates!0 (array!99081 (_ BitVec 32) List!34502) Bool)

(assert (=> b!1472179 (= res!999978 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34499))))

(declare-fun b!1472180 () Bool)

(declare-fun res!999983 () Bool)

(declare-fun e!826260 () Bool)

(assert (=> b!1472180 (=> (not res!999983) (not e!826260))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99081 (_ BitVec 32)) SeekEntryResult!12084)

(assert (=> b!1472180 (= res!999983 (= (seekEntryOrOpen!0 (select (arr!47821 a!2862) j!93) a!2862 mask!2687) (Found!12084 j!93)))))

(declare-fun b!1472181 () Bool)

(declare-fun e!826261 () Bool)

(assert (=> b!1472181 (= e!826263 e!826261)))

(declare-fun res!999974 () Bool)

(assert (=> b!1472181 (=> (not res!999974) (not e!826261))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun lt!643462 () SeekEntryResult!12084)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1472181 (= res!999974 (= lt!643462 (Intermediate!12084 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!643460 () (_ BitVec 64))

(declare-fun lt!643458 () array!99081)

(assert (=> b!1472181 (= lt!643462 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!643460 mask!2687) lt!643460 lt!643458 mask!2687))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1472181 (= lt!643460 (select (store (arr!47821 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun res!999971 () Bool)

(assert (=> start!125830 (=> (not res!999971) (not e!826262))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125830 (= res!999971 (validMask!0 mask!2687))))

(assert (=> start!125830 e!826262))

(assert (=> start!125830 true))

(declare-fun array_inv!36766 (array!99081) Bool)

(assert (=> start!125830 (array_inv!36766 a!2862)))

(declare-fun b!1472182 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun e!826265 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(assert (=> b!1472182 (= e!826265 (= lt!643462 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!643460 lt!643458 mask!2687)))))

(declare-fun b!1472183 () Bool)

(declare-fun res!999976 () Bool)

(assert (=> b!1472183 (=> (not res!999976) (not e!826263))))

(assert (=> b!1472183 (= res!999976 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47821 a!2862) j!93) a!2862 mask!2687) lt!643459))))

(declare-fun b!1472184 () Bool)

(declare-fun res!999980 () Bool)

(assert (=> b!1472184 (=> (not res!999980) (not e!826262))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1472184 (= res!999980 (validKeyInArray!0 (select (arr!47821 a!2862) i!1006)))))

(declare-fun b!1472185 () Bool)

(declare-fun res!999979 () Bool)

(assert (=> b!1472185 (=> (not res!999979) (not e!826262))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99081 (_ BitVec 32)) Bool)

(assert (=> b!1472185 (= res!999979 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1472186 () Bool)

(assert (=> b!1472186 (= e!826262 e!826264)))

(declare-fun res!999972 () Bool)

(assert (=> b!1472186 (=> (not res!999972) (not e!826264))))

(assert (=> b!1472186 (= res!999972 (= (select (store (arr!47821 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1472186 (= lt!643458 (array!99082 (store (arr!47821 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48372 a!2862)))))

(declare-fun b!1472187 () Bool)

(assert (=> b!1472187 (= e!826261 (not true))))

(assert (=> b!1472187 e!826260))

(declare-fun res!999981 () Bool)

(assert (=> b!1472187 (=> (not res!999981) (not e!826260))))

(assert (=> b!1472187 (= res!999981 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49456 0))(
  ( (Unit!49457) )
))
(declare-fun lt!643461 () Unit!49456)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99081 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49456)

(assert (=> b!1472187 (= lt!643461 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1472188 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99081 (_ BitVec 32)) SeekEntryResult!12084)

(assert (=> b!1472188 (= e!826265 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!643460 lt!643458 mask!2687) (seekEntryOrOpen!0 lt!643460 lt!643458 mask!2687)))))

(declare-fun b!1472189 () Bool)

(declare-fun res!999975 () Bool)

(assert (=> b!1472189 (=> (not res!999975) (not e!826262))))

(assert (=> b!1472189 (= res!999975 (and (= (size!48372 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48372 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48372 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1472190 () Bool)

(declare-fun res!999982 () Bool)

(assert (=> b!1472190 (=> (not res!999982) (not e!826262))))

(assert (=> b!1472190 (= res!999982 (validKeyInArray!0 (select (arr!47821 a!2862) j!93)))))

(declare-fun b!1472191 () Bool)

(assert (=> b!1472191 (= e!826260 (or (= (select (arr!47821 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47821 a!2862) intermediateBeforeIndex!19) (select (arr!47821 a!2862) j!93))))))

(declare-fun b!1472192 () Bool)

(declare-fun res!999970 () Bool)

(assert (=> b!1472192 (=> (not res!999970) (not e!826261))))

(assert (=> b!1472192 (= res!999970 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1472193 () Bool)

(declare-fun res!999984 () Bool)

(assert (=> b!1472193 (=> (not res!999984) (not e!826262))))

(assert (=> b!1472193 (= res!999984 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48372 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48372 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48372 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1472194 () Bool)

(declare-fun res!999973 () Bool)

(assert (=> b!1472194 (=> (not res!999973) (not e!826261))))

(assert (=> b!1472194 (= res!999973 e!826265)))

(declare-fun c!135620 () Bool)

(assert (=> b!1472194 (= c!135620 (bvsle x!665 intermediateAfterX!19))))

(assert (= (and start!125830 res!999971) b!1472189))

(assert (= (and b!1472189 res!999975) b!1472184))

(assert (= (and b!1472184 res!999980) b!1472190))

(assert (= (and b!1472190 res!999982) b!1472185))

(assert (= (and b!1472185 res!999979) b!1472179))

(assert (= (and b!1472179 res!999978) b!1472193))

(assert (= (and b!1472193 res!999984) b!1472186))

(assert (= (and b!1472186 res!999972) b!1472178))

(assert (= (and b!1472178 res!999977) b!1472183))

(assert (= (and b!1472183 res!999976) b!1472181))

(assert (= (and b!1472181 res!999974) b!1472194))

(assert (= (and b!1472194 c!135620) b!1472182))

(assert (= (and b!1472194 (not c!135620)) b!1472188))

(assert (= (and b!1472194 res!999973) b!1472192))

(assert (= (and b!1472192 res!999970) b!1472187))

(assert (= (and b!1472187 res!999981) b!1472180))

(assert (= (and b!1472180 res!999983) b!1472191))

(declare-fun m!1358967 () Bool)

(assert (=> b!1472181 m!1358967))

(assert (=> b!1472181 m!1358967))

(declare-fun m!1358969 () Bool)

(assert (=> b!1472181 m!1358969))

(declare-fun m!1358971 () Bool)

(assert (=> b!1472181 m!1358971))

(declare-fun m!1358973 () Bool)

(assert (=> b!1472181 m!1358973))

(declare-fun m!1358975 () Bool)

(assert (=> b!1472179 m!1358975))

(declare-fun m!1358977 () Bool)

(assert (=> b!1472178 m!1358977))

(assert (=> b!1472178 m!1358977))

(declare-fun m!1358979 () Bool)

(assert (=> b!1472178 m!1358979))

(assert (=> b!1472178 m!1358979))

(assert (=> b!1472178 m!1358977))

(declare-fun m!1358981 () Bool)

(assert (=> b!1472178 m!1358981))

(declare-fun m!1358983 () Bool)

(assert (=> b!1472188 m!1358983))

(declare-fun m!1358985 () Bool)

(assert (=> b!1472188 m!1358985))

(declare-fun m!1358987 () Bool)

(assert (=> b!1472182 m!1358987))

(declare-fun m!1358989 () Bool)

(assert (=> b!1472191 m!1358989))

(assert (=> b!1472191 m!1358977))

(declare-fun m!1358991 () Bool)

(assert (=> b!1472185 m!1358991))

(assert (=> b!1472190 m!1358977))

(assert (=> b!1472190 m!1358977))

(declare-fun m!1358993 () Bool)

(assert (=> b!1472190 m!1358993))

(declare-fun m!1358995 () Bool)

(assert (=> b!1472187 m!1358995))

(declare-fun m!1358997 () Bool)

(assert (=> b!1472187 m!1358997))

(assert (=> b!1472180 m!1358977))

(assert (=> b!1472180 m!1358977))

(declare-fun m!1358999 () Bool)

(assert (=> b!1472180 m!1358999))

(assert (=> b!1472186 m!1358971))

(declare-fun m!1359001 () Bool)

(assert (=> b!1472186 m!1359001))

(declare-fun m!1359003 () Bool)

(assert (=> start!125830 m!1359003))

(declare-fun m!1359005 () Bool)

(assert (=> start!125830 m!1359005))

(assert (=> b!1472183 m!1358977))

(assert (=> b!1472183 m!1358977))

(declare-fun m!1359007 () Bool)

(assert (=> b!1472183 m!1359007))

(declare-fun m!1359009 () Bool)

(assert (=> b!1472184 m!1359009))

(assert (=> b!1472184 m!1359009))

(declare-fun m!1359011 () Bool)

(assert (=> b!1472184 m!1359011))

(push 1)

