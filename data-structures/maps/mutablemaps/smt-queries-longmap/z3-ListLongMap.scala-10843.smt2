; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!126948 () Bool)

(assert start!126948)

(declare-fun b!1491188 () Bool)

(declare-fun e!835539 () Bool)

(declare-fun e!835538 () Bool)

(assert (=> b!1491188 (= e!835539 e!835538)))

(declare-fun res!1014485 () Bool)

(assert (=> b!1491188 (=> (not res!1014485) (not e!835538))))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!99638 0))(
  ( (array!99639 (arr!48086 (Array (_ BitVec 32) (_ BitVec 64))) (size!48637 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99638)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1491188 (= res!1014485 (= (select (store (arr!48086 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!650160 () array!99638)

(assert (=> b!1491188 (= lt!650160 (array!99639 (store (arr!48086 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48637 a!2862)))))

(declare-fun b!1491189 () Bool)

(declare-fun res!1014492 () Bool)

(declare-fun e!835535 () Bool)

(assert (=> b!1491189 (=> (not res!1014492) (not e!835535))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12349 0))(
  ( (MissingZero!12349 (index!51787 (_ BitVec 32))) (Found!12349 (index!51788 (_ BitVec 32))) (Intermediate!12349 (undefined!13161 Bool) (index!51789 (_ BitVec 32)) (x!133376 (_ BitVec 32))) (Undefined!12349) (MissingVacant!12349 (index!51790 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99638 (_ BitVec 32)) SeekEntryResult!12349)

(assert (=> b!1491189 (= res!1014492 (= (seekEntryOrOpen!0 (select (arr!48086 a!2862) j!93) a!2862 mask!2687) (Found!12349 j!93)))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun b!1491190 () Bool)

(declare-fun lt!650163 () SeekEntryResult!12349)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun lt!650164 () (_ BitVec 64))

(declare-fun e!835536 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99638 (_ BitVec 32)) SeekEntryResult!12349)

(assert (=> b!1491190 (= e!835536 (= lt!650163 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!650164 lt!650160 mask!2687)))))

(declare-fun b!1491191 () Bool)

(declare-fun res!1014494 () Bool)

(declare-fun e!835540 () Bool)

(assert (=> b!1491191 (=> (not res!1014494) (not e!835540))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1491191 (= res!1014494 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1491192 () Bool)

(declare-fun res!1014489 () Bool)

(assert (=> b!1491192 (=> (not res!1014489) (not e!835539))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99638 (_ BitVec 32)) Bool)

(assert (=> b!1491192 (= res!1014489 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1491193 () Bool)

(declare-fun e!835541 () Bool)

(assert (=> b!1491193 (= e!835541 e!835540)))

(declare-fun res!1014490 () Bool)

(assert (=> b!1491193 (=> (not res!1014490) (not e!835540))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1491193 (= res!1014490 (= lt!650163 (Intermediate!12349 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1491193 (= lt!650163 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!650164 mask!2687) lt!650164 lt!650160 mask!2687))))

(assert (=> b!1491193 (= lt!650164 (select (store (arr!48086 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun b!1491194 () Bool)

(assert (=> b!1491194 (= e!835535 (or (= (select (arr!48086 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48086 a!2862) intermediateBeforeIndex!19) (select (arr!48086 a!2862) j!93))))))

(declare-fun b!1491195 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99638 (_ BitVec 32)) SeekEntryResult!12349)

(assert (=> b!1491195 (= e!835536 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!650164 lt!650160 mask!2687) (seekEntryOrOpen!0 lt!650164 lt!650160 mask!2687)))))

(declare-fun b!1491196 () Bool)

(declare-fun res!1014487 () Bool)

(assert (=> b!1491196 (=> (not res!1014487) (not e!835539))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1491196 (= res!1014487 (validKeyInArray!0 (select (arr!48086 a!2862) j!93)))))

(declare-fun b!1491197 () Bool)

(declare-fun res!1014493 () Bool)

(assert (=> b!1491197 (=> (not res!1014493) (not e!835539))))

(assert (=> b!1491197 (= res!1014493 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48637 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48637 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48637 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1491198 () Bool)

(declare-fun res!1014484 () Bool)

(assert (=> b!1491198 (=> (not res!1014484) (not e!835540))))

(assert (=> b!1491198 (= res!1014484 e!835536)))

(declare-fun c!137882 () Bool)

(assert (=> b!1491198 (= c!137882 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1491199 () Bool)

(declare-fun e!835537 () Bool)

(assert (=> b!1491199 (= e!835540 (not e!835537))))

(declare-fun res!1014488 () Bool)

(assert (=> b!1491199 (=> res!1014488 e!835537)))

(assert (=> b!1491199 (= res!1014488 (or (and (= (select (arr!48086 a!2862) index!646) (select (store (arr!48086 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48086 a!2862) index!646) (select (arr!48086 a!2862) j!93))) (= (select (arr!48086 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(assert (=> b!1491199 e!835535))

(declare-fun res!1014497 () Bool)

(assert (=> b!1491199 (=> (not res!1014497) (not e!835535))))

(assert (=> b!1491199 (= res!1014497 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49986 0))(
  ( (Unit!49987) )
))
(declare-fun lt!650162 () Unit!49986)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99638 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49986)

(assert (=> b!1491199 (= lt!650162 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1491200 () Bool)

(declare-fun res!1014498 () Bool)

(assert (=> b!1491200 (=> (not res!1014498) (not e!835539))))

(declare-datatypes ((List!34767 0))(
  ( (Nil!34764) (Cons!34763 (h!36146 (_ BitVec 64)) (t!49468 List!34767)) )
))
(declare-fun arrayNoDuplicates!0 (array!99638 (_ BitVec 32) List!34767) Bool)

(assert (=> b!1491200 (= res!1014498 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34764))))

(declare-fun b!1491201 () Bool)

(declare-fun res!1014495 () Bool)

(assert (=> b!1491201 (=> (not res!1014495) (not e!835541))))

(declare-fun lt!650159 () SeekEntryResult!12349)

(assert (=> b!1491201 (= res!1014495 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48086 a!2862) j!93) a!2862 mask!2687) lt!650159))))

(declare-fun res!1014486 () Bool)

(assert (=> start!126948 (=> (not res!1014486) (not e!835539))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126948 (= res!1014486 (validMask!0 mask!2687))))

(assert (=> start!126948 e!835539))

(assert (=> start!126948 true))

(declare-fun array_inv!37031 (array!99638) Bool)

(assert (=> start!126948 (array_inv!37031 a!2862)))

(declare-fun b!1491202 () Bool)

(assert (=> b!1491202 (= e!835538 e!835541)))

(declare-fun res!1014496 () Bool)

(assert (=> b!1491202 (=> (not res!1014496) (not e!835541))))

(assert (=> b!1491202 (= res!1014496 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48086 a!2862) j!93) mask!2687) (select (arr!48086 a!2862) j!93) a!2862 mask!2687) lt!650159))))

(assert (=> b!1491202 (= lt!650159 (Intermediate!12349 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1491203 () Bool)

(assert (=> b!1491203 (= e!835537 true)))

(declare-fun lt!650161 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1491203 (= lt!650161 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1491204 () Bool)

(declare-fun res!1014483 () Bool)

(assert (=> b!1491204 (=> (not res!1014483) (not e!835539))))

(assert (=> b!1491204 (= res!1014483 (and (= (size!48637 a!2862) (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48637 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48637 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1491205 () Bool)

(declare-fun res!1014491 () Bool)

(assert (=> b!1491205 (=> (not res!1014491) (not e!835539))))

(assert (=> b!1491205 (= res!1014491 (validKeyInArray!0 (select (arr!48086 a!2862) i!1006)))))

(assert (= (and start!126948 res!1014486) b!1491204))

(assert (= (and b!1491204 res!1014483) b!1491205))

(assert (= (and b!1491205 res!1014491) b!1491196))

(assert (= (and b!1491196 res!1014487) b!1491192))

(assert (= (and b!1491192 res!1014489) b!1491200))

(assert (= (and b!1491200 res!1014498) b!1491197))

(assert (= (and b!1491197 res!1014493) b!1491188))

(assert (= (and b!1491188 res!1014485) b!1491202))

(assert (= (and b!1491202 res!1014496) b!1491201))

(assert (= (and b!1491201 res!1014495) b!1491193))

(assert (= (and b!1491193 res!1014490) b!1491198))

(assert (= (and b!1491198 c!137882) b!1491190))

(assert (= (and b!1491198 (not c!137882)) b!1491195))

(assert (= (and b!1491198 res!1014484) b!1491191))

(assert (= (and b!1491191 res!1014494) b!1491199))

(assert (= (and b!1491199 res!1014497) b!1491189))

(assert (= (and b!1491189 res!1014492) b!1491194))

(assert (= (and b!1491199 (not res!1014488)) b!1491203))

(declare-fun m!1375375 () Bool)

(assert (=> b!1491190 m!1375375))

(declare-fun m!1375377 () Bool)

(assert (=> b!1491205 m!1375377))

(assert (=> b!1491205 m!1375377))

(declare-fun m!1375379 () Bool)

(assert (=> b!1491205 m!1375379))

(declare-fun m!1375381 () Bool)

(assert (=> b!1491194 m!1375381))

(declare-fun m!1375383 () Bool)

(assert (=> b!1491194 m!1375383))

(declare-fun m!1375385 () Bool)

(assert (=> b!1491195 m!1375385))

(declare-fun m!1375387 () Bool)

(assert (=> b!1491195 m!1375387))

(assert (=> b!1491196 m!1375383))

(assert (=> b!1491196 m!1375383))

(declare-fun m!1375389 () Bool)

(assert (=> b!1491196 m!1375389))

(declare-fun m!1375391 () Bool)

(assert (=> b!1491192 m!1375391))

(declare-fun m!1375393 () Bool)

(assert (=> b!1491193 m!1375393))

(assert (=> b!1491193 m!1375393))

(declare-fun m!1375395 () Bool)

(assert (=> b!1491193 m!1375395))

(declare-fun m!1375397 () Bool)

(assert (=> b!1491193 m!1375397))

(declare-fun m!1375399 () Bool)

(assert (=> b!1491193 m!1375399))

(declare-fun m!1375401 () Bool)

(assert (=> b!1491199 m!1375401))

(assert (=> b!1491199 m!1375397))

(declare-fun m!1375403 () Bool)

(assert (=> b!1491199 m!1375403))

(declare-fun m!1375405 () Bool)

(assert (=> b!1491199 m!1375405))

(declare-fun m!1375407 () Bool)

(assert (=> b!1491199 m!1375407))

(assert (=> b!1491199 m!1375383))

(assert (=> b!1491188 m!1375397))

(declare-fun m!1375409 () Bool)

(assert (=> b!1491188 m!1375409))

(declare-fun m!1375411 () Bool)

(assert (=> start!126948 m!1375411))

(declare-fun m!1375413 () Bool)

(assert (=> start!126948 m!1375413))

(assert (=> b!1491202 m!1375383))

(assert (=> b!1491202 m!1375383))

(declare-fun m!1375415 () Bool)

(assert (=> b!1491202 m!1375415))

(assert (=> b!1491202 m!1375415))

(assert (=> b!1491202 m!1375383))

(declare-fun m!1375417 () Bool)

(assert (=> b!1491202 m!1375417))

(assert (=> b!1491189 m!1375383))

(assert (=> b!1491189 m!1375383))

(declare-fun m!1375419 () Bool)

(assert (=> b!1491189 m!1375419))

(declare-fun m!1375421 () Bool)

(assert (=> b!1491203 m!1375421))

(assert (=> b!1491201 m!1375383))

(assert (=> b!1491201 m!1375383))

(declare-fun m!1375423 () Bool)

(assert (=> b!1491201 m!1375423))

(declare-fun m!1375425 () Bool)

(assert (=> b!1491200 m!1375425))

(check-sat (not b!1491192) (not b!1491195) (not b!1491203) (not b!1491193) (not b!1491202) (not b!1491190) (not b!1491205) (not b!1491189) (not b!1491199) (not b!1491200) (not b!1491196) (not start!126948) (not b!1491201))
(check-sat)
