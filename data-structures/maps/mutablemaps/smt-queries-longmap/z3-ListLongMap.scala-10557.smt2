; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124524 () Bool)

(assert start!124524)

(declare-fun b!1440265 () Bool)

(declare-fun e!812139 () Bool)

(declare-fun e!812141 () Bool)

(assert (=> b!1440265 (= e!812139 e!812141)))

(declare-fun res!972803 () Bool)

(assert (=> b!1440265 (=> (not res!972803) (not e!812141))))

(declare-datatypes ((SeekEntryResult!11503 0))(
  ( (MissingZero!11503 (index!48403 (_ BitVec 32))) (Found!11503 (index!48404 (_ BitVec 32))) (Intermediate!11503 (undefined!12315 Bool) (index!48405 (_ BitVec 32)) (x!130131 (_ BitVec 32))) (Undefined!11503) (MissingVacant!11503 (index!48406 (_ BitVec 32))) )
))
(declare-fun lt!632893 () SeekEntryResult!11503)

(declare-datatypes ((array!97889 0))(
  ( (array!97890 (arr!47228 (Array (_ BitVec 32) (_ BitVec 64))) (size!47779 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97889)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97889 (_ BitVec 32)) SeekEntryResult!11503)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1440265 (= res!972803 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47228 a!2862) j!93) mask!2687) (select (arr!47228 a!2862) j!93) a!2862 mask!2687) lt!632893))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1440265 (= lt!632893 (Intermediate!11503 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1440266 () Bool)

(declare-fun res!972805 () Bool)

(assert (=> b!1440266 (=> (not res!972805) (not e!812139))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1440266 (= res!972805 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47779 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47779 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47779 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47228 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1440267 () Bool)

(declare-fun res!972804 () Bool)

(assert (=> b!1440267 (=> (not res!972804) (not e!812139))))

(declare-datatypes ((List!33909 0))(
  ( (Nil!33906) (Cons!33905 (h!35255 (_ BitVec 64)) (t!48610 List!33909)) )
))
(declare-fun arrayNoDuplicates!0 (array!97889 (_ BitVec 32) List!33909) Bool)

(assert (=> b!1440267 (= res!972804 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33906))))

(declare-fun b!1440268 () Bool)

(declare-fun res!972809 () Bool)

(assert (=> b!1440268 (=> (not res!972809) (not e!812139))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1440268 (= res!972809 (validKeyInArray!0 (select (arr!47228 a!2862) i!1006)))))

(declare-fun b!1440269 () Bool)

(declare-fun res!972806 () Bool)

(assert (=> b!1440269 (=> (not res!972806) (not e!812141))))

(assert (=> b!1440269 (= res!972806 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47228 a!2862) j!93) a!2862 mask!2687) lt!632893))))

(declare-fun b!1440271 () Bool)

(declare-fun res!972801 () Bool)

(assert (=> b!1440271 (=> (not res!972801) (not e!812139))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97889 (_ BitVec 32)) Bool)

(assert (=> b!1440271 (= res!972801 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1440272 () Bool)

(assert (=> b!1440272 (= e!812141 (and (bvsgt x!665 intermediateAfterX!19) (bvsge mask!2687 #b00000000000000000000000000000000) (bvslt index!646 (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge intermediateAfterIndex!19 (bvadd #b00000000000000000000000000000001 mask!2687))))))

(declare-fun b!1440273 () Bool)

(declare-fun res!972807 () Bool)

(assert (=> b!1440273 (=> (not res!972807) (not e!812141))))

(assert (=> b!1440273 (= res!972807 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!47228 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (select (store (arr!47228 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!97890 (store (arr!47228 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47779 a!2862)) mask!2687) (Intermediate!11503 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun b!1440274 () Bool)

(declare-fun res!972802 () Bool)

(assert (=> b!1440274 (=> (not res!972802) (not e!812139))))

(assert (=> b!1440274 (= res!972802 (validKeyInArray!0 (select (arr!47228 a!2862) j!93)))))

(declare-fun res!972810 () Bool)

(assert (=> start!124524 (=> (not res!972810) (not e!812139))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124524 (= res!972810 (validMask!0 mask!2687))))

(assert (=> start!124524 e!812139))

(assert (=> start!124524 true))

(declare-fun array_inv!36173 (array!97889) Bool)

(assert (=> start!124524 (array_inv!36173 a!2862)))

(declare-fun b!1440270 () Bool)

(declare-fun res!972808 () Bool)

(assert (=> b!1440270 (=> (not res!972808) (not e!812139))))

(assert (=> b!1440270 (= res!972808 (and (= (size!47779 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47779 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47779 a!2862)) (not (= i!1006 j!93))))))

(assert (= (and start!124524 res!972810) b!1440270))

(assert (= (and b!1440270 res!972808) b!1440268))

(assert (= (and b!1440268 res!972809) b!1440274))

(assert (= (and b!1440274 res!972802) b!1440271))

(assert (= (and b!1440271 res!972801) b!1440267))

(assert (= (and b!1440267 res!972804) b!1440266))

(assert (= (and b!1440266 res!972805) b!1440265))

(assert (= (and b!1440265 res!972803) b!1440269))

(assert (= (and b!1440269 res!972806) b!1440273))

(assert (= (and b!1440273 res!972807) b!1440272))

(declare-fun m!1329503 () Bool)

(assert (=> b!1440274 m!1329503))

(assert (=> b!1440274 m!1329503))

(declare-fun m!1329505 () Bool)

(assert (=> b!1440274 m!1329505))

(declare-fun m!1329507 () Bool)

(assert (=> b!1440271 m!1329507))

(declare-fun m!1329509 () Bool)

(assert (=> b!1440268 m!1329509))

(assert (=> b!1440268 m!1329509))

(declare-fun m!1329511 () Bool)

(assert (=> b!1440268 m!1329511))

(declare-fun m!1329513 () Bool)

(assert (=> b!1440273 m!1329513))

(declare-fun m!1329515 () Bool)

(assert (=> b!1440273 m!1329515))

(assert (=> b!1440273 m!1329515))

(declare-fun m!1329517 () Bool)

(assert (=> b!1440273 m!1329517))

(assert (=> b!1440273 m!1329517))

(assert (=> b!1440273 m!1329515))

(declare-fun m!1329519 () Bool)

(assert (=> b!1440273 m!1329519))

(assert (=> b!1440265 m!1329503))

(assert (=> b!1440265 m!1329503))

(declare-fun m!1329521 () Bool)

(assert (=> b!1440265 m!1329521))

(assert (=> b!1440265 m!1329521))

(assert (=> b!1440265 m!1329503))

(declare-fun m!1329523 () Bool)

(assert (=> b!1440265 m!1329523))

(assert (=> b!1440269 m!1329503))

(assert (=> b!1440269 m!1329503))

(declare-fun m!1329525 () Bool)

(assert (=> b!1440269 m!1329525))

(declare-fun m!1329527 () Bool)

(assert (=> b!1440267 m!1329527))

(declare-fun m!1329529 () Bool)

(assert (=> start!124524 m!1329529))

(declare-fun m!1329531 () Bool)

(assert (=> start!124524 m!1329531))

(assert (=> b!1440266 m!1329513))

(declare-fun m!1329533 () Bool)

(assert (=> b!1440266 m!1329533))

(check-sat (not b!1440274) (not b!1440271) (not start!124524) (not b!1440267) (not b!1440265) (not b!1440273) (not b!1440268) (not b!1440269))
(check-sat)
