; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130138 () Bool)

(assert start!130138)

(declare-fun res!1045157 () Bool)

(declare-fun e!851123 () Bool)

(assert (=> start!130138 (=> (not res!1045157) (not e!851123))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130138 (= res!1045157 (validMask!0 mask!2512))))

(assert (=> start!130138 e!851123))

(assert (=> start!130138 true))

(declare-datatypes ((array!101478 0))(
  ( (array!101479 (arr!48961 (Array (_ BitVec 32) (_ BitVec 64))) (size!49512 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101478)

(declare-fun array_inv!37906 (array!101478) Bool)

(assert (=> start!130138 (array_inv!37906 a!2804)))

(declare-fun b!1526985 () Bool)

(declare-fun res!1045158 () Bool)

(assert (=> b!1526985 (=> (not res!1045158) (not e!851123))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1526985 (= res!1045158 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49512 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49512 a!2804))))))

(declare-fun b!1526986 () Bool)

(declare-fun res!1045161 () Bool)

(declare-fun e!851125 () Bool)

(assert (=> b!1526986 (=> (not res!1045161) (not e!851125))))

(declare-fun j!70 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13147 0))(
  ( (MissingZero!13147 (index!54982 (_ BitVec 32))) (Found!13147 (index!54983 (_ BitVec 32))) (Intermediate!13147 (undefined!13959 Bool) (index!54984 (_ BitVec 32)) (x!136684 (_ BitVec 32))) (Undefined!13147) (MissingVacant!13147 (index!54985 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!101478 (_ BitVec 32)) SeekEntryResult!13147)

(assert (=> b!1526986 (= res!1045161 (= (seekEntry!0 (select (arr!48961 a!2804) j!70) a!2804 mask!2512) (Found!13147 j!70)))))

(declare-fun b!1526987 () Bool)

(declare-fun lt!661238 () (_ BitVec 64))

(declare-fun lt!661239 () array!101478)

(declare-fun e!851120 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101478 (_ BitVec 32)) SeekEntryResult!13147)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101478 (_ BitVec 32)) SeekEntryResult!13147)

(assert (=> b!1526987 (= e!851120 (= (seekEntryOrOpen!0 lt!661238 lt!661239 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!661238 lt!661239 mask!2512)))))

(declare-fun b!1526988 () Bool)

(declare-fun res!1045159 () Bool)

(assert (=> b!1526988 (=> (not res!1045159) (not e!851123))))

(declare-datatypes ((List!35624 0))(
  ( (Nil!35621) (Cons!35620 (h!37054 (_ BitVec 64)) (t!50325 List!35624)) )
))
(declare-fun arrayNoDuplicates!0 (array!101478 (_ BitVec 32) List!35624) Bool)

(assert (=> b!1526988 (= res!1045159 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35621))))

(declare-fun b!1526989 () Bool)

(declare-fun res!1045168 () Bool)

