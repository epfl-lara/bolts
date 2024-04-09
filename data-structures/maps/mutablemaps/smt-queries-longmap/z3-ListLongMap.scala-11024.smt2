; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!129024 () Bool)

(assert start!129024)

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun b!1512205 () Bool)

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-datatypes ((array!100793 0))(
  ( (array!100794 (arr!48629 (Array (_ BitVec 32) (_ BitVec 64))) (size!49180 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100793)

(declare-fun e!844145 () Bool)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1512205 (= e!844145 (not (or (not (= (select (arr!48629 a!2804) j!70) (select (store (arr!48629 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48629 a!2804) index!487) (select (arr!48629 a!2804) j!70)) (not (= (select (arr!48629 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge mask!2512 #b00000000000000000000000000000000))))))

(declare-fun e!844148 () Bool)

(assert (=> b!1512205 e!844148))

(declare-fun res!1032180 () Bool)

(assert (=> b!1512205 (=> (not res!1032180) (not e!844148))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100793 (_ BitVec 32)) Bool)

(assert (=> b!1512205 (= res!1032180 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50466 0))(
  ( (Unit!50467) )
))
(declare-fun lt!655594 () Unit!50466)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100793 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50466)

(assert (=> b!1512205 (= lt!655594 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun e!844144 () Bool)

(declare-fun b!1512206 () Bool)

(declare-datatypes ((SeekEntryResult!12821 0))(
  ( (MissingZero!12821 (index!53678 (_ BitVec 32))) (Found!12821 (index!53679 (_ BitVec 32))) (Intermediate!12821 (undefined!13633 Bool) (index!53680 (_ BitVec 32)) (x!135416 (_ BitVec 32))) (Undefined!12821) (MissingVacant!12821 (index!53681 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100793 (_ BitVec 32)) SeekEntryResult!12821)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100793 (_ BitVec 32)) SeekEntryResult!12821)

(assert (=> b!1512206 (= e!844144 (= (seekEntryOrOpen!0 (select (arr!48629 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48629 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1512207 () Bool)

(declare-fun res!1032189 () Bool)

(declare-fun e!844147 () Bool)

(assert (=> b!1512207 (=> (not res!1032189) (not e!844147))))

(assert (=> b!1512207 (= res!1032189 (and (= (size!49180 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49180 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49180 a!2804)) (not (= i!961 j!70))))))

(declare-fun res!1032182 () Bool)

(assert (=> start!129024 (=> (not res!1032182) (not e!844147))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129024 (= res!1032182 (validMask!0 mask!2512))))

(assert (=> start!129024 e!844147))

(assert (=> start!129024 true))

(declare-fun array_inv!37574 (array!100793) Bool)

(assert (=> start!129024 (array_inv!37574 a!2804)))

(declare-fun b!1512208 () Bool)

(declare-fun res!1032192 () Bool)

(assert (=> b!1512208 (=> (not res!1032192) (not e!844145))))

(declare-fun lt!655592 () SeekEntryResult!12821)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100793 (_ BitVec 32)) SeekEntryResult!12821)

(assert (=> b!1512208 (= res!1032192 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48629 a!2804) j!70) a!2804 mask!2512) lt!655592))))

(declare-fun b!1512209 () Bool)

(declare-fun res!1032187 () Bool)

(assert (=> b!1512209 (=> (not res!1032187) (not e!844147))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1512209 (= res!1032187 (validKeyInArray!0 (select (arr!48629 a!2804) i!961)))))

(declare-fun b!1512210 () Bool)

(declare-fun res!1032186 () Bool)

(assert (=> b!1512210 (=> (not res!1032186) (not e!844147))))

(assert (=> b!1512210 (= res!1032186 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1512211 () Bool)

(assert (=> b!1512211 (= e!844147 e!844145)))

(declare-fun res!1032185 () Bool)

(assert (=> b!1512211 (=> (not res!1032185) (not e!844145))))

(declare-fun lt!655593 () SeekEntryResult!12821)

(assert (=> b!1512211 (= res!1032185 (= lt!655593 lt!655592))))

(assert (=> b!1512211 (= lt!655592 (Intermediate!12821 false resIndex!21 resX!21))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1512211 (= lt!655593 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48629 a!2804) j!70) mask!2512) (select (arr!48629 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1512212 () Bool)

(declare-fun res!1032184 () Bool)

(assert (=> b!1512212 (=> (not res!1032184) (not e!844147))))

(assert (=> b!1512212 (= res!1032184 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49180 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49180 a!2804))))))

(declare-fun b!1512213 () Bool)

(declare-fun res!1032183 () Bool)

(assert (=> b!1512213 (=> (not res!1032183) (not e!844148))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!100793 (_ BitVec 32)) SeekEntryResult!12821)

(assert (=> b!1512213 (= res!1032183 (= (seekEntry!0 (select (arr!48629 a!2804) j!70) a!2804 mask!2512) (Found!12821 j!70)))))

(declare-fun b!1512214 () Bool)

(assert (=> b!1512214 (= e!844148 e!844144)))

(declare-fun res!1032181 () Bool)

(assert (=> b!1512214 (=> res!1032181 e!844144)))

(assert (=> b!1512214 (= res!1032181 (or (not (= (select (arr!48629 a!2804) j!70) (select (store (arr!48629 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48629 a!2804) index!487) (select (arr!48629 a!2804) j!70)) (not (= (select (arr!48629 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1512215 () Bool)

(declare-fun res!1032188 () Bool)

(assert (=> b!1512215 (=> (not res!1032188) (not e!844147))))

(assert (=> b!1512215 (= res!1032188 (validKeyInArray!0 (select (arr!48629 a!2804) j!70)))))

(declare-fun b!1512216 () Bool)

(declare-fun res!1032190 () Bool)

(assert (=> b!1512216 (=> (not res!1032190) (not e!844145))))

(assert (=> b!1512216 (= res!1032190 (= lt!655593 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48629 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48629 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100794 (store (arr!48629 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49180 a!2804)) mask!2512)))))

(declare-fun b!1512217 () Bool)

(declare-fun res!1032191 () Bool)

(assert (=> b!1512217 (=> (not res!1032191) (not e!844147))))

(declare-datatypes ((List!35292 0))(
  ( (Nil!35289) (Cons!35288 (h!36701 (_ BitVec 64)) (t!49993 List!35292)) )
))
(declare-fun arrayNoDuplicates!0 (array!100793 (_ BitVec 32) List!35292) Bool)

(assert (=> b!1512217 (= res!1032191 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35289))))

(assert (= (and start!129024 res!1032182) b!1512207))

(assert (= (and b!1512207 res!1032189) b!1512209))

(assert (= (and b!1512209 res!1032187) b!1512215))

(assert (= (and b!1512215 res!1032188) b!1512210))

(assert (= (and b!1512210 res!1032186) b!1512217))

(assert (= (and b!1512217 res!1032191) b!1512212))

(assert (= (and b!1512212 res!1032184) b!1512211))

(assert (= (and b!1512211 res!1032185) b!1512208))

(assert (= (and b!1512208 res!1032192) b!1512216))

(assert (= (and b!1512216 res!1032190) b!1512205))

(assert (= (and b!1512205 res!1032180) b!1512213))

(assert (= (and b!1512213 res!1032183) b!1512214))

(assert (= (and b!1512214 (not res!1032181)) b!1512206))

(declare-fun m!1395015 () Bool)

(assert (=> b!1512216 m!1395015))

(declare-fun m!1395017 () Bool)

(assert (=> b!1512216 m!1395017))

(assert (=> b!1512216 m!1395017))

(declare-fun m!1395019 () Bool)

(assert (=> b!1512216 m!1395019))

(assert (=> b!1512216 m!1395019))

(assert (=> b!1512216 m!1395017))

(declare-fun m!1395021 () Bool)

(assert (=> b!1512216 m!1395021))

(declare-fun m!1395023 () Bool)

(assert (=> b!1512215 m!1395023))

(assert (=> b!1512215 m!1395023))

(declare-fun m!1395025 () Bool)

(assert (=> b!1512215 m!1395025))

(declare-fun m!1395027 () Bool)

(assert (=> b!1512209 m!1395027))

(assert (=> b!1512209 m!1395027))

(declare-fun m!1395029 () Bool)

(assert (=> b!1512209 m!1395029))

(assert (=> b!1512214 m!1395023))

(assert (=> b!1512214 m!1395015))

(assert (=> b!1512214 m!1395017))

(declare-fun m!1395031 () Bool)

(assert (=> b!1512214 m!1395031))

(declare-fun m!1395033 () Bool)

(assert (=> b!1512210 m!1395033))

(assert (=> b!1512208 m!1395023))

(assert (=> b!1512208 m!1395023))

(declare-fun m!1395035 () Bool)

(assert (=> b!1512208 m!1395035))

(declare-fun m!1395037 () Bool)

(assert (=> b!1512217 m!1395037))

(assert (=> b!1512205 m!1395023))

(declare-fun m!1395039 () Bool)

(assert (=> b!1512205 m!1395039))

(assert (=> b!1512205 m!1395015))

(assert (=> b!1512205 m!1395031))

(assert (=> b!1512205 m!1395017))

(declare-fun m!1395041 () Bool)

(assert (=> b!1512205 m!1395041))

(assert (=> b!1512211 m!1395023))

(assert (=> b!1512211 m!1395023))

(declare-fun m!1395043 () Bool)

(assert (=> b!1512211 m!1395043))

(assert (=> b!1512211 m!1395043))

(assert (=> b!1512211 m!1395023))

(declare-fun m!1395045 () Bool)

(assert (=> b!1512211 m!1395045))

(assert (=> b!1512213 m!1395023))

(assert (=> b!1512213 m!1395023))

(declare-fun m!1395047 () Bool)

(assert (=> b!1512213 m!1395047))

(declare-fun m!1395049 () Bool)

(assert (=> start!129024 m!1395049))

(declare-fun m!1395051 () Bool)

(assert (=> start!129024 m!1395051))

(assert (=> b!1512206 m!1395023))

(assert (=> b!1512206 m!1395023))

(declare-fun m!1395053 () Bool)

(assert (=> b!1512206 m!1395053))

(assert (=> b!1512206 m!1395023))

(declare-fun m!1395055 () Bool)

(assert (=> b!1512206 m!1395055))

(check-sat (not b!1512209) (not b!1512215) (not b!1512206) (not b!1512216) (not b!1512213) (not b!1512205) (not b!1512210) (not b!1512211) (not start!129024) (not b!1512208) (not b!1512217))
(check-sat)
