; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124660 () Bool)

(assert start!124660)

(declare-fun b!1443068 () Bool)

(declare-fun e!813262 () Bool)

(declare-fun e!813261 () Bool)

(assert (=> b!1443068 (= e!813262 e!813261)))

(declare-fun res!975324 () Bool)

(assert (=> b!1443068 (=> (not res!975324) (not e!813261))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!98025 0))(
  ( (array!98026 (arr!47296 (Array (_ BitVec 32) (_ BitVec 64))) (size!47847 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98025)

(assert (=> b!1443068 (= res!975324 (= (select (store (arr!47296 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!633709 () array!98025)

(assert (=> b!1443068 (= lt!633709 (array!98026 (store (arr!47296 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47847 a!2862)))))

(declare-fun b!1443069 () Bool)

(declare-fun res!975317 () Bool)

(assert (=> b!1443069 (=> (not res!975317) (not e!813262))))

(declare-datatypes ((List!33977 0))(
  ( (Nil!33974) (Cons!33973 (h!35323 (_ BitVec 64)) (t!48678 List!33977)) )
))
(declare-fun arrayNoDuplicates!0 (array!98025 (_ BitVec 32) List!33977) Bool)

(assert (=> b!1443069 (= res!975317 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33974))))

(declare-fun res!975320 () Bool)

(assert (=> start!124660 (=> (not res!975320) (not e!813262))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124660 (= res!975320 (validMask!0 mask!2687))))

(assert (=> start!124660 e!813262))

(assert (=> start!124660 true))

(declare-fun array_inv!36241 (array!98025) Bool)

(assert (=> start!124660 (array_inv!36241 a!2862)))

(declare-fun b!1443070 () Bool)

(declare-fun e!813260 () Bool)

(declare-fun lt!633710 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1443070 (= e!813260 (validKeyInArray!0 lt!633710))))

(declare-fun b!1443071 () Bool)

(declare-fun res!975323 () Bool)

(declare-fun e!813259 () Bool)

(assert (=> b!1443071 (=> (not res!975323) (not e!813259))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11571 0))(
  ( (MissingZero!11571 (index!48675 (_ BitVec 32))) (Found!11571 (index!48676 (_ BitVec 32))) (Intermediate!11571 (undefined!12383 Bool) (index!48677 (_ BitVec 32)) (x!130383 (_ BitVec 32))) (Undefined!11571) (MissingVacant!11571 (index!48678 (_ BitVec 32))) )
))
(declare-fun lt!633711 () SeekEntryResult!11571)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98025 (_ BitVec 32)) SeekEntryResult!11571)

(assert (=> b!1443071 (= res!975323 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47296 a!2862) j!93) a!2862 mask!2687) lt!633711))))

(declare-fun b!1443072 () Bool)

(declare-fun res!975325 () Bool)

(declare-fun e!813257 () Bool)

(assert (=> b!1443072 (=> (not res!975325) (not e!813257))))

(declare-fun e!813263 () Bool)

(assert (=> b!1443072 (= res!975325 e!813263)))

(declare-fun c!133391 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1443072 (= c!133391 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1443073 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98025 (_ BitVec 32)) SeekEntryResult!11571)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98025 (_ BitVec 32)) SeekEntryResult!11571)

(assert (=> b!1443073 (= e!813263 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!633710 lt!633709 mask!2687) (seekEntryOrOpen!0 lt!633710 lt!633709 mask!2687)))))

(declare-fun b!1443074 () Bool)

(declare-fun res!975327 () Bool)

