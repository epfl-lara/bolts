; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125628 () Bool)

(assert start!125628)

(declare-fun b!1469472 () Bool)

(declare-fun res!998061 () Bool)

(declare-fun e!824989 () Bool)

(assert (=> b!1469472 (=> (not res!998061) (not e!824989))))

(declare-datatypes ((array!98993 0))(
  ( (array!98994 (arr!47780 (Array (_ BitVec 32) (_ BitVec 64))) (size!48331 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98993)

(declare-datatypes ((List!34461 0))(
  ( (Nil!34458) (Cons!34457 (h!35807 (_ BitVec 64)) (t!49162 List!34461)) )
))
(declare-fun arrayNoDuplicates!0 (array!98993 (_ BitVec 32) List!34461) Bool)

(assert (=> b!1469472 (= res!998061 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34458))))

(declare-fun b!1469473 () Bool)

(declare-fun res!998062 () Bool)

(declare-fun e!824991 () Bool)

(assert (=> b!1469473 (=> (not res!998062) (not e!824991))))

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12043 0))(
  ( (MissingZero!12043 (index!50563 (_ BitVec 32))) (Found!12043 (index!50564 (_ BitVec 32))) (Intermediate!12043 (undefined!12855 Bool) (index!50565 (_ BitVec 32)) (x!132143 (_ BitVec 32))) (Undefined!12043) (MissingVacant!12043 (index!50566 (_ BitVec 32))) )
))
(declare-fun lt!642538 () SeekEntryResult!12043)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98993 (_ BitVec 32)) SeekEntryResult!12043)

(assert (=> b!1469473 (= res!998062 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47780 a!2862) j!93) a!2862 mask!2687) lt!642538))))

(declare-fun b!1469475 () Bool)

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun e!824992 () Bool)

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1469475 (= e!824992 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006) (bvsgt #b00000000000000000000000000000000 (size!48331 a!2862))))))

(declare-fun b!1469476 () Bool)

(declare-fun lt!642539 () array!98993)

(declare-fun lt!642540 () (_ BitVec 64))

(declare-fun e!824990 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98993 (_ BitVec 32)) SeekEntryResult!12043)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98993 (_ BitVec 32)) SeekEntryResult!12043)

(assert (=> b!1469476 (= e!824990 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!642540 lt!642539 mask!2687) (seekEntryOrOpen!0 lt!642540 lt!642539 mask!2687)))))

(declare-fun b!1469477 () Bool)

(declare-fun res!998067 () Bool)

(assert (=> b!1469477 (=> (not res!998067) (not e!824992))))

(assert (=> b!1469477 (= res!998067 e!824990)))

(declare-fun c!135221 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1469477 (= c!135221 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1469478 () Bool)

(declare-fun res!998060 () Bool)

(assert (=> b!1469478 (=> (not res!998060) (not e!824989))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1469478 (= res!998060 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48331 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48331 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48331 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun lt!642541 () SeekEntryResult!12043)

(declare-fun b!1469479 () Bool)

(assert (=> b!1469479 (= e!824990 (= lt!642541 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!642540 lt!642539 mask!2687)))))

(declare-fun b!1469480 () Bool)

(declare-fun e!824988 () Bool)

(assert (=> b!1469480 (= e!824988 e!824991)))

(declare-fun res!998065 () Bool)

(assert (=> b!1469480 (=> (not res!998065) (not e!824991))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1469480 (= res!998065 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47780 a!2862) j!93) mask!2687) (select (arr!47780 a!2862) j!93) a!2862 mask!2687) lt!642538))))

