; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125038 () Bool)

(assert start!125038)

(declare-fun b!1453440 () Bool)

(declare-fun res!984565 () Bool)

(declare-fun e!818098 () Bool)

(assert (=> b!1453440 (=> (not res!984565) (not e!818098))))

(declare-datatypes ((array!98403 0))(
  ( (array!98404 (arr!47485 (Array (_ BitVec 32) (_ BitVec 64))) (size!48036 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98403)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1453440 (= res!984565 (validKeyInArray!0 (select (arr!47485 a!2862) j!93)))))

(declare-fun b!1453441 () Bool)

(declare-fun res!984550 () Bool)

(assert (=> b!1453441 (=> (not res!984550) (not e!818098))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1453441 (= res!984550 (and (= (size!48036 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48036 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48036 a!2862)) (not (= i!1006 j!93))))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun b!1453442 () Bool)

(declare-fun lt!637205 () array!98403)

(declare-fun lt!637207 () (_ BitVec 64))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun e!818094 () Bool)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11760 0))(
  ( (MissingZero!11760 (index!49431 (_ BitVec 32))) (Found!11760 (index!49432 (_ BitVec 32))) (Intermediate!11760 (undefined!12572 Bool) (index!49433 (_ BitVec 32)) (x!131076 (_ BitVec 32))) (Undefined!11760) (MissingVacant!11760 (index!49434 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98403 (_ BitVec 32)) SeekEntryResult!11760)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98403 (_ BitVec 32)) SeekEntryResult!11760)

(assert (=> b!1453442 (= e!818094 (= (seekEntryOrOpen!0 lt!637207 lt!637205 mask!2687) (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!637207 lt!637205 mask!2687)))))

(declare-fun b!1453443 () Bool)

(declare-fun e!818093 () Bool)

(declare-fun e!818091 () Bool)

(assert (=> b!1453443 (= e!818093 e!818091)))

(declare-fun res!984558 () Bool)

(assert (=> b!1453443 (=> (not res!984558) (not e!818091))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun lt!637203 () SeekEntryResult!11760)

(assert (=> b!1453443 (= res!984558 (= lt!637203 (Intermediate!11760 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98403 (_ BitVec 32)) SeekEntryResult!11760)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1453443 (= lt!637203 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!637207 mask!2687) lt!637207 lt!637205 mask!2687))))

