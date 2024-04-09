; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124746 () Bool)

(assert start!124746)

(declare-fun b!1445322 () Bool)

(declare-fun res!977309 () Bool)

(declare-fun e!814212 () Bool)

(assert (=> b!1445322 (=> (not res!977309) (not e!814212))))

(declare-datatypes ((array!98111 0))(
  ( (array!98112 (arr!47339 (Array (_ BitVec 32) (_ BitVec 64))) (size!47890 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98111)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11614 0))(
  ( (MissingZero!11614 (index!48847 (_ BitVec 32))) (Found!11614 (index!48848 (_ BitVec 32))) (Intermediate!11614 (undefined!12426 Bool) (index!48849 (_ BitVec 32)) (x!130538 (_ BitVec 32))) (Undefined!11614) (MissingVacant!11614 (index!48850 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98111 (_ BitVec 32)) SeekEntryResult!11614)

(assert (=> b!1445322 (= res!977309 (= (seekEntryOrOpen!0 (select (arr!47339 a!2862) j!93) a!2862 mask!2687) (Found!11614 j!93)))))

(declare-fun b!1445323 () Bool)

(declare-fun res!977319 () Bool)

(declare-fun e!814211 () Bool)

(assert (=> b!1445323 (=> (not res!977319) (not e!814211))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1445323 (= res!977319 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47890 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47890 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47890 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1445324 () Bool)

(declare-fun res!977314 () Bool)

(declare-fun e!814213 () Bool)

(assert (=> b!1445324 (=> (not res!977314) (not e!814213))))

(declare-fun lt!634426 () SeekEntryResult!11614)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98111 (_ BitVec 32)) SeekEntryResult!11614)

(assert (=> b!1445324 (= res!977314 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47339 a!2862) j!93) a!2862 mask!2687) lt!634426))))

(declare-fun b!1445325 () Bool)

(declare-fun res!977311 () Bool)

(assert (=> b!1445325 (=> (not res!977311) (not e!814211))))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1445325 (= res!977311 (validKeyInArray!0 (select (arr!47339 a!2862) i!1006)))))

(declare-fun b!1445326 () Bool)

(declare-fun e!814216 () Bool)

(assert (=> b!1445326 (= e!814211 e!814216)))

(declare-fun res!977315 () Bool)

(assert (=> b!1445326 (=> (not res!977315) (not e!814216))))

