; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125410 () Bool)

(assert start!125410)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun e!823495 () Bool)

(declare-datatypes ((SeekEntryResult!11946 0))(
  ( (MissingZero!11946 (index!50175 (_ BitVec 32))) (Found!11946 (index!50176 (_ BitVec 32))) (Intermediate!11946 (undefined!12758 Bool) (index!50177 (_ BitVec 32)) (x!131758 (_ BitVec 32))) (Undefined!11946) (MissingVacant!11946 (index!50178 (_ BitVec 32))) )
))
(declare-fun lt!641401 () SeekEntryResult!11946)

(declare-datatypes ((array!98775 0))(
  ( (array!98776 (arr!47671 (Array (_ BitVec 32) (_ BitVec 64))) (size!48222 (_ BitVec 32))) )
))
(declare-fun lt!641400 () array!98775)

(declare-fun b!1465531 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun lt!641404 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98775 (_ BitVec 32)) SeekEntryResult!11946)

(assert (=> b!1465531 (= e!823495 (= lt!641401 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!641404 lt!641400 mask!2687)))))

(declare-fun b!1465532 () Bool)

(declare-fun res!994503 () Bool)

(declare-fun e!823493 () Bool)

(assert (=> b!1465532 (=> (not res!994503) (not e!823493))))

(declare-fun a!2862 () array!98775)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98775 (_ BitVec 32)) SeekEntryResult!11946)

(assert (=> b!1465532 (= res!994503 (= (seekEntryOrOpen!0 (select (arr!47671 a!2862) j!93) a!2862 mask!2687) (Found!11946 j!93)))))

(declare-fun b!1465533 () Bool)

(declare-fun res!994496 () Bool)

(declare-fun e!823499 () Bool)

(assert (=> b!1465533 (=> (not res!994496) (not e!823499))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98775 (_ BitVec 32)) Bool)

(assert (=> b!1465533 (= res!994496 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1465534 () Bool)

(declare-fun res!994501 () Bool)

(assert (=> b!1465534 (=> (not res!994501) (not e!823499))))

(declare-datatypes ((List!34352 0))(
  ( (Nil!34349) (Cons!34348 (h!35698 (_ BitVec 64)) (t!49053 List!34352)) )
))
(declare-fun arrayNoDuplicates!0 (array!98775 (_ BitVec 32) List!34352) Bool)

(assert (=> b!1465534 (= res!994501 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34349))))

(declare-fun b!1465535 () Bool)

(declare-fun res!994499 () Bool)

(declare-fun e!823496 () Bool)

(assert (=> b!1465535 (=> (not res!994499) (not e!823496))))

(assert (=> b!1465535 (= res!994499 e!823495)))

(declare-fun c!135032 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1465535 (= c!135032 (bvsle x!665 intermediateAfterX!19))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun b!1465536 () Bool)

(assert (=> b!1465536 (= e!823493 (or (= (select (arr!47671 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47671 a!2862) intermediateBeforeIndex!19) (select (arr!47671 a!2862) j!93))))))

(declare-fun b!1465538 () Bool)

(declare-fun res!994510 () Bool)

(assert (=> b!1465538 (=> (not res!994510) (not e!823499))))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1465538 (= res!994510 (validKeyInArray!0 (select (arr!47671 a!2862) i!1006)))))

(declare-fun b!1465539 () Bool)

(declare-fun e!823494 () Bool)

(assert (=> b!1465539 (= e!823499 e!823494)))

(declare-fun res!994502 () Bool)

