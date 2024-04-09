; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124700 () Bool)

(assert start!124700)

(declare-fun b!1444131 () Bool)

(declare-fun res!976263 () Bool)

(declare-fun e!813725 () Bool)

(assert (=> b!1444131 (=> (not res!976263) (not e!813725))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1444131 (= res!976263 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-datatypes ((array!98065 0))(
  ( (array!98066 (arr!47316 (Array (_ BitVec 32) (_ BitVec 64))) (size!47867 (_ BitVec 32))) )
))
(declare-fun lt!634061 () array!98065)

(declare-fun lt!634063 () (_ BitVec 64))

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11591 0))(
  ( (MissingZero!11591 (index!48755 (_ BitVec 32))) (Found!11591 (index!48756 (_ BitVec 32))) (Intermediate!11591 (undefined!12403 Bool) (index!48757 (_ BitVec 32)) (x!130451 (_ BitVec 32))) (Undefined!11591) (MissingVacant!11591 (index!48758 (_ BitVec 32))) )
))
(declare-fun lt!634066 () SeekEntryResult!11591)

(declare-fun e!813723 () Bool)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun b!1444132 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98065 (_ BitVec 32)) SeekEntryResult!11591)

(assert (=> b!1444132 (= e!813723 (= lt!634066 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!634063 lt!634061 mask!2687)))))

(declare-fun b!1444133 () Bool)

(declare-fun res!976264 () Bool)

(assert (=> b!1444133 (=> (not res!976264) (not e!813725))))

(assert (=> b!1444133 (= res!976264 e!813723)))

(declare-fun c!133451 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1444133 (= c!133451 (bvsle x!665 intermediateAfterX!19))))

(declare-fun res!976267 () Bool)

(declare-fun e!813724 () Bool)

(assert (=> start!124700 (=> (not res!976267) (not e!813724))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124700 (= res!976267 (validMask!0 mask!2687))))

(assert (=> start!124700 e!813724))

(assert (=> start!124700 true))

(declare-fun a!2862 () array!98065)

(declare-fun array_inv!36261 (array!98065) Bool)

(assert (=> start!124700 (array_inv!36261 a!2862)))

(declare-fun b!1444134 () Bool)

(declare-fun res!976268 () Bool)

(assert (=> b!1444134 (=> (not res!976268) (not e!813724))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1444134 (= res!976268 (validKeyInArray!0 (select (arr!47316 a!2862) i!1006)))))

(declare-fun b!1444135 () Bool)

(declare-fun res!976262 () Bool)

