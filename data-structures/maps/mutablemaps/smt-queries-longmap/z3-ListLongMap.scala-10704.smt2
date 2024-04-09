; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125406 () Bool)

(assert start!125406)

(declare-fun b!1465399 () Bool)

(declare-fun res!994401 () Bool)

(declare-fun e!823436 () Bool)

(assert (=> b!1465399 (=> (not res!994401) (not e!823436))))

(declare-fun e!823440 () Bool)

(assert (=> b!1465399 (= res!994401 e!823440)))

(declare-fun c!135019 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1465399 (= c!135019 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1465400 () Bool)

(declare-fun res!994404 () Bool)

(declare-fun e!823439 () Bool)

(assert (=> b!1465400 (=> (not res!994404) (not e!823439))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!98771 0))(
  ( (array!98772 (arr!47669 (Array (_ BitVec 32) (_ BitVec 64))) (size!48220 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98771)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1465400 (= res!994404 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48220 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48220 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48220 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1465401 () Bool)

(declare-fun e!823438 () Bool)

(declare-fun e!823441 () Bool)

(assert (=> b!1465401 (= e!823438 e!823441)))

(declare-fun res!994400 () Bool)

(assert (=> b!1465401 (=> res!994400 e!823441)))

(declare-fun lt!641356 () (_ BitVec 32))

(assert (=> b!1465401 (= res!994400 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!641356 #b00000000000000000000000000000000) (bvsge lt!641356 (size!48220 a!2862))))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1465401 (= lt!641356 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1465402 () Bool)

(declare-fun e!823442 () Bool)

(declare-fun lt!641359 () array!98771)

(declare-fun lt!641358 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!11944 0))(
  ( (MissingZero!11944 (index!50167 (_ BitVec 32))) (Found!11944 (index!50168 (_ BitVec 32))) (Intermediate!11944 (undefined!12756 Bool) (index!50169 (_ BitVec 32)) (x!131748 (_ BitVec 32))) (Undefined!11944) (MissingVacant!11944 (index!50170 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98771 (_ BitVec 32)) SeekEntryResult!11944)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98771 (_ BitVec 32)) SeekEntryResult!11944)

(assert (=> b!1465402 (= e!823442 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641356 intermediateAfterIndex!19 lt!641358 lt!641359 mask!2687) (seekEntryOrOpen!0 lt!641358 lt!641359 mask!2687))))))

(declare-fun b!1465403 () Bool)

(declare-fun res!994392 () Bool)

(assert (=> b!1465403 (=> (not res!994392) (not e!823439))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1465403 (= res!994392 (validKeyInArray!0 (select (arr!47669 a!2862) j!93)))))

(declare-fun res!994396 () Bool)

(assert (=> start!125406 (=> (not res!994396) (not e!823439))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125406 (= res!994396 (validMask!0 mask!2687))))

(assert (=> start!125406 e!823439))

(assert (=> start!125406 true))

(declare-fun array_inv!36614 (array!98771) Bool)

(assert (=> start!125406 (array_inv!36614 a!2862)))

(declare-fun b!1465404 () Bool)

(declare-fun res!994389 () Bool)

(declare-fun e!823435 () Bool)

(assert (=> b!1465404 (=> (not res!994389) (not e!823435))))

(declare-fun lt!641362 () SeekEntryResult!11944)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98771 (_ BitVec 32)) SeekEntryResult!11944)

(assert (=> b!1465404 (= res!994389 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47669 a!2862) j!93) a!2862 mask!2687) lt!641362))))

(declare-fun b!1465405 () Bool)

(declare-fun e!823434 () Bool)

(assert (=> b!1465405 (= e!823434 (or (= (select (arr!47669 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47669 a!2862) intermediateBeforeIndex!19) (select (arr!47669 a!2862) j!93))))))

(declare-fun b!1465406 () Bool)

(declare-fun res!994399 () Bool)

(assert (=> b!1465406 (=> (not res!994399) (not e!823439))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98771 (_ BitVec 32)) Bool)

