; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!129108 () Bool)

(assert start!129108)

(declare-fun b!1513920 () Bool)

(declare-fun res!1033904 () Bool)

(declare-fun e!844938 () Bool)

(assert (=> b!1513920 (=> (not res!1033904) (not e!844938))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!100877 0))(
  ( (array!100878 (arr!48671 (Array (_ BitVec 32) (_ BitVec 64))) (size!49222 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100877)

(assert (=> b!1513920 (= res!1033904 (and (= (size!49222 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49222 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49222 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1513921 () Bool)

(declare-fun e!844942 () Bool)

(assert (=> b!1513921 (= e!844942 (not true))))

(declare-fun e!844939 () Bool)

(assert (=> b!1513921 e!844939))

(declare-fun res!1033903 () Bool)

(assert (=> b!1513921 (=> (not res!1033903) (not e!844939))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100877 (_ BitVec 32)) Bool)

(assert (=> b!1513921 (= res!1033903 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50550 0))(
  ( (Unit!50551) )
))
(declare-fun lt!656125 () Unit!50550)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100877 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50550)

(assert (=> b!1513921 (= lt!656125 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1513922 () Bool)

(declare-fun res!1033906 () Bool)

(assert (=> b!1513922 (=> (not res!1033906) (not e!844938))))

(assert (=> b!1513922 (= res!1033906 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1513923 () Bool)

(declare-fun res!1033895 () Bool)

(declare-fun e!844941 () Bool)

(assert (=> b!1513923 (=> (not res!1033895) (not e!844941))))

(declare-datatypes ((SeekEntryResult!12863 0))(
  ( (MissingZero!12863 (index!53846 (_ BitVec 32))) (Found!12863 (index!53847 (_ BitVec 32))) (Intermediate!12863 (undefined!13675 Bool) (index!53848 (_ BitVec 32)) (x!135570 (_ BitVec 32))) (Undefined!12863) (MissingVacant!12863 (index!53849 (_ BitVec 32))) )
))
(declare-fun lt!656126 () SeekEntryResult!12863)

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100877 (_ BitVec 32)) SeekEntryResult!12863)

(assert (=> b!1513923 (= res!1033895 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48671 a!2804) j!70) a!2804 mask!2512) lt!656126))))

(declare-fun b!1513924 () Bool)

(assert (=> b!1513924 (= e!844941 e!844942)))

(declare-fun res!1033896 () Bool)

(assert (=> b!1513924 (=> (not res!1033896) (not e!844942))))

(declare-fun lt!656124 () array!100877)

(declare-fun lt!656128 () SeekEntryResult!12863)

(declare-fun lt!656127 () (_ BitVec 64))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1513924 (= res!1033896 (= lt!656128 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!656127 mask!2512) lt!656127 lt!656124 mask!2512)))))

(assert (=> b!1513924 (= lt!656127 (select (store (arr!48671 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1513924 (= lt!656124 (array!100878 (store (arr!48671 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49222 a!2804)))))

(declare-fun b!1513925 () Bool)

(declare-fun e!844937 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100877 (_ BitVec 32)) SeekEntryResult!12863)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100877 (_ BitVec 32)) SeekEntryResult!12863)

(assert (=> b!1513925 (= e!844937 (= (seekEntryOrOpen!0 lt!656127 lt!656124 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!656127 lt!656124 mask!2512)))))

(declare-fun b!1513927 () Bool)

(declare-fun res!1033901 () Bool)

(assert (=> b!1513927 (=> (not res!1033901) (not e!844939))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!100877 (_ BitVec 32)) SeekEntryResult!12863)

(assert (=> b!1513927 (= res!1033901 (= (seekEntry!0 (select (arr!48671 a!2804) j!70) a!2804 mask!2512) (Found!12863 j!70)))))

(declare-fun b!1513928 () Bool)

(declare-fun res!1033908 () Bool)

(assert (=> b!1513928 (=> (not res!1033908) (not e!844938))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1513928 (= res!1033908 (validKeyInArray!0 (select (arr!48671 a!2804) j!70)))))

(declare-fun b!1513929 () Bool)

(declare-fun e!844940 () Bool)

(assert (=> b!1513929 (= e!844939 e!844940)))

(declare-fun res!1033899 () Bool)

(assert (=> b!1513929 (=> res!1033899 e!844940)))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1513929 (= res!1033899 (or (not (= (select (arr!48671 a!2804) j!70) lt!656127)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48671 a!2804) index!487) (select (arr!48671 a!2804) j!70)) (not (= (select (arr!48671 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1513930 () Bool)

(declare-fun res!1033907 () Bool)

(assert (=> b!1513930 (=> (not res!1033907) (not e!844938))))

(assert (=> b!1513930 (= res!1033907 (validKeyInArray!0 (select (arr!48671 a!2804) i!961)))))

(declare-fun b!1513931 () Bool)

(declare-fun res!1033900 () Bool)

(assert (=> b!1513931 (=> (not res!1033900) (not e!844938))))

(declare-datatypes ((List!35334 0))(
  ( (Nil!35331) (Cons!35330 (h!36743 (_ BitVec 64)) (t!50035 List!35334)) )
))
(declare-fun arrayNoDuplicates!0 (array!100877 (_ BitVec 32) List!35334) Bool)

(assert (=> b!1513931 (= res!1033900 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35331))))

(declare-fun b!1513932 () Bool)

(assert (=> b!1513932 (= e!844940 e!844937)))

(declare-fun res!1033902 () Bool)

(assert (=> b!1513932 (=> (not res!1033902) (not e!844937))))

(assert (=> b!1513932 (= res!1033902 (= (seekEntryOrOpen!0 (select (arr!48671 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48671 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1513933 () Bool)

(declare-fun res!1033897 () Bool)

(assert (=> b!1513933 (=> (not res!1033897) (not e!844938))))

(assert (=> b!1513933 (= res!1033897 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49222 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49222 a!2804))))))

(declare-fun res!1033898 () Bool)

(assert (=> start!129108 (=> (not res!1033898) (not e!844938))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129108 (= res!1033898 (validMask!0 mask!2512))))

(assert (=> start!129108 e!844938))

(assert (=> start!129108 true))

(declare-fun array_inv!37616 (array!100877) Bool)

(assert (=> start!129108 (array_inv!37616 a!2804)))

(declare-fun b!1513926 () Bool)

(assert (=> b!1513926 (= e!844938 e!844941)))

(declare-fun res!1033905 () Bool)

(assert (=> b!1513926 (=> (not res!1033905) (not e!844941))))

(assert (=> b!1513926 (= res!1033905 (= lt!656128 lt!656126))))

(assert (=> b!1513926 (= lt!656126 (Intermediate!12863 false resIndex!21 resX!21))))

(assert (=> b!1513926 (= lt!656128 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48671 a!2804) j!70) mask!2512) (select (arr!48671 a!2804) j!70) a!2804 mask!2512))))

(assert (= (and start!129108 res!1033898) b!1513920))

(assert (= (and b!1513920 res!1033904) b!1513930))

(assert (= (and b!1513930 res!1033907) b!1513928))

(assert (= (and b!1513928 res!1033908) b!1513922))

(assert (= (and b!1513922 res!1033906) b!1513931))

(assert (= (and b!1513931 res!1033900) b!1513933))

(assert (= (and b!1513933 res!1033897) b!1513926))

(assert (= (and b!1513926 res!1033905) b!1513923))

(assert (= (and b!1513923 res!1033895) b!1513924))

(assert (= (and b!1513924 res!1033896) b!1513921))

(assert (= (and b!1513921 res!1033903) b!1513927))

(assert (= (and b!1513927 res!1033901) b!1513929))

(assert (= (and b!1513929 (not res!1033899)) b!1513932))

(assert (= (and b!1513932 res!1033902) b!1513925))

(declare-fun m!1396885 () Bool)

(assert (=> b!1513926 m!1396885))

(assert (=> b!1513926 m!1396885))

(declare-fun m!1396887 () Bool)

(assert (=> b!1513926 m!1396887))

(assert (=> b!1513926 m!1396887))

(assert (=> b!1513926 m!1396885))

(declare-fun m!1396889 () Bool)

(assert (=> b!1513926 m!1396889))

(assert (=> b!1513932 m!1396885))

(assert (=> b!1513932 m!1396885))

(declare-fun m!1396891 () Bool)

(assert (=> b!1513932 m!1396891))

(assert (=> b!1513932 m!1396885))

(declare-fun m!1396893 () Bool)

(assert (=> b!1513932 m!1396893))

(declare-fun m!1396895 () Bool)

(assert (=> start!129108 m!1396895))

(declare-fun m!1396897 () Bool)

(assert (=> start!129108 m!1396897))

(declare-fun m!1396899 () Bool)

(assert (=> b!1513922 m!1396899))

(assert (=> b!1513929 m!1396885))

(declare-fun m!1396901 () Bool)

(assert (=> b!1513929 m!1396901))

(declare-fun m!1396903 () Bool)

(assert (=> b!1513931 m!1396903))

(assert (=> b!1513928 m!1396885))

(assert (=> b!1513928 m!1396885))

(declare-fun m!1396905 () Bool)

(assert (=> b!1513928 m!1396905))

(assert (=> b!1513927 m!1396885))

(assert (=> b!1513927 m!1396885))

(declare-fun m!1396907 () Bool)

(assert (=> b!1513927 m!1396907))

(declare-fun m!1396909 () Bool)

(assert (=> b!1513921 m!1396909))

(declare-fun m!1396911 () Bool)

(assert (=> b!1513921 m!1396911))

(declare-fun m!1396913 () Bool)

(assert (=> b!1513925 m!1396913))

(declare-fun m!1396915 () Bool)

(assert (=> b!1513925 m!1396915))

(declare-fun m!1396917 () Bool)

(assert (=> b!1513930 m!1396917))

(assert (=> b!1513930 m!1396917))

(declare-fun m!1396919 () Bool)

(assert (=> b!1513930 m!1396919))

(declare-fun m!1396921 () Bool)

(assert (=> b!1513924 m!1396921))

(assert (=> b!1513924 m!1396921))

(declare-fun m!1396923 () Bool)

(assert (=> b!1513924 m!1396923))

(declare-fun m!1396925 () Bool)

(assert (=> b!1513924 m!1396925))

(declare-fun m!1396927 () Bool)

(assert (=> b!1513924 m!1396927))

(assert (=> b!1513923 m!1396885))

(assert (=> b!1513923 m!1396885))

(declare-fun m!1396929 () Bool)

(assert (=> b!1513923 m!1396929))

(check-sat (not b!1513928) (not b!1513927) (not b!1513923) (not b!1513924) (not start!129108) (not b!1513926) (not b!1513925) (not b!1513931) (not b!1513930) (not b!1513932) (not b!1513922) (not b!1513921))
(check-sat)