(assert (=> b!1444135 (=> (not res!976262) (not e!813724))))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1444135 (= res!976262 (and (= (size!47867 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47867 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47867 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1444136 () Bool)

(declare-fun e!813722 () Bool)

(assert (=> b!1444136 (= e!813724 e!813722)))

(declare-fun res!976269 () Bool)

(assert (=> b!1444136 (=> (not res!976269) (not e!813722))))

(assert (=> b!1444136 (= res!976269 (= (select (store (arr!47316 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1444136 (= lt!634061 (array!98066 (store (arr!47316 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47867 a!2862)))))

(declare-fun b!1444137 () Bool)

(declare-fun res!976255 () Bool)

(assert (=> b!1444137 (=> (not res!976255) (not e!813724))))

(declare-datatypes ((List!33997 0))(
  ( (Nil!33994) (Cons!33993 (h!35343 (_ BitVec 64)) (t!48698 List!33997)) )
))
(declare-fun arrayNoDuplicates!0 (array!98065 (_ BitVec 32) List!33997) Bool)

(assert (=> b!1444137 (= res!976255 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33994))))

(declare-fun b!1444138 () Bool)

(declare-fun res!976260 () Bool)

(assert (=> b!1444138 (=> (not res!976260) (not e!813724))))

(assert (=> b!1444138 (= res!976260 (validKeyInArray!0 (select (arr!47316 a!2862) j!93)))))

(declare-fun b!1444139 () Bool)

(declare-fun res!976257 () Bool)

(assert (=> b!1444139 (=> (not res!976257) (not e!813724))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98065 (_ BitVec 32)) Bool)

(assert (=> b!1444139 (= res!976257 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1444140 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98065 (_ BitVec 32)) SeekEntryResult!11591)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98065 (_ BitVec 32)) SeekEntryResult!11591)

(assert (=> b!1444140 (= e!813723 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!634063 lt!634061 mask!2687) (seekEntryOrOpen!0 lt!634063 lt!634061 mask!2687)))))

(declare-fun b!1444141 () Bool)

(declare-fun e!813720 () Bool)

(assert (=> b!1444141 (= e!813720 (bvsge mask!2687 #b00000000000000000000000000000000))))

(declare-fun b!1444142 () Bool)

(declare-fun res!976265 () Bool)

(assert (=> b!1444142 (=> (not res!976265) (not e!813724))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1444142 (= res!976265 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47867 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47867 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47867 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1444143 () Bool)

(assert (=> b!1444143 (= e!813725 (not e!813720))))

(declare-fun res!976261 () Bool)

(assert (=> b!1444143 (=> res!976261 e!813720)))

(assert (=> b!1444143 (= res!976261 (or (not (= (select (arr!47316 a!2862) index!646) (select (store (arr!47316 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (not (= (select (arr!47316 a!2862) index!646) (select (arr!47316 a!2862) j!93)))))))

(declare-fun lt!634065 () SeekEntryResult!11591)

(assert (=> b!1444143 (and (= lt!634065 (Found!11591 j!93)) (or (= (select (arr!47316 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47316 a!2862) intermediateBeforeIndex!19) (select (arr!47316 a!2862) j!93))))))

(assert (=> b!1444143 (= lt!634065 (seekEntryOrOpen!0 (select (arr!47316 a!2862) j!93) a!2862 mask!2687))))

(assert (=> b!1444143 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!48626 0))(
  ( (Unit!48627) )
))
(declare-fun lt!634064 () Unit!48626)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98065 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48626)

(assert (=> b!1444143 (= lt!634064 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1444144 () Bool)

(declare-fun e!813721 () Bool)

(assert (=> b!1444144 (= e!813721 e!813725)))

(declare-fun res!976259 () Bool)

(assert (=> b!1444144 (=> (not res!976259) (not e!813725))))

(assert (=> b!1444144 (= res!976259 (= lt!634066 (Intermediate!11591 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1444144 (= lt!634066 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!634063 mask!2687) lt!634063 lt!634061 mask!2687))))

(assert (=> b!1444144 (= lt!634063 (select (store (arr!47316 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1444145 () Bool)

(declare-fun res!976256 () Bool)

(assert (=> b!1444145 (=> (not res!976256) (not e!813721))))

(declare-fun lt!634062 () SeekEntryResult!11591)

(assert (=> b!1444145 (= res!976256 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47316 a!2862) j!93) a!2862 mask!2687) lt!634062))))

(declare-fun b!1444146 () Bool)

(declare-fun res!976258 () Bool)

(assert (=> b!1444146 (=> res!976258 e!813720)))

(assert (=> b!1444146 (= res!976258 (not (= lt!634065 (seekEntryOrOpen!0 lt!634063 lt!634061 mask!2687))))))

(declare-fun b!1444147 () Bool)

(assert (=> b!1444147 (= e!813722 e!813721)))

(declare-fun res!976266 () Bool)

(assert (=> b!1444147 (=> (not res!976266) (not e!813721))))

(assert (=> b!1444147 (= res!976266 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47316 a!2862) j!93) mask!2687) (select (arr!47316 a!2862) j!93) a!2862 mask!2687) lt!634062))))

(assert (=> b!1444147 (= lt!634062 (Intermediate!11591 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(assert (= (and start!124700 res!976267) b!1444135))

(assert (= (and b!1444135 res!976262) b!1444134))

(assert (= (and b!1444134 res!976268) b!1444138))

(assert (= (and b!1444138 res!976260) b!1444139))

(assert (= (and b!1444139 res!976257) b!1444137))

(assert (= (and b!1444137 res!976255) b!1444142))

(assert (= (and b!1444142 res!976265) b!1444136))

(assert (= (and b!1444136 res!976269) b!1444147))

(assert (= (and b!1444147 res!976266) b!1444145))

(assert (= (and b!1444145 res!976256) b!1444144))

(assert (= (and b!1444144 res!976259) b!1444133))

(assert (= (and b!1444133 c!133451) b!1444132))

(assert (= (and b!1444133 (not c!133451)) b!1444140))

(assert (= (and b!1444133 res!976264) b!1444131))

(assert (= (and b!1444131 res!976263) b!1444143))

(assert (= (and b!1444143 (not res!976261)) b!1444146))

(assert (= (and b!1444146 (not res!976258)) b!1444141))

(declare-fun m!1333225 () Bool)

(assert (=> b!1444143 m!1333225))

(declare-fun m!1333227 () Bool)

(assert (=> b!1444143 m!1333227))

(declare-fun m!1333229 () Bool)

(assert (=> b!1444143 m!1333229))

(declare-fun m!1333231 () Bool)

(assert (=> b!1444143 m!1333231))

(declare-fun m!1333233 () Bool)

(assert (=> b!1444143 m!1333233))

(declare-fun m!1333235 () Bool)

(assert (=> b!1444143 m!1333235))

(declare-fun m!1333237 () Bool)

(assert (=> b!1444143 m!1333237))

(declare-fun m!1333239 () Bool)

(assert (=> b!1444143 m!1333239))

(assert (=> b!1444143 m!1333235))

(declare-fun m!1333241 () Bool)

(assert (=> b!1444139 m!1333241))

(assert (=> b!1444147 m!1333235))

(assert (=> b!1444147 m!1333235))

(declare-fun m!1333243 () Bool)

(assert (=> b!1444147 m!1333243))

(assert (=> b!1444147 m!1333243))

(assert (=> b!1444147 m!1333235))

(declare-fun m!1333245 () Bool)

(assert (=> b!1444147 m!1333245))

(declare-fun m!1333247 () Bool)

(assert (=> b!1444134 m!1333247))

(assert (=> b!1444134 m!1333247))

(declare-fun m!1333249 () Bool)

(assert (=> b!1444134 m!1333249))

(declare-fun m!1333251 () Bool)

(assert (=> b!1444140 m!1333251))

(declare-fun m!1333253 () Bool)

(assert (=> b!1444140 m!1333253))

(assert (=> b!1444136 m!1333227))

(declare-fun m!1333255 () Bool)

(assert (=> b!1444136 m!1333255))

(assert (=> b!1444146 m!1333253))

(declare-fun m!1333257 () Bool)

(assert (=> b!1444144 m!1333257))

(assert (=> b!1444144 m!1333257))

(declare-fun m!1333259 () Bool)

(assert (=> b!1444144 m!1333259))

(assert (=> b!1444144 m!1333227))

(declare-fun m!1333261 () Bool)

(assert (=> b!1444144 m!1333261))

(assert (=> b!1444138 m!1333235))

(assert (=> b!1444138 m!1333235))

(declare-fun m!1333263 () Bool)

(assert (=> b!1444138 m!1333263))

(declare-fun m!1333265 () Bool)

(assert (=> b!1444137 m!1333265))

(declare-fun m!1333267 () Bool)

(assert (=> b!1444132 m!1333267))

(declare-fun m!1333269 () Bool)

(assert (=> start!124700 m!1333269))

(declare-fun m!1333271 () Bool)

(assert (=> start!124700 m!1333271))

(assert (=> b!1444145 m!1333235))

(assert (=> b!1444145 m!1333235))

(declare-fun m!1333273 () Bool)

(assert (=> b!1444145 m!1333273))

(push 1)

(assert (not b!1444145))

(assert (not b!1444139))

(assert (not b!1444146))

(assert (not b!1444147))

