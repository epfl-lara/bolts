; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126172 () Bool)

(assert start!126172)

(declare-fun b!1476404 () Bool)

(declare-fun res!1002758 () Bool)

(declare-fun e!828357 () Bool)

(assert (=> b!1476404 (=> (not res!1002758) (not e!828357))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!99195 0))(
  ( (array!99196 (arr!47872 (Array (_ BitVec 32) (_ BitVec 64))) (size!48423 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99195)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1476404 (= res!1002758 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48423 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48423 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48423 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1476405 () Bool)

(declare-fun e!828355 () Bool)

(declare-fun e!828351 () Bool)

(assert (=> b!1476405 (= e!828355 e!828351)))

(declare-fun res!1002757 () Bool)

(assert (=> b!1476405 (=> (not res!1002757) (not e!828351))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12135 0))(
  ( (MissingZero!12135 (index!50931 (_ BitVec 32))) (Found!12135 (index!50932 (_ BitVec 32))) (Intermediate!12135 (undefined!12947 Bool) (index!50933 (_ BitVec 32)) (x!132537 (_ BitVec 32))) (Undefined!12135) (MissingVacant!12135 (index!50934 (_ BitVec 32))) )
))
(declare-fun lt!644974 () SeekEntryResult!12135)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99195 (_ BitVec 32)) SeekEntryResult!12135)

