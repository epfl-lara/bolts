; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126166 () Bool)

(assert start!126166)

(declare-fun b!1476242 () Bool)

(declare-fun e!828272 () Bool)

(assert (=> b!1476242 (= e!828272 (not true))))

(declare-fun e!828275 () Bool)

(assert (=> b!1476242 e!828275))

(declare-fun res!1002606 () Bool)

(assert (=> b!1476242 (=> (not res!1002606) (not e!828275))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12132 0))(
  ( (MissingZero!12132 (index!50919 (_ BitVec 32))) (Found!12132 (index!50920 (_ BitVec 32))) (Intermediate!12132 (undefined!12944 Bool) (index!50921 (_ BitVec 32)) (x!132526 (_ BitVec 32))) (Undefined!12132) (MissingVacant!12132 (index!50922 (_ BitVec 32))) )
))
(declare-fun lt!644915 () SeekEntryResult!12132)

(declare-datatypes ((array!99189 0))(
  ( (array!99190 (arr!47869 (Array (_ BitVec 32) (_ BitVec 64))) (size!48420 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99189)

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1476242 (= res!1002606 (and (= lt!644915 (Found!12132 j!93)) (or (= (select (arr!47869 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47869 a!2862) intermediateBeforeIndex!19) (select (arr!47869 a!2862) j!93)))))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99189 (_ BitVec 32)) SeekEntryResult!12132)

(assert (=> b!1476242 (= lt!644915 (seekEntryOrOpen!0 (select (arr!47869 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99189 (_ BitVec 32)) Bool)

(assert (=> b!1476242 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!49552 0))(
  ( (Unit!49553) )
))
(declare-fun lt!644917 () Unit!49552)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99189 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49552)

(assert (=> b!1476242 (= lt!644917 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun b!1476243 () Bool)

(declare-fun e!828270 () Bool)

(assert (=> b!1476243 (= e!828270 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1476244 () Bool)

(declare-fun e!828273 () Bool)

(declare-fun e!828277 () Bool)

(assert (=> b!1476244 (= e!828273 e!828277)))

(declare-fun res!1002612 () Bool)

(assert (=> b!1476244 (=> (not res!1002612) (not e!828277))))

(declare-fun lt!644920 () SeekEntryResult!12132)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99189 (_ BitVec 32)) SeekEntryResult!12132)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1476244 (= res!1002612 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47869 a!2862) j!93) mask!2687) (select (arr!47869 a!2862) j!93) a!2862 mask!2687) lt!644920))))

