; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124826 () Bool)

(assert start!124826)

(declare-fun b!1447486 () Bool)

(declare-fun res!979232 () Bool)

(declare-fun e!815237 () Bool)

(assert (=> b!1447486 (=> (not res!979232) (not e!815237))))

(declare-datatypes ((array!98191 0))(
  ( (array!98192 (arr!47379 (Array (_ BitVec 32) (_ BitVec 64))) (size!47930 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98191)

(declare-datatypes ((List!34060 0))(
  ( (Nil!34057) (Cons!34056 (h!35406 (_ BitVec 64)) (t!48761 List!34060)) )
))
(declare-fun arrayNoDuplicates!0 (array!98191 (_ BitVec 32) List!34060) Bool)

(assert (=> b!1447486 (= res!979232 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34057))))

(declare-fun b!1447487 () Bool)

(declare-fun res!979247 () Bool)

(declare-fun e!815242 () Bool)

(assert (=> b!1447487 (=> (not res!979247) (not e!815242))))

(declare-fun e!815240 () Bool)

(assert (=> b!1447487 (= res!979247 e!815240)))

(declare-fun c!133640 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1447487 (= c!133640 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1447488 () Bool)

(declare-fun res!979248 () Bool)

(assert (=> b!1447488 (=> (not res!979248) (not e!815237))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1447488 (= res!979248 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47930 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47930 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47930 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1447489 () Bool)

(declare-fun e!815238 () Bool)

(declare-fun e!815246 () Bool)

(assert (=> b!1447489 (= e!815238 e!815246)))

(declare-fun res!979235 () Bool)

(assert (=> b!1447489 (=> (not res!979235) (not e!815246))))

(declare-datatypes ((SeekEntryResult!11654 0))(
  ( (MissingZero!11654 (index!49007 (_ BitVec 32))) (Found!11654 (index!49008 (_ BitVec 32))) (Intermediate!11654 (undefined!12466 Bool) (index!49009 (_ BitVec 32)) (x!130682 (_ BitVec 32))) (Undefined!11654) (MissingVacant!11654 (index!49010 (_ BitVec 32))) )
))
(declare-fun lt!635155 () SeekEntryResult!11654)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98191 (_ BitVec 32)) SeekEntryResult!11654)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1447489 (= res!979235 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47379 a!2862) j!93) mask!2687) (select (arr!47379 a!2862) j!93) a!2862 mask!2687) lt!635155))))

(assert (=> b!1447489 (= lt!635155 (Intermediate!11654 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun e!815243 () Bool)

(declare-fun b!1447490 () Bool)

(assert (=> b!1447490 (= e!815243 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1447491 () Bool)

(declare-fun e!815245 () Bool)

(assert (=> b!1447491 (= e!815245 true)))

(declare-fun lt!635149 () SeekEntryResult!11654)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98191 (_ BitVec 32)) SeekEntryResult!11654)

(assert (=> b!1447491 (= lt!635149 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateBeforeIndex!19 (select (arr!47379 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1447492 () Bool)

(declare-fun lt!635152 () array!98191)

(declare-fun lt!635154 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98191 (_ BitVec 32)) SeekEntryResult!11654)

(assert (=> b!1447492 (= e!815240 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!635154 lt!635152 mask!2687) (seekEntryOrOpen!0 lt!635154 lt!635152 mask!2687)))))

(declare-fun b!1447493 () Bool)

(declare-fun res!979238 () Bool)

(assert (=> b!1447493 (=> (not res!979238) (not e!815237))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1447493 (= res!979238 (validKeyInArray!0 (select (arr!47379 a!2862) j!93)))))

(declare-fun res!979233 () Bool)

(assert (=> start!124826 (=> (not res!979233) (not e!815237))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124826 (= res!979233 (validMask!0 mask!2687))))

(assert (=> start!124826 e!815237))

(assert (=> start!124826 true))

(declare-fun array_inv!36324 (array!98191) Bool)

(assert (=> start!124826 (array_inv!36324 a!2862)))

(declare-fun b!1447494 () Bool)

(declare-fun res!979241 () Bool)

(assert (=> b!1447494 (=> (not res!979241) (not e!815246))))

(assert (=> b!1447494 (= res!979241 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47379 a!2862) j!93) a!2862 mask!2687) lt!635155))))

(declare-fun b!1447495 () Bool)

(declare-fun e!815239 () Bool)