(assert (=> b!1526989 (=> (not res!1045168) (not e!851123))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1526989 (= res!1045168 (and (= (size!49512 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49512 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49512 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1526990 () Bool)

(declare-fun res!1045163 () Bool)

(assert (=> b!1526990 (=> (not res!1045163) (not e!851123))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1526990 (= res!1045163 (validKeyInArray!0 (select (arr!48961 a!2804) j!70)))))

(declare-fun b!1526991 () Bool)

(declare-fun e!851126 () Bool)

(assert (=> b!1526991 (= e!851123 e!851126)))

(declare-fun res!1045169 () Bool)

(assert (=> b!1526991 (=> (not res!1045169) (not e!851126))))

(declare-fun lt!661240 () SeekEntryResult!13147)

(declare-fun lt!661237 () SeekEntryResult!13147)

(assert (=> b!1526991 (= res!1045169 (= lt!661240 lt!661237))))

(assert (=> b!1526991 (= lt!661237 (Intermediate!13147 false resIndex!21 resX!21))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101478 (_ BitVec 32)) SeekEntryResult!13147)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1526991 (= lt!661240 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48961 a!2804) j!70) mask!2512) (select (arr!48961 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1526992 () Bool)

(declare-fun res!1045170 () Bool)

(assert (=> b!1526992 (=> (not res!1045170) (not e!851123))))

(assert (=> b!1526992 (= res!1045170 (validKeyInArray!0 (select (arr!48961 a!2804) i!961)))))

(declare-fun b!1526993 () Bool)

(declare-fun res!1045165 () Bool)

(assert (=> b!1526993 (=> (not res!1045165) (not e!851123))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101478 (_ BitVec 32)) Bool)

(assert (=> b!1526993 (= res!1045165 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1526994 () Bool)

(declare-fun e!851122 () Bool)

(assert (=> b!1526994 (= e!851126 e!851122)))

(declare-fun res!1045164 () Bool)

(assert (=> b!1526994 (=> (not res!1045164) (not e!851122))))

(assert (=> b!1526994 (= res!1045164 (= lt!661240 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!661238 mask!2512) lt!661238 lt!661239 mask!2512)))))

(assert (=> b!1526994 (= lt!661238 (select (store (arr!48961 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1526994 (= lt!661239 (array!101479 (store (arr!48961 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49512 a!2804)))))

(declare-fun b!1526995 () Bool)

(declare-fun e!851121 () Bool)

(assert (=> b!1526995 (= e!851121 e!851120)))

(declare-fun res!1045160 () Bool)

(assert (=> b!1526995 (=> (not res!1045160) (not e!851120))))

(assert (=> b!1526995 (= res!1045160 (= (seekEntryOrOpen!0 (select (arr!48961 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48961 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1526996 () Bool)

(assert (=> b!1526996 (= e!851122 (not true))))

(assert (=> b!1526996 e!851125))

(declare-fun res!1045162 () Bool)

(assert (=> b!1526996 (=> (not res!1045162) (not e!851125))))

(assert (=> b!1526996 (= res!1045162 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!51034 0))(
  ( (Unit!51035) )
))
(declare-fun lt!661236 () Unit!51034)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101478 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51034)

(assert (=> b!1526996 (= lt!661236 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1526997 () Bool)

(declare-fun res!1045166 () Bool)

(assert (=> b!1526997 (=> (not res!1045166) (not e!851126))))

(assert (=> b!1526997 (= res!1045166 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48961 a!2804) j!70) a!2804 mask!2512) lt!661237))))

(declare-fun b!1526998 () Bool)

(assert (=> b!1526998 (= e!851125 e!851121)))

(declare-fun res!1045167 () Bool)

(assert (=> b!1526998 (=> res!1045167 e!851121)))

(assert (=> b!1526998 (= res!1045167 (or (not (= (select (arr!48961 a!2804) j!70) lt!661238)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48961 a!2804) index!487) (select (arr!48961 a!2804) j!70)) (not (= (select (arr!48961 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and start!130138 res!1045157) b!1526989))

(assert (= (and b!1526989 res!1045168) b!1526992))

(assert (= (and b!1526992 res!1045170) b!1526990))

(assert (= (and b!1526990 res!1045163) b!1526993))

(assert (= (and b!1526993 res!1045165) b!1526988))

(assert (= (and b!1526988 res!1045159) b!1526985))

(assert (= (and b!1526985 res!1045158) b!1526991))

(assert (= (and b!1526991 res!1045169) b!1526997))

(assert (= (and b!1526997 res!1045166) b!1526994))

(assert (= (and b!1526994 res!1045164) b!1526996))

(assert (= (and b!1526996 res!1045162) b!1526986))

(assert (= (and b!1526986 res!1045161) b!1526998))

(assert (= (and b!1526998 (not res!1045167)) b!1526995))

(assert (= (and b!1526995 res!1045160) b!1526987))

(declare-fun m!1409901 () Bool)

(assert (=> b!1526998 m!1409901))

(declare-fun m!1409903 () Bool)

(assert (=> b!1526998 m!1409903))

(declare-fun m!1409905 () Bool)

(assert (=> b!1526992 m!1409905))

(assert (=> b!1526992 m!1409905))

(declare-fun m!1409907 () Bool)

(assert (=> b!1526992 m!1409907))

(assert (=> b!1526986 m!1409901))

(assert (=> b!1526986 m!1409901))

(declare-fun m!1409909 () Bool)

(assert (=> b!1526986 m!1409909))

(declare-fun m!1409911 () Bool)

(assert (=> b!1526996 m!1409911))

(declare-fun m!1409913 () Bool)

(assert (=> b!1526996 m!1409913))

(assert (=> b!1526995 m!1409901))

(assert (=> b!1526995 m!1409901))

(declare-fun m!1409915 () Bool)

(assert (=> b!1526995 m!1409915))

(assert (=> b!1526995 m!1409901))

(declare-fun m!1409917 () Bool)

(assert (=> b!1526995 m!1409917))

(declare-fun m!1409919 () Bool)

(assert (=> b!1526988 m!1409919))

(assert (=> b!1526997 m!1409901))

(assert (=> b!1526997 m!1409901))

(declare-fun m!1409921 () Bool)

(assert (=> b!1526997 m!1409921))

(declare-fun m!1409923 () Bool)

(assert (=> b!1526994 m!1409923))

(assert (=> b!1526994 m!1409923))

(declare-fun m!1409925 () Bool)

(assert (=> b!1526994 m!1409925))

(declare-fun m!1409927 () Bool)

(assert (=> b!1526994 m!1409927))

(declare-fun m!1409929 () Bool)

(assert (=> b!1526994 m!1409929))

(declare-fun m!1409931 () Bool)

(assert (=> b!1526987 m!1409931))

(declare-fun m!1409933 () Bool)

(assert (=> b!1526987 m!1409933))

(declare-fun m!1409935 () Bool)

(assert (=> start!130138 m!1409935))

(declare-fun m!1409937 () Bool)

(assert (=> start!130138 m!1409937))

(assert (=> b!1526990 m!1409901))

(assert (=> b!1526990 m!1409901))

(declare-fun m!1409939 () Bool)

(assert (=> b!1526990 m!1409939))

(declare-fun m!1409941 () Bool)

(assert (=> b!1526993 m!1409941))

(assert (=> b!1526991 m!1409901))

(assert (=> b!1526991 m!1409901))

(declare-fun m!1409943 () Bool)

(assert (=> b!1526991 m!1409943))

(assert (=> b!1526991 m!1409943))

(assert (=> b!1526991 m!1409901))

(declare-fun m!1409945 () Bool)

(assert (=> b!1526991 m!1409945))

(push 1)

