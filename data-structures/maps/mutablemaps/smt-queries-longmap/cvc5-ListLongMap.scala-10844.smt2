; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126952 () Bool)

(assert start!126952)

(declare-fun b!1491296 () Bool)

(declare-fun res!1014589 () Bool)

(declare-fun e!835586 () Bool)

(assert (=> b!1491296 (=> (not res!1014589) (not e!835586))))

(declare-datatypes ((array!99642 0))(
  ( (array!99643 (arr!48088 (Array (_ BitVec 32) (_ BitVec 64))) (size!48639 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99642)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1491296 (= res!1014589 (validKeyInArray!0 (select (arr!48088 a!2862) j!93)))))

(declare-fun b!1491297 () Bool)

(declare-fun res!1014580 () Bool)

(declare-fun e!835587 () Bool)

(assert (=> b!1491297 (=> (not res!1014580) (not e!835587))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12351 0))(
  ( (MissingZero!12351 (index!51795 (_ BitVec 32))) (Found!12351 (index!51796 (_ BitVec 32))) (Intermediate!12351 (undefined!13163 Bool) (index!51797 (_ BitVec 32)) (x!133386 (_ BitVec 32))) (Undefined!12351) (MissingVacant!12351 (index!51798 (_ BitVec 32))) )
))
(declare-fun lt!650198 () SeekEntryResult!12351)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99642 (_ BitVec 32)) SeekEntryResult!12351)

(assert (=> b!1491297 (= res!1014580 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48088 a!2862) j!93) a!2862 mask!2687) lt!650198))))

(declare-fun b!1491298 () Bool)

(declare-fun e!835584 () Bool)

(assert (=> b!1491298 (= e!835584 e!835587)))

(declare-fun res!1014593 () Bool)

