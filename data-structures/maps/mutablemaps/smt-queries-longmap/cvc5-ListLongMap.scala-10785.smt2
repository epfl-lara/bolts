; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126250 () Bool)

(assert start!126250)

(declare-fun res!1004630 () Bool)

(declare-fun e!829406 () Bool)

(assert (=> start!126250 (=> (not res!1004630) (not e!829406))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126250 (= res!1004630 (validMask!0 mask!2687))))

(assert (=> start!126250 e!829406))

(assert (=> start!126250 true))

(declare-datatypes ((array!99273 0))(
  ( (array!99274 (arr!47911 (Array (_ BitVec 32) (_ BitVec 64))) (size!48462 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99273)

(declare-fun array_inv!36856 (array!99273) Bool)

(assert (=> start!126250 (array_inv!36856 a!2862)))

(declare-fun b!1478510 () Bool)

(declare-fun res!1004627 () Bool)

(assert (=> b!1478510 (=> (not res!1004627) (not e!829406))))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1478510 (= res!1004627 (validKeyInArray!0 (select (arr!47911 a!2862) i!1006)))))

(declare-fun b!1478511 () Bool)

(declare-fun res!1004624 () Bool)

(declare-fun e!829408 () Bool)

(assert (=> b!1478511 (=> (not res!1004624) (not e!829408))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1478511 (= res!1004624 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1478512 () Bool)

(declare-fun res!1004625 () Bool)

(assert (=> b!1478512 (=> (not res!1004625) (not e!829406))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1478512 (= res!1004625 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48462 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48462 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48462 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1478513 () Bool)

(declare-fun e!829412 () Bool)

(assert (=> b!1478513 (= e!829406 e!829412)))

(declare-fun res!1004617 () Bool)

(assert (=> b!1478513 (=> (not res!1004617) (not e!829412))))

(assert (=> b!1478513 (= res!1004617 (= (select (store (arr!47911 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!645672 () array!99273)

(assert (=> b!1478513 (= lt!645672 (array!99274 (store (arr!47911 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48462 a!2862)))))

(declare-fun b!1478514 () Bool)

(declare-fun res!1004622 () Bool)

(declare-fun e!829405 () Bool)

(assert (=> b!1478514 (=> (not res!1004622) (not e!829405))))

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12174 0))(
  ( (MissingZero!12174 (index!51087 (_ BitVec 32))) (Found!12174 (index!51088 (_ BitVec 32))) (Intermediate!12174 (undefined!12986 Bool) (index!51089 (_ BitVec 32)) (x!132680 (_ BitVec 32))) (Undefined!12174) (MissingVacant!12174 (index!51090 (_ BitVec 32))) )
))
(declare-fun lt!645673 () SeekEntryResult!12174)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99273 (_ BitVec 32)) SeekEntryResult!12174)

(assert (=> b!1478514 (= res!1004622 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47911 a!2862) j!93) a!2862 mask!2687) lt!645673))))

(declare-fun b!1478515 () Bool)

(declare-fun res!1004619 () Bool)

(assert (=> b!1478515 (=> (not res!1004619) (not e!829406))))

(assert (=> b!1478515 (= res!1004619 (validKeyInArray!0 (select (arr!47911 a!2862) j!93)))))

(declare-fun b!1478516 () Bool)

(declare-fun e!829410 () Bool)

(declare-fun e!829409 () Bool)

(assert (=> b!1478516 (= e!829410 e!829409)))

(declare-fun res!1004621 () Bool)

(assert (=> b!1478516 (=> (not res!1004621) (not e!829409))))

(declare-fun lt!645675 () SeekEntryResult!12174)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99273 (_ BitVec 32)) SeekEntryResult!12174)

(assert (=> b!1478516 (= res!1004621 (= lt!645675 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47911 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun e!829404 () Bool)

(declare-fun lt!645671 () (_ BitVec 64))

(declare-fun b!1478517 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99273 (_ BitVec 32)) SeekEntryResult!12174)

(assert (=> b!1478517 (= e!829404 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!645671 lt!645672 mask!2687) (seekEntryOrOpen!0 lt!645671 lt!645672 mask!2687)))))

(declare-fun lt!645676 () SeekEntryResult!12174)

(declare-fun b!1478518 () Bool)

(assert (=> b!1478518 (= e!829404 (= lt!645676 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!645671 lt!645672 mask!2687)))))

(declare-fun b!1478519 () Bool)

(declare-fun res!1004626 () Bool)

(assert (=> b!1478519 (=> (not res!1004626) (not e!829406))))

(declare-datatypes ((List!34592 0))(
  ( (Nil!34589) (Cons!34588 (h!35956 (_ BitVec 64)) (t!49293 List!34592)) )
))
(declare-fun arrayNoDuplicates!0 (array!99273 (_ BitVec 32) List!34592) Bool)

(assert (=> b!1478519 (= res!1004626 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34589))))