(assert (=> b!1465539 (=> (not res!994502) (not e!823494))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1465539 (= res!994502 (= (select (store (arr!47671 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1465539 (= lt!641400 (array!98776 (store (arr!47671 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48222 a!2862)))))

(declare-fun b!1465540 () Bool)

(declare-fun e!823502 () Bool)

(assert (=> b!1465540 (= e!823502 true)))

(declare-fun lt!641403 () Bool)

(declare-fun e!823497 () Bool)

(assert (=> b!1465540 (= lt!641403 e!823497)))

(declare-fun c!135031 () Bool)

(assert (=> b!1465540 (= c!135031 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1465541 () Bool)

(declare-fun res!994508 () Bool)

(assert (=> b!1465541 (=> (not res!994508) (not e!823499))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1465541 (= res!994508 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48222 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48222 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48222 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1465542 () Bool)

(declare-fun res!994498 () Bool)

(assert (=> b!1465542 (=> (not res!994498) (not e!823499))))

(assert (=> b!1465542 (= res!994498 (and (= (size!48222 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48222 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48222 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1465543 () Bool)

(declare-fun e!823498 () Bool)

(assert (=> b!1465543 (= e!823498 e!823502)))

(declare-fun res!994512 () Bool)

(assert (=> b!1465543 (=> res!994512 e!823502)))

(declare-fun lt!641398 () (_ BitVec 32))

(assert (=> b!1465543 (= res!994512 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!641398 #b00000000000000000000000000000000) (bvsge lt!641398 (size!48222 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1465543 (= lt!641398 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1465544 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98775 (_ BitVec 32)) SeekEntryResult!11946)

(assert (=> b!1465544 (= e!823497 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641398 intermediateAfterIndex!19 lt!641404 lt!641400 mask!2687) (seekEntryOrOpen!0 lt!641404 lt!641400 mask!2687))))))

(declare-fun b!1465545 () Bool)

(declare-fun e!823500 () Bool)

(assert (=> b!1465545 (= e!823494 e!823500)))

(declare-fun res!994506 () Bool)

(assert (=> b!1465545 (=> (not res!994506) (not e!823500))))

(declare-fun lt!641399 () SeekEntryResult!11946)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1465545 (= res!994506 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47671 a!2862) j!93) mask!2687) (select (arr!47671 a!2862) j!93) a!2862 mask!2687) lt!641399))))

(assert (=> b!1465545 (= lt!641399 (Intermediate!11946 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1465546 () Bool)

(declare-fun res!994497 () Bool)

(assert (=> b!1465546 (=> (not res!994497) (not e!823500))))

(assert (=> b!1465546 (= res!994497 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47671 a!2862) j!93) a!2862 mask!2687) lt!641399))))

(declare-fun res!994511 () Bool)

(assert (=> start!125410 (=> (not res!994511) (not e!823499))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125410 (= res!994511 (validMask!0 mask!2687))))

(assert (=> start!125410 e!823499))

(assert (=> start!125410 true))

(declare-fun array_inv!36616 (array!98775) Bool)

(assert (=> start!125410 (array_inv!36616 a!2862)))

(declare-fun b!1465537 () Bool)

(assert (=> b!1465537 (= e!823496 (not e!823498))))

(declare-fun res!994505 () Bool)

(assert (=> b!1465537 (=> res!994505 e!823498)))

(assert (=> b!1465537 (= res!994505 (or (and (= (select (arr!47671 a!2862) index!646) (select (store (arr!47671 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47671 a!2862) index!646) (select (arr!47671 a!2862) j!93))) (= (select (arr!47671 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(assert (=> b!1465537 e!823493))

(declare-fun res!994495 () Bool)

(assert (=> b!1465537 (=> (not res!994495) (not e!823493))))

(assert (=> b!1465537 (= res!994495 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49336 0))(
  ( (Unit!49337) )
))
(declare-fun lt!641402 () Unit!49336)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98775 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49336)

(assert (=> b!1465537 (= lt!641402 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1465547 () Bool)

(assert (=> b!1465547 (= e!823495 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!641404 lt!641400 mask!2687) (seekEntryOrOpen!0 lt!641404 lt!641400 mask!2687)))))

(declare-fun b!1465548 () Bool)

(assert (=> b!1465548 (= e!823497 (not (= lt!641401 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641398 lt!641404 lt!641400 mask!2687))))))

(declare-fun b!1465549 () Bool)

(declare-fun res!994500 () Bool)

(assert (=> b!1465549 (=> (not res!994500) (not e!823499))))

(assert (=> b!1465549 (= res!994500 (validKeyInArray!0 (select (arr!47671 a!2862) j!93)))))

(declare-fun b!1465550 () Bool)

(assert (=> b!1465550 (= e!823500 e!823496)))

(declare-fun res!994507 () Bool)

(assert (=> b!1465550 (=> (not res!994507) (not e!823496))))

(assert (=> b!1465550 (= res!994507 (= lt!641401 (Intermediate!11946 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1465550 (= lt!641401 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!641404 mask!2687) lt!641404 lt!641400 mask!2687))))

(assert (=> b!1465550 (= lt!641404 (select (store (arr!47671 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1465551 () Bool)

(declare-fun res!994509 () Bool)

(assert (=> b!1465551 (=> (not res!994509) (not e!823496))))

(assert (=> b!1465551 (= res!994509 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1465552 () Bool)

(declare-fun res!994504 () Bool)

(assert (=> b!1465552 (=> res!994504 e!823502)))

(assert (=> b!1465552 (= res!994504 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641398 (select (arr!47671 a!2862) j!93) a!2862 mask!2687) lt!641399)))))

(assert (= (and start!125410 res!994511) b!1465542))

(assert (= (and b!1465542 res!994498) b!1465538))

(assert (= (and b!1465538 res!994510) b!1465549))

(assert (= (and b!1465549 res!994500) b!1465533))

(assert (= (and b!1465533 res!994496) b!1465534))

(assert (= (and b!1465534 res!994501) b!1465541))

(assert (= (and b!1465541 res!994508) b!1465539))

(assert (= (and b!1465539 res!994502) b!1465545))

(assert (= (and b!1465545 res!994506) b!1465546))

(assert (= (and b!1465546 res!994497) b!1465550))

(assert (= (and b!1465550 res!994507) b!1465535))

(assert (= (and b!1465535 c!135032) b!1465531))

(assert (= (and b!1465535 (not c!135032)) b!1465547))

(assert (= (and b!1465535 res!994499) b!1465551))

(assert (= (and b!1465551 res!994509) b!1465537))

(assert (= (and b!1465537 res!994495) b!1465532))

(assert (= (and b!1465532 res!994503) b!1465536))

(assert (= (and b!1465537 (not res!994505)) b!1465543))

(assert (= (and b!1465543 (not res!994512)) b!1465552))

(assert (= (and b!1465552 (not res!994504)) b!1465540))

(assert (= (and b!1465540 c!135031) b!1465548))

(assert (= (and b!1465540 (not c!135031)) b!1465544))

(declare-fun m!1352661 () Bool)

(assert (=> b!1465548 m!1352661))

(declare-fun m!1352663 () Bool)

(assert (=> b!1465536 m!1352663))

(declare-fun m!1352665 () Bool)

(assert (=> b!1465536 m!1352665))

(declare-fun m!1352667 () Bool)

(assert (=> b!1465543 m!1352667))

(declare-fun m!1352669 () Bool)

(assert (=> b!1465539 m!1352669))

(declare-fun m!1352671 () Bool)

(assert (=> b!1465539 m!1352671))

(declare-fun m!1352673 () Bool)

(assert (=> b!1465538 m!1352673))

(assert (=> b!1465538 m!1352673))

(declare-fun m!1352675 () Bool)

(assert (=> b!1465538 m!1352675))

(declare-fun m!1352677 () Bool)

(assert (=> b!1465550 m!1352677))

(assert (=> b!1465550 m!1352677))

(declare-fun m!1352679 () Bool)

(assert (=> b!1465550 m!1352679))

(assert (=> b!1465550 m!1352669))

(declare-fun m!1352681 () Bool)

(assert (=> b!1465550 m!1352681))

(assert (=> b!1465552 m!1352665))

(assert (=> b!1465552 m!1352665))

(declare-fun m!1352683 () Bool)

(assert (=> b!1465552 m!1352683))

(declare-fun m!1352685 () Bool)

(assert (=> b!1465531 m!1352685))

(declare-fun m!1352687 () Bool)

(assert (=> b!1465534 m!1352687))

(assert (=> b!1465532 m!1352665))

(assert (=> b!1465532 m!1352665))

(declare-fun m!1352689 () Bool)

(assert (=> b!1465532 m!1352689))

(declare-fun m!1352691 () Bool)

(assert (=> start!125410 m!1352691))

(declare-fun m!1352693 () Bool)

(assert (=> start!125410 m!1352693))

(declare-fun m!1352695 () Bool)

(assert (=> b!1465537 m!1352695))

(assert (=> b!1465537 m!1352669))

(declare-fun m!1352697 () Bool)

(assert (=> b!1465537 m!1352697))

(declare-fun m!1352699 () Bool)

(assert (=> b!1465537 m!1352699))

(declare-fun m!1352701 () Bool)

(assert (=> b!1465537 m!1352701))

(assert (=> b!1465537 m!1352665))

(declare-fun m!1352703 () Bool)

(assert (=> b!1465544 m!1352703))

(declare-fun m!1352705 () Bool)

(assert (=> b!1465544 m!1352705))

(declare-fun m!1352707 () Bool)

(assert (=> b!1465533 m!1352707))

(assert (=> b!1465545 m!1352665))

(assert (=> b!1465545 m!1352665))

(declare-fun m!1352709 () Bool)

(assert (=> b!1465545 m!1352709))

(assert (=> b!1465545 m!1352709))

(assert (=> b!1465545 m!1352665))

(declare-fun m!1352711 () Bool)

(assert (=> b!1465545 m!1352711))

(declare-fun m!1352713 () Bool)

(assert (=> b!1465547 m!1352713))

(assert (=> b!1465547 m!1352705))

(assert (=> b!1465549 m!1352665))

(assert (=> b!1465549 m!1352665))

(declare-fun m!1352715 () Bool)

(assert (=> b!1465549 m!1352715))

(assert (=> b!1465546 m!1352665))

(assert (=> b!1465546 m!1352665))

(declare-fun m!1352717 () Bool)

(assert (=> b!1465546 m!1352717))

(push 1)

