; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124666 () Bool)

(assert start!124666)

(declare-fun b!1443230 () Bool)

(declare-fun res!975457 () Bool)

(declare-fun e!813331 () Bool)

(assert (=> b!1443230 (=> (not res!975457) (not e!813331))))

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11574 0))(
  ( (MissingZero!11574 (index!48687 (_ BitVec 32))) (Found!11574 (index!48688 (_ BitVec 32))) (Intermediate!11574 (undefined!12386 Bool) (index!48689 (_ BitVec 32)) (x!130394 (_ BitVec 32))) (Undefined!11574) (MissingVacant!11574 (index!48690 (_ BitVec 32))) )
))
(declare-fun lt!633758 () SeekEntryResult!11574)

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!98031 0))(
  ( (array!98032 (arr!47299 (Array (_ BitVec 32) (_ BitVec 64))) (size!47850 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98031)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98031 (_ BitVec 32)) SeekEntryResult!11574)

(assert (=> b!1443230 (= res!975457 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47299 a!2862) j!93) a!2862 mask!2687) lt!633758))))

(declare-fun b!1443231 () Bool)

(declare-fun e!813335 () Bool)

(assert (=> b!1443231 (= e!813331 e!813335)))

(declare-fun res!975456 () Bool)

(assert (=> b!1443231 (=> (not res!975456) (not e!813335))))

