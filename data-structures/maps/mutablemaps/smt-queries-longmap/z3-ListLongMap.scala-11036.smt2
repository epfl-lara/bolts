; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!129096 () Bool)

(assert start!129096)

(declare-fun b!1513668 () Bool)

(declare-fun e!844812 () Bool)

(assert (=> b!1513668 (= e!844812 (not true))))

(declare-fun e!844816 () Bool)

(assert (=> b!1513668 e!844816))

(declare-fun res!1033643 () Bool)

(assert (=> b!1513668 (=> (not res!1033643) (not e!844816))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!100865 0))(
  ( (array!100866 (arr!48665 (Array (_ BitVec 32) (_ BitVec 64))) (size!49216 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100865)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100865 (_ BitVec 32)) Bool)

(assert (=> b!1513668 (= res!1033643 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50538 0))(
  ( (Unit!50539) )
))
(declare-fun lt!656038 () Unit!50538)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100865 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50538)

(assert (=> b!1513668 (= lt!656038 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1513669 () Bool)

(declare-fun res!1033646 () Bool)

(assert (=> b!1513669 (=> (not res!1033646) (not e!844816))))

(declare-datatypes ((SeekEntryResult!12857 0))(
  ( (MissingZero!12857 (index!53822 (_ BitVec 32))) (Found!12857 (index!53823 (_ BitVec 32))) (Intermediate!12857 (undefined!13669 Bool) (index!53824 (_ BitVec 32)) (x!135548 (_ BitVec 32))) (Undefined!12857) (MissingVacant!12857 (index!53825 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!100865 (_ BitVec 32)) SeekEntryResult!12857)

(assert (=> b!1513669 (= res!1033646 (= (seekEntry!0 (select (arr!48665 a!2804) j!70) a!2804 mask!2512) (Found!12857 j!70)))))

(declare-fun b!1513670 () Bool)

(declare-fun res!1033648 () Bool)

(declare-fun e!844813 () Bool)

(assert (=> b!1513670 (=> (not res!1033648) (not e!844813))))

(declare-datatypes ((List!35328 0))(
  ( (Nil!35325) (Cons!35324 (h!36737 (_ BitVec 64)) (t!50029 List!35328)) )
))
(declare-fun arrayNoDuplicates!0 (array!100865 (_ BitVec 32) List!35328) Bool)

(assert (=> b!1513670 (= res!1033648 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35325))))

(declare-fun b!1513671 () Bool)

(declare-fun e!844815 () Bool)

(assert (=> b!1513671 (= e!844815 e!844812)))

(declare-fun res!1033652 () Bool)

(assert (=> b!1513671 (=> (not res!1033652) (not e!844812))))

(declare-fun lt!656035 () SeekEntryResult!12857)

(declare-fun lt!656034 () (_ BitVec 64))

(declare-fun lt!656036 () array!100865)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100865 (_ BitVec 32)) SeekEntryResult!12857)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1513671 (= res!1033652 (= lt!656035 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!656034 mask!2512) lt!656034 lt!656036 mask!2512)))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1513671 (= lt!656034 (select (store (arr!48665 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1513671 (= lt!656036 (array!100866 (store (arr!48665 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49216 a!2804)))))

(declare-fun b!1513672 () Bool)

(assert (=> b!1513672 (= e!844813 e!844815)))

(declare-fun res!1033656 () Bool)

(assert (=> b!1513672 (=> (not res!1033656) (not e!844815))))

(declare-fun lt!656037 () SeekEntryResult!12857)

(assert (=> b!1513672 (= res!1033656 (= lt!656035 lt!656037))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1513672 (= lt!656037 (Intermediate!12857 false resIndex!21 resX!21))))

(assert (=> b!1513672 (= lt!656035 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48665 a!2804) j!70) mask!2512) (select (arr!48665 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1513673 () Bool)

(declare-fun e!844817 () Bool)

(assert (=> b!1513673 (= e!844816 e!844817)))

(declare-fun res!1033654 () Bool)

(assert (=> b!1513673 (=> res!1033654 e!844817)))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1513673 (= res!1033654 (or (not (= (select (arr!48665 a!2804) j!70) lt!656034)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48665 a!2804) index!487) (select (arr!48665 a!2804) j!70)) (not (= (select (arr!48665 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1513674 () Bool)

(declare-fun res!1033650 () Bool)

(assert (=> b!1513674 (=> (not res!1033650) (not e!844815))))

(assert (=> b!1513674 (= res!1033650 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48665 a!2804) j!70) a!2804 mask!2512) lt!656037))))

(declare-fun res!1033653 () Bool)

(assert (=> start!129096 (=> (not res!1033653) (not e!844813))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129096 (= res!1033653 (validMask!0 mask!2512))))

(assert (=> start!129096 e!844813))

(assert (=> start!129096 true))

(declare-fun array_inv!37610 (array!100865) Bool)

(assert (=> start!129096 (array_inv!37610 a!2804)))

(declare-fun b!1513675 () Bool)

(declare-fun res!1033647 () Bool)

(assert (=> b!1513675 (=> (not res!1033647) (not e!844813))))

(assert (=> b!1513675 (= res!1033647 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49216 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49216 a!2804))))))

(declare-fun b!1513676 () Bool)

(declare-fun e!844811 () Bool)

(assert (=> b!1513676 (= e!844817 e!844811)))

(declare-fun res!1033645 () Bool)