(assert (=> b!1476244 (= lt!644920 (Intermediate!12132 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1476245 () Bool)

(declare-fun res!1002608 () Bool)

(declare-fun e!828271 () Bool)

(assert (=> b!1476245 (=> (not res!1002608) (not e!828271))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1476245 (= res!1002608 (and (= (size!48420 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48420 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48420 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1476246 () Bool)

(declare-fun res!1002615 () Bool)

(assert (=> b!1476246 (=> (not res!1002615) (not e!828271))))

(declare-datatypes ((List!34550 0))(
  ( (Nil!34547) (Cons!34546 (h!35914 (_ BitVec 64)) (t!49251 List!34550)) )
))
(declare-fun arrayNoDuplicates!0 (array!99189 (_ BitVec 32) List!34550) Bool)

(assert (=> b!1476246 (= res!1002615 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34547))))

(declare-fun b!1476247 () Bool)

(assert (=> b!1476247 (= e!828277 e!828272)))

(declare-fun res!1002609 () Bool)

(assert (=> b!1476247 (=> (not res!1002609) (not e!828272))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun lt!644919 () SeekEntryResult!12132)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1476247 (= res!1002609 (= lt!644919 (Intermediate!12132 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!644916 () array!99189)

(declare-fun lt!644918 () (_ BitVec 64))

(assert (=> b!1476247 (= lt!644919 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!644918 mask!2687) lt!644918 lt!644916 mask!2687))))

(assert (=> b!1476247 (= lt!644918 (select (store (arr!47869 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1476248 () Bool)

(declare-fun res!1002613 () Bool)

(assert (=> b!1476248 (=> (not res!1002613) (not e!828272))))

(assert (=> b!1476248 (= res!1002613 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun e!828276 () Bool)

(declare-fun b!1476249 () Bool)

(assert (=> b!1476249 (= e!828276 (= lt!644919 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!644918 lt!644916 mask!2687)))))

(declare-fun b!1476251 () Bool)

(declare-fun res!1002602 () Bool)

(assert (=> b!1476251 (=> (not res!1002602) (not e!828271))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1476251 (= res!1002602 (validKeyInArray!0 (select (arr!47869 a!2862) j!93)))))

(declare-fun b!1476252 () Bool)

(declare-fun res!1002607 () Bool)

(assert (=> b!1476252 (=> (not res!1002607) (not e!828277))))

(assert (=> b!1476252 (= res!1002607 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47869 a!2862) j!93) a!2862 mask!2687) lt!644920))))

(declare-fun b!1476253 () Bool)

(declare-fun res!1002604 () Bool)

(assert (=> b!1476253 (=> (not res!1002604) (not e!828271))))

(assert (=> b!1476253 (= res!1002604 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1476254 () Bool)

(assert (=> b!1476254 (= e!828271 e!828273)))

(declare-fun res!1002601 () Bool)

(assert (=> b!1476254 (=> (not res!1002601) (not e!828273))))

(assert (=> b!1476254 (= res!1002601 (= (select (store (arr!47869 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1476254 (= lt!644916 (array!99190 (store (arr!47869 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48420 a!2862)))))

(declare-fun b!1476255 () Bool)

(declare-fun e!828278 () Bool)

(assert (=> b!1476255 (= e!828278 e!828270)))

(declare-fun res!1002600 () Bool)

(assert (=> b!1476255 (=> (not res!1002600) (not e!828270))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99189 (_ BitVec 32)) SeekEntryResult!12132)

(assert (=> b!1476255 (= res!1002600 (= lt!644915 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47869 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1476256 () Bool)

(declare-fun res!1002614 () Bool)

(assert (=> b!1476256 (=> (not res!1002614) (not e!828272))))

(assert (=> b!1476256 (= res!1002614 e!828276)))

(declare-fun c!136343 () Bool)

(assert (=> b!1476256 (= c!136343 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1476257 () Bool)

(declare-fun res!1002603 () Bool)

(assert (=> b!1476257 (=> (not res!1002603) (not e!828271))))

(assert (=> b!1476257 (= res!1002603 (validKeyInArray!0 (select (arr!47869 a!2862) i!1006)))))

(declare-fun b!1476258 () Bool)

(declare-fun res!1002605 () Bool)

(assert (=> b!1476258 (=> (not res!1002605) (not e!828271))))

(assert (=> b!1476258 (= res!1002605 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48420 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48420 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48420 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1476259 () Bool)

(assert (=> b!1476259 (= e!828275 e!828278)))

(declare-fun res!1002610 () Bool)

(assert (=> b!1476259 (=> res!1002610 e!828278)))

(assert (=> b!1476259 (= res!1002610 (or (and (= (select (arr!47869 a!2862) index!646) (select (store (arr!47869 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47869 a!2862) index!646) (select (arr!47869 a!2862) j!93))) (not (= (select (arr!47869 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1476250 () Bool)

(assert (=> b!1476250 (= e!828276 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!644918 lt!644916 mask!2687) (seekEntryOrOpen!0 lt!644918 lt!644916 mask!2687)))))

(declare-fun res!1002611 () Bool)

(assert (=> start!126166 (=> (not res!1002611) (not e!828271))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126166 (= res!1002611 (validMask!0 mask!2687))))

(assert (=> start!126166 e!828271))

(assert (=> start!126166 true))

(declare-fun array_inv!36814 (array!99189) Bool)

(assert (=> start!126166 (array_inv!36814 a!2862)))

(assert (= (and start!126166 res!1002611) b!1476245))

(assert (= (and b!1476245 res!1002608) b!1476257))

(assert (= (and b!1476257 res!1002603) b!1476251))

(assert (= (and b!1476251 res!1002602) b!1476253))

(assert (= (and b!1476253 res!1002604) b!1476246))

(assert (= (and b!1476246 res!1002615) b!1476258))

(assert (= (and b!1476258 res!1002605) b!1476254))

(assert (= (and b!1476254 res!1002601) b!1476244))

(assert (= (and b!1476244 res!1002612) b!1476252))

(assert (= (and b!1476252 res!1002607) b!1476247))

(assert (= (and b!1476247 res!1002609) b!1476256))

(assert (= (and b!1476256 c!136343) b!1476249))

(assert (= (and b!1476256 (not c!136343)) b!1476250))

(assert (= (and b!1476256 res!1002614) b!1476248))

(assert (= (and b!1476248 res!1002613) b!1476242))

(assert (= (and b!1476242 res!1002606) b!1476259))

(assert (= (and b!1476259 (not res!1002610)) b!1476255))

(assert (= (and b!1476255 res!1002600) b!1476243))

(declare-fun m!1362291 () Bool)

(assert (=> b!1476244 m!1362291))

(assert (=> b!1476244 m!1362291))

(declare-fun m!1362293 () Bool)

(assert (=> b!1476244 m!1362293))

(assert (=> b!1476244 m!1362293))

(assert (=> b!1476244 m!1362291))

(declare-fun m!1362295 () Bool)

(assert (=> b!1476244 m!1362295))

(declare-fun m!1362297 () Bool)

(assert (=> b!1476254 m!1362297))

(declare-fun m!1362299 () Bool)

(assert (=> b!1476254 m!1362299))

(declare-fun m!1362301 () Bool)

(assert (=> b!1476257 m!1362301))

(assert (=> b!1476257 m!1362301))

(declare-fun m!1362303 () Bool)

(assert (=> b!1476257 m!1362303))

(assert (=> b!1476255 m!1362291))

(assert (=> b!1476255 m!1362291))

(declare-fun m!1362305 () Bool)

(assert (=> b!1476255 m!1362305))

(declare-fun m!1362307 () Bool)

(assert (=> b!1476253 m!1362307))

(declare-fun m!1362309 () Bool)

(assert (=> b!1476242 m!1362309))

(declare-fun m!1362311 () Bool)

(assert (=> b!1476242 m!1362311))

(assert (=> b!1476242 m!1362291))

(declare-fun m!1362313 () Bool)

(assert (=> b!1476242 m!1362313))

(declare-fun m!1362315 () Bool)

(assert (=> b!1476242 m!1362315))

(assert (=> b!1476242 m!1362291))

(declare-fun m!1362317 () Bool)

(assert (=> b!1476246 m!1362317))

(declare-fun m!1362319 () Bool)

(assert (=> b!1476249 m!1362319))

(declare-fun m!1362321 () Bool)

(assert (=> b!1476259 m!1362321))

(assert (=> b!1476259 m!1362297))

(declare-fun m!1362323 () Bool)

(assert (=> b!1476259 m!1362323))

(assert (=> b!1476259 m!1362291))

(declare-fun m!1362325 () Bool)

(assert (=> start!126166 m!1362325))

(declare-fun m!1362327 () Bool)

(assert (=> start!126166 m!1362327))

(assert (=> b!1476251 m!1362291))

(assert (=> b!1476251 m!1362291))

(declare-fun m!1362329 () Bool)

(assert (=> b!1476251 m!1362329))

(assert (=> b!1476252 m!1362291))

(assert (=> b!1476252 m!1362291))

(declare-fun m!1362331 () Bool)

(assert (=> b!1476252 m!1362331))

(declare-fun m!1362333 () Bool)

(assert (=> b!1476250 m!1362333))

(declare-fun m!1362335 () Bool)

(assert (=> b!1476250 m!1362335))

(declare-fun m!1362337 () Bool)

(assert (=> b!1476247 m!1362337))

(assert (=> b!1476247 m!1362337))

(declare-fun m!1362339 () Bool)

(assert (=> b!1476247 m!1362339))

(assert (=> b!1476247 m!1362297))

(declare-fun m!1362341 () Bool)

(assert (=> b!1476247 m!1362341))

(push 1)

