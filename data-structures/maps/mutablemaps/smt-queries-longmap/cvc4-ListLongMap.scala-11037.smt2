; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129104 () Bool)

(assert start!129104)

(declare-fun b!1513836 () Bool)

(declare-fun e!844901 () Bool)

(declare-fun e!844896 () Bool)

(assert (=> b!1513836 (= e!844901 e!844896)))

(declare-fun res!1033815 () Bool)

(assert (=> b!1513836 (=> (not res!1033815) (not e!844896))))

(declare-datatypes ((SeekEntryResult!12861 0))(
  ( (MissingZero!12861 (index!53838 (_ BitVec 32))) (Found!12861 (index!53839 (_ BitVec 32))) (Intermediate!12861 (undefined!13673 Bool) (index!53840 (_ BitVec 32)) (x!135560 (_ BitVec 32))) (Undefined!12861) (MissingVacant!12861 (index!53841 (_ BitVec 32))) )
))
(declare-fun lt!656097 () SeekEntryResult!12861)

(declare-fun lt!656095 () (_ BitVec 64))

(declare-datatypes ((array!100873 0))(
  ( (array!100874 (arr!48669 (Array (_ BitVec 32) (_ BitVec 64))) (size!49220 (_ BitVec 32))) )
))
(declare-fun lt!656094 () array!100873)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100873 (_ BitVec 32)) SeekEntryResult!12861)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1513836 (= res!1033815 (= lt!656097 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!656095 mask!2512) lt!656095 lt!656094 mask!2512)))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun a!2804 () array!100873)

