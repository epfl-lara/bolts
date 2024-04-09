; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129788 () Bool)

(assert start!129788)

(declare-fun b!1522824 () Bool)

(declare-fun res!1041873 () Bool)

(declare-fun e!849114 () Bool)

(assert (=> b!1522824 (=> (not res!1041873) (not e!849114))))

(declare-datatypes ((SeekEntryResult!13068 0))(
  ( (MissingZero!13068 (index!54666 (_ BitVec 32))) (Found!13068 (index!54667 (_ BitVec 32))) (Intermediate!13068 (undefined!13880 Bool) (index!54668 (_ BitVec 32)) (x!136365 (_ BitVec 32))) (Undefined!13068) (MissingVacant!13068 (index!54669 (_ BitVec 32))) )
))
(declare-fun lt!659741 () SeekEntryResult!13068)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-datatypes ((array!101311 0))(
  ( (array!101312 (arr!48882 (Array (_ BitVec 32) (_ BitVec 64))) (size!49433 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101311)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101311 (_ BitVec 32)) SeekEntryResult!13068)

(assert (=> b!1522824 (= res!1041873 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48882 a!2804) j!70) a!2804 mask!2512) lt!659741))))

(declare-fun b!1522825 () Bool)

(declare-fun e!849116 () Bool)

(assert (=> b!1522825 (= e!849116 e!849114)))

(declare-fun res!1041870 () Bool)

(assert (=> b!1522825 (=> (not res!1041870) (not e!849114))))

(declare-fun lt!659743 () SeekEntryResult!13068)

(assert (=> b!1522825 (= res!1041870 (= lt!659743 lt!659741))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1522825 (= lt!659741 (Intermediate!13068 false resIndex!21 resX!21))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1522825 (= lt!659743 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48882 a!2804) j!70) mask!2512) (select (arr!48882 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1522826 () Bool)

(declare-fun res!1041874 () Bool)

(assert (=> b!1522826 (=> (not res!1041874) (not e!849116))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1522826 (= res!1041874 (validKeyInArray!0 (select (arr!48882 a!2804) j!70)))))

(declare-fun b!1522827 () Bool)

(declare-fun res!1041871 () Bool)

(assert (=> b!1522827 (=> (not res!1041871) (not e!849116))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1522827 (= res!1041871 (validKeyInArray!0 (select (arr!48882 a!2804) i!961)))))

(declare-fun b!1522828 () Bool)

(declare-fun res!1041875 () Bool)

(assert (=> b!1522828 (=> (not res!1041875) (not e!849116))))

(declare-datatypes ((List!35545 0))(
  ( (Nil!35542) (Cons!35541 (h!36966 (_ BitVec 64)) (t!50246 List!35545)) )
))
(declare-fun arrayNoDuplicates!0 (array!101311 (_ BitVec 32) List!35545) Bool)

(assert (=> b!1522828 (= res!1041875 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35542))))

(declare-fun res!1041872 () Bool)

(assert (=> start!129788 (=> (not res!1041872) (not e!849116))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129788 (= res!1041872 (validMask!0 mask!2512))))

(assert (=> start!129788 e!849116))

(assert (=> start!129788 true))

(declare-fun array_inv!37827 (array!101311) Bool)

(assert (=> start!129788 (array_inv!37827 a!2804)))

(declare-fun b!1522829 () Bool)

(declare-fun res!1041876 () Bool)

(assert (=> b!1522829 (=> (not res!1041876) (not e!849114))))

(assert (=> b!1522829 (= res!1041876 (= lt!659743 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48882 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48882 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101312 (store (arr!48882 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49433 a!2804)) mask!2512)))))

(declare-fun b!1522830 () Bool)

(declare-fun res!1041879 () Bool)

(assert (=> b!1522830 (=> (not res!1041879) (not e!849116))))

