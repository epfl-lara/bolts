; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125230 () Bool)

(assert start!125230)

(declare-fun res!989738 () Bool)

(declare-fun e!820914 () Bool)

(assert (=> start!125230 (=> (not res!989738) (not e!820914))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125230 (= res!989738 (validMask!0 mask!2687))))

(assert (=> start!125230 e!820914))

(assert (=> start!125230 true))

(declare-datatypes ((array!98595 0))(
  ( (array!98596 (arr!47581 (Array (_ BitVec 32) (_ BitVec 64))) (size!48132 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98595)

(declare-fun array_inv!36526 (array!98595) Bool)

(assert (=> start!125230 (array_inv!36526 a!2862)))

(declare-fun lt!639552 () array!98595)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun b!1459762 () Bool)

(declare-fun e!820911 () Bool)

(declare-datatypes ((SeekEntryResult!11856 0))(
  ( (MissingZero!11856 (index!49815 (_ BitVec 32))) (Found!11856 (index!49816 (_ BitVec 32))) (Intermediate!11856 (undefined!12668 Bool) (index!49817 (_ BitVec 32)) (x!131428 (_ BitVec 32))) (Undefined!11856) (MissingVacant!11856 (index!49818 (_ BitVec 32))) )
))
(declare-fun lt!639550 () SeekEntryResult!11856)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun lt!639553 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98595 (_ BitVec 32)) SeekEntryResult!11856)

(assert (=> b!1459762 (= e!820911 (= lt!639550 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!639553 lt!639552 mask!2687)))))

(declare-fun b!1459763 () Bool)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98595 (_ BitVec 32)) SeekEntryResult!11856)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98595 (_ BitVec 32)) SeekEntryResult!11856)

(assert (=> b!1459763 (= e!820911 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!639553 lt!639552 mask!2687) (seekEntryOrOpen!0 lt!639553 lt!639552 mask!2687)))))

(declare-fun b!1459764 () Bool)

(declare-fun e!820913 () Bool)

(assert (=> b!1459764 (= e!820914 e!820913)))

(declare-fun res!989737 () Bool)

