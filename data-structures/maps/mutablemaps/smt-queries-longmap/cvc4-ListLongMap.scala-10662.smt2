; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125156 () Bool)

(assert start!125156)

(declare-fun b!1457320 () Bool)

(declare-fun res!987738 () Bool)

(declare-fun e!819856 () Bool)

(assert (=> b!1457320 (=> (not res!987738) (not e!819856))))

(declare-datatypes ((array!98521 0))(
  ( (array!98522 (arr!47544 (Array (_ BitVec 32) (_ BitVec 64))) (size!48095 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98521)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1457320 (= res!987738 (validKeyInArray!0 (select (arr!47544 a!2862) j!93)))))

(declare-fun b!1457321 () Bool)

(declare-fun res!987740 () Bool)

(assert (=> b!1457321 (=> (not res!987740) (not e!819856))))

(declare-datatypes ((List!34225 0))(
  ( (Nil!34222) (Cons!34221 (h!35571 (_ BitVec 64)) (t!48926 List!34225)) )
))
(declare-fun arrayNoDuplicates!0 (array!98521 (_ BitVec 32) List!34225) Bool)

(assert (=> b!1457321 (= res!987740 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34222))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun lt!638611 () (_ BitVec 64))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun lt!638608 () array!98521)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun lt!638610 () (_ BitVec 32))

(declare-fun e!819854 () Bool)

(declare-datatypes ((SeekEntryResult!11819 0))(
  ( (MissingZero!11819 (index!49667 (_ BitVec 32))) (Found!11819 (index!49668 (_ BitVec 32))) (Intermediate!11819 (undefined!12631 Bool) (index!49669 (_ BitVec 32)) (x!131287 (_ BitVec 32))) (Undefined!11819) (MissingVacant!11819 (index!49670 (_ BitVec 32))) )
))
(declare-fun lt!638609 () SeekEntryResult!11819)

(declare-fun b!1457322 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98521 (_ BitVec 32)) SeekEntryResult!11819)

(assert (=> b!1457322 (= e!819854 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638610 intermediateAfterIndex!19 lt!638611 lt!638608 mask!2687) lt!638609)))))

(declare-fun b!1457323 () Bool)

(declare-fun res!987743 () Bool)

(declare-fun e!819857 () Bool)

(assert (=> b!1457323 (=> res!987743 e!819857)))

(declare-fun lt!638604 () SeekEntryResult!11819)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98521 (_ BitVec 32)) SeekEntryResult!11819)

(assert (=> b!1457323 (= res!987743 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638610 (select (arr!47544 a!2862) j!93) a!2862 mask!2687) lt!638604)))))

(declare-fun b!1457324 () Bool)

(declare-fun e!819860 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98521 (_ BitVec 32)) SeekEntryResult!11819)

(assert (=> b!1457324 (= e!819860 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!638611 lt!638608 mask!2687) (seekEntryOrOpen!0 lt!638611 lt!638608 mask!2687)))))

(declare-fun lt!638607 () SeekEntryResult!11819)

(declare-fun b!1457325 () Bool)

(assert (=> b!1457325 (= e!819854 (not (= lt!638607 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638610 lt!638611 lt!638608 mask!2687))))))

(declare-fun b!1457326 () Bool)

(declare-fun res!987736 () Bool)

