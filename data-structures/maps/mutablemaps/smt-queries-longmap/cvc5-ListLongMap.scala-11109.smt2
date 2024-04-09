; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129790 () Bool)

(assert start!129790)

(declare-fun b!1522857 () Bool)

(declare-fun res!1041904 () Bool)

(declare-fun e!849127 () Bool)

(assert (=> b!1522857 (=> (not res!1041904) (not e!849127))))

(declare-datatypes ((array!101313 0))(
  ( (array!101314 (arr!48883 (Array (_ BitVec 32) (_ BitVec 64))) (size!49434 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101313)

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1522857 (= res!1041904 (validKeyInArray!0 (select (arr!48883 a!2804) i!961)))))

(declare-fun b!1522858 () Bool)

(declare-fun e!849128 () Bool)

(assert (=> b!1522858 (= e!849127 e!849128)))

(declare-fun res!1041911 () Bool)

(assert (=> b!1522858 (=> (not res!1041911) (not e!849128))))

(declare-datatypes ((SeekEntryResult!13069 0))(
  ( (MissingZero!13069 (index!54670 (_ BitVec 32))) (Found!13069 (index!54671 (_ BitVec 32))) (Intermediate!13069 (undefined!13881 Bool) (index!54672 (_ BitVec 32)) (x!136374 (_ BitVec 32))) (Undefined!13069) (MissingVacant!13069 (index!54673 (_ BitVec 32))) )
))
(declare-fun lt!659752 () SeekEntryResult!13069)

(declare-fun lt!659750 () SeekEntryResult!13069)

(assert (=> b!1522858 (= res!1041911 (= lt!659752 lt!659750))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1522858 (= lt!659750 (Intermediate!13069 false resIndex!21 resX!21))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101313 (_ BitVec 32)) SeekEntryResult!13069)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1522858 (= lt!659752 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48883 a!2804) j!70) mask!2512) (select (arr!48883 a!2804) j!70) a!2804 mask!2512))))

(declare-fun res!1041905 () Bool)

(assert (=> start!129790 (=> (not res!1041905) (not e!849127))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129790 (= res!1041905 (validMask!0 mask!2512))))

(assert (=> start!129790 e!849127))

(assert (=> start!129790 true))

(declare-fun array_inv!37828 (array!101313) Bool)

(assert (=> start!129790 (array_inv!37828 a!2804)))

(declare-fun b!1522859 () Bool)

(declare-fun e!849125 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101313 (_ BitVec 32)) SeekEntryResult!13069)

(assert (=> b!1522859 (= e!849125 (= (seekEntry!0 (select (arr!48883 a!2804) j!70) a!2804 mask!2512) (Found!13069 j!70)))))

(declare-fun b!1522860 () Bool)

(declare-fun res!1041912 () Bool)

(assert (=> b!1522860 (=> (not res!1041912) (not e!849128))))

(assert (=> b!1522860 (= res!1041912 (= lt!659752 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48883 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48883 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101314 (store (arr!48883 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49434 a!2804)) mask!2512)))))

(declare-fun b!1522861 () Bool)

(declare-fun res!1041903 () Bool)

(assert (=> b!1522861 (=> (not res!1041903) (not e!849127))))

(assert (=> b!1522861 (= res!1041903 (validKeyInArray!0 (select (arr!48883 a!2804) j!70)))))

(declare-fun b!1522862 () Bool)

(declare-fun res!1041908 () Bool)

(assert (=> b!1522862 (=> (not res!1041908) (not e!849127))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1522862 (= res!1041908 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49434 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49434 a!2804))))))

(declare-fun b!1522863 () Bool)

(declare-fun res!1041907 () Bool)

(assert (=> b!1522863 (=> (not res!1041907) (not e!849127))))

(declare-datatypes ((List!35546 0))(
  ( (Nil!35543) (Cons!35542 (h!36967 (_ BitVec 64)) (t!50247 List!35546)) )
))
(declare-fun arrayNoDuplicates!0 (array!101313 (_ BitVec 32) List!35546) Bool)

(assert (=> b!1522863 (= res!1041907 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35543))))

(declare-fun b!1522864 () Bool)

(assert (=> b!1522864 (= e!849128 (not true))))

