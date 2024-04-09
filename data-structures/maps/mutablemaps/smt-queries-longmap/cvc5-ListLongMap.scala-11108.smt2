; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129784 () Bool)

(assert start!129784)

(declare-fun b!1522758 () Bool)

(declare-fun e!849091 () Bool)

(declare-fun e!849090 () Bool)

(assert (=> b!1522758 (= e!849091 e!849090)))

(declare-fun res!1041811 () Bool)

(assert (=> b!1522758 (=> (not res!1041811) (not e!849090))))

(declare-datatypes ((SeekEntryResult!13066 0))(
  ( (MissingZero!13066 (index!54658 (_ BitVec 32))) (Found!13066 (index!54659 (_ BitVec 32))) (Intermediate!13066 (undefined!13878 Bool) (index!54660 (_ BitVec 32)) (x!136363 (_ BitVec 32))) (Undefined!13066) (MissingVacant!13066 (index!54661 (_ BitVec 32))) )
))
(declare-fun lt!659725 () SeekEntryResult!13066)

(declare-fun lt!659724 () SeekEntryResult!13066)

(assert (=> b!1522758 (= res!1041811 (= lt!659725 lt!659724))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1522758 (= lt!659724 (Intermediate!13066 false resIndex!21 resX!21))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!101307 0))(
  ( (array!101308 (arr!48880 (Array (_ BitVec 32) (_ BitVec 64))) (size!49431 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101307)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101307 (_ BitVec 32)) SeekEntryResult!13066)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1522758 (= lt!659725 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48880 a!2804) j!70) mask!2512) (select (arr!48880 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1522759 () Bool)

(declare-fun res!1041813 () Bool)

(assert (=> b!1522759 (=> (not res!1041813) (not e!849091))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101307 (_ BitVec 32)) Bool)

(assert (=> b!1522759 (= res!1041813 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun res!1041806 () Bool)

(assert (=> start!129784 (=> (not res!1041806) (not e!849091))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129784 (= res!1041806 (validMask!0 mask!2512))))

(assert (=> start!129784 e!849091))

(assert (=> start!129784 true))

(declare-fun array_inv!37825 (array!101307) Bool)

(assert (=> start!129784 (array_inv!37825 a!2804)))

(declare-fun e!849092 () Bool)

(declare-fun b!1522760 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101307 (_ BitVec 32)) SeekEntryResult!13066)

(assert (=> b!1522760 (= e!849092 (= (seekEntry!0 (select (arr!48880 a!2804) j!70) a!2804 mask!2512) (Found!13066 j!70)))))

(declare-fun b!1522761 () Bool)

(declare-fun res!1041805 () Bool)

(assert (=> b!1522761 (=> (not res!1041805) (not e!849090))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1522761 (= res!1041805 (= lt!659725 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48880 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48880 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101308 (store (arr!48880 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49431 a!2804)) mask!2512)))))

(declare-fun b!1522762 () Bool)

(declare-fun res!1041809 () Bool)

(assert (=> b!1522762 (=> (not res!1041809) (not e!849090))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1522762 (= res!1041809 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48880 a!2804) j!70) a!2804 mask!2512) lt!659724))))

(declare-fun b!1522763 () Bool)

(declare-fun res!1041808 () Bool)

(assert (=> b!1522763 (=> (not res!1041808) (not e!849091))))

(assert (=> b!1522763 (= res!1041808 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49431 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49431 a!2804))))))

(declare-fun b!1522764 () Bool)

(declare-fun res!1041807 () Bool)

(assert (=> b!1522764 (=> (not res!1041807) (not e!849091))))

(declare-datatypes ((List!35543 0))(
  ( (Nil!35540) (Cons!35539 (h!36964 (_ BitVec 64)) (t!50244 List!35543)) )
))
(declare-fun arrayNoDuplicates!0 (array!101307 (_ BitVec 32) List!35543) Bool)

(assert (=> b!1522764 (= res!1041807 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35540))))

(declare-fun b!1522765 () Bool)

(declare-fun res!1041804 () Bool)

(assert (=> b!1522765 (=> (not res!1041804) (not e!849091))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1522765 (= res!1041804 (validKeyInArray!0 (select (arr!48880 a!2804) i!961)))))