(declare-fun lt!633757 () SeekEntryResult!11574)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1443231 (= res!975456 (= lt!633757 (Intermediate!11574 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!633756 () (_ BitVec 64))

(declare-fun lt!633759 () array!98031)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1443231 (= lt!633757 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!633756 mask!2687) lt!633756 lt!633759 mask!2687))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1443231 (= lt!633756 (select (store (arr!47299 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1443232 () Bool)

(declare-fun res!975471 () Bool)

(declare-fun e!813329 () Bool)

(assert (=> b!1443232 (=> (not res!975471) (not e!813329))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1443232 (= res!975471 (validKeyInArray!0 (select (arr!47299 a!2862) j!93)))))

(declare-fun b!1443233 () Bool)

(declare-fun res!975469 () Bool)

(declare-fun e!813334 () Bool)

(assert (=> b!1443233 (=> (not res!975469) (not e!813334))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98031 (_ BitVec 32)) SeekEntryResult!11574)

(assert (=> b!1443233 (= res!975469 (= (seekEntryOrOpen!0 (select (arr!47299 a!2862) j!93) a!2862 mask!2687) (Found!11574 j!93)))))

(declare-fun b!1443234 () Bool)

(declare-fun res!975464 () Bool)

(assert (=> b!1443234 (=> (not res!975464) (not e!813329))))

(assert (=> b!1443234 (= res!975464 (and (= (size!47850 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47850 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47850 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1443235 () Bool)

(declare-fun e!813330 () Bool)

(assert (=> b!1443235 (= e!813330 true)))

(declare-fun lt!633760 () SeekEntryResult!11574)

(assert (=> b!1443235 (= lt!633760 (seekEntryOrOpen!0 lt!633756 lt!633759 mask!2687))))

(declare-fun b!1443236 () Bool)

(declare-fun res!975467 () Bool)

(assert (=> b!1443236 (=> (not res!975467) (not e!813335))))

(declare-fun e!813333 () Bool)

(assert (=> b!1443236 (= res!975467 e!813333)))

(declare-fun c!133400 () Bool)

(assert (=> b!1443236 (= c!133400 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1443237 () Bool)

(assert (=> b!1443237 (= e!813333 (= lt!633757 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!633756 lt!633759 mask!2687)))))

(declare-fun b!1443238 () Bool)

(assert (=> b!1443238 (= e!813335 (not e!813330))))

(declare-fun res!975461 () Bool)

(assert (=> b!1443238 (=> res!975461 e!813330)))

(assert (=> b!1443238 (= res!975461 (or (not (= (select (arr!47299 a!2862) index!646) (select (store (arr!47299 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (not (= (select (arr!47299 a!2862) index!646) (select (arr!47299 a!2862) j!93)))))))

(assert (=> b!1443238 e!813334))

(declare-fun res!975463 () Bool)

(assert (=> b!1443238 (=> (not res!975463) (not e!813334))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98031 (_ BitVec 32)) Bool)

(assert (=> b!1443238 (= res!975463 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48592 0))(
  ( (Unit!48593) )
))
(declare-fun lt!633755 () Unit!48592)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98031 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48592)

(assert (=> b!1443238 (= lt!633755 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1443239 () Bool)

(declare-fun e!813328 () Bool)

(assert (=> b!1443239 (= e!813329 e!813328)))

(declare-fun res!975462 () Bool)

(assert (=> b!1443239 (=> (not res!975462) (not e!813328))))

(assert (=> b!1443239 (= res!975462 (= (select (store (arr!47299 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1443239 (= lt!633759 (array!98032 (store (arr!47299 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47850 a!2862)))))

(declare-fun b!1443240 () Bool)

(assert (=> b!1443240 (= e!813328 e!813331)))

(declare-fun res!975466 () Bool)

(assert (=> b!1443240 (=> (not res!975466) (not e!813331))))

(assert (=> b!1443240 (= res!975466 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47299 a!2862) j!93) mask!2687) (select (arr!47299 a!2862) j!93) a!2862 mask!2687) lt!633758))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1443240 (= lt!633758 (Intermediate!11574 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1443241 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98031 (_ BitVec 32)) SeekEntryResult!11574)

(assert (=> b!1443241 (= e!813333 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!633756 lt!633759 mask!2687) (seekEntryOrOpen!0 lt!633756 lt!633759 mask!2687)))))

(declare-fun b!1443242 () Bool)

(declare-fun res!975468 () Bool)

(assert (=> b!1443242 (=> (not res!975468) (not e!813329))))

(declare-datatypes ((List!33980 0))(
  ( (Nil!33977) (Cons!33976 (h!35326 (_ BitVec 64)) (t!48681 List!33980)) )
))
(declare-fun arrayNoDuplicates!0 (array!98031 (_ BitVec 32) List!33980) Bool)

(assert (=> b!1443242 (= res!975468 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33977))))

(declare-fun b!1443243 () Bool)

(declare-fun res!975459 () Bool)

(assert (=> b!1443243 (=> (not res!975459) (not e!813335))))

(assert (=> b!1443243 (= res!975459 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1443244 () Bool)

(declare-fun res!975465 () Bool)

(assert (=> b!1443244 (=> (not res!975465) (not e!813329))))

(assert (=> b!1443244 (= res!975465 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47850 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47850 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47850 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun res!975458 () Bool)

(assert (=> start!124666 (=> (not res!975458) (not e!813329))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124666 (= res!975458 (validMask!0 mask!2687))))

(assert (=> start!124666 e!813329))

(assert (=> start!124666 true))

(declare-fun array_inv!36244 (array!98031) Bool)

(assert (=> start!124666 (array_inv!36244 a!2862)))

(declare-fun b!1443245 () Bool)

(declare-fun res!975460 () Bool)

(assert (=> b!1443245 (=> (not res!975460) (not e!813329))))

(assert (=> b!1443245 (= res!975460 (validKeyInArray!0 (select (arr!47299 a!2862) i!1006)))))

(declare-fun b!1443246 () Bool)

(assert (=> b!1443246 (= e!813334 (or (= (select (arr!47299 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47299 a!2862) intermediateBeforeIndex!19) (select (arr!47299 a!2862) j!93))))))

(declare-fun b!1443247 () Bool)

(declare-fun res!975470 () Bool)

(assert (=> b!1443247 (=> (not res!975470) (not e!813329))))

(assert (=> b!1443247 (= res!975470 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(assert (= (and start!124666 res!975458) b!1443234))

(assert (= (and b!1443234 res!975464) b!1443245))

(assert (= (and b!1443245 res!975460) b!1443232))

(assert (= (and b!1443232 res!975471) b!1443247))

(assert (= (and b!1443247 res!975470) b!1443242))

(assert (= (and b!1443242 res!975468) b!1443244))

(assert (= (and b!1443244 res!975465) b!1443239))

(assert (= (and b!1443239 res!975462) b!1443240))

(assert (= (and b!1443240 res!975466) b!1443230))

(assert (= (and b!1443230 res!975457) b!1443231))

(assert (= (and b!1443231 res!975456) b!1443236))

(assert (= (and b!1443236 c!133400) b!1443237))

(assert (= (and b!1443236 (not c!133400)) b!1443241))

(assert (= (and b!1443236 res!975467) b!1443243))

(assert (= (and b!1443243 res!975459) b!1443238))

(assert (= (and b!1443238 res!975463) b!1443233))

(assert (= (and b!1443233 res!975469) b!1443246))

(assert (= (and b!1443238 (not res!975461)) b!1443235))

(declare-fun m!1332375 () Bool)

(assert (=> b!1443240 m!1332375))

(assert (=> b!1443240 m!1332375))

(declare-fun m!1332377 () Bool)

(assert (=> b!1443240 m!1332377))

(assert (=> b!1443240 m!1332377))

(assert (=> b!1443240 m!1332375))

(declare-fun m!1332379 () Bool)

(assert (=> b!1443240 m!1332379))

(declare-fun m!1332381 () Bool)

(assert (=> b!1443237 m!1332381))

(declare-fun m!1332383 () Bool)

(assert (=> b!1443238 m!1332383))

(declare-fun m!1332385 () Bool)

(assert (=> b!1443238 m!1332385))

(declare-fun m!1332387 () Bool)

(assert (=> b!1443238 m!1332387))

(declare-fun m!1332389 () Bool)

(assert (=> b!1443238 m!1332389))

(declare-fun m!1332391 () Bool)

(assert (=> b!1443238 m!1332391))

(assert (=> b!1443238 m!1332375))

(assert (=> b!1443239 m!1332385))

(declare-fun m!1332393 () Bool)

(assert (=> b!1443239 m!1332393))

(declare-fun m!1332395 () Bool)

(assert (=> b!1443235 m!1332395))

(declare-fun m!1332397 () Bool)

(assert (=> b!1443231 m!1332397))

(assert (=> b!1443231 m!1332397))

(declare-fun m!1332399 () Bool)

(assert (=> b!1443231 m!1332399))

(assert (=> b!1443231 m!1332385))

(declare-fun m!1332401 () Bool)

(assert (=> b!1443231 m!1332401))

(declare-fun m!1332403 () Bool)

(assert (=> b!1443245 m!1332403))

(assert (=> b!1443245 m!1332403))

(declare-fun m!1332405 () Bool)

(assert (=> b!1443245 m!1332405))

(declare-fun m!1332407 () Bool)

(assert (=> b!1443246 m!1332407))

(assert (=> b!1443246 m!1332375))

(declare-fun m!1332409 () Bool)

(assert (=> start!124666 m!1332409))

(declare-fun m!1332411 () Bool)

(assert (=> start!124666 m!1332411))

(declare-fun m!1332413 () Bool)

(assert (=> b!1443242 m!1332413))

(declare-fun m!1332415 () Bool)

(assert (=> b!1443241 m!1332415))

(assert (=> b!1443241 m!1332395))

(declare-fun m!1332417 () Bool)

(assert (=> b!1443247 m!1332417))

(assert (=> b!1443232 m!1332375))

(assert (=> b!1443232 m!1332375))

(declare-fun m!1332419 () Bool)

(assert (=> b!1443232 m!1332419))

(assert (=> b!1443230 m!1332375))

(assert (=> b!1443230 m!1332375))

(declare-fun m!1332421 () Bool)

(assert (=> b!1443230 m!1332421))

(assert (=> b!1443233 m!1332375))

(assert (=> b!1443233 m!1332375))

(declare-fun m!1332423 () Bool)

(assert (=> b!1443233 m!1332423))

(push 1)