(assert (=> b!1465406 (= res!994399 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1465407 () Bool)

(declare-fun res!994393 () Bool)

(assert (=> b!1465407 (=> (not res!994393) (not e!823434))))

(assert (=> b!1465407 (= res!994393 (= (seekEntryOrOpen!0 (select (arr!47669 a!2862) j!93) a!2862 mask!2687) (Found!11944 j!93)))))

(declare-fun b!1465408 () Bool)

(assert (=> b!1465408 (= e!823436 (not e!823438))))

(declare-fun res!994403 () Bool)

(assert (=> b!1465408 (=> res!994403 e!823438)))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1465408 (= res!994403 (or (and (= (select (arr!47669 a!2862) index!646) (select (store (arr!47669 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47669 a!2862) index!646) (select (arr!47669 a!2862) j!93))) (= (select (arr!47669 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(assert (=> b!1465408 e!823434))

(declare-fun res!994395 () Bool)

(assert (=> b!1465408 (=> (not res!994395) (not e!823434))))

(assert (=> b!1465408 (= res!994395 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49332 0))(
  ( (Unit!49333) )
))
(declare-fun lt!641357 () Unit!49332)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98771 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49332)

(assert (=> b!1465408 (= lt!641357 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1465409 () Bool)

(assert (=> b!1465409 (= e!823440 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!641358 lt!641359 mask!2687) (seekEntryOrOpen!0 lt!641358 lt!641359 mask!2687)))))

(declare-fun b!1465410 () Bool)

(declare-fun res!994397 () Bool)

(assert (=> b!1465410 (=> res!994397 e!823441)))

(assert (=> b!1465410 (= res!994397 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641356 (select (arr!47669 a!2862) j!93) a!2862 mask!2687) lt!641362)))))

(declare-fun b!1465411 () Bool)

(assert (=> b!1465411 (= e!823435 e!823436)))

(declare-fun res!994387 () Bool)

(assert (=> b!1465411 (=> (not res!994387) (not e!823436))))

(declare-fun lt!641361 () SeekEntryResult!11944)

(assert (=> b!1465411 (= res!994387 (= lt!641361 (Intermediate!11944 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1465411 (= lt!641361 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!641358 mask!2687) lt!641358 lt!641359 mask!2687))))

(assert (=> b!1465411 (= lt!641358 (select (store (arr!47669 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1465412 () Bool)

(declare-fun e!823433 () Bool)

(assert (=> b!1465412 (= e!823439 e!823433)))

(declare-fun res!994402 () Bool)

(assert (=> b!1465412 (=> (not res!994402) (not e!823433))))

(assert (=> b!1465412 (= res!994402 (= (select (store (arr!47669 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1465412 (= lt!641359 (array!98772 (store (arr!47669 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48220 a!2862)))))

(declare-fun b!1465413 () Bool)

(assert (=> b!1465413 (= e!823440 (= lt!641361 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!641358 lt!641359 mask!2687)))))

(declare-fun b!1465414 () Bool)

(assert (=> b!1465414 (= e!823433 e!823435)))

(declare-fun res!994390 () Bool)

(assert (=> b!1465414 (=> (not res!994390) (not e!823435))))

(assert (=> b!1465414 (= res!994390 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47669 a!2862) j!93) mask!2687) (select (arr!47669 a!2862) j!93) a!2862 mask!2687) lt!641362))))

(assert (=> b!1465414 (= lt!641362 (Intermediate!11944 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1465415 () Bool)

(declare-fun res!994398 () Bool)

(assert (=> b!1465415 (=> (not res!994398) (not e!823439))))

(assert (=> b!1465415 (= res!994398 (and (= (size!48220 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48220 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48220 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1465416 () Bool)

(declare-fun res!994394 () Bool)

(assert (=> b!1465416 (=> (not res!994394) (not e!823436))))

(assert (=> b!1465416 (= res!994394 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1465417 () Bool)

(declare-fun res!994391 () Bool)

(assert (=> b!1465417 (=> (not res!994391) (not e!823439))))

(declare-datatypes ((List!34350 0))(
  ( (Nil!34347) (Cons!34346 (h!35696 (_ BitVec 64)) (t!49051 List!34350)) )
))
(declare-fun arrayNoDuplicates!0 (array!98771 (_ BitVec 32) List!34350) Bool)

(assert (=> b!1465417 (= res!994391 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34347))))

(declare-fun b!1465418 () Bool)

(declare-fun res!994388 () Bool)

(assert (=> b!1465418 (=> (not res!994388) (not e!823439))))

(assert (=> b!1465418 (= res!994388 (validKeyInArray!0 (select (arr!47669 a!2862) i!1006)))))

(declare-fun b!1465419 () Bool)

(assert (=> b!1465419 (= e!823442 (not (= lt!641361 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641356 lt!641358 lt!641359 mask!2687))))))

(declare-fun b!1465420 () Bool)

(assert (=> b!1465420 (= e!823441 true)))

(declare-fun lt!641360 () Bool)

(assert (=> b!1465420 (= lt!641360 e!823442)))

(declare-fun c!135020 () Bool)

(assert (=> b!1465420 (= c!135020 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(assert (= (and start!125406 res!994396) b!1465415))

(assert (= (and b!1465415 res!994398) b!1465418))

(assert (= (and b!1465418 res!994388) b!1465403))

(assert (= (and b!1465403 res!994392) b!1465406))

(assert (= (and b!1465406 res!994399) b!1465417))

(assert (= (and b!1465417 res!994391) b!1465400))

(assert (= (and b!1465400 res!994404) b!1465412))

(assert (= (and b!1465412 res!994402) b!1465414))

(assert (= (and b!1465414 res!994390) b!1465404))

(assert (= (and b!1465404 res!994389) b!1465411))

(assert (= (and b!1465411 res!994387) b!1465399))

(assert (= (and b!1465399 c!135019) b!1465413))

(assert (= (and b!1465399 (not c!135019)) b!1465409))

(assert (= (and b!1465399 res!994401) b!1465416))

(assert (= (and b!1465416 res!994394) b!1465408))

(assert (= (and b!1465408 res!994395) b!1465407))

(assert (= (and b!1465407 res!994393) b!1465405))

(assert (= (and b!1465408 (not res!994403)) b!1465401))

(assert (= (and b!1465401 (not res!994400)) b!1465410))

(assert (= (and b!1465410 (not res!994397)) b!1465420))

(assert (= (and b!1465420 c!135020) b!1465419))

(assert (= (and b!1465420 (not c!135020)) b!1465402))

(declare-fun m!1352545 () Bool)

(assert (=> b!1465402 m!1352545))

(declare-fun m!1352547 () Bool)

(assert (=> b!1465402 m!1352547))

(declare-fun m!1352549 () Bool)

(assert (=> b!1465403 m!1352549))

(assert (=> b!1465403 m!1352549))

(declare-fun m!1352551 () Bool)

(assert (=> b!1465403 m!1352551))

(assert (=> b!1465404 m!1352549))

(assert (=> b!1465404 m!1352549))

(declare-fun m!1352553 () Bool)

(assert (=> b!1465404 m!1352553))

(declare-fun m!1352555 () Bool)

(assert (=> start!125406 m!1352555))

(declare-fun m!1352557 () Bool)

(assert (=> start!125406 m!1352557))

(declare-fun m!1352559 () Bool)

(assert (=> b!1465413 m!1352559))

(declare-fun m!1352561 () Bool)

(assert (=> b!1465412 m!1352561))

(declare-fun m!1352563 () Bool)

(assert (=> b!1465412 m!1352563))

(assert (=> b!1465407 m!1352549))

(assert (=> b!1465407 m!1352549))

(declare-fun m!1352565 () Bool)

(assert (=> b!1465407 m!1352565))

(declare-fun m!1352567 () Bool)

(assert (=> b!1465408 m!1352567))

(assert (=> b!1465408 m!1352561))

(declare-fun m!1352569 () Bool)

(assert (=> b!1465408 m!1352569))

(declare-fun m!1352571 () Bool)

(assert (=> b!1465408 m!1352571))

(declare-fun m!1352573 () Bool)

(assert (=> b!1465408 m!1352573))

(assert (=> b!1465408 m!1352549))

(assert (=> b!1465414 m!1352549))

(assert (=> b!1465414 m!1352549))

(declare-fun m!1352575 () Bool)

(assert (=> b!1465414 m!1352575))

(assert (=> b!1465414 m!1352575))

(assert (=> b!1465414 m!1352549))

(declare-fun m!1352577 () Bool)

(assert (=> b!1465414 m!1352577))

(declare-fun m!1352579 () Bool)

(assert (=> b!1465401 m!1352579))

(declare-fun m!1352581 () Bool)

(assert (=> b!1465418 m!1352581))

(assert (=> b!1465418 m!1352581))

(declare-fun m!1352583 () Bool)

(assert (=> b!1465418 m!1352583))

(declare-fun m!1352585 () Bool)

(assert (=> b!1465417 m!1352585))

(assert (=> b!1465410 m!1352549))

(assert (=> b!1465410 m!1352549))

(declare-fun m!1352587 () Bool)

(assert (=> b!1465410 m!1352587))

(declare-fun m!1352589 () Bool)

(assert (=> b!1465406 m!1352589))

(declare-fun m!1352591 () Bool)

(assert (=> b!1465405 m!1352591))

(assert (=> b!1465405 m!1352549))

(declare-fun m!1352593 () Bool)

(assert (=> b!1465411 m!1352593))

(assert (=> b!1465411 m!1352593))

(declare-fun m!1352595 () Bool)

(assert (=> b!1465411 m!1352595))

(assert (=> b!1465411 m!1352561))

(declare-fun m!1352597 () Bool)

(assert (=> b!1465411 m!1352597))

(declare-fun m!1352599 () Bool)

(assert (=> b!1465419 m!1352599))

(declare-fun m!1352601 () Bool)

(assert (=> b!1465409 m!1352601))

(assert (=> b!1465409 m!1352547))

(check-sat (not b!1465419) (not b!1465403) (not b!1465402) (not b!1465407) (not start!125406) (not b!1465413) (not b!1465406) (not b!1465404) (not b!1465417) (not b!1465411) (not b!1465410) (not b!1465414) (not b!1465409) (not b!1465401) (not b!1465418) (not b!1465408))
(check-sat)