(assert (=> b!1445326 (= res!977315 (= (select (store (arr!47339 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!634425 () array!98111)

(assert (=> b!1445326 (= lt!634425 (array!98112 (store (arr!47339 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47890 a!2862)))))

(declare-fun b!1445327 () Bool)

(assert (=> b!1445327 (= e!814216 e!814213)))

(declare-fun res!977322 () Bool)

(assert (=> b!1445327 (=> (not res!977322) (not e!814213))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1445327 (= res!977322 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47339 a!2862) j!93) mask!2687) (select (arr!47339 a!2862) j!93) a!2862 mask!2687) lt!634426))))

(assert (=> b!1445327 (= lt!634426 (Intermediate!11614 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun lt!634427 () (_ BitVec 64))

(declare-fun b!1445329 () Bool)

(declare-fun e!814215 () Bool)

(declare-fun lt!634429 () SeekEntryResult!11614)

(assert (=> b!1445329 (= e!814215 (= lt!634429 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!634427 lt!634425 mask!2687)))))

(declare-fun b!1445330 () Bool)

(assert (=> b!1445330 (= e!814212 (or (= (select (arr!47339 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47339 a!2862) intermediateBeforeIndex!19) (select (arr!47339 a!2862) j!93))))))

(declare-fun b!1445331 () Bool)

(declare-fun res!977318 () Bool)

(declare-fun e!814214 () Bool)

(assert (=> b!1445331 (=> (not res!977318) (not e!814214))))

(assert (=> b!1445331 (= res!977318 e!814215)))

(declare-fun c!133520 () Bool)

(assert (=> b!1445331 (= c!133520 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1445332 () Bool)

(declare-fun res!977317 () Bool)

(assert (=> b!1445332 (=> (not res!977317) (not e!814211))))

(assert (=> b!1445332 (= res!977317 (validKeyInArray!0 (select (arr!47339 a!2862) j!93)))))

(declare-fun b!1445333 () Bool)

(assert (=> b!1445333 (= e!814214 (not (or (and (= (select (arr!47339 a!2862) index!646) (select (store (arr!47339 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47339 a!2862) index!646) (select (arr!47339 a!2862) j!93))) (not (= (select (arr!47339 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge mask!2687 #b00000000000000000000000000000000))))))

(assert (=> b!1445333 e!814212))

(declare-fun res!977312 () Bool)

(assert (=> b!1445333 (=> (not res!977312) (not e!814212))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98111 (_ BitVec 32)) Bool)

(assert (=> b!1445333 (= res!977312 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48672 0))(
  ( (Unit!48673) )
))
(declare-fun lt!634428 () Unit!48672)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98111 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48672)

(assert (=> b!1445333 (= lt!634428 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1445334 () Bool)

(declare-fun res!977321 () Bool)

(assert (=> b!1445334 (=> (not res!977321) (not e!814211))))

(assert (=> b!1445334 (= res!977321 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1445335 () Bool)

(assert (=> b!1445335 (= e!814213 e!814214)))

(declare-fun res!977316 () Bool)

(assert (=> b!1445335 (=> (not res!977316) (not e!814214))))

(assert (=> b!1445335 (= res!977316 (= lt!634429 (Intermediate!11614 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1445335 (= lt!634429 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!634427 mask!2687) lt!634427 lt!634425 mask!2687))))

(assert (=> b!1445335 (= lt!634427 (select (store (arr!47339 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1445336 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98111 (_ BitVec 32)) SeekEntryResult!11614)

(assert (=> b!1445336 (= e!814215 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!634427 lt!634425 mask!2687) (seekEntryOrOpen!0 lt!634427 lt!634425 mask!2687)))))

(declare-fun b!1445328 () Bool)

(declare-fun res!977310 () Bool)

(assert (=> b!1445328 (=> (not res!977310) (not e!814211))))

(declare-datatypes ((List!34020 0))(
  ( (Nil!34017) (Cons!34016 (h!35366 (_ BitVec 64)) (t!48721 List!34020)) )
))
(declare-fun arrayNoDuplicates!0 (array!98111 (_ BitVec 32) List!34020) Bool)

(assert (=> b!1445328 (= res!977310 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34017))))

(declare-fun res!977308 () Bool)

(assert (=> start!124746 (=> (not res!977308) (not e!814211))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124746 (= res!977308 (validMask!0 mask!2687))))

(assert (=> start!124746 e!814211))

(assert (=> start!124746 true))

(declare-fun array_inv!36284 (array!98111) Bool)

(assert (=> start!124746 (array_inv!36284 a!2862)))

(declare-fun b!1445337 () Bool)

(declare-fun res!977320 () Bool)

(assert (=> b!1445337 (=> (not res!977320) (not e!814214))))

(assert (=> b!1445337 (= res!977320 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1445338 () Bool)

(declare-fun res!977313 () Bool)

(assert (=> b!1445338 (=> (not res!977313) (not e!814211))))

(assert (=> b!1445338 (= res!977313 (and (= (size!47890 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47890 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47890 a!2862)) (not (= i!1006 j!93))))))

(assert (= (and start!124746 res!977308) b!1445338))

(assert (= (and b!1445338 res!977313) b!1445325))

(assert (= (and b!1445325 res!977311) b!1445332))

(assert (= (and b!1445332 res!977317) b!1445334))

(assert (= (and b!1445334 res!977321) b!1445328))

(assert (= (and b!1445328 res!977310) b!1445323))

(assert (= (and b!1445323 res!977319) b!1445326))

(assert (= (and b!1445326 res!977315) b!1445327))

(assert (= (and b!1445327 res!977322) b!1445324))

(assert (= (and b!1445324 res!977314) b!1445335))

(assert (= (and b!1445335 res!977316) b!1445331))

(assert (= (and b!1445331 c!133520) b!1445329))

(assert (= (and b!1445331 (not c!133520)) b!1445336))

(assert (= (and b!1445331 res!977318) b!1445337))

(assert (= (and b!1445337 res!977320) b!1445333))

(assert (= (and b!1445333 res!977312) b!1445322))

(assert (= (and b!1445322 res!977309) b!1445330))

(declare-fun m!1334333 () Bool)

(assert (=> start!124746 m!1334333))

(declare-fun m!1334335 () Bool)

(assert (=> start!124746 m!1334335))

(declare-fun m!1334337 () Bool)

(assert (=> b!1445329 m!1334337))

(declare-fun m!1334339 () Bool)

(assert (=> b!1445332 m!1334339))

(assert (=> b!1445332 m!1334339))

(declare-fun m!1334341 () Bool)

(assert (=> b!1445332 m!1334341))

(assert (=> b!1445324 m!1334339))

(assert (=> b!1445324 m!1334339))

(declare-fun m!1334343 () Bool)

(assert (=> b!1445324 m!1334343))

(declare-fun m!1334345 () Bool)

(assert (=> b!1445328 m!1334345))

(declare-fun m!1334347 () Bool)

(assert (=> b!1445335 m!1334347))

(assert (=> b!1445335 m!1334347))

(declare-fun m!1334349 () Bool)

(assert (=> b!1445335 m!1334349))

(declare-fun m!1334351 () Bool)

(assert (=> b!1445335 m!1334351))

(declare-fun m!1334353 () Bool)

(assert (=> b!1445335 m!1334353))

(declare-fun m!1334355 () Bool)

(assert (=> b!1445330 m!1334355))

(assert (=> b!1445330 m!1334339))

(declare-fun m!1334357 () Bool)

(assert (=> b!1445334 m!1334357))

(assert (=> b!1445322 m!1334339))

(assert (=> b!1445322 m!1334339))

(declare-fun m!1334359 () Bool)

(assert (=> b!1445322 m!1334359))

(assert (=> b!1445327 m!1334339))

(assert (=> b!1445327 m!1334339))

(declare-fun m!1334361 () Bool)

(assert (=> b!1445327 m!1334361))

(assert (=> b!1445327 m!1334361))

(assert (=> b!1445327 m!1334339))

(declare-fun m!1334363 () Bool)

(assert (=> b!1445327 m!1334363))

(declare-fun m!1334365 () Bool)

(assert (=> b!1445333 m!1334365))

(assert (=> b!1445333 m!1334351))

(declare-fun m!1334367 () Bool)

(assert (=> b!1445333 m!1334367))

(declare-fun m!1334369 () Bool)

(assert (=> b!1445333 m!1334369))

(declare-fun m!1334371 () Bool)

(assert (=> b!1445333 m!1334371))

(assert (=> b!1445333 m!1334339))

(declare-fun m!1334373 () Bool)

(assert (=> b!1445325 m!1334373))

(assert (=> b!1445325 m!1334373))

(declare-fun m!1334375 () Bool)

(assert (=> b!1445325 m!1334375))

(declare-fun m!1334377 () Bool)

(assert (=> b!1445336 m!1334377))

(declare-fun m!1334379 () Bool)

(assert (=> b!1445336 m!1334379))

(assert (=> b!1445326 m!1334351))

(declare-fun m!1334381 () Bool)

(assert (=> b!1445326 m!1334381))

(check-sat (not b!1445336) (not b!1445335) (not b!1445334) (not b!1445333) (not b!1445324) (not b!1445329) (not b!1445332) (not b!1445328) (not b!1445325) (not b!1445327) (not b!1445322) (not start!124746))
(check-sat)
