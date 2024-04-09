; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126302 () Bool)

(assert start!126302)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun b!1479993 () Bool)

(declare-fun lt!646219 () (_ BitVec 64))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-datatypes ((array!99325 0))(
  ( (array!99326 (arr!47937 (Array (_ BitVec 32) (_ BitVec 64))) (size!48488 (_ BitVec 32))) )
))
(declare-fun lt!646224 () array!99325)

(declare-fun e!830156 () Bool)

(declare-datatypes ((SeekEntryResult!12200 0))(
  ( (MissingZero!12200 (index!51191 (_ BitVec 32))) (Found!12200 (index!51192 (_ BitVec 32))) (Intermediate!12200 (undefined!13012 Bool) (index!51193 (_ BitVec 32)) (x!132770 (_ BitVec 32))) (Undefined!12200) (MissingVacant!12200 (index!51194 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99325 (_ BitVec 32)) SeekEntryResult!12200)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99325 (_ BitVec 32)) SeekEntryResult!12200)

(assert (=> b!1479993 (= e!830156 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!646219 lt!646224 mask!2687) (seekEntryOrOpen!0 lt!646219 lt!646224 mask!2687)))))

(declare-fun b!1479994 () Bool)

(declare-fun e!830158 () Bool)

(declare-fun e!830153 () Bool)

(assert (=> b!1479994 (= e!830158 e!830153)))

(declare-fun res!1005950 () Bool)

(assert (=> b!1479994 (=> (not res!1005950) (not e!830153))))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun a!2862 () array!99325)

