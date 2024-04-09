; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130094 () Bool)

(assert start!130094)

(declare-fun b!1526061 () Bool)

(declare-fun res!1044233 () Bool)

(declare-fun e!850661 () Bool)

(assert (=> b!1526061 (=> (not res!1044233) (not e!850661))))

(declare-datatypes ((array!101434 0))(
  ( (array!101435 (arr!48939 (Array (_ BitVec 32) (_ BitVec 64))) (size!49490 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101434)

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1526061 (= res!1044233 (validKeyInArray!0 (select (arr!48939 a!2804) i!961)))))

(declare-fun b!1526062 () Bool)

(declare-fun e!850664 () Bool)

(declare-fun e!850663 () Bool)

(assert (=> b!1526062 (= e!850664 e!850663)))

(declare-fun res!1044241 () Bool)

(assert (=> b!1526062 (=> (not res!1044241) (not e!850663))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13125 0))(
  ( (MissingZero!13125 (index!54894 (_ BitVec 32))) (Found!13125 (index!54895 (_ BitVec 32))) (Intermediate!13125 (undefined!13937 Bool) (index!54896 (_ BitVec 32)) (x!136598 (_ BitVec 32))) (Undefined!13125) (MissingVacant!13125 (index!54897 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101434 (_ BitVec 32)) SeekEntryResult!13125)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101434 (_ BitVec 32)) SeekEntryResult!13125)

(assert (=> b!1526062 (= res!1044241 (= (seekEntryOrOpen!0 (select (arr!48939 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48939 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1526063 () Bool)

(declare-fun e!850660 () Bool)

(declare-fun e!850659 () Bool)

(assert (=> b!1526063 (= e!850660 e!850659)))

(declare-fun res!1044239 () Bool)

(assert (=> b!1526063 (=> (not res!1044239) (not e!850659))))

(declare-fun lt!660907 () SeekEntryResult!13125)

(declare-fun lt!660906 () (_ BitVec 64))

(declare-fun lt!660908 () array!101434)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101434 (_ BitVec 32)) SeekEntryResult!13125)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1526063 (= res!1044239 (= lt!660907 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!660906 mask!2512) lt!660906 lt!660908 mask!2512)))))

(assert (=> b!1526063 (= lt!660906 (select (store (arr!48939 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1526063 (= lt!660908 (array!101435 (store (arr!48939 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49490 a!2804)))))

(declare-fun b!1526064 () Bool)

(declare-fun e!850658 () Bool)

(assert (=> b!1526064 (= e!850658 e!850664)))

(declare-fun res!1044246 () Bool)

(assert (=> b!1526064 (=> res!1044246 e!850664)))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1526064 (= res!1044246 (or (not (= (select (arr!48939 a!2804) j!70) lt!660906)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48939 a!2804) index!487) (select (arr!48939 a!2804) j!70)) (not (= (select (arr!48939 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!1044244 () Bool)

(assert (=> start!130094 (=> (not res!1044244) (not e!850661))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130094 (= res!1044244 (validMask!0 mask!2512))))

(assert (=> start!130094 e!850661))

(assert (=> start!130094 true))

(declare-fun array_inv!37884 (array!101434) Bool)

(assert (=> start!130094 (array_inv!37884 a!2804)))

(declare-fun b!1526065 () Bool)

(declare-fun res!1044243 () Bool)

(assert (=> b!1526065 (=> (not res!1044243) (not e!850660))))

(declare-fun lt!660910 () SeekEntryResult!13125)

(assert (=> b!1526065 (= res!1044243 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48939 a!2804) j!70) a!2804 mask!2512) lt!660910))))

(declare-fun b!1526066 () Bool)

(declare-fun res!1044237 () Bool)

(assert (=> b!1526066 (=> (not res!1044237) (not e!850661))))

(assert (=> b!1526066 (= res!1044237 (and (= (size!49490 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49490 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49490 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1526067 () Bool)

(assert (=> b!1526067 (= e!850659 (not true))))

(assert (=> b!1526067 e!850658))

(declare-fun res!1044245 () Bool)

(assert (=> b!1526067 (=> (not res!1044245) (not e!850658))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101434 (_ BitVec 32)) Bool)

(assert (=> b!1526067 (= res!1044245 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50990 0))(
  ( (Unit!50991) )
))
(declare-fun lt!660909 () Unit!50990)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101434 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50990)

(assert (=> b!1526067 (= lt!660909 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1526068 () Bool)

(declare-fun res!1044242 () Bool)

(assert (=> b!1526068 (=> (not res!1044242) (not e!850661))))

(declare-datatypes ((List!35602 0))(
  ( (Nil!35599) (Cons!35598 (h!37032 (_ BitVec 64)) (t!50303 List!35602)) )
))
(declare-fun arrayNoDuplicates!0 (array!101434 (_ BitVec 32) List!35602) Bool)

(assert (=> b!1526068 (= res!1044242 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35599))))

(declare-fun b!1526069 () Bool)

(declare-fun res!1044236 () Bool)

(assert (=> b!1526069 (=> (not res!1044236) (not e!850661))))

(assert (=> b!1526069 (= res!1044236 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1526070 () Bool)

(declare-fun res!1044238 () Bool)

(assert (=> b!1526070 (=> (not res!1044238) (not e!850661))))

(assert (=> b!1526070 (= res!1044238 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49490 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49490 a!2804))))))

(declare-fun b!1526071 () Bool)

(declare-fun res!1044234 () Bool)

(assert (=> b!1526071 (=> (not res!1044234) (not e!850661))))

(assert (=> b!1526071 (= res!1044234 (validKeyInArray!0 (select (arr!48939 a!2804) j!70)))))

(declare-fun b!1526072 () Bool)

(declare-fun res!1044240 () Bool)

(assert (=> b!1526072 (=> (not res!1044240) (not e!850658))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!101434 (_ BitVec 32)) SeekEntryResult!13125)

(assert (=> b!1526072 (= res!1044240 (= (seekEntry!0 (select (arr!48939 a!2804) j!70) a!2804 mask!2512) (Found!13125 j!70)))))

(declare-fun b!1526073 () Bool)

(assert (=> b!1526073 (= e!850661 e!850660)))

(declare-fun res!1044235 () Bool)

(assert (=> b!1526073 (=> (not res!1044235) (not e!850660))))

(assert (=> b!1526073 (= res!1044235 (= lt!660907 lt!660910))))

(assert (=> b!1526073 (= lt!660910 (Intermediate!13125 false resIndex!21 resX!21))))

(assert (=> b!1526073 (= lt!660907 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48939 a!2804) j!70) mask!2512) (select (arr!48939 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1526074 () Bool)

(assert (=> b!1526074 (= e!850663 (= (seekEntryOrOpen!0 lt!660906 lt!660908 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!660906 lt!660908 mask!2512)))))

(assert (= (and start!130094 res!1044244) b!1526066))

(assert (= (and b!1526066 res!1044237) b!1526061))

(assert (= (and b!1526061 res!1044233) b!1526071))

(assert (= (and b!1526071 res!1044234) b!1526069))

(assert (= (and b!1526069 res!1044236) b!1526068))

(assert (= (and b!1526068 res!1044242) b!1526070))

(assert (= (and b!1526070 res!1044238) b!1526073))

(assert (= (and b!1526073 res!1044235) b!1526065))

(assert (= (and b!1526065 res!1044243) b!1526063))

(assert (= (and b!1526063 res!1044239) b!1526067))

(assert (= (and b!1526067 res!1044245) b!1526072))

(assert (= (and b!1526072 res!1044240) b!1526064))

(assert (= (and b!1526064 (not res!1044246)) b!1526062))

(assert (= (and b!1526062 res!1044241) b!1526074))

(declare-fun m!1408889 () Bool)

(assert (=> b!1526061 m!1408889))

(assert (=> b!1526061 m!1408889))

(declare-fun m!1408891 () Bool)

(assert (=> b!1526061 m!1408891))

(declare-fun m!1408893 () Bool)

(assert (=> b!1526067 m!1408893))

(declare-fun m!1408895 () Bool)

(assert (=> b!1526067 m!1408895))

(declare-fun m!1408897 () Bool)

(assert (=> b!1526074 m!1408897))

(declare-fun m!1408899 () Bool)

(assert (=> b!1526074 m!1408899))

(declare-fun m!1408901 () Bool)

(assert (=> b!1526068 m!1408901))

(declare-fun m!1408903 () Bool)

(assert (=> b!1526071 m!1408903))

(assert (=> b!1526071 m!1408903))

(declare-fun m!1408905 () Bool)

(assert (=> b!1526071 m!1408905))

(declare-fun m!1408907 () Bool)

(assert (=> b!1526069 m!1408907))

(assert (=> b!1526065 m!1408903))

(assert (=> b!1526065 m!1408903))

(declare-fun m!1408909 () Bool)

(assert (=> b!1526065 m!1408909))

(assert (=> b!1526073 m!1408903))

(assert (=> b!1526073 m!1408903))

(declare-fun m!1408911 () Bool)

(assert (=> b!1526073 m!1408911))

(assert (=> b!1526073 m!1408911))

(assert (=> b!1526073 m!1408903))

(declare-fun m!1408913 () Bool)

(assert (=> b!1526073 m!1408913))

(assert (=> b!1526062 m!1408903))

(assert (=> b!1526062 m!1408903))

(declare-fun m!1408915 () Bool)

(assert (=> b!1526062 m!1408915))

(assert (=> b!1526062 m!1408903))

(declare-fun m!1408917 () Bool)

(assert (=> b!1526062 m!1408917))

(assert (=> b!1526072 m!1408903))

(assert (=> b!1526072 m!1408903))

(declare-fun m!1408919 () Bool)

(assert (=> b!1526072 m!1408919))

(declare-fun m!1408921 () Bool)

(assert (=> start!130094 m!1408921))

(declare-fun m!1408923 () Bool)

(assert (=> start!130094 m!1408923))

(declare-fun m!1408925 () Bool)

(assert (=> b!1526063 m!1408925))

(assert (=> b!1526063 m!1408925))

(declare-fun m!1408927 () Bool)

(assert (=> b!1526063 m!1408927))

(declare-fun m!1408929 () Bool)

(assert (=> b!1526063 m!1408929))

(declare-fun m!1408931 () Bool)

(assert (=> b!1526063 m!1408931))

(assert (=> b!1526064 m!1408903))

(declare-fun m!1408933 () Bool)

(assert (=> b!1526064 m!1408933))

(push 1)

(assert (not b!1526073))

(assert (not b!1526074))

(assert (not b!1526067))

(assert (not start!130094))

(assert (not b!1526063))

(assert (not b!1526065))

(assert (not b!1526069))

(assert (not b!1526061))

(assert (not b!1526071))

(assert (not b!1526062))

(assert (not b!1526068))

(assert (not b!1526072))

(check-sat)

(pop 1)

(push 1)

(check-sat)

