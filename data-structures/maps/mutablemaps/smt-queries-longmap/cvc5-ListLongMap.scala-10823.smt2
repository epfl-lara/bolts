; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126694 () Bool)

(assert start!126694)

(declare-fun b!1486544 () Bool)

(declare-fun e!833354 () Bool)

(declare-fun e!833346 () Bool)

(assert (=> b!1486544 (= e!833354 e!833346)))

(declare-fun res!1010999 () Bool)

(assert (=> b!1486544 (=> (not res!1010999) (not e!833346))))

(declare-datatypes ((SeekEntryResult!12288 0))(
  ( (MissingZero!12288 (index!51543 (_ BitVec 32))) (Found!12288 (index!51544 (_ BitVec 32))) (Intermediate!12288 (undefined!13100 Bool) (index!51545 (_ BitVec 32)) (x!133131 (_ BitVec 32))) (Undefined!12288) (MissingVacant!12288 (index!51546 (_ BitVec 32))) )
))
(declare-fun lt!648474 () SeekEntryResult!12288)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1486544 (= res!1010999 (= lt!648474 (Intermediate!12288 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-datatypes ((array!99510 0))(
  ( (array!99511 (arr!48025 (Array (_ BitVec 32) (_ BitVec 64))) (size!48576 (_ BitVec 32))) )
))
(declare-fun lt!648471 () array!99510)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun lt!648475 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99510 (_ BitVec 32)) SeekEntryResult!12288)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1486544 (= lt!648474 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!648475 mask!2687) lt!648475 lt!648471 mask!2687))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun a!2862 () array!99510)

