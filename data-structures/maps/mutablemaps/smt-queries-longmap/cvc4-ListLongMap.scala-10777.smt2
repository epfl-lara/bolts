; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126206 () Bool)

(assert start!126206)

(declare-fun b!1477322 () Bool)

(declare-fun res!1003567 () Bool)

(declare-fun e!828811 () Bool)

(assert (=> b!1477322 (=> (not res!1003567) (not e!828811))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1477322 (= res!1003567 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun res!1003575 () Bool)

(declare-fun e!828813 () Bool)

(assert (=> start!126206 (=> (not res!1003575) (not e!828813))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126206 (= res!1003575 (validMask!0 mask!2687))))

(assert (=> start!126206 e!828813))

(assert (=> start!126206 true))

(declare-datatypes ((array!99229 0))(
  ( (array!99230 (arr!47889 (Array (_ BitVec 32) (_ BitVec 64))) (size!48440 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99229)

(declare-fun array_inv!36834 (array!99229) Bool)

(assert (=> start!126206 (array_inv!36834 a!2862)))

(declare-fun b!1477323 () Bool)

(declare-fun res!1003562 () Bool)

(assert (=> b!1477323 (=> (not res!1003562) (not e!828813))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1477323 (= res!1003562 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48440 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48440 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48440 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1477324 () Bool)

(declare-fun e!828810 () Bool)

(declare-fun e!828817 () Bool)

(assert (=> b!1477324 (= e!828810 e!828817)))

(declare-fun res!1003564 () Bool)

(assert (=> b!1477324 (=> res!1003564 e!828817)))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1477324 (= res!1003564 (or (and (= (select (arr!47889 a!2862) index!646) (select (store (arr!47889 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47889 a!2862) index!646) (select (arr!47889 a!2862) j!93))) (not (= (select (arr!47889 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1477325 () Bool)

(declare-fun res!1003568 () Bool)

(assert (=> b!1477325 (=> (not res!1003568) (not e!828813))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1477325 (= res!1003568 (validKeyInArray!0 (select (arr!47889 a!2862) j!93)))))

(declare-fun lt!645276 () array!99229)

(declare-fun e!828815 () Bool)

(declare-fun lt!645278 () (_ BitVec 64))

(declare-fun b!1477326 () Bool)

(declare-datatypes ((SeekEntryResult!12152 0))(
  ( (MissingZero!12152 (index!50999 (_ BitVec 32))) (Found!12152 (index!51000 (_ BitVec 32))) (Intermediate!12152 (undefined!12964 Bool) (index!51001 (_ BitVec 32)) (x!132594 (_ BitVec 32))) (Undefined!12152) (MissingVacant!12152 (index!51002 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99229 (_ BitVec 32)) SeekEntryResult!12152)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99229 (_ BitVec 32)) SeekEntryResult!12152)

(assert (=> b!1477326 (= e!828815 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!645278 lt!645276 mask!2687) (seekEntryOrOpen!0 lt!645278 lt!645276 mask!2687)))))

(declare-fun lt!645280 () SeekEntryResult!12152)

(declare-fun b!1477327 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99229 (_ BitVec 32)) SeekEntryResult!12152)

(assert (=> b!1477327 (= e!828815 (= lt!645280 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!645278 lt!645276 mask!2687)))))

(declare-fun b!1477328 () Bool)

(assert (=> b!1477328 (= e!828811 (not true))))

(assert (=> b!1477328 e!828810))

(declare-fun res!1003570 () Bool)

(assert (=> b!1477328 (=> (not res!1003570) (not e!828810))))

(declare-fun lt!645275 () SeekEntryResult!12152)

(assert (=> b!1477328 (= res!1003570 (and (= lt!645275 (Found!12152 j!93)) (or (= (select (arr!47889 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47889 a!2862) intermediateBeforeIndex!19) (select (arr!47889 a!2862) j!93)))))))

(assert (=> b!1477328 (= lt!645275 (seekEntryOrOpen!0 (select (arr!47889 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99229 (_ BitVec 32)) Bool)

(assert (=> b!1477328 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!49592 0))(
  ( (Unit!49593) )
))
(declare-fun lt!645277 () Unit!49592)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99229 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49592)

(assert (=> b!1477328 (= lt!645277 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1477329 () Bool)

(declare-fun e!828814 () Bool)

(declare-fun e!828818 () Bool)

(assert (=> b!1477329 (= e!828814 e!828818)))

(declare-fun res!1003573 () Bool)

(assert (=> b!1477329 (=> (not res!1003573) (not e!828818))))

(declare-fun lt!645279 () SeekEntryResult!12152)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1477329 (= res!1003573 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47889 a!2862) j!93) mask!2687) (select (arr!47889 a!2862) j!93) a!2862 mask!2687) lt!645279))))

(assert (=> b!1477329 (= lt!645279 (Intermediate!12152 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1477330 () Bool)

(declare-fun res!1003569 () Bool)

(assert (=> b!1477330 (=> (not res!1003569) (not e!828813))))

(declare-datatypes ((List!34570 0))(
  ( (Nil!34567) (Cons!34566 (h!35934 (_ BitVec 64)) (t!49271 List!34570)) )
))
(declare-fun arrayNoDuplicates!0 (array!99229 (_ BitVec 32) List!34570) Bool)

(assert (=> b!1477330 (= res!1003569 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34567))))

(declare-fun b!1477331 () Bool)

(declare-fun res!1003574 () Bool)

(assert (=> b!1477331 (=> (not res!1003574) (not e!828813))))

(assert (=> b!1477331 (= res!1003574 (validKeyInArray!0 (select (arr!47889 a!2862) i!1006)))))

(declare-fun b!1477332 () Bool)

(declare-fun res!1003560 () Bool)

(assert (=> b!1477332 (=> (not res!1003560) (not e!828813))))

(assert (=> b!1477332 (= res!1003560 (and (= (size!48440 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48440 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48440 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1477333 () Bool)

(declare-fun res!1003565 () Bool)

(assert (=> b!1477333 (=> (not res!1003565) (not e!828813))))

(assert (=> b!1477333 (= res!1003565 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1477334 () Bool)

(declare-fun e!828812 () Bool)

(assert (=> b!1477334 (= e!828812 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1477335 () Bool)

(declare-fun res!1003563 () Bool)

(assert (=> b!1477335 (=> (not res!1003563) (not e!828818))))

(assert (=> b!1477335 (= res!1003563 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47889 a!2862) j!93) a!2862 mask!2687) lt!645279))))

(declare-fun b!1477336 () Bool)

(assert (=> b!1477336 (= e!828818 e!828811)))

(declare-fun res!1003561 () Bool)

(assert (=> b!1477336 (=> (not res!1003561) (not e!828811))))

(assert (=> b!1477336 (= res!1003561 (= lt!645280 (Intermediate!12152 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1477336 (= lt!645280 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!645278 mask!2687) lt!645278 lt!645276 mask!2687))))

(assert (=> b!1477336 (= lt!645278 (select (store (arr!47889 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1477337 () Bool)

(declare-fun res!1003572 () Bool)

(assert (=> b!1477337 (=> (not res!1003572) (not e!828811))))

(assert (=> b!1477337 (= res!1003572 e!828815)))

(declare-fun c!136403 () Bool)

(assert (=> b!1477337 (= c!136403 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1477338 () Bool)

(assert (=> b!1477338 (= e!828813 e!828814)))

(declare-fun res!1003566 () Bool)

(assert (=> b!1477338 (=> (not res!1003566) (not e!828814))))

(assert (=> b!1477338 (= res!1003566 (= (select (store (arr!47889 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1477338 (= lt!645276 (array!99230 (store (arr!47889 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48440 a!2862)))))

(declare-fun b!1477339 () Bool)

(assert (=> b!1477339 (= e!828817 e!828812)))

(declare-fun res!1003571 () Bool)

(assert (=> b!1477339 (=> (not res!1003571) (not e!828812))))

(assert (=> b!1477339 (= res!1003571 (= lt!645275 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47889 a!2862) j!93) a!2862 mask!2687)))))

(assert (= (and start!126206 res!1003575) b!1477332))

(assert (= (and b!1477332 res!1003560) b!1477331))

(assert (= (and b!1477331 res!1003574) b!1477325))

(assert (= (and b!1477325 res!1003568) b!1477333))

(assert (= (and b!1477333 res!1003565) b!1477330))

(assert (= (and b!1477330 res!1003569) b!1477323))

(assert (= (and b!1477323 res!1003562) b!1477338))

(assert (= (and b!1477338 res!1003566) b!1477329))

(assert (= (and b!1477329 res!1003573) b!1477335))

(assert (= (and b!1477335 res!1003563) b!1477336))

(assert (= (and b!1477336 res!1003561) b!1477337))

(assert (= (and b!1477337 c!136403) b!1477327))

(assert (= (and b!1477337 (not c!136403)) b!1477326))

(assert (= (and b!1477337 res!1003572) b!1477322))

(assert (= (and b!1477322 res!1003567) b!1477328))

(assert (= (and b!1477328 res!1003570) b!1477324))

(assert (= (and b!1477324 (not res!1003564)) b!1477339))

(assert (= (and b!1477339 res!1003571) b!1477334))

(declare-fun m!1363331 () Bool)

(assert (=> b!1477329 m!1363331))

(assert (=> b!1477329 m!1363331))

(declare-fun m!1363333 () Bool)

(assert (=> b!1477329 m!1363333))

(assert (=> b!1477329 m!1363333))

(assert (=> b!1477329 m!1363331))

(declare-fun m!1363335 () Bool)

(assert (=> b!1477329 m!1363335))

(assert (=> b!1477325 m!1363331))

(assert (=> b!1477325 m!1363331))

(declare-fun m!1363337 () Bool)

(assert (=> b!1477325 m!1363337))

(declare-fun m!1363339 () Bool)

(assert (=> b!1477326 m!1363339))

(declare-fun m!1363341 () Bool)

(assert (=> b!1477326 m!1363341))

(declare-fun m!1363343 () Bool)

(assert (=> b!1477330 m!1363343))

(declare-fun m!1363345 () Bool)

(assert (=> b!1477331 m!1363345))

(assert (=> b!1477331 m!1363345))

(declare-fun m!1363347 () Bool)

(assert (=> b!1477331 m!1363347))

(declare-fun m!1363349 () Bool)

(assert (=> b!1477338 m!1363349))

(declare-fun m!1363351 () Bool)

(assert (=> b!1477338 m!1363351))

(assert (=> b!1477339 m!1363331))

(assert (=> b!1477339 m!1363331))

(declare-fun m!1363353 () Bool)

(assert (=> b!1477339 m!1363353))

(declare-fun m!1363355 () Bool)

(assert (=> b!1477333 m!1363355))

(declare-fun m!1363357 () Bool)

(assert (=> b!1477328 m!1363357))

(declare-fun m!1363359 () Bool)

(assert (=> b!1477328 m!1363359))

(assert (=> b!1477328 m!1363331))

(declare-fun m!1363361 () Bool)

(assert (=> b!1477328 m!1363361))

(declare-fun m!1363363 () Bool)

(assert (=> b!1477328 m!1363363))

(assert (=> b!1477328 m!1363331))

(declare-fun m!1363365 () Bool)

(assert (=> start!126206 m!1363365))

(declare-fun m!1363367 () Bool)

(assert (=> start!126206 m!1363367))

(declare-fun m!1363369 () Bool)

(assert (=> b!1477336 m!1363369))

(assert (=> b!1477336 m!1363369))

(declare-fun m!1363371 () Bool)

(assert (=> b!1477336 m!1363371))

(assert (=> b!1477336 m!1363349))

(declare-fun m!1363373 () Bool)

(assert (=> b!1477336 m!1363373))

(assert (=> b!1477335 m!1363331))

(assert (=> b!1477335 m!1363331))

(declare-fun m!1363375 () Bool)

(assert (=> b!1477335 m!1363375))

(declare-fun m!1363377 () Bool)

(assert (=> b!1477324 m!1363377))

(assert (=> b!1477324 m!1363349))

(declare-fun m!1363379 () Bool)

(assert (=> b!1477324 m!1363379))

(assert (=> b!1477324 m!1363331))

(declare-fun m!1363381 () Bool)

(assert (=> b!1477327 m!1363381))

(push 1)

