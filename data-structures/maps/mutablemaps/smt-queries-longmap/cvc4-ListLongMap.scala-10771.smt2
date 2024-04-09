; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126170 () Bool)

(assert start!126170)

(declare-fun b!1476350 () Bool)

(declare-fun res!1002702 () Bool)

(declare-fun e!828325 () Bool)

(assert (=> b!1476350 (=> (not res!1002702) (not e!828325))))

(declare-datatypes ((array!99193 0))(
  ( (array!99194 (arr!47871 (Array (_ BitVec 32) (_ BitVec 64))) (size!48422 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99193)

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1476350 (= res!1002702 (validKeyInArray!0 (select (arr!47871 a!2862) i!1006)))))

(declare-fun b!1476351 () Bool)

(declare-fun res!1002706 () Bool)

(assert (=> b!1476351 (=> (not res!1002706) (not e!828325))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1476351 (= res!1002706 (and (= (size!48422 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48422 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48422 a!2862)) (not (= i!1006 j!93))))))

(declare-fun lt!644955 () array!99193)

(declare-fun e!828328 () Bool)

(declare-fun lt!644953 () (_ BitVec 64))

(declare-fun b!1476352 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12134 0))(
  ( (MissingZero!12134 (index!50927 (_ BitVec 32))) (Found!12134 (index!50928 (_ BitVec 32))) (Intermediate!12134 (undefined!12946 Bool) (index!50929 (_ BitVec 32)) (x!132528 (_ BitVec 32))) (Undefined!12134) (MissingVacant!12134 (index!50930 (_ BitVec 32))) )
))
(declare-fun lt!644956 () SeekEntryResult!12134)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99193 (_ BitVec 32)) SeekEntryResult!12134)

(assert (=> b!1476352 (= e!828328 (= lt!644956 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!644953 lt!644955 mask!2687)))))

(declare-fun b!1476353 () Bool)

(declare-fun res!1002710 () Bool)

(assert (=> b!1476353 (=> (not res!1002710) (not e!828325))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99193 (_ BitVec 32)) Bool)