(assert (=> b!1469480 (= lt!642538 (Intermediate!12043 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1469481 () Bool)

(assert (=> b!1469481 (= e!824991 e!824992)))

(declare-fun res!998059 () Bool)

(assert (=> b!1469481 (=> (not res!998059) (not e!824992))))

(assert (=> b!1469481 (= res!998059 (= lt!642541 (Intermediate!12043 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1469481 (= lt!642541 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!642540 mask!2687) lt!642540 lt!642539 mask!2687))))

(assert (=> b!1469481 (= lt!642540 (select (store (arr!47780 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun res!998058 () Bool)

(assert (=> start!125628 (=> (not res!998058) (not e!824989))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125628 (= res!998058 (validMask!0 mask!2687))))

(assert (=> start!125628 e!824989))

(assert (=> start!125628 true))

(declare-fun array_inv!36725 (array!98993) Bool)

(assert (=> start!125628 (array_inv!36725 a!2862)))

(declare-fun b!1469474 () Bool)

(assert (=> b!1469474 (= e!824989 e!824988)))

(declare-fun res!998066 () Bool)

(assert (=> b!1469474 (=> (not res!998066) (not e!824988))))

(assert (=> b!1469474 (= res!998066 (= (select (store (arr!47780 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1469474 (= lt!642539 (array!98994 (store (arr!47780 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48331 a!2862)))))

(declare-fun b!1469482 () Bool)

(declare-fun res!998056 () Bool)

(assert (=> b!1469482 (=> (not res!998056) (not e!824989))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1469482 (= res!998056 (validKeyInArray!0 (select (arr!47780 a!2862) j!93)))))

(declare-fun b!1469483 () Bool)

(declare-fun res!998063 () Bool)

(assert (=> b!1469483 (=> (not res!998063) (not e!824989))))

(assert (=> b!1469483 (= res!998063 (validKeyInArray!0 (select (arr!47780 a!2862) i!1006)))))

(declare-fun b!1469484 () Bool)

(declare-fun res!998057 () Bool)

(assert (=> b!1469484 (=> (not res!998057) (not e!824989))))

(assert (=> b!1469484 (= res!998057 (and (= (size!48331 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48331 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48331 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1469485 () Bool)

(declare-fun res!998064 () Bool)

(assert (=> b!1469485 (=> (not res!998064) (not e!824989))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98993 (_ BitVec 32)) Bool)

(assert (=> b!1469485 (= res!998064 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(assert (= (and start!125628 res!998058) b!1469484))

(assert (= (and b!1469484 res!998057) b!1469483))

(assert (= (and b!1469483 res!998063) b!1469482))

(assert (= (and b!1469482 res!998056) b!1469485))

(assert (= (and b!1469485 res!998064) b!1469472))

(assert (= (and b!1469472 res!998061) b!1469478))

(assert (= (and b!1469478 res!998060) b!1469474))

(assert (= (and b!1469474 res!998066) b!1469480))

(assert (= (and b!1469480 res!998065) b!1469473))

(assert (= (and b!1469473 res!998062) b!1469481))

(assert (= (and b!1469481 res!998059) b!1469477))

(assert (= (and b!1469477 c!135221) b!1469479))

(assert (= (and b!1469477 (not c!135221)) b!1469476))

(assert (= (and b!1469477 res!998067) b!1469475))

(declare-fun m!1356701 () Bool)

(assert (=> b!1469482 m!1356701))

(assert (=> b!1469482 m!1356701))

(declare-fun m!1356703 () Bool)

(assert (=> b!1469482 m!1356703))

(declare-fun m!1356705 () Bool)

(assert (=> b!1469483 m!1356705))

(assert (=> b!1469483 m!1356705))

(declare-fun m!1356707 () Bool)

(assert (=> b!1469483 m!1356707))

(assert (=> b!1469480 m!1356701))

(assert (=> b!1469480 m!1356701))

(declare-fun m!1356709 () Bool)

(assert (=> b!1469480 m!1356709))

(assert (=> b!1469480 m!1356709))

(assert (=> b!1469480 m!1356701))

(declare-fun m!1356711 () Bool)

(assert (=> b!1469480 m!1356711))

(declare-fun m!1356713 () Bool)

(assert (=> b!1469479 m!1356713))

(assert (=> b!1469473 m!1356701))

(assert (=> b!1469473 m!1356701))

(declare-fun m!1356715 () Bool)

(assert (=> b!1469473 m!1356715))

(declare-fun m!1356717 () Bool)

(assert (=> b!1469476 m!1356717))

(declare-fun m!1356719 () Bool)

(assert (=> b!1469476 m!1356719))

(declare-fun m!1356721 () Bool)

(assert (=> start!125628 m!1356721))

(declare-fun m!1356723 () Bool)

(assert (=> start!125628 m!1356723))

(declare-fun m!1356725 () Bool)

(assert (=> b!1469472 m!1356725))

(declare-fun m!1356727 () Bool)

(assert (=> b!1469485 m!1356727))

(declare-fun m!1356729 () Bool)

(assert (=> b!1469481 m!1356729))

(assert (=> b!1469481 m!1356729))

(declare-fun m!1356731 () Bool)

(assert (=> b!1469481 m!1356731))

(declare-fun m!1356733 () Bool)

(assert (=> b!1469481 m!1356733))

(declare-fun m!1356735 () Bool)

(assert (=> b!1469481 m!1356735))

(assert (=> b!1469474 m!1356733))

(declare-fun m!1356737 () Bool)

(assert (=> b!1469474 m!1356737))

(check-sat (not b!1469473) (not b!1469483) (not start!125628) (not b!1469485) (not b!1469479) (not b!1469472) (not b!1469476) (not b!1469480) (not b!1469481) (not b!1469482))
(check-sat)
