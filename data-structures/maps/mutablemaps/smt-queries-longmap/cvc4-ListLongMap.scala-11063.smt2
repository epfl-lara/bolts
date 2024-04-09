; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129260 () Bool)

(assert start!129260)

(declare-fun b!1516897 () Bool)

(declare-fun e!846392 () Bool)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!101029 0))(
  ( (array!101030 (arr!48747 (Array (_ BitVec 32) (_ BitVec 64))) (size!49298 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101029)

(declare-datatypes ((SeekEntryResult!12939 0))(
  ( (MissingZero!12939 (index!54150 (_ BitVec 32))) (Found!12939 (index!54151 (_ BitVec 32))) (Intermediate!12939 (undefined!13751 Bool) (index!54152 (_ BitVec 32)) (x!135846 (_ BitVec 32))) (Undefined!12939) (MissingVacant!12939 (index!54153 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!101029 (_ BitVec 32)) SeekEntryResult!12939)

(assert (=> b!1516897 (= e!846392 (= (seekEntry!0 (select (arr!48747 a!2804) j!70) a!2804 mask!2512) (Found!12939 j!70)))))

(declare-fun b!1516898 () Bool)

(declare-fun res!1036875 () Bool)

(declare-fun e!846391 () Bool)

(assert (=> b!1516898 (=> (not res!1036875) (not e!846391))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1516898 (= res!1036875 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49298 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49298 a!2804))))))

(declare-fun b!1516899 () Bool)

(declare-fun e!846395 () Bool)

(declare-fun e!846390 () Bool)

(assert (=> b!1516899 (= e!846395 (not e!846390))))

(declare-fun res!1036873 () Bool)

(assert (=> b!1516899 (=> res!1036873 e!846390)))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1516899 (= res!1036873 (or (not (= (select (arr!48747 a!2804) j!70) (select (store (arr!48747 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (= x!534 resX!21)))))

(assert (=> b!1516899 e!846392))

(declare-fun res!1036881 () Bool)

(assert (=> b!1516899 (=> (not res!1036881) (not e!846392))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101029 (_ BitVec 32)) Bool)

(assert (=> b!1516899 (= res!1036881 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50702 0))(
  ( (Unit!50703) )
))
(declare-fun lt!657554 () Unit!50702)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101029 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50702)

(assert (=> b!1516899 (= lt!657554 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1516900 () Bool)

(declare-fun e!846394 () Bool)

(assert (=> b!1516900 (= e!846390 e!846394)))

(declare-fun res!1036880 () Bool)

(assert (=> b!1516900 (=> res!1036880 e!846394)))

(declare-fun lt!657553 () (_ BitVec 32))

(assert (=> b!1516900 (= res!1036880 (or (bvslt (bvadd #b00000000000000000000000000000001 x!534) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!534) #b01111111111111111111111111111110) (bvslt lt!657553 #b00000000000000000000000000000000) (bvsge lt!657553 (size!49298 a!2804))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1516900 (= lt!657553 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun res!1036882 () Bool)

(assert (=> start!129260 (=> (not res!1036882) (not e!846391))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129260 (= res!1036882 (validMask!0 mask!2512))))

(assert (=> start!129260 e!846391))

(assert (=> start!129260 true))

(declare-fun array_inv!37692 (array!101029) Bool)

(assert (=> start!129260 (array_inv!37692 a!2804)))

(declare-fun b!1516901 () Bool)

(assert (=> b!1516901 (= e!846391 e!846395)))

(declare-fun res!1036874 () Bool)

(assert (=> b!1516901 (=> (not res!1036874) (not e!846395))))

(declare-fun lt!657555 () SeekEntryResult!12939)

(declare-fun lt!657552 () SeekEntryResult!12939)

(assert (=> b!1516901 (= res!1036874 (= lt!657555 lt!657552))))

(assert (=> b!1516901 (= lt!657552 (Intermediate!12939 false resIndex!21 resX!21))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101029 (_ BitVec 32)) SeekEntryResult!12939)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1516901 (= lt!657555 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48747 a!2804) j!70) mask!2512) (select (arr!48747 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1516902 () Bool)

(declare-fun res!1036876 () Bool)

(assert (=> b!1516902 (=> (not res!1036876) (not e!846391))))

(declare-datatypes ((List!35410 0))(
  ( (Nil!35407) (Cons!35406 (h!36819 (_ BitVec 64)) (t!50111 List!35410)) )
))
(declare-fun arrayNoDuplicates!0 (array!101029 (_ BitVec 32) List!35410) Bool)

(assert (=> b!1516902 (= res!1036876 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35407))))

(declare-fun b!1516903 () Bool)

(assert (=> b!1516903 (= e!846394 true)))

(declare-fun lt!657556 () SeekEntryResult!12939)

(assert (=> b!1516903 (= lt!657556 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!534) lt!657553 (select (arr!48747 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1516904 () Bool)

(declare-fun res!1036877 () Bool)

(assert (=> b!1516904 (=> (not res!1036877) (not e!846395))))

(assert (=> b!1516904 (= res!1036877 (= lt!657555 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48747 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48747 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101030 (store (arr!48747 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49298 a!2804)) mask!2512)))))

(declare-fun b!1516905 () Bool)

(declare-fun res!1036879 () Bool)

(assert (=> b!1516905 (=> (not res!1036879) (not e!846391))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1516905 (= res!1036879 (validKeyInArray!0 (select (arr!48747 a!2804) i!961)))))

(declare-fun b!1516906 () Bool)

(declare-fun res!1036884 () Bool)

(assert (=> b!1516906 (=> (not res!1036884) (not e!846391))))

(assert (=> b!1516906 (= res!1036884 (and (= (size!49298 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49298 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49298 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1516907 () Bool)

(declare-fun res!1036872 () Bool)

(assert (=> b!1516907 (=> (not res!1036872) (not e!846391))))

(assert (=> b!1516907 (= res!1036872 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1516908 () Bool)

(declare-fun res!1036878 () Bool)

(assert (=> b!1516908 (=> (not res!1036878) (not e!846395))))

(assert (=> b!1516908 (= res!1036878 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48747 a!2804) j!70) a!2804 mask!2512) lt!657552))))

(declare-fun b!1516909 () Bool)

(declare-fun res!1036883 () Bool)

(assert (=> b!1516909 (=> (not res!1036883) (not e!846391))))

(assert (=> b!1516909 (= res!1036883 (validKeyInArray!0 (select (arr!48747 a!2804) j!70)))))

(assert (= (and start!129260 res!1036882) b!1516906))

(assert (= (and b!1516906 res!1036884) b!1516905))

(assert (= (and b!1516905 res!1036879) b!1516909))

(assert (= (and b!1516909 res!1036883) b!1516907))

(assert (= (and b!1516907 res!1036872) b!1516902))

(assert (= (and b!1516902 res!1036876) b!1516898))

(assert (= (and b!1516898 res!1036875) b!1516901))

(assert (= (and b!1516901 res!1036874) b!1516908))

(assert (= (and b!1516908 res!1036878) b!1516904))

(assert (= (and b!1516904 res!1036877) b!1516899))

(assert (= (and b!1516899 res!1036881) b!1516897))

(assert (= (and b!1516899 (not res!1036873)) b!1516900))

(assert (= (and b!1516900 (not res!1036880)) b!1516903))

(declare-fun m!1400231 () Bool)

(assert (=> b!1516902 m!1400231))

(declare-fun m!1400233 () Bool)

(assert (=> b!1516904 m!1400233))

(declare-fun m!1400235 () Bool)

(assert (=> b!1516904 m!1400235))

(assert (=> b!1516904 m!1400235))

(declare-fun m!1400237 () Bool)

(assert (=> b!1516904 m!1400237))

(assert (=> b!1516904 m!1400237))

(assert (=> b!1516904 m!1400235))

(declare-fun m!1400239 () Bool)

(assert (=> b!1516904 m!1400239))

(declare-fun m!1400241 () Bool)

(assert (=> b!1516903 m!1400241))

(assert (=> b!1516903 m!1400241))

(declare-fun m!1400243 () Bool)

(assert (=> b!1516903 m!1400243))

(declare-fun m!1400245 () Bool)

(assert (=> b!1516907 m!1400245))

(assert (=> b!1516899 m!1400241))

(declare-fun m!1400247 () Bool)

(assert (=> b!1516899 m!1400247))

(assert (=> b!1516899 m!1400233))

(assert (=> b!1516899 m!1400235))

(declare-fun m!1400249 () Bool)

(assert (=> b!1516899 m!1400249))

(assert (=> b!1516909 m!1400241))

(assert (=> b!1516909 m!1400241))

(declare-fun m!1400251 () Bool)

(assert (=> b!1516909 m!1400251))

(assert (=> b!1516901 m!1400241))

(assert (=> b!1516901 m!1400241))

(declare-fun m!1400253 () Bool)

(assert (=> b!1516901 m!1400253))

(assert (=> b!1516901 m!1400253))

(assert (=> b!1516901 m!1400241))

(declare-fun m!1400255 () Bool)

(assert (=> b!1516901 m!1400255))

(assert (=> b!1516908 m!1400241))

(assert (=> b!1516908 m!1400241))

(declare-fun m!1400257 () Bool)

(assert (=> b!1516908 m!1400257))

(declare-fun m!1400259 () Bool)

(assert (=> b!1516900 m!1400259))

(declare-fun m!1400261 () Bool)

(assert (=> start!129260 m!1400261))

(declare-fun m!1400263 () Bool)

(assert (=> start!129260 m!1400263))

(declare-fun m!1400265 () Bool)

(assert (=> b!1516905 m!1400265))

(assert (=> b!1516905 m!1400265))

(declare-fun m!1400267 () Bool)

(assert (=> b!1516905 m!1400267))

(assert (=> b!1516897 m!1400241))

(assert (=> b!1516897 m!1400241))

(declare-fun m!1400269 () Bool)

(assert (=> b!1516897 m!1400269))

(push 1)

(assert (not b!1516903))

(assert (not b!1516907))

(assert (not b!1516908))

(assert (not b!1516897))

