; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125436 () Bool)

(assert start!125436)

(declare-fun b!1466389 () Bool)

(declare-fun res!995198 () Bool)

(declare-fun e!823855 () Bool)

(assert (=> b!1466389 (=> (not res!995198) (not e!823855))))

(declare-datatypes ((array!98801 0))(
  ( (array!98802 (arr!47684 (Array (_ BitVec 32) (_ BitVec 64))) (size!48235 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98801)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1466389 (= res!995198 (validKeyInArray!0 (select (arr!47684 a!2862) j!93)))))

(declare-fun b!1466391 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun lt!641703 () (_ BitVec 64))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun lt!641710 () array!98801)

(declare-datatypes ((SeekEntryResult!11959 0))(
  ( (MissingZero!11959 (index!50227 (_ BitVec 32))) (Found!11959 (index!50228 (_ BitVec 32))) (Intermediate!11959 (undefined!12771 Bool) (index!50229 (_ BitVec 32)) (x!131803 (_ BitVec 32))) (Undefined!11959) (MissingVacant!11959 (index!50230 (_ BitVec 32))) )
))
(declare-fun lt!641707 () SeekEntryResult!11959)

(declare-fun e!823851 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98801 (_ BitVec 32)) SeekEntryResult!11959)

(assert (=> b!1466391 (= e!823851 (= lt!641707 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!641703 lt!641710 mask!2687)))))

(declare-fun lt!641708 () (_ BitVec 32))

(declare-fun e!823857 () Bool)

(declare-fun b!1466392 () Bool)

(assert (=> b!1466392 (= e!823857 (not (= lt!641707 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641708 lt!641703 lt!641710 mask!2687))))))

(declare-fun b!1466393 () Bool)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98801 (_ BitVec 32)) SeekEntryResult!11959)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98801 (_ BitVec 32)) SeekEntryResult!11959)

(assert (=> b!1466393 (= e!823857 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641708 intermediateAfterIndex!19 lt!641703 lt!641710 mask!2687) (seekEntryOrOpen!0 lt!641703 lt!641710 mask!2687))))))

(declare-fun b!1466394 () Bool)

(declare-fun e!823852 () Bool)

(declare-fun e!823854 () Bool)

(assert (=> b!1466394 (= e!823852 e!823854)))

(declare-fun res!995201 () Bool)

(assert (=> b!1466394 (=> (not res!995201) (not e!823854))))

