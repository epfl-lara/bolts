; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125160 () Bool)

(assert start!125160)

(declare-fun b!1457452 () Bool)

(declare-fun e!819914 () Bool)

(declare-fun e!819917 () Bool)

(assert (=> b!1457452 (= e!819914 e!819917)))

(declare-fun res!987857 () Bool)

(assert (=> b!1457452 (=> (not res!987857) (not e!819917))))

(declare-datatypes ((SeekEntryResult!11821 0))(
  ( (MissingZero!11821 (index!49675 (_ BitVec 32))) (Found!11821 (index!49676 (_ BitVec 32))) (Intermediate!11821 (undefined!12633 Bool) (index!49677 (_ BitVec 32)) (x!131297 (_ BitVec 32))) (Undefined!11821) (MissingVacant!11821 (index!49678 (_ BitVec 32))) )
))
(declare-fun lt!638654 () SeekEntryResult!11821)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((array!98525 0))(
  ( (array!98526 (arr!47546 (Array (_ BitVec 32) (_ BitVec 64))) (size!48097 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98525)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98525 (_ BitVec 32)) SeekEntryResult!11821)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1457452 (= res!987857 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47546 a!2862) j!93) mask!2687) (select (arr!47546 a!2862) j!93) a!2862 mask!2687) lt!638654))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1457452 (= lt!638654 (Intermediate!11821 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1457454 () Bool)

(declare-fun e!819918 () Bool)

(assert (=> b!1457454 (= e!819918 e!819914)))

(declare-fun res!987858 () Bool)

(assert (=> b!1457454 (=> (not res!987858) (not e!819914))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1457454 (= res!987858 (= (select (store (arr!47546 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!638653 () array!98525)

(assert (=> b!1457454 (= lt!638653 (array!98526 (store (arr!47546 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48097 a!2862)))))

(declare-fun b!1457455 () Bool)

(declare-fun res!987849 () Bool)

(declare-fun e!819923 () Bool)

(assert (=> b!1457455 (=> (not res!987849) (not e!819923))))

(declare-fun e!819922 () Bool)

(assert (=> b!1457455 (= res!987849 e!819922)))

(declare-fun c!134318 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1457455 (= c!134318 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1457456 () Bool)

(declare-fun res!987860 () Bool)

(assert (=> b!1457456 (=> (not res!987860) (not e!819918))))

(declare-datatypes ((List!34227 0))(
  ( (Nil!34224) (Cons!34223 (h!35573 (_ BitVec 64)) (t!48928 List!34227)) )
))
(declare-fun arrayNoDuplicates!0 (array!98525 (_ BitVec 32) List!34227) Bool)

(assert (=> b!1457456 (= res!987860 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34224))))

(declare-fun b!1457457 () Bool)

(declare-fun res!987851 () Bool)

(assert (=> b!1457457 (=> (not res!987851) (not e!819918))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1457457 (= res!987851 (validKeyInArray!0 (select (arr!47546 a!2862) i!1006)))))

(declare-fun b!1457458 () Bool)

(declare-fun res!987854 () Bool)

(declare-fun e!819921 () Bool)

(assert (=> b!1457458 (=> (not res!987854) (not e!819921))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98525 (_ BitVec 32)) SeekEntryResult!11821)

(assert (=> b!1457458 (= res!987854 (= (seekEntryOrOpen!0 (select (arr!47546 a!2862) j!93) a!2862 mask!2687) (Found!11821 j!93)))))

(declare-fun b!1457459 () Bool)

(declare-fun res!987844 () Bool)

(assert (=> b!1457459 (=> (not res!987844) (not e!819918))))

(assert (=> b!1457459 (= res!987844 (and (= (size!48097 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48097 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48097 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1457460 () Bool)

(declare-fun res!987846 () Bool)

(assert (=> b!1457460 (=> (not res!987846) (not e!819917))))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1457460 (= res!987846 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47546 a!2862) j!93) a!2862 mask!2687) lt!638654))))

(declare-fun b!1457461 () Bool)

(declare-fun res!987861 () Bool)

(declare-fun e!819919 () Bool)

(assert (=> b!1457461 (=> res!987861 e!819919)))

(declare-fun lt!638652 () (_ BitVec 32))

(assert (=> b!1457461 (= res!987861 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638652 (select (arr!47546 a!2862) j!93) a!2862 mask!2687) lt!638654)))))

(declare-fun b!1457462 () Bool)

(declare-fun res!987845 () Bool)

(assert (=> b!1457462 (=> (not res!987845) (not e!819923))))

(assert (=> b!1457462 (= res!987845 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1457463 () Bool)

(declare-fun e!819915 () Bool)

(assert (=> b!1457463 (= e!819923 (not e!819915))))

(declare-fun res!987855 () Bool)

(assert (=> b!1457463 (=> res!987855 e!819915)))

(assert (=> b!1457463 (= res!987855 (or (and (= (select (arr!47546 a!2862) index!646) (select (store (arr!47546 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47546 a!2862) index!646) (select (arr!47546 a!2862) j!93))) (= (select (arr!47546 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1457463 e!819921))

(declare-fun res!987853 () Bool)

(assert (=> b!1457463 (=> (not res!987853) (not e!819921))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98525 (_ BitVec 32)) Bool)

(assert (=> b!1457463 (= res!987853 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49086 0))(
  ( (Unit!49087) )
))
(declare-fun lt!638656 () Unit!49086)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98525 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49086)

(assert (=> b!1457463 (= lt!638656 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1457464 () Bool)

(assert (=> b!1457464 (= e!819915 e!819919)))

(declare-fun res!987850 () Bool)

(assert (=> b!1457464 (=> res!987850 e!819919)))

(assert (=> b!1457464 (= res!987850 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!638652 #b00000000000000000000000000000000) (bvsge lt!638652 (size!48097 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1457464 (= lt!638652 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun lt!638658 () SeekEntryResult!11821)

(declare-fun lt!638657 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98525 (_ BitVec 32)) SeekEntryResult!11821)

(assert (=> b!1457464 (= lt!638658 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!638657 lt!638653 mask!2687))))

(assert (=> b!1457464 (= lt!638658 (seekEntryOrOpen!0 lt!638657 lt!638653 mask!2687))))

(declare-fun b!1457465 () Bool)

(declare-fun res!987852 () Bool)

(assert (=> b!1457465 (=> (not res!987852) (not e!819918))))

(assert (=> b!1457465 (= res!987852 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48097 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48097 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48097 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1457453 () Bool)

(assert (=> b!1457453 (= e!819917 e!819923)))

(declare-fun res!987856 () Bool)

(assert (=> b!1457453 (=> (not res!987856) (not e!819923))))

(declare-fun lt!638655 () SeekEntryResult!11821)

(assert (=> b!1457453 (= res!987856 (= lt!638655 (Intermediate!11821 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1457453 (= lt!638655 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!638657 mask!2687) lt!638657 lt!638653 mask!2687))))

(assert (=> b!1457453 (= lt!638657 (select (store (arr!47546 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun res!987859 () Bool)

(assert (=> start!125160 (=> (not res!987859) (not e!819918))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125160 (= res!987859 (validMask!0 mask!2687))))

(assert (=> start!125160 e!819918))

(assert (=> start!125160 true))

(declare-fun array_inv!36491 (array!98525) Bool)

(assert (=> start!125160 (array_inv!36491 a!2862)))

(declare-fun b!1457466 () Bool)

(assert (=> b!1457466 (= e!819919 true)))

(declare-fun lt!638659 () Bool)

(declare-fun e!819916 () Bool)

(assert (=> b!1457466 (= lt!638659 e!819916)))

(declare-fun c!134317 () Bool)

(assert (=> b!1457466 (= c!134317 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1457467 () Bool)

(assert (=> b!1457467 (= e!819916 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638652 intermediateAfterIndex!19 lt!638657 lt!638653 mask!2687) lt!638658)))))

(declare-fun b!1457468 () Bool)

(assert (=> b!1457468 (= e!819922 (= lt!638655 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!638657 lt!638653 mask!2687)))))

(declare-fun b!1457469 () Bool)

(assert (=> b!1457469 (= e!819916 (not (= lt!638655 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638652 lt!638657 lt!638653 mask!2687))))))

(declare-fun b!1457470 () Bool)

(assert (=> b!1457470 (= e!819921 (and (or (= (select (arr!47546 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47546 a!2862) intermediateBeforeIndex!19) (select (arr!47546 a!2862) j!93))) (let ((bdg!53344 (select (store (arr!47546 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!47546 a!2862) index!646) bdg!53344) (= (select (arr!47546 a!2862) index!646) (select (arr!47546 a!2862) j!93))) (= (select (arr!47546 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!53344 #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!1457471 () Bool)

(declare-fun res!987847 () Bool)

(assert (=> b!1457471 (=> (not res!987847) (not e!819918))))

(assert (=> b!1457471 (= res!987847 (validKeyInArray!0 (select (arr!47546 a!2862) j!93)))))

(declare-fun b!1457472 () Bool)

(assert (=> b!1457472 (= e!819922 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!638657 lt!638653 mask!2687) (seekEntryOrOpen!0 lt!638657 lt!638653 mask!2687)))))

(declare-fun b!1457473 () Bool)

(declare-fun res!987848 () Bool)

(assert (=> b!1457473 (=> (not res!987848) (not e!819918))))

(assert (=> b!1457473 (= res!987848 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(assert (= (and start!125160 res!987859) b!1457459))

(assert (= (and b!1457459 res!987844) b!1457457))

(assert (= (and b!1457457 res!987851) b!1457471))

(assert (= (and b!1457471 res!987847) b!1457473))

(assert (= (and b!1457473 res!987848) b!1457456))

(assert (= (and b!1457456 res!987860) b!1457465))

(assert (= (and b!1457465 res!987852) b!1457454))

(assert (= (and b!1457454 res!987858) b!1457452))

(assert (= (and b!1457452 res!987857) b!1457460))

(assert (= (and b!1457460 res!987846) b!1457453))

(assert (= (and b!1457453 res!987856) b!1457455))

(assert (= (and b!1457455 c!134318) b!1457468))

(assert (= (and b!1457455 (not c!134318)) b!1457472))

(assert (= (and b!1457455 res!987849) b!1457462))

(assert (= (and b!1457462 res!987845) b!1457463))

(assert (= (and b!1457463 res!987853) b!1457458))

(assert (= (and b!1457458 res!987854) b!1457470))

(assert (= (and b!1457463 (not res!987855)) b!1457464))

(assert (= (and b!1457464 (not res!987850)) b!1457461))

(assert (= (and b!1457461 (not res!987861)) b!1457466))

(assert (= (and b!1457466 c!134317) b!1457469))

(assert (= (and b!1457466 (not c!134317)) b!1457467))

(declare-fun m!1345477 () Bool)

(assert (=> b!1457470 m!1345477))

(declare-fun m!1345479 () Bool)

(assert (=> b!1457470 m!1345479))

(declare-fun m!1345481 () Bool)

(assert (=> b!1457470 m!1345481))

(declare-fun m!1345483 () Bool)

(assert (=> b!1457470 m!1345483))

(declare-fun m!1345485 () Bool)

(assert (=> b!1457470 m!1345485))

(declare-fun m!1345487 () Bool)

(assert (=> b!1457467 m!1345487))

(declare-fun m!1345489 () Bool)

(assert (=> b!1457473 m!1345489))

(declare-fun m!1345491 () Bool)

(assert (=> b!1457469 m!1345491))

(declare-fun m!1345493 () Bool)

(assert (=> start!125160 m!1345493))

(declare-fun m!1345495 () Bool)

(assert (=> start!125160 m!1345495))

(assert (=> b!1457452 m!1345485))

(assert (=> b!1457452 m!1345485))

(declare-fun m!1345497 () Bool)

(assert (=> b!1457452 m!1345497))

(assert (=> b!1457452 m!1345497))

(assert (=> b!1457452 m!1345485))

(declare-fun m!1345499 () Bool)

(assert (=> b!1457452 m!1345499))

(assert (=> b!1457458 m!1345485))

(assert (=> b!1457458 m!1345485))

(declare-fun m!1345501 () Bool)

(assert (=> b!1457458 m!1345501))

(assert (=> b!1457471 m!1345485))

(assert (=> b!1457471 m!1345485))

(declare-fun m!1345503 () Bool)

(assert (=> b!1457471 m!1345503))

(declare-fun m!1345505 () Bool)

(assert (=> b!1457464 m!1345505))

(declare-fun m!1345507 () Bool)

(assert (=> b!1457464 m!1345507))

(declare-fun m!1345509 () Bool)

(assert (=> b!1457464 m!1345509))

(assert (=> b!1457461 m!1345485))

(assert (=> b!1457461 m!1345485))

(declare-fun m!1345511 () Bool)

(assert (=> b!1457461 m!1345511))

(declare-fun m!1345513 () Bool)

(assert (=> b!1457457 m!1345513))

(assert (=> b!1457457 m!1345513))

(declare-fun m!1345515 () Bool)

(assert (=> b!1457457 m!1345515))

(declare-fun m!1345517 () Bool)

(assert (=> b!1457468 m!1345517))

(assert (=> b!1457472 m!1345507))

(assert (=> b!1457472 m!1345509))

(assert (=> b!1457460 m!1345485))

(assert (=> b!1457460 m!1345485))

(declare-fun m!1345519 () Bool)

(assert (=> b!1457460 m!1345519))

(declare-fun m!1345521 () Bool)

(assert (=> b!1457453 m!1345521))

(assert (=> b!1457453 m!1345521))

(declare-fun m!1345523 () Bool)

(assert (=> b!1457453 m!1345523))

(assert (=> b!1457453 m!1345477))

(declare-fun m!1345525 () Bool)

(assert (=> b!1457453 m!1345525))

(declare-fun m!1345527 () Bool)

(assert (=> b!1457456 m!1345527))

(declare-fun m!1345529 () Bool)

(assert (=> b!1457463 m!1345529))

(assert (=> b!1457463 m!1345477))

(assert (=> b!1457463 m!1345481))

(assert (=> b!1457463 m!1345483))

(declare-fun m!1345531 () Bool)

(assert (=> b!1457463 m!1345531))

(assert (=> b!1457463 m!1345485))

(assert (=> b!1457454 m!1345477))

(declare-fun m!1345533 () Bool)

(assert (=> b!1457454 m!1345533))

(check-sat (not b!1457473) (not b!1457467) (not b!1457452) (not b!1457456) (not b!1457463) (not b!1457453) (not b!1457458) (not start!125160) (not b!1457461) (not b!1457468) (not b!1457457) (not b!1457471) (not b!1457472) (not b!1457460) (not b!1457464) (not b!1457469))
(check-sat)