(declare-fun b!1522766 () Bool)

(declare-fun res!1041810 () Bool)

(assert (=> b!1522766 (=> (not res!1041810) (not e!849091))))

(assert (=> b!1522766 (= res!1041810 (validKeyInArray!0 (select (arr!48880 a!2804) j!70)))))

(declare-fun b!1522767 () Bool)

(assert (=> b!1522767 (= e!849090 (not true))))

(assert (=> b!1522767 e!849092))

(declare-fun res!1041803 () Bool)

(assert (=> b!1522767 (=> (not res!1041803) (not e!849092))))

(assert (=> b!1522767 (= res!1041803 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50872 0))(
  ( (Unit!50873) )
))
(declare-fun lt!659723 () Unit!50872)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101307 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50872)

(assert (=> b!1522767 (= lt!659723 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1522768 () Bool)

(declare-fun res!1041812 () Bool)

(assert (=> b!1522768 (=> (not res!1041812) (not e!849091))))

(assert (=> b!1522768 (= res!1041812 (and (= (size!49431 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49431 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49431 a!2804)) (not (= i!961 j!70))))))

(assert (= (and start!129784 res!1041806) b!1522768))

(assert (= (and b!1522768 res!1041812) b!1522765))

(assert (= (and b!1522765 res!1041804) b!1522766))

(assert (= (and b!1522766 res!1041810) b!1522759))

(assert (= (and b!1522759 res!1041813) b!1522764))

(assert (= (and b!1522764 res!1041807) b!1522763))

(assert (= (and b!1522763 res!1041808) b!1522758))

(assert (= (and b!1522758 res!1041811) b!1522762))

(assert (= (and b!1522762 res!1041809) b!1522761))

(assert (= (and b!1522761 res!1041805) b!1522767))

(assert (= (and b!1522767 res!1041803) b!1522760))

(declare-fun m!1405875 () Bool)

(assert (=> b!1522767 m!1405875))

(declare-fun m!1405877 () Bool)

(assert (=> b!1522767 m!1405877))

(declare-fun m!1405879 () Bool)

(assert (=> b!1522764 m!1405879))

(declare-fun m!1405881 () Bool)

(assert (=> b!1522765 m!1405881))

(assert (=> b!1522765 m!1405881))

(declare-fun m!1405883 () Bool)

(assert (=> b!1522765 m!1405883))

(declare-fun m!1405885 () Bool)

(assert (=> start!129784 m!1405885))

(declare-fun m!1405887 () Bool)

(assert (=> start!129784 m!1405887))

(declare-fun m!1405889 () Bool)

(assert (=> b!1522759 m!1405889))

(declare-fun m!1405891 () Bool)

(assert (=> b!1522760 m!1405891))

(assert (=> b!1522760 m!1405891))

(declare-fun m!1405893 () Bool)

(assert (=> b!1522760 m!1405893))

(assert (=> b!1522762 m!1405891))

(assert (=> b!1522762 m!1405891))

(declare-fun m!1405895 () Bool)

(assert (=> b!1522762 m!1405895))

(assert (=> b!1522758 m!1405891))

(assert (=> b!1522758 m!1405891))

(declare-fun m!1405897 () Bool)

(assert (=> b!1522758 m!1405897))

(assert (=> b!1522758 m!1405897))

(assert (=> b!1522758 m!1405891))

(declare-fun m!1405899 () Bool)

(assert (=> b!1522758 m!1405899))

(declare-fun m!1405901 () Bool)

(assert (=> b!1522761 m!1405901))

(declare-fun m!1405903 () Bool)

(assert (=> b!1522761 m!1405903))

(assert (=> b!1522761 m!1405903))

(declare-fun m!1405905 () Bool)

(assert (=> b!1522761 m!1405905))

(assert (=> b!1522761 m!1405905))

(assert (=> b!1522761 m!1405903))

(declare-fun m!1405907 () Bool)

(assert (=> b!1522761 m!1405907))

(assert (=> b!1522766 m!1405891))

(assert (=> b!1522766 m!1405891))

(declare-fun m!1405909 () Bool)

(assert (=> b!1522766 m!1405909))

(push 1)

