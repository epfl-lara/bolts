; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!130140 () Bool)

(assert start!130140)

(declare-fun b!1527027 () Bool)

(declare-fun res!1045208 () Bool)

(declare-fun e!851142 () Bool)

(assert (=> b!1527027 (=> (not res!1045208) (not e!851142))))

(declare-datatypes ((array!101480 0))(
  ( (array!101481 (arr!48962 (Array (_ BitVec 32) (_ BitVec 64))) (size!49513 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101480)

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1527027 (= res!1045208 (validKeyInArray!0 (select (arr!48962 a!2804) i!961)))))

(declare-fun b!1527028 () Bool)

(declare-fun res!1045200 () Bool)

(assert (=> b!1527028 (=> (not res!1045200) (not e!851142))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101480 (_ BitVec 32)) Bool)

(assert (=> b!1527028 (= res!1045200 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1527029 () Bool)

(declare-fun e!851143 () Bool)

(declare-fun e!851144 () Bool)

(assert (=> b!1527029 (= e!851143 e!851144)))

(declare-fun res!1045204 () Bool)

(assert (=> b!1527029 (=> res!1045204 e!851144)))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun lt!661253 () (_ BitVec 64))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1527029 (= res!1045204 (or (not (= (select (arr!48962 a!2804) j!70) lt!661253)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48962 a!2804) index!487) (select (arr!48962 a!2804) j!70)) (not (= (select (arr!48962 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1527030 () Bool)

(declare-fun e!851147 () Bool)

(assert (=> b!1527030 (= e!851142 e!851147)))

(declare-fun res!1045206 () Bool)

(assert (=> b!1527030 (=> (not res!1045206) (not e!851147))))

(declare-datatypes ((SeekEntryResult!13148 0))(
  ( (MissingZero!13148 (index!54986 (_ BitVec 32))) (Found!13148 (index!54987 (_ BitVec 32))) (Intermediate!13148 (undefined!13960 Bool) (index!54988 (_ BitVec 32)) (x!136685 (_ BitVec 32))) (Undefined!13148) (MissingVacant!13148 (index!54989 (_ BitVec 32))) )
))
(declare-fun lt!661251 () SeekEntryResult!13148)

(declare-fun lt!661255 () SeekEntryResult!13148)

(assert (=> b!1527030 (= res!1045206 (= lt!661251 lt!661255))))

(assert (=> b!1527030 (= lt!661255 (Intermediate!13148 false resIndex!21 resX!21))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101480 (_ BitVec 32)) SeekEntryResult!13148)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1527030 (= lt!661251 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48962 a!2804) j!70) mask!2512) (select (arr!48962 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1527031 () Bool)

(declare-fun res!1045205 () Bool)

(assert (=> b!1527031 (=> (not res!1045205) (not e!851143))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!101480 (_ BitVec 32)) SeekEntryResult!13148)

(assert (=> b!1527031 (= res!1045205 (= (seekEntry!0 (select (arr!48962 a!2804) j!70) a!2804 mask!2512) (Found!13148 j!70)))))

(declare-fun b!1527032 () Bool)

(declare-fun res!1045203 () Bool)

(assert (=> b!1527032 (=> (not res!1045203) (not e!851142))))

(declare-datatypes ((List!35625 0))(
  ( (Nil!35622) (Cons!35621 (h!37055 (_ BitVec 64)) (t!50326 List!35625)) )
))
(declare-fun arrayNoDuplicates!0 (array!101480 (_ BitVec 32) List!35625) Bool)

(assert (=> b!1527032 (= res!1045203 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35622))))

(declare-fun b!1527033 () Bool)

(declare-fun res!1045212 () Bool)

(assert (=> b!1527033 (=> (not res!1045212) (not e!851142))))

(assert (=> b!1527033 (= res!1045212 (validKeyInArray!0 (select (arr!48962 a!2804) j!70)))))

(declare-fun b!1527034 () Bool)

(declare-fun res!1045207 () Bool)

(assert (=> b!1527034 (=> (not res!1045207) (not e!851142))))

(assert (=> b!1527034 (= res!1045207 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49513 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49513 a!2804))))))

(declare-fun b!1527035 () Bool)

(declare-fun res!1045210 () Bool)

(assert (=> b!1527035 (=> (not res!1045210) (not e!851142))))

(assert (=> b!1527035 (= res!1045210 (and (= (size!49513 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49513 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49513 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1527036 () Bool)

(declare-fun e!851146 () Bool)

(assert (=> b!1527036 (= e!851146 (not true))))

(assert (=> b!1527036 e!851143))

(declare-fun res!1045201 () Bool)

(assert (=> b!1527036 (=> (not res!1045201) (not e!851143))))

(assert (=> b!1527036 (= res!1045201 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!51036 0))(
  ( (Unit!51037) )
))
(declare-fun lt!661254 () Unit!51036)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101480 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51036)

(assert (=> b!1527036 (= lt!661254 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun res!1045211 () Bool)

(assert (=> start!130140 (=> (not res!1045211) (not e!851142))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130140 (= res!1045211 (validMask!0 mask!2512))))

(assert (=> start!130140 e!851142))

(assert (=> start!130140 true))

(declare-fun array_inv!37907 (array!101480) Bool)

(assert (=> start!130140 (array_inv!37907 a!2804)))

(declare-fun b!1527037 () Bool)

(assert (=> b!1527037 (= e!851147 e!851146)))

(declare-fun res!1045199 () Bool)

(assert (=> b!1527037 (=> (not res!1045199) (not e!851146))))

(declare-fun lt!661252 () array!101480)

(assert (=> b!1527037 (= res!1045199 (= lt!661251 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!661253 mask!2512) lt!661253 lt!661252 mask!2512)))))

(assert (=> b!1527037 (= lt!661253 (select (store (arr!48962 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1527037 (= lt!661252 (array!101481 (store (arr!48962 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49513 a!2804)))))

(declare-fun b!1527038 () Bool)

(declare-fun e!851145 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101480 (_ BitVec 32)) SeekEntryResult!13148)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101480 (_ BitVec 32)) SeekEntryResult!13148)

(assert (=> b!1527038 (= e!851145 (= (seekEntryOrOpen!0 lt!661253 lt!661252 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!661253 lt!661252 mask!2512)))))

(declare-fun b!1527039 () Bool)

(assert (=> b!1527039 (= e!851144 e!851145)))

(declare-fun res!1045209 () Bool)

(assert (=> b!1527039 (=> (not res!1045209) (not e!851145))))

(assert (=> b!1527039 (= res!1045209 (= (seekEntryOrOpen!0 (select (arr!48962 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48962 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1527040 () Bool)

(declare-fun res!1045202 () Bool)

(assert (=> b!1527040 (=> (not res!1045202) (not e!851147))))

(assert (=> b!1527040 (= res!1045202 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48962 a!2804) j!70) a!2804 mask!2512) lt!661255))))

(assert (= (and start!130140 res!1045211) b!1527035))

(assert (= (and b!1527035 res!1045210) b!1527027))

(assert (= (and b!1527027 res!1045208) b!1527033))

(assert (= (and b!1527033 res!1045212) b!1527028))

(assert (= (and b!1527028 res!1045200) b!1527032))

(assert (= (and b!1527032 res!1045203) b!1527034))

(assert (= (and b!1527034 res!1045207) b!1527030))

(assert (= (and b!1527030 res!1045206) b!1527040))

(assert (= (and b!1527040 res!1045202) b!1527037))

(assert (= (and b!1527037 res!1045199) b!1527036))

(assert (= (and b!1527036 res!1045201) b!1527031))

(assert (= (and b!1527031 res!1045205) b!1527029))

(assert (= (and b!1527029 (not res!1045204)) b!1527039))

(assert (= (and b!1527039 res!1045209) b!1527038))

(declare-fun m!1409947 () Bool)

(assert (=> b!1527040 m!1409947))

(assert (=> b!1527040 m!1409947))

(declare-fun m!1409949 () Bool)

(assert (=> b!1527040 m!1409949))

(declare-fun m!1409951 () Bool)

(assert (=> b!1527032 m!1409951))

(assert (=> b!1527031 m!1409947))

(assert (=> b!1527031 m!1409947))

(declare-fun m!1409953 () Bool)

(assert (=> b!1527031 m!1409953))

(assert (=> b!1527039 m!1409947))

(assert (=> b!1527039 m!1409947))

(declare-fun m!1409955 () Bool)

(assert (=> b!1527039 m!1409955))

(assert (=> b!1527039 m!1409947))

(declare-fun m!1409957 () Bool)

(assert (=> b!1527039 m!1409957))

(declare-fun m!1409959 () Bool)

(assert (=> b!1527027 m!1409959))

(assert (=> b!1527027 m!1409959))

(declare-fun m!1409961 () Bool)

(assert (=> b!1527027 m!1409961))

(declare-fun m!1409963 () Bool)

(assert (=> b!1527038 m!1409963))

(declare-fun m!1409965 () Bool)

(assert (=> b!1527038 m!1409965))

(declare-fun m!1409967 () Bool)

(assert (=> b!1527036 m!1409967))

(declare-fun m!1409969 () Bool)

(assert (=> b!1527036 m!1409969))

(declare-fun m!1409971 () Bool)

(assert (=> b!1527037 m!1409971))

(assert (=> b!1527037 m!1409971))

(declare-fun m!1409973 () Bool)

(assert (=> b!1527037 m!1409973))

(declare-fun m!1409975 () Bool)

(assert (=> b!1527037 m!1409975))

(declare-fun m!1409977 () Bool)

(assert (=> b!1527037 m!1409977))

(assert (=> b!1527033 m!1409947))

(assert (=> b!1527033 m!1409947))

(declare-fun m!1409979 () Bool)

(assert (=> b!1527033 m!1409979))

(assert (=> b!1527029 m!1409947))

(declare-fun m!1409981 () Bool)

(assert (=> b!1527029 m!1409981))

(declare-fun m!1409983 () Bool)

(assert (=> b!1527028 m!1409983))

(declare-fun m!1409985 () Bool)

(assert (=> start!130140 m!1409985))

(declare-fun m!1409987 () Bool)

(assert (=> start!130140 m!1409987))

(assert (=> b!1527030 m!1409947))

(assert (=> b!1527030 m!1409947))

(declare-fun m!1409989 () Bool)

(assert (=> b!1527030 m!1409989))

(assert (=> b!1527030 m!1409989))

(assert (=> b!1527030 m!1409947))

(declare-fun m!1409991 () Bool)

(assert (=> b!1527030 m!1409991))

(check-sat (not b!1527040) (not b!1527030) (not b!1527039) (not b!1527033) (not b!1527031) (not b!1527037) (not b!1527032) (not b!1527036) (not b!1527038) (not b!1527027) (not start!130140) (not b!1527028))
(check-sat)
