; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!126210 () Bool)

(assert start!126210)

(declare-fun b!1477430 () Bool)

(declare-fun e!828872 () Bool)

(declare-fun e!828869 () Bool)

(assert (=> b!1477430 (= e!828872 e!828869)))

(declare-fun res!1003669 () Bool)

(assert (=> b!1477430 (=> (not res!1003669) (not e!828869))))

(declare-datatypes ((SeekEntryResult!12154 0))(
  ( (MissingZero!12154 (index!51007 (_ BitVec 32))) (Found!12154 (index!51008 (_ BitVec 32))) (Intermediate!12154 (undefined!12966 Bool) (index!51009 (_ BitVec 32)) (x!132604 (_ BitVec 32))) (Undefined!12154) (MissingVacant!12154 (index!51010 (_ BitVec 32))) )
))
(declare-fun lt!645313 () SeekEntryResult!12154)

(declare-datatypes ((array!99233 0))(
  ( (array!99234 (arr!47891 (Array (_ BitVec 32) (_ BitVec 64))) (size!48442 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99233)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99233 (_ BitVec 32)) SeekEntryResult!12154)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1477430 (= res!1003669 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47891 a!2862) j!93) mask!2687) (select (arr!47891 a!2862) j!93) a!2862 mask!2687) lt!645313))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1477430 (= lt!645313 (Intermediate!12154 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1477431 () Bool)

(declare-fun res!1003656 () Bool)

(declare-fun e!828867 () Bool)

(assert (=> b!1477431 (=> (not res!1003656) (not e!828867))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99233 (_ BitVec 32)) Bool)

(assert (=> b!1477431 (= res!1003656 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1477432 () Bool)

(declare-fun e!828865 () Bool)

(assert (=> b!1477432 (= e!828869 e!828865)))

(declare-fun res!1003668 () Bool)

(assert (=> b!1477432 (=> (not res!1003668) (not e!828865))))

(declare-fun lt!645315 () SeekEntryResult!12154)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1477432 (= res!1003668 (= lt!645315 (Intermediate!12154 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!645314 () array!99233)

(declare-fun lt!645316 () (_ BitVec 64))

(assert (=> b!1477432 (= lt!645315 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!645316 mask!2687) lt!645316 lt!645314 mask!2687))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1477432 (= lt!645316 (select (store (arr!47891 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1477433 () Bool)

(declare-fun res!1003660 () Bool)

(assert (=> b!1477433 (=> (not res!1003660) (not e!828867))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1477433 (= res!1003660 (validKeyInArray!0 (select (arr!47891 a!2862) j!93)))))

(declare-fun b!1477434 () Bool)

(declare-fun e!828870 () Bool)

(declare-fun e!828871 () Bool)

(assert (=> b!1477434 (= e!828870 e!828871)))

(declare-fun res!1003667 () Bool)

(assert (=> b!1477434 (=> (not res!1003667) (not e!828871))))

(declare-fun lt!645312 () SeekEntryResult!12154)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99233 (_ BitVec 32)) SeekEntryResult!12154)

(assert (=> b!1477434 (= res!1003667 (= lt!645312 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47891 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1477435 () Bool)

(declare-fun res!1003665 () Bool)

(assert (=> b!1477435 (=> (not res!1003665) (not e!828865))))

(declare-fun e!828866 () Bool)

(assert (=> b!1477435 (= res!1003665 e!828866)))

(declare-fun c!136409 () Bool)

(assert (=> b!1477435 (= c!136409 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1477436 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99233 (_ BitVec 32)) SeekEntryResult!12154)

(assert (=> b!1477436 (= e!828866 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!645316 lt!645314 mask!2687) (seekEntryOrOpen!0 lt!645316 lt!645314 mask!2687)))))

(declare-fun b!1477437 () Bool)

(assert (=> b!1477437 (= e!828871 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1477438 () Bool)

(declare-fun res!1003664 () Bool)

(assert (=> b!1477438 (=> (not res!1003664) (not e!828865))))

(assert (=> b!1477438 (= res!1003664 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1477439 () Bool)

(declare-fun res!1003659 () Bool)

(assert (=> b!1477439 (=> (not res!1003659) (not e!828867))))

(assert (=> b!1477439 (= res!1003659 (validKeyInArray!0 (select (arr!47891 a!2862) i!1006)))))

(declare-fun b!1477440 () Bool)

(declare-fun res!1003671 () Bool)

(assert (=> b!1477440 (=> (not res!1003671) (not e!828867))))

(assert (=> b!1477440 (= res!1003671 (and (= (size!48442 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48442 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48442 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1477441 () Bool)

(assert (=> b!1477441 (= e!828866 (= lt!645315 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!645316 lt!645314 mask!2687)))))

(declare-fun b!1477442 () Bool)

(declare-fun res!1003658 () Bool)

(assert (=> b!1477442 (=> (not res!1003658) (not e!828869))))

(assert (=> b!1477442 (= res!1003658 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47891 a!2862) j!93) a!2862 mask!2687) lt!645313))))

(declare-fun b!1477443 () Bool)

(assert (=> b!1477443 (= e!828865 (not true))))

(declare-fun e!828864 () Bool)

(assert (=> b!1477443 e!828864))

(declare-fun res!1003657 () Bool)

(assert (=> b!1477443 (=> (not res!1003657) (not e!828864))))

(assert (=> b!1477443 (= res!1003657 (and (= lt!645312 (Found!12154 j!93)) (or (= (select (arr!47891 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47891 a!2862) intermediateBeforeIndex!19) (select (arr!47891 a!2862) j!93)))))))

(assert (=> b!1477443 (= lt!645312 (seekEntryOrOpen!0 (select (arr!47891 a!2862) j!93) a!2862 mask!2687))))

(assert (=> b!1477443 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!49596 0))(
  ( (Unit!49597) )
))
(declare-fun lt!645311 () Unit!49596)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99233 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49596)

(assert (=> b!1477443 (= lt!645311 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun res!1003662 () Bool)

(assert (=> start!126210 (=> (not res!1003662) (not e!828867))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126210 (= res!1003662 (validMask!0 mask!2687))))

(assert (=> start!126210 e!828867))

(assert (=> start!126210 true))

(declare-fun array_inv!36836 (array!99233) Bool)

(assert (=> start!126210 (array_inv!36836 a!2862)))

(declare-fun b!1477444 () Bool)

(declare-fun res!1003661 () Bool)

(assert (=> b!1477444 (=> (not res!1003661) (not e!828867))))

(declare-datatypes ((List!34572 0))(
  ( (Nil!34569) (Cons!34568 (h!35936 (_ BitVec 64)) (t!49273 List!34572)) )
))
(declare-fun arrayNoDuplicates!0 (array!99233 (_ BitVec 32) List!34572) Bool)

(assert (=> b!1477444 (= res!1003661 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34569))))

(declare-fun b!1477445 () Bool)

(declare-fun res!1003666 () Bool)

(assert (=> b!1477445 (=> (not res!1003666) (not e!828867))))

(assert (=> b!1477445 (= res!1003666 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48442 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48442 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48442 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1477446 () Bool)

(assert (=> b!1477446 (= e!828867 e!828872)))

(declare-fun res!1003670 () Bool)

(assert (=> b!1477446 (=> (not res!1003670) (not e!828872))))

(assert (=> b!1477446 (= res!1003670 (= (select (store (arr!47891 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1477446 (= lt!645314 (array!99234 (store (arr!47891 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48442 a!2862)))))

(declare-fun b!1477447 () Bool)

(assert (=> b!1477447 (= e!828864 e!828870)))

(declare-fun res!1003663 () Bool)

(assert (=> b!1477447 (=> res!1003663 e!828870)))

(assert (=> b!1477447 (= res!1003663 (or (and (= (select (arr!47891 a!2862) index!646) (select (store (arr!47891 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47891 a!2862) index!646) (select (arr!47891 a!2862) j!93))) (not (= (select (arr!47891 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and start!126210 res!1003662) b!1477440))

(assert (= (and b!1477440 res!1003671) b!1477439))

(assert (= (and b!1477439 res!1003659) b!1477433))

(assert (= (and b!1477433 res!1003660) b!1477431))

(assert (= (and b!1477431 res!1003656) b!1477444))

(assert (= (and b!1477444 res!1003661) b!1477445))

(assert (= (and b!1477445 res!1003666) b!1477446))

(assert (= (and b!1477446 res!1003670) b!1477430))

(assert (= (and b!1477430 res!1003669) b!1477442))

(assert (= (and b!1477442 res!1003658) b!1477432))

(assert (= (and b!1477432 res!1003668) b!1477435))

(assert (= (and b!1477435 c!136409) b!1477441))

(assert (= (and b!1477435 (not c!136409)) b!1477436))

(assert (= (and b!1477435 res!1003665) b!1477438))

(assert (= (and b!1477438 res!1003664) b!1477443))

(assert (= (and b!1477443 res!1003657) b!1477447))

(assert (= (and b!1477447 (not res!1003663)) b!1477434))

(assert (= (and b!1477434 res!1003667) b!1477437))

(declare-fun m!1363435 () Bool)

(assert (=> b!1477444 m!1363435))

(declare-fun m!1363437 () Bool)

(assert (=> start!126210 m!1363437))

(declare-fun m!1363439 () Bool)

(assert (=> start!126210 m!1363439))

(declare-fun m!1363441 () Bool)

(assert (=> b!1477442 m!1363441))

(assert (=> b!1477442 m!1363441))

(declare-fun m!1363443 () Bool)

(assert (=> b!1477442 m!1363443))

(assert (=> b!1477433 m!1363441))

(assert (=> b!1477433 m!1363441))

(declare-fun m!1363445 () Bool)

(assert (=> b!1477433 m!1363445))

(declare-fun m!1363447 () Bool)

(assert (=> b!1477432 m!1363447))

(assert (=> b!1477432 m!1363447))

(declare-fun m!1363449 () Bool)

(assert (=> b!1477432 m!1363449))

(declare-fun m!1363451 () Bool)

(assert (=> b!1477432 m!1363451))

(declare-fun m!1363453 () Bool)

(assert (=> b!1477432 m!1363453))

(declare-fun m!1363455 () Bool)

(assert (=> b!1477436 m!1363455))

(declare-fun m!1363457 () Bool)

(assert (=> b!1477436 m!1363457))

(declare-fun m!1363459 () Bool)

(assert (=> b!1477431 m!1363459))

(declare-fun m!1363461 () Bool)

(assert (=> b!1477443 m!1363461))

(declare-fun m!1363463 () Bool)

(assert (=> b!1477443 m!1363463))

(assert (=> b!1477443 m!1363441))

(declare-fun m!1363465 () Bool)

(assert (=> b!1477443 m!1363465))

(declare-fun m!1363467 () Bool)

(assert (=> b!1477443 m!1363467))

(assert (=> b!1477443 m!1363441))

(declare-fun m!1363469 () Bool)

(assert (=> b!1477441 m!1363469))

(declare-fun m!1363471 () Bool)

(assert (=> b!1477447 m!1363471))

(assert (=> b!1477447 m!1363451))

(declare-fun m!1363473 () Bool)

(assert (=> b!1477447 m!1363473))

(assert (=> b!1477447 m!1363441))

(assert (=> b!1477430 m!1363441))

(assert (=> b!1477430 m!1363441))

(declare-fun m!1363475 () Bool)

(assert (=> b!1477430 m!1363475))

(assert (=> b!1477430 m!1363475))

(assert (=> b!1477430 m!1363441))

(declare-fun m!1363477 () Bool)

(assert (=> b!1477430 m!1363477))

(assert (=> b!1477446 m!1363451))

(declare-fun m!1363479 () Bool)

(assert (=> b!1477446 m!1363479))

(assert (=> b!1477434 m!1363441))

(assert (=> b!1477434 m!1363441))

(declare-fun m!1363481 () Bool)

(assert (=> b!1477434 m!1363481))

(declare-fun m!1363483 () Bool)

(assert (=> b!1477439 m!1363483))

(assert (=> b!1477439 m!1363483))

(declare-fun m!1363485 () Bool)

(assert (=> b!1477439 m!1363485))

(check-sat (not b!1477434) (not b!1477430) (not b!1477432) (not b!1477442) (not b!1477443) (not b!1477441) (not b!1477444) (not start!126210) (not b!1477433) (not b!1477439) (not b!1477431) (not b!1477436))
(check-sat)
