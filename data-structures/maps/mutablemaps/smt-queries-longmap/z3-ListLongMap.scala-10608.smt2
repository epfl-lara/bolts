; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124830 () Bool)

(assert start!124830)

(declare-fun e!815298 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun lt!635192 () (_ BitVec 64))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun b!1447600 () Bool)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-datatypes ((array!98195 0))(
  ( (array!98196 (arr!47381 (Array (_ BitVec 32) (_ BitVec 64))) (size!47932 (_ BitVec 32))) )
))
(declare-fun lt!635191 () array!98195)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11656 0))(
  ( (MissingZero!11656 (index!49015 (_ BitVec 32))) (Found!11656 (index!49016 (_ BitVec 32))) (Intermediate!11656 (undefined!12468 Bool) (index!49017 (_ BitVec 32)) (x!130692 (_ BitVec 32))) (Undefined!11656) (MissingVacant!11656 (index!49018 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98195 (_ BitVec 32)) SeekEntryResult!11656)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98195 (_ BitVec 32)) SeekEntryResult!11656)

(assert (=> b!1447600 (= e!815298 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!635192 lt!635191 mask!2687) (seekEntryOrOpen!0 lt!635192 lt!635191 mask!2687)))))

(declare-fun b!1447602 () Bool)

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun e!815299 () Bool)

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1447602 (= e!815299 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1447603 () Bool)

(declare-fun res!979346 () Bool)

(declare-fun e!815297 () Bool)

(assert (=> b!1447603 (=> (not res!979346) (not e!815297))))

(declare-fun lt!635193 () SeekEntryResult!11656)

(declare-fun a!2862 () array!98195)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98195 (_ BitVec 32)) SeekEntryResult!11656)

(assert (=> b!1447603 (= res!979346 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47381 a!2862) j!93) a!2862 mask!2687) lt!635193))))

(declare-fun b!1447604 () Bool)

(declare-fun e!815302 () Bool)

(assert (=> b!1447604 (= e!815302 e!815299)))

(declare-fun res!979343 () Bool)

(assert (=> b!1447604 (=> (not res!979343) (not e!815299))))

(declare-fun lt!635194 () SeekEntryResult!11656)

