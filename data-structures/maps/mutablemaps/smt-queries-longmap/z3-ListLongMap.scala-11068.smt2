; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!129288 () Bool)

(assert start!129288)

(declare-fun b!1517443 () Bool)

(declare-fun res!1037421 () Bool)

(declare-fun e!846642 () Bool)

(assert (=> b!1517443 (=> (not res!1037421) (not e!846642))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!101057 0))(
  ( (array!101058 (arr!48761 (Array (_ BitVec 32) (_ BitVec 64))) (size!49312 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101057)

(declare-datatypes ((SeekEntryResult!12953 0))(
  ( (MissingZero!12953 (index!54206 (_ BitVec 32))) (Found!12953 (index!54207 (_ BitVec 32))) (Intermediate!12953 (undefined!13765 Bool) (index!54208 (_ BitVec 32)) (x!135900 (_ BitVec 32))) (Undefined!12953) (MissingVacant!12953 (index!54209 (_ BitVec 32))) )
))
(declare-fun lt!657764 () SeekEntryResult!12953)

(declare-fun i!961 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101057 (_ BitVec 32)) SeekEntryResult!12953)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1517443 (= res!1037421 (= lt!657764 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48761 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48761 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101058 (store (arr!48761 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49312 a!2804)) mask!2512)))))

(declare-fun b!1517444 () Bool)

(declare-fun res!1037424 () Bool)

(declare-fun e!846646 () Bool)

(assert (=> b!1517444 (=> (not res!1037424) (not e!846646))))

(declare-datatypes ((List!35424 0))(
  ( (Nil!35421) (Cons!35420 (h!36833 (_ BitVec 64)) (t!50125 List!35424)) )
))
(declare-fun arrayNoDuplicates!0 (array!101057 (_ BitVec 32) List!35424) Bool)

(assert (=> b!1517444 (= res!1037424 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35421))))

(declare-fun b!1517445 () Bool)

(assert (=> b!1517445 (= e!846646 e!846642)))

(declare-fun res!1037420 () Bool)

(assert (=> b!1517445 (=> (not res!1037420) (not e!846642))))

(declare-fun lt!657763 () SeekEntryResult!12953)

(assert (=> b!1517445 (= res!1037420 (= lt!657764 lt!657763))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1517445 (= lt!657763 (Intermediate!12953 false resIndex!21 resX!21))))