(assert (=> b!1453443 (= lt!637207 (select (store (arr!47485 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1453444 () Bool)

(declare-fun e!818095 () Bool)

(assert (=> b!1453444 (= e!818095 e!818093)))

(declare-fun res!984554 () Bool)

(assert (=> b!1453444 (=> (not res!984554) (not e!818093))))

(declare-fun lt!637204 () SeekEntryResult!11760)

(assert (=> b!1453444 (= res!984554 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47485 a!2862) j!93) mask!2687) (select (arr!47485 a!2862) j!93) a!2862 mask!2687) lt!637204))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1453444 (= lt!637204 (Intermediate!11760 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1453445 () Bool)

(declare-fun res!984555 () Bool)

(declare-fun e!818097 () Bool)

(assert (=> b!1453445 (=> (not res!984555) (not e!818097))))

(assert (=> b!1453445 (= res!984555 (or (= (select (arr!47485 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47485 a!2862) intermediateBeforeIndex!19) (select (arr!47485 a!2862) j!93))))))

(declare-fun b!1453446 () Bool)

(declare-fun res!984567 () Bool)

(assert (=> b!1453446 (=> (not res!984567) (not e!818091))))

(assert (=> b!1453446 (= res!984567 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1453447 () Bool)

(declare-fun res!984552 () Bool)

(assert (=> b!1453447 (=> (not res!984552) (not e!818097))))

(assert (=> b!1453447 (= res!984552 (= (seekEntryOrOpen!0 (select (arr!47485 a!2862) j!93) a!2862 mask!2687) (Found!11760 j!93)))))

(declare-fun res!984551 () Bool)

(assert (=> start!125038 (=> (not res!984551) (not e!818098))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125038 (= res!984551 (validMask!0 mask!2687))))

(assert (=> start!125038 e!818098))

(assert (=> start!125038 true))

(declare-fun array_inv!36430 (array!98403) Bool)

(assert (=> start!125038 (array_inv!36430 a!2862)))

(declare-fun b!1453448 () Bool)

(declare-fun res!984560 () Bool)

(assert (=> b!1453448 (=> (not res!984560) (not e!818098))))

(assert (=> b!1453448 (= res!984560 (validKeyInArray!0 (select (arr!47485 a!2862) i!1006)))))

(declare-fun e!818099 () Bool)

(declare-fun b!1453449 () Bool)

(assert (=> b!1453449 (= e!818099 (= lt!637203 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!637207 lt!637205 mask!2687)))))

(declare-fun b!1453450 () Bool)

(assert (=> b!1453450 (= e!818091 (not true))))

(assert (=> b!1453450 e!818097))

(declare-fun res!984559 () Bool)

(assert (=> b!1453450 (=> (not res!984559) (not e!818097))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98403 (_ BitVec 32)) Bool)

(assert (=> b!1453450 (= res!984559 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48964 0))(
  ( (Unit!48965) )
))
(declare-fun lt!637206 () Unit!48964)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98403 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48964)

(assert (=> b!1453450 (= lt!637206 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1453451 () Bool)

(declare-fun e!818096 () Bool)

(assert (=> b!1453451 (= e!818096 e!818094)))

(declare-fun res!984564 () Bool)

(assert (=> b!1453451 (=> (not res!984564) (not e!818094))))

(declare-fun lt!637202 () (_ BitVec 64))

(assert (=> b!1453451 (= res!984564 (and (= index!646 intermediateAfterIndex!19) (= lt!637202 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1453452 () Bool)

(declare-fun res!984566 () Bool)

(assert (=> b!1453452 (=> (not res!984566) (not e!818098))))

(declare-datatypes ((List!34166 0))(
  ( (Nil!34163) (Cons!34162 (h!35512 (_ BitVec 64)) (t!48867 List!34166)) )
))
(declare-fun arrayNoDuplicates!0 (array!98403 (_ BitVec 32) List!34166) Bool)

(assert (=> b!1453452 (= res!984566 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34163))))

(declare-fun b!1453453 () Bool)

(assert (=> b!1453453 (= e!818097 e!818096)))

(declare-fun res!984557 () Bool)

(assert (=> b!1453453 (=> res!984557 e!818096)))

(assert (=> b!1453453 (= res!984557 (or (and (= (select (arr!47485 a!2862) index!646) lt!637202) (= (select (arr!47485 a!2862) index!646) (select (arr!47485 a!2862) j!93))) (= (select (arr!47485 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1453453 (= lt!637202 (select (store (arr!47485 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))))

(declare-fun b!1453454 () Bool)

(declare-fun res!984563 () Bool)

(assert (=> b!1453454 (=> (not res!984563) (not e!818093))))

(assert (=> b!1453454 (= res!984563 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47485 a!2862) j!93) a!2862 mask!2687) lt!637204))))

(declare-fun b!1453455 () Bool)

(declare-fun res!984553 () Bool)

(assert (=> b!1453455 (=> (not res!984553) (not e!818091))))

(assert (=> b!1453455 (= res!984553 e!818099)))

(declare-fun c!133958 () Bool)

(assert (=> b!1453455 (= c!133958 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1453456 () Bool)

(declare-fun res!984561 () Bool)

(assert (=> b!1453456 (=> (not res!984561) (not e!818098))))

(assert (=> b!1453456 (= res!984561 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48036 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48036 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48036 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1453457 () Bool)

(assert (=> b!1453457 (= e!818098 e!818095)))

(declare-fun res!984556 () Bool)

(assert (=> b!1453457 (=> (not res!984556) (not e!818095))))

(assert (=> b!1453457 (= res!984556 (= (select (store (arr!47485 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1453457 (= lt!637205 (array!98404 (store (arr!47485 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48036 a!2862)))))

(declare-fun b!1453458 () Bool)

(assert (=> b!1453458 (= e!818099 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!637207 lt!637205 mask!2687) (seekEntryOrOpen!0 lt!637207 lt!637205 mask!2687)))))

(declare-fun b!1453459 () Bool)

(declare-fun res!984562 () Bool)

(assert (=> b!1453459 (=> (not res!984562) (not e!818098))))

(assert (=> b!1453459 (= res!984562 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(assert (= (and start!125038 res!984551) b!1453441))

(assert (= (and b!1453441 res!984550) b!1453448))

(assert (= (and b!1453448 res!984560) b!1453440))

(assert (= (and b!1453440 res!984565) b!1453459))

(assert (= (and b!1453459 res!984562) b!1453452))

(assert (= (and b!1453452 res!984566) b!1453456))

(assert (= (and b!1453456 res!984561) b!1453457))

(assert (= (and b!1453457 res!984556) b!1453444))

(assert (= (and b!1453444 res!984554) b!1453454))

(assert (= (and b!1453454 res!984563) b!1453443))

(assert (= (and b!1453443 res!984558) b!1453455))

(assert (= (and b!1453455 c!133958) b!1453449))

(assert (= (and b!1453455 (not c!133958)) b!1453458))

(assert (= (and b!1453455 res!984553) b!1453446))

(assert (= (and b!1453446 res!984567) b!1453450))

(assert (= (and b!1453450 res!984559) b!1453447))

(assert (= (and b!1453447 res!984552) b!1453445))

(assert (= (and b!1453445 res!984555) b!1453453))

(assert (= (and b!1453453 (not res!984557)) b!1453451))

(assert (= (and b!1453451 res!984564) b!1453442))

(declare-fun m!1341963 () Bool)

(assert (=> b!1453452 m!1341963))

(declare-fun m!1341965 () Bool)

(assert (=> b!1453450 m!1341965))

(declare-fun m!1341967 () Bool)

(assert (=> b!1453450 m!1341967))

(declare-fun m!1341969 () Bool)

(assert (=> b!1453448 m!1341969))

(assert (=> b!1453448 m!1341969))

(declare-fun m!1341971 () Bool)

(assert (=> b!1453448 m!1341971))

(declare-fun m!1341973 () Bool)

(assert (=> b!1453445 m!1341973))

(declare-fun m!1341975 () Bool)

(assert (=> b!1453445 m!1341975))

(declare-fun m!1341977 () Bool)

(assert (=> b!1453457 m!1341977))

(declare-fun m!1341979 () Bool)

(assert (=> b!1453457 m!1341979))

(declare-fun m!1341981 () Bool)

(assert (=> b!1453459 m!1341981))

(declare-fun m!1341983 () Bool)

(assert (=> b!1453442 m!1341983))

(declare-fun m!1341985 () Bool)

(assert (=> b!1453442 m!1341985))

(declare-fun m!1341987 () Bool)

(assert (=> start!125038 m!1341987))

(declare-fun m!1341989 () Bool)

(assert (=> start!125038 m!1341989))

(assert (=> b!1453458 m!1341985))

(assert (=> b!1453458 m!1341983))

(declare-fun m!1341991 () Bool)

(assert (=> b!1453453 m!1341991))

(assert (=> b!1453453 m!1341975))

(assert (=> b!1453453 m!1341977))

(declare-fun m!1341993 () Bool)

(assert (=> b!1453453 m!1341993))

(declare-fun m!1341995 () Bool)

(assert (=> b!1453443 m!1341995))

(assert (=> b!1453443 m!1341995))

(declare-fun m!1341997 () Bool)

(assert (=> b!1453443 m!1341997))

(assert (=> b!1453443 m!1341977))

(declare-fun m!1341999 () Bool)

(assert (=> b!1453443 m!1341999))

(assert (=> b!1453440 m!1341975))

(assert (=> b!1453440 m!1341975))

(declare-fun m!1342001 () Bool)

(assert (=> b!1453440 m!1342001))

(assert (=> b!1453444 m!1341975))

(assert (=> b!1453444 m!1341975))

(declare-fun m!1342003 () Bool)

(assert (=> b!1453444 m!1342003))

(assert (=> b!1453444 m!1342003))

(assert (=> b!1453444 m!1341975))

(declare-fun m!1342005 () Bool)

(assert (=> b!1453444 m!1342005))

(assert (=> b!1453447 m!1341975))

(assert (=> b!1453447 m!1341975))

(declare-fun m!1342007 () Bool)

(assert (=> b!1453447 m!1342007))

(assert (=> b!1453454 m!1341975))

(assert (=> b!1453454 m!1341975))

(declare-fun m!1342009 () Bool)

(assert (=> b!1453454 m!1342009))

(declare-fun m!1342011 () Bool)

(assert (=> b!1453449 m!1342011))

(push 1)