(assert (=> b!1447604 (= res!979343 (= lt!635194 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47381 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1447605 () Bool)

(declare-fun res!979348 () Bool)

(declare-fun e!815304 () Bool)

(assert (=> b!1447605 (=> (not res!979348) (not e!815304))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1447605 (= res!979348 (validKeyInArray!0 (select (arr!47381 a!2862) j!93)))))

(declare-fun b!1447606 () Bool)

(declare-fun res!979345 () Bool)

(assert (=> b!1447606 (=> (not res!979345) (not e!815304))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1447606 (= res!979345 (validKeyInArray!0 (select (arr!47381 a!2862) i!1006)))))

(declare-fun b!1447607 () Bool)

(declare-fun e!815300 () Bool)

(assert (=> b!1447607 (= e!815304 e!815300)))

(declare-fun res!979335 () Bool)

(assert (=> b!1447607 (=> (not res!979335) (not e!815300))))

(assert (=> b!1447607 (= res!979335 (= (select (store (arr!47381 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1447607 (= lt!635191 (array!98196 (store (arr!47381 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47932 a!2862)))))

(declare-fun b!1447608 () Bool)

(declare-fun e!815305 () Bool)

(declare-fun e!815306 () Bool)

(assert (=> b!1447608 (= e!815305 (not e!815306))))

(declare-fun res!979338 () Bool)

(assert (=> b!1447608 (=> res!979338 e!815306)))

(assert (=> b!1447608 (= res!979338 (or (and (= (select (arr!47381 a!2862) index!646) (select (store (arr!47381 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47381 a!2862) index!646) (select (arr!47381 a!2862) j!93))) (not (= (select (arr!47381 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47381 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!815301 () Bool)

(assert (=> b!1447608 e!815301))

(declare-fun res!979342 () Bool)

(assert (=> b!1447608 (=> (not res!979342) (not e!815301))))

(assert (=> b!1447608 (= res!979342 (and (= lt!635194 (Found!11656 j!93)) (or (= (select (arr!47381 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47381 a!2862) intermediateBeforeIndex!19) (select (arr!47381 a!2862) j!93)))))))

(assert (=> b!1447608 (= lt!635194 (seekEntryOrOpen!0 (select (arr!47381 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98195 (_ BitVec 32)) Bool)

(assert (=> b!1447608 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!48756 0))(
  ( (Unit!48757) )
))
(declare-fun lt!635196 () Unit!48756)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98195 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48756)

(assert (=> b!1447608 (= lt!635196 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1447609 () Bool)

(declare-fun res!979334 () Bool)

(assert (=> b!1447609 (=> (not res!979334) (not e!815304))))

(declare-datatypes ((List!34062 0))(
  ( (Nil!34059) (Cons!34058 (h!35408 (_ BitVec 64)) (t!48763 List!34062)) )
))
(declare-fun arrayNoDuplicates!0 (array!98195 (_ BitVec 32) List!34062) Bool)

(assert (=> b!1447609 (= res!979334 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34059))))

(declare-fun b!1447610 () Bool)

(assert (=> b!1447610 (= e!815300 e!815297)))

(declare-fun res!979349 () Bool)

(assert (=> b!1447610 (=> (not res!979349) (not e!815297))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1447610 (= res!979349 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47381 a!2862) j!93) mask!2687) (select (arr!47381 a!2862) j!93) a!2862 mask!2687) lt!635193))))

(assert (=> b!1447610 (= lt!635193 (Intermediate!11656 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1447611 () Bool)

(assert (=> b!1447611 (= e!815301 e!815302)))

(declare-fun res!979347 () Bool)

(assert (=> b!1447611 (=> res!979347 e!815302)))

(assert (=> b!1447611 (= res!979347 (or (and (= (select (arr!47381 a!2862) index!646) (select (store (arr!47381 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47381 a!2862) index!646) (select (arr!47381 a!2862) j!93))) (not (= (select (arr!47381 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!979337 () Bool)

(assert (=> start!124830 (=> (not res!979337) (not e!815304))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124830 (= res!979337 (validMask!0 mask!2687))))

(assert (=> start!124830 e!815304))

(assert (=> start!124830 true))

(declare-fun array_inv!36326 (array!98195) Bool)

(assert (=> start!124830 (array_inv!36326 a!2862)))

(declare-fun b!1447601 () Bool)

(assert (=> b!1447601 (= e!815297 e!815305)))

(declare-fun res!979339 () Bool)

(assert (=> b!1447601 (=> (not res!979339) (not e!815305))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun lt!635195 () SeekEntryResult!11656)

(assert (=> b!1447601 (= res!979339 (= lt!635195 (Intermediate!11656 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1447601 (= lt!635195 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!635192 mask!2687) lt!635192 lt!635191 mask!2687))))

(assert (=> b!1447601 (= lt!635192 (select (store (arr!47381 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1447612 () Bool)

(declare-fun res!979336 () Bool)

(assert (=> b!1447612 (=> (not res!979336) (not e!815304))))

(assert (=> b!1447612 (= res!979336 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1447613 () Bool)

(declare-fun res!979340 () Bool)

(assert (=> b!1447613 (=> (not res!979340) (not e!815305))))

(assert (=> b!1447613 (= res!979340 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1447614 () Bool)

(assert (=> b!1447614 (= e!815298 (= lt!635195 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!635192 lt!635191 mask!2687)))))

(declare-fun b!1447615 () Bool)

(declare-fun res!979350 () Bool)

(assert (=> b!1447615 (=> (not res!979350) (not e!815304))))

(assert (=> b!1447615 (= res!979350 (and (= (size!47932 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47932 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47932 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1447616 () Bool)

(assert (=> b!1447616 (= e!815306 true)))

(declare-fun lt!635197 () SeekEntryResult!11656)

(assert (=> b!1447616 (= lt!635197 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateBeforeIndex!19 (select (arr!47381 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1447617 () Bool)

(declare-fun res!979344 () Bool)

(assert (=> b!1447617 (=> (not res!979344) (not e!815304))))

(assert (=> b!1447617 (= res!979344 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47932 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47932 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47932 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1447618 () Bool)

(declare-fun res!979341 () Bool)

(assert (=> b!1447618 (=> (not res!979341) (not e!815305))))

(assert (=> b!1447618 (= res!979341 e!815298)))

(declare-fun c!133646 () Bool)

(assert (=> b!1447618 (= c!133646 (bvsle x!665 intermediateAfterX!19))))

(assert (= (and start!124830 res!979337) b!1447615))

(assert (= (and b!1447615 res!979350) b!1447606))

(assert (= (and b!1447606 res!979345) b!1447605))

(assert (= (and b!1447605 res!979348) b!1447612))

(assert (= (and b!1447612 res!979336) b!1447609))

(assert (= (and b!1447609 res!979334) b!1447617))

(assert (= (and b!1447617 res!979344) b!1447607))

(assert (= (and b!1447607 res!979335) b!1447610))

(assert (= (and b!1447610 res!979349) b!1447603))

(assert (= (and b!1447603 res!979346) b!1447601))

(assert (= (and b!1447601 res!979339) b!1447618))

(assert (= (and b!1447618 c!133646) b!1447614))

(assert (= (and b!1447618 (not c!133646)) b!1447600))

(assert (= (and b!1447618 res!979341) b!1447613))

(assert (= (and b!1447613 res!979340) b!1447608))

(assert (= (and b!1447608 res!979342) b!1447611))

(assert (= (and b!1447611 (not res!979347)) b!1447604))

(assert (= (and b!1447604 res!979343) b!1447602))

(assert (= (and b!1447608 (not res!979338)) b!1447616))

(declare-fun m!1336461 () Bool)

(assert (=> b!1447616 m!1336461))

(assert (=> b!1447616 m!1336461))

(declare-fun m!1336463 () Bool)

(assert (=> b!1447616 m!1336463))

(assert (=> b!1447605 m!1336461))

(assert (=> b!1447605 m!1336461))

(declare-fun m!1336465 () Bool)

(assert (=> b!1447605 m!1336465))

(declare-fun m!1336467 () Bool)

(assert (=> b!1447608 m!1336467))

(declare-fun m!1336469 () Bool)

(assert (=> b!1447608 m!1336469))

(declare-fun m!1336471 () Bool)

(assert (=> b!1447608 m!1336471))

(declare-fun m!1336473 () Bool)

(assert (=> b!1447608 m!1336473))

(declare-fun m!1336475 () Bool)

(assert (=> b!1447608 m!1336475))

(assert (=> b!1447608 m!1336461))

(declare-fun m!1336477 () Bool)

(assert (=> b!1447608 m!1336477))

(declare-fun m!1336479 () Bool)

(assert (=> b!1447608 m!1336479))

(assert (=> b!1447608 m!1336461))

(declare-fun m!1336481 () Bool)

(assert (=> b!1447614 m!1336481))

(declare-fun m!1336483 () Bool)

(assert (=> b!1447612 m!1336483))

(declare-fun m!1336485 () Bool)

(assert (=> start!124830 m!1336485))

(declare-fun m!1336487 () Bool)

(assert (=> start!124830 m!1336487))

(assert (=> b!1447607 m!1336469))

(declare-fun m!1336489 () Bool)

(assert (=> b!1447607 m!1336489))

(assert (=> b!1447603 m!1336461))

(assert (=> b!1447603 m!1336461))

(declare-fun m!1336491 () Bool)

(assert (=> b!1447603 m!1336491))

(assert (=> b!1447611 m!1336475))

(assert (=> b!1447611 m!1336469))

(assert (=> b!1447611 m!1336473))

(assert (=> b!1447611 m!1336461))

(declare-fun m!1336493 () Bool)

(assert (=> b!1447606 m!1336493))

(assert (=> b!1447606 m!1336493))

(declare-fun m!1336495 () Bool)

(assert (=> b!1447606 m!1336495))

(assert (=> b!1447604 m!1336461))

(assert (=> b!1447604 m!1336461))

(declare-fun m!1336497 () Bool)

(assert (=> b!1447604 m!1336497))

(declare-fun m!1336499 () Bool)

(assert (=> b!1447609 m!1336499))

(declare-fun m!1336501 () Bool)

(assert (=> b!1447601 m!1336501))

(assert (=> b!1447601 m!1336501))

(declare-fun m!1336503 () Bool)

(assert (=> b!1447601 m!1336503))

(assert (=> b!1447601 m!1336469))

(declare-fun m!1336505 () Bool)

(assert (=> b!1447601 m!1336505))

(declare-fun m!1336507 () Bool)

(assert (=> b!1447600 m!1336507))

(declare-fun m!1336509 () Bool)

(assert (=> b!1447600 m!1336509))

(assert (=> b!1447610 m!1336461))

(assert (=> b!1447610 m!1336461))

(declare-fun m!1336511 () Bool)

(assert (=> b!1447610 m!1336511))

(assert (=> b!1447610 m!1336511))

(assert (=> b!1447610 m!1336461))

(declare-fun m!1336513 () Bool)

(assert (=> b!1447610 m!1336513))

(check-sat (not b!1447608) (not b!1447601) (not b!1447603) (not b!1447600) (not b!1447605) (not b!1447616) (not b!1447610) (not b!1447604) (not b!1447612) (not b!1447614) (not start!124830) (not b!1447609) (not b!1447606))
(check-sat)
