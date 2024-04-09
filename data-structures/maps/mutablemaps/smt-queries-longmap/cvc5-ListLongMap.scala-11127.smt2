; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130090 () Bool)

(assert start!130090)

(declare-fun b!1525977 () Bool)

(declare-fun res!1044150 () Bool)

(declare-fun e!850618 () Bool)

(assert (=> b!1525977 (=> (not res!1044150) (not e!850618))))

(declare-datatypes ((array!101430 0))(
  ( (array!101431 (arr!48937 (Array (_ BitVec 32) (_ BitVec 64))) (size!49488 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101430)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101430 (_ BitVec 32)) Bool)

(assert (=> b!1525977 (= res!1044150 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1525978 () Bool)

(declare-fun res!1044154 () Bool)

(assert (=> b!1525978 (=> (not res!1044154) (not e!850618))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(assert (=> b!1525978 (= res!1044154 (and (= (size!49488 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49488 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49488 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1525979 () Bool)

(declare-fun res!1044159 () Bool)

(assert (=> b!1525979 (=> (not res!1044159) (not e!850618))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1525979 (= res!1044159 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49488 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49488 a!2804))))))

(declare-fun b!1525980 () Bool)

(declare-fun e!850622 () Bool)

(declare-fun e!850621 () Bool)

(assert (=> b!1525980 (= e!850622 e!850621)))

(declare-fun res!1044151 () Bool)

(assert (=> b!1525980 (=> (not res!1044151) (not e!850621))))

(declare-datatypes ((SeekEntryResult!13123 0))(
  ( (MissingZero!13123 (index!54886 (_ BitVec 32))) (Found!13123 (index!54887 (_ BitVec 32))) (Intermediate!13123 (undefined!13935 Bool) (index!54888 (_ BitVec 32)) (x!136596 (_ BitVec 32))) (Undefined!13123) (MissingVacant!13123 (index!54889 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101430 (_ BitVec 32)) SeekEntryResult!13123)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101430 (_ BitVec 32)) SeekEntryResult!13123)

(assert (=> b!1525980 (= res!1044151 (= (seekEntryOrOpen!0 (select (arr!48937 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48937 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1525981 () Bool)

(declare-fun res!1044155 () Bool)

(assert (=> b!1525981 (=> (not res!1044155) (not e!850618))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1525981 (= res!1044155 (validKeyInArray!0 (select (arr!48937 a!2804) j!70)))))

(declare-fun b!1525982 () Bool)

(declare-fun res!1044156 () Bool)

(declare-fun e!850617 () Bool)

(assert (=> b!1525982 (=> (not res!1044156) (not e!850617))))

(declare-fun lt!660879 () SeekEntryResult!13123)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101430 (_ BitVec 32)) SeekEntryResult!13123)

(assert (=> b!1525982 (= res!1044156 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48937 a!2804) j!70) a!2804 mask!2512) lt!660879))))

(declare-fun lt!660876 () array!101430)

(declare-fun lt!660880 () (_ BitVec 64))

(declare-fun b!1525983 () Bool)

(assert (=> b!1525983 (= e!850621 (= (seekEntryOrOpen!0 lt!660880 lt!660876 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!660880 lt!660876 mask!2512)))))

(declare-fun b!1525984 () Bool)

(declare-fun res!1044160 () Bool)

(assert (=> b!1525984 (=> (not res!1044160) (not e!850618))))

(declare-datatypes ((List!35600 0))(
  ( (Nil!35597) (Cons!35596 (h!37030 (_ BitVec 64)) (t!50301 List!35600)) )
))
(declare-fun arrayNoDuplicates!0 (array!101430 (_ BitVec 32) List!35600) Bool)

(assert (=> b!1525984 (= res!1044160 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35597))))

(declare-fun res!1044149 () Bool)

(assert (=> start!130090 (=> (not res!1044149) (not e!850618))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130090 (= res!1044149 (validMask!0 mask!2512))))

(assert (=> start!130090 e!850618))

(assert (=> start!130090 true))

(declare-fun array_inv!37882 (array!101430) Bool)

(assert (=> start!130090 (array_inv!37882 a!2804)))

(declare-fun b!1525985 () Bool)

(assert (=> b!1525985 (= e!850618 e!850617)))

(declare-fun res!1044157 () Bool)

(assert (=> b!1525985 (=> (not res!1044157) (not e!850617))))

(declare-fun lt!660877 () SeekEntryResult!13123)

(assert (=> b!1525985 (= res!1044157 (= lt!660877 lt!660879))))

(assert (=> b!1525985 (= lt!660879 (Intermediate!13123 false resIndex!21 resX!21))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1525985 (= lt!660877 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48937 a!2804) j!70) mask!2512) (select (arr!48937 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1525986 () Bool)

(declare-fun res!1044153 () Bool)

(declare-fun e!850620 () Bool)

(assert (=> b!1525986 (=> (not res!1044153) (not e!850620))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!101430 (_ BitVec 32)) SeekEntryResult!13123)

(assert (=> b!1525986 (= res!1044153 (= (seekEntry!0 (select (arr!48937 a!2804) j!70) a!2804 mask!2512) (Found!13123 j!70)))))

(declare-fun b!1525987 () Bool)

(assert (=> b!1525987 (= e!850620 e!850622)))

(declare-fun res!1044158 () Bool)

(assert (=> b!1525987 (=> res!1044158 e!850622)))

(assert (=> b!1525987 (= res!1044158 (or (not (= (select (arr!48937 a!2804) j!70) lt!660880)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48937 a!2804) index!487) (select (arr!48937 a!2804) j!70)) (not (= (select (arr!48937 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1525988 () Bool)

(declare-fun res!1044162 () Bool)

(assert (=> b!1525988 (=> (not res!1044162) (not e!850618))))

(assert (=> b!1525988 (= res!1044162 (validKeyInArray!0 (select (arr!48937 a!2804) i!961)))))

(declare-fun b!1525989 () Bool)

(declare-fun e!850616 () Bool)

(assert (=> b!1525989 (= e!850616 (not true))))

(assert (=> b!1525989 e!850620))

(declare-fun res!1044152 () Bool)

(assert (=> b!1525989 (=> (not res!1044152) (not e!850620))))

(assert (=> b!1525989 (= res!1044152 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50986 0))(
  ( (Unit!50987) )
))
(declare-fun lt!660878 () Unit!50986)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101430 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50986)

(assert (=> b!1525989 (= lt!660878 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1525990 () Bool)

(assert (=> b!1525990 (= e!850617 e!850616)))

(declare-fun res!1044161 () Bool)

(assert (=> b!1525990 (=> (not res!1044161) (not e!850616))))

(assert (=> b!1525990 (= res!1044161 (= lt!660877 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!660880 mask!2512) lt!660880 lt!660876 mask!2512)))))

(assert (=> b!1525990 (= lt!660880 (select (store (arr!48937 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1525990 (= lt!660876 (array!101431 (store (arr!48937 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49488 a!2804)))))

(assert (= (and start!130090 res!1044149) b!1525978))

(assert (= (and b!1525978 res!1044154) b!1525988))

(assert (= (and b!1525988 res!1044162) b!1525981))

(assert (= (and b!1525981 res!1044155) b!1525977))

(assert (= (and b!1525977 res!1044150) b!1525984))

(assert (= (and b!1525984 res!1044160) b!1525979))

(assert (= (and b!1525979 res!1044159) b!1525985))

(assert (= (and b!1525985 res!1044157) b!1525982))

(assert (= (and b!1525982 res!1044156) b!1525990))

(assert (= (and b!1525990 res!1044161) b!1525989))

(assert (= (and b!1525989 res!1044152) b!1525986))

(assert (= (and b!1525986 res!1044153) b!1525987))

(assert (= (and b!1525987 (not res!1044158)) b!1525980))

(assert (= (and b!1525980 res!1044151) b!1525983))

(declare-fun m!1408797 () Bool)

(assert (=> start!130090 m!1408797))

(declare-fun m!1408799 () Bool)

(assert (=> start!130090 m!1408799))

(declare-fun m!1408801 () Bool)

(assert (=> b!1525987 m!1408801))

(declare-fun m!1408803 () Bool)

(assert (=> b!1525987 m!1408803))

(assert (=> b!1525981 m!1408801))

(assert (=> b!1525981 m!1408801))

(declare-fun m!1408805 () Bool)

(assert (=> b!1525981 m!1408805))

(declare-fun m!1408807 () Bool)

(assert (=> b!1525990 m!1408807))

(assert (=> b!1525990 m!1408807))

(declare-fun m!1408809 () Bool)

(assert (=> b!1525990 m!1408809))

(declare-fun m!1408811 () Bool)

(assert (=> b!1525990 m!1408811))

(declare-fun m!1408813 () Bool)

(assert (=> b!1525990 m!1408813))

(assert (=> b!1525982 m!1408801))

(assert (=> b!1525982 m!1408801))

(declare-fun m!1408815 () Bool)

(assert (=> b!1525982 m!1408815))

(declare-fun m!1408817 () Bool)

(assert (=> b!1525983 m!1408817))

(declare-fun m!1408819 () Bool)

(assert (=> b!1525983 m!1408819))

(assert (=> b!1525985 m!1408801))

(assert (=> b!1525985 m!1408801))

(declare-fun m!1408821 () Bool)

(assert (=> b!1525985 m!1408821))

(assert (=> b!1525985 m!1408821))

(assert (=> b!1525985 m!1408801))

(declare-fun m!1408823 () Bool)

(assert (=> b!1525985 m!1408823))

(declare-fun m!1408825 () Bool)

(assert (=> b!1525977 m!1408825))

(assert (=> b!1525986 m!1408801))

(assert (=> b!1525986 m!1408801))

(declare-fun m!1408827 () Bool)

(assert (=> b!1525986 m!1408827))

(assert (=> b!1525980 m!1408801))

(assert (=> b!1525980 m!1408801))

(declare-fun m!1408829 () Bool)

(assert (=> b!1525980 m!1408829))

(assert (=> b!1525980 m!1408801))

(declare-fun m!1408831 () Bool)

(assert (=> b!1525980 m!1408831))

(declare-fun m!1408833 () Bool)

(assert (=> b!1525984 m!1408833))

(declare-fun m!1408835 () Bool)

(assert (=> b!1525988 m!1408835))

(assert (=> b!1525988 m!1408835))

(declare-fun m!1408837 () Bool)

(assert (=> b!1525988 m!1408837))

(declare-fun m!1408839 () Bool)

(assert (=> b!1525989 m!1408839))

(declare-fun m!1408841 () Bool)

(assert (=> b!1525989 m!1408841))

(push 1)