(assert (=> b!1513676 (=> (not res!1033645) (not e!844811))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100865 (_ BitVec 32)) SeekEntryResult!12857)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100865 (_ BitVec 32)) SeekEntryResult!12857)

(assert (=> b!1513676 (= res!1033645 (= (seekEntryOrOpen!0 (select (arr!48665 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48665 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1513677 () Bool)

(declare-fun res!1033649 () Bool)

(assert (=> b!1513677 (=> (not res!1033649) (not e!844813))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1513677 (= res!1033649 (validKeyInArray!0 (select (arr!48665 a!2804) i!961)))))

(declare-fun b!1513678 () Bool)

(declare-fun res!1033651 () Bool)

(assert (=> b!1513678 (=> (not res!1033651) (not e!844813))))

(assert (=> b!1513678 (= res!1033651 (and (= (size!49216 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49216 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49216 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1513679 () Bool)

(declare-fun res!1033644 () Bool)

(assert (=> b!1513679 (=> (not res!1033644) (not e!844813))))

(assert (=> b!1513679 (= res!1033644 (validKeyInArray!0 (select (arr!48665 a!2804) j!70)))))

(declare-fun b!1513680 () Bool)

(declare-fun res!1033655 () Bool)

(assert (=> b!1513680 (=> (not res!1033655) (not e!844813))))

(assert (=> b!1513680 (= res!1033655 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1513681 () Bool)

(assert (=> b!1513681 (= e!844811 (= (seekEntryOrOpen!0 lt!656034 lt!656036 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!656034 lt!656036 mask!2512)))))

(assert (= (and start!129096 res!1033653) b!1513678))

(assert (= (and b!1513678 res!1033651) b!1513677))

(assert (= (and b!1513677 res!1033649) b!1513679))

(assert (= (and b!1513679 res!1033644) b!1513680))

(assert (= (and b!1513680 res!1033655) b!1513670))

(assert (= (and b!1513670 res!1033648) b!1513675))

(assert (= (and b!1513675 res!1033647) b!1513672))

(assert (= (and b!1513672 res!1033656) b!1513674))

(assert (= (and b!1513674 res!1033650) b!1513671))

(assert (= (and b!1513671 res!1033652) b!1513668))

(assert (= (and b!1513668 res!1033643) b!1513669))

(assert (= (and b!1513669 res!1033646) b!1513673))

(assert (= (and b!1513673 (not res!1033654)) b!1513676))

(assert (= (and b!1513676 res!1033645) b!1513681))

(declare-fun m!1396609 () Bool)

(assert (=> b!1513677 m!1396609))

(assert (=> b!1513677 m!1396609))

(declare-fun m!1396611 () Bool)

(assert (=> b!1513677 m!1396611))

(declare-fun m!1396613 () Bool)

(assert (=> b!1513671 m!1396613))

(assert (=> b!1513671 m!1396613))

(declare-fun m!1396615 () Bool)

(assert (=> b!1513671 m!1396615))

(declare-fun m!1396617 () Bool)

(assert (=> b!1513671 m!1396617))

(declare-fun m!1396619 () Bool)

(assert (=> b!1513671 m!1396619))

(declare-fun m!1396621 () Bool)

(assert (=> start!129096 m!1396621))

(declare-fun m!1396623 () Bool)

(assert (=> start!129096 m!1396623))

(declare-fun m!1396625 () Bool)

(assert (=> b!1513676 m!1396625))

(assert (=> b!1513676 m!1396625))

(declare-fun m!1396627 () Bool)

(assert (=> b!1513676 m!1396627))

(assert (=> b!1513676 m!1396625))

(declare-fun m!1396629 () Bool)

(assert (=> b!1513676 m!1396629))

(assert (=> b!1513679 m!1396625))

(assert (=> b!1513679 m!1396625))

(declare-fun m!1396631 () Bool)

(assert (=> b!1513679 m!1396631))

(declare-fun m!1396633 () Bool)

(assert (=> b!1513668 m!1396633))

(declare-fun m!1396635 () Bool)

(assert (=> b!1513668 m!1396635))

(assert (=> b!1513672 m!1396625))

(assert (=> b!1513672 m!1396625))

(declare-fun m!1396637 () Bool)

(assert (=> b!1513672 m!1396637))

(assert (=> b!1513672 m!1396637))

(assert (=> b!1513672 m!1396625))

(declare-fun m!1396639 () Bool)

(assert (=> b!1513672 m!1396639))

(declare-fun m!1396641 () Bool)

(assert (=> b!1513681 m!1396641))

(declare-fun m!1396643 () Bool)

(assert (=> b!1513681 m!1396643))

(declare-fun m!1396645 () Bool)

(assert (=> b!1513670 m!1396645))

(assert (=> b!1513669 m!1396625))

(assert (=> b!1513669 m!1396625))

(declare-fun m!1396647 () Bool)

(assert (=> b!1513669 m!1396647))

(assert (=> b!1513673 m!1396625))

(declare-fun m!1396649 () Bool)

(assert (=> b!1513673 m!1396649))

(declare-fun m!1396651 () Bool)

(assert (=> b!1513680 m!1396651))

(assert (=> b!1513674 m!1396625))

(assert (=> b!1513674 m!1396625))

(declare-fun m!1396653 () Bool)

(assert (=> b!1513674 m!1396653))

(check-sat (not b!1513670) (not b!1513669) (not b!1513676) (not b!1513672) (not b!1513671) (not b!1513681) (not b!1513674) (not start!129096) (not b!1513679) (not b!1513668) (not b!1513677) (not b!1513680))
(check-sat)
