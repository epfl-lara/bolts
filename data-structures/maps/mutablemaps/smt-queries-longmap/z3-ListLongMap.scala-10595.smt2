; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124752 () Bool)

(assert start!124752)

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun b!1445475 () Bool)

(declare-fun e!814278 () Bool)

(declare-datatypes ((array!98117 0))(
  ( (array!98118 (arr!47342 (Array (_ BitVec 32) (_ BitVec 64))) (size!47893 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98117)

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1445475 (= e!814278 (or (= (select (arr!47342 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47342 a!2862) intermediateBeforeIndex!19) (select (arr!47342 a!2862) j!93))))))

(declare-fun b!1445476 () Bool)

(declare-fun res!977452 () Bool)

(declare-fun e!814280 () Bool)

(assert (=> b!1445476 (=> (not res!977452) (not e!814280))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1445476 (= res!977452 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1445477 () Bool)

(declare-fun e!814274 () Bool)

(declare-fun e!814279 () Bool)

(assert (=> b!1445477 (= e!814274 e!814279)))

(declare-fun res!977450 () Bool)

(assert (=> b!1445477 (=> (not res!977450) (not e!814279))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11617 0))(
  ( (MissingZero!11617 (index!48859 (_ BitVec 32))) (Found!11617 (index!48860 (_ BitVec 32))) (Intermediate!11617 (undefined!12429 Bool) (index!48861 (_ BitVec 32)) (x!130549 (_ BitVec 32))) (Undefined!11617) (MissingVacant!11617 (index!48862 (_ BitVec 32))) )
))
(declare-fun lt!634470 () SeekEntryResult!11617)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98117 (_ BitVec 32)) SeekEntryResult!11617)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1445477 (= res!977450 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47342 a!2862) j!93) mask!2687) (select (arr!47342 a!2862) j!93) a!2862 mask!2687) lt!634470))))

(assert (=> b!1445477 (= lt!634470 (Intermediate!11617 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1445478 () Bool)

(declare-fun res!977443 () Bool)

(declare-fun e!814275 () Bool)

(assert (=> b!1445478 (=> (not res!977443) (not e!814275))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1445478 (= res!977443 (validKeyInArray!0 (select (arr!47342 a!2862) i!1006)))))

(declare-fun b!1445479 () Bool)

(declare-fun res!977445 () Bool)

(assert (=> b!1445479 (=> (not res!977445) (not e!814275))))

(declare-datatypes ((List!34023 0))(
  ( (Nil!34020) (Cons!34019 (h!35369 (_ BitVec 64)) (t!48724 List!34023)) )
))
(declare-fun arrayNoDuplicates!0 (array!98117 (_ BitVec 32) List!34023) Bool)

(assert (=> b!1445479 (= res!977445 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34020))))

(declare-fun lt!634471 () SeekEntryResult!11617)

(declare-fun lt!634473 () array!98117)

(declare-fun lt!634472 () (_ BitVec 64))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun b!1445480 () Bool)

(declare-fun e!814277 () Bool)

(assert (=> b!1445480 (= e!814277 (= lt!634471 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!634472 lt!634473 mask!2687)))))

(declare-fun b!1445481 () Bool)

(declare-fun res!977453 () Bool)

(assert (=> b!1445481 (=> (not res!977453) (not e!814275))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1445481 (= res!977453 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47893 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47893 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47893 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1445482 () Bool)

(declare-fun res!977444 () Bool)

(assert (=> b!1445482 (=> (not res!977444) (not e!814278))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98117 (_ BitVec 32)) SeekEntryResult!11617)

(assert (=> b!1445482 (= res!977444 (= (seekEntryOrOpen!0 (select (arr!47342 a!2862) j!93) a!2862 mask!2687) (Found!11617 j!93)))))

(declare-fun b!1445483 () Bool)

(declare-fun res!977449 () Bool)

(assert (=> b!1445483 (=> (not res!977449) (not e!814280))))

(assert (=> b!1445483 (= res!977449 e!814277)))

(declare-fun c!133529 () Bool)

(assert (=> b!1445483 (= c!133529 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1445484 () Bool)

(declare-fun res!977446 () Bool)

(assert (=> b!1445484 (=> (not res!977446) (not e!814279))))

(assert (=> b!1445484 (= res!977446 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47342 a!2862) j!93) a!2862 mask!2687) lt!634470))))

(declare-fun b!1445485 () Bool)

(assert (=> b!1445485 (= e!814279 e!814280)))

(declare-fun res!977455 () Bool)

(assert (=> b!1445485 (=> (not res!977455) (not e!814280))))