(assert (=> b!1443074 (=> (not res!975327) (not e!813257))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1443074 (= res!975327 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1443075 () Bool)

(declare-fun res!975312 () Bool)

(assert (=> b!1443075 (=> (not res!975312) (not e!813262))))

(assert (=> b!1443075 (= res!975312 (validKeyInArray!0 (select (arr!47296 a!2862) j!93)))))

(declare-fun b!1443076 () Bool)

(assert (=> b!1443076 (= e!813257 (not e!813260))))

(declare-fun res!975319 () Bool)

(assert (=> b!1443076 (=> res!975319 e!813260)))

(assert (=> b!1443076 (= res!975319 (or (not (= (select (arr!47296 a!2862) index!646) (select (store (arr!47296 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (not (= (select (arr!47296 a!2862) index!646) (select (arr!47296 a!2862) j!93))) (bvslt mask!2687 #b00000000000000000000000000000000)))))

(declare-fun e!813256 () Bool)

(assert (=> b!1443076 e!813256))

(declare-fun res!975316 () Bool)

(assert (=> b!1443076 (=> (not res!975316) (not e!813256))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98025 (_ BitVec 32)) Bool)

(assert (=> b!1443076 (= res!975316 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48586 0))(
  ( (Unit!48587) )
))
(declare-fun lt!633708 () Unit!48586)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98025 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48586)

(assert (=> b!1443076 (= lt!633708 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1443077 () Bool)

(assert (=> b!1443077 (= e!813261 e!813259)))

(declare-fun res!975313 () Bool)

(assert (=> b!1443077 (=> (not res!975313) (not e!813259))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1443077 (= res!975313 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47296 a!2862) j!93) mask!2687) (select (arr!47296 a!2862) j!93) a!2862 mask!2687) lt!633711))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1443077 (= lt!633711 (Intermediate!11571 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1443078 () Bool)

(declare-fun res!975318 () Bool)

(assert (=> b!1443078 (=> (not res!975318) (not e!813262))))

(assert (=> b!1443078 (= res!975318 (validKeyInArray!0 (select (arr!47296 a!2862) i!1006)))))

(declare-fun lt!633712 () SeekEntryResult!11571)

(declare-fun b!1443079 () Bool)

(assert (=> b!1443079 (= e!813263 (= lt!633712 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!633710 lt!633709 mask!2687)))))

(declare-fun b!1443080 () Bool)

(declare-fun res!975321 () Bool)

(assert (=> b!1443080 (=> (not res!975321) (not e!813262))))

(assert (=> b!1443080 (= res!975321 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1443081 () Bool)

(declare-fun res!975315 () Bool)

(assert (=> b!1443081 (=> (not res!975315) (not e!813262))))

(assert (=> b!1443081 (= res!975315 (and (= (size!47847 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47847 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47847 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1443082 () Bool)

(assert (=> b!1443082 (= e!813256 (or (= (select (arr!47296 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47296 a!2862) intermediateBeforeIndex!19) (select (arr!47296 a!2862) j!93))))))

(declare-fun b!1443083 () Bool)

(assert (=> b!1443083 (= e!813259 e!813257)))

(declare-fun res!975326 () Bool)

(assert (=> b!1443083 (=> (not res!975326) (not e!813257))))

(assert (=> b!1443083 (= res!975326 (= lt!633712 (Intermediate!11571 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1443083 (= lt!633712 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!633710 mask!2687) lt!633710 lt!633709 mask!2687))))

(assert (=> b!1443083 (= lt!633710 (select (store (arr!47296 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1443084 () Bool)

(declare-fun res!975322 () Bool)

(assert (=> b!1443084 (=> (not res!975322) (not e!813262))))

(assert (=> b!1443084 (= res!975322 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47847 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47847 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47847 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1443085 () Bool)

(declare-fun res!975314 () Bool)

(assert (=> b!1443085 (=> (not res!975314) (not e!813256))))

(assert (=> b!1443085 (= res!975314 (= (seekEntryOrOpen!0 (select (arr!47296 a!2862) j!93) a!2862 mask!2687) (Found!11571 j!93)))))

(assert (= (and start!124660 res!975320) b!1443081))

(assert (= (and b!1443081 res!975315) b!1443078))

(assert (= (and b!1443078 res!975318) b!1443075))

(assert (= (and b!1443075 res!975312) b!1443080))

(assert (= (and b!1443080 res!975321) b!1443069))

(assert (= (and b!1443069 res!975317) b!1443084))

(assert (= (and b!1443084 res!975322) b!1443068))

(assert (= (and b!1443068 res!975324) b!1443077))

(assert (= (and b!1443077 res!975313) b!1443071))

(assert (= (and b!1443071 res!975323) b!1443083))

(assert (= (and b!1443083 res!975326) b!1443072))

(assert (= (and b!1443072 c!133391) b!1443079))

(assert (= (and b!1443072 (not c!133391)) b!1443073))

(assert (= (and b!1443072 res!975325) b!1443074))

(assert (= (and b!1443074 res!975327) b!1443076))

(assert (= (and b!1443076 res!975316) b!1443085))

(assert (= (and b!1443085 res!975314) b!1443082))

(assert (= (and b!1443076 (not res!975319)) b!1443070))

(declare-fun m!1332219 () Bool)

(assert (=> b!1443083 m!1332219))

(assert (=> b!1443083 m!1332219))

(declare-fun m!1332221 () Bool)

(assert (=> b!1443083 m!1332221))

(declare-fun m!1332223 () Bool)

(assert (=> b!1443083 m!1332223))

(declare-fun m!1332225 () Bool)

(assert (=> b!1443083 m!1332225))

(declare-fun m!1332227 () Bool)

(assert (=> b!1443078 m!1332227))

(assert (=> b!1443078 m!1332227))

(declare-fun m!1332229 () Bool)

(assert (=> b!1443078 m!1332229))

(declare-fun m!1332231 () Bool)

(assert (=> b!1443075 m!1332231))

(assert (=> b!1443075 m!1332231))

(declare-fun m!1332233 () Bool)

(assert (=> b!1443075 m!1332233))

(declare-fun m!1332235 () Bool)

(assert (=> b!1443070 m!1332235))

(declare-fun m!1332237 () Bool)

(assert (=> b!1443082 m!1332237))

(assert (=> b!1443082 m!1332231))

(assert (=> b!1443071 m!1332231))

(assert (=> b!1443071 m!1332231))

(declare-fun m!1332239 () Bool)

(assert (=> b!1443071 m!1332239))

(declare-fun m!1332241 () Bool)

(assert (=> b!1443073 m!1332241))

(declare-fun m!1332243 () Bool)

(assert (=> b!1443073 m!1332243))

(assert (=> b!1443085 m!1332231))

(assert (=> b!1443085 m!1332231))

(declare-fun m!1332245 () Bool)

(assert (=> b!1443085 m!1332245))

(declare-fun m!1332247 () Bool)

(assert (=> b!1443079 m!1332247))

(assert (=> b!1443068 m!1332223))

(declare-fun m!1332249 () Bool)

(assert (=> b!1443068 m!1332249))

(declare-fun m!1332251 () Bool)

(assert (=> b!1443080 m!1332251))

(declare-fun m!1332253 () Bool)

(assert (=> b!1443069 m!1332253))

(assert (=> b!1443077 m!1332231))

(assert (=> b!1443077 m!1332231))

(declare-fun m!1332255 () Bool)

(assert (=> b!1443077 m!1332255))

(assert (=> b!1443077 m!1332255))

(assert (=> b!1443077 m!1332231))

(declare-fun m!1332257 () Bool)

(assert (=> b!1443077 m!1332257))

(declare-fun m!1332259 () Bool)

(assert (=> b!1443076 m!1332259))

(assert (=> b!1443076 m!1332223))

(declare-fun m!1332261 () Bool)

(assert (=> b!1443076 m!1332261))

(declare-fun m!1332263 () Bool)

(assert (=> b!1443076 m!1332263))

(declare-fun m!1332265 () Bool)

(assert (=> b!1443076 m!1332265))

(assert (=> b!1443076 m!1332231))

(declare-fun m!1332267 () Bool)

(assert (=> start!124660 m!1332267))

(declare-fun m!1332269 () Bool)

(assert (=> start!124660 m!1332269))

(push 1)

