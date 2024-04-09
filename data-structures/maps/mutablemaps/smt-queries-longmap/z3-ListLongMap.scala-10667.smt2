; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125184 () Bool)

(assert start!125184)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun e!820277 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun b!1458244 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!98549 0))(
  ( (array!98550 (arr!47558 (Array (_ BitVec 32) (_ BitVec 64))) (size!48109 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98549)

(assert (=> b!1458244 (= e!820277 (and (or (= (select (arr!47558 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47558 a!2862) intermediateBeforeIndex!19) (select (arr!47558 a!2862) j!93))) (let ((bdg!53416 (select (store (arr!47558 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!47558 a!2862) index!646) bdg!53416) (= (select (arr!47558 a!2862) index!646) (select (arr!47558 a!2862) j!93))) (= (select (arr!47558 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!53416 #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!638945 () array!98549)

(declare-fun lt!638943 () (_ BitVec 64))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun b!1458245 () Bool)

(declare-fun e!820274 () Bool)

(declare-datatypes ((SeekEntryResult!11833 0))(
  ( (MissingZero!11833 (index!49723 (_ BitVec 32))) (Found!11833 (index!49724 (_ BitVec 32))) (Intermediate!11833 (undefined!12645 Bool) (index!49725 (_ BitVec 32)) (x!131341 (_ BitVec 32))) (Undefined!11833) (MissingVacant!11833 (index!49726 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98549 (_ BitVec 32)) SeekEntryResult!11833)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98549 (_ BitVec 32)) SeekEntryResult!11833)

(assert (=> b!1458245 (= e!820274 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!638943 lt!638945 mask!2687) (seekEntryOrOpen!0 lt!638943 lt!638945 mask!2687)))))

(declare-fun b!1458246 () Bool)

(declare-fun res!988501 () Bool)

(declare-fun e!820275 () Bool)

(assert (=> b!1458246 (=> (not res!988501) (not e!820275))))

(declare-fun lt!638947 () SeekEntryResult!11833)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98549 (_ BitVec 32)) SeekEntryResult!11833)

(assert (=> b!1458246 (= res!988501 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47558 a!2862) j!93) a!2862 mask!2687) lt!638947))))

(declare-fun res!988492 () Bool)

(declare-fun e!820279 () Bool)

(assert (=> start!125184 (=> (not res!988492) (not e!820279))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125184 (= res!988492 (validMask!0 mask!2687))))

(assert (=> start!125184 e!820279))

(assert (=> start!125184 true))

(declare-fun array_inv!36503 (array!98549) Bool)

(assert (=> start!125184 (array_inv!36503 a!2862)))

(declare-fun b!1458247 () Bool)

(declare-fun res!988494 () Bool)

(declare-fun e!820283 () Bool)

(assert (=> b!1458247 (=> res!988494 e!820283)))

(declare-fun lt!638940 () (_ BitVec 32))

(assert (=> b!1458247 (= res!988494 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638940 (select (arr!47558 a!2862) j!93) a!2862 mask!2687) lt!638947)))))

(declare-fun b!1458248 () Bool)

(declare-fun e!820280 () Bool)

(assert (=> b!1458248 (= e!820279 e!820280)))

(declare-fun res!988504 () Bool)

(assert (=> b!1458248 (=> (not res!988504) (not e!820280))))

(assert (=> b!1458248 (= res!988504 (= (select (store (arr!47558 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1458248 (= lt!638945 (array!98550 (store (arr!47558 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48109 a!2862)))))

(declare-fun b!1458249 () Bool)

(declare-fun res!988502 () Bool)

(assert (=> b!1458249 (=> (not res!988502) (not e!820279))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1458249 (= res!988502 (validKeyInArray!0 (select (arr!47558 a!2862) j!93)))))

(declare-fun b!1458250 () Bool)

(declare-fun e!820276 () Bool)

(assert (=> b!1458250 (= e!820275 e!820276)))

(declare-fun res!988498 () Bool)

(assert (=> b!1458250 (=> (not res!988498) (not e!820276))))

(declare-fun lt!638942 () SeekEntryResult!11833)

(assert (=> b!1458250 (= res!988498 (= lt!638942 (Intermediate!11833 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1458250 (= lt!638942 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!638943 mask!2687) lt!638943 lt!638945 mask!2687))))

(assert (=> b!1458250 (= lt!638943 (select (store (arr!47558 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1458251 () Bool)

(declare-fun res!988503 () Bool)

(assert (=> b!1458251 (=> (not res!988503) (not e!820276))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1458251 (= res!988503 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1458252 () Bool)

(assert (=> b!1458252 (= e!820274 (= lt!638942 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!638943 lt!638945 mask!2687)))))

(declare-fun b!1458253 () Bool)

(declare-fun e!820282 () Bool)

(assert (=> b!1458253 (= e!820276 (not e!820282))))

(declare-fun res!988499 () Bool)

(assert (=> b!1458253 (=> res!988499 e!820282)))

(assert (=> b!1458253 (= res!988499 (or (and (= (select (arr!47558 a!2862) index!646) (select (store (arr!47558 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47558 a!2862) index!646) (select (arr!47558 a!2862) j!93))) (= (select (arr!47558 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1458253 e!820277))

(declare-fun res!988507 () Bool)

(assert (=> b!1458253 (=> (not res!988507) (not e!820277))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98549 (_ BitVec 32)) Bool)

(assert (=> b!1458253 (= res!988507 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49110 0))(
  ( (Unit!49111) )
))
(declare-fun lt!638941 () Unit!49110)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98549 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49110)

(assert (=> b!1458253 (= lt!638941 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1458254 () Bool)

(declare-fun res!988497 () Bool)

(assert (=> b!1458254 (=> (not res!988497) (not e!820276))))

(assert (=> b!1458254 (= res!988497 e!820274)))

(declare-fun c!134389 () Bool)

(assert (=> b!1458254 (= c!134389 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1458255 () Bool)

(declare-fun res!988508 () Bool)

(assert (=> b!1458255 (=> (not res!988508) (not e!820279))))

(assert (=> b!1458255 (= res!988508 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48109 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48109 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48109 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun e!820281 () Bool)

(declare-fun b!1458256 () Bool)

(assert (=> b!1458256 (= e!820281 (not (= lt!638942 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638940 lt!638943 lt!638945 mask!2687))))))

(declare-fun b!1458257 () Bool)

(declare-fun res!988500 () Bool)

(assert (=> b!1458257 (=> (not res!988500) (not e!820279))))

(assert (=> b!1458257 (= res!988500 (validKeyInArray!0 (select (arr!47558 a!2862) i!1006)))))

(declare-fun b!1458258 () Bool)

(assert (=> b!1458258 (= e!820280 e!820275)))

(declare-fun res!988493 () Bool)

(assert (=> b!1458258 (=> (not res!988493) (not e!820275))))

(assert (=> b!1458258 (= res!988493 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47558 a!2862) j!93) mask!2687) (select (arr!47558 a!2862) j!93) a!2862 mask!2687) lt!638947))))

(assert (=> b!1458258 (= lt!638947 (Intermediate!11833 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1458259 () Bool)

(assert (=> b!1458259 (= e!820282 e!820283)))

(declare-fun res!988495 () Bool)

(assert (=> b!1458259 (=> res!988495 e!820283)))

(assert (=> b!1458259 (= res!988495 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!638940 #b00000000000000000000000000000000) (bvsge lt!638940 (size!48109 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1458259 (= lt!638940 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun lt!638944 () SeekEntryResult!11833)

(assert (=> b!1458259 (= lt!638944 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!638943 lt!638945 mask!2687))))

(assert (=> b!1458259 (= lt!638944 (seekEntryOrOpen!0 lt!638943 lt!638945 mask!2687))))

(declare-fun b!1458260 () Bool)

(assert (=> b!1458260 (= e!820283 true)))

(declare-fun lt!638946 () Bool)

(assert (=> b!1458260 (= lt!638946 e!820281)))

(declare-fun c!134390 () Bool)

(assert (=> b!1458260 (= c!134390 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1458261 () Bool)

(declare-fun res!988505 () Bool)

(assert (=> b!1458261 (=> (not res!988505) (not e!820279))))

(declare-datatypes ((List!34239 0))(
  ( (Nil!34236) (Cons!34235 (h!35585 (_ BitVec 64)) (t!48940 List!34239)) )
))
(declare-fun arrayNoDuplicates!0 (array!98549 (_ BitVec 32) List!34239) Bool)

(assert (=> b!1458261 (= res!988505 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34236))))

(declare-fun b!1458262 () Bool)

(declare-fun res!988496 () Bool)

(assert (=> b!1458262 (=> (not res!988496) (not e!820279))))

(assert (=> b!1458262 (= res!988496 (and (= (size!48109 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48109 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48109 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1458263 () Bool)

(declare-fun res!988506 () Bool)

(assert (=> b!1458263 (=> (not res!988506) (not e!820279))))

(assert (=> b!1458263 (= res!988506 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1458264 () Bool)

(declare-fun res!988509 () Bool)

(assert (=> b!1458264 (=> (not res!988509) (not e!820277))))

(assert (=> b!1458264 (= res!988509 (= (seekEntryOrOpen!0 (select (arr!47558 a!2862) j!93) a!2862 mask!2687) (Found!11833 j!93)))))

(declare-fun b!1458265 () Bool)

(assert (=> b!1458265 (= e!820281 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638940 intermediateAfterIndex!19 lt!638943 lt!638945 mask!2687) lt!638944)))))

(assert (= (and start!125184 res!988492) b!1458262))

(assert (= (and b!1458262 res!988496) b!1458257))

(assert (= (and b!1458257 res!988500) b!1458249))

(assert (= (and b!1458249 res!988502) b!1458263))

(assert (= (and b!1458263 res!988506) b!1458261))

(assert (= (and b!1458261 res!988505) b!1458255))

(assert (= (and b!1458255 res!988508) b!1458248))

(assert (= (and b!1458248 res!988504) b!1458258))

(assert (= (and b!1458258 res!988493) b!1458246))

(assert (= (and b!1458246 res!988501) b!1458250))

(assert (= (and b!1458250 res!988498) b!1458254))

(assert (= (and b!1458254 c!134389) b!1458252))

(assert (= (and b!1458254 (not c!134389)) b!1458245))

(assert (= (and b!1458254 res!988497) b!1458251))

(assert (= (and b!1458251 res!988503) b!1458253))

(assert (= (and b!1458253 res!988507) b!1458264))

(assert (= (and b!1458264 res!988509) b!1458244))

(assert (= (and b!1458253 (not res!988499)) b!1458259))

(assert (= (and b!1458259 (not res!988495)) b!1458247))

(assert (= (and b!1458247 (not res!988494)) b!1458260))

(assert (= (and b!1458260 c!134390) b!1458256))

(assert (= (and b!1458260 (not c!134390)) b!1458265))

(declare-fun m!1346173 () Bool)

(assert (=> b!1458246 m!1346173))

(assert (=> b!1458246 m!1346173))

(declare-fun m!1346175 () Bool)

(assert (=> b!1458246 m!1346175))

(declare-fun m!1346177 () Bool)

(assert (=> b!1458244 m!1346177))

(declare-fun m!1346179 () Bool)

(assert (=> b!1458244 m!1346179))

(declare-fun m!1346181 () Bool)

(assert (=> b!1458244 m!1346181))

(declare-fun m!1346183 () Bool)

(assert (=> b!1458244 m!1346183))

(assert (=> b!1458244 m!1346173))

(declare-fun m!1346185 () Bool)

(assert (=> b!1458257 m!1346185))

(assert (=> b!1458257 m!1346185))

(declare-fun m!1346187 () Bool)

(assert (=> b!1458257 m!1346187))

(declare-fun m!1346189 () Bool)

(assert (=> b!1458252 m!1346189))

(assert (=> b!1458248 m!1346177))

(declare-fun m!1346191 () Bool)

(assert (=> b!1458248 m!1346191))

(declare-fun m!1346193 () Bool)

(assert (=> start!125184 m!1346193))

(declare-fun m!1346195 () Bool)

(assert (=> start!125184 m!1346195))

(declare-fun m!1346197 () Bool)

(assert (=> b!1458245 m!1346197))

(declare-fun m!1346199 () Bool)

(assert (=> b!1458245 m!1346199))

(declare-fun m!1346201 () Bool)

(assert (=> b!1458263 m!1346201))

(assert (=> b!1458258 m!1346173))

(assert (=> b!1458258 m!1346173))

(declare-fun m!1346203 () Bool)

(assert (=> b!1458258 m!1346203))

(assert (=> b!1458258 m!1346203))

(assert (=> b!1458258 m!1346173))

(declare-fun m!1346205 () Bool)

(assert (=> b!1458258 m!1346205))

(assert (=> b!1458264 m!1346173))

(assert (=> b!1458264 m!1346173))

(declare-fun m!1346207 () Bool)

(assert (=> b!1458264 m!1346207))

(assert (=> b!1458247 m!1346173))

(assert (=> b!1458247 m!1346173))

(declare-fun m!1346209 () Bool)

(assert (=> b!1458247 m!1346209))

(declare-fun m!1346211 () Bool)

(assert (=> b!1458259 m!1346211))

(assert (=> b!1458259 m!1346197))

(assert (=> b!1458259 m!1346199))

(declare-fun m!1346213 () Bool)

(assert (=> b!1458250 m!1346213))

(assert (=> b!1458250 m!1346213))

(declare-fun m!1346215 () Bool)

(assert (=> b!1458250 m!1346215))

(assert (=> b!1458250 m!1346177))

(declare-fun m!1346217 () Bool)

(assert (=> b!1458250 m!1346217))

(assert (=> b!1458249 m!1346173))

(assert (=> b!1458249 m!1346173))

(declare-fun m!1346219 () Bool)

(assert (=> b!1458249 m!1346219))

(declare-fun m!1346221 () Bool)

(assert (=> b!1458256 m!1346221))

(declare-fun m!1346223 () Bool)

(assert (=> b!1458253 m!1346223))

(assert (=> b!1458253 m!1346177))

(assert (=> b!1458253 m!1346181))

(assert (=> b!1458253 m!1346183))

(declare-fun m!1346225 () Bool)

(assert (=> b!1458253 m!1346225))

(assert (=> b!1458253 m!1346173))

(declare-fun m!1346227 () Bool)

(assert (=> b!1458265 m!1346227))

(declare-fun m!1346229 () Bool)

(assert (=> b!1458261 m!1346229))

(check-sat (not b!1458253) (not b!1458246) (not b!1458264) (not b!1458250) (not b!1458261) (not b!1458249) (not b!1458257) (not b!1458245) (not b!1458265) (not b!1458259) (not b!1458256) (not start!125184) (not b!1458258) (not b!1458252) (not b!1458263) (not b!1458247))
(check-sat)