(assert (=> b!1513836 (= lt!656095 (select (store (arr!48669 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1513836 (= lt!656094 (array!100874 (store (arr!48669 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49220 a!2804)))))

(declare-fun b!1513838 () Bool)

(declare-fun res!1033817 () Bool)

(declare-fun e!844898 () Bool)

(assert (=> b!1513838 (=> (not res!1033817) (not e!844898))))

(assert (=> b!1513838 (= res!1033817 (and (= (size!49220 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49220 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49220 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1513839 () Bool)

(assert (=> b!1513839 (= e!844896 (not true))))

(declare-fun e!844899 () Bool)

(assert (=> b!1513839 e!844899))

(declare-fun res!1033824 () Bool)

(assert (=> b!1513839 (=> (not res!1033824) (not e!844899))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100873 (_ BitVec 32)) Bool)

(assert (=> b!1513839 (= res!1033824 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50546 0))(
  ( (Unit!50547) )
))
(declare-fun lt!656096 () Unit!50546)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100873 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50546)

(assert (=> b!1513839 (= lt!656096 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1513840 () Bool)

(declare-fun res!1033823 () Bool)

(assert (=> b!1513840 (=> (not res!1033823) (not e!844898))))

(declare-datatypes ((List!35332 0))(
  ( (Nil!35329) (Cons!35328 (h!36741 (_ BitVec 64)) (t!50033 List!35332)) )
))
(declare-fun arrayNoDuplicates!0 (array!100873 (_ BitVec 32) List!35332) Bool)

(assert (=> b!1513840 (= res!1033823 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35329))))

(declare-fun b!1513841 () Bool)

(declare-fun res!1033812 () Bool)

(assert (=> b!1513841 (=> (not res!1033812) (not e!844899))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!100873 (_ BitVec 32)) SeekEntryResult!12861)

(assert (=> b!1513841 (= res!1033812 (= (seekEntry!0 (select (arr!48669 a!2804) j!70) a!2804 mask!2512) (Found!12861 j!70)))))

(declare-fun b!1513842 () Bool)

(declare-fun res!1033822 () Bool)

(assert (=> b!1513842 (=> (not res!1033822) (not e!844898))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1513842 (= res!1033822 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49220 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49220 a!2804))))))

(declare-fun b!1513843 () Bool)

(assert (=> b!1513843 (= e!844898 e!844901)))

(declare-fun res!1033811 () Bool)

(assert (=> b!1513843 (=> (not res!1033811) (not e!844901))))

(declare-fun lt!656098 () SeekEntryResult!12861)

(assert (=> b!1513843 (= res!1033811 (= lt!656097 lt!656098))))

(assert (=> b!1513843 (= lt!656098 (Intermediate!12861 false resIndex!21 resX!21))))

(assert (=> b!1513843 (= lt!656097 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48669 a!2804) j!70) mask!2512) (select (arr!48669 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1513844 () Bool)

(declare-fun res!1033813 () Bool)

(assert (=> b!1513844 (=> (not res!1033813) (not e!844898))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1513844 (= res!1033813 (validKeyInArray!0 (select (arr!48669 a!2804) j!70)))))

(declare-fun b!1513845 () Bool)

(declare-fun e!844895 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100873 (_ BitVec 32)) SeekEntryResult!12861)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100873 (_ BitVec 32)) SeekEntryResult!12861)

(assert (=> b!1513845 (= e!844895 (= (seekEntryOrOpen!0 lt!656095 lt!656094 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!656095 lt!656094 mask!2512)))))

(declare-fun b!1513846 () Bool)

(declare-fun e!844897 () Bool)

(assert (=> b!1513846 (= e!844897 e!844895)))

(declare-fun res!1033816 () Bool)

(assert (=> b!1513846 (=> (not res!1033816) (not e!844895))))

(assert (=> b!1513846 (= res!1033816 (= (seekEntryOrOpen!0 (select (arr!48669 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48669 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1513847 () Bool)

(declare-fun res!1033820 () Bool)

(assert (=> b!1513847 (=> (not res!1033820) (not e!844901))))

(assert (=> b!1513847 (= res!1033820 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48669 a!2804) j!70) a!2804 mask!2512) lt!656098))))

(declare-fun b!1513837 () Bool)

(declare-fun res!1033819 () Bool)

(assert (=> b!1513837 (=> (not res!1033819) (not e!844898))))

(assert (=> b!1513837 (= res!1033819 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun res!1033814 () Bool)

(assert (=> start!129104 (=> (not res!1033814) (not e!844898))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129104 (= res!1033814 (validMask!0 mask!2512))))

(assert (=> start!129104 e!844898))

(assert (=> start!129104 true))

(declare-fun array_inv!37614 (array!100873) Bool)

(assert (=> start!129104 (array_inv!37614 a!2804)))

(declare-fun b!1513848 () Bool)

(declare-fun res!1033821 () Bool)

(assert (=> b!1513848 (=> (not res!1033821) (not e!844898))))

(assert (=> b!1513848 (= res!1033821 (validKeyInArray!0 (select (arr!48669 a!2804) i!961)))))

(declare-fun b!1513849 () Bool)

(assert (=> b!1513849 (= e!844899 e!844897)))

(declare-fun res!1033818 () Bool)

(assert (=> b!1513849 (=> res!1033818 e!844897)))

(assert (=> b!1513849 (= res!1033818 (or (not (= (select (arr!48669 a!2804) j!70) lt!656095)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48669 a!2804) index!487) (select (arr!48669 a!2804) j!70)) (not (= (select (arr!48669 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and start!129104 res!1033814) b!1513838))

(assert (= (and b!1513838 res!1033817) b!1513848))

(assert (= (and b!1513848 res!1033821) b!1513844))

(assert (= (and b!1513844 res!1033813) b!1513837))

(assert (= (and b!1513837 res!1033819) b!1513840))

(assert (= (and b!1513840 res!1033823) b!1513842))

(assert (= (and b!1513842 res!1033822) b!1513843))

(assert (= (and b!1513843 res!1033811) b!1513847))

(assert (= (and b!1513847 res!1033820) b!1513836))

(assert (= (and b!1513836 res!1033815) b!1513839))

(assert (= (and b!1513839 res!1033824) b!1513841))

(assert (= (and b!1513841 res!1033812) b!1513849))

(assert (= (and b!1513849 (not res!1033818)) b!1513846))

(assert (= (and b!1513846 res!1033816) b!1513845))

(declare-fun m!1396793 () Bool)

(assert (=> b!1513839 m!1396793))

(declare-fun m!1396795 () Bool)

(assert (=> b!1513839 m!1396795))

(declare-fun m!1396797 () Bool)

(assert (=> b!1513844 m!1396797))

(assert (=> b!1513844 m!1396797))

(declare-fun m!1396799 () Bool)

(assert (=> b!1513844 m!1396799))

(assert (=> b!1513849 m!1396797))

(declare-fun m!1396801 () Bool)

(assert (=> b!1513849 m!1396801))

(declare-fun m!1396803 () Bool)

(assert (=> start!129104 m!1396803))

(declare-fun m!1396805 () Bool)

(assert (=> start!129104 m!1396805))

(declare-fun m!1396807 () Bool)

(assert (=> b!1513848 m!1396807))

(assert (=> b!1513848 m!1396807))

(declare-fun m!1396809 () Bool)

(assert (=> b!1513848 m!1396809))

(declare-fun m!1396811 () Bool)

(assert (=> b!1513837 m!1396811))

(assert (=> b!1513843 m!1396797))

(assert (=> b!1513843 m!1396797))

(declare-fun m!1396813 () Bool)

(assert (=> b!1513843 m!1396813))

(assert (=> b!1513843 m!1396813))

(assert (=> b!1513843 m!1396797))

(declare-fun m!1396815 () Bool)

(assert (=> b!1513843 m!1396815))

(assert (=> b!1513847 m!1396797))

(assert (=> b!1513847 m!1396797))

(declare-fun m!1396817 () Bool)

(assert (=> b!1513847 m!1396817))

(assert (=> b!1513846 m!1396797))

(assert (=> b!1513846 m!1396797))

(declare-fun m!1396819 () Bool)

(assert (=> b!1513846 m!1396819))

(assert (=> b!1513846 m!1396797))

(declare-fun m!1396821 () Bool)

(assert (=> b!1513846 m!1396821))

(assert (=> b!1513841 m!1396797))

(assert (=> b!1513841 m!1396797))

(declare-fun m!1396823 () Bool)

(assert (=> b!1513841 m!1396823))

(declare-fun m!1396825 () Bool)

(assert (=> b!1513840 m!1396825))

(declare-fun m!1396827 () Bool)

(assert (=> b!1513836 m!1396827))

(assert (=> b!1513836 m!1396827))

(declare-fun m!1396829 () Bool)

(assert (=> b!1513836 m!1396829))

(declare-fun m!1396831 () Bool)

(assert (=> b!1513836 m!1396831))

(declare-fun m!1396833 () Bool)

(assert (=> b!1513836 m!1396833))

(declare-fun m!1396835 () Bool)

(assert (=> b!1513845 m!1396835))

(declare-fun m!1396837 () Bool)

(assert (=> b!1513845 m!1396837))

(push 1)

