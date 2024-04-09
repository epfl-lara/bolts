; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126278 () Bool)

(assert start!126278)

(declare-fun b!1479274 () Bool)

(declare-fun e!829793 () Bool)

(declare-fun e!829791 () Bool)

(assert (=> b!1479274 (= e!829793 e!829791)))

(declare-fun res!1005309 () Bool)

(assert (=> b!1479274 (=> res!1005309 e!829791)))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!99301 0))(
  ( (array!99302 (arr!47925 (Array (_ BitVec 32) (_ BitVec 64))) (size!48476 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99301)

(assert (=> b!1479274 (= res!1005309 (or (and (= (select (arr!47925 a!2862) index!646) (select (store (arr!47925 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47925 a!2862) index!646) (select (arr!47925 a!2862) j!93))) (not (= (select (arr!47925 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12188 0))(
  ( (MissingZero!12188 (index!51143 (_ BitVec 32))) (Found!12188 (index!51144 (_ BitVec 32))) (Intermediate!12188 (undefined!13000 Bool) (index!51145 (_ BitVec 32)) (x!132726 (_ BitVec 32))) (Undefined!12188) (MissingVacant!12188 (index!51146 (_ BitVec 32))) )
))
(declare-fun lt!645937 () SeekEntryResult!12188)

(declare-fun e!829797 () Bool)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun b!1479275 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99301 (_ BitVec 32)) SeekEntryResult!12188)

(assert (=> b!1479275 (= e!829797 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateBeforeIndex!19 (select (arr!47925 a!2862) j!93) a!2862 mask!2687) lt!645937))))

(declare-fun b!1479276 () Bool)

(declare-fun e!829790 () Bool)

(declare-fun e!829794 () Bool)

(assert (=> b!1479276 (= e!829790 e!829794)))

(declare-fun res!1005298 () Bool)

(assert (=> b!1479276 (=> (not res!1005298) (not e!829794))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1479276 (= res!1005298 (= (select (store (arr!47925 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!645934 () array!99301)

(assert (=> b!1479276 (= lt!645934 (array!99302 (store (arr!47925 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48476 a!2862)))))

(declare-fun res!1005310 () Bool)

(assert (=> start!126278 (=> (not res!1005310) (not e!829790))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126278 (= res!1005310 (validMask!0 mask!2687))))

(assert (=> start!126278 e!829790))

(assert (=> start!126278 true))

(declare-fun array_inv!36870 (array!99301) Bool)

(assert (=> start!126278 (array_inv!36870 a!2862)))

(declare-fun b!1479277 () Bool)

(declare-fun e!829796 () Bool)

(assert (=> b!1479277 (= e!829794 e!829796)))

(declare-fun res!1005301 () Bool)

(assert (=> b!1479277 (=> (not res!1005301) (not e!829796))))

(declare-fun lt!645936 () SeekEntryResult!12188)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99301 (_ BitVec 32)) SeekEntryResult!12188)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1479277 (= res!1005301 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47925 a!2862) j!93) mask!2687) (select (arr!47925 a!2862) j!93) a!2862 mask!2687) lt!645936))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1479277 (= lt!645936 (Intermediate!12188 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1479278 () Bool)

(declare-fun res!1005307 () Bool)

(assert (=> b!1479278 (=> (not res!1005307) (not e!829796))))

(assert (=> b!1479278 (= res!1005307 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47925 a!2862) j!93) a!2862 mask!2687) lt!645936))))

(declare-fun b!1479279 () Bool)

(declare-fun res!1005306 () Bool)

(assert (=> b!1479279 (=> (not res!1005306) (not e!829790))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1479279 (= res!1005306 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48476 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48476 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48476 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1479280 () Bool)

(declare-fun res!1005312 () Bool)

(assert (=> b!1479280 (=> (not res!1005312) (not e!829790))))

(assert (=> b!1479280 (= res!1005312 (and (= (size!48476 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48476 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48476 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1479281 () Bool)

(declare-fun e!829792 () Bool)

(assert (=> b!1479281 (= e!829791 e!829792)))

(declare-fun res!1005303 () Bool)

(assert (=> b!1479281 (=> (not res!1005303) (not e!829792))))

(declare-fun lt!645931 () SeekEntryResult!12188)

(assert (=> b!1479281 (= res!1005303 (= lt!645931 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47925 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1479282 () Bool)

(declare-fun res!1005302 () Bool)

(declare-fun e!829799 () Bool)

(assert (=> b!1479282 (=> (not res!1005302) (not e!829799))))

(assert (=> b!1479282 (= res!1005302 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1479283 () Bool)

(declare-fun res!1005299 () Bool)

(assert (=> b!1479283 (=> (not res!1005299) (not e!829790))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99301 (_ BitVec 32)) Bool)

(assert (=> b!1479283 (= res!1005299 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1479284 () Bool)

(declare-fun res!1005300 () Bool)

(assert (=> b!1479284 (=> (not res!1005300) (not e!829790))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1479284 (= res!1005300 (validKeyInArray!0 (select (arr!47925 a!2862) i!1006)))))

(declare-fun b!1479285 () Bool)

(assert (=> b!1479285 (= e!829792 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1479286 () Bool)

(assert (=> b!1479286 (= e!829799 (not e!829797))))

(declare-fun res!1005311 () Bool)

(assert (=> b!1479286 (=> res!1005311 e!829797)))

(assert (=> b!1479286 (= res!1005311 (or (and (= (select (arr!47925 a!2862) index!646) (select (store (arr!47925 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47925 a!2862) index!646) (select (arr!47925 a!2862) j!93))) (not (= (select (arr!47925 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47925 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1479286 e!829793))

(declare-fun res!1005304 () Bool)

(assert (=> b!1479286 (=> (not res!1005304) (not e!829793))))

(assert (=> b!1479286 (= res!1005304 (and (= lt!645931 lt!645937) (or (= (select (arr!47925 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47925 a!2862) intermediateBeforeIndex!19) (select (arr!47925 a!2862) j!93)))))))

(assert (=> b!1479286 (= lt!645937 (Found!12188 j!93))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99301 (_ BitVec 32)) SeekEntryResult!12188)

(assert (=> b!1479286 (= lt!645931 (seekEntryOrOpen!0 (select (arr!47925 a!2862) j!93) a!2862 mask!2687))))

(assert (=> b!1479286 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!49664 0))(
  ( (Unit!49665) )
))
(declare-fun lt!645932 () Unit!49664)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99301 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49664)

(assert (=> b!1479286 (= lt!645932 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun e!829798 () Bool)

(declare-fun lt!645935 () SeekEntryResult!12188)

(declare-fun b!1479287 () Bool)

(declare-fun lt!645933 () (_ BitVec 64))

(assert (=> b!1479287 (= e!829798 (= lt!645935 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!645933 lt!645934 mask!2687)))))

(declare-fun b!1479288 () Bool)

(declare-fun res!1005305 () Bool)

(assert (=> b!1479288 (=> (not res!1005305) (not e!829790))))

(declare-datatypes ((List!34606 0))(
  ( (Nil!34603) (Cons!34602 (h!35970 (_ BitVec 64)) (t!49307 List!34606)) )
))
(declare-fun arrayNoDuplicates!0 (array!99301 (_ BitVec 32) List!34606) Bool)

(assert (=> b!1479288 (= res!1005305 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34603))))

(declare-fun b!1479289 () Bool)

(assert (=> b!1479289 (= e!829796 e!829799)))

(declare-fun res!1005297 () Bool)

(assert (=> b!1479289 (=> (not res!1005297) (not e!829799))))

(assert (=> b!1479289 (= res!1005297 (= lt!645935 (Intermediate!12188 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1479289 (= lt!645935 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!645933 mask!2687) lt!645933 lt!645934 mask!2687))))

(assert (=> b!1479289 (= lt!645933 (select (store (arr!47925 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1479290 () Bool)

(declare-fun res!1005308 () Bool)

(assert (=> b!1479290 (=> (not res!1005308) (not e!829790))))

(assert (=> b!1479290 (= res!1005308 (validKeyInArray!0 (select (arr!47925 a!2862) j!93)))))

(declare-fun b!1479291 () Bool)

(assert (=> b!1479291 (= e!829798 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!645933 lt!645934 mask!2687) (seekEntryOrOpen!0 lt!645933 lt!645934 mask!2687)))))

(declare-fun b!1479292 () Bool)

(declare-fun res!1005296 () Bool)

(assert (=> b!1479292 (=> (not res!1005296) (not e!829799))))

(assert (=> b!1479292 (= res!1005296 e!829798)))

(declare-fun c!136511 () Bool)

(assert (=> b!1479292 (= c!136511 (bvsle x!665 intermediateAfterX!19))))

(assert (= (and start!126278 res!1005310) b!1479280))

(assert (= (and b!1479280 res!1005312) b!1479284))

(assert (= (and b!1479284 res!1005300) b!1479290))

(assert (= (and b!1479290 res!1005308) b!1479283))

(assert (= (and b!1479283 res!1005299) b!1479288))

(assert (= (and b!1479288 res!1005305) b!1479279))

(assert (= (and b!1479279 res!1005306) b!1479276))

(assert (= (and b!1479276 res!1005298) b!1479277))

(assert (= (and b!1479277 res!1005301) b!1479278))

(assert (= (and b!1479278 res!1005307) b!1479289))

(assert (= (and b!1479289 res!1005297) b!1479292))

(assert (= (and b!1479292 c!136511) b!1479287))

(assert (= (and b!1479292 (not c!136511)) b!1479291))

(assert (= (and b!1479292 res!1005296) b!1479282))

(assert (= (and b!1479282 res!1005302) b!1479286))

(assert (= (and b!1479286 res!1005304) b!1479274))

(assert (= (and b!1479274 (not res!1005309)) b!1479281))

(assert (= (and b!1479281 res!1005303) b!1479285))

(assert (= (and b!1479286 (not res!1005311)) b!1479275))

(declare-fun m!1365207 () Bool)

(assert (=> b!1479291 m!1365207))

(declare-fun m!1365209 () Bool)

(assert (=> b!1479291 m!1365209))

(declare-fun m!1365211 () Bool)

(assert (=> b!1479287 m!1365211))

(declare-fun m!1365213 () Bool)

(assert (=> b!1479277 m!1365213))

(assert (=> b!1479277 m!1365213))

(declare-fun m!1365215 () Bool)

(assert (=> b!1479277 m!1365215))

(assert (=> b!1479277 m!1365215))

(assert (=> b!1479277 m!1365213))

(declare-fun m!1365217 () Bool)

(assert (=> b!1479277 m!1365217))

(assert (=> b!1479281 m!1365213))

(assert (=> b!1479281 m!1365213))

(declare-fun m!1365219 () Bool)

(assert (=> b!1479281 m!1365219))

(declare-fun m!1365221 () Bool)

(assert (=> b!1479283 m!1365221))

(assert (=> b!1479275 m!1365213))

(assert (=> b!1479275 m!1365213))

(declare-fun m!1365223 () Bool)

(assert (=> b!1479275 m!1365223))

(declare-fun m!1365225 () Bool)

(assert (=> b!1479286 m!1365225))

(declare-fun m!1365227 () Bool)

(assert (=> b!1479286 m!1365227))

(declare-fun m!1365229 () Bool)

(assert (=> b!1479286 m!1365229))

(declare-fun m!1365231 () Bool)

(assert (=> b!1479286 m!1365231))

(declare-fun m!1365233 () Bool)

(assert (=> b!1479286 m!1365233))

(assert (=> b!1479286 m!1365213))

(declare-fun m!1365235 () Bool)

(assert (=> b!1479286 m!1365235))

(declare-fun m!1365237 () Bool)

(assert (=> b!1479286 m!1365237))

(assert (=> b!1479286 m!1365213))

(assert (=> b!1479290 m!1365213))

(assert (=> b!1479290 m!1365213))

(declare-fun m!1365239 () Bool)

(assert (=> b!1479290 m!1365239))

(declare-fun m!1365241 () Bool)

(assert (=> b!1479288 m!1365241))

(declare-fun m!1365243 () Bool)

(assert (=> b!1479289 m!1365243))

(assert (=> b!1479289 m!1365243))

(declare-fun m!1365245 () Bool)

(assert (=> b!1479289 m!1365245))

(assert (=> b!1479289 m!1365227))

(declare-fun m!1365247 () Bool)

(assert (=> b!1479289 m!1365247))

(assert (=> b!1479274 m!1365233))

(assert (=> b!1479274 m!1365227))

(assert (=> b!1479274 m!1365231))

(assert (=> b!1479274 m!1365213))

(assert (=> b!1479276 m!1365227))

(declare-fun m!1365249 () Bool)

(assert (=> b!1479276 m!1365249))

(declare-fun m!1365251 () Bool)

(assert (=> b!1479284 m!1365251))

(assert (=> b!1479284 m!1365251))

(declare-fun m!1365253 () Bool)

(assert (=> b!1479284 m!1365253))

(declare-fun m!1365255 () Bool)

(assert (=> start!126278 m!1365255))

(declare-fun m!1365257 () Bool)

(assert (=> start!126278 m!1365257))

(assert (=> b!1479278 m!1365213))

(assert (=> b!1479278 m!1365213))

(declare-fun m!1365259 () Bool)

(assert (=> b!1479278 m!1365259))

(push 1)

