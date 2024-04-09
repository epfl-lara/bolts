; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126452 () Bool)

(assert start!126452)

(declare-fun res!1007532 () Bool)

(declare-fun e!831204 () Bool)

(assert (=> start!126452 (=> (not res!1007532) (not e!831204))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126452 (= res!1007532 (validMask!0 mask!2687))))

(assert (=> start!126452 e!831204))

(assert (=> start!126452 true))

(declare-datatypes ((array!99388 0))(
  ( (array!99389 (arr!47967 (Array (_ BitVec 32) (_ BitVec 64))) (size!48518 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99388)

(declare-fun array_inv!36912 (array!99388) Bool)

(assert (=> start!126452 (array_inv!36912 a!2862)))

(declare-fun b!1482195 () Bool)

(declare-fun e!831208 () Bool)

(assert (=> b!1482195 (= e!831204 e!831208)))

(declare-fun res!1007541 () Bool)

(assert (=> b!1482195 (=> (not res!1007541) (not e!831208))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1482195 (= res!1007541 (= (select (store (arr!47967 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!646964 () array!99388)

(assert (=> b!1482195 (= lt!646964 (array!99389 (store (arr!47967 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48518 a!2862)))))

(declare-fun b!1482196 () Bool)

(declare-fun res!1007536 () Bool)

(declare-fun e!831206 () Bool)

(assert (=> b!1482196 (=> (not res!1007536) (not e!831206))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1482196 (= res!1007536 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1482197 () Bool)

(assert (=> b!1482197 (= e!831206 (not true))))

(declare-fun e!831203 () Bool)

(assert (=> b!1482197 e!831203))

(declare-fun res!1007540 () Bool)

(assert (=> b!1482197 (=> (not res!1007540) (not e!831203))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99388 (_ BitVec 32)) Bool)

(assert (=> b!1482197 (= res!1007540 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49748 0))(
  ( (Unit!49749) )
))
(declare-fun lt!646962 () Unit!49748)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99388 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49748)

(assert (=> b!1482197 (= lt!646962 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun e!831205 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun lt!646965 () (_ BitVec 64))

(declare-fun b!1482198 () Bool)

(declare-datatypes ((SeekEntryResult!12230 0))(
  ( (MissingZero!12230 (index!51311 (_ BitVec 32))) (Found!12230 (index!51312 (_ BitVec 32))) (Intermediate!12230 (undefined!13042 Bool) (index!51313 (_ BitVec 32)) (x!132892 (_ BitVec 32))) (Undefined!12230) (MissingVacant!12230 (index!51314 (_ BitVec 32))) )
))
(declare-fun lt!646963 () SeekEntryResult!12230)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99388 (_ BitVec 32)) SeekEntryResult!12230)

(assert (=> b!1482198 (= e!831205 (= lt!646963 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!646965 lt!646964 mask!2687)))))

(declare-fun b!1482199 () Bool)

(declare-fun res!1007537 () Bool)

(assert (=> b!1482199 (=> (not res!1007537) (not e!831204))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1482199 (= res!1007537 (validKeyInArray!0 (select (arr!47967 a!2862) i!1006)))))

(declare-fun b!1482200 () Bool)

(declare-fun e!831207 () Bool)

(assert (=> b!1482200 (= e!831207 e!831206)))

(declare-fun res!1007534 () Bool)

(assert (=> b!1482200 (=> (not res!1007534) (not e!831206))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1482200 (= res!1007534 (= lt!646963 (Intermediate!12230 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1482200 (= lt!646963 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!646965 mask!2687) lt!646965 lt!646964 mask!2687))))

(assert (=> b!1482200 (= lt!646965 (select (store (arr!47967 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun b!1482201 () Bool)

(assert (=> b!1482201 (= e!831203 (and (or (= (select (arr!47967 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47967 a!2862) intermediateBeforeIndex!19) (select (arr!47967 a!2862) j!93))) (or (and (= (select (arr!47967 a!2862) index!646) (select (store (arr!47967 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47967 a!2862) index!646) (select (arr!47967 a!2862) j!93))) (= (select (arr!47967 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= (select (store (arr!47967 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1482202 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99388 (_ BitVec 32)) SeekEntryResult!12230)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99388 (_ BitVec 32)) SeekEntryResult!12230)

(assert (=> b!1482202 (= e!831205 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!646965 lt!646964 mask!2687) (seekEntryOrOpen!0 lt!646965 lt!646964 mask!2687)))))

(declare-fun b!1482203 () Bool)

(declare-fun res!1007533 () Bool)

(assert (=> b!1482203 (=> (not res!1007533) (not e!831204))))

(assert (=> b!1482203 (= res!1007533 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48518 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48518 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48518 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1482204 () Bool)

(declare-fun res!1007531 () Bool)

(assert (=> b!1482204 (=> (not res!1007531) (not e!831204))))

(assert (=> b!1482204 (= res!1007531 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1482205 () Bool)

(declare-fun res!1007542 () Bool)

(assert (=> b!1482205 (=> (not res!1007542) (not e!831204))))

(declare-datatypes ((List!34648 0))(
  ( (Nil!34645) (Cons!34644 (h!36015 (_ BitVec 64)) (t!49349 List!34648)) )
))
(declare-fun arrayNoDuplicates!0 (array!99388 (_ BitVec 32) List!34648) Bool)

(assert (=> b!1482205 (= res!1007542 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34645))))

(declare-fun b!1482206 () Bool)

(declare-fun res!1007530 () Bool)

(assert (=> b!1482206 (=> (not res!1007530) (not e!831203))))

(assert (=> b!1482206 (= res!1007530 (= (seekEntryOrOpen!0 (select (arr!47967 a!2862) j!93) a!2862 mask!2687) (Found!12230 j!93)))))

(declare-fun b!1482207 () Bool)

(declare-fun res!1007543 () Bool)

(assert (=> b!1482207 (=> (not res!1007543) (not e!831206))))

(assert (=> b!1482207 (= res!1007543 e!831205)))

(declare-fun c!136856 () Bool)

(assert (=> b!1482207 (= c!136856 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1482208 () Bool)

(declare-fun res!1007544 () Bool)

(assert (=> b!1482208 (=> (not res!1007544) (not e!831207))))

(declare-fun lt!646966 () SeekEntryResult!12230)

(assert (=> b!1482208 (= res!1007544 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47967 a!2862) j!93) a!2862 mask!2687) lt!646966))))

(declare-fun b!1482209 () Bool)

(declare-fun res!1007538 () Bool)

(assert (=> b!1482209 (=> (not res!1007538) (not e!831204))))

(assert (=> b!1482209 (= res!1007538 (validKeyInArray!0 (select (arr!47967 a!2862) j!93)))))

(declare-fun b!1482210 () Bool)

(assert (=> b!1482210 (= e!831208 e!831207)))

(declare-fun res!1007535 () Bool)

(assert (=> b!1482210 (=> (not res!1007535) (not e!831207))))

(assert (=> b!1482210 (= res!1007535 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47967 a!2862) j!93) mask!2687) (select (arr!47967 a!2862) j!93) a!2862 mask!2687) lt!646966))))

(assert (=> b!1482210 (= lt!646966 (Intermediate!12230 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1482211 () Bool)

(declare-fun res!1007539 () Bool)

(assert (=> b!1482211 (=> (not res!1007539) (not e!831204))))

(assert (=> b!1482211 (= res!1007539 (and (= (size!48518 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48518 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48518 a!2862)) (not (= i!1006 j!93))))))

(assert (= (and start!126452 res!1007532) b!1482211))

(assert (= (and b!1482211 res!1007539) b!1482199))

(assert (= (and b!1482199 res!1007537) b!1482209))

(assert (= (and b!1482209 res!1007538) b!1482204))

(assert (= (and b!1482204 res!1007531) b!1482205))

(assert (= (and b!1482205 res!1007542) b!1482203))

(assert (= (and b!1482203 res!1007533) b!1482195))

(assert (= (and b!1482195 res!1007541) b!1482210))

(assert (= (and b!1482210 res!1007535) b!1482208))

(assert (= (and b!1482208 res!1007544) b!1482200))

(assert (= (and b!1482200 res!1007534) b!1482207))

(assert (= (and b!1482207 c!136856) b!1482198))

(assert (= (and b!1482207 (not c!136856)) b!1482202))

(assert (= (and b!1482207 res!1007543) b!1482196))

(assert (= (and b!1482196 res!1007536) b!1482197))

(assert (= (and b!1482197 res!1007540) b!1482206))

(assert (= (and b!1482206 res!1007530) b!1482201))

(declare-fun m!1367977 () Bool)

(assert (=> b!1482205 m!1367977))

(declare-fun m!1367979 () Bool)

(assert (=> start!126452 m!1367979))

(declare-fun m!1367981 () Bool)

(assert (=> start!126452 m!1367981))

(declare-fun m!1367983 () Bool)

(assert (=> b!1482198 m!1367983))

(declare-fun m!1367985 () Bool)

(assert (=> b!1482202 m!1367985))

(declare-fun m!1367987 () Bool)

(assert (=> b!1482202 m!1367987))

(declare-fun m!1367989 () Bool)

(assert (=> b!1482206 m!1367989))

(assert (=> b!1482206 m!1367989))

(declare-fun m!1367991 () Bool)

(assert (=> b!1482206 m!1367991))

(declare-fun m!1367993 () Bool)

(assert (=> b!1482204 m!1367993))

(declare-fun m!1367995 () Bool)

(assert (=> b!1482197 m!1367995))

(declare-fun m!1367997 () Bool)

(assert (=> b!1482197 m!1367997))

(declare-fun m!1367999 () Bool)

(assert (=> b!1482200 m!1367999))

(assert (=> b!1482200 m!1367999))

(declare-fun m!1368001 () Bool)

(assert (=> b!1482200 m!1368001))

(declare-fun m!1368003 () Bool)

(assert (=> b!1482200 m!1368003))

(declare-fun m!1368005 () Bool)

(assert (=> b!1482200 m!1368005))

(assert (=> b!1482201 m!1368003))

(declare-fun m!1368007 () Bool)

(assert (=> b!1482201 m!1368007))

(declare-fun m!1368009 () Bool)

(assert (=> b!1482201 m!1368009))

(declare-fun m!1368011 () Bool)

(assert (=> b!1482201 m!1368011))

(assert (=> b!1482201 m!1367989))

(declare-fun m!1368013 () Bool)

(assert (=> b!1482199 m!1368013))

(assert (=> b!1482199 m!1368013))

(declare-fun m!1368015 () Bool)

(assert (=> b!1482199 m!1368015))

(assert (=> b!1482195 m!1368003))

(declare-fun m!1368017 () Bool)

(assert (=> b!1482195 m!1368017))

(assert (=> b!1482208 m!1367989))

(assert (=> b!1482208 m!1367989))

(declare-fun m!1368019 () Bool)

(assert (=> b!1482208 m!1368019))

(assert (=> b!1482210 m!1367989))

(assert (=> b!1482210 m!1367989))

(declare-fun m!1368021 () Bool)

(assert (=> b!1482210 m!1368021))

(assert (=> b!1482210 m!1368021))

(assert (=> b!1482210 m!1367989))

(declare-fun m!1368023 () Bool)

(assert (=> b!1482210 m!1368023))

(assert (=> b!1482209 m!1367989))

(assert (=> b!1482209 m!1367989))

(declare-fun m!1368025 () Bool)

(assert (=> b!1482209 m!1368025))

(push 1)

