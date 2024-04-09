; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125196 () Bool)

(assert start!125196)

(declare-fun b!1458640 () Bool)

(declare-fun e!820456 () Bool)

(assert (=> b!1458640 (= e!820456 true)))

(declare-datatypes ((SeekEntryResult!11839 0))(
  ( (MissingZero!11839 (index!49747 (_ BitVec 32))) (Found!11839 (index!49748 (_ BitVec 32))) (Intermediate!11839 (undefined!12651 Bool) (index!49749 (_ BitVec 32)) (x!131363 (_ BitVec 32))) (Undefined!11839) (MissingVacant!11839 (index!49750 (_ BitVec 32))) )
))
(declare-fun lt!639090 () SeekEntryResult!11839)

(declare-fun lt!639094 () SeekEntryResult!11839)

(assert (=> b!1458640 (= lt!639090 lt!639094)))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-datatypes ((Unit!49122 0))(
  ( (Unit!49123) )
))
(declare-fun lt!639093 () Unit!49122)

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun lt!639091 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!98561 0))(
  ( (array!98562 (arr!47564 (Array (_ BitVec 32) (_ BitVec 64))) (size!48115 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98561)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 (array!98561 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49122)

(assert (=> b!1458640 (= lt!639093 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 a!2862 i!1006 j!93 (bvadd #b00000000000000000000000000000001 x!665) lt!639091 intermediateBeforeX!19 intermediateBeforeIndex!19 intermediateAfterX!19 intermediateAfterIndex!19 mask!2687))))

(declare-fun b!1458641 () Bool)

(declare-fun res!988822 () Bool)

(declare-fun e!820454 () Bool)

(assert (=> b!1458641 (=> (not res!988822) (not e!820454))))

(assert (=> b!1458641 (= res!988822 (and (= (size!48115 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48115 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48115 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1458642 () Bool)

(declare-fun res!988826 () Bool)

(declare-fun e!820457 () Bool)

(assert (=> b!1458642 (=> (not res!988826) (not e!820457))))

(declare-fun lt!639089 () SeekEntryResult!11839)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98561 (_ BitVec 32)) SeekEntryResult!11839)

(assert (=> b!1458642 (= res!988826 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47564 a!2862) j!93) a!2862 mask!2687) lt!639089))))

(declare-fun b!1458643 () Bool)

(declare-fun res!988818 () Bool)

(assert (=> b!1458643 (=> res!988818 e!820456)))

(assert (=> b!1458643 (= res!988818 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!639091 (select (arr!47564 a!2862) j!93) a!2862 mask!2687) lt!639089)))))

(declare-fun b!1458644 () Bool)

(declare-fun res!988821 () Bool)

(assert (=> b!1458644 (=> res!988821 e!820456)))

(assert (=> b!1458644 (= res!988821 (bvsgt (bvadd #b00000000000000000000000000000001 x!665) intermediateBeforeX!19))))

(declare-fun b!1458645 () Bool)

(declare-fun res!988819 () Bool)

(assert (=> b!1458645 (=> (not res!988819) (not e!820454))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1458645 (= res!988819 (validKeyInArray!0 (select (arr!47564 a!2862) i!1006)))))

(declare-fun b!1458646 () Bool)

(declare-fun lt!639092 () array!98561)

(declare-fun lt!639096 () SeekEntryResult!11839)

(declare-fun e!820453 () Bool)

(declare-fun lt!639097 () (_ BitVec 64))

(assert (=> b!1458646 (= e!820453 (not (= lt!639096 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!639091 lt!639097 lt!639092 mask!2687))))))

(declare-fun b!1458647 () Bool)

(declare-fun res!988830 () Bool)

(declare-fun e!820450 () Bool)

(assert (=> b!1458647 (=> (not res!988830) (not e!820450))))

(assert (=> b!1458647 (= res!988830 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun e!820452 () Bool)

(declare-fun b!1458648 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98561 (_ BitVec 32)) SeekEntryResult!11839)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98561 (_ BitVec 32)) SeekEntryResult!11839)

(assert (=> b!1458648 (= e!820452 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!639097 lt!639092 mask!2687) (seekEntryOrOpen!0 lt!639097 lt!639092 mask!2687)))))

(declare-fun b!1458649 () Bool)

(declare-fun res!988824 () Bool)

(assert (=> b!1458649 (=> (not res!988824) (not e!820454))))

(assert (=> b!1458649 (= res!988824 (validKeyInArray!0 (select (arr!47564 a!2862) j!93)))))

(declare-fun b!1458650 () Bool)

(declare-fun res!988833 () Bool)

(assert (=> b!1458650 (=> (not res!988833) (not e!820454))))

(assert (=> b!1458650 (= res!988833 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48115 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48115 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48115 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1458651 () Bool)

(assert (=> b!1458651 (= e!820453 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!639091 intermediateAfterIndex!19 lt!639097 lt!639092 mask!2687) lt!639094)))))

(declare-fun res!988825 () Bool)

(assert (=> start!125196 (=> (not res!988825) (not e!820454))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125196 (= res!988825 (validMask!0 mask!2687))))

(assert (=> start!125196 e!820454))

(assert (=> start!125196 true))

(declare-fun array_inv!36509 (array!98561) Bool)

(assert (=> start!125196 (array_inv!36509 a!2862)))

(declare-fun b!1458652 () Bool)

(declare-fun e!820451 () Bool)

(assert (=> b!1458652 (= e!820454 e!820451)))

(declare-fun res!988816 () Bool)

(assert (=> b!1458652 (=> (not res!988816) (not e!820451))))

(assert (=> b!1458652 (= res!988816 (= (select (store (arr!47564 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1458652 (= lt!639092 (array!98562 (store (arr!47564 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48115 a!2862)))))

(declare-fun b!1458653 () Bool)

(declare-fun res!988831 () Bool)

(assert (=> b!1458653 (=> (not res!988831) (not e!820450))))

(assert (=> b!1458653 (= res!988831 e!820452)))

(declare-fun c!134425 () Bool)

(assert (=> b!1458653 (= c!134425 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1458654 () Bool)

(declare-fun res!988817 () Bool)

(assert (=> b!1458654 (=> res!988817 e!820456)))

(assert (=> b!1458654 (= res!988817 e!820453)))

(declare-fun c!134426 () Bool)

(assert (=> b!1458654 (= c!134426 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1458655 () Bool)

(assert (=> b!1458655 (= e!820457 e!820450)))

(declare-fun res!988823 () Bool)

(assert (=> b!1458655 (=> (not res!988823) (not e!820450))))

(assert (=> b!1458655 (= res!988823 (= lt!639096 (Intermediate!11839 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1458655 (= lt!639096 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!639097 mask!2687) lt!639097 lt!639092 mask!2687))))

(assert (=> b!1458655 (= lt!639097 (select (store (arr!47564 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1458656 () Bool)

(declare-fun e!820455 () Bool)

(assert (=> b!1458656 (= e!820455 e!820456)))

(declare-fun res!988827 () Bool)

(assert (=> b!1458656 (=> res!988827 e!820456)))

(assert (=> b!1458656 (= res!988827 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!639091 #b00000000000000000000000000000000) (bvsge lt!639091 (size!48115 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1458656 (= lt!639091 (nextIndex!0 index!646 x!665 mask!2687))))

(assert (=> b!1458656 (= lt!639094 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!639097 lt!639092 mask!2687))))

(assert (=> b!1458656 (= lt!639094 (seekEntryOrOpen!0 lt!639097 lt!639092 mask!2687))))

(declare-fun b!1458657 () Bool)

(assert (=> b!1458657 (= e!820451 e!820457)))

(declare-fun res!988832 () Bool)

(assert (=> b!1458657 (=> (not res!988832) (not e!820457))))

(assert (=> b!1458657 (= res!988832 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47564 a!2862) j!93) mask!2687) (select (arr!47564 a!2862) j!93) a!2862 mask!2687) lt!639089))))

(assert (=> b!1458657 (= lt!639089 (Intermediate!11839 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1458658 () Bool)

(assert (=> b!1458658 (= e!820452 (= lt!639096 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!639097 lt!639092 mask!2687)))))

(declare-fun b!1458659 () Bool)

(assert (=> b!1458659 (= e!820450 (not e!820455))))

(declare-fun res!988829 () Bool)

(assert (=> b!1458659 (=> res!988829 e!820455)))

(assert (=> b!1458659 (= res!988829 (or (and (= (select (arr!47564 a!2862) index!646) (select (store (arr!47564 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47564 a!2862) index!646) (select (arr!47564 a!2862) j!93))) (= (select (arr!47564 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1458659 (and (= lt!639090 (Found!11839 j!93)) (or (= (select (arr!47564 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47564 a!2862) intermediateBeforeIndex!19) (select (arr!47564 a!2862) j!93))) (let ((bdg!53451 (select (store (arr!47564 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!47564 a!2862) index!646) bdg!53451) (= (select (arr!47564 a!2862) index!646) (select (arr!47564 a!2862) j!93))) (= (select (arr!47564 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!53451 #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> b!1458659 (= lt!639090 (seekEntryOrOpen!0 (select (arr!47564 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98561 (_ BitVec 32)) Bool)

(assert (=> b!1458659 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-fun lt!639095 () Unit!49122)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98561 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49122)

(assert (=> b!1458659 (= lt!639095 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1458660 () Bool)

(declare-fun res!988820 () Bool)

(assert (=> b!1458660 (=> (not res!988820) (not e!820454))))

(assert (=> b!1458660 (= res!988820 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1458661 () Bool)

(declare-fun res!988828 () Bool)

(assert (=> b!1458661 (=> (not res!988828) (not e!820454))))

(declare-datatypes ((List!34245 0))(
  ( (Nil!34242) (Cons!34241 (h!35591 (_ BitVec 64)) (t!48946 List!34245)) )
))
(declare-fun arrayNoDuplicates!0 (array!98561 (_ BitVec 32) List!34245) Bool)

(assert (=> b!1458661 (= res!988828 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34242))))

(assert (= (and start!125196 res!988825) b!1458641))

(assert (= (and b!1458641 res!988822) b!1458645))

(assert (= (and b!1458645 res!988819) b!1458649))

(assert (= (and b!1458649 res!988824) b!1458660))

(assert (= (and b!1458660 res!988820) b!1458661))

(assert (= (and b!1458661 res!988828) b!1458650))

(assert (= (and b!1458650 res!988833) b!1458652))

(assert (= (and b!1458652 res!988816) b!1458657))

(assert (= (and b!1458657 res!988832) b!1458642))

(assert (= (and b!1458642 res!988826) b!1458655))

(assert (= (and b!1458655 res!988823) b!1458653))

(assert (= (and b!1458653 c!134425) b!1458658))

(assert (= (and b!1458653 (not c!134425)) b!1458648))

(assert (= (and b!1458653 res!988831) b!1458647))

(assert (= (and b!1458647 res!988830) b!1458659))

(assert (= (and b!1458659 (not res!988829)) b!1458656))

(assert (= (and b!1458656 (not res!988827)) b!1458643))

(assert (= (and b!1458643 (not res!988818)) b!1458654))

(assert (= (and b!1458654 c!134426) b!1458646))

(assert (= (and b!1458654 (not c!134426)) b!1458651))

(assert (= (and b!1458654 (not res!988817)) b!1458644))

(assert (= (and b!1458644 (not res!988821)) b!1458640))

(declare-fun m!1346523 () Bool)

(assert (=> b!1458646 m!1346523))

(declare-fun m!1346525 () Bool)

(assert (=> b!1458643 m!1346525))

(assert (=> b!1458643 m!1346525))

(declare-fun m!1346527 () Bool)

(assert (=> b!1458643 m!1346527))

(declare-fun m!1346529 () Bool)

(assert (=> b!1458640 m!1346529))

(assert (=> b!1458657 m!1346525))

(assert (=> b!1458657 m!1346525))

(declare-fun m!1346531 () Bool)

(assert (=> b!1458657 m!1346531))

(assert (=> b!1458657 m!1346531))

(assert (=> b!1458657 m!1346525))

(declare-fun m!1346533 () Bool)

(assert (=> b!1458657 m!1346533))

(declare-fun m!1346535 () Bool)

(assert (=> b!1458660 m!1346535))

(declare-fun m!1346537 () Bool)

(assert (=> b!1458651 m!1346537))

(declare-fun m!1346539 () Bool)

(assert (=> b!1458659 m!1346539))

(declare-fun m!1346541 () Bool)

(assert (=> b!1458659 m!1346541))

(declare-fun m!1346543 () Bool)

(assert (=> b!1458659 m!1346543))

(declare-fun m!1346545 () Bool)

(assert (=> b!1458659 m!1346545))

(declare-fun m!1346547 () Bool)

(assert (=> b!1458659 m!1346547))

(assert (=> b!1458659 m!1346525))

(declare-fun m!1346549 () Bool)

(assert (=> b!1458659 m!1346549))

(declare-fun m!1346551 () Bool)

(assert (=> b!1458659 m!1346551))

(assert (=> b!1458659 m!1346525))

(declare-fun m!1346553 () Bool)

(assert (=> b!1458655 m!1346553))

(assert (=> b!1458655 m!1346553))

(declare-fun m!1346555 () Bool)

(assert (=> b!1458655 m!1346555))

(assert (=> b!1458655 m!1346541))

(declare-fun m!1346557 () Bool)

(assert (=> b!1458655 m!1346557))

(declare-fun m!1346559 () Bool)

(assert (=> b!1458658 m!1346559))

(assert (=> b!1458642 m!1346525))

(assert (=> b!1458642 m!1346525))

(declare-fun m!1346561 () Bool)

(assert (=> b!1458642 m!1346561))

(declare-fun m!1346563 () Bool)

(assert (=> b!1458661 m!1346563))

(declare-fun m!1346565 () Bool)

(assert (=> b!1458648 m!1346565))

(declare-fun m!1346567 () Bool)

(assert (=> b!1458648 m!1346567))

(declare-fun m!1346569 () Bool)

(assert (=> b!1458656 m!1346569))

(assert (=> b!1458656 m!1346565))

(assert (=> b!1458656 m!1346567))

(declare-fun m!1346571 () Bool)

(assert (=> start!125196 m!1346571))

(declare-fun m!1346573 () Bool)

(assert (=> start!125196 m!1346573))

(assert (=> b!1458652 m!1346541))

(declare-fun m!1346575 () Bool)

(assert (=> b!1458652 m!1346575))

(declare-fun m!1346577 () Bool)

(assert (=> b!1458645 m!1346577))

(assert (=> b!1458645 m!1346577))

(declare-fun m!1346579 () Bool)

(assert (=> b!1458645 m!1346579))

(assert (=> b!1458649 m!1346525))

(assert (=> b!1458649 m!1346525))

(declare-fun m!1346581 () Bool)

(assert (=> b!1458649 m!1346581))

(check-sat (not b!1458646) (not b!1458648) (not b!1458660) (not b!1458651) (not b!1458658) (not b!1458657) (not start!125196) (not b!1458655) (not b!1458656) (not b!1458645) (not b!1458661) (not b!1458643) (not b!1458649) (not b!1458640) (not b!1458642) (not b!1458659))
(check-sat)
