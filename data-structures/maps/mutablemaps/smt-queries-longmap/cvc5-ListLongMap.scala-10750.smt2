; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125800 () Bool)

(assert start!125800)

(declare-fun b!1471414 () Bool)

(declare-fun e!825945 () Bool)

(declare-fun e!825948 () Bool)

(assert (=> b!1471414 (= e!825945 e!825948)))

(declare-fun res!999302 () Bool)

(assert (=> b!1471414 (=> (not res!999302) (not e!825948))))

(declare-datatypes ((SeekEntryResult!12069 0))(
  ( (MissingZero!12069 (index!50667 (_ BitVec 32))) (Found!12069 (index!50668 (_ BitVec 32))) (Intermediate!12069 (undefined!12881 Bool) (index!50669 (_ BitVec 32)) (x!132259 (_ BitVec 32))) (Undefined!12069) (MissingVacant!12069 (index!50670 (_ BitVec 32))) )
))
(declare-fun lt!643234 () SeekEntryResult!12069)

(declare-datatypes ((array!99051 0))(
  ( (array!99052 (arr!47806 (Array (_ BitVec 32) (_ BitVec 64))) (size!48357 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99051)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99051 (_ BitVec 32)) SeekEntryResult!12069)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1471414 (= res!999302 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47806 a!2862) j!93) mask!2687) (select (arr!47806 a!2862) j!93) a!2862 mask!2687) lt!643234))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1471414 (= lt!643234 (Intermediate!12069 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1471415 () Bool)

(declare-fun e!825944 () Bool)

(assert (=> b!1471415 (= e!825948 e!825944)))

(declare-fun res!999305 () Bool)

(assert (=> b!1471415 (=> (not res!999305) (not e!825944))))

(declare-fun lt!643236 () SeekEntryResult!12069)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1471415 (= res!999305 (= lt!643236 (Intermediate!12069 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!643235 () (_ BitVec 64))

(declare-fun lt!643233 () array!99051)

(assert (=> b!1471415 (= lt!643236 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!643235 mask!2687) lt!643235 lt!643233 mask!2687))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1471415 (= lt!643235 (select (store (arr!47806 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1471416 () Bool)

(declare-fun e!825946 () Bool)

(assert (=> b!1471416 (= e!825946 e!825945)))

(declare-fun res!999297 () Bool)

(assert (=> b!1471416 (=> (not res!999297) (not e!825945))))

(assert (=> b!1471416 (= res!999297 (= (select (store (arr!47806 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1471416 (= lt!643233 (array!99052 (store (arr!47806 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48357 a!2862)))))

(declare-fun b!1471417 () Bool)

(declare-fun res!999298 () Bool)

(declare-fun e!825949 () Bool)

(assert (=> b!1471417 (=> (not res!999298) (not e!825949))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99051 (_ BitVec 32)) SeekEntryResult!12069)

(assert (=> b!1471417 (= res!999298 (= (seekEntryOrOpen!0 (select (arr!47806 a!2862) j!93) a!2862 mask!2687) (Found!12069 j!93)))))

(declare-fun b!1471418 () Bool)

(declare-fun res!999308 () Bool)

(assert (=> b!1471418 (=> (not res!999308) (not e!825946))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1471418 (= res!999308 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48357 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48357 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48357 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1471419 () Bool)

(declare-fun res!999309 () Bool)

(assert (=> b!1471419 (=> (not res!999309) (not e!825946))))

(declare-datatypes ((List!34487 0))(
  ( (Nil!34484) (Cons!34483 (h!35839 (_ BitVec 64)) (t!49188 List!34487)) )
))
(declare-fun arrayNoDuplicates!0 (array!99051 (_ BitVec 32) List!34487) Bool)

(assert (=> b!1471419 (= res!999309 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34484))))

(declare-fun b!1471420 () Bool)

(assert (=> b!1471420 (= e!825949 (or (= (select (arr!47806 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47806 a!2862) intermediateBeforeIndex!19) (select (arr!47806 a!2862) j!93))))))

(declare-fun b!1471421 () Bool)

(declare-fun res!999306 () Bool)

(assert (=> b!1471421 (=> (not res!999306) (not e!825946))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1471421 (= res!999306 (validKeyInArray!0 (select (arr!47806 a!2862) i!1006)))))

(declare-fun b!1471422 () Bool)

(declare-fun res!999307 () Bool)

(assert (=> b!1471422 (=> (not res!999307) (not e!825948))))

(assert (=> b!1471422 (= res!999307 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47806 a!2862) j!93) a!2862 mask!2687) lt!643234))))

(declare-fun res!999303 () Bool)

(assert (=> start!125800 (=> (not res!999303) (not e!825946))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125800 (= res!999303 (validMask!0 mask!2687))))

(assert (=> start!125800 e!825946))

(assert (=> start!125800 true))

(declare-fun array_inv!36751 (array!99051) Bool)

(assert (=> start!125800 (array_inv!36751 a!2862)))

(declare-fun b!1471413 () Bool)

(declare-fun res!999301 () Bool)

(assert (=> b!1471413 (=> (not res!999301) (not e!825946))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99051 (_ BitVec 32)) Bool)

(assert (=> b!1471413 (= res!999301 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1471423 () Bool)

(declare-fun e!825947 () Bool)

(assert (=> b!1471423 (= e!825947 (= lt!643236 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!643235 lt!643233 mask!2687)))))

(declare-fun b!1471424 () Bool)

(declare-fun res!999304 () Bool)

(assert (=> b!1471424 (=> (not res!999304) (not e!825944))))

(assert (=> b!1471424 (= res!999304 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1471425 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99051 (_ BitVec 32)) SeekEntryResult!12069)

(assert (=> b!1471425 (= e!825947 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!643235 lt!643233 mask!2687) (seekEntryOrOpen!0 lt!643235 lt!643233 mask!2687)))))

(declare-fun b!1471426 () Bool)

(assert (=> b!1471426 (= e!825944 (not true))))

(assert (=> b!1471426 e!825949))

(declare-fun res!999299 () Bool)

(assert (=> b!1471426 (=> (not res!999299) (not e!825949))))

(assert (=> b!1471426 (= res!999299 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49426 0))(
  ( (Unit!49427) )
))
(declare-fun lt!643237 () Unit!49426)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99051 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49426)

(assert (=> b!1471426 (= lt!643237 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1471427 () Bool)

(declare-fun res!999296 () Bool)

(assert (=> b!1471427 (=> (not res!999296) (not e!825944))))

(assert (=> b!1471427 (= res!999296 e!825947)))

(declare-fun c!135575 () Bool)

(assert (=> b!1471427 (= c!135575 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1471428 () Bool)

(declare-fun res!999295 () Bool)

(assert (=> b!1471428 (=> (not res!999295) (not e!825946))))

(assert (=> b!1471428 (= res!999295 (and (= (size!48357 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48357 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48357 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1471429 () Bool)

(declare-fun res!999300 () Bool)

(assert (=> b!1471429 (=> (not res!999300) (not e!825946))))

(assert (=> b!1471429 (= res!999300 (validKeyInArray!0 (select (arr!47806 a!2862) j!93)))))

(assert (= (and start!125800 res!999303) b!1471428))

(assert (= (and b!1471428 res!999295) b!1471421))

(assert (= (and b!1471421 res!999306) b!1471429))

(assert (= (and b!1471429 res!999300) b!1471413))

(assert (= (and b!1471413 res!999301) b!1471419))

(assert (= (and b!1471419 res!999309) b!1471418))

(assert (= (and b!1471418 res!999308) b!1471416))

(assert (= (and b!1471416 res!999297) b!1471414))

(assert (= (and b!1471414 res!999302) b!1471422))

(assert (= (and b!1471422 res!999307) b!1471415))

(assert (= (and b!1471415 res!999305) b!1471427))

(assert (= (and b!1471427 c!135575) b!1471423))

(assert (= (and b!1471427 (not c!135575)) b!1471425))

(assert (= (and b!1471427 res!999296) b!1471424))

(assert (= (and b!1471424 res!999304) b!1471426))

(assert (= (and b!1471426 res!999299) b!1471417))

(assert (= (and b!1471417 res!999298) b!1471420))

(declare-fun m!1358277 () Bool)

(assert (=> b!1471429 m!1358277))

(assert (=> b!1471429 m!1358277))

(declare-fun m!1358279 () Bool)

(assert (=> b!1471429 m!1358279))

(assert (=> b!1471417 m!1358277))

(assert (=> b!1471417 m!1358277))

(declare-fun m!1358281 () Bool)

(assert (=> b!1471417 m!1358281))

(assert (=> b!1471414 m!1358277))

(assert (=> b!1471414 m!1358277))

(declare-fun m!1358283 () Bool)

(assert (=> b!1471414 m!1358283))

(assert (=> b!1471414 m!1358283))

(assert (=> b!1471414 m!1358277))

(declare-fun m!1358285 () Bool)

(assert (=> b!1471414 m!1358285))

(declare-fun m!1358287 () Bool)

(assert (=> b!1471420 m!1358287))

(assert (=> b!1471420 m!1358277))

(declare-fun m!1358289 () Bool)

(assert (=> b!1471425 m!1358289))

(declare-fun m!1358291 () Bool)

(assert (=> b!1471425 m!1358291))

(declare-fun m!1358293 () Bool)

(assert (=> b!1471415 m!1358293))

(assert (=> b!1471415 m!1358293))

(declare-fun m!1358295 () Bool)

(assert (=> b!1471415 m!1358295))

(declare-fun m!1358297 () Bool)

(assert (=> b!1471415 m!1358297))

(declare-fun m!1358299 () Bool)

(assert (=> b!1471415 m!1358299))

(declare-fun m!1358301 () Bool)

(assert (=> b!1471413 m!1358301))

(assert (=> b!1471422 m!1358277))

(assert (=> b!1471422 m!1358277))

(declare-fun m!1358303 () Bool)

(assert (=> b!1471422 m!1358303))

(declare-fun m!1358305 () Bool)

(assert (=> start!125800 m!1358305))

(declare-fun m!1358307 () Bool)

(assert (=> start!125800 m!1358307))

(declare-fun m!1358309 () Bool)

(assert (=> b!1471426 m!1358309))

(declare-fun m!1358311 () Bool)

(assert (=> b!1471426 m!1358311))

(declare-fun m!1358313 () Bool)

(assert (=> b!1471421 m!1358313))

(assert (=> b!1471421 m!1358313))

(declare-fun m!1358315 () Bool)

(assert (=> b!1471421 m!1358315))

(declare-fun m!1358317 () Bool)

(assert (=> b!1471419 m!1358317))

(assert (=> b!1471416 m!1358297))

(declare-fun m!1358319 () Bool)

(assert (=> b!1471416 m!1358319))

(declare-fun m!1358321 () Bool)

(assert (=> b!1471423 m!1358321))

(push 1)

