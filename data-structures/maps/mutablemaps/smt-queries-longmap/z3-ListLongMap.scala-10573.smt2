; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124620 () Bool)

(assert start!124620)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun e!812834 () Bool)

(declare-datatypes ((SeekEntryResult!11551 0))(
  ( (MissingZero!11551 (index!48595 (_ BitVec 32))) (Found!11551 (index!48596 (_ BitVec 32))) (Intermediate!11551 (undefined!12363 Bool) (index!48597 (_ BitVec 32)) (x!130307 (_ BitVec 32))) (Undefined!11551) (MissingVacant!11551 (index!48598 (_ BitVec 32))) )
))
(declare-fun lt!633410 () SeekEntryResult!11551)

(declare-fun b!1442046 () Bool)

(declare-fun lt!633408 () (_ BitVec 64))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-datatypes ((array!97985 0))(
  ( (array!97986 (arr!47276 (Array (_ BitVec 32) (_ BitVec 64))) (size!47827 (_ BitVec 32))) )
))
(declare-fun lt!633409 () array!97985)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97985 (_ BitVec 32)) SeekEntryResult!11551)

(assert (=> b!1442046 (= e!812834 (= lt!633410 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!633408 lt!633409 mask!2687)))))

(declare-fun b!1442048 () Bool)

(declare-fun res!974420 () Bool)

(declare-fun e!812837 () Bool)

(assert (=> b!1442048 (=> (not res!974420) (not e!812837))))

(declare-fun a!2862 () array!97985)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1442048 (= res!974420 (validKeyInArray!0 (select (arr!47276 a!2862) j!93)))))

(declare-fun b!1442049 () Bool)

(declare-fun res!974424 () Bool)

(declare-fun e!812836 () Bool)

(assert (=> b!1442049 (=> (not res!974424) (not e!812836))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97985 (_ BitVec 32)) SeekEntryResult!11551)

(assert (=> b!1442049 (= res!974424 (= (seekEntryOrOpen!0 (select (arr!47276 a!2862) j!93) a!2862 mask!2687) (Found!11551 j!93)))))

(declare-fun b!1442050 () Bool)

(declare-fun res!974414 () Bool)

(declare-fun e!812839 () Bool)

(assert (=> b!1442050 (=> (not res!974414) (not e!812839))))

(declare-fun lt!633411 () SeekEntryResult!11551)

(assert (=> b!1442050 (= res!974414 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47276 a!2862) j!93) a!2862 mask!2687) lt!633411))))

(declare-fun b!1442051 () Bool)

(declare-fun e!812838 () Bool)

(assert (=> b!1442051 (= e!812838 e!812839)))

(declare-fun res!974423 () Bool)