(assert (=> b!1486544 (= lt!648475 (select (store (arr!48025 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1486545 () Bool)

(declare-fun res!1011003 () Bool)

(declare-fun e!833353 () Bool)

(assert (=> b!1486545 (=> (not res!1011003) (not e!833353))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99510 (_ BitVec 32)) SeekEntryResult!12288)

(assert (=> b!1486545 (= res!1011003 (= (seekEntryOrOpen!0 (select (arr!48025 a!2862) j!93) a!2862 mask!2687) (Found!12288 j!93)))))

(declare-fun b!1486546 () Bool)

(declare-fun e!833345 () Bool)

(declare-fun e!833348 () Bool)

(assert (=> b!1486546 (= e!833345 e!833348)))

(declare-fun res!1010985 () Bool)

(assert (=> b!1486546 (=> (not res!1010985) (not e!833348))))

(assert (=> b!1486546 (= res!1010985 (= (select (store (arr!48025 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1486546 (= lt!648471 (array!99511 (store (arr!48025 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48576 a!2862)))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun e!833349 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun b!1486547 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99510 (_ BitVec 32)) SeekEntryResult!12288)

(assert (=> b!1486547 (= e!833349 (= (seekEntryOrOpen!0 lt!648475 lt!648471 mask!2687) (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!648475 lt!648471 mask!2687)))))

(declare-fun b!1486548 () Bool)

(declare-fun res!1011001 () Bool)

(assert (=> b!1486548 (=> (not res!1011001) (not e!833345))))

(assert (=> b!1486548 (= res!1011001 (and (= (size!48576 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48576 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48576 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1486549 () Bool)

(declare-fun e!833347 () Bool)

(assert (=> b!1486549 (= e!833346 (not e!833347))))

(declare-fun res!1010990 () Bool)

(assert (=> b!1486549 (=> res!1010990 e!833347)))

(assert (=> b!1486549 (= res!1010990 (or (and (= (select (arr!48025 a!2862) index!646) (select (store (arr!48025 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48025 a!2862) index!646) (select (arr!48025 a!2862) j!93))) (= (select (arr!48025 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1486549 e!833353))

(declare-fun res!1010996 () Bool)

(assert (=> b!1486549 (=> (not res!1010996) (not e!833353))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99510 (_ BitVec 32)) Bool)

(assert (=> b!1486549 (= res!1010996 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49864 0))(
  ( (Unit!49865) )
))
(declare-fun lt!648472 () Unit!49864)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99510 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49864)

(assert (=> b!1486549 (= lt!648472 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1486550 () Bool)

(declare-fun e!833352 () Bool)

(assert (=> b!1486550 (= e!833352 (= lt!648474 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!648475 lt!648471 mask!2687)))))

(declare-fun b!1486551 () Bool)

(declare-fun res!1010997 () Bool)

(assert (=> b!1486551 (=> (not res!1010997) (not e!833345))))

(declare-datatypes ((List!34706 0))(
  ( (Nil!34703) (Cons!34702 (h!36079 (_ BitVec 64)) (t!49407 List!34706)) )
))
(declare-fun arrayNoDuplicates!0 (array!99510 (_ BitVec 32) List!34706) Bool)

(assert (=> b!1486551 (= res!1010997 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34703))))

(declare-fun b!1486552 () Bool)

(assert (=> b!1486552 (= e!833348 e!833354)))

(declare-fun res!1010993 () Bool)

(assert (=> b!1486552 (=> (not res!1010993) (not e!833354))))

(declare-fun lt!648470 () SeekEntryResult!12288)

(assert (=> b!1486552 (= res!1010993 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48025 a!2862) j!93) mask!2687) (select (arr!48025 a!2862) j!93) a!2862 mask!2687) lt!648470))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1486552 (= lt!648470 (Intermediate!12288 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1486553 () Bool)

(declare-fun res!1010989 () Bool)

(assert (=> b!1486553 (=> (not res!1010989) (not e!833346))))

(assert (=> b!1486553 (= res!1010989 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1486554 () Bool)

(assert (=> b!1486554 (= e!833352 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!648475 lt!648471 mask!2687) (seekEntryOrOpen!0 lt!648475 lt!648471 mask!2687)))))

(declare-fun b!1486555 () Bool)

(declare-fun res!1011002 () Bool)

(assert (=> b!1486555 (=> (not res!1011002) (not e!833345))))

(assert (=> b!1486555 (= res!1011002 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1486556 () Bool)

(declare-fun e!833351 () Bool)

(assert (=> b!1486556 (= e!833353 e!833351)))

(declare-fun res!1011000 () Bool)

(assert (=> b!1486556 (=> res!1011000 e!833351)))

(declare-fun lt!648473 () (_ BitVec 64))

(assert (=> b!1486556 (= res!1011000 (or (and (= (select (arr!48025 a!2862) index!646) lt!648473) (= (select (arr!48025 a!2862) index!646) (select (arr!48025 a!2862) j!93))) (= (select (arr!48025 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1486556 (= lt!648473 (select (store (arr!48025 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))))

(declare-fun b!1486557 () Bool)

(declare-fun res!1010986 () Bool)

(assert (=> b!1486557 (=> (not res!1010986) (not e!833346))))

(assert (=> b!1486557 (= res!1010986 e!833352)))

(declare-fun c!137306 () Bool)

(assert (=> b!1486557 (= c!137306 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1486558 () Bool)

(declare-fun res!1010994 () Bool)

(assert (=> b!1486558 (=> (not res!1010994) (not e!833354))))

(assert (=> b!1486558 (= res!1010994 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48025 a!2862) j!93) a!2862 mask!2687) lt!648470))))

(declare-fun b!1486559 () Bool)

(declare-fun res!1010992 () Bool)

(assert (=> b!1486559 (=> (not res!1010992) (not e!833345))))

(assert (=> b!1486559 (= res!1010992 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48576 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48576 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48576 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1486560 () Bool)

(assert (=> b!1486560 (= e!833347 true)))

(declare-fun lt!648469 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1486560 (= lt!648469 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1486561 () Bool)

(declare-fun res!1010987 () Bool)

(assert (=> b!1486561 (=> (not res!1010987) (not e!833345))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1486561 (= res!1010987 (validKeyInArray!0 (select (arr!48025 a!2862) i!1006)))))

(declare-fun b!1486562 () Bool)

(declare-fun res!1010988 () Bool)

(assert (=> b!1486562 (=> (not res!1010988) (not e!833353))))

(assert (=> b!1486562 (= res!1010988 (or (= (select (arr!48025 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48025 a!2862) intermediateBeforeIndex!19) (select (arr!48025 a!2862) j!93))))))

(declare-fun res!1010991 () Bool)

(assert (=> start!126694 (=> (not res!1010991) (not e!833345))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126694 (= res!1010991 (validMask!0 mask!2687))))

(assert (=> start!126694 e!833345))

(assert (=> start!126694 true))

(declare-fun array_inv!36970 (array!99510) Bool)

(assert (=> start!126694 (array_inv!36970 a!2862)))

(declare-fun b!1486563 () Bool)

(declare-fun res!1010995 () Bool)

(assert (=> b!1486563 (=> (not res!1010995) (not e!833345))))

(assert (=> b!1486563 (= res!1010995 (validKeyInArray!0 (select (arr!48025 a!2862) j!93)))))

(declare-fun b!1486564 () Bool)

(assert (=> b!1486564 (= e!833351 e!833349)))

(declare-fun res!1010998 () Bool)

(assert (=> b!1486564 (=> (not res!1010998) (not e!833349))))

(assert (=> b!1486564 (= res!1010998 (and (= index!646 intermediateAfterIndex!19) (= lt!648473 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!126694 res!1010991) b!1486548))

(assert (= (and b!1486548 res!1011001) b!1486561))

(assert (= (and b!1486561 res!1010987) b!1486563))

(assert (= (and b!1486563 res!1010995) b!1486555))

(assert (= (and b!1486555 res!1011002) b!1486551))

(assert (= (and b!1486551 res!1010997) b!1486559))

(assert (= (and b!1486559 res!1010992) b!1486546))

(assert (= (and b!1486546 res!1010985) b!1486552))

(assert (= (and b!1486552 res!1010993) b!1486558))

(assert (= (and b!1486558 res!1010994) b!1486544))

(assert (= (and b!1486544 res!1010999) b!1486557))

(assert (= (and b!1486557 c!137306) b!1486550))

(assert (= (and b!1486557 (not c!137306)) b!1486554))

(assert (= (and b!1486557 res!1010986) b!1486553))

(assert (= (and b!1486553 res!1010989) b!1486549))

(assert (= (and b!1486549 res!1010996) b!1486545))

(assert (= (and b!1486545 res!1011003) b!1486562))

(assert (= (and b!1486562 res!1010988) b!1486556))

(assert (= (and b!1486556 (not res!1011000)) b!1486564))

(assert (= (and b!1486564 res!1010998) b!1486547))

(assert (= (and b!1486549 (not res!1010990)) b!1486560))

(declare-fun m!1371447 () Bool)

(assert (=> b!1486562 m!1371447))

(declare-fun m!1371449 () Bool)

(assert (=> b!1486562 m!1371449))

(assert (=> b!1486558 m!1371449))

(assert (=> b!1486558 m!1371449))

(declare-fun m!1371451 () Bool)

(assert (=> b!1486558 m!1371451))

(declare-fun m!1371453 () Bool)

(assert (=> b!1486555 m!1371453))

(declare-fun m!1371455 () Bool)

(assert (=> start!126694 m!1371455))

(declare-fun m!1371457 () Bool)

(assert (=> start!126694 m!1371457))

(declare-fun m!1371459 () Bool)

(assert (=> b!1486561 m!1371459))

(assert (=> b!1486561 m!1371459))

(declare-fun m!1371461 () Bool)

(assert (=> b!1486561 m!1371461))

(declare-fun m!1371463 () Bool)

(assert (=> b!1486546 m!1371463))

(declare-fun m!1371465 () Bool)

(assert (=> b!1486546 m!1371465))

(declare-fun m!1371467 () Bool)

(assert (=> b!1486549 m!1371467))

(assert (=> b!1486549 m!1371463))

(declare-fun m!1371469 () Bool)

(assert (=> b!1486549 m!1371469))

(declare-fun m!1371471 () Bool)

(assert (=> b!1486549 m!1371471))

(declare-fun m!1371473 () Bool)

(assert (=> b!1486549 m!1371473))

(assert (=> b!1486549 m!1371449))

(assert (=> b!1486563 m!1371449))

(assert (=> b!1486563 m!1371449))

(declare-fun m!1371475 () Bool)

(assert (=> b!1486563 m!1371475))

(declare-fun m!1371477 () Bool)

(assert (=> b!1486550 m!1371477))

(declare-fun m!1371479 () Bool)

(assert (=> b!1486547 m!1371479))

(declare-fun m!1371481 () Bool)

(assert (=> b!1486547 m!1371481))

(assert (=> b!1486552 m!1371449))

(assert (=> b!1486552 m!1371449))

(declare-fun m!1371483 () Bool)

(assert (=> b!1486552 m!1371483))

(assert (=> b!1486552 m!1371483))

(assert (=> b!1486552 m!1371449))

(declare-fun m!1371485 () Bool)

(assert (=> b!1486552 m!1371485))

(assert (=> b!1486554 m!1371481))

(assert (=> b!1486554 m!1371479))

(declare-fun m!1371487 () Bool)

(assert (=> b!1486551 m!1371487))

(declare-fun m!1371489 () Bool)

(assert (=> b!1486560 m!1371489))

(assert (=> b!1486556 m!1371471))

(assert (=> b!1486556 m!1371449))

(assert (=> b!1486556 m!1371463))

(assert (=> b!1486556 m!1371469))

(assert (=> b!1486545 m!1371449))

(assert (=> b!1486545 m!1371449))

(declare-fun m!1371491 () Bool)

(assert (=> b!1486545 m!1371491))

(declare-fun m!1371493 () Bool)

(assert (=> b!1486544 m!1371493))

(assert (=> b!1486544 m!1371493))

(declare-fun m!1371495 () Bool)

(assert (=> b!1486544 m!1371495))

(assert (=> b!1486544 m!1371463))

(declare-fun m!1371497 () Bool)

(assert (=> b!1486544 m!1371497))

(push 1)

