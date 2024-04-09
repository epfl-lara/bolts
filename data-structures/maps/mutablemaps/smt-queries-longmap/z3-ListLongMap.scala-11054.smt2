; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!129204 () Bool)

(assert start!129204)

(declare-fun b!1515873 () Bool)

(declare-fun e!845957 () Bool)

(declare-fun e!845953 () Bool)

(assert (=> b!1515873 (= e!845957 e!845953)))

(declare-fun res!1035849 () Bool)

(assert (=> b!1515873 (=> (not res!1035849) (not e!845953))))

(declare-datatypes ((SeekEntryResult!12911 0))(
  ( (MissingZero!12911 (index!54038 (_ BitVec 32))) (Found!12911 (index!54039 (_ BitVec 32))) (Intermediate!12911 (undefined!13723 Bool) (index!54040 (_ BitVec 32)) (x!135746 (_ BitVec 32))) (Undefined!12911) (MissingVacant!12911 (index!54041 (_ BitVec 32))) )
))
(declare-fun lt!657186 () SeekEntryResult!12911)

(declare-fun lt!657184 () SeekEntryResult!12911)

(assert (=> b!1515873 (= res!1035849 (= lt!657186 lt!657184))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1515873 (= lt!657184 (Intermediate!12911 false resIndex!21 resX!21))))

(declare-fun j!70 () (_ BitVec 32))

(declare-datatypes ((array!100973 0))(
  ( (array!100974 (arr!48719 (Array (_ BitVec 32) (_ BitVec 64))) (size!49270 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100973)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100973 (_ BitVec 32)) SeekEntryResult!12911)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1515873 (= lt!657186 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48719 a!2804) j!70) mask!2512) (select (arr!48719 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1515874 () Bool)

(declare-fun res!1035861 () Bool)

(assert (=> b!1515874 (=> (not res!1035861) (not e!845957))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1515874 (= res!1035861 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49270 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49270 a!2804))))))

(declare-fun b!1515875 () Bool)

(declare-fun e!845955 () Bool)

(assert (=> b!1515875 (= e!845953 e!845955)))

(declare-fun res!1035855 () Bool)

(assert (=> b!1515875 (=> (not res!1035855) (not e!845955))))

(declare-fun lt!657192 () (_ BitVec 64))

(declare-fun lt!657188 () array!100973)

