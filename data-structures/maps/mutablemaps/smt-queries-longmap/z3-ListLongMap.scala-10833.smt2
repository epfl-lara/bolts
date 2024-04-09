; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!126888 () Bool)

(assert start!126888)

(declare-fun b!1489444 () Bool)

(declare-fun res!1012986 () Bool)

(declare-fun e!834789 () Bool)

(assert (=> b!1489444 (=> (not res!1012986) (not e!834789))))

(declare-datatypes ((array!99578 0))(
  ( (array!99579 (arr!48056 (Array (_ BitVec 32) (_ BitVec 64))) (size!48607 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99578)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1489444 (= res!1012986 (validKeyInArray!0 (select (arr!48056 a!2862) j!93)))))

(declare-fun b!1489445 () Bool)

(declare-fun res!1012989 () Bool)

(declare-fun e!834786 () Bool)

(assert (=> b!1489445 (=> (not res!1012989) (not e!834786))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1489445 (= res!1012989 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun lt!649534 () (_ BitVec 32))

(declare-fun e!834788 () Bool)

(declare-fun lt!649533 () array!99578)

(declare-fun lt!649532 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!12319 0))(
  ( (MissingZero!12319 (index!51667 (_ BitVec 32))) (Found!12319 (index!51668 (_ BitVec 32))) (Intermediate!12319 (undefined!13131 Bool) (index!51669 (_ BitVec 32)) (x!133266 (_ BitVec 32))) (Undefined!12319) (MissingVacant!12319 (index!51670 (_ BitVec 32))) )
))
(declare-fun lt!649528 () SeekEntryResult!12319)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun b!1489446 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99578 (_ BitVec 32)) SeekEntryResult!12319)

(assert (=> b!1489446 (= e!834788 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!649534 intermediateAfterIndex!19 lt!649532 lt!649533 mask!2687) lt!649528)))))

(declare-fun b!1489447 () Bool)

(declare-fun res!1012982 () Bool)

(declare-fun e!834785 () Bool)

(assert (=> b!1489447 (=> res!1012982 e!834785)))

(assert (=> b!1489447 (= res!1012982 e!834788)))

(declare-fun c!137762 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1489447 (= c!137762 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1489448 () Bool)

(declare-fun res!1012984 () Bool)

(assert (=> b!1489448 (=> (not res!1012984) (not e!834789))))

(declare-datatypes ((List!34737 0))(
  ( (Nil!34734) (Cons!34733 (h!36116 (_ BitVec 64)) (t!49438 List!34737)) )
))
(declare-fun arrayNoDuplicates!0 (array!99578 (_ BitVec 32) List!34737) Bool)

(assert (=> b!1489448 (= res!1012984 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34734))))

(declare-fun res!1012993 () Bool)

(assert (=> start!126888 (=> (not res!1012993) (not e!834789))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126888 (= res!1012993 (validMask!0 mask!2687))))

(assert (=> start!126888 e!834789))

(assert (=> start!126888 true))

(declare-fun array_inv!37001 (array!99578) Bool)

(assert (=> start!126888 (array_inv!37001 a!2862)))

(declare-fun b!1489449 () Bool)

(declare-fun res!1012985 () Bool)

(assert (=> b!1489449 (=> res!1012985 e!834785)))

