; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129058 () Bool)

(assert start!129058)

(declare-fun b!1512870 () Bool)

(declare-fun e!844415 () Bool)

(declare-fun e!844412 () Bool)

(assert (=> b!1512870 (= e!844415 e!844412)))

(declare-fun res!1032847 () Bool)

(assert (=> b!1512870 (=> res!1032847 e!844412)))

(declare-fun lt!655758 () (_ BitVec 64))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-datatypes ((array!100827 0))(
  ( (array!100828 (arr!48646 (Array (_ BitVec 32) (_ BitVec 64))) (size!49197 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100827)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1512870 (= res!1032847 (or (not (= (select (arr!48646 a!2804) j!70) lt!655758)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48646 a!2804) index!487) (select (arr!48646 a!2804) j!70)) (not (= (select (arr!48646 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1512871 () Bool)

(declare-fun e!844416 () Bool)

(declare-fun e!844413 () Bool)

(assert (=> b!1512871 (= e!844416 e!844413)))

(declare-fun res!1032852 () Bool)

(assert (=> b!1512871 (=> (not res!1032852) (not e!844413))))

(declare-datatypes ((SeekEntryResult!12838 0))(
  ( (MissingZero!12838 (index!53746 (_ BitVec 32))) (Found!12838 (index!53747 (_ BitVec 32))) (Intermediate!12838 (undefined!13650 Bool) (index!53748 (_ BitVec 32)) (x!135481 (_ BitVec 32))) (Undefined!12838) (MissingVacant!12838 (index!53749 (_ BitVec 32))) )
))
(declare-fun lt!655759 () SeekEntryResult!12838)

(declare-fun lt!655757 () SeekEntryResult!12838)

(assert (=> b!1512871 (= res!1032852 (= lt!655759 lt!655757))))

(assert (=> b!1512871 (= lt!655757 (Intermediate!12838 false resIndex!21 resX!21))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100827 (_ BitVec 32)) SeekEntryResult!12838)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1512871 (= lt!655759 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48646 a!2804) j!70) mask!2512) (select (arr!48646 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1512872 () Bool)

(declare-fun e!844418 () Bool)

(assert (=> b!1512872 (= e!844413 e!844418)))

(declare-fun res!1032856 () Bool)

(assert (=> b!1512872 (=> (not res!1032856) (not e!844418))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1512872 (= res!1032856 (= lt!655759 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!655758 mask!2512) lt!655758 (array!100828 (store (arr!48646 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49197 a!2804)) mask!2512)))))

(assert (=> b!1512872 (= lt!655758 (select (store (arr!48646 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(declare-fun b!1512873 () Bool)

(declare-fun e!844417 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1512873 (= e!844417 (validKeyInArray!0 lt!655758))))

(declare-fun b!1512874 () Bool)

(declare-fun res!1032854 () Bool)

(assert (=> b!1512874 (=> (not res!1032854) (not e!844415))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!100827 (_ BitVec 32)) SeekEntryResult!12838)

(assert (=> b!1512874 (= res!1032854 (= (seekEntry!0 (select (arr!48646 a!2804) j!70) a!2804 mask!2512) (Found!12838 j!70)))))

(declare-fun b!1512875 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100827 (_ BitVec 32)) SeekEntryResult!12838)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100827 (_ BitVec 32)) SeekEntryResult!12838)

(assert (=> b!1512875 (= e!844412 (= (seekEntryOrOpen!0 (select (arr!48646 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48646 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1512876 () Bool)

(declare-fun res!1032858 () Bool)

(assert (=> b!1512876 (=> (not res!1032858) (not e!844416))))

(declare-datatypes ((List!35309 0))(
  ( (Nil!35306) (Cons!35305 (h!36718 (_ BitVec 64)) (t!50010 List!35309)) )
))
(declare-fun arrayNoDuplicates!0 (array!100827 (_ BitVec 32) List!35309) Bool)

(assert (=> b!1512876 (= res!1032858 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35306))))

(declare-fun b!1512877 () Bool)

(declare-fun res!1032855 () Bool)

(assert (=> b!1512877 (=> (not res!1032855) (not e!844416))))

(assert (=> b!1512877 (= res!1032855 (validKeyInArray!0 (select (arr!48646 a!2804) i!961)))))

(declare-fun b!1512878 () Bool)

(declare-fun res!1032851 () Bool)

(assert (=> b!1512878 (=> (not res!1032851) (not e!844413))))

(assert (=> b!1512878 (= res!1032851 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48646 a!2804) j!70) a!2804 mask!2512) lt!655757))))

(declare-fun b!1512880 () Bool)

(declare-fun res!1032853 () Bool)

(assert (=> b!1512880 (=> (not res!1032853) (not e!844416))))

(assert (=> b!1512880 (= res!1032853 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49197 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49197 a!2804))))))

(declare-fun b!1512881 () Bool)

(declare-fun res!1032850 () Bool)

(assert (=> b!1512881 (=> (not res!1032850) (not e!844416))))

(assert (=> b!1512881 (= res!1032850 (and (= (size!49197 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49197 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49197 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1512882 () Bool)

(assert (=> b!1512882 (= e!844418 (not e!844417))))

(declare-fun res!1032849 () Bool)

(assert (=> b!1512882 (=> res!1032849 e!844417)))

(assert (=> b!1512882 (= res!1032849 (or (not (= (select (arr!48646 a!2804) j!70) lt!655758)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48646 a!2804) index!487) (select (arr!48646 a!2804) j!70)) (not (= (select (arr!48646 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvslt mask!2512 #b00000000000000000000000000000000) (bvsge index!487 (bvadd #b00000000000000000000000000000001 mask!2512)) (not (= (select (store (arr!48646 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1512882 e!844415))

(declare-fun res!1032857 () Bool)

(assert (=> b!1512882 (=> (not res!1032857) (not e!844415))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100827 (_ BitVec 32)) Bool)

(assert (=> b!1512882 (= res!1032857 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50500 0))(
  ( (Unit!50501) )
))
(declare-fun lt!655756 () Unit!50500)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100827 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50500)

(assert (=> b!1512882 (= lt!655756 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1512883 () Bool)

(declare-fun res!1032846 () Bool)

(assert (=> b!1512883 (=> (not res!1032846) (not e!844416))))

(assert (=> b!1512883 (= res!1032846 (validKeyInArray!0 (select (arr!48646 a!2804) j!70)))))

(declare-fun b!1512879 () Bool)

(declare-fun res!1032845 () Bool)

(assert (=> b!1512879 (=> (not res!1032845) (not e!844416))))

(assert (=> b!1512879 (= res!1032845 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun res!1032848 () Bool)

(assert (=> start!129058 (=> (not res!1032848) (not e!844416))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129058 (= res!1032848 (validMask!0 mask!2512))))

(assert (=> start!129058 e!844416))

(assert (=> start!129058 true))

(declare-fun array_inv!37591 (array!100827) Bool)

(assert (=> start!129058 (array_inv!37591 a!2804)))

(assert (= (and start!129058 res!1032848) b!1512881))

(assert (= (and b!1512881 res!1032850) b!1512877))

(assert (= (and b!1512877 res!1032855) b!1512883))

(assert (= (and b!1512883 res!1032846) b!1512879))

(assert (= (and b!1512879 res!1032845) b!1512876))

(assert (= (and b!1512876 res!1032858) b!1512880))

(assert (= (and b!1512880 res!1032853) b!1512871))

(assert (= (and b!1512871 res!1032852) b!1512878))

(assert (= (and b!1512878 res!1032851) b!1512872))

(assert (= (and b!1512872 res!1032856) b!1512882))

(assert (= (and b!1512882 res!1032857) b!1512874))

(assert (= (and b!1512874 res!1032854) b!1512870))

(assert (= (and b!1512870 (not res!1032847)) b!1512875))

(assert (= (and b!1512882 (not res!1032849)) b!1512873))

(declare-fun m!1395735 () Bool)

(assert (=> b!1512883 m!1395735))

(assert (=> b!1512883 m!1395735))

(declare-fun m!1395737 () Bool)

(assert (=> b!1512883 m!1395737))

(assert (=> b!1512871 m!1395735))

(assert (=> b!1512871 m!1395735))

(declare-fun m!1395739 () Bool)

(assert (=> b!1512871 m!1395739))

(assert (=> b!1512871 m!1395739))

(assert (=> b!1512871 m!1395735))

(declare-fun m!1395741 () Bool)

(assert (=> b!1512871 m!1395741))

(declare-fun m!1395743 () Bool)

(assert (=> b!1512872 m!1395743))

(declare-fun m!1395745 () Bool)

(assert (=> b!1512872 m!1395745))

(assert (=> b!1512872 m!1395743))

(declare-fun m!1395747 () Bool)

(assert (=> b!1512872 m!1395747))

(declare-fun m!1395749 () Bool)

(assert (=> b!1512872 m!1395749))

(declare-fun m!1395751 () Bool)

(assert (=> start!129058 m!1395751))

(declare-fun m!1395753 () Bool)

(assert (=> start!129058 m!1395753))

(declare-fun m!1395755 () Bool)

(assert (=> b!1512877 m!1395755))

(assert (=> b!1512877 m!1395755))

(declare-fun m!1395757 () Bool)

(assert (=> b!1512877 m!1395757))

(assert (=> b!1512878 m!1395735))

(assert (=> b!1512878 m!1395735))

(declare-fun m!1395759 () Bool)

(assert (=> b!1512878 m!1395759))

(declare-fun m!1395761 () Bool)

(assert (=> b!1512876 m!1395761))

(declare-fun m!1395763 () Bool)

(assert (=> b!1512873 m!1395763))

(assert (=> b!1512882 m!1395735))

(declare-fun m!1395765 () Bool)

(assert (=> b!1512882 m!1395765))

(assert (=> b!1512882 m!1395745))

(declare-fun m!1395767 () Bool)

(assert (=> b!1512882 m!1395767))

(declare-fun m!1395769 () Bool)

(assert (=> b!1512882 m!1395769))

(declare-fun m!1395771 () Bool)

(assert (=> b!1512882 m!1395771))

(assert (=> b!1512874 m!1395735))

(assert (=> b!1512874 m!1395735))

(declare-fun m!1395773 () Bool)

(assert (=> b!1512874 m!1395773))

(assert (=> b!1512875 m!1395735))

(assert (=> b!1512875 m!1395735))

(declare-fun m!1395775 () Bool)

(assert (=> b!1512875 m!1395775))

(assert (=> b!1512875 m!1395735))

(declare-fun m!1395777 () Bool)

(assert (=> b!1512875 m!1395777))

(assert (=> b!1512870 m!1395735))

(assert (=> b!1512870 m!1395767))

(declare-fun m!1395779 () Bool)

(assert (=> b!1512879 m!1395779))

(push 1)

