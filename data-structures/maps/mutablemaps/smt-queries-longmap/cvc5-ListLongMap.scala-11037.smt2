; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129100 () Bool)

(assert start!129100)

(declare-fun b!1513752 () Bool)

(declare-fun e!844856 () Bool)

(assert (=> b!1513752 (= e!844856 (not true))))

(declare-fun e!844859 () Bool)

(assert (=> b!1513752 e!844859))

(declare-fun res!1033735 () Bool)

(assert (=> b!1513752 (=> (not res!1033735) (not e!844859))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!100869 0))(
  ( (array!100870 (arr!48667 (Array (_ BitVec 32) (_ BitVec 64))) (size!49218 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100869)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100869 (_ BitVec 32)) Bool)

(assert (=> b!1513752 (= res!1033735 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50542 0))(
  ( (Unit!50543) )
))
(declare-fun lt!656064 () Unit!50542)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100869 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50542)

(assert (=> b!1513752 (= lt!656064 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1513753 () Bool)

(declare-fun e!844855 () Bool)

(assert (=> b!1513753 (= e!844859 e!844855)))

(declare-fun res!1033733 () Bool)

(assert (=> b!1513753 (=> res!1033733 e!844855)))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun lt!656066 () (_ BitVec 64))

(assert (=> b!1513753 (= res!1033733 (or (not (= (select (arr!48667 a!2804) j!70) lt!656066)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48667 a!2804) index!487) (select (arr!48667 a!2804) j!70)) (not (= (select (arr!48667 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1513754 () Bool)

(declare-fun res!1033730 () Bool)

(declare-fun e!844857 () Bool)

(assert (=> b!1513754 (=> (not res!1033730) (not e!844857))))

(assert (=> b!1513754 (= res!1033730 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49218 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49218 a!2804))))))

(declare-fun b!1513755 () Bool)

(declare-fun res!1033727 () Bool)

(assert (=> b!1513755 (=> (not res!1033727) (not e!844857))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1513755 (= res!1033727 (validKeyInArray!0 (select (arr!48667 a!2804) i!961)))))

(declare-fun b!1513756 () Bool)

(declare-fun res!1033731 () Bool)

(assert (=> b!1513756 (=> (not res!1033731) (not e!844857))))

(assert (=> b!1513756 (= res!1033731 (and (= (size!49218 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49218 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49218 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1513757 () Bool)

(declare-fun res!1033736 () Bool)

(assert (=> b!1513757 (=> (not res!1033736) (not e!844857))))

(assert (=> b!1513757 (= res!1033736 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun res!1033728 () Bool)

(assert (=> start!129100 (=> (not res!1033728) (not e!844857))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129100 (= res!1033728 (validMask!0 mask!2512))))

(assert (=> start!129100 e!844857))

(assert (=> start!129100 true))

(declare-fun array_inv!37612 (array!100869) Bool)

(assert (=> start!129100 (array_inv!37612 a!2804)))

(declare-fun b!1513758 () Bool)

(declare-fun lt!656068 () array!100869)

(declare-fun e!844853 () Bool)

(declare-datatypes ((SeekEntryResult!12859 0))(
  ( (MissingZero!12859 (index!53830 (_ BitVec 32))) (Found!12859 (index!53831 (_ BitVec 32))) (Intermediate!12859 (undefined!13671 Bool) (index!53832 (_ BitVec 32)) (x!135558 (_ BitVec 32))) (Undefined!12859) (MissingVacant!12859 (index!53833 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100869 (_ BitVec 32)) SeekEntryResult!12859)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100869 (_ BitVec 32)) SeekEntryResult!12859)

(assert (=> b!1513758 (= e!844853 (= (seekEntryOrOpen!0 lt!656066 lt!656068 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!656066 lt!656068 mask!2512)))))

(declare-fun b!1513759 () Bool)

(declare-fun res!1033729 () Bool)

(assert (=> b!1513759 (=> (not res!1033729) (not e!844857))))

(declare-datatypes ((List!35330 0))(
  ( (Nil!35327) (Cons!35326 (h!36739 (_ BitVec 64)) (t!50031 List!35330)) )
))
(declare-fun arrayNoDuplicates!0 (array!100869 (_ BitVec 32) List!35330) Bool)

(assert (=> b!1513759 (= res!1033729 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35327))))

(declare-fun b!1513760 () Bool)

(assert (=> b!1513760 (= e!844855 e!844853)))

(declare-fun res!1033740 () Bool)

(assert (=> b!1513760 (=> (not res!1033740) (not e!844853))))

(assert (=> b!1513760 (= res!1033740 (= (seekEntryOrOpen!0 (select (arr!48667 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48667 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1513761 () Bool)

(declare-fun res!1033738 () Bool)

(assert (=> b!1513761 (=> (not res!1033738) (not e!844859))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!100869 (_ BitVec 32)) SeekEntryResult!12859)

(assert (=> b!1513761 (= res!1033738 (= (seekEntry!0 (select (arr!48667 a!2804) j!70) a!2804 mask!2512) (Found!12859 j!70)))))

(declare-fun b!1513762 () Bool)

(declare-fun e!844858 () Bool)

(assert (=> b!1513762 (= e!844858 e!844856)))

(declare-fun res!1033732 () Bool)

(assert (=> b!1513762 (=> (not res!1033732) (not e!844856))))

(declare-fun lt!656065 () SeekEntryResult!12859)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100869 (_ BitVec 32)) SeekEntryResult!12859)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1513762 (= res!1033732 (= lt!656065 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!656066 mask!2512) lt!656066 lt!656068 mask!2512)))))

(assert (=> b!1513762 (= lt!656066 (select (store (arr!48667 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1513762 (= lt!656068 (array!100870 (store (arr!48667 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49218 a!2804)))))

(declare-fun b!1513763 () Bool)

(assert (=> b!1513763 (= e!844857 e!844858)))

(declare-fun res!1033734 () Bool)

(assert (=> b!1513763 (=> (not res!1033734) (not e!844858))))

(declare-fun lt!656067 () SeekEntryResult!12859)

(assert (=> b!1513763 (= res!1033734 (= lt!656065 lt!656067))))

(assert (=> b!1513763 (= lt!656067 (Intermediate!12859 false resIndex!21 resX!21))))

(assert (=> b!1513763 (= lt!656065 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48667 a!2804) j!70) mask!2512) (select (arr!48667 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1513764 () Bool)

(declare-fun res!1033737 () Bool)

(assert (=> b!1513764 (=> (not res!1033737) (not e!844857))))

(assert (=> b!1513764 (= res!1033737 (validKeyInArray!0 (select (arr!48667 a!2804) j!70)))))

(declare-fun b!1513765 () Bool)

(declare-fun res!1033739 () Bool)

(assert (=> b!1513765 (=> (not res!1033739) (not e!844858))))

(assert (=> b!1513765 (= res!1033739 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48667 a!2804) j!70) a!2804 mask!2512) lt!656067))))

(assert (= (and start!129100 res!1033728) b!1513756))

(assert (= (and b!1513756 res!1033731) b!1513755))

(assert (= (and b!1513755 res!1033727) b!1513764))

(assert (= (and b!1513764 res!1033737) b!1513757))

(assert (= (and b!1513757 res!1033736) b!1513759))

(assert (= (and b!1513759 res!1033729) b!1513754))

(assert (= (and b!1513754 res!1033730) b!1513763))

(assert (= (and b!1513763 res!1033734) b!1513765))

(assert (= (and b!1513765 res!1033739) b!1513762))

(assert (= (and b!1513762 res!1033732) b!1513752))

(assert (= (and b!1513752 res!1033735) b!1513761))

(assert (= (and b!1513761 res!1033738) b!1513753))

(assert (= (and b!1513753 (not res!1033733)) b!1513760))

(assert (= (and b!1513760 res!1033740) b!1513758))

(declare-fun m!1396701 () Bool)

(assert (=> b!1513764 m!1396701))

(assert (=> b!1513764 m!1396701))

(declare-fun m!1396703 () Bool)

(assert (=> b!1513764 m!1396703))

(assert (=> b!1513761 m!1396701))

(assert (=> b!1513761 m!1396701))

(declare-fun m!1396705 () Bool)

(assert (=> b!1513761 m!1396705))

(assert (=> b!1513753 m!1396701))

(declare-fun m!1396707 () Bool)

(assert (=> b!1513753 m!1396707))

(declare-fun m!1396709 () Bool)

(assert (=> b!1513758 m!1396709))

(declare-fun m!1396711 () Bool)

(assert (=> b!1513758 m!1396711))

(assert (=> b!1513765 m!1396701))

(assert (=> b!1513765 m!1396701))

(declare-fun m!1396713 () Bool)

(assert (=> b!1513765 m!1396713))

(declare-fun m!1396715 () Bool)

(assert (=> b!1513759 m!1396715))

(declare-fun m!1396717 () Bool)

(assert (=> start!129100 m!1396717))

(declare-fun m!1396719 () Bool)

(assert (=> start!129100 m!1396719))

(declare-fun m!1396721 () Bool)

(assert (=> b!1513757 m!1396721))

(declare-fun m!1396723 () Bool)

(assert (=> b!1513762 m!1396723))

(assert (=> b!1513762 m!1396723))

(declare-fun m!1396725 () Bool)

(assert (=> b!1513762 m!1396725))

(declare-fun m!1396727 () Bool)

(assert (=> b!1513762 m!1396727))

(declare-fun m!1396729 () Bool)

(assert (=> b!1513762 m!1396729))

(declare-fun m!1396731 () Bool)

(assert (=> b!1513752 m!1396731))

(declare-fun m!1396733 () Bool)

(assert (=> b!1513752 m!1396733))

(declare-fun m!1396735 () Bool)

(assert (=> b!1513755 m!1396735))

(assert (=> b!1513755 m!1396735))

(declare-fun m!1396737 () Bool)

(assert (=> b!1513755 m!1396737))

(assert (=> b!1513763 m!1396701))

(assert (=> b!1513763 m!1396701))

(declare-fun m!1396739 () Bool)

(assert (=> b!1513763 m!1396739))

(assert (=> b!1513763 m!1396739))

(assert (=> b!1513763 m!1396701))

(declare-fun m!1396741 () Bool)

(assert (=> b!1513763 m!1396741))

(assert (=> b!1513760 m!1396701))

(assert (=> b!1513760 m!1396701))

(declare-fun m!1396743 () Bool)

(assert (=> b!1513760 m!1396743))

(assert (=> b!1513760 m!1396701))

(declare-fun m!1396745 () Bool)

(assert (=> b!1513760 m!1396745))

(push 1)

