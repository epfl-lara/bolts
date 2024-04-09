; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!128910 () Bool)

(assert start!128910)

(declare-fun b!1510206 () Bool)

(declare-fun res!1030190 () Bool)

(declare-fun e!843392 () Bool)

(assert (=> b!1510206 (=> (not res!1030190) (not e!843392))))

(declare-datatypes ((SeekEntryResult!12764 0))(
  ( (MissingZero!12764 (index!53450 (_ BitVec 32))) (Found!12764 (index!53451 (_ BitVec 32))) (Intermediate!12764 (undefined!13576 Bool) (index!53452 (_ BitVec 32)) (x!135207 (_ BitVec 32))) (Undefined!12764) (MissingVacant!12764 (index!53453 (_ BitVec 32))) )
))
(declare-fun lt!655081 () SeekEntryResult!12764)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-datatypes ((array!100679 0))(
  ( (array!100680 (arr!48572 (Array (_ BitVec 32) (_ BitVec 64))) (size!49123 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100679)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100679 (_ BitVec 32)) SeekEntryResult!12764)

(assert (=> b!1510206 (= res!1030190 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48572 a!2804) j!70) a!2804 mask!2512) lt!655081))))

(declare-fun b!1510207 () Bool)

(assert (=> b!1510207 (= e!843392 (not true))))

(declare-fun e!843393 () Bool)

(assert (=> b!1510207 e!843393))

(declare-fun res!1030187 () Bool)

(assert (=> b!1510207 (=> (not res!1030187) (not e!843393))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100679 (_ BitVec 32)) Bool)

(assert (=> b!1510207 (= res!1030187 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50352 0))(
  ( (Unit!50353) )
))
(declare-fun lt!655079 () Unit!50352)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100679 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50352)

(assert (=> b!1510207 (= lt!655079 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun res!1030182 () Bool)

(declare-fun e!843394 () Bool)

(assert (=> start!128910 (=> (not res!1030182) (not e!843394))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128910 (= res!1030182 (validMask!0 mask!2512))))

(assert (=> start!128910 e!843394))

(assert (=> start!128910 true))

(declare-fun array_inv!37517 (array!100679) Bool)

(assert (=> start!128910 (array_inv!37517 a!2804)))

(declare-fun b!1510208 () Bool)

(declare-fun res!1030188 () Bool)

(assert (=> b!1510208 (=> (not res!1030188) (not e!843394))))

(declare-datatypes ((List!35235 0))(
  ( (Nil!35232) (Cons!35231 (h!36644 (_ BitVec 64)) (t!49936 List!35235)) )
))
(declare-fun arrayNoDuplicates!0 (array!100679 (_ BitVec 32) List!35235) Bool)

(assert (=> b!1510208 (= res!1030188 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35232))))

(declare-fun b!1510209 () Bool)

(declare-fun res!1030181 () Bool)

(assert (=> b!1510209 (=> (not res!1030181) (not e!843392))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun lt!655080 () SeekEntryResult!12764)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1510209 (= res!1030181 (= lt!655080 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48572 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48572 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100680 (store (arr!48572 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49123 a!2804)) mask!2512)))))

(declare-fun b!1510210 () Bool)

(declare-fun res!1030191 () Bool)

(assert (=> b!1510210 (=> (not res!1030191) (not e!843394))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1510210 (= res!1030191 (validKeyInArray!0 (select (arr!48572 a!2804) j!70)))))

(declare-fun b!1510211 () Bool)

(declare-fun res!1030185 () Bool)

(assert (=> b!1510211 (=> (not res!1030185) (not e!843394))))

(assert (=> b!1510211 (= res!1030185 (validKeyInArray!0 (select (arr!48572 a!2804) i!961)))))

(declare-fun b!1510212 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!100679 (_ BitVec 32)) SeekEntryResult!12764)

(assert (=> b!1510212 (= e!843393 (= (seekEntry!0 (select (arr!48572 a!2804) j!70) a!2804 mask!2512) (Found!12764 j!70)))))

(declare-fun b!1510213 () Bool)

(assert (=> b!1510213 (= e!843394 e!843392)))

(declare-fun res!1030189 () Bool)

(assert (=> b!1510213 (=> (not res!1030189) (not e!843392))))

