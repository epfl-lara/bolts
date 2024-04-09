; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124694 () Bool)

(assert start!124694)

(declare-fun b!1443977 () Bool)

(declare-fun res!976120 () Bool)

(declare-fun e!813659 () Bool)

(assert (=> b!1443977 (=> (not res!976120) (not e!813659))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1443977 (= res!976120 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun res!976121 () Bool)

(declare-fun e!813658 () Bool)

(assert (=> start!124694 (=> (not res!976121) (not e!813658))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124694 (= res!976121 (validMask!0 mask!2687))))

(assert (=> start!124694 e!813658))

(assert (=> start!124694 true))

(declare-datatypes ((array!98059 0))(
  ( (array!98060 (arr!47313 (Array (_ BitVec 32) (_ BitVec 64))) (size!47864 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98059)

(declare-fun array_inv!36258 (array!98059) Bool)

(assert (=> start!124694 (array_inv!36258 a!2862)))

(declare-fun e!813660 () Bool)

(declare-fun b!1443978 () Bool)

(declare-fun lt!634008 () array!98059)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun lt!634010 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!11588 0))(
  ( (MissingZero!11588 (index!48743 (_ BitVec 32))) (Found!11588 (index!48744 (_ BitVec 32))) (Intermediate!11588 (undefined!12400 Bool) (index!48745 (_ BitVec 32)) (x!130440 (_ BitVec 32))) (Undefined!11588) (MissingVacant!11588 (index!48746 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98059 (_ BitVec 32)) SeekEntryResult!11588)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98059 (_ BitVec 32)) SeekEntryResult!11588)

(assert (=> b!1443978 (= e!813660 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!634010 lt!634008 mask!2687) (seekEntryOrOpen!0 lt!634010 lt!634008 mask!2687)))))

(declare-fun b!1443979 () Bool)

(declare-fun e!813662 () Bool)

(assert (=> b!1443979 (= e!813659 (not e!813662))))

(declare-fun res!976126 () Bool)

(assert (=> b!1443979 (=> res!976126 e!813662)))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1443979 (= res!976126 (or (not (= (select (arr!47313 a!2862) index!646) (select (store (arr!47313 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (not (= (select (arr!47313 a!2862) index!646) (select (arr!47313 a!2862) j!93)))))))

(declare-fun e!813656 () Bool)

(assert (=> b!1443979 e!813656))

(declare-fun res!976123 () Bool)

(assert (=> b!1443979 (=> (not res!976123) (not e!813656))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98059 (_ BitVec 32)) Bool)

(assert (=> b!1443979 (= res!976123 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48620 0))(
  ( (Unit!48621) )
))
(declare-fun lt!634012 () Unit!48620)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98059 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48620)

(assert (=> b!1443979 (= lt!634012 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1443980 () Bool)

(declare-fun res!976125 () Bool)

(assert (=> b!1443980 (=> (not res!976125) (not e!813658))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1443980 (= res!976125 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47864 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47864 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47864 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1443981 () Bool)

(declare-fun res!976132 () Bool)

(declare-fun e!813661 () Bool)

(assert (=> b!1443981 (=> (not res!976132) (not e!813661))))

(declare-fun lt!634009 () SeekEntryResult!11588)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98059 (_ BitVec 32)) SeekEntryResult!11588)

(assert (=> b!1443981 (= res!976132 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47313 a!2862) j!93) a!2862 mask!2687) lt!634009))))

(declare-fun b!1443982 () Bool)

(assert (=> b!1443982 (= e!813662 true)))

(declare-fun lt!634007 () SeekEntryResult!11588)

(assert (=> b!1443982 (= lt!634007 (seekEntryOrOpen!0 lt!634010 lt!634008 mask!2687))))

(declare-fun b!1443983 () Bool)

(declare-fun res!976119 () Bool)

(assert (=> b!1443983 (=> (not res!976119) (not e!813658))))

(assert (=> b!1443983 (= res!976119 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1443984 () Bool)

(declare-fun res!976128 () Bool)

(assert (=> b!1443984 (=> (not res!976128) (not e!813658))))

(declare-datatypes ((List!33994 0))(
  ( (Nil!33991) (Cons!33990 (h!35340 (_ BitVec 64)) (t!48695 List!33994)) )
))
(declare-fun arrayNoDuplicates!0 (array!98059 (_ BitVec 32) List!33994) Bool)

(assert (=> b!1443984 (= res!976128 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33991))))

(declare-fun b!1443985 () Bool)

(assert (=> b!1443985 (= e!813656 (or (= (select (arr!47313 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47313 a!2862) intermediateBeforeIndex!19) (select (arr!47313 a!2862) j!93))))))

(declare-fun b!1443986 () Bool)

(declare-fun res!976122 () Bool)

(assert (=> b!1443986 (=> (not res!976122) (not e!813658))))

(assert (=> b!1443986 (= res!976122 (and (= (size!47864 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47864 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47864 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1443987 () Bool)

(declare-fun res!976130 () Bool)

(assert (=> b!1443987 (=> (not res!976130) (not e!813658))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1443987 (= res!976130 (validKeyInArray!0 (select (arr!47313 a!2862) i!1006)))))

(declare-fun b!1443988 () Bool)

(declare-fun lt!634011 () SeekEntryResult!11588)

(assert (=> b!1443988 (= e!813660 (= lt!634011 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!634010 lt!634008 mask!2687)))))

(declare-fun b!1443989 () Bool)

(declare-fun res!976134 () Bool)

(assert (=> b!1443989 (=> (not res!976134) (not e!813656))))

(assert (=> b!1443989 (= res!976134 (= (seekEntryOrOpen!0 (select (arr!47313 a!2862) j!93) a!2862 mask!2687) (Found!11588 j!93)))))

(declare-fun b!1443990 () Bool)

(assert (=> b!1443990 (= e!813661 e!813659)))

(declare-fun res!976133 () Bool)

(assert (=> b!1443990 (=> (not res!976133) (not e!813659))))

(assert (=> b!1443990 (= res!976133 (= lt!634011 (Intermediate!11588 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1443990 (= lt!634011 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!634010 mask!2687) lt!634010 lt!634008 mask!2687))))

(assert (=> b!1443990 (= lt!634010 (select (store (arr!47313 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1443991 () Bool)

(declare-fun res!976129 () Bool)

(assert (=> b!1443991 (=> (not res!976129) (not e!813658))))

(assert (=> b!1443991 (= res!976129 (validKeyInArray!0 (select (arr!47313 a!2862) j!93)))))

(declare-fun b!1443992 () Bool)

(declare-fun e!813655 () Bool)

(assert (=> b!1443992 (= e!813658 e!813655)))

(declare-fun res!976124 () Bool)

(assert (=> b!1443992 (=> (not res!976124) (not e!813655))))

(assert (=> b!1443992 (= res!976124 (= (select (store (arr!47313 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1443992 (= lt!634008 (array!98060 (store (arr!47313 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47864 a!2862)))))

(declare-fun b!1443993 () Bool)

(assert (=> b!1443993 (= e!813655 e!813661)))

(declare-fun res!976127 () Bool)

(assert (=> b!1443993 (=> (not res!976127) (not e!813661))))

(assert (=> b!1443993 (= res!976127 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47313 a!2862) j!93) mask!2687) (select (arr!47313 a!2862) j!93) a!2862 mask!2687) lt!634009))))

(assert (=> b!1443993 (= lt!634009 (Intermediate!11588 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1443994 () Bool)

(declare-fun res!976131 () Bool)

(assert (=> b!1443994 (=> (not res!976131) (not e!813659))))

(assert (=> b!1443994 (= res!976131 e!813660)))

(declare-fun c!133442 () Bool)

(assert (=> b!1443994 (= c!133442 (bvsle x!665 intermediateAfterX!19))))

(assert (= (and start!124694 res!976121) b!1443986))

(assert (= (and b!1443986 res!976122) b!1443987))

(assert (= (and b!1443987 res!976130) b!1443991))

(assert (= (and b!1443991 res!976129) b!1443983))

(assert (= (and b!1443983 res!976119) b!1443984))

(assert (= (and b!1443984 res!976128) b!1443980))

(assert (= (and b!1443980 res!976125) b!1443992))

(assert (= (and b!1443992 res!976124) b!1443993))

(assert (= (and b!1443993 res!976127) b!1443981))

(assert (= (and b!1443981 res!976132) b!1443990))

(assert (= (and b!1443990 res!976133) b!1443994))

(assert (= (and b!1443994 c!133442) b!1443988))

(assert (= (and b!1443994 (not c!133442)) b!1443978))

(assert (= (and b!1443994 res!976131) b!1443977))

(assert (= (and b!1443977 res!976120) b!1443979))

(assert (= (and b!1443979 res!976123) b!1443989))

(assert (= (and b!1443989 res!976134) b!1443985))

(assert (= (and b!1443979 (not res!976126)) b!1443982))

(declare-fun m!1333075 () Bool)

(assert (=> b!1443979 m!1333075))

(declare-fun m!1333077 () Bool)

(assert (=> b!1443979 m!1333077))

(declare-fun m!1333079 () Bool)

(assert (=> b!1443979 m!1333079))

(declare-fun m!1333081 () Bool)

(assert (=> b!1443979 m!1333081))

(declare-fun m!1333083 () Bool)

(assert (=> b!1443979 m!1333083))

(declare-fun m!1333085 () Bool)

(assert (=> b!1443979 m!1333085))

(declare-fun m!1333087 () Bool)

(assert (=> b!1443988 m!1333087))

(declare-fun m!1333089 () Bool)

(assert (=> b!1443987 m!1333089))

(assert (=> b!1443987 m!1333089))

(declare-fun m!1333091 () Bool)

(assert (=> b!1443987 m!1333091))

(assert (=> b!1443989 m!1333085))

(assert (=> b!1443989 m!1333085))

(declare-fun m!1333093 () Bool)

(assert (=> b!1443989 m!1333093))

(declare-fun m!1333095 () Bool)

(assert (=> b!1443985 m!1333095))

(assert (=> b!1443985 m!1333085))

(assert (=> b!1443981 m!1333085))

(assert (=> b!1443981 m!1333085))

(declare-fun m!1333097 () Bool)

(assert (=> b!1443981 m!1333097))

(declare-fun m!1333099 () Bool)

(assert (=> b!1443990 m!1333099))

(assert (=> b!1443990 m!1333099))

(declare-fun m!1333101 () Bool)

(assert (=> b!1443990 m!1333101))

(assert (=> b!1443990 m!1333077))

(declare-fun m!1333103 () Bool)

(assert (=> b!1443990 m!1333103))

(declare-fun m!1333105 () Bool)

(assert (=> b!1443982 m!1333105))

(assert (=> b!1443992 m!1333077))

(declare-fun m!1333107 () Bool)

(assert (=> b!1443992 m!1333107))

(declare-fun m!1333109 () Bool)

(assert (=> b!1443984 m!1333109))

(declare-fun m!1333111 () Bool)

(assert (=> b!1443978 m!1333111))

(assert (=> b!1443978 m!1333105))

(declare-fun m!1333113 () Bool)

(assert (=> b!1443983 m!1333113))

(declare-fun m!1333115 () Bool)

(assert (=> start!124694 m!1333115))

(declare-fun m!1333117 () Bool)

(assert (=> start!124694 m!1333117))

(assert (=> b!1443991 m!1333085))

(assert (=> b!1443991 m!1333085))

(declare-fun m!1333119 () Bool)

(assert (=> b!1443991 m!1333119))

(assert (=> b!1443993 m!1333085))

(assert (=> b!1443993 m!1333085))

(declare-fun m!1333121 () Bool)

(assert (=> b!1443993 m!1333121))

(assert (=> b!1443993 m!1333121))

(assert (=> b!1443993 m!1333085))

(declare-fun m!1333123 () Bool)

(assert (=> b!1443993 m!1333123))

(push 1)