(assert (=> b!1459764 (=> (not res!989737) (not e!820913))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1459764 (= res!989737 (= (select (store (arr!47581 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1459764 (= lt!639552 (array!98596 (store (arr!47581 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48132 a!2862)))))

(declare-fun b!1459765 () Bool)

(declare-fun res!989734 () Bool)

(declare-fun e!820912 () Bool)

(assert (=> b!1459765 (=> (not res!989734) (not e!820912))))

(assert (=> b!1459765 (= res!989734 e!820911)))

(declare-fun c!134527 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1459765 (= c!134527 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1459766 () Bool)

(declare-fun res!989736 () Bool)

(assert (=> b!1459766 (=> (not res!989736) (not e!820914))))

(declare-datatypes ((List!34262 0))(
  ( (Nil!34259) (Cons!34258 (h!35608 (_ BitVec 64)) (t!48963 List!34262)) )
))
(declare-fun arrayNoDuplicates!0 (array!98595 (_ BitVec 32) List!34262) Bool)

(assert (=> b!1459766 (= res!989736 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34259))))

(declare-fun b!1459767 () Bool)

(declare-fun e!820909 () Bool)

(declare-fun e!820910 () Bool)

(assert (=> b!1459767 (= e!820909 e!820910)))

(declare-fun res!989747 () Bool)

(assert (=> b!1459767 (=> res!989747 e!820910)))

(declare-fun lt!639549 () (_ BitVec 32))

(assert (=> b!1459767 (= res!989747 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!639549 #b00000000000000000000000000000000) (bvsge lt!639549 (size!48132 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1459767 (= lt!639549 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun lt!639548 () SeekEntryResult!11856)

(assert (=> b!1459767 (= lt!639548 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!639553 lt!639552 mask!2687))))

(assert (=> b!1459767 (= lt!639548 (seekEntryOrOpen!0 lt!639553 lt!639552 mask!2687))))

(declare-fun b!1459768 () Bool)

(declare-fun res!989740 () Bool)

(assert (=> b!1459768 (=> res!989740 e!820910)))

(declare-fun e!820916 () Bool)

(assert (=> b!1459768 (= res!989740 e!820916)))

(declare-fun c!134528 () Bool)

(assert (=> b!1459768 (= c!134528 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1459769 () Bool)

(assert (=> b!1459769 (= e!820916 (not (= lt!639550 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!639549 lt!639553 lt!639552 mask!2687))))))

(declare-fun b!1459770 () Bool)

(assert (=> b!1459770 (= e!820916 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!639549 intermediateAfterIndex!19 lt!639553 lt!639552 mask!2687) lt!639548)))))

(declare-fun b!1459771 () Bool)

(declare-fun e!820915 () Bool)

(assert (=> b!1459771 (= e!820915 e!820912)))

(declare-fun res!989735 () Bool)

(assert (=> b!1459771 (=> (not res!989735) (not e!820912))))

(assert (=> b!1459771 (= res!989735 (= lt!639550 (Intermediate!11856 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1459771 (= lt!639550 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!639553 mask!2687) lt!639553 lt!639552 mask!2687))))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1459771 (= lt!639553 (select (store (arr!47581 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1459772 () Bool)

(declare-fun res!989744 () Bool)

(assert (=> b!1459772 (=> (not res!989744) (not e!820912))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1459772 (= res!989744 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1459773 () Bool)

(declare-fun res!989745 () Bool)

(assert (=> b!1459773 (=> res!989745 e!820910)))

(assert (=> b!1459773 (= res!989745 (bvsgt (bvadd #b00000000000000000000000000000001 x!665) intermediateBeforeX!19))))

(declare-fun b!1459774 () Bool)

(assert (=> b!1459774 (= e!820912 (not e!820909))))

(declare-fun res!989748 () Bool)

(assert (=> b!1459774 (=> res!989748 e!820909)))

(assert (=> b!1459774 (= res!989748 (or (and (= (select (arr!47581 a!2862) index!646) (select (store (arr!47581 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47581 a!2862) index!646) (select (arr!47581 a!2862) j!93))) (= (select (arr!47581 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun lt!639555 () SeekEntryResult!11856)

(assert (=> b!1459774 (and (= lt!639555 (Found!11856 j!93)) (or (= (select (arr!47581 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47581 a!2862) intermediateBeforeIndex!19) (select (arr!47581 a!2862) j!93))) (let ((bdg!53545 (select (store (arr!47581 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!47581 a!2862) index!646) bdg!53545) (= (select (arr!47581 a!2862) index!646) (select (arr!47581 a!2862) j!93))) (= (select (arr!47581 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!53545 #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> b!1459774 (= lt!639555 (seekEntryOrOpen!0 (select (arr!47581 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98595 (_ BitVec 32)) Bool)

(assert (=> b!1459774 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!49156 0))(
  ( (Unit!49157) )
))
(declare-fun lt!639554 () Unit!49156)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98595 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49156)

(assert (=> b!1459774 (= lt!639554 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1459775 () Bool)

(declare-fun res!989741 () Bool)

(assert (=> b!1459775 (=> (not res!989741) (not e!820914))))

(assert (=> b!1459775 (= res!989741 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48132 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48132 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48132 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1459776 () Bool)

(declare-fun res!989739 () Bool)

(assert (=> b!1459776 (=> (not res!989739) (not e!820914))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1459776 (= res!989739 (validKeyInArray!0 (select (arr!47581 a!2862) j!93)))))

(declare-fun b!1459777 () Bool)

(declare-fun res!989742 () Bool)

(assert (=> b!1459777 (=> res!989742 e!820910)))

(declare-fun lt!639551 () SeekEntryResult!11856)

(assert (=> b!1459777 (= res!989742 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!639549 (select (arr!47581 a!2862) j!93) a!2862 mask!2687) lt!639551)))))

(declare-fun b!1459778 () Bool)

(declare-fun res!989743 () Bool)

(assert (=> b!1459778 (=> (not res!989743) (not e!820914))))

(assert (=> b!1459778 (= res!989743 (validKeyInArray!0 (select (arr!47581 a!2862) i!1006)))))

(declare-fun b!1459779 () Bool)

(assert (=> b!1459779 (= e!820910 true)))

(assert (=> b!1459779 (= lt!639555 lt!639548)))

(declare-fun lt!639556 () Unit!49156)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 (array!98595 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49156)

(assert (=> b!1459779 (= lt!639556 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 a!2862 i!1006 j!93 (bvadd #b00000000000000000000000000000001 x!665) lt!639549 intermediateBeforeX!19 intermediateBeforeIndex!19 intermediateAfterX!19 intermediateAfterIndex!19 mask!2687))))

(declare-fun b!1459780 () Bool)

(declare-fun res!989749 () Bool)

(assert (=> b!1459780 (=> (not res!989749) (not e!820914))))

(assert (=> b!1459780 (= res!989749 (and (= (size!48132 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48132 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48132 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1459781 () Bool)

(assert (=> b!1459781 (= e!820913 e!820915)))

(declare-fun res!989750 () Bool)

(assert (=> b!1459781 (=> (not res!989750) (not e!820915))))

(assert (=> b!1459781 (= res!989750 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47581 a!2862) j!93) mask!2687) (select (arr!47581 a!2862) j!93) a!2862 mask!2687) lt!639551))))

(assert (=> b!1459781 (= lt!639551 (Intermediate!11856 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1459782 () Bool)

(declare-fun res!989746 () Bool)

(assert (=> b!1459782 (=> (not res!989746) (not e!820914))))

(assert (=> b!1459782 (= res!989746 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1459783 () Bool)

(declare-fun res!989751 () Bool)

(assert (=> b!1459783 (=> (not res!989751) (not e!820915))))

(assert (=> b!1459783 (= res!989751 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47581 a!2862) j!93) a!2862 mask!2687) lt!639551))))

(assert (= (and start!125230 res!989738) b!1459780))

(assert (= (and b!1459780 res!989749) b!1459778))

(assert (= (and b!1459778 res!989743) b!1459776))

(assert (= (and b!1459776 res!989739) b!1459782))

(assert (= (and b!1459782 res!989746) b!1459766))

(assert (= (and b!1459766 res!989736) b!1459775))

(assert (= (and b!1459775 res!989741) b!1459764))

(assert (= (and b!1459764 res!989737) b!1459781))

(assert (= (and b!1459781 res!989750) b!1459783))

(assert (= (and b!1459783 res!989751) b!1459771))

(assert (= (and b!1459771 res!989735) b!1459765))

(assert (= (and b!1459765 c!134527) b!1459762))

(assert (= (and b!1459765 (not c!134527)) b!1459763))

(assert (= (and b!1459765 res!989734) b!1459772))

(assert (= (and b!1459772 res!989744) b!1459774))

(assert (= (and b!1459774 (not res!989748)) b!1459767))

(assert (= (and b!1459767 (not res!989747)) b!1459777))

(assert (= (and b!1459777 (not res!989742)) b!1459768))

(assert (= (and b!1459768 c!134528) b!1459769))

(assert (= (and b!1459768 (not c!134528)) b!1459770))

(assert (= (and b!1459768 (not res!989740)) b!1459773))

(assert (= (and b!1459773 (not res!989745)) b!1459779))

(declare-fun m!1347543 () Bool)

(assert (=> start!125230 m!1347543))

(declare-fun m!1347545 () Bool)

(assert (=> start!125230 m!1347545))

(declare-fun m!1347547 () Bool)

(assert (=> b!1459764 m!1347547))

(declare-fun m!1347549 () Bool)

(assert (=> b!1459764 m!1347549))

(declare-fun m!1347551 () Bool)

(assert (=> b!1459778 m!1347551))

(assert (=> b!1459778 m!1347551))

(declare-fun m!1347553 () Bool)

(assert (=> b!1459778 m!1347553))

(declare-fun m!1347555 () Bool)

(assert (=> b!1459777 m!1347555))

(assert (=> b!1459777 m!1347555))

(declare-fun m!1347557 () Bool)

(assert (=> b!1459777 m!1347557))

(declare-fun m!1347559 () Bool)

(assert (=> b!1459762 m!1347559))

(declare-fun m!1347561 () Bool)

(assert (=> b!1459774 m!1347561))

(assert (=> b!1459774 m!1347547))

(declare-fun m!1347563 () Bool)

(assert (=> b!1459774 m!1347563))

(declare-fun m!1347565 () Bool)

(assert (=> b!1459774 m!1347565))

(declare-fun m!1347567 () Bool)

(assert (=> b!1459774 m!1347567))

(assert (=> b!1459774 m!1347555))

(declare-fun m!1347569 () Bool)

(assert (=> b!1459774 m!1347569))

(declare-fun m!1347571 () Bool)

(assert (=> b!1459774 m!1347571))

(assert (=> b!1459774 m!1347555))

(declare-fun m!1347573 () Bool)

(assert (=> b!1459763 m!1347573))

(declare-fun m!1347575 () Bool)

(assert (=> b!1459763 m!1347575))

(declare-fun m!1347577 () Bool)

(assert (=> b!1459766 m!1347577))

(declare-fun m!1347579 () Bool)

(assert (=> b!1459767 m!1347579))

(assert (=> b!1459767 m!1347573))

(assert (=> b!1459767 m!1347575))

(declare-fun m!1347581 () Bool)

(assert (=> b!1459769 m!1347581))

(declare-fun m!1347583 () Bool)

(assert (=> b!1459771 m!1347583))

(assert (=> b!1459771 m!1347583))

(declare-fun m!1347585 () Bool)

(assert (=> b!1459771 m!1347585))

(assert (=> b!1459771 m!1347547))

(declare-fun m!1347587 () Bool)

(assert (=> b!1459771 m!1347587))

(declare-fun m!1347589 () Bool)

(assert (=> b!1459779 m!1347589))

(assert (=> b!1459781 m!1347555))

(assert (=> b!1459781 m!1347555))

(declare-fun m!1347591 () Bool)

(assert (=> b!1459781 m!1347591))

(assert (=> b!1459781 m!1347591))

(assert (=> b!1459781 m!1347555))

(declare-fun m!1347593 () Bool)

(assert (=> b!1459781 m!1347593))

(assert (=> b!1459776 m!1347555))

(assert (=> b!1459776 m!1347555))

(declare-fun m!1347595 () Bool)

(assert (=> b!1459776 m!1347595))

(declare-fun m!1347597 () Bool)

(assert (=> b!1459770 m!1347597))

(declare-fun m!1347599 () Bool)

(assert (=> b!1459782 m!1347599))

(assert (=> b!1459783 m!1347555))

(assert (=> b!1459783 m!1347555))

(declare-fun m!1347601 () Bool)

(assert (=> b!1459783 m!1347601))

(push 1)