(declare-fun lt!641706 () SeekEntryResult!11959)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1466394 (= res!995201 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47684 a!2862) j!93) mask!2687) (select (arr!47684 a!2862) j!93) a!2862 mask!2687) lt!641706))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1466394 (= lt!641706 (Intermediate!11959 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1466395 () Bool)

(declare-fun e!823858 () Bool)

(assert (=> b!1466395 (= e!823858 true)))

(declare-fun lt!641704 () SeekEntryResult!11959)

(assert (=> b!1466395 (= lt!641704 (seekEntryOrOpen!0 lt!641703 lt!641710 mask!2687))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((Unit!49362 0))(
  ( (Unit!49363) )
))
(declare-fun lt!641709 () Unit!49362)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 (array!98801 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49362)

(assert (=> b!1466395 (= lt!641709 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 a!2862 i!1006 j!93 (bvadd #b00000000000000000000000000000001 x!665) lt!641708 intermediateBeforeX!19 intermediateBeforeIndex!19 intermediateAfterX!19 intermediateAfterIndex!19 mask!2687))))

(declare-fun b!1466396 () Bool)

(declare-fun res!995213 () Bool)

(declare-fun e!823853 () Bool)

(assert (=> b!1466396 (=> (not res!995213) (not e!823853))))

(assert (=> b!1466396 (= res!995213 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1466397 () Bool)

(declare-fun res!995211 () Bool)

(assert (=> b!1466397 (=> res!995211 e!823858)))

(assert (=> b!1466397 (= res!995211 (bvsgt (bvadd #b00000000000000000000000000000001 x!665) intermediateBeforeX!19))))

(declare-fun b!1466398 () Bool)

(declare-fun e!823859 () Bool)

(assert (=> b!1466398 (= e!823853 (not e!823859))))

(declare-fun res!995207 () Bool)

(assert (=> b!1466398 (=> res!995207 e!823859)))

(assert (=> b!1466398 (= res!995207 (or (and (= (select (arr!47684 a!2862) index!646) (select (store (arr!47684 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47684 a!2862) index!646) (select (arr!47684 a!2862) j!93))) (= (select (arr!47684 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(assert (=> b!1466398 (and (= lt!641704 (Found!11959 j!93)) (or (= (select (arr!47684 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47684 a!2862) intermediateBeforeIndex!19) (select (arr!47684 a!2862) j!93))))))

(assert (=> b!1466398 (= lt!641704 (seekEntryOrOpen!0 (select (arr!47684 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98801 (_ BitVec 32)) Bool)

(assert (=> b!1466398 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-fun lt!641705 () Unit!49362)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98801 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49362)

(assert (=> b!1466398 (= lt!641705 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1466399 () Bool)

(declare-fun res!995200 () Bool)

(assert (=> b!1466399 (=> (not res!995200) (not e!823854))))

(assert (=> b!1466399 (= res!995200 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47684 a!2862) j!93) a!2862 mask!2687) lt!641706))))

(declare-fun b!1466400 () Bool)

(declare-fun res!995203 () Bool)

(assert (=> b!1466400 (=> (not res!995203) (not e!823853))))

(assert (=> b!1466400 (= res!995203 e!823851)))

(declare-fun c!135109 () Bool)

(assert (=> b!1466400 (= c!135109 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1466390 () Bool)

(declare-fun res!995214 () Bool)

(assert (=> b!1466390 (=> (not res!995214) (not e!823855))))

(assert (=> b!1466390 (= res!995214 (validKeyInArray!0 (select (arr!47684 a!2862) i!1006)))))

(declare-fun res!995202 () Bool)

(assert (=> start!125436 (=> (not res!995202) (not e!823855))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125436 (= res!995202 (validMask!0 mask!2687))))

(assert (=> start!125436 e!823855))

(assert (=> start!125436 true))

(declare-fun array_inv!36629 (array!98801) Bool)

(assert (=> start!125436 (array_inv!36629 a!2862)))

(declare-fun b!1466401 () Bool)

(assert (=> b!1466401 (= e!823851 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!641703 lt!641710 mask!2687) (seekEntryOrOpen!0 lt!641703 lt!641710 mask!2687)))))

(declare-fun b!1466402 () Bool)

(declare-fun res!995199 () Bool)

(assert (=> b!1466402 (=> res!995199 e!823858)))

(assert (=> b!1466402 (= res!995199 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641708 (select (arr!47684 a!2862) j!93) a!2862 mask!2687) lt!641706)))))

(declare-fun b!1466403 () Bool)

(declare-fun res!995205 () Bool)

(assert (=> b!1466403 (=> res!995205 e!823858)))

(assert (=> b!1466403 (= res!995205 e!823857)))

(declare-fun c!135110 () Bool)

(assert (=> b!1466403 (= c!135110 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1466404 () Bool)

(declare-fun res!995210 () Bool)

(assert (=> b!1466404 (=> (not res!995210) (not e!823855))))

(assert (=> b!1466404 (= res!995210 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48235 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48235 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48235 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1466405 () Bool)

(declare-fun res!995206 () Bool)

(assert (=> b!1466405 (=> (not res!995206) (not e!823855))))

(declare-datatypes ((List!34365 0))(
  ( (Nil!34362) (Cons!34361 (h!35711 (_ BitVec 64)) (t!49066 List!34365)) )
))
(declare-fun arrayNoDuplicates!0 (array!98801 (_ BitVec 32) List!34365) Bool)

(assert (=> b!1466405 (= res!995206 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34362))))

(declare-fun b!1466406 () Bool)

(assert (=> b!1466406 (= e!823855 e!823852)))

(declare-fun res!995197 () Bool)

(assert (=> b!1466406 (=> (not res!995197) (not e!823852))))

(assert (=> b!1466406 (= res!995197 (= (select (store (arr!47684 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1466406 (= lt!641710 (array!98802 (store (arr!47684 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48235 a!2862)))))

(declare-fun b!1466407 () Bool)

(assert (=> b!1466407 (= e!823859 e!823858)))

(declare-fun res!995204 () Bool)

(assert (=> b!1466407 (=> res!995204 e!823858)))

(assert (=> b!1466407 (= res!995204 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!641708 #b00000000000000000000000000000000) (bvsge lt!641708 (size!48235 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1466407 (= lt!641708 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1466408 () Bool)

(declare-fun res!995208 () Bool)

(assert (=> b!1466408 (=> (not res!995208) (not e!823855))))

(assert (=> b!1466408 (= res!995208 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1466409 () Bool)

(declare-fun res!995212 () Bool)

(assert (=> b!1466409 (=> (not res!995212) (not e!823855))))

(assert (=> b!1466409 (= res!995212 (and (= (size!48235 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48235 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48235 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1466410 () Bool)

(assert (=> b!1466410 (= e!823854 e!823853)))

(declare-fun res!995209 () Bool)

(assert (=> b!1466410 (=> (not res!995209) (not e!823853))))

(assert (=> b!1466410 (= res!995209 (= lt!641707 (Intermediate!11959 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1466410 (= lt!641707 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!641703 mask!2687) lt!641703 lt!641710 mask!2687))))

(assert (=> b!1466410 (= lt!641703 (select (store (arr!47684 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(assert (= (and start!125436 res!995202) b!1466409))

(assert (= (and b!1466409 res!995212) b!1466390))

(assert (= (and b!1466390 res!995214) b!1466389))

(assert (= (and b!1466389 res!995198) b!1466408))

(assert (= (and b!1466408 res!995208) b!1466405))

(assert (= (and b!1466405 res!995206) b!1466404))

(assert (= (and b!1466404 res!995210) b!1466406))

(assert (= (and b!1466406 res!995197) b!1466394))

(assert (= (and b!1466394 res!995201) b!1466399))

(assert (= (and b!1466399 res!995200) b!1466410))

(assert (= (and b!1466410 res!995209) b!1466400))

(assert (= (and b!1466400 c!135109) b!1466391))

(assert (= (and b!1466400 (not c!135109)) b!1466401))

(assert (= (and b!1466400 res!995203) b!1466396))

(assert (= (and b!1466396 res!995213) b!1466398))

(assert (= (and b!1466398 (not res!995207)) b!1466407))

(assert (= (and b!1466407 (not res!995204)) b!1466402))

(assert (= (and b!1466402 (not res!995199)) b!1466403))

(assert (= (and b!1466403 c!135110) b!1466392))

(assert (= (and b!1466403 (not c!135110)) b!1466393))

(assert (= (and b!1466403 (not res!995205)) b!1466397))

(assert (= (and b!1466397 (not res!995211)) b!1466395))

(declare-fun m!1353435 () Bool)

(assert (=> b!1466407 m!1353435))

(declare-fun m!1353437 () Bool)

(assert (=> b!1466391 m!1353437))

(declare-fun m!1353439 () Bool)

(assert (=> start!125436 m!1353439))

(declare-fun m!1353441 () Bool)

(assert (=> start!125436 m!1353441))

(declare-fun m!1353443 () Bool)

(assert (=> b!1466395 m!1353443))

(declare-fun m!1353445 () Bool)

(assert (=> b!1466395 m!1353445))

(declare-fun m!1353447 () Bool)

(assert (=> b!1466406 m!1353447))

(declare-fun m!1353449 () Bool)

(assert (=> b!1466406 m!1353449))

(declare-fun m!1353451 () Bool)

(assert (=> b!1466399 m!1353451))

(assert (=> b!1466399 m!1353451))

(declare-fun m!1353453 () Bool)

(assert (=> b!1466399 m!1353453))

(assert (=> b!1466394 m!1353451))

(assert (=> b!1466394 m!1353451))

(declare-fun m!1353455 () Bool)

(assert (=> b!1466394 m!1353455))

(assert (=> b!1466394 m!1353455))

(assert (=> b!1466394 m!1353451))

(declare-fun m!1353457 () Bool)

(assert (=> b!1466394 m!1353457))

(assert (=> b!1466389 m!1353451))

(assert (=> b!1466389 m!1353451))

(declare-fun m!1353459 () Bool)

(assert (=> b!1466389 m!1353459))

(declare-fun m!1353461 () Bool)

(assert (=> b!1466410 m!1353461))

(assert (=> b!1466410 m!1353461))

(declare-fun m!1353463 () Bool)

(assert (=> b!1466410 m!1353463))

(assert (=> b!1466410 m!1353447))

(declare-fun m!1353465 () Bool)

(assert (=> b!1466410 m!1353465))

(declare-fun m!1353467 () Bool)

(assert (=> b!1466405 m!1353467))

(declare-fun m!1353469 () Bool)

(assert (=> b!1466408 m!1353469))

(declare-fun m!1353471 () Bool)

(assert (=> b!1466393 m!1353471))

(assert (=> b!1466393 m!1353443))

(declare-fun m!1353473 () Bool)

(assert (=> b!1466390 m!1353473))

(assert (=> b!1466390 m!1353473))

(declare-fun m!1353475 () Bool)

(assert (=> b!1466390 m!1353475))

(declare-fun m!1353477 () Bool)

(assert (=> b!1466401 m!1353477))

(assert (=> b!1466401 m!1353443))

(declare-fun m!1353479 () Bool)

(assert (=> b!1466398 m!1353479))

(assert (=> b!1466398 m!1353447))

(declare-fun m!1353481 () Bool)

(assert (=> b!1466398 m!1353481))

(declare-fun m!1353483 () Bool)

(assert (=> b!1466398 m!1353483))

(declare-fun m!1353485 () Bool)

(assert (=> b!1466398 m!1353485))

(assert (=> b!1466398 m!1353451))

(declare-fun m!1353487 () Bool)

(assert (=> b!1466398 m!1353487))

(declare-fun m!1353489 () Bool)

(assert (=> b!1466398 m!1353489))

(assert (=> b!1466398 m!1353451))

(assert (=> b!1466402 m!1353451))

(assert (=> b!1466402 m!1353451))

(declare-fun m!1353491 () Bool)

(assert (=> b!1466402 m!1353491))

(declare-fun m!1353493 () Bool)

(assert (=> b!1466392 m!1353493))

(check-sat (not b!1466405) (not b!1466410) (not b!1466408) (not b!1466395) (not b!1466392) (not b!1466394) (not b!1466393) (not b!1466399) (not b!1466390) (not b!1466401) (not b!1466407) (not b!1466389) (not b!1466398) (not start!125436) (not b!1466402) (not b!1466391))
(check-sat)