(assert (=> b!1489449 (= res!1012985 (bvsgt (bvadd #b00000000000000000000000000000001 x!665) intermediateBeforeX!19))))

(declare-fun b!1489450 () Bool)

(declare-fun e!834790 () Bool)

(assert (=> b!1489450 (= e!834789 e!834790)))

(declare-fun res!1012995 () Bool)

(assert (=> b!1489450 (=> (not res!1012995) (not e!834790))))

(assert (=> b!1489450 (= res!1012995 (= (select (store (arr!48056 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1489450 (= lt!649533 (array!99579 (store (arr!48056 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48607 a!2862)))))

(declare-fun b!1489451 () Bool)

(declare-fun e!834791 () Bool)

(assert (=> b!1489451 (= e!834791 e!834786)))

(declare-fun res!1012996 () Bool)

(assert (=> b!1489451 (=> (not res!1012996) (not e!834786))))

(declare-fun lt!649531 () SeekEntryResult!12319)

(assert (=> b!1489451 (= res!1012996 (= lt!649531 (Intermediate!12319 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99578 (_ BitVec 32)) SeekEntryResult!12319)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1489451 (= lt!649531 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!649532 mask!2687) lt!649532 lt!649533 mask!2687))))

(assert (=> b!1489451 (= lt!649532 (select (store (arr!48056 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1489452 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun e!834787 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99578 (_ BitVec 32)) SeekEntryResult!12319)

(assert (=> b!1489452 (= e!834787 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!649532 lt!649533 mask!2687) (seekEntryOrOpen!0 lt!649532 lt!649533 mask!2687)))))

(declare-fun b!1489453 () Bool)

(assert (=> b!1489453 (= e!834785 true)))

(declare-fun lt!649527 () SeekEntryResult!12319)

(assert (=> b!1489453 (= lt!649527 lt!649528)))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-datatypes ((Unit!49926 0))(
  ( (Unit!49927) )
))
(declare-fun lt!649530 () Unit!49926)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 (array!99578 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49926)

(assert (=> b!1489453 (= lt!649530 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 a!2862 i!1006 j!93 (bvadd #b00000000000000000000000000000001 x!665) lt!649534 intermediateBeforeX!19 intermediateBeforeIndex!19 intermediateAfterX!19 intermediateAfterIndex!19 mask!2687))))

(declare-fun b!1489454 () Bool)

(declare-fun res!1012983 () Bool)

(assert (=> b!1489454 (=> (not res!1012983) (not e!834786))))

(assert (=> b!1489454 (= res!1012983 e!834787)))

(declare-fun c!137761 () Bool)

(assert (=> b!1489454 (= c!137761 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1489455 () Bool)

(assert (=> b!1489455 (= e!834787 (= lt!649531 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!649532 lt!649533 mask!2687)))))

(declare-fun b!1489456 () Bool)

(declare-fun e!834783 () Bool)

(assert (=> b!1489456 (= e!834783 e!834785)))

(declare-fun res!1012991 () Bool)

(assert (=> b!1489456 (=> res!1012991 e!834785)))

(assert (=> b!1489456 (= res!1012991 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!649534 #b00000000000000000000000000000000) (bvsge lt!649534 (size!48607 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1489456 (= lt!649534 (nextIndex!0 index!646 x!665 mask!2687))))

(assert (=> b!1489456 (= lt!649528 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!649532 lt!649533 mask!2687))))

(assert (=> b!1489456 (= lt!649528 (seekEntryOrOpen!0 lt!649532 lt!649533 mask!2687))))

(declare-fun b!1489457 () Bool)

(declare-fun res!1012987 () Bool)

(assert (=> b!1489457 (=> res!1012987 e!834785)))

(declare-fun lt!649526 () SeekEntryResult!12319)

(assert (=> b!1489457 (= res!1012987 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!649534 (select (arr!48056 a!2862) j!93) a!2862 mask!2687) lt!649526)))))

(declare-fun b!1489458 () Bool)

(declare-fun res!1012998 () Bool)

(assert (=> b!1489458 (=> (not res!1012998) (not e!834791))))

(assert (=> b!1489458 (= res!1012998 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48056 a!2862) j!93) a!2862 mask!2687) lt!649526))))

(declare-fun b!1489459 () Bool)

(assert (=> b!1489459 (= e!834788 (not (= lt!649531 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!649534 lt!649532 lt!649533 mask!2687))))))

(declare-fun b!1489460 () Bool)

(declare-fun res!1012994 () Bool)

(assert (=> b!1489460 (=> (not res!1012994) (not e!834789))))

(assert (=> b!1489460 (= res!1012994 (and (= (size!48607 a!2862) (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48607 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48607 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1489461 () Bool)

(declare-fun res!1012992 () Bool)

(assert (=> b!1489461 (=> (not res!1012992) (not e!834789))))

(assert (=> b!1489461 (= res!1012992 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48607 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48607 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48607 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1489462 () Bool)

(declare-fun res!1012981 () Bool)

(assert (=> b!1489462 (=> (not res!1012981) (not e!834789))))

(assert (=> b!1489462 (= res!1012981 (validKeyInArray!0 (select (arr!48056 a!2862) i!1006)))))

(declare-fun b!1489463 () Bool)

(assert (=> b!1489463 (= e!834790 e!834791)))

(declare-fun res!1012988 () Bool)

(assert (=> b!1489463 (=> (not res!1012988) (not e!834791))))

(assert (=> b!1489463 (= res!1012988 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48056 a!2862) j!93) mask!2687) (select (arr!48056 a!2862) j!93) a!2862 mask!2687) lt!649526))))

(assert (=> b!1489463 (= lt!649526 (Intermediate!12319 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1489464 () Bool)

(declare-fun res!1012990 () Bool)

(assert (=> b!1489464 (=> (not res!1012990) (not e!834789))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99578 (_ BitVec 32)) Bool)

(assert (=> b!1489464 (= res!1012990 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1489465 () Bool)

(assert (=> b!1489465 (= e!834786 (not e!834783))))

(declare-fun res!1012997 () Bool)

(assert (=> b!1489465 (=> res!1012997 e!834783)))

(assert (=> b!1489465 (= res!1012997 (or (and (= (select (arr!48056 a!2862) index!646) (select (store (arr!48056 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48056 a!2862) index!646) (select (arr!48056 a!2862) j!93))) (= (select (arr!48056 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1489465 (and (= lt!649527 (Found!12319 j!93)) (or (= (select (arr!48056 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48056 a!2862) intermediateBeforeIndex!19) (select (arr!48056 a!2862) j!93))) (let ((bdg!54724 (select (store (arr!48056 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!48056 a!2862) index!646) bdg!54724) (= (select (arr!48056 a!2862) index!646) (select (arr!48056 a!2862) j!93))) (= (select (arr!48056 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!54724 #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> b!1489465 (= lt!649527 (seekEntryOrOpen!0 (select (arr!48056 a!2862) j!93) a!2862 mask!2687))))

(assert (=> b!1489465 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-fun lt!649529 () Unit!49926)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99578 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49926)

(assert (=> b!1489465 (= lt!649529 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(assert (= (and start!126888 res!1012993) b!1489460))

(assert (= (and b!1489460 res!1012994) b!1489462))

(assert (= (and b!1489462 res!1012981) b!1489444))

(assert (= (and b!1489444 res!1012986) b!1489464))

(assert (= (and b!1489464 res!1012990) b!1489448))

(assert (= (and b!1489448 res!1012984) b!1489461))

(assert (= (and b!1489461 res!1012992) b!1489450))

(assert (= (and b!1489450 res!1012995) b!1489463))

(assert (= (and b!1489463 res!1012988) b!1489458))

(assert (= (and b!1489458 res!1012998) b!1489451))

(assert (= (and b!1489451 res!1012996) b!1489454))

(assert (= (and b!1489454 c!137761) b!1489455))

(assert (= (and b!1489454 (not c!137761)) b!1489452))

(assert (= (and b!1489454 res!1012983) b!1489445))

(assert (= (and b!1489445 res!1012989) b!1489465))

(assert (= (and b!1489465 (not res!1012997)) b!1489456))

(assert (= (and b!1489456 (not res!1012991)) b!1489457))

(assert (= (and b!1489457 (not res!1012987)) b!1489447))

(assert (= (and b!1489447 c!137762) b!1489459))

(assert (= (and b!1489447 (not c!137762)) b!1489446))

(assert (= (and b!1489447 (not res!1012982)) b!1489449))

(assert (= (and b!1489449 (not res!1012985)) b!1489453))

(declare-fun m!1373727 () Bool)

(assert (=> b!1489465 m!1373727))

(declare-fun m!1373729 () Bool)

(assert (=> b!1489465 m!1373729))

(declare-fun m!1373731 () Bool)

(assert (=> b!1489465 m!1373731))

(declare-fun m!1373733 () Bool)

(assert (=> b!1489465 m!1373733))

(declare-fun m!1373735 () Bool)

(assert (=> b!1489465 m!1373735))

(declare-fun m!1373737 () Bool)

(assert (=> b!1489465 m!1373737))

(declare-fun m!1373739 () Bool)

(assert (=> b!1489465 m!1373739))

(declare-fun m!1373741 () Bool)

(assert (=> b!1489465 m!1373741))

(assert (=> b!1489465 m!1373737))

(declare-fun m!1373743 () Bool)

(assert (=> start!126888 m!1373743))

(declare-fun m!1373745 () Bool)

(assert (=> start!126888 m!1373745))

(declare-fun m!1373747 () Bool)

(assert (=> b!1489464 m!1373747))

(declare-fun m!1373749 () Bool)

(assert (=> b!1489456 m!1373749))

(declare-fun m!1373751 () Bool)

(assert (=> b!1489456 m!1373751))

(declare-fun m!1373753 () Bool)

(assert (=> b!1489456 m!1373753))

(assert (=> b!1489444 m!1373737))

(assert (=> b!1489444 m!1373737))

(declare-fun m!1373755 () Bool)

(assert (=> b!1489444 m!1373755))

(declare-fun m!1373757 () Bool)

(assert (=> b!1489462 m!1373757))

(assert (=> b!1489462 m!1373757))

(declare-fun m!1373759 () Bool)

(assert (=> b!1489462 m!1373759))

(declare-fun m!1373761 () Bool)

(assert (=> b!1489448 m!1373761))

(assert (=> b!1489450 m!1373729))

(declare-fun m!1373763 () Bool)

(assert (=> b!1489450 m!1373763))

(assert (=> b!1489452 m!1373751))

(assert (=> b!1489452 m!1373753))

(declare-fun m!1373765 () Bool)

(assert (=> b!1489459 m!1373765))

(assert (=> b!1489463 m!1373737))

(assert (=> b!1489463 m!1373737))

(declare-fun m!1373767 () Bool)

(assert (=> b!1489463 m!1373767))

(assert (=> b!1489463 m!1373767))

(assert (=> b!1489463 m!1373737))

(declare-fun m!1373769 () Bool)

(assert (=> b!1489463 m!1373769))

(assert (=> b!1489458 m!1373737))

(assert (=> b!1489458 m!1373737))

(declare-fun m!1373771 () Bool)

(assert (=> b!1489458 m!1373771))

(declare-fun m!1373773 () Bool)

(assert (=> b!1489455 m!1373773))

(declare-fun m!1373775 () Bool)

(assert (=> b!1489453 m!1373775))

(declare-fun m!1373777 () Bool)

(assert (=> b!1489451 m!1373777))

(assert (=> b!1489451 m!1373777))

(declare-fun m!1373779 () Bool)

(assert (=> b!1489451 m!1373779))

(assert (=> b!1489451 m!1373729))

(declare-fun m!1373781 () Bool)

(assert (=> b!1489451 m!1373781))

(declare-fun m!1373783 () Bool)

(assert (=> b!1489446 m!1373783))

(assert (=> b!1489457 m!1373737))

(assert (=> b!1489457 m!1373737))

(declare-fun m!1373785 () Bool)

(assert (=> b!1489457 m!1373785))

(check-sat (not b!1489444) (not b!1489456) (not b!1489457) (not b!1489459) (not b!1489452) (not b!1489465) (not b!1489455) (not b!1489446) (not start!126888) (not b!1489453) (not b!1489448) (not b!1489464) (not b!1489462) (not b!1489458) (not b!1489451) (not b!1489463))
(check-sat)
