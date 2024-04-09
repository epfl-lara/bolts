; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124708 () Bool)

(assert start!124708)

(declare-fun b!1444346 () Bool)

(declare-fun e!813818 () Bool)

(declare-fun lt!634133 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1444346 (= e!813818 (validKeyInArray!0 lt!634133))))

(declare-fun b!1444347 () Bool)

(declare-fun res!976459 () Bool)

(assert (=> b!1444347 (=> res!976459 e!813818)))

(declare-datatypes ((SeekEntryResult!11595 0))(
  ( (MissingZero!11595 (index!48771 (_ BitVec 32))) (Found!11595 (index!48772 (_ BitVec 32))) (Intermediate!11595 (undefined!12407 Bool) (index!48773 (_ BitVec 32)) (x!130471 (_ BitVec 32))) (Undefined!11595) (MissingVacant!11595 (index!48774 (_ BitVec 32))) )
))
(declare-fun lt!634137 () SeekEntryResult!11595)

(declare-datatypes ((array!98073 0))(
  ( (array!98074 (arr!47320 (Array (_ BitVec 32) (_ BitVec 64))) (size!47871 (_ BitVec 32))) )
))
(declare-fun lt!634134 () array!98073)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98073 (_ BitVec 32)) SeekEntryResult!11595)

(assert (=> b!1444347 (= res!976459 (not (= lt!634137 (seekEntryOrOpen!0 lt!634133 lt!634134 mask!2687))))))

(declare-fun b!1444348 () Bool)

(declare-fun e!813813 () Bool)

(declare-fun e!813814 () Bool)

(assert (=> b!1444348 (= e!813813 e!813814)))

(declare-fun res!976454 () Bool)

