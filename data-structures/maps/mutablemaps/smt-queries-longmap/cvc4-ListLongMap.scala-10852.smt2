; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127136 () Bool)

(assert start!127136)

(declare-fun b!1493462 () Bool)

(declare-fun res!1016045 () Bool)

(declare-fun e!836657 () Bool)

(assert (=> b!1493462 (=> (not res!1016045) (not e!836657))))

(declare-datatypes ((array!99700 0))(
  ( (array!99701 (arr!48114 (Array (_ BitVec 32) (_ BitVec 64))) (size!48665 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99700)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12377 0))(
  ( (MissingZero!12377 (index!51899 (_ BitVec 32))) (Found!12377 (index!51900 (_ BitVec 32))) (Intermediate!12377 (undefined!13189 Bool) (index!51901 (_ BitVec 32)) (x!133500 (_ BitVec 32))) (Undefined!12377) (MissingVacant!12377 (index!51902 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99700 (_ BitVec 32)) SeekEntryResult!12377)

(assert (=> b!1493462 (= res!1016045 (= (seekEntryOrOpen!0 (select (arr!48114 a!2862) j!93) a!2862 mask!2687) (Found!12377 j!93)))))

(declare-fun b!1493463 () Bool)

(declare-fun res!1016052 () Bool)

(declare-fun e!836662 () Bool)

(assert (=> b!1493463 (=> (not res!1016052) (not e!836662))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1493463 (= res!1016052 (validKeyInArray!0 (select (arr!48114 a!2862) j!93)))))

(declare-fun b!1493464 () Bool)

(declare-fun res!1016055 () Bool)

(assert (=> b!1493464 (=> (not res!1016055) (not e!836662))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99700 (_ BitVec 32)) Bool)

(assert (=> b!1493464 (= res!1016055 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1493465 () Bool)

(declare-fun res!1016048 () Bool)

(assert (=> b!1493465 (=> (not res!1016048) (not e!836662))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1493465 (= res!1016048 (and (= (size!48665 a!2862) (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48665 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48665 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1493466 () Bool)

(declare-fun res!1016056 () Bool)

(assert (=> b!1493466 (=> (not res!1016056) (not e!836662))))

(declare-datatypes ((List!34795 0))(
  ( (Nil!34792) (Cons!34791 (h!36180 (_ BitVec 64)) (t!49496 List!34795)) )
))
(declare-fun arrayNoDuplicates!0 (array!99700 (_ BitVec 32) List!34795) Bool)

(assert (=> b!1493466 (= res!1016056 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34792))))

(declare-fun b!1493467 () Bool)

(declare-fun e!836656 () Bool)

(declare-fun e!836661 () Bool)

(assert (=> b!1493467 (= e!836656 e!836661)))

(declare-fun res!1016053 () Bool)

(assert (=> b!1493467 (=> (not res!1016053) (not e!836661))))

(declare-fun lt!650999 () SeekEntryResult!12377)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1493467 (= res!1016053 (= lt!650999 (Intermediate!12377 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!651002 () (_ BitVec 64))

(declare-fun lt!651004 () array!99700)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99700 (_ BitVec 32)) SeekEntryResult!12377)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1493467 (= lt!650999 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!651002 mask!2687) lt!651002 lt!651004 mask!2687))))

(assert (=> b!1493467 (= lt!651002 (select (store (arr!48114 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1493469 () Bool)

(declare-fun res!1016043 () Bool)

(assert (=> b!1493469 (=> (not res!1016043) (not e!836661))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1493469 (= res!1016043 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1493470 () Bool)

(declare-fun e!836660 () Bool)

(assert (=> b!1493470 (= e!836660 true)))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun lt!651000 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1493470 (= lt!651000 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1493471 () Bool)

(declare-fun res!1016054 () Bool)

(assert (=> b!1493471 (=> (not res!1016054) (not e!836656))))

(declare-fun lt!651003 () SeekEntryResult!12377)

(assert (=> b!1493471 (= res!1016054 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48114 a!2862) j!93) a!2862 mask!2687) lt!651003))))

(declare-fun b!1493472 () Bool)

(assert (=> b!1493472 (= e!836661 (not e!836660))))

(declare-fun res!1016046 () Bool)

(assert (=> b!1493472 (=> res!1016046 e!836660)))

(assert (=> b!1493472 (= res!1016046 (or (and (= (select (arr!48114 a!2862) index!646) (select (store (arr!48114 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48114 a!2862) index!646) (select (arr!48114 a!2862) j!93))) (= (select (arr!48114 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(assert (=> b!1493472 e!836657))

(declare-fun res!1016044 () Bool)

(assert (=> b!1493472 (=> (not res!1016044) (not e!836657))))

(assert (=> b!1493472 (= res!1016044 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!50042 0))(
  ( (Unit!50043) )
))
(declare-fun lt!651001 () Unit!50042)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99700 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50042)

(assert (=> b!1493472 (= lt!651001 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1493473 () Bool)

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1493473 (= e!836657 (or (= (select (arr!48114 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48114 a!2862) intermediateBeforeIndex!19) (select (arr!48114 a!2862) j!93))))))

(declare-fun b!1493468 () Bool)

(declare-fun e!836663 () Bool)

(assert (=> b!1493468 (= e!836663 (= lt!650999 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!651002 lt!651004 mask!2687)))))

(declare-fun res!1016051 () Bool)

(assert (=> start!127136 (=> (not res!1016051) (not e!836662))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127136 (= res!1016051 (validMask!0 mask!2687))))

(assert (=> start!127136 e!836662))

(assert (=> start!127136 true))

(declare-fun array_inv!37059 (array!99700) Bool)

(assert (=> start!127136 (array_inv!37059 a!2862)))

(declare-fun b!1493474 () Bool)

(declare-fun res!1016049 () Bool)

(assert (=> b!1493474 (=> (not res!1016049) (not e!836662))))

(assert (=> b!1493474 (= res!1016049 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48665 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48665 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48665 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1493475 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99700 (_ BitVec 32)) SeekEntryResult!12377)

(assert (=> b!1493475 (= e!836663 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!651002 lt!651004 mask!2687) (seekEntryOrOpen!0 lt!651002 lt!651004 mask!2687)))))

(declare-fun b!1493476 () Bool)

(declare-fun e!836659 () Bool)

(assert (=> b!1493476 (= e!836662 e!836659)))

(declare-fun res!1016050 () Bool)

(assert (=> b!1493476 (=> (not res!1016050) (not e!836659))))

(assert (=> b!1493476 (= res!1016050 (= (select (store (arr!48114 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1493476 (= lt!651004 (array!99701 (store (arr!48114 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48665 a!2862)))))

(declare-fun b!1493477 () Bool)

(assert (=> b!1493477 (= e!836659 e!836656)))

(declare-fun res!1016058 () Bool)

(assert (=> b!1493477 (=> (not res!1016058) (not e!836656))))

(assert (=> b!1493477 (= res!1016058 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48114 a!2862) j!93) mask!2687) (select (arr!48114 a!2862) j!93) a!2862 mask!2687) lt!651003))))

(assert (=> b!1493477 (= lt!651003 (Intermediate!12377 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1493478 () Bool)

(declare-fun res!1016057 () Bool)

(assert (=> b!1493478 (=> (not res!1016057) (not e!836662))))

(assert (=> b!1493478 (= res!1016057 (validKeyInArray!0 (select (arr!48114 a!2862) i!1006)))))

(declare-fun b!1493479 () Bool)

(declare-fun res!1016047 () Bool)

(assert (=> b!1493479 (=> (not res!1016047) (not e!836661))))

(assert (=> b!1493479 (= res!1016047 e!836663)))

(declare-fun c!138242 () Bool)

(assert (=> b!1493479 (= c!138242 (bvsle x!665 intermediateAfterX!19))))

(assert (= (and start!127136 res!1016051) b!1493465))

(assert (= (and b!1493465 res!1016048) b!1493478))

(assert (= (and b!1493478 res!1016057) b!1493463))

(assert (= (and b!1493463 res!1016052) b!1493464))

(assert (= (and b!1493464 res!1016055) b!1493466))

(assert (= (and b!1493466 res!1016056) b!1493474))

(assert (= (and b!1493474 res!1016049) b!1493476))

(assert (= (and b!1493476 res!1016050) b!1493477))

(assert (= (and b!1493477 res!1016058) b!1493471))

(assert (= (and b!1493471 res!1016054) b!1493467))

(assert (= (and b!1493467 res!1016053) b!1493479))

(assert (= (and b!1493479 c!138242) b!1493468))

(assert (= (and b!1493479 (not c!138242)) b!1493475))

(assert (= (and b!1493479 res!1016047) b!1493469))

(assert (= (and b!1493469 res!1016043) b!1493472))

(assert (= (and b!1493472 res!1016044) b!1493462))

(assert (= (and b!1493462 res!1016045) b!1493473))

(assert (= (and b!1493472 (not res!1016046)) b!1493470))

(declare-fun m!1377299 () Bool)

(assert (=> start!127136 m!1377299))

(declare-fun m!1377301 () Bool)

(assert (=> start!127136 m!1377301))

(declare-fun m!1377303 () Bool)

(assert (=> b!1493472 m!1377303))

(declare-fun m!1377305 () Bool)

(assert (=> b!1493472 m!1377305))

(declare-fun m!1377307 () Bool)

(assert (=> b!1493472 m!1377307))

(declare-fun m!1377309 () Bool)

(assert (=> b!1493472 m!1377309))

(declare-fun m!1377311 () Bool)

(assert (=> b!1493472 m!1377311))

(declare-fun m!1377313 () Bool)

(assert (=> b!1493472 m!1377313))

(declare-fun m!1377315 () Bool)

(assert (=> b!1493464 m!1377315))

(assert (=> b!1493462 m!1377313))

(assert (=> b!1493462 m!1377313))

(declare-fun m!1377317 () Bool)

(assert (=> b!1493462 m!1377317))

(declare-fun m!1377319 () Bool)

(assert (=> b!1493467 m!1377319))

(assert (=> b!1493467 m!1377319))

(declare-fun m!1377321 () Bool)

(assert (=> b!1493467 m!1377321))

(assert (=> b!1493467 m!1377305))

(declare-fun m!1377323 () Bool)

(assert (=> b!1493467 m!1377323))

(declare-fun m!1377325 () Bool)

(assert (=> b!1493470 m!1377325))

(assert (=> b!1493476 m!1377305))

(declare-fun m!1377327 () Bool)

(assert (=> b!1493476 m!1377327))

(assert (=> b!1493471 m!1377313))

(assert (=> b!1493471 m!1377313))

(declare-fun m!1377329 () Bool)

(assert (=> b!1493471 m!1377329))

(assert (=> b!1493477 m!1377313))

(assert (=> b!1493477 m!1377313))

(declare-fun m!1377331 () Bool)

(assert (=> b!1493477 m!1377331))

(assert (=> b!1493477 m!1377331))

(assert (=> b!1493477 m!1377313))

(declare-fun m!1377333 () Bool)

(assert (=> b!1493477 m!1377333))

(declare-fun m!1377335 () Bool)

(assert (=> b!1493475 m!1377335))

(declare-fun m!1377337 () Bool)

(assert (=> b!1493475 m!1377337))

(declare-fun m!1377339 () Bool)

(assert (=> b!1493468 m!1377339))

(declare-fun m!1377341 () Bool)

(assert (=> b!1493466 m!1377341))

(declare-fun m!1377343 () Bool)

(assert (=> b!1493473 m!1377343))

(assert (=> b!1493473 m!1377313))

(declare-fun m!1377345 () Bool)

(assert (=> b!1493478 m!1377345))

(assert (=> b!1493478 m!1377345))

(declare-fun m!1377347 () Bool)

(assert (=> b!1493478 m!1377347))

(assert (=> b!1493463 m!1377313))

(assert (=> b!1493463 m!1377313))

(declare-fun m!1377349 () Bool)

(assert (=> b!1493463 m!1377349))

(push 1)