(assert (=> b!1515875 (= res!1035855 (= lt!657186 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!657192 mask!2512) lt!657192 lt!657188 mask!2512)))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1515875 (= lt!657192 (select (store (arr!48719 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1515875 (= lt!657188 (array!100974 (store (arr!48719 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49270 a!2804)))))

(declare-fun b!1515877 () Bool)

(declare-fun res!1035858 () Bool)

(assert (=> b!1515877 (=> (not res!1035858) (not e!845957))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100973 (_ BitVec 32)) Bool)

(assert (=> b!1515877 (= res!1035858 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1515878 () Bool)

(declare-fun res!1035860 () Bool)

(assert (=> b!1515878 (=> (not res!1035860) (not e!845957))))

(assert (=> b!1515878 (= res!1035860 (and (= (size!49270 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49270 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49270 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1515879 () Bool)

(declare-fun e!845950 () Bool)

(declare-fun e!845954 () Bool)

(assert (=> b!1515879 (= e!845950 e!845954)))

(declare-fun res!1035851 () Bool)

(assert (=> b!1515879 (=> res!1035851 e!845954)))

(assert (=> b!1515879 (= res!1035851 (bvslt mask!2512 #b00000000000000000000000000000000))))

(declare-fun lt!657187 () SeekEntryResult!12911)

(declare-fun lt!657190 () SeekEntryResult!12911)

(assert (=> b!1515879 (= lt!657187 lt!657190)))

(declare-datatypes ((Unit!50646 0))(
  ( (Unit!50647) )
))
(declare-fun lt!657193 () Unit!50646)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 (array!100973 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50646)

(assert (=> b!1515879 (= lt!657193 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 a!2804 i!961 j!70 x!534 index!487 index!487 mask!2512))))

(declare-fun b!1515880 () Bool)

(declare-fun e!845956 () Bool)

(assert (=> b!1515880 (= e!845955 (not e!845956))))

(declare-fun res!1035857 () Bool)

(assert (=> b!1515880 (=> res!1035857 e!845956)))

(assert (=> b!1515880 (= res!1035857 (or (not (= (select (arr!48719 a!2804) j!70) lt!657192)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48719 a!2804) index!487) (select (arr!48719 a!2804) j!70)) (not (= (select (arr!48719 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!845952 () Bool)

(assert (=> b!1515880 e!845952))

(declare-fun res!1035853 () Bool)

(assert (=> b!1515880 (=> (not res!1035853) (not e!845952))))

(assert (=> b!1515880 (= res!1035853 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-fun lt!657185 () Unit!50646)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100973 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50646)

(assert (=> b!1515880 (= lt!657185 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1515881 () Bool)

(declare-fun res!1035850 () Bool)

(assert (=> b!1515881 (=> (not res!1035850) (not e!845953))))

(assert (=> b!1515881 (= res!1035850 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48719 a!2804) j!70) a!2804 mask!2512) lt!657184))))

(declare-fun b!1515882 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1515882 (= e!845954 (validKeyInArray!0 lt!657192))))

(declare-fun b!1515883 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!100973 (_ BitVec 32)) SeekEntryResult!12911)

(assert (=> b!1515883 (= e!845952 (= (seekEntry!0 (select (arr!48719 a!2804) j!70) a!2804 mask!2512) (Found!12911 j!70)))))

(declare-fun b!1515884 () Bool)

(declare-fun res!1035854 () Bool)

(assert (=> b!1515884 (=> (not res!1035854) (not e!845957))))

(declare-datatypes ((List!35382 0))(
  ( (Nil!35379) (Cons!35378 (h!36791 (_ BitVec 64)) (t!50083 List!35382)) )
))
(declare-fun arrayNoDuplicates!0 (array!100973 (_ BitVec 32) List!35382) Bool)

(assert (=> b!1515884 (= res!1035854 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35379))))

(declare-fun b!1515885 () Bool)

(declare-fun res!1035859 () Bool)

(assert (=> b!1515885 (=> (not res!1035859) (not e!845957))))

(assert (=> b!1515885 (= res!1035859 (validKeyInArray!0 (select (arr!48719 a!2804) i!961)))))

(declare-fun b!1515886 () Bool)

(assert (=> b!1515886 (= e!845956 e!845950)))

(declare-fun res!1035852 () Bool)

(assert (=> b!1515886 (=> res!1035852 e!845950)))

(assert (=> b!1515886 (= res!1035852 (not (= lt!657190 (Found!12911 j!70))))))

(declare-fun lt!657191 () SeekEntryResult!12911)

(assert (=> b!1515886 (= lt!657191 lt!657187)))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100973 (_ BitVec 32)) SeekEntryResult!12911)

(assert (=> b!1515886 (= lt!657187 (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!657192 lt!657188 mask!2512))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100973 (_ BitVec 32)) SeekEntryResult!12911)

(assert (=> b!1515886 (= lt!657191 (seekEntryOrOpen!0 lt!657192 lt!657188 mask!2512))))

(declare-fun lt!657189 () SeekEntryResult!12911)

(assert (=> b!1515886 (= lt!657189 lt!657190)))

(assert (=> b!1515886 (= lt!657190 (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48719 a!2804) j!70) a!2804 mask!2512))))

(assert (=> b!1515886 (= lt!657189 (seekEntryOrOpen!0 (select (arr!48719 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1515876 () Bool)

(declare-fun res!1035848 () Bool)

(assert (=> b!1515876 (=> (not res!1035848) (not e!845957))))

(assert (=> b!1515876 (= res!1035848 (validKeyInArray!0 (select (arr!48719 a!2804) j!70)))))

(declare-fun res!1035856 () Bool)

(assert (=> start!129204 (=> (not res!1035856) (not e!845957))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129204 (= res!1035856 (validMask!0 mask!2512))))

(assert (=> start!129204 e!845957))

(assert (=> start!129204 true))

(declare-fun array_inv!37664 (array!100973) Bool)

(assert (=> start!129204 (array_inv!37664 a!2804)))

(assert (= (and start!129204 res!1035856) b!1515878))

(assert (= (and b!1515878 res!1035860) b!1515885))

(assert (= (and b!1515885 res!1035859) b!1515876))

(assert (= (and b!1515876 res!1035848) b!1515877))

(assert (= (and b!1515877 res!1035858) b!1515884))

(assert (= (and b!1515884 res!1035854) b!1515874))

(assert (= (and b!1515874 res!1035861) b!1515873))

(assert (= (and b!1515873 res!1035849) b!1515881))

(assert (= (and b!1515881 res!1035850) b!1515875))

(assert (= (and b!1515875 res!1035855) b!1515880))

(assert (= (and b!1515880 res!1035853) b!1515883))

(assert (= (and b!1515880 (not res!1035857)) b!1515886))

(assert (= (and b!1515886 (not res!1035852)) b!1515879))

(assert (= (and b!1515879 (not res!1035851)) b!1515882))

(declare-fun m!1399139 () Bool)

(assert (=> b!1515879 m!1399139))

(declare-fun m!1399141 () Bool)

(assert (=> b!1515877 m!1399141))

(declare-fun m!1399143 () Bool)

(assert (=> b!1515884 m!1399143))

(declare-fun m!1399145 () Bool)

(assert (=> b!1515882 m!1399145))

(declare-fun m!1399147 () Bool)

(assert (=> b!1515881 m!1399147))

(assert (=> b!1515881 m!1399147))

(declare-fun m!1399149 () Bool)

(assert (=> b!1515881 m!1399149))

(assert (=> b!1515876 m!1399147))

(assert (=> b!1515876 m!1399147))

(declare-fun m!1399151 () Bool)

(assert (=> b!1515876 m!1399151))

(assert (=> b!1515883 m!1399147))

(assert (=> b!1515883 m!1399147))

(declare-fun m!1399153 () Bool)

(assert (=> b!1515883 m!1399153))

(assert (=> b!1515880 m!1399147))

(declare-fun m!1399155 () Bool)

(assert (=> b!1515880 m!1399155))

(declare-fun m!1399157 () Bool)

(assert (=> b!1515880 m!1399157))

(declare-fun m!1399159 () Bool)

(assert (=> b!1515880 m!1399159))

(declare-fun m!1399161 () Bool)

(assert (=> b!1515886 m!1399161))

(assert (=> b!1515886 m!1399147))

(declare-fun m!1399163 () Bool)

(assert (=> b!1515886 m!1399163))

(assert (=> b!1515886 m!1399147))

(declare-fun m!1399165 () Bool)

(assert (=> b!1515886 m!1399165))

(assert (=> b!1515886 m!1399147))

(declare-fun m!1399167 () Bool)

(assert (=> b!1515886 m!1399167))

(declare-fun m!1399169 () Bool)

(assert (=> b!1515875 m!1399169))

(assert (=> b!1515875 m!1399169))

(declare-fun m!1399171 () Bool)

(assert (=> b!1515875 m!1399171))

(declare-fun m!1399173 () Bool)

(assert (=> b!1515875 m!1399173))

(declare-fun m!1399175 () Bool)

(assert (=> b!1515875 m!1399175))

(assert (=> b!1515873 m!1399147))

(assert (=> b!1515873 m!1399147))

(declare-fun m!1399177 () Bool)

(assert (=> b!1515873 m!1399177))

(assert (=> b!1515873 m!1399177))

(assert (=> b!1515873 m!1399147))

(declare-fun m!1399179 () Bool)

(assert (=> b!1515873 m!1399179))

(declare-fun m!1399181 () Bool)

(assert (=> start!129204 m!1399181))

(declare-fun m!1399183 () Bool)

(assert (=> start!129204 m!1399183))

(declare-fun m!1399185 () Bool)

(assert (=> b!1515885 m!1399185))

(assert (=> b!1515885 m!1399185))

(declare-fun m!1399187 () Bool)

(assert (=> b!1515885 m!1399187))

(check-sat (not b!1515877) (not b!1515882) (not b!1515876) (not b!1515875) (not b!1515884) (not b!1515885) (not b!1515873) (not b!1515880) (not b!1515883) (not b!1515879) (not b!1515881) (not b!1515886) (not start!129204))
(check-sat)