(assert (=> b!1444348 (=> (not res!976454) (not e!813814))))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun a!2862 () array!98073)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1444348 (= res!976454 (= (select (store (arr!47320 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1444348 (= lt!634134 (array!98074 (store (arr!47320 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47871 a!2862)))))

(declare-fun b!1444349 () Bool)

(declare-fun res!976450 () Bool)

(assert (=> b!1444349 (=> (not res!976450) (not e!813813))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98073 (_ BitVec 32)) Bool)

(assert (=> b!1444349 (= res!976450 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun res!976457 () Bool)

(assert (=> start!124708 (=> (not res!976457) (not e!813813))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124708 (= res!976457 (validMask!0 mask!2687))))

(assert (=> start!124708 e!813813))

(assert (=> start!124708 true))

(declare-fun array_inv!36265 (array!98073) Bool)

(assert (=> start!124708 (array_inv!36265 a!2862)))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun lt!634135 () SeekEntryResult!11595)

(declare-fun b!1444350 () Bool)

(declare-fun e!813815 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98073 (_ BitVec 32)) SeekEntryResult!11595)

(assert (=> b!1444350 (= e!813815 (= lt!634135 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!634133 lt!634134 mask!2687)))))

(declare-fun b!1444351 () Bool)

(declare-fun e!813816 () Bool)

(assert (=> b!1444351 (= e!813814 e!813816)))

(declare-fun res!976446 () Bool)

(assert (=> b!1444351 (=> (not res!976446) (not e!813816))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun lt!634138 () SeekEntryResult!11595)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1444351 (= res!976446 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47320 a!2862) j!93) mask!2687) (select (arr!47320 a!2862) j!93) a!2862 mask!2687) lt!634138))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1444351 (= lt!634138 (Intermediate!11595 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1444352 () Bool)

(declare-fun res!976447 () Bool)

(declare-fun e!813817 () Bool)

(assert (=> b!1444352 (=> (not res!976447) (not e!813817))))

(assert (=> b!1444352 (= res!976447 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1444353 () Bool)

(declare-fun res!976449 () Bool)

(assert (=> b!1444353 (=> (not res!976449) (not e!813813))))

(assert (=> b!1444353 (= res!976449 (validKeyInArray!0 (select (arr!47320 a!2862) j!93)))))

(declare-fun b!1444354 () Bool)

(declare-fun res!976460 () Bool)

(assert (=> b!1444354 (=> (not res!976460) (not e!813813))))

(assert (=> b!1444354 (= res!976460 (validKeyInArray!0 (select (arr!47320 a!2862) i!1006)))))

(declare-fun b!1444355 () Bool)

(declare-fun res!976458 () Bool)

(assert (=> b!1444355 (=> (not res!976458) (not e!813813))))

(declare-datatypes ((List!34001 0))(
  ( (Nil!33998) (Cons!33997 (h!35347 (_ BitVec 64)) (t!48702 List!34001)) )
))
(declare-fun arrayNoDuplicates!0 (array!98073 (_ BitVec 32) List!34001) Bool)

(assert (=> b!1444355 (= res!976458 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33998))))

(declare-fun b!1444356 () Bool)

(assert (=> b!1444356 (= e!813816 e!813817)))

(declare-fun res!976451 () Bool)

(assert (=> b!1444356 (=> (not res!976451) (not e!813817))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1444356 (= res!976451 (= lt!634135 (Intermediate!11595 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1444356 (= lt!634135 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!634133 mask!2687) lt!634133 lt!634134 mask!2687))))

(assert (=> b!1444356 (= lt!634133 (select (store (arr!47320 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1444357 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98073 (_ BitVec 32)) SeekEntryResult!11595)

(assert (=> b!1444357 (= e!813815 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!634133 lt!634134 mask!2687) (seekEntryOrOpen!0 lt!634133 lt!634134 mask!2687)))))

(declare-fun b!1444358 () Bool)

(declare-fun res!976448 () Bool)

(assert (=> b!1444358 (=> (not res!976448) (not e!813813))))

(assert (=> b!1444358 (= res!976448 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47871 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47871 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47871 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1444359 () Bool)

(declare-fun res!976452 () Bool)

(assert (=> b!1444359 (=> (not res!976452) (not e!813817))))

(assert (=> b!1444359 (= res!976452 e!813815)))

(declare-fun c!133463 () Bool)

(assert (=> b!1444359 (= c!133463 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1444360 () Bool)

(declare-fun res!976461 () Bool)

(assert (=> b!1444360 (=> (not res!976461) (not e!813813))))

(assert (=> b!1444360 (= res!976461 (and (= (size!47871 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47871 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47871 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1444361 () Bool)

(assert (=> b!1444361 (= e!813817 (not e!813818))))

(declare-fun res!976456 () Bool)

(assert (=> b!1444361 (=> res!976456 e!813818)))

(assert (=> b!1444361 (= res!976456 (or (not (= (select (arr!47320 a!2862) index!646) (select (store (arr!47320 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (not (= (select (arr!47320 a!2862) index!646) (select (arr!47320 a!2862) j!93)))))))

(assert (=> b!1444361 (and (= lt!634137 (Found!11595 j!93)) (or (= (select (arr!47320 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47320 a!2862) intermediateBeforeIndex!19) (select (arr!47320 a!2862) j!93))))))

(assert (=> b!1444361 (= lt!634137 (seekEntryOrOpen!0 (select (arr!47320 a!2862) j!93) a!2862 mask!2687))))

(assert (=> b!1444361 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!48634 0))(
  ( (Unit!48635) )
))
(declare-fun lt!634136 () Unit!48634)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98073 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48634)

(assert (=> b!1444361 (= lt!634136 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1444362 () Bool)

(declare-fun res!976455 () Bool)

(assert (=> b!1444362 (=> (not res!976455) (not e!813816))))

(assert (=> b!1444362 (= res!976455 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47320 a!2862) j!93) a!2862 mask!2687) lt!634138))))

(declare-fun b!1444363 () Bool)

(declare-fun res!976453 () Bool)

(assert (=> b!1444363 (=> res!976453 e!813818)))

(assert (=> b!1444363 (= res!976453 (bvslt mask!2687 #b00000000000000000000000000000000))))

(assert (= (and start!124708 res!976457) b!1444360))

(assert (= (and b!1444360 res!976461) b!1444354))

(assert (= (and b!1444354 res!976460) b!1444353))

(assert (= (and b!1444353 res!976449) b!1444349))

(assert (= (and b!1444349 res!976450) b!1444355))

(assert (= (and b!1444355 res!976458) b!1444358))

(assert (= (and b!1444358 res!976448) b!1444348))

(assert (= (and b!1444348 res!976454) b!1444351))

(assert (= (and b!1444351 res!976446) b!1444362))

(assert (= (and b!1444362 res!976455) b!1444356))

(assert (= (and b!1444356 res!976451) b!1444359))

(assert (= (and b!1444359 c!133463) b!1444350))

(assert (= (and b!1444359 (not c!133463)) b!1444357))

(assert (= (and b!1444359 res!976452) b!1444352))

(assert (= (and b!1444352 res!976447) b!1444361))

(assert (= (and b!1444361 (not res!976456)) b!1444347))

(assert (= (and b!1444347 (not res!976459)) b!1444363))

(assert (= (and b!1444363 (not res!976453)) b!1444346))

(declare-fun m!1333425 () Bool)

(assert (=> b!1444353 m!1333425))

(assert (=> b!1444353 m!1333425))

(declare-fun m!1333427 () Bool)

(assert (=> b!1444353 m!1333427))

(declare-fun m!1333429 () Bool)

(assert (=> b!1444349 m!1333429))

(declare-fun m!1333431 () Bool)

(assert (=> b!1444348 m!1333431))

(declare-fun m!1333433 () Bool)

(assert (=> b!1444348 m!1333433))

(declare-fun m!1333435 () Bool)

(assert (=> b!1444357 m!1333435))

(declare-fun m!1333437 () Bool)

(assert (=> b!1444357 m!1333437))

(declare-fun m!1333439 () Bool)

(assert (=> b!1444355 m!1333439))

(declare-fun m!1333441 () Bool)

(assert (=> b!1444354 m!1333441))

(assert (=> b!1444354 m!1333441))

(declare-fun m!1333443 () Bool)

(assert (=> b!1444354 m!1333443))

(assert (=> b!1444347 m!1333437))

(assert (=> b!1444351 m!1333425))

(assert (=> b!1444351 m!1333425))

(declare-fun m!1333445 () Bool)

(assert (=> b!1444351 m!1333445))

(assert (=> b!1444351 m!1333445))

(assert (=> b!1444351 m!1333425))

(declare-fun m!1333447 () Bool)

(assert (=> b!1444351 m!1333447))

(declare-fun m!1333449 () Bool)

(assert (=> b!1444346 m!1333449))

(declare-fun m!1333451 () Bool)

(assert (=> b!1444356 m!1333451))

(assert (=> b!1444356 m!1333451))

(declare-fun m!1333453 () Bool)

(assert (=> b!1444356 m!1333453))

(assert (=> b!1444356 m!1333431))

(declare-fun m!1333455 () Bool)

(assert (=> b!1444356 m!1333455))

(declare-fun m!1333457 () Bool)

(assert (=> start!124708 m!1333457))

(declare-fun m!1333459 () Bool)

(assert (=> start!124708 m!1333459))

(declare-fun m!1333461 () Bool)

(assert (=> b!1444361 m!1333461))

(assert (=> b!1444361 m!1333431))

(declare-fun m!1333463 () Bool)

(assert (=> b!1444361 m!1333463))

(declare-fun m!1333465 () Bool)

(assert (=> b!1444361 m!1333465))

(declare-fun m!1333467 () Bool)

(assert (=> b!1444361 m!1333467))

(assert (=> b!1444361 m!1333425))

(declare-fun m!1333469 () Bool)

(assert (=> b!1444361 m!1333469))

(declare-fun m!1333471 () Bool)

(assert (=> b!1444361 m!1333471))

(assert (=> b!1444361 m!1333425))

(assert (=> b!1444362 m!1333425))

(assert (=> b!1444362 m!1333425))

(declare-fun m!1333473 () Bool)

(assert (=> b!1444362 m!1333473))

(declare-fun m!1333475 () Bool)

(assert (=> b!1444350 m!1333475))

(push 1)

