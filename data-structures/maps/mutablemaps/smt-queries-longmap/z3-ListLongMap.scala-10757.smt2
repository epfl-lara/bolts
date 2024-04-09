; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125844 () Bool)

(assert start!125844)

(declare-fun e!826408 () Bool)

(declare-datatypes ((array!99095 0))(
  ( (array!99096 (arr!47828 (Array (_ BitVec 32) (_ BitVec 64))) (size!48379 (_ BitVec 32))) )
))
(declare-fun lt!643563 () array!99095)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun lt!643565 () (_ BitVec 64))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun b!1472535 () Bool)

(declare-datatypes ((SeekEntryResult!12091 0))(
  ( (MissingZero!12091 (index!50755 (_ BitVec 32))) (Found!12091 (index!50756 (_ BitVec 32))) (Intermediate!12091 (undefined!12903 Bool) (index!50757 (_ BitVec 32)) (x!132337 (_ BitVec 32))) (Undefined!12091) (MissingVacant!12091 (index!50758 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99095 (_ BitVec 32)) SeekEntryResult!12091)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99095 (_ BitVec 32)) SeekEntryResult!12091)

(assert (=> b!1472535 (= e!826408 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!643565 lt!643563 mask!2687) (seekEntryOrOpen!0 lt!643565 lt!643563 mask!2687)))))

(declare-fun b!1472536 () Bool)

(declare-fun e!826407 () Bool)

(declare-fun e!826412 () Bool)

(assert (=> b!1472536 (= e!826407 e!826412)))

(declare-fun res!1000299 () Bool)

(assert (=> b!1472536 (=> (not res!1000299) (not e!826412))))

(declare-fun lt!643566 () SeekEntryResult!12091)

