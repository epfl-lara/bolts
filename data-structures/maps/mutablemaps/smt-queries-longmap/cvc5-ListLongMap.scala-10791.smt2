; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126286 () Bool)

(assert start!126286)

(declare-fun b!1479513 () Bool)

(declare-fun res!1005527 () Bool)

(declare-fun e!829915 () Bool)

(assert (=> b!1479513 (=> (not res!1005527) (not e!829915))))

(declare-fun e!829913 () Bool)

(assert (=> b!1479513 (= res!1005527 e!829913)))

(declare-fun c!136523 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1479513 (= c!136523 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1479514 () Bool)

(declare-fun e!829910 () Bool)

(assert (=> b!1479514 (= e!829915 (not e!829910))))

(declare-fun res!1005516 () Bool)

(assert (=> b!1479514 (=> res!1005516 e!829910)))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!99309 0))(
  ( (array!99310 (arr!47929 (Array (_ BitVec 32) (_ BitVec 64))) (size!48480 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99309)

(assert (=> b!1479514 (= res!1005516 (or (and (= (select (arr!47929 a!2862) index!646) (select (store (arr!47929 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47929 a!2862) index!646) (select (arr!47929 a!2862) j!93))) (not (= (select (arr!47929 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47929 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!829914 () Bool)

(assert (=> b!1479514 e!829914))

(declare-fun res!1005514 () Bool)

(assert (=> b!1479514 (=> (not res!1005514) (not e!829914))))

(declare-datatypes ((SeekEntryResult!12192 0))(
  ( (MissingZero!12192 (index!51159 (_ BitVec 32))) (Found!12192 (index!51160 (_ BitVec 32))) (Intermediate!12192 (undefined!13004 Bool) (index!51161 (_ BitVec 32)) (x!132746 (_ BitVec 32))) (Undefined!12192) (MissingVacant!12192 (index!51162 (_ BitVec 32))) )
))
(declare-fun lt!646026 () SeekEntryResult!12192)

(declare-fun lt!646030 () SeekEntryResult!12192)

(assert (=> b!1479514 (= res!1005514 (and (= lt!646030 lt!646026) (or (= (select (arr!47929 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47929 a!2862) intermediateBeforeIndex!19) (select (arr!47929 a!2862) j!93)))))))

(assert (=> b!1479514 (= lt!646026 (Found!12192 j!93))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99309 (_ BitVec 32)) SeekEntryResult!12192)

(assert (=> b!1479514 (= lt!646030 (seekEntryOrOpen!0 (select (arr!47929 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99309 (_ BitVec 32)) Bool)

(assert (=> b!1479514 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!49672 0))(
  ( (Unit!49673) )
))
(declare-fun lt!646031 () Unit!49672)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99309 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49672)

(assert (=> b!1479514 (= lt!646031 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1479515 () Bool)

(declare-fun e!829918 () Bool)

(assert (=> b!1479515 (= e!829918 e!829915)))

(declare-fun res!1005525 () Bool)

(assert (=> b!1479515 (=> (not res!1005525) (not e!829915))))

(declare-fun lt!646027 () SeekEntryResult!12192)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1479515 (= res!1005525 (= lt!646027 (Intermediate!12192 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!646033 () (_ BitVec 64))

(declare-fun lt!646032 () array!99309)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99309 (_ BitVec 32)) SeekEntryResult!12192)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1479515 (= lt!646027 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!646033 mask!2687) lt!646033 lt!646032 mask!2687))))

(assert (=> b!1479515 (= lt!646033 (select (store (arr!47929 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1479516 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99309 (_ BitVec 32)) SeekEntryResult!12192)

(assert (=> b!1479516 (= e!829913 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!646033 lt!646032 mask!2687) (seekEntryOrOpen!0 lt!646033 lt!646032 mask!2687)))))

(declare-fun b!1479517 () Bool)

(declare-fun res!1005522 () Bool)

(assert (=> b!1479517 (=> (not res!1005522) (not e!829915))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1479517 (= res!1005522 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun e!829919 () Bool)

(declare-fun b!1479518 () Bool)

(assert (=> b!1479518 (= e!829919 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1479519 () Bool)

(declare-fun res!1005521 () Bool)

(declare-fun e!829917 () Bool)

(assert (=> b!1479519 (=> (not res!1005521) (not e!829917))))

(assert (=> b!1479519 (= res!1005521 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48480 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48480 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48480 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1479520 () Bool)

(declare-fun e!829911 () Bool)

(assert (=> b!1479520 (= e!829911 e!829919)))

(declare-fun res!1005517 () Bool)

(assert (=> b!1479520 (=> (not res!1005517) (not e!829919))))

(assert (=> b!1479520 (= res!1005517 (= lt!646030 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47929 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun res!1005523 () Bool)

(assert (=> start!126286 (=> (not res!1005523) (not e!829917))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126286 (= res!1005523 (validMask!0 mask!2687))))

(assert (=> start!126286 e!829917))

(assert (=> start!126286 true))

(declare-fun array_inv!36874 (array!99309) Bool)

(assert (=> start!126286 (array_inv!36874 a!2862)))

(declare-fun b!1479521 () Bool)

(declare-fun res!1005515 () Bool)

(assert (=> b!1479521 (=> (not res!1005515) (not e!829917))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1479521 (= res!1005515 (validKeyInArray!0 (select (arr!47929 a!2862) i!1006)))))

(declare-fun b!1479522 () Bool)

(declare-fun res!1005518 () Bool)

(assert (=> b!1479522 (=> (not res!1005518) (not e!829917))))

(declare-datatypes ((List!34610 0))(
  ( (Nil!34607) (Cons!34606 (h!35974 (_ BitVec 64)) (t!49311 List!34610)) )
))
(declare-fun arrayNoDuplicates!0 (array!99309 (_ BitVec 32) List!34610) Bool)

(assert (=> b!1479522 (= res!1005518 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34607))))

(declare-fun b!1479523 () Bool)

(declare-fun e!829912 () Bool)

(assert (=> b!1479523 (= e!829912 e!829918)))

(declare-fun res!1005513 () Bool)

(assert (=> b!1479523 (=> (not res!1005513) (not e!829918))))

(declare-fun lt!646029 () SeekEntryResult!12192)

(assert (=> b!1479523 (= res!1005513 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47929 a!2862) j!93) mask!2687) (select (arr!47929 a!2862) j!93) a!2862 mask!2687) lt!646029))))

(assert (=> b!1479523 (= lt!646029 (Intermediate!12192 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1479524 () Bool)

(declare-fun res!1005528 () Bool)

(assert (=> b!1479524 (=> (not res!1005528) (not e!829917))))

(assert (=> b!1479524 (= res!1005528 (and (= (size!48480 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48480 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48480 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1479525 () Bool)

(assert (=> b!1479525 (= e!829917 e!829912)))

(declare-fun res!1005512 () Bool)

(assert (=> b!1479525 (=> (not res!1005512) (not e!829912))))

(assert (=> b!1479525 (= res!1005512 (= (select (store (arr!47929 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1479525 (= lt!646032 (array!99310 (store (arr!47929 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48480 a!2862)))))

(declare-fun b!1479526 () Bool)

(declare-fun res!1005520 () Bool)

(assert (=> b!1479526 (=> res!1005520 e!829910)))

(assert (=> b!1479526 (= res!1005520 (not (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateBeforeIndex!19 (select (arr!47929 a!2862) j!93) a!2862 mask!2687) lt!646026)))))

(declare-fun b!1479527 () Bool)

(assert (=> b!1479527 (= e!829913 (= lt!646027 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!646033 lt!646032 mask!2687)))))

(declare-fun b!1479528 () Bool)

(declare-fun res!1005524 () Bool)

(assert (=> b!1479528 (=> (not res!1005524) (not e!829917))))

(assert (=> b!1479528 (= res!1005524 (validKeyInArray!0 (select (arr!47929 a!2862) j!93)))))

(declare-fun b!1479529 () Bool)

(declare-fun res!1005511 () Bool)

(assert (=> b!1479529 (=> (not res!1005511) (not e!829917))))

(assert (=> b!1479529 (= res!1005511 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1479530 () Bool)

(assert (=> b!1479530 (= e!829910 true)))

(assert (=> b!1479530 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!646033 lt!646032 mask!2687) lt!646026)))

(declare-fun lt!646028 () Unit!49672)

(declare-fun lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 (array!99309 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49672)

(assert (=> b!1479530 (= lt!646028 (lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 a!2862 i!1006 j!93 x!665 index!646 intermediateBeforeIndex!19 intermediateAfterIndex!19 mask!2687))))

(declare-fun b!1479531 () Bool)

(assert (=> b!1479531 (= e!829914 e!829911)))

(declare-fun res!1005526 () Bool)

(assert (=> b!1479531 (=> res!1005526 e!829911)))

(assert (=> b!1479531 (= res!1005526 (or (and (= (select (arr!47929 a!2862) index!646) (select (store (arr!47929 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47929 a!2862) index!646) (select (arr!47929 a!2862) j!93))) (not (= (select (arr!47929 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1479532 () Bool)

(declare-fun res!1005519 () Bool)

(assert (=> b!1479532 (=> (not res!1005519) (not e!829918))))

(assert (=> b!1479532 (= res!1005519 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47929 a!2862) j!93) a!2862 mask!2687) lt!646029))))

(assert (= (and start!126286 res!1005523) b!1479524))

(assert (= (and b!1479524 res!1005528) b!1479521))

(assert (= (and b!1479521 res!1005515) b!1479528))

(assert (= (and b!1479528 res!1005524) b!1479529))

(assert (= (and b!1479529 res!1005511) b!1479522))

(assert (= (and b!1479522 res!1005518) b!1479519))

(assert (= (and b!1479519 res!1005521) b!1479525))

(assert (= (and b!1479525 res!1005512) b!1479523))

(assert (= (and b!1479523 res!1005513) b!1479532))

(assert (= (and b!1479532 res!1005519) b!1479515))

(assert (= (and b!1479515 res!1005525) b!1479513))

(assert (= (and b!1479513 c!136523) b!1479527))

(assert (= (and b!1479513 (not c!136523)) b!1479516))

(assert (= (and b!1479513 res!1005527) b!1479517))

(assert (= (and b!1479517 res!1005522) b!1479514))

(assert (= (and b!1479514 res!1005514) b!1479531))

(assert (= (and b!1479531 (not res!1005526)) b!1479520))

(assert (= (and b!1479520 res!1005517) b!1479518))

(assert (= (and b!1479514 (not res!1005516)) b!1479526))

(assert (= (and b!1479526 (not res!1005520)) b!1479530))

(declare-fun m!1365429 () Bool)

(assert (=> b!1479521 m!1365429))

(assert (=> b!1479521 m!1365429))

(declare-fun m!1365431 () Bool)

(assert (=> b!1479521 m!1365431))

(declare-fun m!1365433 () Bool)

(assert (=> b!1479520 m!1365433))

(assert (=> b!1479520 m!1365433))

(declare-fun m!1365435 () Bool)

(assert (=> b!1479520 m!1365435))

(assert (=> b!1479523 m!1365433))

(assert (=> b!1479523 m!1365433))

(declare-fun m!1365437 () Bool)

(assert (=> b!1479523 m!1365437))

(assert (=> b!1479523 m!1365437))

(assert (=> b!1479523 m!1365433))

(declare-fun m!1365439 () Bool)

(assert (=> b!1479523 m!1365439))

(declare-fun m!1365441 () Bool)

(assert (=> b!1479525 m!1365441))

(declare-fun m!1365443 () Bool)

(assert (=> b!1479525 m!1365443))

(declare-fun m!1365445 () Bool)

(assert (=> b!1479515 m!1365445))

(assert (=> b!1479515 m!1365445))

(declare-fun m!1365447 () Bool)

(assert (=> b!1479515 m!1365447))

(assert (=> b!1479515 m!1365441))

(declare-fun m!1365449 () Bool)

(assert (=> b!1479515 m!1365449))

(declare-fun m!1365451 () Bool)

(assert (=> b!1479516 m!1365451))

(declare-fun m!1365453 () Bool)

(assert (=> b!1479516 m!1365453))

(declare-fun m!1365455 () Bool)

(assert (=> b!1479527 m!1365455))

(declare-fun m!1365457 () Bool)

(assert (=> start!126286 m!1365457))

(declare-fun m!1365459 () Bool)

(assert (=> start!126286 m!1365459))

(declare-fun m!1365461 () Bool)

(assert (=> b!1479522 m!1365461))

(assert (=> b!1479526 m!1365433))

(assert (=> b!1479526 m!1365433))

(declare-fun m!1365463 () Bool)

(assert (=> b!1479526 m!1365463))

(assert (=> b!1479528 m!1365433))

(assert (=> b!1479528 m!1365433))

(declare-fun m!1365465 () Bool)

(assert (=> b!1479528 m!1365465))

(declare-fun m!1365467 () Bool)

(assert (=> b!1479529 m!1365467))

(declare-fun m!1365469 () Bool)

(assert (=> b!1479531 m!1365469))

(assert (=> b!1479531 m!1365441))

(declare-fun m!1365471 () Bool)

(assert (=> b!1479531 m!1365471))

(assert (=> b!1479531 m!1365433))

(assert (=> b!1479532 m!1365433))

(assert (=> b!1479532 m!1365433))

(declare-fun m!1365473 () Bool)

(assert (=> b!1479532 m!1365473))

(declare-fun m!1365475 () Bool)

(assert (=> b!1479514 m!1365475))

(assert (=> b!1479514 m!1365441))

(declare-fun m!1365477 () Bool)

(assert (=> b!1479514 m!1365477))

(assert (=> b!1479514 m!1365471))

(assert (=> b!1479514 m!1365469))

(assert (=> b!1479514 m!1365433))

(declare-fun m!1365479 () Bool)

(assert (=> b!1479514 m!1365479))

(declare-fun m!1365481 () Bool)

(assert (=> b!1479514 m!1365481))

(assert (=> b!1479514 m!1365433))

(assert (=> b!1479530 m!1365451))

(declare-fun m!1365483 () Bool)

(assert (=> b!1479530 m!1365483))

(push 1)