(declare-fun b!1478520 () Bool)

(assert (=> b!1478520 (= e!829405 e!829408)))

(declare-fun res!1004620 () Bool)

(assert (=> b!1478520 (=> (not res!1004620) (not e!829408))))

(assert (=> b!1478520 (= res!1004620 (= lt!645676 (Intermediate!12174 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1478520 (= lt!645676 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!645671 mask!2687) lt!645671 lt!645672 mask!2687))))

(assert (=> b!1478520 (= lt!645671 (select (store (arr!47911 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1478521 () Bool)

(assert (=> b!1478521 (= e!829409 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1478522 () Bool)

(declare-fun res!1004631 () Bool)

(assert (=> b!1478522 (=> (not res!1004631) (not e!829408))))

(assert (=> b!1478522 (= res!1004631 e!829404)))

(declare-fun c!136469 () Bool)

(assert (=> b!1478522 (= c!136469 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1478523 () Bool)

(assert (=> b!1478523 (= e!829412 e!829405)))

(declare-fun res!1004618 () Bool)

(assert (=> b!1478523 (=> (not res!1004618) (not e!829405))))

(assert (=> b!1478523 (= res!1004618 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47911 a!2862) j!93) mask!2687) (select (arr!47911 a!2862) j!93) a!2862 mask!2687) lt!645673))))

(assert (=> b!1478523 (= lt!645673 (Intermediate!12174 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1478524 () Bool)

(assert (=> b!1478524 (= e!829408 (not (or (and (= (select (arr!47911 a!2862) index!646) (select (store (arr!47911 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47911 a!2862) index!646) (select (arr!47911 a!2862) j!93))) (not (= (select (arr!47911 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!47911 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!829411 () Bool)

(assert (=> b!1478524 e!829411))

(declare-fun res!1004616 () Bool)

(assert (=> b!1478524 (=> (not res!1004616) (not e!829411))))

(assert (=> b!1478524 (= res!1004616 (and (= lt!645675 (Found!12174 j!93)) (or (= (select (arr!47911 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47911 a!2862) intermediateBeforeIndex!19) (select (arr!47911 a!2862) j!93)))))))

(assert (=> b!1478524 (= lt!645675 (seekEntryOrOpen!0 (select (arr!47911 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99273 (_ BitVec 32)) Bool)

(assert (=> b!1478524 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!49636 0))(
  ( (Unit!49637) )
))
(declare-fun lt!645674 () Unit!49636)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99273 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49636)

(assert (=> b!1478524 (= lt!645674 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1478525 () Bool)

(declare-fun res!1004628 () Bool)

(assert (=> b!1478525 (=> (not res!1004628) (not e!829406))))

(assert (=> b!1478525 (= res!1004628 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1478526 () Bool)

(declare-fun res!1004623 () Bool)

(assert (=> b!1478526 (=> (not res!1004623) (not e!829406))))

(assert (=> b!1478526 (= res!1004623 (and (= (size!48462 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48462 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48462 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1478527 () Bool)

(assert (=> b!1478527 (= e!829411 e!829410)))

(declare-fun res!1004629 () Bool)

(assert (=> b!1478527 (=> res!1004629 e!829410)))

(assert (=> b!1478527 (= res!1004629 (or (and (= (select (arr!47911 a!2862) index!646) (select (store (arr!47911 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47911 a!2862) index!646) (select (arr!47911 a!2862) j!93))) (not (= (select (arr!47911 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and start!126250 res!1004630) b!1478526))

(assert (= (and b!1478526 res!1004623) b!1478510))

(assert (= (and b!1478510 res!1004627) b!1478515))

(assert (= (and b!1478515 res!1004619) b!1478525))

(assert (= (and b!1478525 res!1004628) b!1478519))

(assert (= (and b!1478519 res!1004626) b!1478512))

(assert (= (and b!1478512 res!1004625) b!1478513))

(assert (= (and b!1478513 res!1004617) b!1478523))

(assert (= (and b!1478523 res!1004618) b!1478514))

(assert (= (and b!1478514 res!1004622) b!1478520))

(assert (= (and b!1478520 res!1004620) b!1478522))

(assert (= (and b!1478522 c!136469) b!1478518))

(assert (= (and b!1478522 (not c!136469)) b!1478517))

(assert (= (and b!1478522 res!1004631) b!1478511))

(assert (= (and b!1478511 res!1004624) b!1478524))

(assert (= (and b!1478524 res!1004616) b!1478527))

(assert (= (and b!1478527 (not res!1004629)) b!1478516))

(assert (= (and b!1478516 res!1004621) b!1478521))

(declare-fun m!1364475 () Bool)

(assert (=> b!1478518 m!1364475))

(declare-fun m!1364477 () Bool)

(assert (=> b!1478517 m!1364477))

(declare-fun m!1364479 () Bool)

(assert (=> b!1478517 m!1364479))

(declare-fun m!1364481 () Bool)

(assert (=> b!1478515 m!1364481))

(assert (=> b!1478515 m!1364481))

(declare-fun m!1364483 () Bool)

(assert (=> b!1478515 m!1364483))

(assert (=> b!1478523 m!1364481))

(assert (=> b!1478523 m!1364481))

(declare-fun m!1364485 () Bool)

(assert (=> b!1478523 m!1364485))

(assert (=> b!1478523 m!1364485))

(assert (=> b!1478523 m!1364481))

(declare-fun m!1364487 () Bool)

(assert (=> b!1478523 m!1364487))

(declare-fun m!1364489 () Bool)

(assert (=> b!1478510 m!1364489))

(assert (=> b!1478510 m!1364489))

(declare-fun m!1364491 () Bool)

(assert (=> b!1478510 m!1364491))

(declare-fun m!1364493 () Bool)

(assert (=> start!126250 m!1364493))

(declare-fun m!1364495 () Bool)

(assert (=> start!126250 m!1364495))

(assert (=> b!1478514 m!1364481))

(assert (=> b!1478514 m!1364481))

(declare-fun m!1364497 () Bool)

(assert (=> b!1478514 m!1364497))

(declare-fun m!1364499 () Bool)

(assert (=> b!1478513 m!1364499))

(declare-fun m!1364501 () Bool)

(assert (=> b!1478513 m!1364501))

(assert (=> b!1478516 m!1364481))

(assert (=> b!1478516 m!1364481))

(declare-fun m!1364503 () Bool)

(assert (=> b!1478516 m!1364503))

(declare-fun m!1364505 () Bool)

(assert (=> b!1478525 m!1364505))

(declare-fun m!1364507 () Bool)

(assert (=> b!1478519 m!1364507))

(declare-fun m!1364509 () Bool)

(assert (=> b!1478527 m!1364509))

(assert (=> b!1478527 m!1364499))

(declare-fun m!1364511 () Bool)

(assert (=> b!1478527 m!1364511))

(assert (=> b!1478527 m!1364481))

(declare-fun m!1364513 () Bool)

(assert (=> b!1478520 m!1364513))

(assert (=> b!1478520 m!1364513))

(declare-fun m!1364515 () Bool)

(assert (=> b!1478520 m!1364515))

(assert (=> b!1478520 m!1364499))

(declare-fun m!1364517 () Bool)

(assert (=> b!1478520 m!1364517))

(declare-fun m!1364519 () Bool)

(assert (=> b!1478524 m!1364519))

(assert (=> b!1478524 m!1364499))

(declare-fun m!1364521 () Bool)

(assert (=> b!1478524 m!1364521))

(assert (=> b!1478524 m!1364511))

(assert (=> b!1478524 m!1364509))

(assert (=> b!1478524 m!1364481))

(declare-fun m!1364523 () Bool)

(assert (=> b!1478524 m!1364523))

(declare-fun m!1364525 () Bool)

(assert (=> b!1478524 m!1364525))

(assert (=> b!1478524 m!1364481))

(push 1)