(declare-fun a!2862 () array!99095)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99095 (_ BitVec 32)) SeekEntryResult!12091)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1472536 (= res!1000299 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47828 a!2862) j!93) mask!2687) (select (arr!47828 a!2862) j!93) a!2862 mask!2687) lt!643566))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1472536 (= lt!643566 (Intermediate!12091 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1472537 () Bool)

(declare-fun res!1000285 () Bool)

(declare-fun e!826410 () Bool)

(assert (=> b!1472537 (=> (not res!1000285) (not e!826410))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99095 (_ BitVec 32)) Bool)

(assert (=> b!1472537 (= res!1000285 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1472538 () Bool)

(declare-fun res!1000289 () Bool)

(assert (=> b!1472538 (=> (not res!1000289) (not e!826410))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1472538 (= res!1000289 (validKeyInArray!0 (select (arr!47828 a!2862) j!93)))))

(declare-fun b!1472539 () Bool)

(declare-fun res!1000287 () Bool)

(assert (=> b!1472539 (=> (not res!1000287) (not e!826410))))

(declare-datatypes ((List!34509 0))(
  ( (Nil!34506) (Cons!34505 (h!35861 (_ BitVec 64)) (t!49210 List!34509)) )
))
(declare-fun arrayNoDuplicates!0 (array!99095 (_ BitVec 32) List!34509) Bool)

(assert (=> b!1472539 (= res!1000287 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34506))))

(declare-fun b!1472540 () Bool)

(declare-fun res!1000294 () Bool)

(assert (=> b!1472540 (=> (not res!1000294) (not e!826410))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1472540 (= res!1000294 (and (= (size!48379 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48379 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48379 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1472541 () Bool)

(declare-fun res!1000297 () Bool)

(declare-fun e!826409 () Bool)

(assert (=> b!1472541 (=> (not res!1000297) (not e!826409))))

(assert (=> b!1472541 (= res!1000297 e!826408)))

(declare-fun c!135641 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1472541 (= c!135641 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1472542 () Bool)

(assert (=> b!1472542 (= e!826410 e!826407)))

(declare-fun res!1000291 () Bool)

(assert (=> b!1472542 (=> (not res!1000291) (not e!826407))))

(assert (=> b!1472542 (= res!1000291 (= (select (store (arr!47828 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1472542 (= lt!643563 (array!99096 (store (arr!47828 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48379 a!2862)))))

(declare-fun b!1472543 () Bool)

(declare-fun res!1000296 () Bool)

(declare-fun e!826411 () Bool)

(assert (=> b!1472543 (=> (not res!1000296) (not e!826411))))

(assert (=> b!1472543 (= res!1000296 (= (seekEntryOrOpen!0 (select (arr!47828 a!2862) j!93) a!2862 mask!2687) (Found!12091 j!93)))))

(declare-fun b!1472544 () Bool)

(assert (=> b!1472544 (= e!826412 e!826409)))

(declare-fun res!1000290 () Bool)

(assert (=> b!1472544 (=> (not res!1000290) (not e!826409))))

(declare-fun lt!643564 () SeekEntryResult!12091)

(assert (=> b!1472544 (= res!1000290 (= lt!643564 (Intermediate!12091 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1472544 (= lt!643564 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!643565 mask!2687) lt!643565 lt!643563 mask!2687))))

(assert (=> b!1472544 (= lt!643565 (select (store (arr!47828 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1472545 () Bool)

(declare-fun res!1000292 () Bool)

(assert (=> b!1472545 (=> (not res!1000292) (not e!826409))))

(assert (=> b!1472545 (= res!1000292 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun res!1000286 () Bool)

(assert (=> start!125844 (=> (not res!1000286) (not e!826410))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125844 (= res!1000286 (validMask!0 mask!2687))))

(assert (=> start!125844 e!826410))

(assert (=> start!125844 true))

(declare-fun array_inv!36773 (array!99095) Bool)

(assert (=> start!125844 (array_inv!36773 a!2862)))

(declare-fun b!1472546 () Bool)

(assert (=> b!1472546 (= e!826411 (or (= (select (arr!47828 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47828 a!2862) intermediateBeforeIndex!19) (select (arr!47828 a!2862) j!93))))))

(declare-fun b!1472547 () Bool)

(assert (=> b!1472547 (= e!826408 (= lt!643564 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!643565 lt!643563 mask!2687)))))

(declare-fun b!1472548 () Bool)

(declare-fun res!1000295 () Bool)

(assert (=> b!1472548 (=> (not res!1000295) (not e!826410))))

(assert (=> b!1472548 (= res!1000295 (validKeyInArray!0 (select (arr!47828 a!2862) i!1006)))))

(declare-fun b!1472549 () Bool)

(declare-fun res!1000293 () Bool)

(assert (=> b!1472549 (=> (not res!1000293) (not e!826410))))

(assert (=> b!1472549 (= res!1000293 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48379 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48379 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48379 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1472550 () Bool)

(declare-fun res!1000288 () Bool)

(assert (=> b!1472550 (=> (not res!1000288) (not e!826412))))

(assert (=> b!1472550 (= res!1000288 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47828 a!2862) j!93) a!2862 mask!2687) lt!643566))))

(declare-fun b!1472551 () Bool)

(assert (=> b!1472551 (= e!826409 (not true))))

(assert (=> b!1472551 e!826411))

(declare-fun res!1000298 () Bool)

(assert (=> b!1472551 (=> (not res!1000298) (not e!826411))))

(assert (=> b!1472551 (= res!1000298 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49470 0))(
  ( (Unit!49471) )
))
(declare-fun lt!643567 () Unit!49470)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99095 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49470)

(assert (=> b!1472551 (= lt!643567 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(assert (= (and start!125844 res!1000286) b!1472540))

(assert (= (and b!1472540 res!1000294) b!1472548))

(assert (= (and b!1472548 res!1000295) b!1472538))

(assert (= (and b!1472538 res!1000289) b!1472537))

(assert (= (and b!1472537 res!1000285) b!1472539))

(assert (= (and b!1472539 res!1000287) b!1472549))

(assert (= (and b!1472549 res!1000293) b!1472542))

(assert (= (and b!1472542 res!1000291) b!1472536))

(assert (= (and b!1472536 res!1000299) b!1472550))

(assert (= (and b!1472550 res!1000288) b!1472544))

(assert (= (and b!1472544 res!1000290) b!1472541))

(assert (= (and b!1472541 c!135641) b!1472547))

(assert (= (and b!1472541 (not c!135641)) b!1472535))

(assert (= (and b!1472541 res!1000297) b!1472545))

(assert (= (and b!1472545 res!1000292) b!1472551))

(assert (= (and b!1472551 res!1000298) b!1472543))

(assert (= (and b!1472543 res!1000296) b!1472546))

(declare-fun m!1359289 () Bool)

(assert (=> b!1472548 m!1359289))

(assert (=> b!1472548 m!1359289))

(declare-fun m!1359291 () Bool)

(assert (=> b!1472548 m!1359291))

(declare-fun m!1359293 () Bool)

(assert (=> b!1472538 m!1359293))

(assert (=> b!1472538 m!1359293))

(declare-fun m!1359295 () Bool)

(assert (=> b!1472538 m!1359295))

(assert (=> b!1472550 m!1359293))

(assert (=> b!1472550 m!1359293))

(declare-fun m!1359297 () Bool)

(assert (=> b!1472550 m!1359297))

(declare-fun m!1359299 () Bool)

(assert (=> b!1472551 m!1359299))

(declare-fun m!1359301 () Bool)

(assert (=> b!1472551 m!1359301))

(declare-fun m!1359303 () Bool)

(assert (=> b!1472537 m!1359303))

(declare-fun m!1359305 () Bool)

(assert (=> b!1472546 m!1359305))

(assert (=> b!1472546 m!1359293))

(assert (=> b!1472543 m!1359293))

(assert (=> b!1472543 m!1359293))

(declare-fun m!1359307 () Bool)

(assert (=> b!1472543 m!1359307))

(assert (=> b!1472536 m!1359293))

(assert (=> b!1472536 m!1359293))

(declare-fun m!1359309 () Bool)

(assert (=> b!1472536 m!1359309))

(assert (=> b!1472536 m!1359309))

(assert (=> b!1472536 m!1359293))

(declare-fun m!1359311 () Bool)

(assert (=> b!1472536 m!1359311))

(declare-fun m!1359313 () Bool)

(assert (=> start!125844 m!1359313))

(declare-fun m!1359315 () Bool)

(assert (=> start!125844 m!1359315))

(declare-fun m!1359317 () Bool)

(assert (=> b!1472539 m!1359317))

(declare-fun m!1359319 () Bool)

(assert (=> b!1472547 m!1359319))

(declare-fun m!1359321 () Bool)

(assert (=> b!1472544 m!1359321))

(assert (=> b!1472544 m!1359321))

(declare-fun m!1359323 () Bool)

(assert (=> b!1472544 m!1359323))

(declare-fun m!1359325 () Bool)

(assert (=> b!1472544 m!1359325))

(declare-fun m!1359327 () Bool)

(assert (=> b!1472544 m!1359327))

(assert (=> b!1472542 m!1359325))

(declare-fun m!1359329 () Bool)

(assert (=> b!1472542 m!1359329))

(declare-fun m!1359331 () Bool)

(assert (=> b!1472535 m!1359331))

(declare-fun m!1359333 () Bool)

(assert (=> b!1472535 m!1359333))

(check-sat (not b!1472548) (not b!1472539) (not b!1472537) (not b!1472543) (not b!1472538) (not b!1472551) (not b!1472550) (not b!1472547) (not b!1472536) (not b!1472544) (not b!1472535) (not start!125844))
(check-sat)
