; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127166 () Bool)

(assert start!127166)

(declare-fun b!1494280 () Bool)

(declare-fun res!1016771 () Bool)

(declare-fun e!837025 () Bool)

(assert (=> b!1494280 (=> (not res!1016771) (not e!837025))))

(declare-datatypes ((array!99730 0))(
  ( (array!99731 (arr!48129 (Array (_ BitVec 32) (_ BitVec 64))) (size!48680 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99730)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99730 (_ BitVec 32)) Bool)

(assert (=> b!1494280 (= res!1016771 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1494281 () Bool)

(declare-fun res!1016786 () Bool)

(declare-fun e!837032 () Bool)

(assert (=> b!1494281 (=> (not res!1016786) (not e!837032))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12392 0))(
  ( (MissingZero!12392 (index!51959 (_ BitVec 32))) (Found!12392 (index!51960 (_ BitVec 32))) (Intermediate!12392 (undefined!13204 Bool) (index!51961 (_ BitVec 32)) (x!133555 (_ BitVec 32))) (Undefined!12392) (MissingVacant!12392 (index!51962 (_ BitVec 32))) )
))
(declare-fun lt!651273 () SeekEntryResult!12392)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99730 (_ BitVec 32)) SeekEntryResult!12392)

(assert (=> b!1494281 (= res!1016786 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48129 a!2862) j!93) a!2862 mask!2687) lt!651273))))

(declare-fun res!1016785 () Bool)

(assert (=> start!127166 (=> (not res!1016785) (not e!837025))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127166 (= res!1016785 (validMask!0 mask!2687))))

(assert (=> start!127166 e!837025))

(assert (=> start!127166 true))

(declare-fun array_inv!37074 (array!99730) Bool)

(assert (=> start!127166 (array_inv!37074 a!2862)))

(declare-fun b!1494282 () Bool)

(declare-fun e!837027 () Bool)

(assert (=> b!1494282 (= e!837025 e!837027)))

(declare-fun res!1016784 () Bool)

