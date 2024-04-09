; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125400 () Bool)

(assert start!125400)

(declare-fun b!1465201 () Bool)

(declare-fun e!823349 () Bool)

(declare-fun e!823344 () Bool)

(assert (=> b!1465201 (= e!823349 e!823344)))

(declare-fun res!994236 () Bool)

(assert (=> b!1465201 (=> (not res!994236) (not e!823344))))

(declare-datatypes ((SeekEntryResult!11941 0))(
  ( (MissingZero!11941 (index!50155 (_ BitVec 32))) (Found!11941 (index!50156 (_ BitVec 32))) (Intermediate!11941 (undefined!12753 Bool) (index!50157 (_ BitVec 32)) (x!131737 (_ BitVec 32))) (Undefined!11941) (MissingVacant!11941 (index!50158 (_ BitVec 32))) )
))
(declare-fun lt!641294 () SeekEntryResult!11941)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1465201 (= res!994236 (= lt!641294 (Intermediate!11941 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-datatypes ((array!98765 0))(
  ( (array!98766 (arr!47666 (Array (_ BitVec 32) (_ BitVec 64))) (size!48217 (_ BitVec 32))) )
))
(declare-fun lt!641296 () array!98765)

(declare-fun lt!641293 () (_ BitVec 64))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98765 (_ BitVec 32)) SeekEntryResult!11941)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1465201 (= lt!641294 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!641293 mask!2687) lt!641293 lt!641296 mask!2687))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun a!2862 () array!98765)