(assert (=> b!1510213 (= res!1030189 (= lt!655080 lt!655081))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1510213 (= lt!655081 (Intermediate!12764 false resIndex!21 resX!21))))

(assert (=> b!1510213 (= lt!655080 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48572 a!2804) j!70) mask!2512) (select (arr!48572 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1510214 () Bool)

(declare-fun res!1030186 () Bool)

(assert (=> b!1510214 (=> (not res!1030186) (not e!843394))))

(assert (=> b!1510214 (= res!1030186 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49123 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49123 a!2804))))))

(declare-fun b!1510215 () Bool)

(declare-fun res!1030183 () Bool)

(assert (=> b!1510215 (=> (not res!1030183) (not e!843394))))

(assert (=> b!1510215 (= res!1030183 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1510216 () Bool)

(declare-fun res!1030184 () Bool)

(assert (=> b!1510216 (=> (not res!1030184) (not e!843394))))

(assert (=> b!1510216 (= res!1030184 (and (= (size!49123 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49123 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49123 a!2804)) (not (= i!961 j!70))))))

(assert (= (and start!128910 res!1030182) b!1510216))

(assert (= (and b!1510216 res!1030184) b!1510211))

(assert (= (and b!1510211 res!1030185) b!1510210))

(assert (= (and b!1510210 res!1030191) b!1510215))

(assert (= (and b!1510215 res!1030183) b!1510208))

(assert (= (and b!1510208 res!1030188) b!1510214))

(assert (= (and b!1510214 res!1030186) b!1510213))

(assert (= (and b!1510213 res!1030189) b!1510206))

(assert (= (and b!1510206 res!1030190) b!1510209))

(assert (= (and b!1510209 res!1030181) b!1510207))

(assert (= (and b!1510207 res!1030187) b!1510212))

(declare-fun m!1392831 () Bool)

(assert (=> b!1510209 m!1392831))

(declare-fun m!1392833 () Bool)

(assert (=> b!1510209 m!1392833))

(assert (=> b!1510209 m!1392833))

(declare-fun m!1392835 () Bool)

(assert (=> b!1510209 m!1392835))

(assert (=> b!1510209 m!1392835))

(assert (=> b!1510209 m!1392833))

(declare-fun m!1392837 () Bool)

(assert (=> b!1510209 m!1392837))

(declare-fun m!1392839 () Bool)

(assert (=> b!1510210 m!1392839))

(assert (=> b!1510210 m!1392839))

(declare-fun m!1392841 () Bool)

(assert (=> b!1510210 m!1392841))

(declare-fun m!1392843 () Bool)

(assert (=> b!1510211 m!1392843))

(assert (=> b!1510211 m!1392843))

(declare-fun m!1392845 () Bool)

(assert (=> b!1510211 m!1392845))

(assert (=> b!1510212 m!1392839))

(assert (=> b!1510212 m!1392839))

(declare-fun m!1392847 () Bool)

(assert (=> b!1510212 m!1392847))

(declare-fun m!1392849 () Bool)

(assert (=> start!128910 m!1392849))

(declare-fun m!1392851 () Bool)

(assert (=> start!128910 m!1392851))

(assert (=> b!1510206 m!1392839))

(assert (=> b!1510206 m!1392839))

(declare-fun m!1392853 () Bool)

(assert (=> b!1510206 m!1392853))

(declare-fun m!1392855 () Bool)

(assert (=> b!1510215 m!1392855))

(assert (=> b!1510213 m!1392839))

(assert (=> b!1510213 m!1392839))

(declare-fun m!1392857 () Bool)

(assert (=> b!1510213 m!1392857))

(assert (=> b!1510213 m!1392857))

(assert (=> b!1510213 m!1392839))

(declare-fun m!1392859 () Bool)

(assert (=> b!1510213 m!1392859))

(declare-fun m!1392861 () Bool)

(assert (=> b!1510207 m!1392861))

(declare-fun m!1392863 () Bool)

(assert (=> b!1510207 m!1392863))

(declare-fun m!1392865 () Bool)

(assert (=> b!1510208 m!1392865))

(check-sat (not b!1510206) (not b!1510210) (not start!128910) (not b!1510215) (not b!1510208) (not b!1510209) (not b!1510213) (not b!1510207) (not b!1510211) (not b!1510212))
(check-sat)