(assert (=> b!1476353 (= res!1002710 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1476354 () Bool)

(declare-fun e!828330 () Bool)

(declare-fun e!828324 () Bool)

(assert (=> b!1476354 (= e!828330 e!828324)))

(declare-fun res!1002711 () Bool)

(assert (=> b!1476354 (=> (not res!1002711) (not e!828324))))

(declare-fun lt!644952 () SeekEntryResult!12134)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1476354 (= res!1002711 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47871 a!2862) j!93) mask!2687) (select (arr!47871 a!2862) j!93) a!2862 mask!2687) lt!644952))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1476354 (= lt!644952 (Intermediate!12134 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1476355 () Bool)

(declare-fun res!1002701 () Bool)

(declare-fun e!828326 () Bool)

(assert (=> b!1476355 (=> (not res!1002701) (not e!828326))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1476355 (= res!1002701 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1476356 () Bool)

(assert (=> b!1476356 (= e!828326 (not true))))

(declare-fun e!828329 () Bool)

(assert (=> b!1476356 e!828329))

(declare-fun res!1002708 () Bool)

(assert (=> b!1476356 (=> (not res!1002708) (not e!828329))))

(declare-fun lt!644954 () SeekEntryResult!12134)

(assert (=> b!1476356 (= res!1002708 (and (= lt!644954 (Found!12134 j!93)) (or (= (select (arr!47871 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47871 a!2862) intermediateBeforeIndex!19) (select (arr!47871 a!2862) j!93)))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99193 (_ BitVec 32)) SeekEntryResult!12134)

(assert (=> b!1476356 (= lt!644954 (seekEntryOrOpen!0 (select (arr!47871 a!2862) j!93) a!2862 mask!2687))))

(assert (=> b!1476356 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!49556 0))(
  ( (Unit!49557) )
))
(declare-fun lt!644951 () Unit!49556)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99193 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49556)

(assert (=> b!1476356 (= lt!644951 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1476358 () Bool)

(declare-fun res!1002697 () Bool)

(assert (=> b!1476358 (=> (not res!1002697) (not e!828326))))

(assert (=> b!1476358 (= res!1002697 e!828328)))

(declare-fun c!136349 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1476358 (= c!136349 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1476359 () Bool)

(declare-fun e!828327 () Bool)

(assert (=> b!1476359 (= e!828329 e!828327)))

(declare-fun res!1002705 () Bool)

(assert (=> b!1476359 (=> res!1002705 e!828327)))

(assert (=> b!1476359 (= res!1002705 (or (and (= (select (arr!47871 a!2862) index!646) (select (store (arr!47871 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47871 a!2862) index!646) (select (arr!47871 a!2862) j!93))) (not (= (select (arr!47871 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1476360 () Bool)

(declare-fun e!828332 () Bool)

(assert (=> b!1476360 (= e!828327 e!828332)))

(declare-fun res!1002699 () Bool)

(assert (=> b!1476360 (=> (not res!1002699) (not e!828332))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99193 (_ BitVec 32)) SeekEntryResult!12134)

(assert (=> b!1476360 (= res!1002699 (= lt!644954 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47871 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1476361 () Bool)

(assert (=> b!1476361 (= e!828332 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1476362 () Bool)

(assert (=> b!1476362 (= e!828324 e!828326)))

(declare-fun res!1002709 () Bool)

(assert (=> b!1476362 (=> (not res!1002709) (not e!828326))))

(assert (=> b!1476362 (= res!1002709 (= lt!644956 (Intermediate!12134 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1476362 (= lt!644956 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!644953 mask!2687) lt!644953 lt!644955 mask!2687))))

(assert (=> b!1476362 (= lt!644953 (select (store (arr!47871 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1476363 () Bool)

(declare-fun res!1002707 () Bool)

(assert (=> b!1476363 (=> (not res!1002707) (not e!828325))))

(declare-datatypes ((List!34552 0))(
  ( (Nil!34549) (Cons!34548 (h!35916 (_ BitVec 64)) (t!49253 List!34552)) )
))
(declare-fun arrayNoDuplicates!0 (array!99193 (_ BitVec 32) List!34552) Bool)

(assert (=> b!1476363 (= res!1002707 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34549))))

(declare-fun b!1476364 () Bool)

(declare-fun res!1002700 () Bool)

(assert (=> b!1476364 (=> (not res!1002700) (not e!828325))))

(assert (=> b!1476364 (= res!1002700 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48422 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48422 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48422 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1476365 () Bool)

(declare-fun res!1002704 () Bool)

(assert (=> b!1476365 (=> (not res!1002704) (not e!828325))))

(assert (=> b!1476365 (= res!1002704 (validKeyInArray!0 (select (arr!47871 a!2862) j!93)))))

(declare-fun b!1476366 () Bool)

(assert (=> b!1476366 (= e!828325 e!828330)))

(declare-fun res!1002698 () Bool)

(assert (=> b!1476366 (=> (not res!1002698) (not e!828330))))

(assert (=> b!1476366 (= res!1002698 (= (select (store (arr!47871 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1476366 (= lt!644955 (array!99194 (store (arr!47871 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48422 a!2862)))))

(declare-fun b!1476367 () Bool)

(assert (=> b!1476367 (= e!828328 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!644953 lt!644955 mask!2687) (seekEntryOrOpen!0 lt!644953 lt!644955 mask!2687)))))

(declare-fun res!1002703 () Bool)

(assert (=> start!126170 (=> (not res!1002703) (not e!828325))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126170 (= res!1002703 (validMask!0 mask!2687))))

(assert (=> start!126170 e!828325))

(assert (=> start!126170 true))

(declare-fun array_inv!36816 (array!99193) Bool)

(assert (=> start!126170 (array_inv!36816 a!2862)))

(declare-fun b!1476357 () Bool)

(declare-fun res!1002696 () Bool)

(assert (=> b!1476357 (=> (not res!1002696) (not e!828324))))

(assert (=> b!1476357 (= res!1002696 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47871 a!2862) j!93) a!2862 mask!2687) lt!644952))))

(assert (= (and start!126170 res!1002703) b!1476351))

(assert (= (and b!1476351 res!1002706) b!1476350))

(assert (= (and b!1476350 res!1002702) b!1476365))

(assert (= (and b!1476365 res!1002704) b!1476353))

(assert (= (and b!1476353 res!1002710) b!1476363))

(assert (= (and b!1476363 res!1002707) b!1476364))

(assert (= (and b!1476364 res!1002700) b!1476366))

(assert (= (and b!1476366 res!1002698) b!1476354))

(assert (= (and b!1476354 res!1002711) b!1476357))

(assert (= (and b!1476357 res!1002696) b!1476362))

(assert (= (and b!1476362 res!1002709) b!1476358))

(assert (= (and b!1476358 c!136349) b!1476352))

(assert (= (and b!1476358 (not c!136349)) b!1476367))

(assert (= (and b!1476358 res!1002697) b!1476355))

(assert (= (and b!1476355 res!1002701) b!1476356))

(assert (= (and b!1476356 res!1002708) b!1476359))

(assert (= (and b!1476359 (not res!1002705)) b!1476360))

(assert (= (and b!1476360 res!1002699) b!1476361))

(declare-fun m!1362395 () Bool)

(assert (=> b!1476365 m!1362395))

(assert (=> b!1476365 m!1362395))

(declare-fun m!1362397 () Bool)

(assert (=> b!1476365 m!1362397))

(declare-fun m!1362399 () Bool)

(assert (=> b!1476353 m!1362399))

(assert (=> b!1476360 m!1362395))

(assert (=> b!1476360 m!1362395))

(declare-fun m!1362401 () Bool)

(assert (=> b!1476360 m!1362401))

(declare-fun m!1362403 () Bool)

(assert (=> b!1476352 m!1362403))

(declare-fun m!1362405 () Bool)

(assert (=> b!1476356 m!1362405))

(declare-fun m!1362407 () Bool)

(assert (=> b!1476356 m!1362407))

(assert (=> b!1476356 m!1362395))

(declare-fun m!1362409 () Bool)

(assert (=> b!1476356 m!1362409))

(declare-fun m!1362411 () Bool)

(assert (=> b!1476356 m!1362411))

(assert (=> b!1476356 m!1362395))

(declare-fun m!1362413 () Bool)

(assert (=> start!126170 m!1362413))

(declare-fun m!1362415 () Bool)

(assert (=> start!126170 m!1362415))

(declare-fun m!1362417 () Bool)

(assert (=> b!1476367 m!1362417))

(declare-fun m!1362419 () Bool)

(assert (=> b!1476367 m!1362419))

(declare-fun m!1362421 () Bool)

(assert (=> b!1476350 m!1362421))

(assert (=> b!1476350 m!1362421))

(declare-fun m!1362423 () Bool)

(assert (=> b!1476350 m!1362423))

(declare-fun m!1362425 () Bool)

(assert (=> b!1476366 m!1362425))

(declare-fun m!1362427 () Bool)

(assert (=> b!1476366 m!1362427))

(declare-fun m!1362429 () Bool)

(assert (=> b!1476359 m!1362429))

(assert (=> b!1476359 m!1362425))

(declare-fun m!1362431 () Bool)

(assert (=> b!1476359 m!1362431))

(assert (=> b!1476359 m!1362395))

(declare-fun m!1362433 () Bool)

(assert (=> b!1476363 m!1362433))

(assert (=> b!1476354 m!1362395))

(assert (=> b!1476354 m!1362395))

(declare-fun m!1362435 () Bool)

(assert (=> b!1476354 m!1362435))

(assert (=> b!1476354 m!1362435))

(assert (=> b!1476354 m!1362395))

(declare-fun m!1362437 () Bool)

(assert (=> b!1476354 m!1362437))

(declare-fun m!1362439 () Bool)

(assert (=> b!1476362 m!1362439))

(assert (=> b!1476362 m!1362439))

(declare-fun m!1362441 () Bool)

(assert (=> b!1476362 m!1362441))

(assert (=> b!1476362 m!1362425))

(declare-fun m!1362443 () Bool)

(assert (=> b!1476362 m!1362443))

(assert (=> b!1476357 m!1362395))

(assert (=> b!1476357 m!1362395))

(declare-fun m!1362445 () Bool)

(assert (=> b!1476357 m!1362445))

(push 1)

