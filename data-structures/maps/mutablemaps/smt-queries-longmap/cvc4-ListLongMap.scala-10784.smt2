; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126248 () Bool)

(assert start!126248)

(declare-fun b!1478456 () Bool)

(declare-fun res!1004568 () Bool)

(declare-fun e!829383 () Bool)

(assert (=> b!1478456 (=> (not res!1004568) (not e!829383))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!99271 0))(
  ( (array!99272 (arr!47910 (Array (_ BitVec 32) (_ BitVec 64))) (size!48461 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99271)

(assert (=> b!1478456 (= res!1004568 (and (= (size!48461 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48461 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48461 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1478457 () Bool)

(declare-fun e!829380 () Bool)

(assert (=> b!1478457 (= e!829380 (not true))))

(declare-fun e!829377 () Bool)

(assert (=> b!1478457 e!829377))

(declare-fun res!1004582 () Bool)

(assert (=> b!1478457 (=> (not res!1004582) (not e!829377))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12173 0))(
  ( (MissingZero!12173 (index!51083 (_ BitVec 32))) (Found!12173 (index!51084 (_ BitVec 32))) (Intermediate!12173 (undefined!12985 Bool) (index!51085 (_ BitVec 32)) (x!132671 (_ BitVec 32))) (Undefined!12173) (MissingVacant!12173 (index!51086 (_ BitVec 32))) )
))
(declare-fun lt!645658 () SeekEntryResult!12173)

(assert (=> b!1478457 (= res!1004582 (and (= lt!645658 (Found!12173 j!93)) (or (= (select (arr!47910 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47910 a!2862) intermediateBeforeIndex!19) (select (arr!47910 a!2862) j!93)))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99271 (_ BitVec 32)) SeekEntryResult!12173)

(assert (=> b!1478457 (= lt!645658 (seekEntryOrOpen!0 (select (arr!47910 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99271 (_ BitVec 32)) Bool)

(assert (=> b!1478457 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!49634 0))(
  ( (Unit!49635) )
))
(declare-fun lt!645653 () Unit!49634)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99271 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49634)

(assert (=> b!1478457 (= lt!645653 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1478458 () Bool)

(declare-fun res!1004573 () Bool)

(assert (=> b!1478458 (=> (not res!1004573) (not e!829380))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1478458 (= res!1004573 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun e!829382 () Bool)

(declare-fun b!1478459 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1478459 (= e!829382 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1478460 () Bool)

(declare-fun e!829378 () Bool)

(declare-fun e!829379 () Bool)

(assert (=> b!1478460 (= e!829378 e!829379)))

(declare-fun res!1004571 () Bool)

(assert (=> b!1478460 (=> (not res!1004571) (not e!829379))))

(declare-fun lt!645657 () SeekEntryResult!12173)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99271 (_ BitVec 32)) SeekEntryResult!12173)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1478460 (= res!1004571 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47910 a!2862) j!93) mask!2687) (select (arr!47910 a!2862) j!93) a!2862 mask!2687) lt!645657))))

(assert (=> b!1478460 (= lt!645657 (Intermediate!12173 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1478461 () Bool)

(declare-fun res!1004580 () Bool)

(assert (=> b!1478461 (=> (not res!1004580) (not e!829383))))

(assert (=> b!1478461 (= res!1004580 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun res!1004575 () Bool)

(assert (=> start!126248 (=> (not res!1004575) (not e!829383))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126248 (= res!1004575 (validMask!0 mask!2687))))

(assert (=> start!126248 e!829383))

(assert (=> start!126248 true))

(declare-fun array_inv!36855 (array!99271) Bool)

(assert (=> start!126248 (array_inv!36855 a!2862)))

(declare-fun lt!645656 () (_ BitVec 64))

(declare-fun b!1478462 () Bool)

(declare-fun e!829381 () Bool)

(declare-fun lt!645655 () array!99271)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99271 (_ BitVec 32)) SeekEntryResult!12173)

(assert (=> b!1478462 (= e!829381 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!645656 lt!645655 mask!2687) (seekEntryOrOpen!0 lt!645656 lt!645655 mask!2687)))))

(declare-fun b!1478463 () Bool)

(declare-fun res!1004583 () Bool)

(assert (=> b!1478463 (=> (not res!1004583) (not e!829380))))

(assert (=> b!1478463 (= res!1004583 e!829381)))

(declare-fun c!136466 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1478463 (= c!136466 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1478464 () Bool)

(declare-fun e!829385 () Bool)

(assert (=> b!1478464 (= e!829377 e!829385)))

(declare-fun res!1004574 () Bool)

(assert (=> b!1478464 (=> res!1004574 e!829385)))

(assert (=> b!1478464 (= res!1004574 (or (and (= (select (arr!47910 a!2862) index!646) (select (store (arr!47910 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47910 a!2862) index!646) (select (arr!47910 a!2862) j!93))) (not (= (select (arr!47910 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1478465 () Bool)

(declare-fun res!1004569 () Bool)

(assert (=> b!1478465 (=> (not res!1004569) (not e!829383))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1478465 (= res!1004569 (validKeyInArray!0 (select (arr!47910 a!2862) j!93)))))

(declare-fun b!1478466 () Bool)

(declare-fun res!1004578 () Bool)

(assert (=> b!1478466 (=> (not res!1004578) (not e!829383))))

(assert (=> b!1478466 (= res!1004578 (validKeyInArray!0 (select (arr!47910 a!2862) i!1006)))))

(declare-fun b!1478467 () Bool)

(assert (=> b!1478467 (= e!829379 e!829380)))

(declare-fun res!1004581 () Bool)

(assert (=> b!1478467 (=> (not res!1004581) (not e!829380))))

(declare-fun lt!645654 () SeekEntryResult!12173)

(assert (=> b!1478467 (= res!1004581 (= lt!645654 (Intermediate!12173 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1478467 (= lt!645654 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!645656 mask!2687) lt!645656 lt!645655 mask!2687))))

(assert (=> b!1478467 (= lt!645656 (select (store (arr!47910 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1478468 () Bool)

(declare-fun res!1004579 () Bool)

(assert (=> b!1478468 (=> (not res!1004579) (not e!829383))))

(declare-datatypes ((List!34591 0))(
  ( (Nil!34588) (Cons!34587 (h!35955 (_ BitVec 64)) (t!49292 List!34591)) )
))
(declare-fun arrayNoDuplicates!0 (array!99271 (_ BitVec 32) List!34591) Bool)

(assert (=> b!1478468 (= res!1004579 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34588))))

(declare-fun b!1478469 () Bool)

(assert (=> b!1478469 (= e!829381 (= lt!645654 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!645656 lt!645655 mask!2687)))))

(declare-fun b!1478470 () Bool)

(declare-fun res!1004576 () Bool)

(assert (=> b!1478470 (=> (not res!1004576) (not e!829383))))

(assert (=> b!1478470 (= res!1004576 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48461 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48461 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48461 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1478471 () Bool)

(declare-fun res!1004570 () Bool)

(assert (=> b!1478471 (=> (not res!1004570) (not e!829379))))

(assert (=> b!1478471 (= res!1004570 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47910 a!2862) j!93) a!2862 mask!2687) lt!645657))))

(declare-fun b!1478472 () Bool)

(assert (=> b!1478472 (= e!829385 e!829382)))

(declare-fun res!1004577 () Bool)

(assert (=> b!1478472 (=> (not res!1004577) (not e!829382))))

(assert (=> b!1478472 (= res!1004577 (= lt!645658 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47910 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1478473 () Bool)

(assert (=> b!1478473 (= e!829383 e!829378)))

(declare-fun res!1004572 () Bool)

(assert (=> b!1478473 (=> (not res!1004572) (not e!829378))))

(assert (=> b!1478473 (= res!1004572 (= (select (store (arr!47910 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1478473 (= lt!645655 (array!99272 (store (arr!47910 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48461 a!2862)))))

(assert (= (and start!126248 res!1004575) b!1478456))

(assert (= (and b!1478456 res!1004568) b!1478466))

(assert (= (and b!1478466 res!1004578) b!1478465))

(assert (= (and b!1478465 res!1004569) b!1478461))

(assert (= (and b!1478461 res!1004580) b!1478468))

(assert (= (and b!1478468 res!1004579) b!1478470))

(assert (= (and b!1478470 res!1004576) b!1478473))

(assert (= (and b!1478473 res!1004572) b!1478460))

(assert (= (and b!1478460 res!1004571) b!1478471))

(assert (= (and b!1478471 res!1004570) b!1478467))

(assert (= (and b!1478467 res!1004581) b!1478463))

(assert (= (and b!1478463 c!136466) b!1478469))

(assert (= (and b!1478463 (not c!136466)) b!1478462))

(assert (= (and b!1478463 res!1004583) b!1478458))

(assert (= (and b!1478458 res!1004573) b!1478457))

(assert (= (and b!1478457 res!1004582) b!1478464))

(assert (= (and b!1478464 (not res!1004574)) b!1478472))

(assert (= (and b!1478472 res!1004577) b!1478459))

(declare-fun m!1364423 () Bool)

(assert (=> b!1478464 m!1364423))

(declare-fun m!1364425 () Bool)

(assert (=> b!1478464 m!1364425))

(declare-fun m!1364427 () Bool)

(assert (=> b!1478464 m!1364427))

(declare-fun m!1364429 () Bool)

(assert (=> b!1478464 m!1364429))

(assert (=> b!1478465 m!1364429))

(assert (=> b!1478465 m!1364429))

(declare-fun m!1364431 () Bool)

(assert (=> b!1478465 m!1364431))

(declare-fun m!1364433 () Bool)

(assert (=> b!1478467 m!1364433))

(assert (=> b!1478467 m!1364433))

(declare-fun m!1364435 () Bool)

(assert (=> b!1478467 m!1364435))

(assert (=> b!1478467 m!1364425))

(declare-fun m!1364437 () Bool)

(assert (=> b!1478467 m!1364437))

(assert (=> b!1478472 m!1364429))

(assert (=> b!1478472 m!1364429))

(declare-fun m!1364439 () Bool)

(assert (=> b!1478472 m!1364439))

(declare-fun m!1364441 () Bool)

(assert (=> b!1478468 m!1364441))

(declare-fun m!1364443 () Bool)

(assert (=> b!1478462 m!1364443))

(declare-fun m!1364445 () Bool)

(assert (=> b!1478462 m!1364445))

(declare-fun m!1364447 () Bool)

(assert (=> b!1478457 m!1364447))

(declare-fun m!1364449 () Bool)

(assert (=> b!1478457 m!1364449))

(assert (=> b!1478457 m!1364429))

(declare-fun m!1364451 () Bool)

(assert (=> b!1478457 m!1364451))

(declare-fun m!1364453 () Bool)

(assert (=> b!1478457 m!1364453))

(assert (=> b!1478457 m!1364429))

(declare-fun m!1364455 () Bool)

(assert (=> b!1478461 m!1364455))

(declare-fun m!1364457 () Bool)

(assert (=> start!126248 m!1364457))

(declare-fun m!1364459 () Bool)

(assert (=> start!126248 m!1364459))

(assert (=> b!1478460 m!1364429))

(assert (=> b!1478460 m!1364429))

(declare-fun m!1364461 () Bool)

(assert (=> b!1478460 m!1364461))

(assert (=> b!1478460 m!1364461))

(assert (=> b!1478460 m!1364429))

(declare-fun m!1364463 () Bool)

(assert (=> b!1478460 m!1364463))

(assert (=> b!1478473 m!1364425))

(declare-fun m!1364465 () Bool)

(assert (=> b!1478473 m!1364465))

(declare-fun m!1364467 () Bool)

(assert (=> b!1478469 m!1364467))

(assert (=> b!1478471 m!1364429))

(assert (=> b!1478471 m!1364429))

(declare-fun m!1364469 () Bool)

(assert (=> b!1478471 m!1364469))

(declare-fun m!1364471 () Bool)

(assert (=> b!1478466 m!1364471))

(assert (=> b!1478466 m!1364471))

(declare-fun m!1364473 () Bool)

(assert (=> b!1478466 m!1364473))

(push 1)