(assert (=> b!1457326 (=> (not res!987736) (not e!819856))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1457326 (= res!987736 (and (= (size!48095 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48095 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48095 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1457327 () Bool)

(declare-fun e!819859 () Bool)

(declare-fun e!819858 () Bool)

(assert (=> b!1457327 (= e!819859 (not e!819858))))

(declare-fun res!987749 () Bool)

(assert (=> b!1457327 (=> res!987749 e!819858)))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1457327 (= res!987749 (or (and (= (select (arr!47544 a!2862) index!646) (select (store (arr!47544 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47544 a!2862) index!646) (select (arr!47544 a!2862) j!93))) (= (select (arr!47544 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(declare-fun e!819861 () Bool)

(assert (=> b!1457327 e!819861))

(declare-fun res!987745 () Bool)

(assert (=> b!1457327 (=> (not res!987745) (not e!819861))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98521 (_ BitVec 32)) Bool)

(assert (=> b!1457327 (= res!987745 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49082 0))(
  ( (Unit!49083) )
))
(declare-fun lt!638606 () Unit!49082)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98521 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49082)

(assert (=> b!1457327 (= lt!638606 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1457328 () Bool)

(declare-fun e!819855 () Bool)

(assert (=> b!1457328 (= e!819855 e!819859)))

(declare-fun res!987741 () Bool)

(assert (=> b!1457328 (=> (not res!987741) (not e!819859))))

(assert (=> b!1457328 (= res!987741 (= lt!638607 (Intermediate!11819 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1457328 (= lt!638607 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!638611 mask!2687) lt!638611 lt!638608 mask!2687))))

(assert (=> b!1457328 (= lt!638611 (select (store (arr!47544 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1457329 () Bool)

(declare-fun res!987744 () Bool)

(assert (=> b!1457329 (=> (not res!987744) (not e!819861))))

(assert (=> b!1457329 (= res!987744 (= (seekEntryOrOpen!0 (select (arr!47544 a!2862) j!93) a!2862 mask!2687) (Found!11819 j!93)))))

(declare-fun b!1457330 () Bool)

(declare-fun res!987753 () Bool)

(assert (=> b!1457330 (=> (not res!987753) (not e!819855))))

(assert (=> b!1457330 (= res!987753 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47544 a!2862) j!93) a!2862 mask!2687) lt!638604))))

(declare-fun b!1457331 () Bool)

(declare-fun res!987750 () Bool)

(assert (=> b!1457331 (=> (not res!987750) (not e!819859))))

(assert (=> b!1457331 (= res!987750 e!819860)))

(declare-fun c!134306 () Bool)

(assert (=> b!1457331 (= c!134306 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1457332 () Bool)

(assert (=> b!1457332 (= e!819857 true)))

(declare-fun lt!638605 () Bool)

(assert (=> b!1457332 (= lt!638605 e!819854)))

(declare-fun c!134305 () Bool)

(assert (=> b!1457332 (= c!134305 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1457333 () Bool)

(assert (=> b!1457333 (= e!819860 (= lt!638607 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!638611 lt!638608 mask!2687)))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun b!1457334 () Bool)

(assert (=> b!1457334 (= e!819861 (and (or (= (select (arr!47544 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47544 a!2862) intermediateBeforeIndex!19) (select (arr!47544 a!2862) j!93))) (let ((bdg!53329 (select (store (arr!47544 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!47544 a!2862) index!646) bdg!53329) (= (select (arr!47544 a!2862) index!646) (select (arr!47544 a!2862) j!93))) (= (select (arr!47544 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!53329 #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun res!987737 () Bool)

(assert (=> start!125156 (=> (not res!987737) (not e!819856))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125156 (= res!987737 (validMask!0 mask!2687))))

(assert (=> start!125156 e!819856))

(assert (=> start!125156 true))

(declare-fun array_inv!36489 (array!98521) Bool)

(assert (=> start!125156 (array_inv!36489 a!2862)))

(declare-fun b!1457335 () Bool)

(declare-fun res!987739 () Bool)

(assert (=> b!1457335 (=> (not res!987739) (not e!819856))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1457335 (= res!987739 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48095 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48095 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48095 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1457336 () Bool)

(assert (=> b!1457336 (= e!819858 e!819857)))

(declare-fun res!987751 () Bool)

(assert (=> b!1457336 (=> res!987751 e!819857)))

(assert (=> b!1457336 (= res!987751 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!638610 #b00000000000000000000000000000000) (bvsge lt!638610 (size!48095 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1457336 (= lt!638610 (nextIndex!0 index!646 x!665 mask!2687))))

(assert (=> b!1457336 (= lt!638609 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!638611 lt!638608 mask!2687))))

(assert (=> b!1457336 (= lt!638609 (seekEntryOrOpen!0 lt!638611 lt!638608 mask!2687))))

(declare-fun b!1457337 () Bool)

(declare-fun res!987746 () Bool)

(assert (=> b!1457337 (=> (not res!987746) (not e!819859))))

(assert (=> b!1457337 (= res!987746 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1457338 () Bool)

(declare-fun res!987747 () Bool)

(assert (=> b!1457338 (=> (not res!987747) (not e!819856))))

(assert (=> b!1457338 (= res!987747 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1457339 () Bool)

(declare-fun e!819862 () Bool)

(assert (=> b!1457339 (= e!819856 e!819862)))

(declare-fun res!987748 () Bool)

(assert (=> b!1457339 (=> (not res!987748) (not e!819862))))

(assert (=> b!1457339 (= res!987748 (= (select (store (arr!47544 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1457339 (= lt!638608 (array!98522 (store (arr!47544 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48095 a!2862)))))

(declare-fun b!1457340 () Bool)

(declare-fun res!987742 () Bool)

(assert (=> b!1457340 (=> (not res!987742) (not e!819856))))

(assert (=> b!1457340 (= res!987742 (validKeyInArray!0 (select (arr!47544 a!2862) i!1006)))))

(declare-fun b!1457341 () Bool)

(assert (=> b!1457341 (= e!819862 e!819855)))

(declare-fun res!987752 () Bool)

(assert (=> b!1457341 (=> (not res!987752) (not e!819855))))

(assert (=> b!1457341 (= res!987752 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47544 a!2862) j!93) mask!2687) (select (arr!47544 a!2862) j!93) a!2862 mask!2687) lt!638604))))

(assert (=> b!1457341 (= lt!638604 (Intermediate!11819 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(assert (= (and start!125156 res!987737) b!1457326))

(assert (= (and b!1457326 res!987736) b!1457340))

(assert (= (and b!1457340 res!987742) b!1457320))

(assert (= (and b!1457320 res!987738) b!1457338))

(assert (= (and b!1457338 res!987747) b!1457321))

(assert (= (and b!1457321 res!987740) b!1457335))

(assert (= (and b!1457335 res!987739) b!1457339))

(assert (= (and b!1457339 res!987748) b!1457341))

(assert (= (and b!1457341 res!987752) b!1457330))

(assert (= (and b!1457330 res!987753) b!1457328))

(assert (= (and b!1457328 res!987741) b!1457331))

(assert (= (and b!1457331 c!134306) b!1457333))

(assert (= (and b!1457331 (not c!134306)) b!1457324))

(assert (= (and b!1457331 res!987750) b!1457337))

(assert (= (and b!1457337 res!987746) b!1457327))

(assert (= (and b!1457327 res!987745) b!1457329))

(assert (= (and b!1457329 res!987744) b!1457334))

(assert (= (and b!1457327 (not res!987749)) b!1457336))

(assert (= (and b!1457336 (not res!987751)) b!1457323))

(assert (= (and b!1457323 (not res!987743)) b!1457332))

(assert (= (and b!1457332 c!134305) b!1457325))

(assert (= (and b!1457332 (not c!134305)) b!1457322))

(declare-fun m!1345361 () Bool)

(assert (=> b!1457333 m!1345361))

(declare-fun m!1345363 () Bool)

(assert (=> b!1457327 m!1345363))

(declare-fun m!1345365 () Bool)

(assert (=> b!1457327 m!1345365))

(declare-fun m!1345367 () Bool)

(assert (=> b!1457327 m!1345367))

(declare-fun m!1345369 () Bool)

(assert (=> b!1457327 m!1345369))

(declare-fun m!1345371 () Bool)

(assert (=> b!1457327 m!1345371))

(declare-fun m!1345373 () Bool)

(assert (=> b!1457327 m!1345373))

(assert (=> b!1457330 m!1345373))

(assert (=> b!1457330 m!1345373))

(declare-fun m!1345375 () Bool)

(assert (=> b!1457330 m!1345375))

(assert (=> b!1457329 m!1345373))

(assert (=> b!1457329 m!1345373))

(declare-fun m!1345377 () Bool)

(assert (=> b!1457329 m!1345377))

(declare-fun m!1345379 () Bool)

(assert (=> b!1457338 m!1345379))

(declare-fun m!1345381 () Bool)

(assert (=> b!1457340 m!1345381))

(assert (=> b!1457340 m!1345381))

(declare-fun m!1345383 () Bool)

(assert (=> b!1457340 m!1345383))

(declare-fun m!1345385 () Bool)

(assert (=> b!1457336 m!1345385))

(declare-fun m!1345387 () Bool)

(assert (=> b!1457336 m!1345387))

(declare-fun m!1345389 () Bool)

(assert (=> b!1457336 m!1345389))

(assert (=> b!1457320 m!1345373))

(assert (=> b!1457320 m!1345373))

(declare-fun m!1345391 () Bool)

(assert (=> b!1457320 m!1345391))

(declare-fun m!1345393 () Bool)

(assert (=> b!1457328 m!1345393))

(assert (=> b!1457328 m!1345393))

(declare-fun m!1345395 () Bool)

(assert (=> b!1457328 m!1345395))

(assert (=> b!1457328 m!1345365))

(declare-fun m!1345397 () Bool)

(assert (=> b!1457328 m!1345397))

(declare-fun m!1345399 () Bool)

(assert (=> b!1457322 m!1345399))

(assert (=> b!1457324 m!1345387))

(assert (=> b!1457324 m!1345389))

(assert (=> b!1457339 m!1345365))

(declare-fun m!1345401 () Bool)

(assert (=> b!1457339 m!1345401))

(declare-fun m!1345403 () Bool)

(assert (=> b!1457321 m!1345403))

(assert (=> b!1457341 m!1345373))

(assert (=> b!1457341 m!1345373))

(declare-fun m!1345405 () Bool)

(assert (=> b!1457341 m!1345405))

(assert (=> b!1457341 m!1345405))

(assert (=> b!1457341 m!1345373))

(declare-fun m!1345407 () Bool)

(assert (=> b!1457341 m!1345407))

(assert (=> b!1457334 m!1345365))

(declare-fun m!1345409 () Bool)

(assert (=> b!1457334 m!1345409))

(assert (=> b!1457334 m!1345367))

(assert (=> b!1457334 m!1345369))

(assert (=> b!1457334 m!1345373))

(assert (=> b!1457323 m!1345373))

(assert (=> b!1457323 m!1345373))

(declare-fun m!1345411 () Bool)

(assert (=> b!1457323 m!1345411))

(declare-fun m!1345413 () Bool)

(assert (=> start!125156 m!1345413))

(declare-fun m!1345415 () Bool)

(assert (=> start!125156 m!1345415))

(declare-fun m!1345417 () Bool)

(assert (=> b!1457325 m!1345417))

(push 1)

(assert (not b!1457327))

(assert (not b!1457325))

(assert (not b!1457340))

(assert (not b!1457321))

(assert (not b!1457323))

(assert (not b!1457330))

(assert (not b!1457336))

(assert (not b!1457338))

(assert (not b!1457333))

(assert (not b!1457324))

(assert (not b!1457341))

(assert (not b!1457320))

(assert (not b!1457329))

(assert (not b!1457322))

(assert (not start!125156))

(assert (not b!1457328))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