(assert (=> b!1494282 (=> (not res!1016784) (not e!837027))))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1494282 (= res!1016784 (= (select (store (arr!48129 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!651269 () array!99730)

(assert (=> b!1494282 (= lt!651269 (array!99731 (store (arr!48129 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48680 a!2862)))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun b!1494283 () Bool)

(declare-fun e!837029 () Bool)

(assert (=> b!1494283 (= e!837029 (or (= (select (arr!48129 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48129 a!2862) intermediateBeforeIndex!19) (select (arr!48129 a!2862) j!93))))))

(declare-fun b!1494284 () Bool)

(declare-fun res!1016773 () Bool)

(assert (=> b!1494284 (=> (not res!1016773) (not e!837025))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1494284 (= res!1016773 (validKeyInArray!0 (select (arr!48129 a!2862) j!93)))))

(declare-fun b!1494285 () Bool)

(declare-fun res!1016781 () Bool)

(declare-fun e!837028 () Bool)

(assert (=> b!1494285 (=> (not res!1016781) (not e!837028))))

(declare-fun e!837024 () Bool)

(assert (=> b!1494285 (= res!1016781 e!837024)))

(declare-fun c!138287 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1494285 (= c!138287 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1494286 () Bool)

(declare-fun e!837031 () Bool)

(assert (=> b!1494286 (= e!837028 (not e!837031))))

(declare-fun res!1016776 () Bool)

(assert (=> b!1494286 (=> res!1016776 e!837031)))

(assert (=> b!1494286 (= res!1016776 (or (and (= (select (arr!48129 a!2862) index!646) (select (store (arr!48129 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48129 a!2862) index!646) (select (arr!48129 a!2862) j!93))) (= (select (arr!48129 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(assert (=> b!1494286 e!837029))

(declare-fun res!1016780 () Bool)

(assert (=> b!1494286 (=> (not res!1016780) (not e!837029))))

(assert (=> b!1494286 (= res!1016780 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!50072 0))(
  ( (Unit!50073) )
))
(declare-fun lt!651272 () Unit!50072)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99730 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50072)

(assert (=> b!1494286 (= lt!651272 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1494287 () Bool)

(declare-fun res!1016772 () Bool)

(assert (=> b!1494287 (=> (not res!1016772) (not e!837025))))

(assert (=> b!1494287 (= res!1016772 (validKeyInArray!0 (select (arr!48129 a!2862) i!1006)))))

(declare-fun lt!651270 () (_ BitVec 64))

(declare-fun b!1494288 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99730 (_ BitVec 32)) SeekEntryResult!12392)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99730 (_ BitVec 32)) SeekEntryResult!12392)

(assert (=> b!1494288 (= e!837024 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!651270 lt!651269 mask!2687) (seekEntryOrOpen!0 lt!651270 lt!651269 mask!2687)))))

(declare-fun b!1494289 () Bool)

(declare-fun res!1016783 () Bool)

(assert (=> b!1494289 (=> (not res!1016783) (not e!837029))))

(assert (=> b!1494289 (= res!1016783 (= (seekEntryOrOpen!0 (select (arr!48129 a!2862) j!93) a!2862 mask!2687) (Found!12392 j!93)))))

(declare-fun b!1494290 () Bool)

(declare-fun e!837026 () Bool)

(assert (=> b!1494290 (= e!837031 e!837026)))

(declare-fun res!1016782 () Bool)

(assert (=> b!1494290 (=> res!1016782 e!837026)))

(declare-fun lt!651274 () (_ BitVec 32))

(assert (=> b!1494290 (= res!1016782 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!651274 #b00000000000000000000000000000000) (bvsge lt!651274 (size!48680 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1494290 (= lt!651274 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1494291 () Bool)

(assert (=> b!1494291 (= e!837026 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!651274 (select (arr!48129 a!2862) j!93) a!2862 mask!2687) lt!651273))))

(declare-fun b!1494292 () Bool)

(declare-fun res!1016775 () Bool)

(assert (=> b!1494292 (=> (not res!1016775) (not e!837025))))

(declare-datatypes ((List!34810 0))(
  ( (Nil!34807) (Cons!34806 (h!36195 (_ BitVec 64)) (t!49511 List!34810)) )
))
(declare-fun arrayNoDuplicates!0 (array!99730 (_ BitVec 32) List!34810) Bool)

(assert (=> b!1494292 (= res!1016775 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34807))))

(declare-fun b!1494293 () Bool)

(assert (=> b!1494293 (= e!837032 e!837028)))

(declare-fun res!1016787 () Bool)

(assert (=> b!1494293 (=> (not res!1016787) (not e!837028))))

(declare-fun lt!651271 () SeekEntryResult!12392)

(assert (=> b!1494293 (= res!1016787 (= lt!651271 (Intermediate!12392 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1494293 (= lt!651271 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!651270 mask!2687) lt!651270 lt!651269 mask!2687))))

(assert (=> b!1494293 (= lt!651270 (select (store (arr!48129 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1494294 () Bool)

(declare-fun res!1016778 () Bool)

(assert (=> b!1494294 (=> (not res!1016778) (not e!837028))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1494294 (= res!1016778 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1494295 () Bool)

(assert (=> b!1494295 (= e!837027 e!837032)))

(declare-fun res!1016777 () Bool)

(assert (=> b!1494295 (=> (not res!1016777) (not e!837032))))

(assert (=> b!1494295 (= res!1016777 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48129 a!2862) j!93) mask!2687) (select (arr!48129 a!2862) j!93) a!2862 mask!2687) lt!651273))))

(assert (=> b!1494295 (= lt!651273 (Intermediate!12392 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1494296 () Bool)

(declare-fun res!1016779 () Bool)

(assert (=> b!1494296 (=> (not res!1016779) (not e!837025))))

(assert (=> b!1494296 (= res!1016779 (and (= (size!48680 a!2862) (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48680 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48680 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1494297 () Bool)

(declare-fun res!1016774 () Bool)

(assert (=> b!1494297 (=> (not res!1016774) (not e!837025))))

(assert (=> b!1494297 (= res!1016774 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48680 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48680 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48680 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1494298 () Bool)

(assert (=> b!1494298 (= e!837024 (= lt!651271 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!651270 lt!651269 mask!2687)))))

(assert (= (and start!127166 res!1016785) b!1494296))

(assert (= (and b!1494296 res!1016779) b!1494287))

(assert (= (and b!1494287 res!1016772) b!1494284))

(assert (= (and b!1494284 res!1016773) b!1494280))

(assert (= (and b!1494280 res!1016771) b!1494292))

(assert (= (and b!1494292 res!1016775) b!1494297))

(assert (= (and b!1494297 res!1016774) b!1494282))

(assert (= (and b!1494282 res!1016784) b!1494295))

(assert (= (and b!1494295 res!1016777) b!1494281))

(assert (= (and b!1494281 res!1016786) b!1494293))

(assert (= (and b!1494293 res!1016787) b!1494285))

(assert (= (and b!1494285 c!138287) b!1494298))

(assert (= (and b!1494285 (not c!138287)) b!1494288))

(assert (= (and b!1494285 res!1016781) b!1494294))

(assert (= (and b!1494294 res!1016778) b!1494286))

(assert (= (and b!1494286 res!1016780) b!1494289))

(assert (= (and b!1494289 res!1016783) b!1494283))

(assert (= (and b!1494286 (not res!1016776)) b!1494290))

(assert (= (and b!1494290 (not res!1016782)) b!1494291))

(declare-fun m!1378083 () Bool)

(assert (=> b!1494284 m!1378083))

(assert (=> b!1494284 m!1378083))

(declare-fun m!1378085 () Bool)

(assert (=> b!1494284 m!1378085))

(declare-fun m!1378087 () Bool)

(assert (=> b!1494282 m!1378087))

(declare-fun m!1378089 () Bool)

(assert (=> b!1494282 m!1378089))

(declare-fun m!1378091 () Bool)

(assert (=> b!1494287 m!1378091))

(assert (=> b!1494287 m!1378091))

(declare-fun m!1378093 () Bool)

(assert (=> b!1494287 m!1378093))

(assert (=> b!1494291 m!1378083))

(assert (=> b!1494291 m!1378083))

(declare-fun m!1378095 () Bool)

(assert (=> b!1494291 m!1378095))

(declare-fun m!1378097 () Bool)

(assert (=> b!1494293 m!1378097))

(assert (=> b!1494293 m!1378097))

(declare-fun m!1378099 () Bool)

(assert (=> b!1494293 m!1378099))

(assert (=> b!1494293 m!1378087))

(declare-fun m!1378101 () Bool)

(assert (=> b!1494293 m!1378101))

(declare-fun m!1378103 () Bool)

(assert (=> b!1494283 m!1378103))

(assert (=> b!1494283 m!1378083))

(declare-fun m!1378105 () Bool)

(assert (=> start!127166 m!1378105))

(declare-fun m!1378107 () Bool)

(assert (=> start!127166 m!1378107))

(declare-fun m!1378109 () Bool)

(assert (=> b!1494288 m!1378109))

(declare-fun m!1378111 () Bool)

(assert (=> b!1494288 m!1378111))

(assert (=> b!1494295 m!1378083))

(assert (=> b!1494295 m!1378083))

(declare-fun m!1378113 () Bool)

(assert (=> b!1494295 m!1378113))

(assert (=> b!1494295 m!1378113))

(assert (=> b!1494295 m!1378083))

(declare-fun m!1378115 () Bool)

(assert (=> b!1494295 m!1378115))

(assert (=> b!1494289 m!1378083))

(assert (=> b!1494289 m!1378083))

(declare-fun m!1378117 () Bool)

(assert (=> b!1494289 m!1378117))

(declare-fun m!1378119 () Bool)

(assert (=> b!1494280 m!1378119))

(declare-fun m!1378121 () Bool)

(assert (=> b!1494292 m!1378121))

(declare-fun m!1378123 () Bool)

(assert (=> b!1494286 m!1378123))

(assert (=> b!1494286 m!1378087))

(declare-fun m!1378125 () Bool)

(assert (=> b!1494286 m!1378125))

(declare-fun m!1378127 () Bool)

(assert (=> b!1494286 m!1378127))

(declare-fun m!1378129 () Bool)

(assert (=> b!1494286 m!1378129))

(assert (=> b!1494286 m!1378083))

(declare-fun m!1378131 () Bool)

(assert (=> b!1494298 m!1378131))

(declare-fun m!1378133 () Bool)

(assert (=> b!1494290 m!1378133))

(assert (=> b!1494281 m!1378083))

(assert (=> b!1494281 m!1378083))

(declare-fun m!1378135 () Bool)

(assert (=> b!1494281 m!1378135))

(push 1)

(assert (not b!1494284))

(assert (not start!127166))

(assert (not b!1494293))

(assert (not b!1494291))

(assert (not b!1494295))

(assert (not b!1494298))

(assert (not b!1494288))

(assert (not b!1494287))

(assert (not b!1494286))

(assert (not b!1494280))

(assert (not b!1494281))

(assert (not b!1494289))

(assert (not b!1494292))

(assert (not b!1494290))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1494428 () Bool)

(declare-fun e!837110 () Bool)

(declare-fun lt!651325 () SeekEntryResult!12392)

(assert (=> b!1494428 (= e!837110 (bvsge (x!133555 lt!651325) #b01111111111111111111111111111110))))

(declare-fun e!837109 () SeekEntryResult!12392)

(declare-fun b!1494430 () Bool)

(assert (=> b!1494430 (= e!837109 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) lt!651270 lt!651269 mask!2687))))

(declare-fun b!1494431 () Bool)

(assert (=> b!1494431 (= e!837109 (Intermediate!12392 false index!646 x!665))))

(declare-fun b!1494432 () Bool)

(declare-fun e!837113 () SeekEntryResult!12392)

(assert (=> b!1494432 (= e!837113 (Intermediate!12392 true index!646 x!665))))

(declare-fun b!1494433 () Bool)

(declare-fun e!837112 () Bool)

(assert (=> b!1494433 (= e!837110 e!837112)))

(declare-fun res!1016830 () Bool)

(assert (=> b!1494433 (= res!1016830 (and (is-Intermediate!12392 lt!651325) (not (undefined!13204 lt!651325)) (bvslt (x!133555 lt!651325) #b01111111111111111111111111111110) (bvsge (x!133555 lt!651325) #b00000000000000000000000000000000) (bvsge (x!133555 lt!651325) x!665)))))

(assert (=> b!1494433 (=> (not res!1016830) (not e!837112))))

(declare-fun b!1494434 () Bool)

(assert (=> b!1494434 (and (bvsge (index!51961 lt!651325) #b00000000000000000000000000000000) (bvslt (index!51961 lt!651325) (size!48680 lt!651269)))))

(declare-fun e!837111 () Bool)

(assert (=> b!1494434 (= e!837111 (= (select (arr!48129 lt!651269) (index!51961 lt!651325)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!157019 () Bool)

(assert (=> d!157019 e!837110))

(declare-fun c!138334 () Bool)

(assert (=> d!157019 (= c!138334 (and (is-Intermediate!12392 lt!651325) (undefined!13204 lt!651325)))))

(assert (=> d!157019 (= lt!651325 e!837113)))

(declare-fun c!138333 () Bool)

(assert (=> d!157019 (= c!138333 (bvsge x!665 #b01111111111111111111111111111110))))

(declare-fun lt!651326 () (_ BitVec 64))

(assert (=> d!157019 (= lt!651326 (select (arr!48129 lt!651269) index!646))))

(assert (=> d!157019 (validMask!0 mask!2687)))

(assert (=> d!157019 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!651270 lt!651269 mask!2687) lt!651325)))

(declare-fun b!1494429 () Bool)

(assert (=> b!1494429 (and (bvsge (index!51961 lt!651325) #b00000000000000000000000000000000) (bvslt (index!51961 lt!651325) (size!48680 lt!651269)))))

(declare-fun res!1016829 () Bool)

(assert (=> b!1494429 (= res!1016829 (= (select (arr!48129 lt!651269) (index!51961 lt!651325)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1494429 (=> res!1016829 e!837111)))

(declare-fun b!1494435 () Bool)

(assert (=> b!1494435 (= e!837113 e!837109)))

(declare-fun c!138335 () Bool)

(assert (=> b!1494435 (= c!138335 (or (= lt!651326 lt!651270) (= (bvadd lt!651326 lt!651326) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1494436 () Bool)

(assert (=> b!1494436 (and (bvsge (index!51961 lt!651325) #b00000000000000000000000000000000) (bvslt (index!51961 lt!651325) (size!48680 lt!651269)))))

(declare-fun res!1016828 () Bool)

(assert (=> b!1494436 (= res!1016828 (= (select (arr!48129 lt!651269) (index!51961 lt!651325)) lt!651270))))

(assert (=> b!1494436 (=> res!1016828 e!837111)))

(assert (=> b!1494436 (= e!837112 e!837111)))

(assert (= (and d!157019 c!138333) b!1494432))

(assert (= (and d!157019 (not c!138333)) b!1494435))

(assert (= (and b!1494435 c!138335) b!1494431))

(assert (= (and b!1494435 (not c!138335)) b!1494430))

(assert (= (and d!157019 c!138334) b!1494428))

(assert (= (and d!157019 (not c!138334)) b!1494433))

(assert (= (and b!1494433 res!1016830) b!1494436))

(assert (= (and b!1494436 (not res!1016828)) b!1494429))

(assert (= (and b!1494429 (not res!1016829)) b!1494434))

(declare-fun m!1378191 () Bool)

(assert (=> b!1494429 m!1378191))

(assert (=> b!1494430 m!1378133))

(assert (=> b!1494430 m!1378133))

(declare-fun m!1378193 () Bool)

(assert (=> b!1494430 m!1378193))

(assert (=> b!1494434 m!1378191))

(assert (=> b!1494436 m!1378191))

(declare-fun m!1378195 () Bool)

(assert (=> d!157019 m!1378195))

(assert (=> d!157019 m!1378105))

(assert (=> b!1494298 d!157019))

(declare-fun d!157027 () Bool)

(assert (=> d!157027 (= (validKeyInArray!0 (select (arr!48129 a!2862) i!1006)) (and (not (= (select (arr!48129 a!2862) i!1006) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48129 a!2862) i!1006) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1494287 d!157027))

(declare-fun bm!67983 () Bool)

(declare-fun call!67986 () Bool)

(assert (=> bm!67983 (= call!67986 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!93 #b00000000000000000000000000000001) a!2862 mask!2687))))

(declare-fun b!1494479 () Bool)

(declare-fun e!837140 () Bool)

(assert (=> b!1494479 (= e!837140 call!67986)))

(declare-fun b!1494480 () Bool)

(declare-fun e!837139 () Bool)

(assert (=> b!1494480 (= e!837139 e!837140)))

(declare-fun c!138350 () Bool)

(assert (=> b!1494480 (= c!138350 (validKeyInArray!0 (select (arr!48129 a!2862) j!93)))))

(declare-fun b!1494481 () Bool)

(declare-fun e!837138 () Bool)

(assert (=> b!1494481 (= e!837140 e!837138)))

(declare-fun lt!651342 () (_ BitVec 64))

(assert (=> b!1494481 (= lt!651342 (select (arr!48129 a!2862) j!93))))

(declare-fun lt!651343 () Unit!50072)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!99730 (_ BitVec 64) (_ BitVec 32)) Unit!50072)

(assert (=> b!1494481 (= lt!651343 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2862 lt!651342 j!93))))

(declare-fun arrayContainsKey!0 (array!99730 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1494481 (arrayContainsKey!0 a!2862 lt!651342 #b00000000000000000000000000000000)))

(declare-fun lt!651341 () Unit!50072)

(assert (=> b!1494481 (= lt!651341 lt!651343)))

(declare-fun res!1016844 () Bool)

(assert (=> b!1494481 (= res!1016844 (= (seekEntryOrOpen!0 (select (arr!48129 a!2862) j!93) a!2862 mask!2687) (Found!12392 j!93)))))

(assert (=> b!1494481 (=> (not res!1016844) (not e!837138))))

(declare-fun d!157029 () Bool)

(declare-fun res!1016845 () Bool)

(assert (=> d!157029 (=> res!1016845 e!837139)))

(assert (=> d!157029 (= res!1016845 (bvsge j!93 (size!48680 a!2862)))))

(assert (=> d!157029 (= (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687) e!837139)))

(declare-fun b!1494478 () Bool)

(assert (=> b!1494478 (= e!837138 call!67986)))

(assert (= (and d!157029 (not res!1016845)) b!1494480))

(assert (= (and b!1494480 c!138350) b!1494481))

(assert (= (and b!1494480 (not c!138350)) b!1494479))

(assert (= (and b!1494481 res!1016844) b!1494478))

(assert (= (or b!1494478 b!1494479) bm!67983))

(declare-fun m!1378211 () Bool)

(assert (=> bm!67983 m!1378211))

(assert (=> b!1494480 m!1378083))

(assert (=> b!1494480 m!1378083))

(assert (=> b!1494480 m!1378085))

(assert (=> b!1494481 m!1378083))

(declare-fun m!1378213 () Bool)

(assert (=> b!1494481 m!1378213))

(declare-fun m!1378215 () Bool)

(assert (=> b!1494481 m!1378215))

(assert (=> b!1494481 m!1378083))

(assert (=> b!1494481 m!1378117))

(assert (=> b!1494286 d!157029))

(declare-fun d!157035 () Bool)

(assert (=> d!157035 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-fun lt!651350 () Unit!50072)

(declare-fun choose!38 (array!99730 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50072)

(assert (=> d!157035 (= lt!651350 (choose!38 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(assert (=> d!157035 (validMask!0 mask!2687)))

(assert (=> d!157035 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93) lt!651350)))

(declare-fun bs!42895 () Bool)

(assert (= bs!42895 d!157035))

(assert (=> bs!42895 m!1378129))

(declare-fun m!1378217 () Bool)

(assert (=> bs!42895 m!1378217))

(assert (=> bs!42895 m!1378105))

(assert (=> b!1494286 d!157035))

(declare-fun d!157037 () Bool)

(declare-fun lt!651361 () (_ BitVec 32))

(assert (=> d!157037 (and (bvsge lt!651361 #b00000000000000000000000000000000) (bvslt lt!651361 (bvadd mask!2687 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!157037 (= lt!651361 (choose!52 index!646 x!665 mask!2687))))

(assert (=> d!157037 (validMask!0 mask!2687)))

(assert (=> d!157037 (= (nextIndex!0 index!646 x!665 mask!2687) lt!651361)))

(declare-fun bs!42896 () Bool)

(assert (= bs!42896 d!157037))

(declare-fun m!1378219 () Bool)

(assert (=> bs!42896 m!1378219))

(assert (=> bs!42896 m!1378105))

(assert (=> b!1494290 d!157037))

(declare-fun b!1494565 () Bool)

(declare-fun e!837190 () SeekEntryResult!12392)

(assert (=> b!1494565 (= e!837190 Undefined!12392)))

(declare-fun b!1494566 () Bool)

(declare-fun e!837189 () SeekEntryResult!12392)

(declare-fun lt!651397 () SeekEntryResult!12392)

(assert (=> b!1494566 (= e!837189 (MissingZero!12392 (index!51961 lt!651397)))))

(declare-fun b!1494567 () Bool)

(declare-fun e!837191 () SeekEntryResult!12392)

(assert (=> b!1494567 (= e!837190 e!837191)))

(declare-fun lt!651398 () (_ BitVec 64))

(assert (=> b!1494567 (= lt!651398 (select (arr!48129 a!2862) (index!51961 lt!651397)))))

(declare-fun c!138384 () Bool)

(assert (=> b!1494567 (= c!138384 (= lt!651398 (select (arr!48129 a!2862) j!93)))))

(declare-fun b!1494568 () Bool)

(assert (=> b!1494568 (= e!837191 (Found!12392 (index!51961 lt!651397)))))

(declare-fun d!157041 () Bool)

(declare-fun lt!651399 () SeekEntryResult!12392)

(assert (=> d!157041 (and (or (is-Undefined!12392 lt!651399) (not (is-Found!12392 lt!651399)) (and (bvsge (index!51960 lt!651399) #b00000000000000000000000000000000) (bvslt (index!51960 lt!651399) (size!48680 a!2862)))) (or (is-Undefined!12392 lt!651399) (is-Found!12392 lt!651399) (not (is-MissingZero!12392 lt!651399)) (and (bvsge (index!51959 lt!651399) #b00000000000000000000000000000000) (bvslt (index!51959 lt!651399) (size!48680 a!2862)))) (or (is-Undefined!12392 lt!651399) (is-Found!12392 lt!651399) (is-MissingZero!12392 lt!651399) (not (is-MissingVacant!12392 lt!651399)) (and (bvsge (index!51962 lt!651399) #b00000000000000000000000000000000) (bvslt (index!51962 lt!651399) (size!48680 a!2862)))) (or (is-Undefined!12392 lt!651399) (ite (is-Found!12392 lt!651399) (= (select (arr!48129 a!2862) (index!51960 lt!651399)) (select (arr!48129 a!2862) j!93)) (ite (is-MissingZero!12392 lt!651399) (= (select (arr!48129 a!2862) (index!51959 lt!651399)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!12392 lt!651399) (= (select (arr!48129 a!2862) (index!51962 lt!651399)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!157041 (= lt!651399 e!837190)))

(declare-fun c!138385 () Bool)

(assert (=> d!157041 (= c!138385 (and (is-Intermediate!12392 lt!651397) (undefined!13204 lt!651397)))))

(assert (=> d!157041 (= lt!651397 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48129 a!2862) j!93) mask!2687) (select (arr!48129 a!2862) j!93) a!2862 mask!2687))))

(assert (=> d!157041 (validMask!0 mask!2687)))

(assert (=> d!157041 (= (seekEntryOrOpen!0 (select (arr!48129 a!2862) j!93) a!2862 mask!2687) lt!651399)))

(declare-fun b!1494569 () Bool)

(assert (=> b!1494569 (= e!837189 (seekKeyOrZeroReturnVacant!0 (x!133555 lt!651397) (index!51961 lt!651397) (index!51961 lt!651397) (select (arr!48129 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1494570 () Bool)

(declare-fun c!138383 () Bool)

(assert (=> b!1494570 (= c!138383 (= lt!651398 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1494570 (= e!837191 e!837189)))

(assert (= (and d!157041 c!138385) b!1494565))

(assert (= (and d!157041 (not c!138385)) b!1494567))

(assert (= (and b!1494567 c!138384) b!1494568))

(assert (= (and b!1494567 (not c!138384)) b!1494570))

(assert (= (and b!1494570 c!138383) b!1494566))

(assert (= (and b!1494570 (not c!138383)) b!1494569))

(declare-fun m!1378285 () Bool)

(assert (=> b!1494567 m!1378285))

(declare-fun m!1378287 () Bool)

(assert (=> d!157041 m!1378287))

(declare-fun m!1378289 () Bool)

(assert (=> d!157041 m!1378289))

(assert (=> d!157041 m!1378083))

(assert (=> d!157041 m!1378113))

(assert (=> d!157041 m!1378113))

(assert (=> d!157041 m!1378083))

(assert (=> d!157041 m!1378115))

(declare-fun m!1378291 () Bool)

(assert (=> d!157041 m!1378291))

(assert (=> d!157041 m!1378105))

(assert (=> b!1494569 m!1378083))

(declare-fun m!1378293 () Bool)

(assert (=> b!1494569 m!1378293))

(assert (=> b!1494289 d!157041))

(declare-fun b!1494616 () Bool)

(declare-fun e!837221 () SeekEntryResult!12392)

(assert (=> b!1494616 (= e!837221 (MissingVacant!12392 intermediateAfterIndex!19))))

(declare-fun b!1494617 () Bool)

(declare-fun c!138401 () Bool)

(declare-fun lt!651416 () (_ BitVec 64))

(assert (=> b!1494617 (= c!138401 (= lt!651416 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!837220 () SeekEntryResult!12392)

(assert (=> b!1494617 (= e!837220 e!837221)))

(declare-fun b!1494618 () Bool)

(assert (=> b!1494618 (= e!837221 (seekKeyOrZeroReturnVacant!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) intermediateAfterIndex!19 lt!651270 lt!651269 mask!2687))))

(declare-fun b!1494619 () Bool)

(declare-fun e!837222 () SeekEntryResult!12392)

(assert (=> b!1494619 (= e!837222 e!837220)))

(declare-fun c!138402 () Bool)

(assert (=> b!1494619 (= c!138402 (= lt!651416 lt!651270))))

(declare-fun lt!651417 () SeekEntryResult!12392)

(declare-fun d!157067 () Bool)

(assert (=> d!157067 (and (or (is-Undefined!12392 lt!651417) (not (is-Found!12392 lt!651417)) (and (bvsge (index!51960 lt!651417) #b00000000000000000000000000000000) (bvslt (index!51960 lt!651417) (size!48680 lt!651269)))) (or (is-Undefined!12392 lt!651417) (is-Found!12392 lt!651417) (not (is-MissingVacant!12392 lt!651417)) (not (= (index!51962 lt!651417) intermediateAfterIndex!19)) (and (bvsge (index!51962 lt!651417) #b00000000000000000000000000000000) (bvslt (index!51962 lt!651417) (size!48680 lt!651269)))) (or (is-Undefined!12392 lt!651417) (ite (is-Found!12392 lt!651417) (= (select (arr!48129 lt!651269) (index!51960 lt!651417)) lt!651270) (and (is-MissingVacant!12392 lt!651417) (= (index!51962 lt!651417) intermediateAfterIndex!19) (= (select (arr!48129 lt!651269) (index!51962 lt!651417)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!157067 (= lt!651417 e!837222)))

(declare-fun c!138403 () Bool)

(assert (=> d!157067 (= c!138403 (bvsge x!665 #b01111111111111111111111111111110))))

(assert (=> d!157067 (= lt!651416 (select (arr!48129 lt!651269) index!646))))

(assert (=> d!157067 (validMask!0 mask!2687)))

(assert (=> d!157067 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!651270 lt!651269 mask!2687) lt!651417)))

(declare-fun b!1494620 () Bool)

(assert (=> b!1494620 (= e!837220 (Found!12392 index!646))))

(declare-fun b!1494621 () Bool)

(assert (=> b!1494621 (= e!837222 Undefined!12392)))

(assert (= (and d!157067 c!138403) b!1494621))

(assert (= (and d!157067 (not c!138403)) b!1494619))

(assert (= (and b!1494619 c!138402) b!1494620))

(assert (= (and b!1494619 (not c!138402)) b!1494617))

(assert (= (and b!1494617 c!138401) b!1494616))

(assert (= (and b!1494617 (not c!138401)) b!1494618))

(assert (=> b!1494618 m!1378133))

(assert (=> b!1494618 m!1378133))

(declare-fun m!1378319 () Bool)

(assert (=> b!1494618 m!1378319))

(declare-fun m!1378321 () Bool)

(assert (=> d!157067 m!1378321))

(declare-fun m!1378323 () Bool)

(assert (=> d!157067 m!1378323))

(assert (=> d!157067 m!1378195))

(assert (=> d!157067 m!1378105))

(assert (=> b!1494288 d!157067))

(declare-fun b!1494622 () Bool)

(declare-fun e!837224 () SeekEntryResult!12392)

(assert (=> b!1494622 (= e!837224 Undefined!12392)))

(declare-fun b!1494623 () Bool)

(declare-fun e!837223 () SeekEntryResult!12392)

(declare-fun lt!651418 () SeekEntryResult!12392)

(assert (=> b!1494623 (= e!837223 (MissingZero!12392 (index!51961 lt!651418)))))

(declare-fun b!1494624 () Bool)

(declare-fun e!837225 () SeekEntryResult!12392)

(assert (=> b!1494624 (= e!837224 e!837225)))

(declare-fun lt!651419 () (_ BitVec 64))

(assert (=> b!1494624 (= lt!651419 (select (arr!48129 lt!651269) (index!51961 lt!651418)))))

(declare-fun c!138405 () Bool)

(assert (=> b!1494624 (= c!138405 (= lt!651419 lt!651270))))

(declare-fun b!1494625 () Bool)

(assert (=> b!1494625 (= e!837225 (Found!12392 (index!51961 lt!651418)))))

(declare-fun d!157081 () Bool)

(declare-fun lt!651420 () SeekEntryResult!12392)

(assert (=> d!157081 (and (or (is-Undefined!12392 lt!651420) (not (is-Found!12392 lt!651420)) (and (bvsge (index!51960 lt!651420) #b00000000000000000000000000000000) (bvslt (index!51960 lt!651420) (size!48680 lt!651269)))) (or (is-Undefined!12392 lt!651420) (is-Found!12392 lt!651420) (not (is-MissingZero!12392 lt!651420)) (and (bvsge (index!51959 lt!651420) #b00000000000000000000000000000000) (bvslt (index!51959 lt!651420) (size!48680 lt!651269)))) (or (is-Undefined!12392 lt!651420) (is-Found!12392 lt!651420) (is-MissingZero!12392 lt!651420) (not (is-MissingVacant!12392 lt!651420)) (and (bvsge (index!51962 lt!651420) #b00000000000000000000000000000000) (bvslt (index!51962 lt!651420) (size!48680 lt!651269)))) (or (is-Undefined!12392 lt!651420) (ite (is-Found!12392 lt!651420) (= (select (arr!48129 lt!651269) (index!51960 lt!651420)) lt!651270) (ite (is-MissingZero!12392 lt!651420) (= (select (arr!48129 lt!651269) (index!51959 lt!651420)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!12392 lt!651420) (= (select (arr!48129 lt!651269) (index!51962 lt!651420)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!157081 (= lt!651420 e!837224)))

(declare-fun c!138406 () Bool)

(assert (=> d!157081 (= c!138406 (and (is-Intermediate!12392 lt!651418) (undefined!13204 lt!651418)))))

(assert (=> d!157081 (= lt!651418 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!651270 mask!2687) lt!651270 lt!651269 mask!2687))))

(assert (=> d!157081 (validMask!0 mask!2687)))

(assert (=> d!157081 (= (seekEntryOrOpen!0 lt!651270 lt!651269 mask!2687) lt!651420)))

(declare-fun b!1494626 () Bool)

(assert (=> b!1494626 (= e!837223 (seekKeyOrZeroReturnVacant!0 (x!133555 lt!651418) (index!51961 lt!651418) (index!51961 lt!651418) lt!651270 lt!651269 mask!2687))))

(declare-fun b!1494627 () Bool)

(declare-fun c!138404 () Bool)

(assert (=> b!1494627 (= c!138404 (= lt!651419 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1494627 (= e!837225 e!837223)))

(assert (= (and d!157081 c!138406) b!1494622))

(assert (= (and d!157081 (not c!138406)) b!1494624))

(assert (= (and b!1494624 c!138405) b!1494625))

(assert (= (and b!1494624 (not c!138405)) b!1494627))

(assert (= (and b!1494627 c!138404) b!1494623))

(assert (= (and b!1494627 (not c!138404)) b!1494626))

(declare-fun m!1378325 () Bool)

(assert (=> b!1494624 m!1378325))

(declare-fun m!1378327 () Bool)

(assert (=> d!157081 m!1378327))

(declare-fun m!1378329 () Bool)

(assert (=> d!157081 m!1378329))

(assert (=> d!157081 m!1378097))

(assert (=> d!157081 m!1378097))

(assert (=> d!157081 m!1378099))

(declare-fun m!1378331 () Bool)

(assert (=> d!157081 m!1378331))

(assert (=> d!157081 m!1378105))

(declare-fun m!1378333 () Bool)

(assert (=> b!1494626 m!1378333))

(assert (=> b!1494288 d!157081))

(declare-fun b!1494628 () Bool)

(declare-fun e!837227 () Bool)

(declare-fun lt!651421 () SeekEntryResult!12392)

(assert (=> b!1494628 (= e!837227 (bvsge (x!133555 lt!651421) #b01111111111111111111111111111110))))

(declare-fun e!837226 () SeekEntryResult!12392)

(declare-fun b!1494630 () Bool)

(assert (=> b!1494630 (= e!837226 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!651270 mask!2687) #b00000000000000000000000000000000 mask!2687) lt!651270 lt!651269 mask!2687))))

(declare-fun b!1494631 () Bool)

(assert (=> b!1494631 (= e!837226 (Intermediate!12392 false (toIndex!0 lt!651270 mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1494632 () Bool)

(declare-fun e!837230 () SeekEntryResult!12392)

(assert (=> b!1494632 (= e!837230 (Intermediate!12392 true (toIndex!0 lt!651270 mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1494633 () Bool)

(declare-fun e!837229 () Bool)

(assert (=> b!1494633 (= e!837227 e!837229)))

(declare-fun res!1016883 () Bool)

(assert (=> b!1494633 (= res!1016883 (and (is-Intermediate!12392 lt!651421) (not (undefined!13204 lt!651421)) (bvslt (x!133555 lt!651421) #b01111111111111111111111111111110) (bvsge (x!133555 lt!651421) #b00000000000000000000000000000000) (bvsge (x!133555 lt!651421) #b00000000000000000000000000000000)))))

(assert (=> b!1494633 (=> (not res!1016883) (not e!837229))))

(declare-fun b!1494634 () Bool)

(assert (=> b!1494634 (and (bvsge (index!51961 lt!651421) #b00000000000000000000000000000000) (bvslt (index!51961 lt!651421) (size!48680 lt!651269)))))

(declare-fun e!837228 () Bool)

(assert (=> b!1494634 (= e!837228 (= (select (arr!48129 lt!651269) (index!51961 lt!651421)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!157083 () Bool)

(assert (=> d!157083 e!837227))

(declare-fun c!138408 () Bool)

(assert (=> d!157083 (= c!138408 (and (is-Intermediate!12392 lt!651421) (undefined!13204 lt!651421)))))

(assert (=> d!157083 (= lt!651421 e!837230)))