(assert (=> b!1522830 (= res!1041879 (and (= (size!49433 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49433 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49433 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1522831 () Bool)

(declare-fun res!1041869 () Bool)

(assert (=> b!1522831 (=> (not res!1041869) (not e!849116))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101311 (_ BitVec 32)) Bool)

(assert (=> b!1522831 (= res!1041869 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun e!849115 () Bool)

(declare-fun b!1522832 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101311 (_ BitVec 32)) SeekEntryResult!13068)

(assert (=> b!1522832 (= e!849115 (= (seekEntry!0 (select (arr!48882 a!2804) j!70) a!2804 mask!2512) (Found!13068 j!70)))))

(declare-fun b!1522833 () Bool)

(assert (=> b!1522833 (= e!849114 (not true))))

(assert (=> b!1522833 e!849115))

(declare-fun res!1041878 () Bool)

(assert (=> b!1522833 (=> (not res!1041878) (not e!849115))))

(assert (=> b!1522833 (= res!1041878 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50876 0))(
  ( (Unit!50877) )
))
(declare-fun lt!659742 () Unit!50876)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101311 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50876)

(assert (=> b!1522833 (= lt!659742 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1522834 () Bool)

(declare-fun res!1041877 () Bool)

(assert (=> b!1522834 (=> (not res!1041877) (not e!849116))))

(assert (=> b!1522834 (= res!1041877 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49433 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49433 a!2804))))))

(assert (= (and start!129788 res!1041872) b!1522830))

(assert (= (and b!1522830 res!1041879) b!1522827))

(assert (= (and b!1522827 res!1041871) b!1522826))

(assert (= (and b!1522826 res!1041874) b!1522831))

(assert (= (and b!1522831 res!1041869) b!1522828))

(assert (= (and b!1522828 res!1041875) b!1522834))

(assert (= (and b!1522834 res!1041877) b!1522825))

(assert (= (and b!1522825 res!1041870) b!1522824))

(assert (= (and b!1522824 res!1041873) b!1522829))

(assert (= (and b!1522829 res!1041876) b!1522833))

(assert (= (and b!1522833 res!1041878) b!1522832))

(declare-fun m!1405947 () Bool)

(assert (=> start!129788 m!1405947))

(declare-fun m!1405949 () Bool)

(assert (=> start!129788 m!1405949))

(declare-fun m!1405951 () Bool)

(assert (=> b!1522827 m!1405951))

(assert (=> b!1522827 m!1405951))

(declare-fun m!1405953 () Bool)

(assert (=> b!1522827 m!1405953))

(declare-fun m!1405955 () Bool)

(assert (=> b!1522826 m!1405955))

(assert (=> b!1522826 m!1405955))

(declare-fun m!1405957 () Bool)

(assert (=> b!1522826 m!1405957))

(declare-fun m!1405959 () Bool)

(assert (=> b!1522833 m!1405959))

(declare-fun m!1405961 () Bool)

(assert (=> b!1522833 m!1405961))

(assert (=> b!1522825 m!1405955))

(assert (=> b!1522825 m!1405955))

(declare-fun m!1405963 () Bool)

(assert (=> b!1522825 m!1405963))

(assert (=> b!1522825 m!1405963))

(assert (=> b!1522825 m!1405955))

(declare-fun m!1405965 () Bool)

(assert (=> b!1522825 m!1405965))

(assert (=> b!1522824 m!1405955))

(assert (=> b!1522824 m!1405955))

(declare-fun m!1405967 () Bool)

(assert (=> b!1522824 m!1405967))

(assert (=> b!1522832 m!1405955))

(assert (=> b!1522832 m!1405955))

(declare-fun m!1405969 () Bool)

(assert (=> b!1522832 m!1405969))

(declare-fun m!1405971 () Bool)

(assert (=> b!1522828 m!1405971))

(declare-fun m!1405973 () Bool)

(assert (=> b!1522829 m!1405973))

(declare-fun m!1405975 () Bool)

(assert (=> b!1522829 m!1405975))

(assert (=> b!1522829 m!1405975))

(declare-fun m!1405977 () Bool)

(assert (=> b!1522829 m!1405977))

(assert (=> b!1522829 m!1405977))

(assert (=> b!1522829 m!1405975))

(declare-fun m!1405979 () Bool)

(assert (=> b!1522829 m!1405979))

(declare-fun m!1405981 () Bool)

(assert (=> b!1522831 m!1405981))

(push 1)

(assert (not b!1522824))

(assert (not b!1522825))

(assert (not b!1522832))