(assert (=> b!1517445 (= lt!657764 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48761 a!2804) j!70) mask!2512) (select (arr!48761 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1517446 () Bool)

(declare-fun res!1037422 () Bool)

(assert (=> b!1517446 (=> (not res!1037422) (not e!846646))))

(assert (=> b!1517446 (= res!1037422 (and (= (size!49312 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49312 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49312 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1517447 () Bool)

(declare-fun e!846647 () Bool)

(declare-fun e!846643 () Bool)

(assert (=> b!1517447 (= e!846647 e!846643)))

(declare-fun res!1037423 () Bool)

(assert (=> b!1517447 (=> res!1037423 e!846643)))

(declare-fun lt!657766 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1517447 (= res!1037423 (or (bvslt (bvadd #b00000000000000000000000000000001 x!534) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!534) #b01111111111111111111111111111110) (bvslt lt!657766 #b00000000000000000000000000000000) (bvsge lt!657766 (size!49312 a!2804))))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1517447 (= lt!657766 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1517448 () Bool)

(declare-fun res!1037426 () Bool)

(assert (=> b!1517448 (=> (not res!1037426) (not e!846646))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101057 (_ BitVec 32)) Bool)

(assert (=> b!1517448 (= res!1037426 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1517449 () Bool)

(declare-fun res!1037425 () Bool)

(assert (=> b!1517449 (=> (not res!1037425) (not e!846646))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1517449 (= res!1037425 (validKeyInArray!0 (select (arr!48761 a!2804) j!70)))))

(declare-fun b!1517450 () Bool)

(declare-fun res!1037419 () Bool)

(assert (=> b!1517450 (=> (not res!1037419) (not e!846646))))

(assert (=> b!1517450 (= res!1037419 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49312 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49312 a!2804))))))

(declare-fun b!1517451 () Bool)

(declare-fun res!1037427 () Bool)

(assert (=> b!1517451 (=> (not res!1037427) (not e!846642))))

(assert (=> b!1517451 (= res!1037427 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48761 a!2804) j!70) a!2804 mask!2512) lt!657763))))

(declare-fun b!1517452 () Bool)

(assert (=> b!1517452 (= e!846643 true)))

(declare-fun lt!657762 () SeekEntryResult!12953)

(assert (=> b!1517452 (= lt!657762 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!534) lt!657766 (select (arr!48761 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1517453 () Bool)

(declare-fun e!846645 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101057 (_ BitVec 32)) SeekEntryResult!12953)

(assert (=> b!1517453 (= e!846645 (= (seekEntry!0 (select (arr!48761 a!2804) j!70) a!2804 mask!2512) (Found!12953 j!70)))))

(declare-fun res!1037418 () Bool)

(assert (=> start!129288 (=> (not res!1037418) (not e!846646))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129288 (= res!1037418 (validMask!0 mask!2512))))

(assert (=> start!129288 e!846646))

(assert (=> start!129288 true))

(declare-fun array_inv!37706 (array!101057) Bool)

(assert (=> start!129288 (array_inv!37706 a!2804)))

(declare-fun b!1517454 () Bool)

(declare-fun res!1037430 () Bool)

(assert (=> b!1517454 (=> (not res!1037430) (not e!846646))))

(assert (=> b!1517454 (= res!1037430 (validKeyInArray!0 (select (arr!48761 a!2804) i!961)))))

(declare-fun b!1517455 () Bool)

(assert (=> b!1517455 (= e!846642 (not e!846647))))

(declare-fun res!1037428 () Bool)

(assert (=> b!1517455 (=> res!1037428 e!846647)))

(assert (=> b!1517455 (= res!1037428 (or (not (= (select (arr!48761 a!2804) j!70) (select (store (arr!48761 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (= x!534 resX!21)))))

(assert (=> b!1517455 e!846645))

(declare-fun res!1037429 () Bool)

(assert (=> b!1517455 (=> (not res!1037429) (not e!846645))))

(assert (=> b!1517455 (= res!1037429 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50730 0))(
  ( (Unit!50731) )
))
(declare-fun lt!657765 () Unit!50730)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101057 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50730)

(assert (=> b!1517455 (= lt!657765 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(assert (= (and start!129288 res!1037418) b!1517446))

(assert (= (and b!1517446 res!1037422) b!1517454))

(assert (= (and b!1517454 res!1037430) b!1517449))

(assert (= (and b!1517449 res!1037425) b!1517448))

(assert (= (and b!1517448 res!1037426) b!1517444))

(assert (= (and b!1517444 res!1037424) b!1517450))

(assert (= (and b!1517450 res!1037419) b!1517445))

(assert (= (and b!1517445 res!1037420) b!1517451))

(assert (= (and b!1517451 res!1037427) b!1517443))

(assert (= (and b!1517443 res!1037421) b!1517455))

(assert (= (and b!1517455 res!1037429) b!1517453))

(assert (= (and b!1517455 (not res!1037428)) b!1517447))

(assert (= (and b!1517447 (not res!1037423)) b!1517452))

(declare-fun m!1400791 () Bool)

(assert (=> b!1517445 m!1400791))

(assert (=> b!1517445 m!1400791))

(declare-fun m!1400793 () Bool)

(assert (=> b!1517445 m!1400793))

(assert (=> b!1517445 m!1400793))

(assert (=> b!1517445 m!1400791))

(declare-fun m!1400795 () Bool)

(assert (=> b!1517445 m!1400795))

(declare-fun m!1400797 () Bool)

(assert (=> b!1517447 m!1400797))

(declare-fun m!1400799 () Bool)

(assert (=> b!1517443 m!1400799))

(declare-fun m!1400801 () Bool)

(assert (=> b!1517443 m!1400801))

(assert (=> b!1517443 m!1400801))

(declare-fun m!1400803 () Bool)

(assert (=> b!1517443 m!1400803))

(assert (=> b!1517443 m!1400803))

(assert (=> b!1517443 m!1400801))

(declare-fun m!1400805 () Bool)

(assert (=> b!1517443 m!1400805))

(declare-fun m!1400807 () Bool)

(assert (=> start!129288 m!1400807))

(declare-fun m!1400809 () Bool)

(assert (=> start!129288 m!1400809))

(declare-fun m!1400811 () Bool)

(assert (=> b!1517444 m!1400811))

(assert (=> b!1517451 m!1400791))

(assert (=> b!1517451 m!1400791))

(declare-fun m!1400813 () Bool)

(assert (=> b!1517451 m!1400813))

(assert (=> b!1517455 m!1400791))

(declare-fun m!1400815 () Bool)

(assert (=> b!1517455 m!1400815))

(assert (=> b!1517455 m!1400799))

(assert (=> b!1517455 m!1400801))

(declare-fun m!1400817 () Bool)

(assert (=> b!1517455 m!1400817))

(assert (=> b!1517453 m!1400791))

(assert (=> b!1517453 m!1400791))

(declare-fun m!1400819 () Bool)

(assert (=> b!1517453 m!1400819))

(declare-fun m!1400821 () Bool)

(assert (=> b!1517454 m!1400821))

(assert (=> b!1517454 m!1400821))

(declare-fun m!1400823 () Bool)

(assert (=> b!1517454 m!1400823))

(declare-fun m!1400825 () Bool)

(assert (=> b!1517448 m!1400825))

(assert (=> b!1517452 m!1400791))

(assert (=> b!1517452 m!1400791))

(declare-fun m!1400827 () Bool)

(assert (=> b!1517452 m!1400827))

(assert (=> b!1517449 m!1400791))

(assert (=> b!1517449 m!1400791))

(declare-fun m!1400829 () Bool)

(assert (=> b!1517449 m!1400829))

(check-sat (not start!129288) (not b!1517449) (not b!1517444) (not b!1517452) (not b!1517447) (not b!1517451) (not b!1517443) (not b!1517455) (not b!1517445) (not b!1517448) (not b!1517454) (not b!1517453))
(check-sat)