(assert (=> b!1465201 (= lt!641293 (select (store (arr!47666 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1465202 () Bool)

(declare-fun e!823345 () Bool)

(assert (=> b!1465202 (= e!823344 (not e!823345))))

(declare-fun res!994232 () Bool)

(assert (=> b!1465202 (=> res!994232 e!823345)))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1465202 (= res!994232 (or (and (= (select (arr!47666 a!2862) index!646) (select (store (arr!47666 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47666 a!2862) index!646) (select (arr!47666 a!2862) j!93))) (= (select (arr!47666 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(declare-fun e!823346 () Bool)

(assert (=> b!1465202 e!823346))

(declare-fun res!994241 () Bool)

(assert (=> b!1465202 (=> (not res!994241) (not e!823346))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98765 (_ BitVec 32)) Bool)

(assert (=> b!1465202 (= res!994241 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49326 0))(
  ( (Unit!49327) )
))
(declare-fun lt!641298 () Unit!49326)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98765 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49326)

(assert (=> b!1465202 (= lt!641298 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1465203 () Bool)

(declare-fun e!823352 () Bool)

(assert (=> b!1465203 (= e!823352 true)))

(declare-fun lt!641299 () Bool)

(declare-fun e!823348 () Bool)

(assert (=> b!1465203 (= lt!641299 e!823348)))

(declare-fun c!135001 () Bool)

(assert (=> b!1465203 (= c!135001 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1465204 () Bool)

(declare-fun res!994225 () Bool)

(declare-fun e!823351 () Bool)

(assert (=> b!1465204 (=> (not res!994225) (not e!823351))))

(assert (=> b!1465204 (= res!994225 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1465205 () Bool)

(declare-fun res!994230 () Bool)

(assert (=> b!1465205 (=> (not res!994230) (not e!823346))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98765 (_ BitVec 32)) SeekEntryResult!11941)

(assert (=> b!1465205 (= res!994230 (= (seekEntryOrOpen!0 (select (arr!47666 a!2862) j!93) a!2862 mask!2687) (Found!11941 j!93)))))

(declare-fun b!1465206 () Bool)

(declare-fun e!823347 () Bool)

(assert (=> b!1465206 (= e!823347 e!823349)))

(declare-fun res!994229 () Bool)

(assert (=> b!1465206 (=> (not res!994229) (not e!823349))))

(declare-fun lt!641295 () SeekEntryResult!11941)

(assert (=> b!1465206 (= res!994229 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47666 a!2862) j!93) mask!2687) (select (arr!47666 a!2862) j!93) a!2862 mask!2687) lt!641295))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1465206 (= lt!641295 (Intermediate!11941 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1465208 () Bool)

(declare-fun res!994231 () Bool)

(assert (=> b!1465208 (=> (not res!994231) (not e!823351))))

(assert (=> b!1465208 (= res!994231 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48217 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48217 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48217 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1465209 () Bool)

(declare-fun lt!641297 () (_ BitVec 32))

(assert (=> b!1465209 (= e!823348 (not (= lt!641294 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641297 lt!641293 lt!641296 mask!2687))))))

(declare-fun b!1465210 () Bool)

(declare-fun res!994235 () Bool)

(assert (=> b!1465210 (=> (not res!994235) (not e!823351))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1465210 (= res!994235 (validKeyInArray!0 (select (arr!47666 a!2862) j!93)))))

(declare-fun b!1465211 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98765 (_ BitVec 32)) SeekEntryResult!11941)

(assert (=> b!1465211 (= e!823348 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641297 intermediateAfterIndex!19 lt!641293 lt!641296 mask!2687) (seekEntryOrOpen!0 lt!641293 lt!641296 mask!2687))))))

(declare-fun b!1465212 () Bool)

(declare-fun res!994234 () Bool)

(assert (=> b!1465212 (=> (not res!994234) (not e!823351))))

(declare-datatypes ((List!34347 0))(
  ( (Nil!34344) (Cons!34343 (h!35693 (_ BitVec 64)) (t!49048 List!34347)) )
))
(declare-fun arrayNoDuplicates!0 (array!98765 (_ BitVec 32) List!34347) Bool)

(assert (=> b!1465212 (= res!994234 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34344))))

(declare-fun b!1465213 () Bool)

(assert (=> b!1465213 (= e!823345 e!823352)))

(declare-fun res!994233 () Bool)

(assert (=> b!1465213 (=> res!994233 e!823352)))

(assert (=> b!1465213 (= res!994233 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!641297 #b00000000000000000000000000000000) (bvsge lt!641297 (size!48217 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1465213 (= lt!641297 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1465214 () Bool)

(declare-fun res!994237 () Bool)

(assert (=> b!1465214 (=> (not res!994237) (not e!823349))))

(assert (=> b!1465214 (= res!994237 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47666 a!2862) j!93) a!2862 mask!2687) lt!641295))))

(declare-fun b!1465215 () Bool)

(assert (=> b!1465215 (= e!823346 (or (= (select (arr!47666 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47666 a!2862) intermediateBeforeIndex!19) (select (arr!47666 a!2862) j!93))))))

(declare-fun b!1465216 () Bool)

(declare-fun res!994227 () Bool)

(assert (=> b!1465216 (=> (not res!994227) (not e!823344))))

(declare-fun e!823350 () Bool)

(assert (=> b!1465216 (= res!994227 e!823350)))

(declare-fun c!135002 () Bool)

(assert (=> b!1465216 (= c!135002 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1465217 () Bool)

(declare-fun res!994239 () Bool)

(assert (=> b!1465217 (=> (not res!994239) (not e!823344))))

(assert (=> b!1465217 (= res!994239 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1465218 () Bool)

(assert (=> b!1465218 (= e!823351 e!823347)))

(declare-fun res!994242 () Bool)

(assert (=> b!1465218 (=> (not res!994242) (not e!823347))))

(assert (=> b!1465218 (= res!994242 (= (select (store (arr!47666 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1465218 (= lt!641296 (array!98766 (store (arr!47666 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48217 a!2862)))))

(declare-fun b!1465219 () Bool)

(declare-fun res!994238 () Bool)

(assert (=> b!1465219 (=> res!994238 e!823352)))

(assert (=> b!1465219 (= res!994238 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641297 (select (arr!47666 a!2862) j!93) a!2862 mask!2687) lt!641295)))))

(declare-fun b!1465220 () Bool)

(assert (=> b!1465220 (= e!823350 (= lt!641294 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!641293 lt!641296 mask!2687)))))

(declare-fun res!994228 () Bool)

(assert (=> start!125400 (=> (not res!994228) (not e!823351))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125400 (= res!994228 (validMask!0 mask!2687))))

(assert (=> start!125400 e!823351))

(assert (=> start!125400 true))

(declare-fun array_inv!36611 (array!98765) Bool)

(assert (=> start!125400 (array_inv!36611 a!2862)))

(declare-fun b!1465207 () Bool)

(assert (=> b!1465207 (= e!823350 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!641293 lt!641296 mask!2687) (seekEntryOrOpen!0 lt!641293 lt!641296 mask!2687)))))

(declare-fun b!1465221 () Bool)

(declare-fun res!994226 () Bool)

(assert (=> b!1465221 (=> (not res!994226) (not e!823351))))

(assert (=> b!1465221 (= res!994226 (validKeyInArray!0 (select (arr!47666 a!2862) i!1006)))))

(declare-fun b!1465222 () Bool)

(declare-fun res!994240 () Bool)

(assert (=> b!1465222 (=> (not res!994240) (not e!823351))))

(assert (=> b!1465222 (= res!994240 (and (= (size!48217 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48217 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48217 a!2862)) (not (= i!1006 j!93))))))

(assert (= (and start!125400 res!994228) b!1465222))

(assert (= (and b!1465222 res!994240) b!1465221))

(assert (= (and b!1465221 res!994226) b!1465210))

(assert (= (and b!1465210 res!994235) b!1465204))

(assert (= (and b!1465204 res!994225) b!1465212))

(assert (= (and b!1465212 res!994234) b!1465208))

(assert (= (and b!1465208 res!994231) b!1465218))

(assert (= (and b!1465218 res!994242) b!1465206))

(assert (= (and b!1465206 res!994229) b!1465214))

(assert (= (and b!1465214 res!994237) b!1465201))

(assert (= (and b!1465201 res!994236) b!1465216))

(assert (= (and b!1465216 c!135002) b!1465220))

(assert (= (and b!1465216 (not c!135002)) b!1465207))

(assert (= (and b!1465216 res!994227) b!1465217))

(assert (= (and b!1465217 res!994239) b!1465202))

(assert (= (and b!1465202 res!994241) b!1465205))

(assert (= (and b!1465205 res!994230) b!1465215))

(assert (= (and b!1465202 (not res!994232)) b!1465213))

(assert (= (and b!1465213 (not res!994233)) b!1465219))

(assert (= (and b!1465219 (not res!994238)) b!1465203))

(assert (= (and b!1465203 c!135001) b!1465209))

(assert (= (and b!1465203 (not c!135001)) b!1465211))

(declare-fun m!1352371 () Bool)

(assert (=> b!1465206 m!1352371))

(assert (=> b!1465206 m!1352371))

(declare-fun m!1352373 () Bool)

(assert (=> b!1465206 m!1352373))

(assert (=> b!1465206 m!1352373))

(assert (=> b!1465206 m!1352371))

(declare-fun m!1352375 () Bool)

(assert (=> b!1465206 m!1352375))

(declare-fun m!1352377 () Bool)

(assert (=> b!1465207 m!1352377))

(declare-fun m!1352379 () Bool)

(assert (=> b!1465207 m!1352379))

(assert (=> b!1465205 m!1352371))

(assert (=> b!1465205 m!1352371))

(declare-fun m!1352381 () Bool)

(assert (=> b!1465205 m!1352381))

(declare-fun m!1352383 () Bool)

(assert (=> start!125400 m!1352383))

(declare-fun m!1352385 () Bool)

(assert (=> start!125400 m!1352385))

(declare-fun m!1352387 () Bool)

(assert (=> b!1465212 m!1352387))

(assert (=> b!1465214 m!1352371))

(assert (=> b!1465214 m!1352371))

(declare-fun m!1352389 () Bool)

(assert (=> b!1465214 m!1352389))

(declare-fun m!1352391 () Bool)

(assert (=> b!1465202 m!1352391))

(declare-fun m!1352393 () Bool)

(assert (=> b!1465202 m!1352393))

(declare-fun m!1352395 () Bool)

(assert (=> b!1465202 m!1352395))

(declare-fun m!1352397 () Bool)

(assert (=> b!1465202 m!1352397))

(declare-fun m!1352399 () Bool)

(assert (=> b!1465202 m!1352399))

(assert (=> b!1465202 m!1352371))

(declare-fun m!1352401 () Bool)

(assert (=> b!1465204 m!1352401))

(assert (=> b!1465218 m!1352393))

(declare-fun m!1352403 () Bool)

(assert (=> b!1465218 m!1352403))

(declare-fun m!1352405 () Bool)

(assert (=> b!1465209 m!1352405))

(assert (=> b!1465219 m!1352371))

(assert (=> b!1465219 m!1352371))

(declare-fun m!1352407 () Bool)

(assert (=> b!1465219 m!1352407))

(assert (=> b!1465210 m!1352371))

(assert (=> b!1465210 m!1352371))

(declare-fun m!1352409 () Bool)

(assert (=> b!1465210 m!1352409))

(declare-fun m!1352411 () Bool)

(assert (=> b!1465215 m!1352411))

(assert (=> b!1465215 m!1352371))

(declare-fun m!1352413 () Bool)

(assert (=> b!1465220 m!1352413))

(declare-fun m!1352415 () Bool)

(assert (=> b!1465201 m!1352415))

(assert (=> b!1465201 m!1352415))

(declare-fun m!1352417 () Bool)

(assert (=> b!1465201 m!1352417))

(assert (=> b!1465201 m!1352393))

(declare-fun m!1352419 () Bool)

(assert (=> b!1465201 m!1352419))

(declare-fun m!1352421 () Bool)

(assert (=> b!1465213 m!1352421))

(declare-fun m!1352423 () Bool)

(assert (=> b!1465211 m!1352423))

(assert (=> b!1465211 m!1352379))

(declare-fun m!1352425 () Bool)

(assert (=> b!1465221 m!1352425))

(assert (=> b!1465221 m!1352425))

(declare-fun m!1352427 () Bool)

(assert (=> b!1465221 m!1352427))

(check-sat (not start!125400) (not b!1465204) (not b!1465206) (not b!1465213) (not b!1465212) (not b!1465202) (not b!1465221) (not b!1465207) (not b!1465220) (not b!1465210) (not b!1465209) (not b!1465214) (not b!1465201) (not b!1465205) (not b!1465219) (not b!1465211))
(check-sat)