(assert (=> b!1491298 (=> (not res!1014593) (not e!835587))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1491298 (= res!1014593 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48088 a!2862) j!93) mask!2687) (select (arr!48088 a!2862) j!93) a!2862 mask!2687) lt!650198))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1491298 (= lt!650198 (Intermediate!12351 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1491299 () Bool)

(assert (=> b!1491299 (= e!835586 e!835584)))

(declare-fun res!1014591 () Bool)

(assert (=> b!1491299 (=> (not res!1014591) (not e!835584))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1491299 (= res!1014591 (= (select (store (arr!48088 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!650196 () array!99642)

(assert (=> b!1491299 (= lt!650196 (array!99643 (store (arr!48088 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48639 a!2862)))))

(declare-fun e!835588 () Bool)

(declare-fun b!1491300 () Bool)

(declare-fun lt!650195 () SeekEntryResult!12351)

(declare-fun lt!650200 () (_ BitVec 64))

(assert (=> b!1491300 (= e!835588 (= lt!650195 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!650200 lt!650196 mask!2687)))))

(declare-fun b!1491301 () Bool)

(declare-fun res!1014582 () Bool)

(declare-fun e!835582 () Bool)

(assert (=> b!1491301 (=> (not res!1014582) (not e!835582))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99642 (_ BitVec 32)) SeekEntryResult!12351)

(assert (=> b!1491301 (= res!1014582 (= (seekEntryOrOpen!0 (select (arr!48088 a!2862) j!93) a!2862 mask!2687) (Found!12351 j!93)))))

(declare-fun b!1491303 () Bool)

(assert (=> b!1491303 (= e!835582 (or (= (select (arr!48088 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48088 a!2862) intermediateBeforeIndex!19) (select (arr!48088 a!2862) j!93))))))

(declare-fun b!1491304 () Bool)

(declare-fun res!1014585 () Bool)

(assert (=> b!1491304 (=> (not res!1014585) (not e!835586))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99642 (_ BitVec 32)) Bool)

(assert (=> b!1491304 (= res!1014585 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1491305 () Bool)

(declare-fun e!835589 () Bool)

(assert (=> b!1491305 (= e!835587 e!835589)))

(declare-fun res!1014587 () Bool)

(assert (=> b!1491305 (=> (not res!1014587) (not e!835589))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1491305 (= res!1014587 (= lt!650195 (Intermediate!12351 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1491305 (= lt!650195 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!650200 mask!2687) lt!650200 lt!650196 mask!2687))))

(assert (=> b!1491305 (= lt!650200 (select (store (arr!48088 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1491306 () Bool)

(declare-fun res!1014592 () Bool)

(assert (=> b!1491306 (=> (not res!1014592) (not e!835586))))

(declare-datatypes ((List!34769 0))(
  ( (Nil!34766) (Cons!34765 (h!36148 (_ BitVec 64)) (t!49470 List!34769)) )
))
(declare-fun arrayNoDuplicates!0 (array!99642 (_ BitVec 32) List!34769) Bool)

(assert (=> b!1491306 (= res!1014592 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34766))))

(declare-fun b!1491307 () Bool)

(declare-fun e!835585 () Bool)

(assert (=> b!1491307 (= e!835585 true)))

(declare-fun lt!650199 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1491307 (= lt!650199 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1491308 () Bool)

(declare-fun res!1014583 () Bool)

(assert (=> b!1491308 (=> (not res!1014583) (not e!835586))))

(assert (=> b!1491308 (= res!1014583 (and (= (size!48639 a!2862) (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48639 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48639 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1491309 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99642 (_ BitVec 32)) SeekEntryResult!12351)

(assert (=> b!1491309 (= e!835588 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!650200 lt!650196 mask!2687) (seekEntryOrOpen!0 lt!650200 lt!650196 mask!2687)))))

(declare-fun b!1491310 () Bool)

(declare-fun res!1014584 () Bool)

(assert (=> b!1491310 (=> (not res!1014584) (not e!835586))))

(assert (=> b!1491310 (= res!1014584 (validKeyInArray!0 (select (arr!48088 a!2862) i!1006)))))

(declare-fun res!1014579 () Bool)

(assert (=> start!126952 (=> (not res!1014579) (not e!835586))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126952 (= res!1014579 (validMask!0 mask!2687))))

(assert (=> start!126952 e!835586))

(assert (=> start!126952 true))

(declare-fun array_inv!37033 (array!99642) Bool)

(assert (=> start!126952 (array_inv!37033 a!2862)))

(declare-fun b!1491302 () Bool)

(declare-fun res!1014581 () Bool)

(assert (=> b!1491302 (=> (not res!1014581) (not e!835586))))

(assert (=> b!1491302 (= res!1014581 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48639 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48639 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48639 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1491311 () Bool)

(assert (=> b!1491311 (= e!835589 (not e!835585))))

(declare-fun res!1014586 () Bool)

(assert (=> b!1491311 (=> res!1014586 e!835585)))

(assert (=> b!1491311 (= res!1014586 (or (and (= (select (arr!48088 a!2862) index!646) (select (store (arr!48088 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48088 a!2862) index!646) (select (arr!48088 a!2862) j!93))) (= (select (arr!48088 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(assert (=> b!1491311 e!835582))

(declare-fun res!1014594 () Bool)

(assert (=> b!1491311 (=> (not res!1014594) (not e!835582))))

(assert (=> b!1491311 (= res!1014594 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49990 0))(
  ( (Unit!49991) )
))
(declare-fun lt!650197 () Unit!49990)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99642 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49990)

(assert (=> b!1491311 (= lt!650197 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1491312 () Bool)

(declare-fun res!1014590 () Bool)

(assert (=> b!1491312 (=> (not res!1014590) (not e!835589))))

(assert (=> b!1491312 (= res!1014590 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1491313 () Bool)

(declare-fun res!1014588 () Bool)

(assert (=> b!1491313 (=> (not res!1014588) (not e!835589))))

(assert (=> b!1491313 (= res!1014588 e!835588)))

(declare-fun c!137888 () Bool)

(assert (=> b!1491313 (= c!137888 (bvsle x!665 intermediateAfterX!19))))

(assert (= (and start!126952 res!1014579) b!1491308))

(assert (= (and b!1491308 res!1014583) b!1491310))

(assert (= (and b!1491310 res!1014584) b!1491296))

(assert (= (and b!1491296 res!1014589) b!1491304))

(assert (= (and b!1491304 res!1014585) b!1491306))

(assert (= (and b!1491306 res!1014592) b!1491302))

(assert (= (and b!1491302 res!1014581) b!1491299))

(assert (= (and b!1491299 res!1014591) b!1491298))

(assert (= (and b!1491298 res!1014593) b!1491297))

(assert (= (and b!1491297 res!1014580) b!1491305))

(assert (= (and b!1491305 res!1014587) b!1491313))

(assert (= (and b!1491313 c!137888) b!1491300))

(assert (= (and b!1491313 (not c!137888)) b!1491309))

(assert (= (and b!1491313 res!1014588) b!1491312))

(assert (= (and b!1491312 res!1014590) b!1491311))

(assert (= (and b!1491311 res!1014594) b!1491301))

(assert (= (and b!1491301 res!1014582) b!1491303))

(assert (= (and b!1491311 (not res!1014586)) b!1491307))

(declare-fun m!1375479 () Bool)

(assert (=> b!1491297 m!1375479))

(assert (=> b!1491297 m!1375479))

(declare-fun m!1375481 () Bool)

(assert (=> b!1491297 m!1375481))

(declare-fun m!1375483 () Bool)

(assert (=> start!126952 m!1375483))

(declare-fun m!1375485 () Bool)

(assert (=> start!126952 m!1375485))

(declare-fun m!1375487 () Bool)

(assert (=> b!1491306 m!1375487))

(declare-fun m!1375489 () Bool)

(assert (=> b!1491303 m!1375489))

(assert (=> b!1491303 m!1375479))

(assert (=> b!1491301 m!1375479))

(assert (=> b!1491301 m!1375479))

(declare-fun m!1375491 () Bool)

(assert (=> b!1491301 m!1375491))

(declare-fun m!1375493 () Bool)

(assert (=> b!1491310 m!1375493))

(assert (=> b!1491310 m!1375493))

(declare-fun m!1375495 () Bool)

(assert (=> b!1491310 m!1375495))

(declare-fun m!1375497 () Bool)

(assert (=> b!1491307 m!1375497))

(declare-fun m!1375499 () Bool)

(assert (=> b!1491311 m!1375499))

(declare-fun m!1375501 () Bool)

(assert (=> b!1491311 m!1375501))

(declare-fun m!1375503 () Bool)

(assert (=> b!1491311 m!1375503))

(declare-fun m!1375505 () Bool)

(assert (=> b!1491311 m!1375505))

(declare-fun m!1375507 () Bool)

(assert (=> b!1491311 m!1375507))

(assert (=> b!1491311 m!1375479))

(declare-fun m!1375509 () Bool)

(assert (=> b!1491305 m!1375509))

(assert (=> b!1491305 m!1375509))

(declare-fun m!1375511 () Bool)

(assert (=> b!1491305 m!1375511))

(assert (=> b!1491305 m!1375501))

(declare-fun m!1375513 () Bool)

(assert (=> b!1491305 m!1375513))

(declare-fun m!1375515 () Bool)

(assert (=> b!1491300 m!1375515))

(declare-fun m!1375517 () Bool)

(assert (=> b!1491309 m!1375517))

(declare-fun m!1375519 () Bool)

(assert (=> b!1491309 m!1375519))

(assert (=> b!1491298 m!1375479))

(assert (=> b!1491298 m!1375479))

(declare-fun m!1375521 () Bool)

(assert (=> b!1491298 m!1375521))

(assert (=> b!1491298 m!1375521))

(assert (=> b!1491298 m!1375479))

(declare-fun m!1375523 () Bool)

(assert (=> b!1491298 m!1375523))

(assert (=> b!1491299 m!1375501))

(declare-fun m!1375525 () Bool)

(assert (=> b!1491299 m!1375525))

(assert (=> b!1491296 m!1375479))

(assert (=> b!1491296 m!1375479))

(declare-fun m!1375527 () Bool)

(assert (=> b!1491296 m!1375527))

(declare-fun m!1375529 () Bool)

(assert (=> b!1491304 m!1375529))

(push 1)