(assert (=> b!1445485 (= res!977455 (= lt!634471 (Intermediate!11617 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1445485 (= lt!634471 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!634472 mask!2687) lt!634472 lt!634473 mask!2687))))

(assert (=> b!1445485 (= lt!634472 (select (store (arr!47342 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1445486 () Bool)

(assert (=> b!1445486 (= e!814275 e!814274)))

(declare-fun res!977457 () Bool)

(assert (=> b!1445486 (=> (not res!977457) (not e!814274))))

(assert (=> b!1445486 (= res!977457 (= (select (store (arr!47342 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1445486 (= lt!634473 (array!98118 (store (arr!47342 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47893 a!2862)))))

(declare-fun b!1445487 () Bool)

(declare-fun res!977447 () Bool)

(assert (=> b!1445487 (=> (not res!977447) (not e!814275))))

(assert (=> b!1445487 (= res!977447 (validKeyInArray!0 (select (arr!47342 a!2862) j!93)))))

(declare-fun b!1445488 () Bool)

(assert (=> b!1445488 (= e!814280 (not true))))

(assert (=> b!1445488 e!814278))

(declare-fun res!977454 () Bool)

(assert (=> b!1445488 (=> (not res!977454) (not e!814278))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98117 (_ BitVec 32)) Bool)

(assert (=> b!1445488 (= res!977454 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48678 0))(
  ( (Unit!48679) )
))
(declare-fun lt!634474 () Unit!48678)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98117 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48678)

(assert (=> b!1445488 (= lt!634474 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun res!977448 () Bool)

(assert (=> start!124752 (=> (not res!977448) (not e!814275))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124752 (= res!977448 (validMask!0 mask!2687))))

(assert (=> start!124752 e!814275))

(assert (=> start!124752 true))

(declare-fun array_inv!36287 (array!98117) Bool)

(assert (=> start!124752 (array_inv!36287 a!2862)))

(declare-fun b!1445489 () Bool)

(declare-fun res!977456 () Bool)

(assert (=> b!1445489 (=> (not res!977456) (not e!814275))))

(assert (=> b!1445489 (= res!977456 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1445490 () Bool)

(declare-fun res!977451 () Bool)

(assert (=> b!1445490 (=> (not res!977451) (not e!814275))))

(assert (=> b!1445490 (= res!977451 (and (= (size!47893 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47893 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47893 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1445491 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98117 (_ BitVec 32)) SeekEntryResult!11617)

(assert (=> b!1445491 (= e!814277 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!634472 lt!634473 mask!2687) (seekEntryOrOpen!0 lt!634472 lt!634473 mask!2687)))))

(assert (= (and start!124752 res!977448) b!1445490))

(assert (= (and b!1445490 res!977451) b!1445478))

(assert (= (and b!1445478 res!977443) b!1445487))

(assert (= (and b!1445487 res!977447) b!1445489))

(assert (= (and b!1445489 res!977456) b!1445479))

(assert (= (and b!1445479 res!977445) b!1445481))

(assert (= (and b!1445481 res!977453) b!1445486))

(assert (= (and b!1445486 res!977457) b!1445477))

(assert (= (and b!1445477 res!977450) b!1445484))

(assert (= (and b!1445484 res!977446) b!1445485))

(assert (= (and b!1445485 res!977455) b!1445483))

(assert (= (and b!1445483 c!133529) b!1445480))

(assert (= (and b!1445483 (not c!133529)) b!1445491))

(assert (= (and b!1445483 res!977449) b!1445476))

(assert (= (and b!1445476 res!977452) b!1445488))

(assert (= (and b!1445488 res!977454) b!1445482))

(assert (= (and b!1445482 res!977444) b!1445475))

(declare-fun m!1334479 () Bool)

(assert (=> b!1445482 m!1334479))

(assert (=> b!1445482 m!1334479))

(declare-fun m!1334481 () Bool)

(assert (=> b!1445482 m!1334481))

(declare-fun m!1334483 () Bool)

(assert (=> b!1445480 m!1334483))

(declare-fun m!1334485 () Bool)

(assert (=> b!1445488 m!1334485))

(declare-fun m!1334487 () Bool)

(assert (=> b!1445488 m!1334487))

(declare-fun m!1334489 () Bool)

(assert (=> b!1445479 m!1334489))

(assert (=> b!1445484 m!1334479))

(assert (=> b!1445484 m!1334479))

(declare-fun m!1334491 () Bool)

(assert (=> b!1445484 m!1334491))

(declare-fun m!1334493 () Bool)

(assert (=> b!1445485 m!1334493))

(assert (=> b!1445485 m!1334493))

(declare-fun m!1334495 () Bool)

(assert (=> b!1445485 m!1334495))

(declare-fun m!1334497 () Bool)

(assert (=> b!1445485 m!1334497))

(declare-fun m!1334499 () Bool)

(assert (=> b!1445485 m!1334499))

(declare-fun m!1334501 () Bool)

(assert (=> b!1445475 m!1334501))

(assert (=> b!1445475 m!1334479))

(declare-fun m!1334503 () Bool)

(assert (=> b!1445489 m!1334503))

(assert (=> b!1445477 m!1334479))

(assert (=> b!1445477 m!1334479))

(declare-fun m!1334505 () Bool)

(assert (=> b!1445477 m!1334505))

(assert (=> b!1445477 m!1334505))

(assert (=> b!1445477 m!1334479))

(declare-fun m!1334507 () Bool)

(assert (=> b!1445477 m!1334507))

(declare-fun m!1334509 () Bool)

(assert (=> start!124752 m!1334509))

(declare-fun m!1334511 () Bool)

(assert (=> start!124752 m!1334511))

(assert (=> b!1445487 m!1334479))

(assert (=> b!1445487 m!1334479))

(declare-fun m!1334513 () Bool)

(assert (=> b!1445487 m!1334513))

(declare-fun m!1334515 () Bool)

(assert (=> b!1445478 m!1334515))

(assert (=> b!1445478 m!1334515))

(declare-fun m!1334517 () Bool)

(assert (=> b!1445478 m!1334517))

(assert (=> b!1445486 m!1334497))

(declare-fun m!1334519 () Bool)

(assert (=> b!1445486 m!1334519))

(declare-fun m!1334521 () Bool)

(assert (=> b!1445491 m!1334521))

(declare-fun m!1334523 () Bool)

(assert (=> b!1445491 m!1334523))

(check-sat (not start!124752) (not b!1445477) (not b!1445488) (not b!1445482) (not b!1445491) (not b!1445485) (not b!1445487) (not b!1445489) (not b!1445478) (not b!1445479) (not b!1445484) (not b!1445480))