(assert (=> b!1447495 (= e!815239 e!815243)))

(declare-fun res!979234 () Bool)

(assert (=> b!1447495 (=> (not res!979234) (not e!815243))))

(declare-fun lt!635150 () SeekEntryResult!11654)

(assert (=> b!1447495 (= res!979234 (= lt!635150 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47379 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1447496 () Bool)

(assert (=> b!1447496 (= e!815246 e!815242)))

(declare-fun res!979244 () Bool)

(assert (=> b!1447496 (=> (not res!979244) (not e!815242))))

(declare-fun lt!635153 () SeekEntryResult!11654)

(assert (=> b!1447496 (= res!979244 (= lt!635153 (Intermediate!11654 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1447496 (= lt!635153 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!635154 mask!2687) lt!635154 lt!635152 mask!2687))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1447496 (= lt!635154 (select (store (arr!47379 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1447497 () Bool)

(assert (=> b!1447497 (= e!815242 (not e!815245))))

(declare-fun res!979240 () Bool)

(assert (=> b!1447497 (=> res!979240 e!815245)))

(assert (=> b!1447497 (= res!979240 (or (and (= (select (arr!47379 a!2862) index!646) (select (store (arr!47379 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47379 a!2862) index!646) (select (arr!47379 a!2862) j!93))) (not (= (select (arr!47379 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47379 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!815244 () Bool)

(assert (=> b!1447497 e!815244))

(declare-fun res!979243 () Bool)

(assert (=> b!1447497 (=> (not res!979243) (not e!815244))))

(assert (=> b!1447497 (= res!979243 (and (= lt!635150 (Found!11654 j!93)) (or (= (select (arr!47379 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47379 a!2862) intermediateBeforeIndex!19) (select (arr!47379 a!2862) j!93)))))))

(assert (=> b!1447497 (= lt!635150 (seekEntryOrOpen!0 (select (arr!47379 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98191 (_ BitVec 32)) Bool)

(assert (=> b!1447497 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!48752 0))(
  ( (Unit!48753) )
))
(declare-fun lt!635151 () Unit!48752)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98191 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48752)

(assert (=> b!1447497 (= lt!635151 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1447498 () Bool)

(assert (=> b!1447498 (= e!815244 e!815239)))

(declare-fun res!979237 () Bool)

(assert (=> b!1447498 (=> res!979237 e!815239)))

(assert (=> b!1447498 (= res!979237 (or (and (= (select (arr!47379 a!2862) index!646) (select (store (arr!47379 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47379 a!2862) index!646) (select (arr!47379 a!2862) j!93))) (not (= (select (arr!47379 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1447499 () Bool)

(declare-fun res!979239 () Bool)

(assert (=> b!1447499 (=> (not res!979239) (not e!815237))))

(assert (=> b!1447499 (= res!979239 (validKeyInArray!0 (select (arr!47379 a!2862) i!1006)))))

(declare-fun b!1447500 () Bool)

(declare-fun res!979236 () Bool)

(assert (=> b!1447500 (=> (not res!979236) (not e!815242))))

(assert (=> b!1447500 (= res!979236 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1447501 () Bool)

(declare-fun res!979242 () Bool)

(assert (=> b!1447501 (=> (not res!979242) (not e!815237))))

(assert (=> b!1447501 (= res!979242 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1447502 () Bool)

(assert (=> b!1447502 (= e!815240 (= lt!635153 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!635154 lt!635152 mask!2687)))))

(declare-fun b!1447503 () Bool)

(declare-fun res!979245 () Bool)

(assert (=> b!1447503 (=> (not res!979245) (not e!815237))))

(assert (=> b!1447503 (= res!979245 (and (= (size!47930 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47930 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47930 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1447504 () Bool)

(assert (=> b!1447504 (= e!815237 e!815238)))

(declare-fun res!979246 () Bool)

(assert (=> b!1447504 (=> (not res!979246) (not e!815238))))

(assert (=> b!1447504 (= res!979246 (= (select (store (arr!47379 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1447504 (= lt!635152 (array!98192 (store (arr!47379 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47930 a!2862)))))

(assert (= (and start!124826 res!979233) b!1447503))

(assert (= (and b!1447503 res!979245) b!1447499))

(assert (= (and b!1447499 res!979239) b!1447493))

(assert (= (and b!1447493 res!979238) b!1447501))

(assert (= (and b!1447501 res!979242) b!1447486))

(assert (= (and b!1447486 res!979232) b!1447488))

(assert (= (and b!1447488 res!979248) b!1447504))

(assert (= (and b!1447504 res!979246) b!1447489))

(assert (= (and b!1447489 res!979235) b!1447494))

(assert (= (and b!1447494 res!979241) b!1447496))

(assert (= (and b!1447496 res!979244) b!1447487))

(assert (= (and b!1447487 c!133640) b!1447502))

(assert (= (and b!1447487 (not c!133640)) b!1447492))

(assert (= (and b!1447487 res!979247) b!1447500))

(assert (= (and b!1447500 res!979236) b!1447497))

(assert (= (and b!1447497 res!979243) b!1447498))

(assert (= (and b!1447498 (not res!979237)) b!1447495))

(assert (= (and b!1447495 res!979234) b!1447490))

(assert (= (and b!1447497 (not res!979240)) b!1447491))

(declare-fun m!1336353 () Bool)

(assert (=> b!1447492 m!1336353))

(declare-fun m!1336355 () Bool)

(assert (=> b!1447492 m!1336355))

(declare-fun m!1336357 () Bool)

(assert (=> b!1447502 m!1336357))

(declare-fun m!1336359 () Bool)

(assert (=> b!1447489 m!1336359))

(assert (=> b!1447489 m!1336359))

(declare-fun m!1336361 () Bool)

(assert (=> b!1447489 m!1336361))

(assert (=> b!1447489 m!1336361))

(assert (=> b!1447489 m!1336359))

(declare-fun m!1336363 () Bool)

(assert (=> b!1447489 m!1336363))

(assert (=> b!1447493 m!1336359))

(assert (=> b!1447493 m!1336359))

(declare-fun m!1336365 () Bool)

(assert (=> b!1447493 m!1336365))

(declare-fun m!1336367 () Bool)

(assert (=> b!1447498 m!1336367))

(declare-fun m!1336369 () Bool)

(assert (=> b!1447498 m!1336369))

(declare-fun m!1336371 () Bool)

(assert (=> b!1447498 m!1336371))

(assert (=> b!1447498 m!1336359))

(assert (=> b!1447494 m!1336359))

(assert (=> b!1447494 m!1336359))

(declare-fun m!1336373 () Bool)

(assert (=> b!1447494 m!1336373))

(declare-fun m!1336375 () Bool)

(assert (=> b!1447499 m!1336375))

(assert (=> b!1447499 m!1336375))

(declare-fun m!1336377 () Bool)

(assert (=> b!1447499 m!1336377))

(assert (=> b!1447495 m!1336359))

(assert (=> b!1447495 m!1336359))

(declare-fun m!1336379 () Bool)

(assert (=> b!1447495 m!1336379))

(declare-fun m!1336381 () Bool)

(assert (=> start!124826 m!1336381))

(declare-fun m!1336383 () Bool)

(assert (=> start!124826 m!1336383))

(assert (=> b!1447491 m!1336359))

(assert (=> b!1447491 m!1336359))

(declare-fun m!1336385 () Bool)

(assert (=> b!1447491 m!1336385))

(declare-fun m!1336387 () Bool)

(assert (=> b!1447497 m!1336387))

(assert (=> b!1447497 m!1336369))

(declare-fun m!1336389 () Bool)

(assert (=> b!1447497 m!1336389))

(assert (=> b!1447497 m!1336371))

(assert (=> b!1447497 m!1336367))

(assert (=> b!1447497 m!1336359))

(declare-fun m!1336391 () Bool)

(assert (=> b!1447497 m!1336391))

(declare-fun m!1336393 () Bool)

(assert (=> b!1447497 m!1336393))

(assert (=> b!1447497 m!1336359))

(declare-fun m!1336395 () Bool)

(assert (=> b!1447501 m!1336395))

(assert (=> b!1447504 m!1336369))

(declare-fun m!1336397 () Bool)

(assert (=> b!1447504 m!1336397))

(declare-fun m!1336399 () Bool)

(assert (=> b!1447486 m!1336399))

(declare-fun m!1336401 () Bool)

(assert (=> b!1447496 m!1336401))

(assert (=> b!1447496 m!1336401))

(declare-fun m!1336403 () Bool)

(assert (=> b!1447496 m!1336403))

(assert (=> b!1447496 m!1336369))

(declare-fun m!1336405 () Bool)

(assert (=> b!1447496 m!1336405))

(push 1)