(assert (=> b!1442051 (=> (not res!974423) (not e!812839))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1442051 (= res!974423 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47276 a!2862) j!93) mask!2687) (select (arr!47276 a!2862) j!93) a!2862 mask!2687) lt!633411))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1442051 (= lt!633411 (Intermediate!11551 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1442052 () Bool)

(declare-fun res!974415 () Bool)

(assert (=> b!1442052 (=> (not res!974415) (not e!812837))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97985 (_ BitVec 32)) Bool)

(assert (=> b!1442052 (= res!974415 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1442053 () Bool)

(declare-fun res!974413 () Bool)

(assert (=> b!1442053 (=> (not res!974413) (not e!812837))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1442053 (= res!974413 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47827 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47827 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47827 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1442047 () Bool)

(declare-fun res!974412 () Bool)

(declare-fun e!812835 () Bool)

(assert (=> b!1442047 (=> (not res!974412) (not e!812835))))

(assert (=> b!1442047 (= res!974412 e!812834)))

(declare-fun c!133331 () Bool)

(assert (=> b!1442047 (= c!133331 (bvsle x!665 intermediateAfterX!19))))

(declare-fun res!974417 () Bool)

(assert (=> start!124620 (=> (not res!974417) (not e!812837))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124620 (= res!974417 (validMask!0 mask!2687))))

(assert (=> start!124620 e!812837))

(assert (=> start!124620 true))

(declare-fun array_inv!36221 (array!97985) Bool)

(assert (=> start!124620 (array_inv!36221 a!2862)))

(declare-fun b!1442054 () Bool)

(assert (=> b!1442054 (= e!812836 (or (= (select (arr!47276 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47276 a!2862) intermediateBeforeIndex!19) (select (arr!47276 a!2862) j!93))))))

(declare-fun b!1442055 () Bool)

(declare-fun res!974418 () Bool)

(assert (=> b!1442055 (=> (not res!974418) (not e!812837))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1442055 (= res!974418 (validKeyInArray!0 (select (arr!47276 a!2862) i!1006)))))

(declare-fun b!1442056 () Bool)

(assert (=> b!1442056 (= e!812837 e!812838)))

(declare-fun res!974416 () Bool)

(assert (=> b!1442056 (=> (not res!974416) (not e!812838))))

(assert (=> b!1442056 (= res!974416 (= (select (store (arr!47276 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1442056 (= lt!633409 (array!97986 (store (arr!47276 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47827 a!2862)))))

(declare-fun b!1442057 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97985 (_ BitVec 32)) SeekEntryResult!11551)

(assert (=> b!1442057 (= e!812834 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!633408 lt!633409 mask!2687) (seekEntryOrOpen!0 lt!633408 lt!633409 mask!2687)))))

(declare-fun b!1442058 () Bool)

(assert (=> b!1442058 (= e!812835 (not true))))

(assert (=> b!1442058 e!812836))

(declare-fun res!974410 () Bool)

(assert (=> b!1442058 (=> (not res!974410) (not e!812836))))

(assert (=> b!1442058 (= res!974410 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48546 0))(
  ( (Unit!48547) )
))
(declare-fun lt!633412 () Unit!48546)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97985 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48546)

(assert (=> b!1442058 (= lt!633412 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1442059 () Bool)

(declare-fun res!974422 () Bool)

(assert (=> b!1442059 (=> (not res!974422) (not e!812837))))

(assert (=> b!1442059 (= res!974422 (and (= (size!47827 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47827 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47827 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1442060 () Bool)

(assert (=> b!1442060 (= e!812839 e!812835)))

(declare-fun res!974421 () Bool)

(assert (=> b!1442060 (=> (not res!974421) (not e!812835))))

(assert (=> b!1442060 (= res!974421 (= lt!633410 (Intermediate!11551 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1442060 (= lt!633410 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!633408 mask!2687) lt!633408 lt!633409 mask!2687))))

(assert (=> b!1442060 (= lt!633408 (select (store (arr!47276 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1442061 () Bool)

(declare-fun res!974419 () Bool)

(assert (=> b!1442061 (=> (not res!974419) (not e!812837))))

(declare-datatypes ((List!33957 0))(
  ( (Nil!33954) (Cons!33953 (h!35303 (_ BitVec 64)) (t!48658 List!33957)) )
))
(declare-fun arrayNoDuplicates!0 (array!97985 (_ BitVec 32) List!33957) Bool)

(assert (=> b!1442061 (= res!974419 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33954))))

(declare-fun b!1442062 () Bool)

(declare-fun res!974411 () Bool)

(assert (=> b!1442062 (=> (not res!974411) (not e!812835))))

(assert (=> b!1442062 (= res!974411 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(assert (= (and start!124620 res!974417) b!1442059))

(assert (= (and b!1442059 res!974422) b!1442055))

(assert (= (and b!1442055 res!974418) b!1442048))

(assert (= (and b!1442048 res!974420) b!1442052))

(assert (= (and b!1442052 res!974415) b!1442061))

(assert (= (and b!1442061 res!974419) b!1442053))

(assert (= (and b!1442053 res!974413) b!1442056))

(assert (= (and b!1442056 res!974416) b!1442051))

(assert (= (and b!1442051 res!974423) b!1442050))

(assert (= (and b!1442050 res!974414) b!1442060))

(assert (= (and b!1442060 res!974421) b!1442047))

(assert (= (and b!1442047 c!133331) b!1442046))

(assert (= (and b!1442047 (not c!133331)) b!1442057))

(assert (= (and b!1442047 res!974412) b!1442062))

(assert (= (and b!1442062 res!974411) b!1442058))

(assert (= (and b!1442058 res!974410) b!1442049))

(assert (= (and b!1442049 res!974424) b!1442054))

(declare-fun m!1331275 () Bool)

(assert (=> b!1442057 m!1331275))

(declare-fun m!1331277 () Bool)

(assert (=> b!1442057 m!1331277))

(declare-fun m!1331279 () Bool)

(assert (=> start!124620 m!1331279))

(declare-fun m!1331281 () Bool)

(assert (=> start!124620 m!1331281))

(declare-fun m!1331283 () Bool)

(assert (=> b!1442051 m!1331283))

(assert (=> b!1442051 m!1331283))

(declare-fun m!1331285 () Bool)

(assert (=> b!1442051 m!1331285))

(assert (=> b!1442051 m!1331285))

(assert (=> b!1442051 m!1331283))

(declare-fun m!1331287 () Bool)

(assert (=> b!1442051 m!1331287))

(declare-fun m!1331289 () Bool)

(assert (=> b!1442052 m!1331289))

(declare-fun m!1331291 () Bool)

(assert (=> b!1442054 m!1331291))

(assert (=> b!1442054 m!1331283))

(declare-fun m!1331293 () Bool)

(assert (=> b!1442060 m!1331293))

(assert (=> b!1442060 m!1331293))

(declare-fun m!1331295 () Bool)

(assert (=> b!1442060 m!1331295))

(declare-fun m!1331297 () Bool)

(assert (=> b!1442060 m!1331297))

(declare-fun m!1331299 () Bool)

(assert (=> b!1442060 m!1331299))

(declare-fun m!1331301 () Bool)

(assert (=> b!1442046 m!1331301))

(assert (=> b!1442056 m!1331297))

(declare-fun m!1331303 () Bool)

(assert (=> b!1442056 m!1331303))

(assert (=> b!1442048 m!1331283))

(assert (=> b!1442048 m!1331283))

(declare-fun m!1331305 () Bool)

(assert (=> b!1442048 m!1331305))

(declare-fun m!1331307 () Bool)

(assert (=> b!1442055 m!1331307))

(assert (=> b!1442055 m!1331307))

(declare-fun m!1331309 () Bool)

(assert (=> b!1442055 m!1331309))

(declare-fun m!1331311 () Bool)

(assert (=> b!1442061 m!1331311))

(assert (=> b!1442049 m!1331283))

(assert (=> b!1442049 m!1331283))

(declare-fun m!1331313 () Bool)

(assert (=> b!1442049 m!1331313))

(assert (=> b!1442050 m!1331283))

(assert (=> b!1442050 m!1331283))

(declare-fun m!1331315 () Bool)

(assert (=> b!1442050 m!1331315))

(declare-fun m!1331317 () Bool)

(assert (=> b!1442058 m!1331317))

(declare-fun m!1331319 () Bool)

(assert (=> b!1442058 m!1331319))

(check-sat (not b!1442052) (not b!1442051) (not b!1442060) (not b!1442048) (not b!1442050) (not b!1442046) (not b!1442061) (not b!1442057) (not b!1442055) (not b!1442049) (not start!124620) (not b!1442058))
(check-sat)
