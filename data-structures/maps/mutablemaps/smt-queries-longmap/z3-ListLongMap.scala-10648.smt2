; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125070 () Bool)

(assert start!125070)

(declare-fun b!1454482 () Bool)

(declare-fun res!985414 () Bool)

(declare-fun e!818571 () Bool)

(assert (=> b!1454482 (=> (not res!985414) (not e!818571))))

(declare-datatypes ((array!98435 0))(
  ( (array!98436 (arr!47501 (Array (_ BitVec 32) (_ BitVec 64))) (size!48052 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98435)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98435 (_ BitVec 32)) Bool)

(assert (=> b!1454482 (= res!985414 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1454483 () Bool)

(declare-fun e!818568 () Bool)

(declare-fun e!818570 () Bool)

(assert (=> b!1454483 (= e!818568 (not e!818570))))

(declare-fun res!985423 () Bool)

(assert (=> b!1454483 (=> res!985423 e!818570)))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1454483 (= res!985423 (or (and (= (select (arr!47501 a!2862) index!646) (select (store (arr!47501 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47501 a!2862) index!646) (select (arr!47501 a!2862) j!93))) (= (select (arr!47501 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(declare-fun e!818565 () Bool)

(assert (=> b!1454483 e!818565))

(declare-fun res!985415 () Bool)

(assert (=> b!1454483 (=> (not res!985415) (not e!818565))))

(assert (=> b!1454483 (= res!985415 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48996 0))(
  ( (Unit!48997) )
))
(declare-fun lt!637574 () Unit!48996)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98435 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48996)

(assert (=> b!1454483 (= lt!637574 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1454484 () Bool)

(declare-fun e!818572 () Bool)

(assert (=> b!1454484 (= e!818572 true)))

(declare-fun lt!637577 () Bool)

(declare-fun e!818567 () Bool)

(assert (=> b!1454484 (= lt!637577 e!818567)))

(declare-fun c!134048 () Bool)

(assert (=> b!1454484 (= c!134048 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1454485 () Bool)

(declare-fun res!985428 () Bool)

(assert (=> b!1454485 (=> (not res!985428) (not e!818565))))

(declare-datatypes ((SeekEntryResult!11776 0))(
  ( (MissingZero!11776 (index!49495 (_ BitVec 32))) (Found!11776 (index!49496 (_ BitVec 32))) (Intermediate!11776 (undefined!12588 Bool) (index!49497 (_ BitVec 32)) (x!131132 (_ BitVec 32))) (Undefined!11776) (MissingVacant!11776 (index!49498 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98435 (_ BitVec 32)) SeekEntryResult!11776)

(assert (=> b!1454485 (= res!985428 (= (seekEntryOrOpen!0 (select (arr!47501 a!2862) j!93) a!2862 mask!2687) (Found!11776 j!93)))))

(declare-fun b!1454486 () Bool)

(declare-fun lt!637579 () SeekEntryResult!11776)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun lt!637575 () array!98435)

(declare-fun lt!637576 () (_ BitVec 32))

(declare-fun lt!637578 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98435 (_ BitVec 32)) SeekEntryResult!11776)

(assert (=> b!1454486 (= e!818567 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!637576 intermediateAfterIndex!19 lt!637578 lt!637575 mask!2687) lt!637579)))))

(declare-fun b!1454487 () Bool)

(declare-fun res!985419 () Bool)

(assert (=> b!1454487 (=> (not res!985419) (not e!818571))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1454487 (= res!985419 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48052 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48052 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48052 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1454488 () Bool)

(declare-fun res!985422 () Bool)

(assert (=> b!1454488 (=> (not res!985422) (not e!818571))))

(declare-datatypes ((List!34182 0))(
  ( (Nil!34179) (Cons!34178 (h!35528 (_ BitVec 64)) (t!48883 List!34182)) )
))
(declare-fun arrayNoDuplicates!0 (array!98435 (_ BitVec 32) List!34182) Bool)

(assert (=> b!1454488 (= res!985422 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34179))))

(declare-fun res!985429 () Bool)

(assert (=> start!125070 (=> (not res!985429) (not e!818571))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125070 (= res!985429 (validMask!0 mask!2687))))

(assert (=> start!125070 e!818571))

(assert (=> start!125070 true))

(declare-fun array_inv!36446 (array!98435) Bool)

(assert (=> start!125070 (array_inv!36446 a!2862)))

(declare-fun b!1454489 () Bool)

(declare-fun e!818566 () Bool)

(declare-fun e!818573 () Bool)

(assert (=> b!1454489 (= e!818566 e!818573)))

(declare-fun res!985418 () Bool)

(assert (=> b!1454489 (=> (not res!985418) (not e!818573))))

(declare-fun lt!637573 () SeekEntryResult!11776)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98435 (_ BitVec 32)) SeekEntryResult!11776)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1454489 (= res!985418 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47501 a!2862) j!93) mask!2687) (select (arr!47501 a!2862) j!93) a!2862 mask!2687) lt!637573))))

(assert (=> b!1454489 (= lt!637573 (Intermediate!11776 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1454490 () Bool)

(assert (=> b!1454490 (= e!818573 e!818568)))

(declare-fun res!985421 () Bool)

(assert (=> b!1454490 (=> (not res!985421) (not e!818568))))

(declare-fun lt!637572 () SeekEntryResult!11776)

(assert (=> b!1454490 (= res!985421 (= lt!637572 (Intermediate!11776 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1454490 (= lt!637572 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!637578 mask!2687) lt!637578 lt!637575 mask!2687))))

(assert (=> b!1454490 (= lt!637578 (select (store (arr!47501 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1454491 () Bool)

(declare-fun res!985425 () Bool)

(assert (=> b!1454491 (=> (not res!985425) (not e!818568))))

(assert (=> b!1454491 (= res!985425 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1454492 () Bool)

(declare-fun e!818569 () Bool)

(assert (=> b!1454492 (= e!818569 (= lt!637572 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!637578 lt!637575 mask!2687)))))

(declare-fun b!1454493 () Bool)

(assert (=> b!1454493 (= e!818571 e!818566)))

(declare-fun res!985431 () Bool)

(assert (=> b!1454493 (=> (not res!985431) (not e!818566))))

(assert (=> b!1454493 (= res!985431 (= (select (store (arr!47501 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1454493 (= lt!637575 (array!98436 (store (arr!47501 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48052 a!2862)))))

(declare-fun b!1454494 () Bool)

(declare-fun res!985417 () Bool)

(assert (=> b!1454494 (=> (not res!985417) (not e!818571))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1454494 (= res!985417 (validKeyInArray!0 (select (arr!47501 a!2862) i!1006)))))

(declare-fun b!1454495 () Bool)

(assert (=> b!1454495 (= e!818570 e!818572)))

(declare-fun res!985426 () Bool)

(assert (=> b!1454495 (=> res!985426 e!818572)))

(assert (=> b!1454495 (= res!985426 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!637576 #b00000000000000000000000000000000) (bvsge lt!637576 (size!48052 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1454495 (= lt!637576 (nextIndex!0 index!646 x!665 mask!2687))))

(assert (=> b!1454495 (= lt!637579 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!637578 lt!637575 mask!2687))))

(assert (=> b!1454495 (= lt!637579 (seekEntryOrOpen!0 lt!637578 lt!637575 mask!2687))))

(declare-fun b!1454496 () Bool)

(assert (=> b!1454496 (= e!818565 (and (or (= (select (arr!47501 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47501 a!2862) intermediateBeforeIndex!19) (select (arr!47501 a!2862) j!93))) (let ((bdg!53074 (select (store (arr!47501 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!47501 a!2862) index!646) bdg!53074) (= (select (arr!47501 a!2862) index!646) (select (arr!47501 a!2862) j!93))) (= (select (arr!47501 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!53074 #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!1454497 () Bool)

(assert (=> b!1454497 (= e!818569 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!637578 lt!637575 mask!2687) (seekEntryOrOpen!0 lt!637578 lt!637575 mask!2687)))))

(declare-fun b!1454498 () Bool)

(declare-fun res!985430 () Bool)

(assert (=> b!1454498 (=> (not res!985430) (not e!818573))))

(assert (=> b!1454498 (= res!985430 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47501 a!2862) j!93) a!2862 mask!2687) lt!637573))))

(declare-fun b!1454499 () Bool)

(declare-fun res!985424 () Bool)

(assert (=> b!1454499 (=> res!985424 e!818572)))

(assert (=> b!1454499 (= res!985424 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!637576 (select (arr!47501 a!2862) j!93) a!2862 mask!2687) lt!637573)))))

(declare-fun b!1454500 () Bool)

(assert (=> b!1454500 (= e!818567 (not (= lt!637572 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!637576 lt!637578 lt!637575 mask!2687))))))

(declare-fun b!1454501 () Bool)

(declare-fun res!985416 () Bool)

(assert (=> b!1454501 (=> (not res!985416) (not e!818571))))

(assert (=> b!1454501 (= res!985416 (and (= (size!48052 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48052 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48052 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1454502 () Bool)

(declare-fun res!985420 () Bool)

(assert (=> b!1454502 (=> (not res!985420) (not e!818571))))

(assert (=> b!1454502 (= res!985420 (validKeyInArray!0 (select (arr!47501 a!2862) j!93)))))

(declare-fun b!1454503 () Bool)

(declare-fun res!985427 () Bool)

(assert (=> b!1454503 (=> (not res!985427) (not e!818568))))

(assert (=> b!1454503 (= res!985427 e!818569)))

(declare-fun c!134047 () Bool)

(assert (=> b!1454503 (= c!134047 (bvsle x!665 intermediateAfterX!19))))

(assert (= (and start!125070 res!985429) b!1454501))

(assert (= (and b!1454501 res!985416) b!1454494))

(assert (= (and b!1454494 res!985417) b!1454502))

(assert (= (and b!1454502 res!985420) b!1454482))

(assert (= (and b!1454482 res!985414) b!1454488))

(assert (= (and b!1454488 res!985422) b!1454487))

(assert (= (and b!1454487 res!985419) b!1454493))

(assert (= (and b!1454493 res!985431) b!1454489))

(assert (= (and b!1454489 res!985418) b!1454498))

(assert (= (and b!1454498 res!985430) b!1454490))

(assert (= (and b!1454490 res!985421) b!1454503))

(assert (= (and b!1454503 c!134047) b!1454492))

(assert (= (and b!1454503 (not c!134047)) b!1454497))

(assert (= (and b!1454503 res!985427) b!1454491))

(assert (= (and b!1454491 res!985425) b!1454483))

(assert (= (and b!1454483 res!985415) b!1454485))

(assert (= (and b!1454485 res!985428) b!1454496))

(assert (= (and b!1454483 (not res!985423)) b!1454495))

(assert (= (and b!1454495 (not res!985426)) b!1454499))

(assert (= (and b!1454499 (not res!985424)) b!1454484))

(assert (= (and b!1454484 c!134048) b!1454500))

(assert (= (and b!1454484 (not c!134048)) b!1454486))

(declare-fun m!1342867 () Bool)

(assert (=> b!1454500 m!1342867))

(declare-fun m!1342869 () Bool)

(assert (=> start!125070 m!1342869))

(declare-fun m!1342871 () Bool)

(assert (=> start!125070 m!1342871))

(declare-fun m!1342873 () Bool)

(assert (=> b!1454490 m!1342873))

(assert (=> b!1454490 m!1342873))

(declare-fun m!1342875 () Bool)

(assert (=> b!1454490 m!1342875))

(declare-fun m!1342877 () Bool)

(assert (=> b!1454490 m!1342877))

(declare-fun m!1342879 () Bool)

(assert (=> b!1454490 m!1342879))

(declare-fun m!1342881 () Bool)

(assert (=> b!1454486 m!1342881))

(assert (=> b!1454496 m!1342877))

(declare-fun m!1342883 () Bool)

(assert (=> b!1454496 m!1342883))

(declare-fun m!1342885 () Bool)

(assert (=> b!1454496 m!1342885))

(declare-fun m!1342887 () Bool)

(assert (=> b!1454496 m!1342887))

(declare-fun m!1342889 () Bool)

(assert (=> b!1454496 m!1342889))

(assert (=> b!1454489 m!1342889))

(assert (=> b!1454489 m!1342889))

(declare-fun m!1342891 () Bool)

(assert (=> b!1454489 m!1342891))

(assert (=> b!1454489 m!1342891))

(assert (=> b!1454489 m!1342889))

(declare-fun m!1342893 () Bool)

(assert (=> b!1454489 m!1342893))

(declare-fun m!1342895 () Bool)

(assert (=> b!1454488 m!1342895))

(declare-fun m!1342897 () Bool)

(assert (=> b!1454495 m!1342897))

(declare-fun m!1342899 () Bool)

(assert (=> b!1454495 m!1342899))

(declare-fun m!1342901 () Bool)

(assert (=> b!1454495 m!1342901))

(assert (=> b!1454499 m!1342889))

(assert (=> b!1454499 m!1342889))

(declare-fun m!1342903 () Bool)

(assert (=> b!1454499 m!1342903))

(declare-fun m!1342905 () Bool)

(assert (=> b!1454494 m!1342905))

(assert (=> b!1454494 m!1342905))

(declare-fun m!1342907 () Bool)

(assert (=> b!1454494 m!1342907))

(assert (=> b!1454485 m!1342889))

(assert (=> b!1454485 m!1342889))

(declare-fun m!1342909 () Bool)

(assert (=> b!1454485 m!1342909))

(assert (=> b!1454498 m!1342889))

(assert (=> b!1454498 m!1342889))

(declare-fun m!1342911 () Bool)

(assert (=> b!1454498 m!1342911))

(declare-fun m!1342913 () Bool)

(assert (=> b!1454483 m!1342913))

(assert (=> b!1454483 m!1342877))

(assert (=> b!1454483 m!1342885))

(assert (=> b!1454483 m!1342887))

(declare-fun m!1342915 () Bool)

(assert (=> b!1454483 m!1342915))

(assert (=> b!1454483 m!1342889))

(assert (=> b!1454493 m!1342877))

(declare-fun m!1342917 () Bool)

(assert (=> b!1454493 m!1342917))

(assert (=> b!1454502 m!1342889))

(assert (=> b!1454502 m!1342889))

(declare-fun m!1342919 () Bool)

(assert (=> b!1454502 m!1342919))

(assert (=> b!1454497 m!1342899))

(assert (=> b!1454497 m!1342901))

(declare-fun m!1342921 () Bool)

(assert (=> b!1454482 m!1342921))

(declare-fun m!1342923 () Bool)

(assert (=> b!1454492 m!1342923))

(check-sat (not b!1454490) (not b!1454495) (not b!1454498) (not b!1454488) (not b!1454483) (not b!1454497) (not b!1454502) (not b!1454486) (not b!1454489) (not b!1454482) (not b!1454494) (not b!1454492) (not start!125070) (not b!1454500) (not b!1454485) (not b!1454499))
(check-sat)
