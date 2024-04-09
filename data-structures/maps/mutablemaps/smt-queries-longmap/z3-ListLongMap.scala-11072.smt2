; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!129312 () Bool)

(assert start!129312)

(declare-fun b!1517911 () Bool)

(declare-fun e!846860 () Bool)

(assert (=> b!1517911 (= e!846860 true)))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!101081 0))(
  ( (array!101082 (arr!48773 (Array (_ BitVec 32) (_ BitVec 64))) (size!49324 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101081)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun lt!657946 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12965 0))(
  ( (MissingZero!12965 (index!54254 (_ BitVec 32))) (Found!12965 (index!54255 (_ BitVec 32))) (Intermediate!12965 (undefined!13777 Bool) (index!54256 (_ BitVec 32)) (x!135944 (_ BitVec 32))) (Undefined!12965) (MissingVacant!12965 (index!54257 (_ BitVec 32))) )
))
(declare-fun lt!657942 () SeekEntryResult!12965)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101081 (_ BitVec 32)) SeekEntryResult!12965)

(assert (=> b!1517911 (= lt!657942 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!534) lt!657946 (select (arr!48773 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1517912 () Bool)

(declare-fun res!1037894 () Bool)

(declare-fun e!846861 () Bool)

(assert (=> b!1517912 (=> (not res!1037894) (not e!846861))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun lt!657943 () SeekEntryResult!12965)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1517912 (= res!1037894 (= lt!657943 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48773 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48773 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101082 (store (arr!48773 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49324 a!2804)) mask!2512)))))

(declare-fun b!1517913 () Bool)

(declare-fun e!846858 () Bool)

(assert (=> b!1517913 (= e!846858 e!846860)))

(declare-fun res!1037890 () Bool)

(assert (=> b!1517913 (=> res!1037890 e!846860)))

(assert (=> b!1517913 (= res!1037890 (or (bvslt (bvadd #b00000000000000000000000000000001 x!534) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!534) #b01111111111111111111111111111110) (bvslt lt!657946 #b00000000000000000000000000000000) (bvsge lt!657946 (size!49324 a!2804))))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1517913 (= lt!657946 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1517914 () Bool)

(declare-fun res!1037886 () Bool)

(declare-fun e!846862 () Bool)

(assert (=> b!1517914 (=> (not res!1037886) (not e!846862))))

(declare-datatypes ((List!35436 0))(
  ( (Nil!35433) (Cons!35432 (h!36845 (_ BitVec 64)) (t!50137 List!35436)) )
))
(declare-fun arrayNoDuplicates!0 (array!101081 (_ BitVec 32) List!35436) Bool)

(assert (=> b!1517914 (= res!1037886 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35433))))

(declare-fun e!846863 () Bool)

(declare-fun b!1517915 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101081 (_ BitVec 32)) SeekEntryResult!12965)

(assert (=> b!1517915 (= e!846863 (= (seekEntry!0 (select (arr!48773 a!2804) j!70) a!2804 mask!2512) (Found!12965 j!70)))))

(declare-fun res!1037891 () Bool)

(assert (=> start!129312 (=> (not res!1037891) (not e!846862))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129312 (= res!1037891 (validMask!0 mask!2512))))

(assert (=> start!129312 e!846862))

(assert (=> start!129312 true))

(declare-fun array_inv!37718 (array!101081) Bool)

(assert (=> start!129312 (array_inv!37718 a!2804)))

(declare-fun b!1517916 () Bool)

(declare-fun res!1037895 () Bool)

(assert (=> b!1517916 (=> (not res!1037895) (not e!846862))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1517916 (= res!1037895 (validKeyInArray!0 (select (arr!48773 a!2804) j!70)))))

(declare-fun b!1517917 () Bool)

(assert (=> b!1517917 (= e!846862 e!846861)))

(declare-fun res!1037893 () Bool)

(assert (=> b!1517917 (=> (not res!1037893) (not e!846861))))

(declare-fun lt!657945 () SeekEntryResult!12965)

(assert (=> b!1517917 (= res!1037893 (= lt!657943 lt!657945))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1517917 (= lt!657945 (Intermediate!12965 false resIndex!21 resX!21))))

(assert (=> b!1517917 (= lt!657943 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48773 a!2804) j!70) mask!2512) (select (arr!48773 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1517918 () Bool)

(assert (=> b!1517918 (= e!846861 (not e!846858))))

(declare-fun res!1037888 () Bool)

(assert (=> b!1517918 (=> res!1037888 e!846858)))

(assert (=> b!1517918 (= res!1037888 (or (not (= (select (arr!48773 a!2804) j!70) (select (store (arr!48773 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (= x!534 resX!21)))))

(assert (=> b!1517918 e!846863))

(declare-fun res!1037896 () Bool)

(assert (=> b!1517918 (=> (not res!1037896) (not e!846863))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101081 (_ BitVec 32)) Bool)

(assert (=> b!1517918 (= res!1037896 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50754 0))(
  ( (Unit!50755) )
))
(declare-fun lt!657944 () Unit!50754)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101081 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50754)

(assert (=> b!1517918 (= lt!657944 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1517919 () Bool)

(declare-fun res!1037898 () Bool)

(assert (=> b!1517919 (=> (not res!1037898) (not e!846862))))

(assert (=> b!1517919 (= res!1037898 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49324 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49324 a!2804))))))

(declare-fun b!1517920 () Bool)

(declare-fun res!1037889 () Bool)

(assert (=> b!1517920 (=> (not res!1037889) (not e!846862))))

(assert (=> b!1517920 (= res!1037889 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1517921 () Bool)

(declare-fun res!1037887 () Bool)

(assert (=> b!1517921 (=> (not res!1037887) (not e!846862))))

(assert (=> b!1517921 (= res!1037887 (and (= (size!49324 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49324 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49324 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1517922 () Bool)

(declare-fun res!1037897 () Bool)

(assert (=> b!1517922 (=> (not res!1037897) (not e!846861))))

(assert (=> b!1517922 (= res!1037897 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48773 a!2804) j!70) a!2804 mask!2512) lt!657945))))

(declare-fun b!1517923 () Bool)

(declare-fun res!1037892 () Bool)

(assert (=> b!1517923 (=> (not res!1037892) (not e!846862))))

(assert (=> b!1517923 (= res!1037892 (validKeyInArray!0 (select (arr!48773 a!2804) i!961)))))

(assert (= (and start!129312 res!1037891) b!1517921))

(assert (= (and b!1517921 res!1037887) b!1517923))

(assert (= (and b!1517923 res!1037892) b!1517916))

(assert (= (and b!1517916 res!1037895) b!1517920))

(assert (= (and b!1517920 res!1037889) b!1517914))

(assert (= (and b!1517914 res!1037886) b!1517919))

(assert (= (and b!1517919 res!1037898) b!1517917))

(assert (= (and b!1517917 res!1037893) b!1517922))

(assert (= (and b!1517922 res!1037897) b!1517912))

(assert (= (and b!1517912 res!1037894) b!1517918))

(assert (= (and b!1517918 res!1037896) b!1517915))

(assert (= (and b!1517918 (not res!1037888)) b!1517913))

(assert (= (and b!1517913 (not res!1037890)) b!1517911))

(declare-fun m!1401271 () Bool)

(assert (=> b!1517920 m!1401271))

(declare-fun m!1401273 () Bool)

(assert (=> b!1517912 m!1401273))

(declare-fun m!1401275 () Bool)

(assert (=> b!1517912 m!1401275))

(assert (=> b!1517912 m!1401275))

(declare-fun m!1401277 () Bool)

(assert (=> b!1517912 m!1401277))

(assert (=> b!1517912 m!1401277))

(assert (=> b!1517912 m!1401275))

(declare-fun m!1401279 () Bool)

(assert (=> b!1517912 m!1401279))

(declare-fun m!1401281 () Bool)

(assert (=> b!1517913 m!1401281))

(declare-fun m!1401283 () Bool)

(assert (=> b!1517916 m!1401283))

(assert (=> b!1517916 m!1401283))

(declare-fun m!1401285 () Bool)

(assert (=> b!1517916 m!1401285))

(assert (=> b!1517911 m!1401283))

(assert (=> b!1517911 m!1401283))

(declare-fun m!1401287 () Bool)

(assert (=> b!1517911 m!1401287))

(declare-fun m!1401289 () Bool)

(assert (=> b!1517914 m!1401289))

(assert (=> b!1517915 m!1401283))

(assert (=> b!1517915 m!1401283))

(declare-fun m!1401291 () Bool)

(assert (=> b!1517915 m!1401291))

(declare-fun m!1401293 () Bool)

(assert (=> start!129312 m!1401293))

(declare-fun m!1401295 () Bool)

(assert (=> start!129312 m!1401295))

(assert (=> b!1517917 m!1401283))

(assert (=> b!1517917 m!1401283))

(declare-fun m!1401297 () Bool)

(assert (=> b!1517917 m!1401297))

(assert (=> b!1517917 m!1401297))

(assert (=> b!1517917 m!1401283))

(declare-fun m!1401299 () Bool)

(assert (=> b!1517917 m!1401299))

(declare-fun m!1401301 () Bool)

(assert (=> b!1517923 m!1401301))

(assert (=> b!1517923 m!1401301))

(declare-fun m!1401303 () Bool)

(assert (=> b!1517923 m!1401303))

(assert (=> b!1517922 m!1401283))

(assert (=> b!1517922 m!1401283))

(declare-fun m!1401305 () Bool)

(assert (=> b!1517922 m!1401305))

(assert (=> b!1517918 m!1401283))

(declare-fun m!1401307 () Bool)

(assert (=> b!1517918 m!1401307))

(assert (=> b!1517918 m!1401273))

(assert (=> b!1517918 m!1401275))

(declare-fun m!1401309 () Bool)

(assert (=> b!1517918 m!1401309))

(check-sat (not b!1517911) (not start!129312) (not b!1517917) (not b!1517916) (not b!1517922) (not b!1517920) (not b!1517914) (not b!1517915) (not b!1517923) (not b!1517912) (not b!1517913) (not b!1517918))
(check-sat)