(assert (=> b!1476405 (= res!1002757 (= lt!644974 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47872 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1476406 () Bool)

(declare-fun e!828359 () Bool)

(declare-fun e!828354 () Bool)

(assert (=> b!1476406 (= e!828359 e!828354)))

(declare-fun res!1002749 () Bool)

(assert (=> b!1476406 (=> (not res!1002749) (not e!828354))))

(declare-fun lt!644969 () SeekEntryResult!12135)

(assert (=> b!1476406 (= res!1002749 (= lt!644969 (Intermediate!12135 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!644970 () array!99195)

(declare-fun lt!644972 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99195 (_ BitVec 32)) SeekEntryResult!12135)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1476406 (= lt!644969 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!644972 mask!2687) lt!644972 lt!644970 mask!2687))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1476406 (= lt!644972 (select (store (arr!47872 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun e!828358 () Bool)

(declare-fun b!1476407 () Bool)

(assert (=> b!1476407 (= e!828358 (= lt!644969 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!644972 lt!644970 mask!2687)))))

(declare-fun b!1476409 () Bool)

(declare-fun e!828352 () Bool)

(assert (=> b!1476409 (= e!828352 e!828355)))

(declare-fun res!1002747 () Bool)

(assert (=> b!1476409 (=> res!1002747 e!828355)))

(assert (=> b!1476409 (= res!1002747 (or (and (= (select (arr!47872 a!2862) index!646) (select (store (arr!47872 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47872 a!2862) index!646) (select (arr!47872 a!2862) j!93))) (not (= (select (arr!47872 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1476410 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99195 (_ BitVec 32)) SeekEntryResult!12135)

(assert (=> b!1476410 (= e!828358 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!644972 lt!644970 mask!2687) (seekEntryOrOpen!0 lt!644972 lt!644970 mask!2687)))))

(declare-fun b!1476411 () Bool)

(declare-fun res!1002745 () Bool)

(assert (=> b!1476411 (=> (not res!1002745) (not e!828359))))

(declare-fun lt!644973 () SeekEntryResult!12135)

(assert (=> b!1476411 (= res!1002745 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47872 a!2862) j!93) a!2862 mask!2687) lt!644973))))

(declare-fun b!1476412 () Bool)

(declare-fun res!1002753 () Bool)

(assert (=> b!1476412 (=> (not res!1002753) (not e!828357))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1476412 (= res!1002753 (validKeyInArray!0 (select (arr!47872 a!2862) i!1006)))))

(declare-fun b!1476413 () Bool)

(declare-fun res!1002756 () Bool)

(assert (=> b!1476413 (=> (not res!1002756) (not e!828354))))

(assert (=> b!1476413 (= res!1002756 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1476414 () Bool)

(declare-fun res!1002744 () Bool)

(assert (=> b!1476414 (=> (not res!1002744) (not e!828357))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99195 (_ BitVec 32)) Bool)

(assert (=> b!1476414 (= res!1002744 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1476415 () Bool)

(declare-fun e!828353 () Bool)

(assert (=> b!1476415 (= e!828353 e!828359)))

(declare-fun res!1002754 () Bool)

(assert (=> b!1476415 (=> (not res!1002754) (not e!828359))))

(assert (=> b!1476415 (= res!1002754 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47872 a!2862) j!93) mask!2687) (select (arr!47872 a!2862) j!93) a!2862 mask!2687) lt!644973))))

(assert (=> b!1476415 (= lt!644973 (Intermediate!12135 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1476416 () Bool)

(assert (=> b!1476416 (= e!828354 (not true))))

(assert (=> b!1476416 e!828352))

(declare-fun res!1002746 () Bool)

(assert (=> b!1476416 (=> (not res!1002746) (not e!828352))))

(assert (=> b!1476416 (= res!1002746 (and (= lt!644974 (Found!12135 j!93)) (or (= (select (arr!47872 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47872 a!2862) intermediateBeforeIndex!19) (select (arr!47872 a!2862) j!93)))))))

(assert (=> b!1476416 (= lt!644974 (seekEntryOrOpen!0 (select (arr!47872 a!2862) j!93) a!2862 mask!2687))))

(assert (=> b!1476416 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!49558 0))(
  ( (Unit!49559) )
))
(declare-fun lt!644971 () Unit!49558)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99195 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49558)

(assert (=> b!1476416 (= lt!644971 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1476417 () Bool)

(declare-fun res!1002755 () Bool)

(assert (=> b!1476417 (=> (not res!1002755) (not e!828357))))

(assert (=> b!1476417 (= res!1002755 (validKeyInArray!0 (select (arr!47872 a!2862) j!93)))))

(declare-fun b!1476418 () Bool)

(declare-fun res!1002748 () Bool)

(assert (=> b!1476418 (=> (not res!1002748) (not e!828357))))

(declare-datatypes ((List!34553 0))(
  ( (Nil!34550) (Cons!34549 (h!35917 (_ BitVec 64)) (t!49254 List!34553)) )
))
(declare-fun arrayNoDuplicates!0 (array!99195 (_ BitVec 32) List!34553) Bool)

(assert (=> b!1476418 (= res!1002748 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34550))))

(declare-fun b!1476419 () Bool)

(assert (=> b!1476419 (= e!828351 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun res!1002751 () Bool)

(assert (=> start!126172 (=> (not res!1002751) (not e!828357))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126172 (= res!1002751 (validMask!0 mask!2687))))

(assert (=> start!126172 e!828357))

(assert (=> start!126172 true))

(declare-fun array_inv!36817 (array!99195) Bool)

(assert (=> start!126172 (array_inv!36817 a!2862)))

(declare-fun b!1476408 () Bool)

(assert (=> b!1476408 (= e!828357 e!828353)))

(declare-fun res!1002750 () Bool)

(assert (=> b!1476408 (=> (not res!1002750) (not e!828353))))

(assert (=> b!1476408 (= res!1002750 (= (select (store (arr!47872 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1476408 (= lt!644970 (array!99196 (store (arr!47872 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48423 a!2862)))))

(declare-fun b!1476420 () Bool)

(declare-fun res!1002752 () Bool)

(assert (=> b!1476420 (=> (not res!1002752) (not e!828354))))

(assert (=> b!1476420 (= res!1002752 e!828358)))

(declare-fun c!136352 () Bool)

(assert (=> b!1476420 (= c!136352 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1476421 () Bool)

(declare-fun res!1002759 () Bool)

(assert (=> b!1476421 (=> (not res!1002759) (not e!828357))))

(assert (=> b!1476421 (= res!1002759 (and (= (size!48423 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48423 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48423 a!2862)) (not (= i!1006 j!93))))))

(assert (= (and start!126172 res!1002751) b!1476421))

(assert (= (and b!1476421 res!1002759) b!1476412))

(assert (= (and b!1476412 res!1002753) b!1476417))

(assert (= (and b!1476417 res!1002755) b!1476414))

(assert (= (and b!1476414 res!1002744) b!1476418))

(assert (= (and b!1476418 res!1002748) b!1476404))

(assert (= (and b!1476404 res!1002758) b!1476408))

(assert (= (and b!1476408 res!1002750) b!1476415))

(assert (= (and b!1476415 res!1002754) b!1476411))

(assert (= (and b!1476411 res!1002745) b!1476406))

(assert (= (and b!1476406 res!1002749) b!1476420))

(assert (= (and b!1476420 c!136352) b!1476407))

(assert (= (and b!1476420 (not c!136352)) b!1476410))

(assert (= (and b!1476420 res!1002752) b!1476413))

(assert (= (and b!1476413 res!1002756) b!1476416))

(assert (= (and b!1476416 res!1002746) b!1476409))

(assert (= (and b!1476409 (not res!1002747)) b!1476405))

(assert (= (and b!1476405 res!1002757) b!1476419))

(declare-fun m!1362447 () Bool)

(assert (=> b!1476409 m!1362447))

(declare-fun m!1362449 () Bool)

(assert (=> b!1476409 m!1362449))

(declare-fun m!1362451 () Bool)

(assert (=> b!1476409 m!1362451))

(declare-fun m!1362453 () Bool)

(assert (=> b!1476409 m!1362453))

(declare-fun m!1362455 () Bool)

(assert (=> b!1476410 m!1362455))

(declare-fun m!1362457 () Bool)

(assert (=> b!1476410 m!1362457))

(declare-fun m!1362459 () Bool)

(assert (=> b!1476418 m!1362459))

(assert (=> b!1476417 m!1362453))

(assert (=> b!1476417 m!1362453))

(declare-fun m!1362461 () Bool)

(assert (=> b!1476417 m!1362461))

(declare-fun m!1362463 () Bool)

(assert (=> b!1476407 m!1362463))

(declare-fun m!1362465 () Bool)

(assert (=> b!1476416 m!1362465))

(declare-fun m!1362467 () Bool)

(assert (=> b!1476416 m!1362467))

(assert (=> b!1476416 m!1362453))

(declare-fun m!1362469 () Bool)

(assert (=> b!1476416 m!1362469))

(declare-fun m!1362471 () Bool)

(assert (=> b!1476416 m!1362471))

(assert (=> b!1476416 m!1362453))

(assert (=> b!1476408 m!1362449))

(declare-fun m!1362473 () Bool)

(assert (=> b!1476408 m!1362473))

(declare-fun m!1362475 () Bool)

(assert (=> b!1476414 m!1362475))

(declare-fun m!1362477 () Bool)

(assert (=> b!1476412 m!1362477))

(assert (=> b!1476412 m!1362477))

(declare-fun m!1362479 () Bool)

(assert (=> b!1476412 m!1362479))

(declare-fun m!1362481 () Bool)

(assert (=> start!126172 m!1362481))

(declare-fun m!1362483 () Bool)

(assert (=> start!126172 m!1362483))

(assert (=> b!1476415 m!1362453))

(assert (=> b!1476415 m!1362453))

(declare-fun m!1362485 () Bool)

(assert (=> b!1476415 m!1362485))

(assert (=> b!1476415 m!1362485))

(assert (=> b!1476415 m!1362453))

(declare-fun m!1362487 () Bool)

(assert (=> b!1476415 m!1362487))

(assert (=> b!1476411 m!1362453))

(assert (=> b!1476411 m!1362453))

(declare-fun m!1362489 () Bool)

(assert (=> b!1476411 m!1362489))

(declare-fun m!1362491 () Bool)

(assert (=> b!1476406 m!1362491))

(assert (=> b!1476406 m!1362491))

(declare-fun m!1362493 () Bool)

(assert (=> b!1476406 m!1362493))

(assert (=> b!1476406 m!1362449))

(declare-fun m!1362495 () Bool)

(assert (=> b!1476406 m!1362495))

(assert (=> b!1476405 m!1362453))

(assert (=> b!1476405 m!1362453))

(declare-fun m!1362497 () Bool)

(assert (=> b!1476405 m!1362497))

(push 1)

