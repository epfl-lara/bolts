; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125128 () Bool)

(assert start!125128)

(declare-fun b!1456396 () Bool)

(declare-fun res!986985 () Bool)

(declare-fun e!819438 () Bool)

(assert (=> b!1456396 (=> (not res!986985) (not e!819438))))

(declare-datatypes ((array!98493 0))(
  ( (array!98494 (arr!47530 (Array (_ BitVec 32) (_ BitVec 64))) (size!48081 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98493)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11805 0))(
  ( (MissingZero!11805 (index!49611 (_ BitVec 32))) (Found!11805 (index!49612 (_ BitVec 32))) (Intermediate!11805 (undefined!12617 Bool) (index!49613 (_ BitVec 32)) (x!131241 (_ BitVec 32))) (Undefined!11805) (MissingVacant!11805 (index!49614 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98493 (_ BitVec 32)) SeekEntryResult!11805)

(assert (=> b!1456396 (= res!986985 (= (seekEntryOrOpen!0 (select (arr!47530 a!2862) j!93) a!2862 mask!2687) (Found!11805 j!93)))))

(declare-fun b!1456397 () Bool)

(declare-fun e!819435 () Bool)

(declare-fun e!819443 () Bool)

(assert (=> b!1456397 (= e!819435 e!819443)))

(declare-fun res!986994 () Bool)

(assert (=> b!1456397 (=> (not res!986994) (not e!819443))))

(declare-fun lt!638269 () SeekEntryResult!11805)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98493 (_ BitVec 32)) SeekEntryResult!11805)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1456397 (= res!986994 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47530 a!2862) j!93) mask!2687) (select (arr!47530 a!2862) j!93) a!2862 mask!2687) lt!638269))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1456397 (= lt!638269 (Intermediate!11805 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1456398 () Bool)

(declare-fun res!986983 () Bool)

(declare-fun e!819436 () Bool)

(assert (=> b!1456398 (=> (not res!986983) (not e!819436))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1456398 (= res!986983 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48081 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48081 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48081 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1456399 () Bool)

(declare-fun res!986991 () Bool)

(assert (=> b!1456399 (=> (not res!986991) (not e!819436))))

(declare-datatypes ((List!34211 0))(
  ( (Nil!34208) (Cons!34207 (h!35557 (_ BitVec 64)) (t!48912 List!34211)) )
))
(declare-fun arrayNoDuplicates!0 (array!98493 (_ BitVec 32) List!34211) Bool)

(assert (=> b!1456399 (= res!986991 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34208))))

(declare-fun b!1456400 () Bool)

(declare-fun e!819437 () Bool)

(declare-fun e!819441 () Bool)

(assert (=> b!1456400 (= e!819437 (not e!819441))))

(declare-fun res!986980 () Bool)

(assert (=> b!1456400 (=> res!986980 e!819441)))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1456400 (= res!986980 (or (and (= (select (arr!47530 a!2862) index!646) (select (store (arr!47530 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47530 a!2862) index!646) (select (arr!47530 a!2862) j!93))) (= (select (arr!47530 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1456400 e!819438))

(declare-fun res!986993 () Bool)

(assert (=> b!1456400 (=> (not res!986993) (not e!819438))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98493 (_ BitVec 32)) Bool)

(assert (=> b!1456400 (= res!986993 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49054 0))(
  ( (Unit!49055) )
))
(declare-fun lt!638273 () Unit!49054)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98493 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49054)

(assert (=> b!1456400 (= lt!638273 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1456401 () Bool)

(declare-fun res!986987 () Bool)

(assert (=> b!1456401 (=> (not res!986987) (not e!819437))))

(assert (=> b!1456401 (= res!986987 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1456402 () Bool)

(declare-fun res!986981 () Bool)

(assert (=> b!1456402 (=> (not res!986981) (not e!819436))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1456402 (= res!986981 (validKeyInArray!0 (select (arr!47530 a!2862) i!1006)))))

(declare-fun lt!638272 () SeekEntryResult!11805)

(declare-fun e!819439 () Bool)

(declare-fun lt!638275 () (_ BitVec 64))

(declare-fun b!1456403 () Bool)

(declare-fun lt!638268 () array!98493)

(assert (=> b!1456403 (= e!819439 (= lt!638272 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!638275 lt!638268 mask!2687)))))

(declare-fun b!1456404 () Bool)

(declare-fun res!986992 () Bool)

(declare-fun e!819442 () Bool)

(assert (=> b!1456404 (=> res!986992 e!819442)))

(declare-fun lt!638271 () (_ BitVec 32))

(assert (=> b!1456404 (= res!986992 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638271 (select (arr!47530 a!2862) j!93) a!2862 mask!2687) lt!638269)))))

(declare-fun res!986984 () Bool)

(assert (=> start!125128 (=> (not res!986984) (not e!819436))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125128 (= res!986984 (validMask!0 mask!2687))))

(assert (=> start!125128 e!819436))

(assert (=> start!125128 true))

(declare-fun array_inv!36475 (array!98493) Bool)

(assert (=> start!125128 (array_inv!36475 a!2862)))

(declare-fun b!1456405 () Bool)

(declare-fun res!986997 () Bool)

(assert (=> b!1456405 (=> (not res!986997) (not e!819436))))

(assert (=> b!1456405 (= res!986997 (and (= (size!48081 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48081 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48081 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1456406 () Bool)

(assert (=> b!1456406 (= e!819443 e!819437)))

(declare-fun res!986990 () Bool)

(assert (=> b!1456406 (=> (not res!986990) (not e!819437))))

(assert (=> b!1456406 (= res!986990 (= lt!638272 (Intermediate!11805 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1456406 (= lt!638272 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!638275 mask!2687) lt!638275 lt!638268 mask!2687))))

(assert (=> b!1456406 (= lt!638275 (select (store (arr!47530 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1456407 () Bool)

(declare-fun res!986986 () Bool)

(assert (=> b!1456407 (=> (not res!986986) (not e!819437))))

(assert (=> b!1456407 (= res!986986 e!819439)))

(declare-fun c!134222 () Bool)

(assert (=> b!1456407 (= c!134222 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1456408 () Bool)

(assert (=> b!1456408 (= e!819436 e!819435)))

(declare-fun res!986982 () Bool)

(assert (=> b!1456408 (=> (not res!986982) (not e!819435))))

(assert (=> b!1456408 (= res!986982 (= (select (store (arr!47530 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1456408 (= lt!638268 (array!98494 (store (arr!47530 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48081 a!2862)))))

(declare-fun b!1456409 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98493 (_ BitVec 32)) SeekEntryResult!11805)

(assert (=> b!1456409 (= e!819439 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!638275 lt!638268 mask!2687) (seekEntryOrOpen!0 lt!638275 lt!638268 mask!2687)))))

(declare-fun b!1456410 () Bool)

(declare-fun res!986988 () Bool)

(assert (=> b!1456410 (=> (not res!986988) (not e!819436))))

(assert (=> b!1456410 (= res!986988 (validKeyInArray!0 (select (arr!47530 a!2862) j!93)))))

(declare-fun b!1456411 () Bool)

(declare-fun res!986989 () Bool)

(assert (=> b!1456411 (=> (not res!986989) (not e!819443))))

(assert (=> b!1456411 (= res!986989 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47530 a!2862) j!93) a!2862 mask!2687) lt!638269))))

(declare-fun b!1456412 () Bool)

(assert (=> b!1456412 (= e!819442 true)))

(declare-fun lt!638270 () Bool)

(declare-fun e!819440 () Bool)

(assert (=> b!1456412 (= lt!638270 e!819440)))

(declare-fun c!134221 () Bool)

(assert (=> b!1456412 (= c!134221 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1456413 () Bool)

(declare-fun lt!638274 () SeekEntryResult!11805)

(assert (=> b!1456413 (= e!819440 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638271 intermediateAfterIndex!19 lt!638275 lt!638268 mask!2687) lt!638274)))))

(declare-fun b!1456414 () Bool)

(assert (=> b!1456414 (= e!819441 e!819442)))

(declare-fun res!986995 () Bool)

(assert (=> b!1456414 (=> res!986995 e!819442)))

(assert (=> b!1456414 (= res!986995 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!638271 #b00000000000000000000000000000000) (bvsge lt!638271 (size!48081 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1456414 (= lt!638271 (nextIndex!0 index!646 x!665 mask!2687))))

(assert (=> b!1456414 (= lt!638274 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!638275 lt!638268 mask!2687))))

(assert (=> b!1456414 (= lt!638274 (seekEntryOrOpen!0 lt!638275 lt!638268 mask!2687))))

(declare-fun b!1456415 () Bool)

(declare-fun res!986996 () Bool)

(assert (=> b!1456415 (=> (not res!986996) (not e!819436))))

(assert (=> b!1456415 (= res!986996 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1456416 () Bool)

(assert (=> b!1456416 (= e!819440 (not (= lt!638272 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638271 lt!638275 lt!638268 mask!2687))))))

(declare-fun b!1456417 () Bool)

(assert (=> b!1456417 (= e!819438 (and (or (= (select (arr!47530 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47530 a!2862) intermediateBeforeIndex!19) (select (arr!47530 a!2862) j!93))) (let ((bdg!53251 (select (store (arr!47530 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!47530 a!2862) index!646) bdg!53251) (= (select (arr!47530 a!2862) index!646) (select (arr!47530 a!2862) j!93))) (= (select (arr!47530 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!53251 #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (= (and start!125128 res!986984) b!1456405))

(assert (= (and b!1456405 res!986997) b!1456402))

(assert (= (and b!1456402 res!986981) b!1456410))

(assert (= (and b!1456410 res!986988) b!1456415))

(assert (= (and b!1456415 res!986996) b!1456399))

(assert (= (and b!1456399 res!986991) b!1456398))

(assert (= (and b!1456398 res!986983) b!1456408))

(assert (= (and b!1456408 res!986982) b!1456397))

(assert (= (and b!1456397 res!986994) b!1456411))

(assert (= (and b!1456411 res!986989) b!1456406))

(assert (= (and b!1456406 res!986990) b!1456407))

(assert (= (and b!1456407 c!134222) b!1456403))

(assert (= (and b!1456407 (not c!134222)) b!1456409))

(assert (= (and b!1456407 res!986986) b!1456401))

(assert (= (and b!1456401 res!986987) b!1456400))

(assert (= (and b!1456400 res!986993) b!1456396))

(assert (= (and b!1456396 res!986985) b!1456417))

(assert (= (and b!1456400 (not res!986980)) b!1456414))

(assert (= (and b!1456414 (not res!986995)) b!1456404))

(assert (= (and b!1456404 (not res!986992)) b!1456412))

(assert (= (and b!1456412 c!134221) b!1456416))

(assert (= (and b!1456412 (not c!134221)) b!1456413))

(declare-fun m!1344549 () Bool)

(assert (=> start!125128 m!1344549))

(declare-fun m!1344551 () Bool)

(assert (=> start!125128 m!1344551))

(declare-fun m!1344553 () Bool)

(assert (=> b!1456415 m!1344553))

(declare-fun m!1344555 () Bool)

(assert (=> b!1456396 m!1344555))

(assert (=> b!1456396 m!1344555))

(declare-fun m!1344557 () Bool)

(assert (=> b!1456396 m!1344557))

(declare-fun m!1344559 () Bool)

(assert (=> b!1456416 m!1344559))

(assert (=> b!1456404 m!1344555))

(assert (=> b!1456404 m!1344555))

(declare-fun m!1344561 () Bool)

(assert (=> b!1456404 m!1344561))

(declare-fun m!1344563 () Bool)

(assert (=> b!1456400 m!1344563))

(declare-fun m!1344565 () Bool)

(assert (=> b!1456400 m!1344565))

(declare-fun m!1344567 () Bool)

(assert (=> b!1456400 m!1344567))

(declare-fun m!1344569 () Bool)

(assert (=> b!1456400 m!1344569))

(declare-fun m!1344571 () Bool)

(assert (=> b!1456400 m!1344571))

(assert (=> b!1456400 m!1344555))

(declare-fun m!1344573 () Bool)

(assert (=> b!1456399 m!1344573))

(declare-fun m!1344575 () Bool)

(assert (=> b!1456413 m!1344575))

(declare-fun m!1344577 () Bool)

(assert (=> b!1456402 m!1344577))

(assert (=> b!1456402 m!1344577))

(declare-fun m!1344579 () Bool)

(assert (=> b!1456402 m!1344579))

(assert (=> b!1456417 m!1344565))

(declare-fun m!1344581 () Bool)

(assert (=> b!1456417 m!1344581))

(assert (=> b!1456417 m!1344567))

(assert (=> b!1456417 m!1344569))

(assert (=> b!1456417 m!1344555))

(declare-fun m!1344583 () Bool)

(assert (=> b!1456409 m!1344583))

(declare-fun m!1344585 () Bool)

(assert (=> b!1456409 m!1344585))

(assert (=> b!1456411 m!1344555))

(assert (=> b!1456411 m!1344555))

(declare-fun m!1344587 () Bool)

(assert (=> b!1456411 m!1344587))

(assert (=> b!1456408 m!1344565))

(declare-fun m!1344589 () Bool)

(assert (=> b!1456408 m!1344589))

(declare-fun m!1344591 () Bool)

(assert (=> b!1456406 m!1344591))

(assert (=> b!1456406 m!1344591))

(declare-fun m!1344593 () Bool)

(assert (=> b!1456406 m!1344593))

(assert (=> b!1456406 m!1344565))

(declare-fun m!1344595 () Bool)

(assert (=> b!1456406 m!1344595))

(assert (=> b!1456410 m!1344555))

(assert (=> b!1456410 m!1344555))

(declare-fun m!1344597 () Bool)

(assert (=> b!1456410 m!1344597))

(assert (=> b!1456397 m!1344555))

(assert (=> b!1456397 m!1344555))

(declare-fun m!1344599 () Bool)

(assert (=> b!1456397 m!1344599))

(assert (=> b!1456397 m!1344599))

(assert (=> b!1456397 m!1344555))

(declare-fun m!1344601 () Bool)

(assert (=> b!1456397 m!1344601))

(declare-fun m!1344603 () Bool)

(assert (=> b!1456414 m!1344603))

(assert (=> b!1456414 m!1344583))

(assert (=> b!1456414 m!1344585))

(declare-fun m!1344605 () Bool)

(assert (=> b!1456403 m!1344605))

(push 1)