(assert (=> b!1479994 (= res!1005950 (= (select (store (arr!47937 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1479994 (= lt!646224 (array!99326 (store (arr!47937 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48488 a!2862)))))

(declare-fun b!1479995 () Bool)

(declare-fun e!830157 () Bool)

(declare-fun e!830159 () Bool)

(assert (=> b!1479995 (= e!830157 (not e!830159))))

(declare-fun res!1005951 () Bool)

(assert (=> b!1479995 (=> res!1005951 e!830159)))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1479995 (= res!1005951 (or (and (= (select (arr!47937 a!2862) index!646) (select (store (arr!47937 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47937 a!2862) index!646) (select (arr!47937 a!2862) j!93))) (not (= (select (arr!47937 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47937 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!830155 () Bool)

(assert (=> b!1479995 e!830155))

(declare-fun res!1005948 () Bool)

(assert (=> b!1479995 (=> (not res!1005948) (not e!830155))))

(declare-fun lt!646218 () SeekEntryResult!12200)

(declare-fun lt!646222 () SeekEntryResult!12200)

(assert (=> b!1479995 (= res!1005948 (and (= lt!646222 lt!646218) (or (= (select (arr!47937 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47937 a!2862) intermediateBeforeIndex!19) (select (arr!47937 a!2862) j!93)))))))

(assert (=> b!1479995 (= lt!646218 (Found!12200 j!93))))

(assert (=> b!1479995 (= lt!646222 (seekEntryOrOpen!0 (select (arr!47937 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99325 (_ BitVec 32)) Bool)

(assert (=> b!1479995 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!49688 0))(
  ( (Unit!49689) )
))
(declare-fun lt!646220 () Unit!49688)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99325 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49688)

(assert (=> b!1479995 (= lt!646220 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1479996 () Bool)

(declare-fun res!1005943 () Bool)

(assert (=> b!1479996 (=> res!1005943 e!830159)))

(assert (=> b!1479996 (= res!1005943 (not (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateBeforeIndex!19 (select (arr!47937 a!2862) j!93) a!2862 mask!2687) lt!646218)))))

(declare-fun b!1479997 () Bool)

(declare-fun res!1005957 () Bool)

(assert (=> b!1479997 (=> (not res!1005957) (not e!830158))))

(declare-datatypes ((List!34618 0))(
  ( (Nil!34615) (Cons!34614 (h!35982 (_ BitVec 64)) (t!49319 List!34618)) )
))
(declare-fun arrayNoDuplicates!0 (array!99325 (_ BitVec 32) List!34618) Bool)

(assert (=> b!1479997 (= res!1005957 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34615))))

(declare-fun b!1479998 () Bool)

(declare-fun res!1005952 () Bool)

(assert (=> b!1479998 (=> (not res!1005952) (not e!830158))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1479998 (= res!1005952 (validKeyInArray!0 (select (arr!47937 a!2862) j!93)))))

(declare-fun b!1480000 () Bool)

(declare-fun res!1005947 () Bool)

(assert (=> b!1480000 (=> (not res!1005947) (not e!830157))))

(assert (=> b!1480000 (= res!1005947 e!830156)))

(declare-fun c!136547 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1480000 (= c!136547 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1480001 () Bool)

(declare-fun e!830150 () Bool)

(assert (=> b!1480001 (= e!830155 e!830150)))

(declare-fun res!1005946 () Bool)

(assert (=> b!1480001 (=> res!1005946 e!830150)))

(assert (=> b!1480001 (= res!1005946 (or (and (= (select (arr!47937 a!2862) index!646) (select (store (arr!47937 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47937 a!2862) index!646) (select (arr!47937 a!2862) j!93))) (not (= (select (arr!47937 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1480002 () Bool)

(declare-fun e!830154 () Bool)

(assert (=> b!1480002 (= e!830150 e!830154)))

(declare-fun res!1005955 () Bool)

(assert (=> b!1480002 (=> (not res!1005955) (not e!830154))))

(assert (=> b!1480002 (= res!1005955 (= lt!646222 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47937 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1480003 () Bool)

(declare-fun e!830151 () Bool)

(assert (=> b!1480003 (= e!830151 e!830157)))

(declare-fun res!1005949 () Bool)

(assert (=> b!1480003 (=> (not res!1005949) (not e!830157))))

(declare-fun lt!646225 () SeekEntryResult!12200)

(assert (=> b!1480003 (= res!1005949 (= lt!646225 (Intermediate!12200 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99325 (_ BitVec 32)) SeekEntryResult!12200)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1480003 (= lt!646225 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!646219 mask!2687) lt!646219 lt!646224 mask!2687))))

(assert (=> b!1480003 (= lt!646219 (select (store (arr!47937 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1480004 () Bool)

(declare-fun res!1005958 () Bool)

(assert (=> b!1480004 (=> (not res!1005958) (not e!830158))))

(assert (=> b!1480004 (= res!1005958 (and (= (size!48488 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48488 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48488 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1480005 () Bool)

(assert (=> b!1480005 (= e!830153 e!830151)))

(declare-fun res!1005959 () Bool)

(assert (=> b!1480005 (=> (not res!1005959) (not e!830151))))

(declare-fun lt!646221 () SeekEntryResult!12200)

(assert (=> b!1480005 (= res!1005959 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47937 a!2862) j!93) mask!2687) (select (arr!47937 a!2862) j!93) a!2862 mask!2687) lt!646221))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1480005 (= lt!646221 (Intermediate!12200 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1480006 () Bool)

(assert (=> b!1480006 (= e!830159 true)))

(assert (=> b!1480006 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!646219 lt!646224 mask!2687) lt!646218)))

(declare-fun lt!646223 () Unit!49688)

(declare-fun lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 (array!99325 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49688)

(assert (=> b!1480006 (= lt!646223 (lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 a!2862 i!1006 j!93 x!665 index!646 intermediateBeforeIndex!19 intermediateAfterIndex!19 mask!2687))))

(declare-fun b!1480007 () Bool)

(assert (=> b!1480007 (= e!830154 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1480008 () Bool)

(declare-fun res!1005945 () Bool)

(assert (=> b!1480008 (=> (not res!1005945) (not e!830158))))

(assert (=> b!1480008 (= res!1005945 (validKeyInArray!0 (select (arr!47937 a!2862) i!1006)))))

(declare-fun res!1005954 () Bool)

(assert (=> start!126302 (=> (not res!1005954) (not e!830158))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126302 (= res!1005954 (validMask!0 mask!2687))))

(assert (=> start!126302 e!830158))

(assert (=> start!126302 true))

(declare-fun array_inv!36882 (array!99325) Bool)

(assert (=> start!126302 (array_inv!36882 a!2862)))

(declare-fun b!1479999 () Bool)

(declare-fun res!1005960 () Bool)

(assert (=> b!1479999 (=> (not res!1005960) (not e!830151))))

(assert (=> b!1479999 (= res!1005960 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47937 a!2862) j!93) a!2862 mask!2687) lt!646221))))

(declare-fun b!1480009 () Bool)

(declare-fun res!1005944 () Bool)

(assert (=> b!1480009 (=> (not res!1005944) (not e!830157))))

(assert (=> b!1480009 (= res!1005944 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1480010 () Bool)

(declare-fun res!1005956 () Bool)

(assert (=> b!1480010 (=> (not res!1005956) (not e!830158))))

(assert (=> b!1480010 (= res!1005956 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1480011 () Bool)

(assert (=> b!1480011 (= e!830156 (= lt!646225 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!646219 lt!646224 mask!2687)))))

(declare-fun b!1480012 () Bool)

(declare-fun res!1005953 () Bool)

(assert (=> b!1480012 (=> (not res!1005953) (not e!830158))))

(assert (=> b!1480012 (= res!1005953 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48488 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48488 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48488 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(assert (= (and start!126302 res!1005954) b!1480004))

(assert (= (and b!1480004 res!1005958) b!1480008))

(assert (= (and b!1480008 res!1005945) b!1479998))

(assert (= (and b!1479998 res!1005952) b!1480010))

(assert (= (and b!1480010 res!1005956) b!1479997))

(assert (= (and b!1479997 res!1005957) b!1480012))

(assert (= (and b!1480012 res!1005953) b!1479994))

(assert (= (and b!1479994 res!1005950) b!1480005))

(assert (= (and b!1480005 res!1005959) b!1479999))

(assert (= (and b!1479999 res!1005960) b!1480003))

(assert (= (and b!1480003 res!1005949) b!1480000))

(assert (= (and b!1480000 c!136547) b!1480011))

(assert (= (and b!1480000 (not c!136547)) b!1479993))

(assert (= (and b!1480000 res!1005947) b!1480009))

(assert (= (and b!1480009 res!1005944) b!1479995))

(assert (= (and b!1479995 res!1005948) b!1480001))

(assert (= (and b!1480001 (not res!1005946)) b!1480002))

(assert (= (and b!1480002 res!1005955) b!1480007))

(assert (= (and b!1479995 (not res!1005951)) b!1479996))

(assert (= (and b!1479996 (not res!1005943)) b!1480006))

(declare-fun m!1365877 () Bool)

(assert (=> b!1480008 m!1365877))

(assert (=> b!1480008 m!1365877))

(declare-fun m!1365879 () Bool)

(assert (=> b!1480008 m!1365879))

(declare-fun m!1365881 () Bool)

(assert (=> b!1480005 m!1365881))

(assert (=> b!1480005 m!1365881))

(declare-fun m!1365883 () Bool)

(assert (=> b!1480005 m!1365883))

(assert (=> b!1480005 m!1365883))

(assert (=> b!1480005 m!1365881))

(declare-fun m!1365885 () Bool)

(assert (=> b!1480005 m!1365885))

(assert (=> b!1480002 m!1365881))

(assert (=> b!1480002 m!1365881))

(declare-fun m!1365887 () Bool)

(assert (=> b!1480002 m!1365887))

(assert (=> b!1479996 m!1365881))

(assert (=> b!1479996 m!1365881))

(declare-fun m!1365889 () Bool)

(assert (=> b!1479996 m!1365889))

(declare-fun m!1365891 () Bool)

(assert (=> start!126302 m!1365891))

(declare-fun m!1365893 () Bool)

(assert (=> start!126302 m!1365893))

(declare-fun m!1365895 () Bool)

(assert (=> b!1480001 m!1365895))

(declare-fun m!1365897 () Bool)

(assert (=> b!1480001 m!1365897))

(declare-fun m!1365899 () Bool)

(assert (=> b!1480001 m!1365899))

(assert (=> b!1480001 m!1365881))

(declare-fun m!1365901 () Bool)

(assert (=> b!1479993 m!1365901))

(declare-fun m!1365903 () Bool)

(assert (=> b!1479993 m!1365903))

(assert (=> b!1479998 m!1365881))

(assert (=> b!1479998 m!1365881))

(declare-fun m!1365905 () Bool)

(assert (=> b!1479998 m!1365905))

(declare-fun m!1365907 () Bool)

(assert (=> b!1480003 m!1365907))

(assert (=> b!1480003 m!1365907))

(declare-fun m!1365909 () Bool)

(assert (=> b!1480003 m!1365909))

(assert (=> b!1480003 m!1365897))

(declare-fun m!1365911 () Bool)

(assert (=> b!1480003 m!1365911))

(declare-fun m!1365913 () Bool)

(assert (=> b!1479995 m!1365913))

(assert (=> b!1479995 m!1365897))

(declare-fun m!1365915 () Bool)

(assert (=> b!1479995 m!1365915))

(assert (=> b!1479995 m!1365899))

(assert (=> b!1479995 m!1365895))

(assert (=> b!1479995 m!1365881))

(declare-fun m!1365917 () Bool)

(assert (=> b!1479995 m!1365917))

(declare-fun m!1365919 () Bool)

(assert (=> b!1479995 m!1365919))

(assert (=> b!1479995 m!1365881))

(declare-fun m!1365921 () Bool)

(assert (=> b!1479997 m!1365921))

(declare-fun m!1365923 () Bool)

(assert (=> b!1480011 m!1365923))

(assert (=> b!1480006 m!1365901))

(declare-fun m!1365925 () Bool)

(assert (=> b!1480006 m!1365925))

(declare-fun m!1365927 () Bool)

(assert (=> b!1480010 m!1365927))

(assert (=> b!1479994 m!1365897))

(declare-fun m!1365929 () Bool)

(assert (=> b!1479994 m!1365929))

(assert (=> b!1479999 m!1365881))

(assert (=> b!1479999 m!1365881))

(declare-fun m!1365931 () Bool)

(assert (=> b!1479999 m!1365931))

(push 1)