(assert (=> b!1522864 e!849125))

(declare-fun res!1041909 () Bool)

(assert (=> b!1522864 (=> (not res!1041909) (not e!849125))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101313 (_ BitVec 32)) Bool)

(assert (=> b!1522864 (= res!1041909 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50878 0))(
  ( (Unit!50879) )
))
(declare-fun lt!659751 () Unit!50878)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101313 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50878)

(assert (=> b!1522864 (= lt!659751 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1522865 () Bool)

(declare-fun res!1041910 () Bool)

(assert (=> b!1522865 (=> (not res!1041910) (not e!849127))))

(assert (=> b!1522865 (= res!1041910 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1522866 () Bool)

(declare-fun res!1041906 () Bool)

(assert (=> b!1522866 (=> (not res!1041906) (not e!849127))))

(assert (=> b!1522866 (= res!1041906 (and (= (size!49434 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49434 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49434 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1522867 () Bool)

(declare-fun res!1041902 () Bool)

(assert (=> b!1522867 (=> (not res!1041902) (not e!849128))))

(assert (=> b!1522867 (= res!1041902 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48883 a!2804) j!70) a!2804 mask!2512) lt!659750))))

(assert (= (and start!129790 res!1041905) b!1522866))

(assert (= (and b!1522866 res!1041906) b!1522857))

(assert (= (and b!1522857 res!1041904) b!1522861))

(assert (= (and b!1522861 res!1041903) b!1522865))

(assert (= (and b!1522865 res!1041910) b!1522863))

(assert (= (and b!1522863 res!1041907) b!1522862))

(assert (= (and b!1522862 res!1041908) b!1522858))

(assert (= (and b!1522858 res!1041911) b!1522867))

(assert (= (and b!1522867 res!1041902) b!1522860))

(assert (= (and b!1522860 res!1041912) b!1522864))

(assert (= (and b!1522864 res!1041909) b!1522859))

(declare-fun m!1405983 () Bool)

(assert (=> b!1522864 m!1405983))

(declare-fun m!1405985 () Bool)

(assert (=> b!1522864 m!1405985))

(declare-fun m!1405987 () Bool)

(assert (=> b!1522860 m!1405987))

(declare-fun m!1405989 () Bool)

(assert (=> b!1522860 m!1405989))

(assert (=> b!1522860 m!1405989))

(declare-fun m!1405991 () Bool)

(assert (=> b!1522860 m!1405991))

(assert (=> b!1522860 m!1405991))

(assert (=> b!1522860 m!1405989))

(declare-fun m!1405993 () Bool)

(assert (=> b!1522860 m!1405993))

(declare-fun m!1405995 () Bool)

(assert (=> b!1522861 m!1405995))

(assert (=> b!1522861 m!1405995))

(declare-fun m!1405997 () Bool)

(assert (=> b!1522861 m!1405997))

(declare-fun m!1405999 () Bool)

(assert (=> b!1522865 m!1405999))

(assert (=> b!1522858 m!1405995))

(assert (=> b!1522858 m!1405995))

(declare-fun m!1406001 () Bool)

(assert (=> b!1522858 m!1406001))

(assert (=> b!1522858 m!1406001))

(assert (=> b!1522858 m!1405995))

(declare-fun m!1406003 () Bool)

(assert (=> b!1522858 m!1406003))

(declare-fun m!1406005 () Bool)

(assert (=> b!1522857 m!1406005))

(assert (=> b!1522857 m!1406005))

(declare-fun m!1406007 () Bool)

(assert (=> b!1522857 m!1406007))

(declare-fun m!1406009 () Bool)

(assert (=> b!1522863 m!1406009))

(assert (=> b!1522859 m!1405995))

(assert (=> b!1522859 m!1405995))

(declare-fun m!1406011 () Bool)

(assert (=> b!1522859 m!1406011))

(declare-fun m!1406013 () Bool)

(assert (=> start!129790 m!1406013))

(declare-fun m!1406015 () Bool)

(assert (=> start!129790 m!1406015))

(assert (=> b!1522867 m!1405995))

(assert (=> b!1522867 m!1405995))

(declare-fun m!1406017 () Bool)

(assert (=> b!1522867 m!1406017))

(push 1)

