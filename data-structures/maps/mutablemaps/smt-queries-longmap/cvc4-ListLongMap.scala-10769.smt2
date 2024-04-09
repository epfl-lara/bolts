; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126038 () Bool)

(assert start!126038)

(declare-fun b!1475229 () Bool)

(declare-fun e!827698 () Bool)

(declare-fun e!827695 () Bool)

(assert (=> b!1475229 (= e!827698 e!827695)))

(declare-fun res!1002196 () Bool)

(assert (=> b!1475229 (=> res!1002196 e!827695)))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!99175 0))(
  ( (array!99176 (arr!47865 (Array (_ BitVec 32) (_ BitVec 64))) (size!48416 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99175)

(assert (=> b!1475229 (= res!1002196 (or (and (= (select (arr!47865 a!2862) index!646) (select (store (arr!47865 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47865 a!2862) index!646) (select (arr!47865 a!2862) j!93))) (not (= (select (arr!47865 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1475230 () Bool)

(declare-fun e!827699 () Bool)

(declare-fun e!827702 () Bool)

(assert (=> b!1475230 (= e!827699 e!827702)))

(declare-fun res!1002193 () Bool)

(assert (=> b!1475230 (=> (not res!1002193) (not e!827702))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1475230 (= res!1002193 (= (select (store (arr!47865 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!644518 () array!99175)

(assert (=> b!1475230 (= lt!644518 (array!99176 (store (arr!47865 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48416 a!2862)))))

(declare-fun b!1475231 () Bool)

(declare-fun res!1002199 () Bool)

(assert (=> b!1475231 (=> (not res!1002199) (not e!827699))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99175 (_ BitVec 32)) Bool)

(assert (=> b!1475231 (= res!1002199 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1475232 () Bool)

(declare-fun res!1002201 () Bool)

(assert (=> b!1475232 (=> (not res!1002201) (not e!827699))))

(assert (=> b!1475232 (= res!1002201 (and (= (size!48416 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48416 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48416 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1475233 () Bool)

(declare-fun res!1002204 () Bool)

(assert (=> b!1475233 (=> (not res!1002204) (not e!827699))))

(declare-datatypes ((List!34546 0))(
  ( (Nil!34543) (Cons!34542 (h!35904 (_ BitVec 64)) (t!49247 List!34546)) )
))
(declare-fun arrayNoDuplicates!0 (array!99175 (_ BitVec 32) List!34546) Bool)

(assert (=> b!1475233 (= res!1002204 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34543))))

(declare-fun b!1475234 () Bool)

(declare-fun e!827696 () Bool)

(declare-fun e!827697 () Bool)

(assert (=> b!1475234 (= e!827696 e!827697)))

(declare-fun res!1002198 () Bool)

(assert (=> b!1475234 (=> (not res!1002198) (not e!827697))))

(declare-datatypes ((SeekEntryResult!12128 0))(
  ( (MissingZero!12128 (index!50903 (_ BitVec 32))) (Found!12128 (index!50904 (_ BitVec 32))) (Intermediate!12128 (undefined!12940 Bool) (index!50905 (_ BitVec 32)) (x!132488 (_ BitVec 32))) (Undefined!12128) (MissingVacant!12128 (index!50906 (_ BitVec 32))) )
))
(declare-fun lt!644514 () SeekEntryResult!12128)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1475234 (= res!1002198 (= lt!644514 (Intermediate!12128 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!644515 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99175 (_ BitVec 32)) SeekEntryResult!12128)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1475234 (= lt!644514 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!644515 mask!2687) lt!644515 lt!644518 mask!2687))))

(assert (=> b!1475234 (= lt!644515 (select (store (arr!47865 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun b!1475235 () Bool)

(assert (=> b!1475235 (= e!827697 (not (or (and (= (select (arr!47865 a!2862) index!646) (select (store (arr!47865 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47865 a!2862) index!646) (select (arr!47865 a!2862) j!93))) (not (= (select (arr!47865 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)) (= index!646 intermediateBeforeIndex!19))))))

(assert (=> b!1475235 e!827698))

(declare-fun res!1002206 () Bool)

(assert (=> b!1475235 (=> (not res!1002206) (not e!827698))))

(declare-fun lt!644513 () SeekEntryResult!12128)

(assert (=> b!1475235 (= res!1002206 (and (= lt!644513 (Found!12128 j!93)) (or (= (select (arr!47865 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47865 a!2862) intermediateBeforeIndex!19) (select (arr!47865 a!2862) j!93)))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99175 (_ BitVec 32)) SeekEntryResult!12128)

(assert (=> b!1475235 (= lt!644513 (seekEntryOrOpen!0 (select (arr!47865 a!2862) j!93) a!2862 mask!2687))))

(assert (=> b!1475235 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!49544 0))(
  ( (Unit!49545) )
))
(declare-fun lt!644516 () Unit!49544)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99175 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49544)

(assert (=> b!1475235 (= lt!644516 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1475236 () Bool)

(declare-fun res!1002202 () Bool)

(assert (=> b!1475236 (=> (not res!1002202) (not e!827697))))

(declare-fun e!827701 () Bool)

(assert (=> b!1475236 (= res!1002202 e!827701)))

(declare-fun c!136037 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(assert (=> b!1475236 (= c!136037 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1475237 () Bool)

(assert (=> b!1475237 (= e!827701 (= lt!644514 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!644515 lt!644518 mask!2687)))))

(declare-fun b!1475238 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99175 (_ BitVec 32)) SeekEntryResult!12128)

(assert (=> b!1475238 (= e!827695 (= lt!644513 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47865 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1475239 () Bool)

(assert (=> b!1475239 (= e!827701 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!644515 lt!644518 mask!2687) (seekEntryOrOpen!0 lt!644515 lt!644518 mask!2687)))))

(declare-fun b!1475240 () Bool)

(declare-fun res!1002200 () Bool)

(assert (=> b!1475240 (=> (not res!1002200) (not e!827697))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1475240 (= res!1002200 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1475241 () Bool)

(declare-fun res!1002203 () Bool)

(assert (=> b!1475241 (=> (not res!1002203) (not e!827699))))

(assert (=> b!1475241 (= res!1002203 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48416 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48416 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48416 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun res!1002195 () Bool)

(assert (=> start!126038 (=> (not res!1002195) (not e!827699))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126038 (= res!1002195 (validMask!0 mask!2687))))

(assert (=> start!126038 e!827699))

(assert (=> start!126038 true))

(declare-fun array_inv!36810 (array!99175) Bool)

(assert (=> start!126038 (array_inv!36810 a!2862)))

(declare-fun b!1475242 () Bool)

(declare-fun res!1002194 () Bool)

(assert (=> b!1475242 (=> (not res!1002194) (not e!827699))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1475242 (= res!1002194 (validKeyInArray!0 (select (arr!47865 a!2862) i!1006)))))

(declare-fun b!1475243 () Bool)

(assert (=> b!1475243 (= e!827702 e!827696)))

(declare-fun res!1002207 () Bool)

(assert (=> b!1475243 (=> (not res!1002207) (not e!827696))))

(declare-fun lt!644517 () SeekEntryResult!12128)

(assert (=> b!1475243 (= res!1002207 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47865 a!2862) j!93) mask!2687) (select (arr!47865 a!2862) j!93) a!2862 mask!2687) lt!644517))))

(assert (=> b!1475243 (= lt!644517 (Intermediate!12128 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1475244 () Bool)

(declare-fun res!1002197 () Bool)

(assert (=> b!1475244 (=> (not res!1002197) (not e!827699))))

(assert (=> b!1475244 (= res!1002197 (validKeyInArray!0 (select (arr!47865 a!2862) j!93)))))

(declare-fun b!1475245 () Bool)

(declare-fun res!1002205 () Bool)

(assert (=> b!1475245 (=> (not res!1002205) (not e!827696))))

(assert (=> b!1475245 (= res!1002205 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47865 a!2862) j!93) a!2862 mask!2687) lt!644517))))

(assert (= (and start!126038 res!1002195) b!1475232))

(assert (= (and b!1475232 res!1002201) b!1475242))

(assert (= (and b!1475242 res!1002194) b!1475244))

(assert (= (and b!1475244 res!1002197) b!1475231))

(assert (= (and b!1475231 res!1002199) b!1475233))

(assert (= (and b!1475233 res!1002204) b!1475241))

(assert (= (and b!1475241 res!1002203) b!1475230))

(assert (= (and b!1475230 res!1002193) b!1475243))

(assert (= (and b!1475243 res!1002207) b!1475245))

(assert (= (and b!1475245 res!1002205) b!1475234))

(assert (= (and b!1475234 res!1002198) b!1475236))

(assert (= (and b!1475236 c!136037) b!1475237))

(assert (= (and b!1475236 (not c!136037)) b!1475239))

(assert (= (and b!1475236 res!1002202) b!1475240))

(assert (= (and b!1475240 res!1002200) b!1475235))

(assert (= (and b!1475235 res!1002206) b!1475229))

(assert (= (and b!1475229 (not res!1002196)) b!1475238))

(declare-fun m!1361579 () Bool)

(assert (=> b!1475239 m!1361579))

(declare-fun m!1361581 () Bool)

(assert (=> b!1475239 m!1361581))

(declare-fun m!1361583 () Bool)

(assert (=> b!1475245 m!1361583))

(assert (=> b!1475245 m!1361583))

(declare-fun m!1361585 () Bool)

(assert (=> b!1475245 m!1361585))

(declare-fun m!1361587 () Bool)

(assert (=> b!1475230 m!1361587))

(declare-fun m!1361589 () Bool)

(assert (=> b!1475230 m!1361589))

(assert (=> b!1475244 m!1361583))

(assert (=> b!1475244 m!1361583))

(declare-fun m!1361591 () Bool)

(assert (=> b!1475244 m!1361591))

(declare-fun m!1361593 () Bool)

(assert (=> b!1475229 m!1361593))

(assert (=> b!1475229 m!1361587))

(declare-fun m!1361595 () Bool)

(assert (=> b!1475229 m!1361595))

(assert (=> b!1475229 m!1361583))

(declare-fun m!1361597 () Bool)

(assert (=> b!1475242 m!1361597))

(assert (=> b!1475242 m!1361597))

(declare-fun m!1361599 () Bool)

(assert (=> b!1475242 m!1361599))

(declare-fun m!1361601 () Bool)

(assert (=> start!126038 m!1361601))

(declare-fun m!1361603 () Bool)

(assert (=> start!126038 m!1361603))

(declare-fun m!1361605 () Bool)

(assert (=> b!1475235 m!1361605))

(assert (=> b!1475235 m!1361587))

(declare-fun m!1361607 () Bool)

(assert (=> b!1475235 m!1361607))

(assert (=> b!1475235 m!1361595))

(assert (=> b!1475235 m!1361593))

(assert (=> b!1475235 m!1361583))

(declare-fun m!1361609 () Bool)

(assert (=> b!1475235 m!1361609))

(declare-fun m!1361611 () Bool)

(assert (=> b!1475235 m!1361611))

(assert (=> b!1475235 m!1361583))

(declare-fun m!1361613 () Bool)

(assert (=> b!1475233 m!1361613))

(assert (=> b!1475238 m!1361583))

(assert (=> b!1475238 m!1361583))

(declare-fun m!1361615 () Bool)

(assert (=> b!1475238 m!1361615))

(declare-fun m!1361617 () Bool)

(assert (=> b!1475237 m!1361617))

(declare-fun m!1361619 () Bool)

(assert (=> b!1475234 m!1361619))

(assert (=> b!1475234 m!1361619))

(declare-fun m!1361621 () Bool)

(assert (=> b!1475234 m!1361621))

(assert (=> b!1475234 m!1361587))

(declare-fun m!1361623 () Bool)

(assert (=> b!1475234 m!1361623))

(declare-fun m!1361625 () Bool)

(assert (=> b!1475231 m!1361625))

(assert (=> b!1475243 m!1361583))

(assert (=> b!1475243 m!1361583))

(declare-fun m!1361627 () Bool)

(assert (=> b!1475243 m!1361627))

(assert (=> b!1475243 m!1361627))

(assert (=> b!1475243 m!1361583))

(declare-fun m!1361629 () Bool)

(assert (=> b!1475243 m!1361629))

(push 1)

(assert (not b!1475231))

(assert (not b!1475238))

(assert (not b!1475245))

(assert (not b!1475235))

(assert (not b!1475234))

(assert (not start!126038))

(assert (not b!1475237))

(assert (not b!1475243))

(assert (not b!1475244))

(assert (not b!1475242))

(assert (not b!1475239))

(assert (not b!1475233))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!155715 () Bool)

(assert (=> d!155715 (= (validKeyInArray!0 (select (arr!47865 a!2862) j!93)) (and (not (= (select (arr!47865 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47865 a!2862) j!93) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1475244 d!155715))

(declare-fun b!1475330 () Bool)

(declare-fun lt!644556 () SeekEntryResult!12128)

(assert (=> b!1475330 (and (bvsge (index!50905 lt!644556) #b00000000000000000000000000000000) (bvslt (index!50905 lt!644556) (size!48416 a!2862)))))

(declare-fun e!827754 () Bool)

(assert (=> b!1475330 (= e!827754 (= (select (arr!47865 a!2862) (index!50905 lt!644556)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1475331 () Bool)

(declare-fun e!827753 () SeekEntryResult!12128)

(assert (=> b!1475331 (= e!827753 (Intermediate!12128 true index!646 x!665))))

(declare-fun b!1475332 () Bool)

(declare-fun e!827752 () Bool)

(declare-fun e!827755 () Bool)

(assert (=> b!1475332 (= e!827752 e!827755)))

(declare-fun res!1002235 () Bool)

(assert (=> b!1475332 (= res!1002235 (and (is-Intermediate!12128 lt!644556) (not (undefined!12940 lt!644556)) (bvslt (x!132488 lt!644556) #b01111111111111111111111111111110) (bvsge (x!132488 lt!644556) #b00000000000000000000000000000000) (bvsge (x!132488 lt!644556) x!665)))))

(assert (=> b!1475332 (=> (not res!1002235) (not e!827755))))

(declare-fun e!827751 () SeekEntryResult!12128)

(declare-fun b!1475333 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1475333 (= e!827751 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) (select (arr!47865 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1475334 () Bool)

(assert (=> b!1475334 (and (bvsge (index!50905 lt!644556) #b00000000000000000000000000000000) (bvslt (index!50905 lt!644556) (size!48416 a!2862)))))

(declare-fun res!1002234 () Bool)

(assert (=> b!1475334 (= res!1002234 (= (select (arr!47865 a!2862) (index!50905 lt!644556)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1475334 (=> res!1002234 e!827754)))

(declare-fun b!1475335 () Bool)

(assert (=> b!1475335 (= e!827753 e!827751)))

(declare-fun c!136069 () Bool)

(declare-fun lt!644555 () (_ BitVec 64))

(assert (=> b!1475335 (= c!136069 (or (= lt!644555 (select (arr!47865 a!2862) j!93)) (= (bvadd lt!644555 lt!644555) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!155717 () Bool)

(assert (=> d!155717 e!827752))

(declare-fun c!136068 () Bool)

(assert (=> d!155717 (= c!136068 (and (is-Intermediate!12128 lt!644556) (undefined!12940 lt!644556)))))

(assert (=> d!155717 (= lt!644556 e!827753)))

(declare-fun c!136070 () Bool)

(assert (=> d!155717 (= c!136070 (bvsge x!665 #b01111111111111111111111111111110))))

(assert (=> d!155717 (= lt!644555 (select (arr!47865 a!2862) index!646))))

(assert (=> d!155717 (validMask!0 mask!2687)))

(assert (=> d!155717 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47865 a!2862) j!93) a!2862 mask!2687) lt!644556)))

(declare-fun b!1475336 () Bool)

(assert (=> b!1475336 (= e!827752 (bvsge (x!132488 lt!644556) #b01111111111111111111111111111110))))

(declare-fun b!1475337 () Bool)

(assert (=> b!1475337 (= e!827751 (Intermediate!12128 false index!646 x!665))))

(declare-fun b!1475338 () Bool)

(assert (=> b!1475338 (and (bvsge (index!50905 lt!644556) #b00000000000000000000000000000000) (bvslt (index!50905 lt!644556) (size!48416 a!2862)))))

(declare-fun res!1002233 () Bool)

(assert (=> b!1475338 (= res!1002233 (= (select (arr!47865 a!2862) (index!50905 lt!644556)) (select (arr!47865 a!2862) j!93)))))

(assert (=> b!1475338 (=> res!1002233 e!827754)))

(assert (=> b!1475338 (= e!827755 e!827754)))

(assert (= (and d!155717 c!136070) b!1475331))

(assert (= (and d!155717 (not c!136070)) b!1475335))

(assert (= (and b!1475335 c!136069) b!1475337))

(assert (= (and b!1475335 (not c!136069)) b!1475333))

(assert (= (and d!155717 c!136068) b!1475336))

(assert (= (and d!155717 (not c!136068)) b!1475332))

(assert (= (and b!1475332 res!1002235) b!1475338))

(assert (= (and b!1475338 (not res!1002233)) b!1475334))

(assert (= (and b!1475334 (not res!1002234)) b!1475330))

(assert (=> d!155717 m!1361593))

(assert (=> d!155717 m!1361601))

(declare-fun m!1361663 () Bool)

(assert (=> b!1475338 m!1361663))

(assert (=> b!1475334 m!1361663))

(assert (=> b!1475330 m!1361663))

(declare-fun m!1361665 () Bool)

(assert (=> b!1475333 m!1361665))

(assert (=> b!1475333 m!1361665))

(assert (=> b!1475333 m!1361583))

(declare-fun m!1361667 () Bool)

(assert (=> b!1475333 m!1361667))

(assert (=> b!1475245 d!155717))

(declare-fun b!1475339 () Bool)

(declare-fun lt!644558 () SeekEntryResult!12128)

(assert (=> b!1475339 (and (bvsge (index!50905 lt!644558) #b00000000000000000000000000000000) (bvslt (index!50905 lt!644558) (size!48416 lt!644518)))))

(declare-fun e!827759 () Bool)

(assert (=> b!1475339 (= e!827759 (= (select (arr!47865 lt!644518) (index!50905 lt!644558)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1475340 () Bool)

(declare-fun e!827758 () SeekEntryResult!12128)

(assert (=> b!1475340 (= e!827758 (Intermediate!12128 true (toIndex!0 lt!644515 mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1475341 () Bool)

(declare-fun e!827757 () Bool)

(declare-fun e!827760 () Bool)

(assert (=> b!1475341 (= e!827757 e!827760)))

(declare-fun res!1002238 () Bool)

(assert (=> b!1475341 (= res!1002238 (and (is-Intermediate!12128 lt!644558) (not (undefined!12940 lt!644558)) (bvslt (x!132488 lt!644558) #b01111111111111111111111111111110) (bvsge (x!132488 lt!644558) #b00000000000000000000000000000000) (bvsge (x!132488 lt!644558) #b00000000000000000000000000000000)))))

(assert (=> b!1475341 (=> (not res!1002238) (not e!827760))))

(declare-fun b!1475342 () Bool)

(declare-fun e!827756 () SeekEntryResult!12128)

(assert (=> b!1475342 (= e!827756 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!644515 mask!2687) #b00000000000000000000000000000000 mask!2687) lt!644515 lt!644518 mask!2687))))

(declare-fun b!1475343 () Bool)

(assert (=> b!1475343 (and (bvsge (index!50905 lt!644558) #b00000000000000000000000000000000) (bvslt (index!50905 lt!644558) (size!48416 lt!644518)))))

(declare-fun res!1002237 () Bool)

(assert (=> b!1475343 (= res!1002237 (= (select (arr!47865 lt!644518) (index!50905 lt!644558)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1475343 (=> res!1002237 e!827759)))

(declare-fun b!1475344 () Bool)

(assert (=> b!1475344 (= e!827758 e!827756)))

(declare-fun c!136072 () Bool)

(declare-fun lt!644557 () (_ BitVec 64))

(assert (=> b!1475344 (= c!136072 (or (= lt!644557 lt!644515) (= (bvadd lt!644557 lt!644557) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!155725 () Bool)

(assert (=> d!155725 e!827757))

(declare-fun c!136071 () Bool)

(assert (=> d!155725 (= c!136071 (and (is-Intermediate!12128 lt!644558) (undefined!12940 lt!644558)))))

(assert (=> d!155725 (= lt!644558 e!827758)))

(declare-fun c!136073 () Bool)

(assert (=> d!155725 (= c!136073 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!155725 (= lt!644557 (select (arr!47865 lt!644518) (toIndex!0 lt!644515 mask!2687)))))

(assert (=> d!155725 (validMask!0 mask!2687)))

(assert (=> d!155725 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!644515 mask!2687) lt!644515 lt!644518 mask!2687) lt!644558)))

(declare-fun b!1475345 () Bool)

(assert (=> b!1475345 (= e!827757 (bvsge (x!132488 lt!644558) #b01111111111111111111111111111110))))

(declare-fun b!1475346 () Bool)

(assert (=> b!1475346 (= e!827756 (Intermediate!12128 false (toIndex!0 lt!644515 mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1475347 () Bool)

(assert (=> b!1475347 (and (bvsge (index!50905 lt!644558) #b00000000000000000000000000000000) (bvslt (index!50905 lt!644558) (size!48416 lt!644518)))))

(declare-fun res!1002236 () Bool)

(assert (=> b!1475347 (= res!1002236 (= (select (arr!47865 lt!644518) (index!50905 lt!644558)) lt!644515))))

(assert (=> b!1475347 (=> res!1002236 e!827759)))

(assert (=> b!1475347 (= e!827760 e!827759)))

(assert (= (and d!155725 c!136073) b!1475340))

(assert (= (and d!155725 (not c!136073)) b!1475344))

(assert (= (and b!1475344 c!136072) b!1475346))

(assert (= (and b!1475344 (not c!136072)) b!1475342))

(assert (= (and d!155725 c!136071) b!1475345))

(assert (= (and d!155725 (not c!136071)) b!1475341))

(assert (= (and b!1475341 res!1002238) b!1475347))

(assert (= (and b!1475347 (not res!1002236)) b!1475343))

(assert (= (and b!1475343 (not res!1002237)) b!1475339))

(assert (=> d!155725 m!1361619))

(declare-fun m!1361669 () Bool)

(assert (=> d!155725 m!1361669))

(assert (=> d!155725 m!1361601))

(declare-fun m!1361671 () Bool)

(assert (=> b!1475347 m!1361671))

(assert (=> b!1475343 m!1361671))

(assert (=> b!1475339 m!1361671))

(assert (=> b!1475342 m!1361619))

(declare-fun m!1361673 () Bool)

(assert (=> b!1475342 m!1361673))

(assert (=> b!1475342 m!1361673))

(declare-fun m!1361675 () Bool)

(assert (=> b!1475342 m!1361675))

(assert (=> b!1475234 d!155725))

(declare-fun d!155727 () Bool)

(declare-fun lt!644567 () (_ BitVec 32))

(declare-fun lt!644566 () (_ BitVec 32))

(assert (=> d!155727 (= lt!644567 (bvmul (bvxor lt!644566 (bvlshr lt!644566 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!155727 (= lt!644566 ((_ extract 31 0) (bvand (bvxor lt!644515 (bvlshr lt!644515 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!155727 (and (bvsge mask!2687 #b00000000000000000000000000000000) (let ((res!1002239 (let ((h!35906 ((_ extract 31 0) (bvand (bvxor lt!644515 (bvlshr lt!644515 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!132492 (bvmul (bvxor h!35906 (bvlshr h!35906 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!132492 (bvlshr x!132492 #b00000000000000000000000000001101)) mask!2687))))) (and (bvslt res!1002239 (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge res!1002239 #b00000000000000000000000000000000))))))

(assert (=> d!155727 (= (toIndex!0 lt!644515 mask!2687) (bvand (bvxor lt!644567 (bvlshr lt!644567 #b00000000000000000000000000001101)) mask!2687))))

(assert (=> b!1475234 d!155727))

(declare-fun b!1475348 () Bool)

(declare-fun lt!644569 () SeekEntryResult!12128)

(assert (=> b!1475348 (and (bvsge (index!50905 lt!644569) #b00000000000000000000000000000000) (bvslt (index!50905 lt!644569) (size!48416 a!2862)))))

(declare-fun e!827764 () Bool)

(assert (=> b!1475348 (= e!827764 (= (select (arr!47865 a!2862) (index!50905 lt!644569)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!827763 () SeekEntryResult!12128)

(declare-fun b!1475349 () Bool)

(assert (=> b!1475349 (= e!827763 (Intermediate!12128 true (toIndex!0 (select (arr!47865 a!2862) j!93) mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1475350 () Bool)

(declare-fun e!827762 () Bool)

(declare-fun e!827765 () Bool)

(assert (=> b!1475350 (= e!827762 e!827765)))

(declare-fun res!1002242 () Bool)

(assert (=> b!1475350 (= res!1002242 (and (is-Intermediate!12128 lt!644569) (not (undefined!12940 lt!644569)) (bvslt (x!132488 lt!644569) #b01111111111111111111111111111110) (bvsge (x!132488 lt!644569) #b00000000000000000000000000000000) (bvsge (x!132488 lt!644569) #b00000000000000000000000000000000)))))

(assert (=> b!1475350 (=> (not res!1002242) (not e!827765))))

(declare-fun b!1475351 () Bool)

(declare-fun e!827761 () SeekEntryResult!12128)

(assert (=> b!1475351 (= e!827761 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!47865 a!2862) j!93) mask!2687) #b00000000000000000000000000000000 mask!2687) (select (arr!47865 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1475352 () Bool)

(assert (=> b!1475352 (and (bvsge (index!50905 lt!644569) #b00000000000000000000000000000000) (bvslt (index!50905 lt!644569) (size!48416 a!2862)))))

(declare-fun res!1002241 () Bool)

(assert (=> b!1475352 (= res!1002241 (= (select (arr!47865 a!2862) (index!50905 lt!644569)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1475352 (=> res!1002241 e!827764)))

(declare-fun b!1475353 () Bool)

(assert (=> b!1475353 (= e!827763 e!827761)))

(declare-fun c!136075 () Bool)

(declare-fun lt!644568 () (_ BitVec 64))

(assert (=> b!1475353 (= c!136075 (or (= lt!644568 (select (arr!47865 a!2862) j!93)) (= (bvadd lt!644568 lt!644568) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!155731 () Bool)

(assert (=> d!155731 e!827762))

(declare-fun c!136074 () Bool)

(assert (=> d!155731 (= c!136074 (and (is-Intermediate!12128 lt!644569) (undefined!12940 lt!644569)))))

(assert (=> d!155731 (= lt!644569 e!827763)))

(declare-fun c!136076 () Bool)

(assert (=> d!155731 (= c!136076 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!155731 (= lt!644568 (select (arr!47865 a!2862) (toIndex!0 (select (arr!47865 a!2862) j!93) mask!2687)))))

(assert (=> d!155731 (validMask!0 mask!2687)))

(assert (=> d!155731 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47865 a!2862) j!93) mask!2687) (select (arr!47865 a!2862) j!93) a!2862 mask!2687) lt!644569)))

(declare-fun b!1475354 () Bool)

(assert (=> b!1475354 (= e!827762 (bvsge (x!132488 lt!644569) #b01111111111111111111111111111110))))

(declare-fun b!1475355 () Bool)

(assert (=> b!1475355 (= e!827761 (Intermediate!12128 false (toIndex!0 (select (arr!47865 a!2862) j!93) mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1475356 () Bool)

(assert (=> b!1475356 (and (bvsge (index!50905 lt!644569) #b00000000000000000000000000000000) (bvslt (index!50905 lt!644569) (size!48416 a!2862)))))

(declare-fun res!1002240 () Bool)

(assert (=> b!1475356 (= res!1002240 (= (select (arr!47865 a!2862) (index!50905 lt!644569)) (select (arr!47865 a!2862) j!93)))))

(assert (=> b!1475356 (=> res!1002240 e!827764)))

(assert (=> b!1475356 (= e!827765 e!827764)))

(assert (= (and d!155731 c!136076) b!1475349))

(assert (= (and d!155731 (not c!136076)) b!1475353))

(assert (= (and b!1475353 c!136075) b!1475355))

(assert (= (and b!1475353 (not c!136075)) b!1475351))

(assert (= (and d!155731 c!136074) b!1475354))

(assert (= (and d!155731 (not c!136074)) b!1475350))

(assert (= (and b!1475350 res!1002242) b!1475356))

(assert (= (and b!1475356 (not res!1002240)) b!1475352))

(assert (= (and b!1475352 (not res!1002241)) b!1475348))

(assert (=> d!155731 m!1361627))

(declare-fun m!1361679 () Bool)

(assert (=> d!155731 m!1361679))

(assert (=> d!155731 m!1361601))

(declare-fun m!1361681 () Bool)

(assert (=> b!1475356 m!1361681))

(assert (=> b!1475352 m!1361681))

(assert (=> b!1475348 m!1361681))

(assert (=> b!1475351 m!1361627))

(declare-fun m!1361683 () Bool)

(assert (=> b!1475351 m!1361683))

(assert (=> b!1475351 m!1361683))

(assert (=> b!1475351 m!1361583))

(declare-fun m!1361685 () Bool)

(assert (=> b!1475351 m!1361685))

(assert (=> b!1475243 d!155731))

(declare-fun d!155733 () Bool)

(declare-fun lt!644571 () (_ BitVec 32))

(declare-fun lt!644570 () (_ BitVec 32))

(assert (=> d!155733 (= lt!644571 (bvmul (bvxor lt!644570 (bvlshr lt!644570 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!155733 (= lt!644570 ((_ extract 31 0) (bvand (bvxor (select (arr!47865 a!2862) j!93) (bvlshr (select (arr!47865 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!155733 (and (bvsge mask!2687 #b00000000000000000000000000000000) (let ((res!1002239 (let ((h!35906 ((_ extract 31 0) (bvand (bvxor (select (arr!47865 a!2862) j!93) (bvlshr (select (arr!47865 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!132492 (bvmul (bvxor h!35906 (bvlshr h!35906 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!132492 (bvlshr x!132492 #b00000000000000000000000000001101)) mask!2687))))) (and (bvslt res!1002239 (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge res!1002239 #b00000000000000000000000000000000))))))

(assert (=> d!155733 (= (toIndex!0 (select (arr!47865 a!2862) j!93) mask!2687) (bvand (bvxor lt!644571 (bvlshr lt!644571 #b00000000000000000000000000001101)) mask!2687))))

(assert (=> b!1475243 d!155733))

(declare-fun d!155735 () Bool)

(assert (=> d!155735 (= (validMask!0 mask!2687) (and (or (= mask!2687 #b00000000000000000000000000000111) (= mask!2687 #b00000000000000000000000000001111) (= mask!2687 #b00000000000000000000000000011111) (= mask!2687 #b00000000000000000000000000111111) (= mask!2687 #b00000000000000000000000001111111) (= mask!2687 #b00000000000000000000000011111111) (= mask!2687 #b00000000000000000000000111111111) (= mask!2687 #b00000000000000000000001111111111) (= mask!2687 #b00000000000000000000011111111111) (= mask!2687 #b00000000000000000000111111111111) (= mask!2687 #b00000000000000000001111111111111) (= mask!2687 #b00000000000000000011111111111111) (= mask!2687 #b00000000000000000111111111111111) (= mask!2687 #b00000000000000001111111111111111) (= mask!2687 #b00000000000000011111111111111111) (= mask!2687 #b00000000000000111111111111111111) (= mask!2687 #b00000000000001111111111111111111) (= mask!2687 #b00000000000011111111111111111111) (= mask!2687 #b00000000000111111111111111111111) (= mask!2687 #b00000000001111111111111111111111) (= mask!2687 #b00000000011111111111111111111111) (= mask!2687 #b00000000111111111111111111111111) (= mask!2687 #b00000001111111111111111111111111) (= mask!2687 #b00000011111111111111111111111111) (= mask!2687 #b00000111111111111111111111111111) (= mask!2687 #b00001111111111111111111111111111) (= mask!2687 #b00011111111111111111111111111111) (= mask!2687 #b00111111111111111111111111111111)) (bvsle mask!2687 #b00111111111111111111111111111111)))))

(assert (=> start!126038 d!155735))

(declare-fun d!155739 () Bool)

(assert (=> d!155739 (= (array_inv!36810 a!2862) (bvsge (size!48416 a!2862) #b00000000000000000000000000000000))))

(assert (=> start!126038 d!155739))

(declare-fun b!1475430 () Bool)

(declare-fun e!827812 () Bool)

(declare-fun e!827813 () Bool)

(assert (=> b!1475430 (= e!827812 e!827813)))

(declare-fun res!1002272 () Bool)

(assert (=> b!1475430 (=> (not res!1002272) (not e!827813))))

(declare-fun e!827815 () Bool)

(assert (=> b!1475430 (= res!1002272 (not e!827815))))

(declare-fun res!1002273 () Bool)

(assert (=> b!1475430 (=> (not res!1002273) (not e!827815))))

(assert (=> b!1475430 (= res!1002273 (validKeyInArray!0 (select (arr!47865 a!2862) #b00000000000000000000000000000000)))))

(declare-fun d!155741 () Bool)

(declare-fun res!1002271 () Bool)

(assert (=> d!155741 (=> res!1002271 e!827812)))

(assert (=> d!155741 (= res!1002271 (bvsge #b00000000000000000000000000000000 (size!48416 a!2862)))))

(assert (=> d!155741 (= (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34543) e!827812)))

(declare-fun bm!67785 () Bool)

(declare-fun call!67788 () Bool)

(declare-fun c!136100 () Bool)

(assert (=> bm!67785 (= call!67788 (arrayNoDuplicates!0 a!2862 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!136100 (Cons!34542 (select (arr!47865 a!2862) #b00000000000000000000000000000000) Nil!34543) Nil!34543)))))

(declare-fun b!1475431 () Bool)

(declare-fun contains!9919 (List!34546 (_ BitVec 64)) Bool)

(assert (=> b!1475431 (= e!827815 (contains!9919 Nil!34543 (select (arr!47865 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1475432 () Bool)

(declare-fun e!827814 () Bool)

(assert (=> b!1475432 (= e!827813 e!827814)))

(assert (=> b!1475432 (= c!136100 (validKeyInArray!0 (select (arr!47865 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1475433 () Bool)

(assert (=> b!1475433 (= e!827814 call!67788)))

(declare-fun b!1475434 () Bool)

(assert (=> b!1475434 (= e!827814 call!67788)))

(assert (= (and d!155741 (not res!1002271)) b!1475430))

(assert (= (and b!1475430 res!1002273) b!1475431))

(assert (= (and b!1475430 res!1002272) b!1475432))

(assert (= (and b!1475432 c!136100) b!1475433))

(assert (= (and b!1475432 (not c!136100)) b!1475434))

(assert (= (or b!1475433 b!1475434) bm!67785))

(declare-fun m!1361709 () Bool)

(assert (=> b!1475430 m!1361709))

(assert (=> b!1475430 m!1361709))

(declare-fun m!1361711 () Bool)

(assert (=> b!1475430 m!1361711))

(assert (=> bm!67785 m!1361709))

(declare-fun m!1361713 () Bool)

(assert (=> bm!67785 m!1361713))

(assert (=> b!1475431 m!1361709))

(assert (=> b!1475431 m!1361709))

(declare-fun m!1361715 () Bool)

(assert (=> b!1475431 m!1361715))

(assert (=> b!1475432 m!1361709))

(assert (=> b!1475432 m!1361709))

(assert (=> b!1475432 m!1361711))

(assert (=> b!1475233 d!155741))

(declare-fun b!1475482 () Bool)

(declare-fun e!827846 () Bool)

(declare-fun call!67794 () Bool)

(assert (=> b!1475482 (= e!827846 call!67794)))

(declare-fun d!155749 () Bool)

(declare-fun res!1002288 () Bool)

(declare-fun e!827847 () Bool)

(assert (=> d!155749 (=> res!1002288 e!827847)))

(assert (=> d!155749 (= res!1002288 (bvsge #b00000000000000000000000000000000 (size!48416 a!2862)))))

(assert (=> d!155749 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687) e!827847)))

(declare-fun b!1475483 () Bool)

(assert (=> b!1475483 (= e!827847 e!827846)))

(declare-fun c!136118 () Bool)

(assert (=> b!1475483 (= c!136118 (validKeyInArray!0 (select (arr!47865 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1475484 () Bool)

(declare-fun e!827845 () Bool)

(assert (=> b!1475484 (= e!827845 call!67794)))

(declare-fun bm!67791 () Bool)

(assert (=> bm!67791 (= call!67794 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2862 mask!2687))))

(declare-fun b!1475485 () Bool)

(assert (=> b!1475485 (= e!827846 e!827845)))

(declare-fun lt!644614 () (_ BitVec 64))

(assert (=> b!1475485 (= lt!644614 (select (arr!47865 a!2862) #b00000000000000000000000000000000))))

(declare-fun lt!644616 () Unit!49544)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!99175 (_ BitVec 64) (_ BitVec 32)) Unit!49544)

(assert (=> b!1475485 (= lt!644616 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2862 lt!644614 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!99175 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1475485 (arrayContainsKey!0 a!2862 lt!644614 #b00000000000000000000000000000000)))

(declare-fun lt!644615 () Unit!49544)

(assert (=> b!1475485 (= lt!644615 lt!644616)))

(declare-fun res!1002287 () Bool)

(assert (=> b!1475485 (= res!1002287 (= (seekEntryOrOpen!0 (select (arr!47865 a!2862) #b00000000000000000000000000000000) a!2862 mask!2687) (Found!12128 #b00000000000000000000000000000000)))))

(assert (=> b!1475485 (=> (not res!1002287) (not e!827845))))

(assert (= (and d!155749 (not res!1002288)) b!1475483))

(assert (= (and b!1475483 c!136118) b!1475485))

(assert (= (and b!1475483 (not c!136118)) b!1475482))

(assert (= (and b!1475485 res!1002287) b!1475484))

(assert (= (or b!1475484 b!1475482) bm!67791))

(assert (=> b!1475483 m!1361709))

(assert (=> b!1475483 m!1361709))

(assert (=> b!1475483 m!1361711))

(declare-fun m!1361751 () Bool)

(assert (=> bm!67791 m!1361751))

(assert (=> b!1475485 m!1361709))

(declare-fun m!1361753 () Bool)

(assert (=> b!1475485 m!1361753))

(declare-fun m!1361757 () Bool)

(assert (=> b!1475485 m!1361757))

(assert (=> b!1475485 m!1361709))

(declare-fun m!1361761 () Bool)

(assert (=> b!1475485 m!1361761))

(assert (=> b!1475231 d!155749))

(declare-fun d!155767 () Bool)

(assert (=> d!155767 (= (validKeyInArray!0 (select (arr!47865 a!2862) i!1006)) (and (not (= (select (arr!47865 a!2862) i!1006) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47865 a!2862) i!1006) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1475242 d!155767))

(declare-fun b!1475530 () Bool)

(declare-fun c!136136 () Bool)

(declare-fun lt!644631 () (_ BitVec 64))

(assert (=> b!1475530 (= c!136136 (= lt!644631 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!827876 () SeekEntryResult!12128)

(declare-fun e!827877 () SeekEntryResult!12128)

(assert (=> b!1475530 (= e!827876 e!827877)))

(declare-fun lt!644630 () SeekEntryResult!12128)

(declare-fun d!155769 () Bool)

(assert (=> d!155769 (and (or (is-Undefined!12128 lt!644630) (not (is-Found!12128 lt!644630)) (and (bvsge (index!50904 lt!644630) #b00000000000000000000000000000000) (bvslt (index!50904 lt!644630) (size!48416 lt!644518)))) (or (is-Undefined!12128 lt!644630) (is-Found!12128 lt!644630) (not (is-MissingVacant!12128 lt!644630)) (not (= (index!50906 lt!644630) intermediateAfterIndex!19)) (and (bvsge (index!50906 lt!644630) #b00000000000000000000000000000000) (bvslt (index!50906 lt!644630) (size!48416 lt!644518)))) (or (is-Undefined!12128 lt!644630) (ite (is-Found!12128 lt!644630) (= (select (arr!47865 lt!644518) (index!50904 lt!644630)) lt!644515) (and (is-MissingVacant!12128 lt!644630) (= (index!50906 lt!644630) intermediateAfterIndex!19) (= (select (arr!47865 lt!644518) (index!50906 lt!644630)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!827875 () SeekEntryResult!12128)

(assert (=> d!155769 (= lt!644630 e!827875)))

(declare-fun c!136134 () Bool)

(assert (=> d!155769 (= c!136134 (bvsge x!665 #b01111111111111111111111111111110))))

(assert (=> d!155769 (= lt!644631 (select (arr!47865 lt!644518) index!646))))

(assert (=> d!155769 (validMask!0 mask!2687)))

(assert (=> d!155769 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!644515 lt!644518 mask!2687) lt!644630)))

(declare-fun b!1475531 () Bool)

(assert (=> b!1475531 (= e!827875 Undefined!12128)))

(declare-fun b!1475532 () Bool)

(assert (=> b!1475532 (= e!827875 e!827876)))

(declare-fun c!136135 () Bool)

(assert (=> b!1475532 (= c!136135 (= lt!644631 lt!644515))))

(declare-fun b!1475533 () Bool)

(assert (=> b!1475533 (= e!827876 (Found!12128 index!646))))

(declare-fun b!1475534 () Bool)

(assert (=> b!1475534 (= e!827877 (seekKeyOrZeroReturnVacant!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) intermediateAfterIndex!19 lt!644515 lt!644518 mask!2687))))

(declare-fun b!1475535 () Bool)

(assert (=> b!1475535 (= e!827877 (MissingVacant!12128 intermediateAfterIndex!19))))

(assert (= (and d!155769 c!136134) b!1475531))

(assert (= (and d!155769 (not c!136134)) b!1475532))

(assert (= (and b!1475532 c!136135) b!1475533))

(assert (= (and b!1475532 (not c!136135)) b!1475530))

(assert (= (and b!1475530 c!136136) b!1475535))

(assert (= (and b!1475530 (not c!136136)) b!1475534))

(declare-fun m!1361785 () Bool)

(assert (=> d!155769 m!1361785))

(declare-fun m!1361787 () Bool)

(assert (=> d!155769 m!1361787))

(declare-fun m!1361789 () Bool)

(assert (=> d!155769 m!1361789))

(assert (=> d!155769 m!1361601))

(assert (=> b!1475534 m!1361665))

(assert (=> b!1475534 m!1361665))

(declare-fun m!1361791 () Bool)

(assert (=> b!1475534 m!1361791))

(assert (=> b!1475239 d!155769))

(declare-fun lt!644644 () SeekEntryResult!12128)

(declare-fun b!1475565 () Bool)

(declare-fun e!827895 () SeekEntryResult!12128)

(assert (=> b!1475565 (= e!827895 (seekKeyOrZeroReturnVacant!0 (x!132488 lt!644644) (index!50905 lt!644644) (index!50905 lt!644644) lt!644515 lt!644518 mask!2687))))

(declare-fun b!1475566 () Bool)

(declare-fun c!136152 () Bool)

(declare-fun lt!644645 () (_ BitVec 64))

(assert (=> b!1475566 (= c!136152 (= lt!644645 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!827896 () SeekEntryResult!12128)

(assert (=> b!1475566 (= e!827896 e!827895)))

(declare-fun b!1475567 () Bool)

(declare-fun e!827894 () SeekEntryResult!12128)

(assert (=> b!1475567 (= e!827894 e!827896)))

(assert (=> b!1475567 (= lt!644645 (select (arr!47865 lt!644518) (index!50905 lt!644644)))))

(declare-fun c!136151 () Bool)

(assert (=> b!1475567 (= c!136151 (= lt!644645 lt!644515))))

(declare-fun b!1475568 () Bool)

(assert (=> b!1475568 (= e!827896 (Found!12128 (index!50905 lt!644644)))))

(declare-fun d!155785 () Bool)

(declare-fun lt!644646 () SeekEntryResult!12128)

(assert (=> d!155785 (and (or (is-Undefined!12128 lt!644646) (not (is-Found!12128 lt!644646)) (and (bvsge (index!50904 lt!644646) #b00000000000000000000000000000000) (bvslt (index!50904 lt!644646) (size!48416 lt!644518)))) (or (is-Undefined!12128 lt!644646) (is-Found!12128 lt!644646) (not (is-MissingZero!12128 lt!644646)) (and (bvsge (index!50903 lt!644646) #b00000000000000000000000000000000) (bvslt (index!50903 lt!644646) (size!48416 lt!644518)))) (or (is-Undefined!12128 lt!644646) (is-Found!12128 lt!644646) (is-MissingZero!12128 lt!644646) (not (is-MissingVacant!12128 lt!644646)) (and (bvsge (index!50906 lt!644646) #b00000000000000000000000000000000) (bvslt (index!50906 lt!644646) (size!48416 lt!644518)))) (or (is-Undefined!12128 lt!644646) (ite (is-Found!12128 lt!644646) (= (select (arr!47865 lt!644518) (index!50904 lt!644646)) lt!644515) (ite (is-MissingZero!12128 lt!644646) (= (select (arr!47865 lt!644518) (index!50903 lt!644646)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!12128 lt!644646) (= (select (arr!47865 lt!644518) (index!50906 lt!644646)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!155785 (= lt!644646 e!827894)))

(declare-fun c!136150 () Bool)

(assert (=> d!155785 (= c!136150 (and (is-Intermediate!12128 lt!644644) (undefined!12940 lt!644644)))))

(assert (=> d!155785 (= lt!644644 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!644515 mask!2687) lt!644515 lt!644518 mask!2687))))

(assert (=> d!155785 (validMask!0 mask!2687)))

(assert (=> d!155785 (= (seekEntryOrOpen!0 lt!644515 lt!644518 mask!2687) lt!644646)))

(declare-fun b!1475569 () Bool)

(assert (=> b!1475569 (= e!827894 Undefined!12128)))

(declare-fun b!1475570 () Bool)

(assert (=> b!1475570 (= e!827895 (MissingZero!12128 (index!50905 lt!644644)))))

(assert (= (and d!155785 c!136150) b!1475569))

(assert (= (and d!155785 (not c!136150)) b!1475567))

(assert (= (and b!1475567 c!136151) b!1475568))

(assert (= (and b!1475567 (not c!136151)) b!1475566))

(assert (= (and b!1475566 c!136152) b!1475570))

(assert (= (and b!1475566 (not c!136152)) b!1475565))

(declare-fun m!1361797 () Bool)

(assert (=> b!1475565 m!1361797))

(declare-fun m!1361799 () Bool)

(assert (=> b!1475567 m!1361799))

(declare-fun m!1361801 () Bool)

(assert (=> d!155785 m!1361801))

(assert (=> d!155785 m!1361619))

(declare-fun m!1361803 () Bool)

(assert (=> d!155785 m!1361803))

(declare-fun m!1361805 () Bool)

(assert (=> d!155785 m!1361805))

(assert (=> d!155785 m!1361601))

(assert (=> d!155785 m!1361619))

(assert (=> d!155785 m!1361621))

(assert (=> b!1475239 d!155785))

(declare-fun b!1475571 () Bool)

(declare-fun c!136155 () Bool)

(declare-fun lt!644648 () (_ BitVec 64))

(assert (=> b!1475571 (= c!136155 (= lt!644648 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!827898 () SeekEntryResult!12128)

(declare-fun e!827899 () SeekEntryResult!12128)

(assert (=> b!1475571 (= e!827898 e!827899)))

(declare-fun d!155789 () Bool)

(declare-fun lt!644647 () SeekEntryResult!12128)

(assert (=> d!155789 (and (or (is-Undefined!12128 lt!644647) (not (is-Found!12128 lt!644647)) (and (bvsge (index!50904 lt!644647) #b00000000000000000000000000000000) (bvslt (index!50904 lt!644647) (size!48416 a!2862)))) (or (is-Undefined!12128 lt!644647) (is-Found!12128 lt!644647) (not (is-MissingVacant!12128 lt!644647)) (not (= (index!50906 lt!644647) index!646)) (and (bvsge (index!50906 lt!644647) #b00000000000000000000000000000000) (bvslt (index!50906 lt!644647) (size!48416 a!2862)))) (or (is-Undefined!12128 lt!644647) (ite (is-Found!12128 lt!644647) (= (select (arr!47865 a!2862) (index!50904 lt!644647)) (select (arr!47865 a!2862) j!93)) (and (is-MissingVacant!12128 lt!644647) (= (index!50906 lt!644647) index!646) (= (select (arr!47865 a!2862) (index!50906 lt!644647)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!827897 () SeekEntryResult!12128)

(assert (=> d!155789 (= lt!644647 e!827897)))

(declare-fun c!136153 () Bool)

(assert (=> d!155789 (= c!136153 (bvsge x!665 #b01111111111111111111111111111110))))

(assert (=> d!155789 (= lt!644648 (select (arr!47865 a!2862) index!646))))

(assert (=> d!155789 (validMask!0 mask!2687)))

(assert (=> d!155789 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47865 a!2862) j!93) a!2862 mask!2687) lt!644647)))

(declare-fun b!1475572 () Bool)

(assert (=> b!1475572 (= e!827897 Undefined!12128)))

(declare-fun b!1475573 () Bool)

(assert (=> b!1475573 (= e!827897 e!827898)))

(declare-fun c!136154 () Bool)

(assert (=> b!1475573 (= c!136154 (= lt!644648 (select (arr!47865 a!2862) j!93)))))

(declare-fun b!1475574 () Bool)

(assert (=> b!1475574 (= e!827898 (Found!12128 index!646))))

(declare-fun b!1475575 () Bool)

(assert (=> b!1475575 (= e!827899 (seekKeyOrZeroReturnVacant!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) index!646 (select (arr!47865 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1475576 () Bool)

(assert (=> b!1475576 (= e!827899 (MissingVacant!12128 index!646))))

(assert (= (and d!155789 c!136153) b!1475572))

(assert (= (and d!155789 (not c!136153)) b!1475573))

(assert (= (and b!1475573 c!136154) b!1475574))

(assert (= (and b!1475573 (not c!136154)) b!1475571))

(assert (= (and b!1475571 c!136155) b!1475576))

(assert (= (and b!1475571 (not c!136155)) b!1475575))

(declare-fun m!1361807 () Bool)

(assert (=> d!155789 m!1361807))

(declare-fun m!1361809 () Bool)

(assert (=> d!155789 m!1361809))

(assert (=> d!155789 m!1361593))

(assert (=> d!155789 m!1361601))

(assert (=> b!1475575 m!1361665))

(assert (=> b!1475575 m!1361665))

(assert (=> b!1475575 m!1361583))

(declare-fun m!1361811 () Bool)

(assert (=> b!1475575 m!1361811))

(assert (=> b!1475238 d!155789))

(declare-fun b!1475577 () Bool)

(declare-fun lt!644650 () SeekEntryResult!12128)

(assert (=> b!1475577 (and (bvsge (index!50905 lt!644650) #b00000000000000000000000000000000) (bvslt (index!50905 lt!644650) (size!48416 lt!644518)))))

(declare-fun e!827903 () Bool)

(assert (=> b!1475577 (= e!827903 (= (select (arr!47865 lt!644518) (index!50905 lt!644650)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1475578 () Bool)

(declare-fun e!827902 () SeekEntryResult!12128)

(assert (=> b!1475578 (= e!827902 (Intermediate!12128 true index!646 x!665))))

(declare-fun b!1475579 () Bool)

(declare-fun e!827901 () Bool)

(declare-fun e!827904 () Bool)

(assert (=> b!1475579 (= e!827901 e!827904)))

(declare-fun res!1002308 () Bool)

(assert (=> b!1475579 (= res!1002308 (and (is-Intermediate!12128 lt!644650) (not (undefined!12940 lt!644650)) (bvslt (x!132488 lt!644650) #b01111111111111111111111111111110) (bvsge (x!132488 lt!644650) #b00000000000000000000000000000000) (bvsge (x!132488 lt!644650) x!665)))))

(assert (=> b!1475579 (=> (not res!1002308) (not e!827904))))

(declare-fun e!827900 () SeekEntryResult!12128)

(declare-fun b!1475580 () Bool)

(assert (=> b!1475580 (= e!827900 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) lt!644515 lt!644518 mask!2687))))

(declare-fun b!1475581 () Bool)

(assert (=> b!1475581 (and (bvsge (index!50905 lt!644650) #b00000000000000000000000000000000) (bvslt (index!50905 lt!644650) (size!48416 lt!644518)))))

(declare-fun res!1002307 () Bool)

(assert (=> b!1475581 (= res!1002307 (= (select (arr!47865 lt!644518) (index!50905 lt!644650)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1475581 (=> res!1002307 e!827903)))

(declare-fun b!1475582 () Bool)

(assert (=> b!1475582 (= e!827902 e!827900)))

(declare-fun c!136157 () Bool)

(declare-fun lt!644649 () (_ BitVec 64))

(assert (=> b!1475582 (= c!136157 (or (= lt!644649 lt!644515) (= (bvadd lt!644649 lt!644649) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!155791 () Bool)

(assert (=> d!155791 e!827901))

(declare-fun c!136156 () Bool)

(assert (=> d!155791 (= c!136156 (and (is-Intermediate!12128 lt!644650) (undefined!12940 lt!644650)))))

(assert (=> d!155791 (= lt!644650 e!827902)))

(declare-fun c!136158 () Bool)

(assert (=> d!155791 (= c!136158 (bvsge x!665 #b01111111111111111111111111111110))))

(assert (=> d!155791 (= lt!644649 (select (arr!47865 lt!644518) index!646))))

(assert (=> d!155791 (validMask!0 mask!2687)))

(assert (=> d!155791 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!644515 lt!644518 mask!2687) lt!644650)))

(declare-fun b!1475583 () Bool)

(assert (=> b!1475583 (= e!827901 (bvsge (x!132488 lt!644650) #b01111111111111111111111111111110))))

(declare-fun b!1475584 () Bool)

(assert (=> b!1475584 (= e!827900 (Intermediate!12128 false index!646 x!665))))

(declare-fun b!1475585 () Bool)

(assert (=> b!1475585 (and (bvsge (index!50905 lt!644650) #b00000000000000000000000000000000) (bvslt (index!50905 lt!644650) (size!48416 lt!644518)))))

(declare-fun res!1002306 () Bool)

(assert (=> b!1475585 (= res!1002306 (= (select (arr!47865 lt!644518) (index!50905 lt!644650)) lt!644515))))

(assert (=> b!1475585 (=> res!1002306 e!827903)))

(assert (=> b!1475585 (= e!827904 e!827903)))

(assert (= (and d!155791 c!136158) b!1475578))

(assert (= (and d!155791 (not c!136158)) b!1475582))

(assert (= (and b!1475582 c!136157) b!1475584))

(assert (= (and b!1475582 (not c!136157)) b!1475580))

(assert (= (and d!155791 c!136156) b!1475583))

(assert (= (and d!155791 (not c!136156)) b!1475579))

(assert (= (and b!1475579 res!1002308) b!1475585))

(assert (= (and b!1475585 (not res!1002306)) b!1475581))

(assert (= (and b!1475581 (not res!1002307)) b!1475577))

(assert (=> d!155791 m!1361789))

(assert (=> d!155791 m!1361601))

(declare-fun m!1361813 () Bool)

(assert (=> b!1475585 m!1361813))

(assert (=> b!1475581 m!1361813))

(assert (=> b!1475577 m!1361813))

(assert (=> b!1475580 m!1361665))

(assert (=> b!1475580 m!1361665))

(declare-fun m!1361815 () Bool)

(assert (=> b!1475580 m!1361815))

(assert (=> b!1475237 d!155791))

(declare-fun b!1475592 () Bool)

(declare-fun e!827909 () SeekEntryResult!12128)

(declare-fun lt!644654 () SeekEntryResult!12128)

(assert (=> b!1475592 (= e!827909 (seekKeyOrZeroReturnVacant!0 (x!132488 lt!644654) (index!50905 lt!644654) (index!50905 lt!644654) (select (arr!47865 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1475593 () Bool)

(declare-fun c!136164 () Bool)

(declare-fun lt!644655 () (_ BitVec 64))

(assert (=> b!1475593 (= c!136164 (= lt!644655 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!827910 () SeekEntryResult!12128)

(assert (=> b!1475593 (= e!827910 e!827909)))

(declare-fun b!1475594 () Bool)

(declare-fun e!827908 () SeekEntryResult!12128)

(assert (=> b!1475594 (= e!827908 e!827910)))

(assert (=> b!1475594 (= lt!644655 (select (arr!47865 a!2862) (index!50905 lt!644654)))))

(declare-fun c!136163 () Bool)

(assert (=> b!1475594 (= c!136163 (= lt!644655 (select (arr!47865 a!2862) j!93)))))

(declare-fun b!1475595 () Bool)

(assert (=> b!1475595 (= e!827910 (Found!12128 (index!50905 lt!644654)))))

(declare-fun d!155793 () Bool)

(declare-fun lt!644656 () SeekEntryResult!12128)

(assert (=> d!155793 (and (or (is-Undefined!12128 lt!644656) (not (is-Found!12128 lt!644656)) (and (bvsge (index!50904 lt!644656) #b00000000000000000000000000000000) (bvslt (index!50904 lt!644656) (size!48416 a!2862)))) (or (is-Undefined!12128 lt!644656) (is-Found!12128 lt!644656) (not (is-MissingZero!12128 lt!644656)) (and (bvsge (index!50903 lt!644656) #b00000000000000000000000000000000) (bvslt (index!50903 lt!644656) (size!48416 a!2862)))) (or (is-Undefined!12128 lt!644656) (is-Found!12128 lt!644656) (is-MissingZero!12128 lt!644656) (not (is-MissingVacant!12128 lt!644656)) (and (bvsge (index!50906 lt!644656) #b00000000000000000000000000000000) (bvslt (index!50906 lt!644656) (size!48416 a!2862)))) (or (is-Undefined!12128 lt!644656) (ite (is-Found!12128 lt!644656) (= (select (arr!47865 a!2862) (index!50904 lt!644656)) (select (arr!47865 a!2862) j!93)) (ite (is-MissingZero!12128 lt!644656) (= (select (arr!47865 a!2862) (index!50903 lt!644656)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!12128 lt!644656) (= (select (arr!47865 a!2862) (index!50906 lt!644656)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!155793 (= lt!644656 e!827908)))

(declare-fun c!136162 () Bool)

(assert (=> d!155793 (= c!136162 (and (is-Intermediate!12128 lt!644654) (undefined!12940 lt!644654)))))

(assert (=> d!155793 (= lt!644654 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47865 a!2862) j!93) mask!2687) (select (arr!47865 a!2862) j!93) a!2862 mask!2687))))

(assert (=> d!155793 (validMask!0 mask!2687)))

(assert (=> d!155793 (= (seekEntryOrOpen!0 (select (arr!47865 a!2862) j!93) a!2862 mask!2687) lt!644656)))

(declare-fun b!1475596 () Bool)

(assert (=> b!1475596 (= e!827908 Undefined!12128)))

(declare-fun b!1475597 () Bool)

(assert (=> b!1475597 (= e!827909 (MissingZero!12128 (index!50905 lt!644654)))))

(assert (= (and d!155793 c!136162) b!1475596))

(assert (= (and d!155793 (not c!136162)) b!1475594))

(assert (= (and b!1475594 c!136163) b!1475595))

(assert (= (and b!1475594 (not c!136163)) b!1475593))

(assert (= (and b!1475593 c!136164) b!1475597))

(assert (= (and b!1475593 (not c!136164)) b!1475592))

(assert (=> b!1475592 m!1361583))

(declare-fun m!1361827 () Bool)

(assert (=> b!1475592 m!1361827))

(declare-fun m!1361829 () Bool)

(assert (=> b!1475594 m!1361829))

(declare-fun m!1361831 () Bool)

(assert (=> d!155793 m!1361831))

(assert (=> d!155793 m!1361583))

(assert (=> d!155793 m!1361627))

(declare-fun m!1361833 () Bool)

(assert (=> d!155793 m!1361833))

(declare-fun m!1361835 () Bool)

(assert (=> d!155793 m!1361835))

(assert (=> d!155793 m!1361601))

(assert (=> d!155793 m!1361627))

(assert (=> d!155793 m!1361583))

(assert (=> d!155793 m!1361629))

(assert (=> b!1475235 d!155793))

(declare-fun b!1475602 () Bool)

(declare-fun e!827915 () Bool)

(declare-fun call!67800 () Bool)

(assert (=> b!1475602 (= e!827915 call!67800)))

(declare-fun d!155797 () Bool)

(declare-fun res!1002312 () Bool)

(declare-fun e!827916 () Bool)

(assert (=> d!155797 (=> res!1002312 e!827916)))

(assert (=> d!155797 (= res!1002312 (bvsge j!93 (size!48416 a!2862)))))

(assert (=> d!155797 (= (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687) e!827916)))

(declare-fun b!1475603 () Bool)

(assert (=> b!1475603 (= e!827916 e!827915)))

(declare-fun c!136166 () Bool)

(assert (=> b!1475603 (= c!136166 (validKeyInArray!0 (select (arr!47865 a!2862) j!93)))))

(declare-fun b!1475604 () Bool)

(declare-fun e!827914 () Bool)

(assert (=> b!1475604 (= e!827914 call!67800)))

(declare-fun bm!67797 () Bool)

(assert (=> bm!67797 (= call!67800 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!93 #b00000000000000000000000000000001) a!2862 mask!2687))))

(declare-fun b!1475605 () Bool)

(assert (=> b!1475605 (= e!827915 e!827914)))

(declare-fun lt!644660 () (_ BitVec 64))

(assert (=> b!1475605 (= lt!644660 (select (arr!47865 a!2862) j!93))))

(declare-fun lt!644662 () Unit!49544)

(assert (=> b!1475605 (= lt!644662 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2862 lt!644660 j!93))))

(assert (=> b!1475605 (arrayContainsKey!0 a!2862 lt!644660 #b00000000000000000000000000000000)))

(declare-fun lt!644661 () Unit!49544)

(assert (=> b!1475605 (= lt!644661 lt!644662)))

(declare-fun res!1002311 () Bool)

(assert (=> b!1475605 (= res!1002311 (= (seekEntryOrOpen!0 (select (arr!47865 a!2862) j!93) a!2862 mask!2687) (Found!12128 j!93)))))

(assert (=> b!1475605 (=> (not res!1002311) (not e!827914))))

(assert (= (and d!155797 (not res!1002312)) b!1475603))

(assert (= (and b!1475603 c!136166) b!1475605))

(assert (= (and b!1475603 (not c!136166)) b!1475602))

(assert (= (and b!1475605 res!1002311) b!1475604))

(assert (= (or b!1475604 b!1475602) bm!67797))

(assert (=> b!1475603 m!1361583))

(assert (=> b!1475603 m!1361583))

(assert (=> b!1475603 m!1361591))

(declare-fun m!1361843 () Bool)

(assert (=> bm!67797 m!1361843))

(assert (=> b!1475605 m!1361583))

(declare-fun m!1361845 () Bool)

(assert (=> b!1475605 m!1361845))

(declare-fun m!1361847 () Bool)

(assert (=> b!1475605 m!1361847))

(assert (=> b!1475605 m!1361583))

(assert (=> b!1475605 m!1361609))

(assert (=> b!1475235 d!155797))

(declare-fun d!155801 () Bool)

(assert (=> d!155801 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-fun lt!644668 () Unit!49544)

(declare-fun choose!38 (array!99175 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49544)

(assert (=> d!155801 (= lt!644668 (choose!38 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(assert (=> d!155801 (validMask!0 mask!2687)))

(assert (=> d!155801 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93) lt!644668)))

(declare-fun bs!42571 () Bool)

(assert (= bs!42571 d!155801))

(assert (=> bs!42571 m!1361611))

(declare-fun m!1361851 () Bool)

(assert (=> bs!42571 m!1361851))

(assert (=> bs!42571 m!1361601))

(assert (=> b!1475235 d!155801))

(push 1)

(assert (not b!1475603))

(assert (not bm!67791))

(assert (not bm!67785))

