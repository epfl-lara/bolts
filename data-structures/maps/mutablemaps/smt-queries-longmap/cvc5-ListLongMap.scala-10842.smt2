; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126940 () Bool)

(assert start!126940)

(declare-fun b!1490972 () Bool)

(declare-fun res!1014295 () Bool)

(declare-fun e!835439 () Bool)

(assert (=> b!1490972 (=> (not res!1014295) (not e!835439))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!99630 0))(
  ( (array!99631 (arr!48082 (Array (_ BitVec 32) (_ BitVec 64))) (size!48633 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99630)

(assert (=> b!1490972 (= res!1014295 (and (= (size!48633 a!2862) (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48633 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48633 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1490973 () Bool)

(declare-fun res!1014301 () Bool)

(declare-fun e!835438 () Bool)

(assert (=> b!1490973 (=> (not res!1014301) (not e!835438))))

(declare-datatypes ((SeekEntryResult!12345 0))(
  ( (MissingZero!12345 (index!51771 (_ BitVec 32))) (Found!12345 (index!51772 (_ BitVec 32))) (Intermediate!12345 (undefined!13157 Bool) (index!51773 (_ BitVec 32)) (x!133364 (_ BitVec 32))) (Undefined!12345) (MissingVacant!12345 (index!51774 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99630 (_ BitVec 32)) SeekEntryResult!12345)

(assert (=> b!1490973 (= res!1014301 (= (seekEntryOrOpen!0 (select (arr!48082 a!2862) j!93) a!2862 mask!2687) (Found!12345 j!93)))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun lt!650090 () SeekEntryResult!12345)

(declare-fun b!1490974 () Bool)

(declare-fun lt!650088 () array!99630)

(declare-fun e!835444 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun lt!650087 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99630 (_ BitVec 32)) SeekEntryResult!12345)

(assert (=> b!1490974 (= e!835444 (= lt!650090 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!650087 lt!650088 mask!2687)))))

(declare-fun b!1490975 () Bool)

(declare-fun e!835441 () Bool)

(assert (=> b!1490975 (= e!835441 true)))

(declare-fun lt!650092 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1490975 (= lt!650092 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1490976 () Bool)

(declare-fun e!835440 () Bool)

(assert (=> b!1490976 (= e!835440 (not e!835441))))

(declare-fun res!1014302 () Bool)

(assert (=> b!1490976 (=> res!1014302 e!835441)))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1490976 (= res!1014302 (or (and (= (select (arr!48082 a!2862) index!646) (select (store (arr!48082 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48082 a!2862) index!646) (select (arr!48082 a!2862) j!93))) (= (select (arr!48082 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(assert (=> b!1490976 e!835438))

(declare-fun res!1014305 () Bool)

(assert (=> b!1490976 (=> (not res!1014305) (not e!835438))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99630 (_ BitVec 32)) Bool)

(assert (=> b!1490976 (= res!1014305 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49978 0))(
  ( (Unit!49979) )
))
(declare-fun lt!650091 () Unit!49978)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99630 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49978)

(assert (=> b!1490976 (= lt!650091 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1490977 () Bool)

(declare-fun res!1014297 () Bool)

(assert (=> b!1490977 (=> (not res!1014297) (not e!835439))))

(declare-datatypes ((List!34763 0))(
  ( (Nil!34760) (Cons!34759 (h!36142 (_ BitVec 64)) (t!49464 List!34763)) )
))
(declare-fun arrayNoDuplicates!0 (array!99630 (_ BitVec 32) List!34763) Bool)

(assert (=> b!1490977 (= res!1014297 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34760))))

(declare-fun b!1490978 () Bool)

(declare-fun res!1014303 () Bool)

(assert (=> b!1490978 (=> (not res!1014303) (not e!835439))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1490978 (= res!1014303 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48633 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48633 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48633 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1490980 () Bool)

(assert (=> b!1490980 (= e!835438 (or (= (select (arr!48082 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48082 a!2862) intermediateBeforeIndex!19) (select (arr!48082 a!2862) j!93))))))

(declare-fun b!1490981 () Bool)

(declare-fun res!1014296 () Bool)

(declare-fun e!835445 () Bool)

(assert (=> b!1490981 (=> (not res!1014296) (not e!835445))))

(declare-fun lt!650089 () SeekEntryResult!12345)

(assert (=> b!1490981 (= res!1014296 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48082 a!2862) j!93) a!2862 mask!2687) lt!650089))))

(declare-fun b!1490982 () Bool)

(declare-fun e!835442 () Bool)

(assert (=> b!1490982 (= e!835439 e!835442)))

(declare-fun res!1014298 () Bool)

(assert (=> b!1490982 (=> (not res!1014298) (not e!835442))))

(assert (=> b!1490982 (= res!1014298 (= (select (store (arr!48082 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1490982 (= lt!650088 (array!99631 (store (arr!48082 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48633 a!2862)))))

(declare-fun b!1490983 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99630 (_ BitVec 32)) SeekEntryResult!12345)

(assert (=> b!1490983 (= e!835444 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!650087 lt!650088 mask!2687) (seekEntryOrOpen!0 lt!650087 lt!650088 mask!2687)))))

(declare-fun b!1490984 () Bool)

(declare-fun res!1014294 () Bool)

(assert (=> b!1490984 (=> (not res!1014294) (not e!835439))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1490984 (= res!1014294 (validKeyInArray!0 (select (arr!48082 a!2862) j!93)))))

(declare-fun b!1490985 () Bool)

(declare-fun res!1014293 () Bool)

(assert (=> b!1490985 (=> (not res!1014293) (not e!835439))))

(assert (=> b!1490985 (= res!1014293 (validKeyInArray!0 (select (arr!48082 a!2862) i!1006)))))

(declare-fun b!1490986 () Bool)

(assert (=> b!1490986 (= e!835445 e!835440)))

(declare-fun res!1014304 () Bool)

(assert (=> b!1490986 (=> (not res!1014304) (not e!835440))))

(assert (=> b!1490986 (= res!1014304 (= lt!650090 (Intermediate!12345 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1490986 (= lt!650090 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!650087 mask!2687) lt!650087 lt!650088 mask!2687))))

(assert (=> b!1490986 (= lt!650087 (select (store (arr!48082 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1490987 () Bool)

(assert (=> b!1490987 (= e!835442 e!835445)))

(declare-fun res!1014299 () Bool)

(assert (=> b!1490987 (=> (not res!1014299) (not e!835445))))

(assert (=> b!1490987 (= res!1014299 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48082 a!2862) j!93) mask!2687) (select (arr!48082 a!2862) j!93) a!2862 mask!2687) lt!650089))))

(assert (=> b!1490987 (= lt!650089 (Intermediate!12345 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun res!1014291 () Bool)

(assert (=> start!126940 (=> (not res!1014291) (not e!835439))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126940 (= res!1014291 (validMask!0 mask!2687))))

(assert (=> start!126940 e!835439))

(assert (=> start!126940 true))

(declare-fun array_inv!37027 (array!99630) Bool)

(assert (=> start!126940 (array_inv!37027 a!2862)))

(declare-fun b!1490979 () Bool)

(declare-fun res!1014292 () Bool)

(assert (=> b!1490979 (=> (not res!1014292) (not e!835440))))

(assert (=> b!1490979 (= res!1014292 e!835444)))

(declare-fun c!137870 () Bool)

(assert (=> b!1490979 (= c!137870 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1490988 () Bool)

(declare-fun res!1014300 () Bool)

(assert (=> b!1490988 (=> (not res!1014300) (not e!835439))))

(assert (=> b!1490988 (= res!1014300 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1490989 () Bool)

(declare-fun res!1014306 () Bool)

(assert (=> b!1490989 (=> (not res!1014306) (not e!835440))))

(assert (=> b!1490989 (= res!1014306 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(assert (= (and start!126940 res!1014291) b!1490972))

(assert (= (and b!1490972 res!1014295) b!1490985))

(assert (= (and b!1490985 res!1014293) b!1490984))

(assert (= (and b!1490984 res!1014294) b!1490988))

(assert (= (and b!1490988 res!1014300) b!1490977))

(assert (= (and b!1490977 res!1014297) b!1490978))

(assert (= (and b!1490978 res!1014303) b!1490982))

(assert (= (and b!1490982 res!1014298) b!1490987))

(assert (= (and b!1490987 res!1014299) b!1490981))

(assert (= (and b!1490981 res!1014296) b!1490986))

(assert (= (and b!1490986 res!1014304) b!1490979))

(assert (= (and b!1490979 c!137870) b!1490974))

(assert (= (and b!1490979 (not c!137870)) b!1490983))

(assert (= (and b!1490979 res!1014292) b!1490989))

(assert (= (and b!1490989 res!1014306) b!1490976))

(assert (= (and b!1490976 res!1014305) b!1490973))

(assert (= (and b!1490973 res!1014301) b!1490980))

(assert (= (and b!1490976 (not res!1014302)) b!1490975))

(declare-fun m!1375167 () Bool)

(assert (=> b!1490974 m!1375167))

(declare-fun m!1375169 () Bool)

(assert (=> b!1490975 m!1375169))

(declare-fun m!1375171 () Bool)

(assert (=> b!1490988 m!1375171))

(declare-fun m!1375173 () Bool)

(assert (=> b!1490977 m!1375173))

(declare-fun m!1375175 () Bool)

(assert (=> b!1490976 m!1375175))

(declare-fun m!1375177 () Bool)

(assert (=> b!1490976 m!1375177))

(declare-fun m!1375179 () Bool)

(assert (=> b!1490976 m!1375179))

(declare-fun m!1375181 () Bool)

(assert (=> b!1490976 m!1375181))

(declare-fun m!1375183 () Bool)

(assert (=> b!1490976 m!1375183))

(declare-fun m!1375185 () Bool)

(assert (=> b!1490976 m!1375185))

(declare-fun m!1375187 () Bool)

(assert (=> b!1490985 m!1375187))

(assert (=> b!1490985 m!1375187))

(declare-fun m!1375189 () Bool)

(assert (=> b!1490985 m!1375189))

(assert (=> b!1490982 m!1375177))

(declare-fun m!1375191 () Bool)

(assert (=> b!1490982 m!1375191))

(assert (=> b!1490973 m!1375185))

(assert (=> b!1490973 m!1375185))

(declare-fun m!1375193 () Bool)

(assert (=> b!1490973 m!1375193))

(declare-fun m!1375195 () Bool)

(assert (=> b!1490980 m!1375195))

(assert (=> b!1490980 m!1375185))

(assert (=> b!1490981 m!1375185))

(assert (=> b!1490981 m!1375185))

(declare-fun m!1375197 () Bool)

(assert (=> b!1490981 m!1375197))

(assert (=> b!1490984 m!1375185))

(assert (=> b!1490984 m!1375185))

(declare-fun m!1375199 () Bool)

(assert (=> b!1490984 m!1375199))

(declare-fun m!1375201 () Bool)

(assert (=> start!126940 m!1375201))

(declare-fun m!1375203 () Bool)

(assert (=> start!126940 m!1375203))

(declare-fun m!1375205 () Bool)

(assert (=> b!1490986 m!1375205))

(assert (=> b!1490986 m!1375205))

(declare-fun m!1375207 () Bool)

(assert (=> b!1490986 m!1375207))

(assert (=> b!1490986 m!1375177))

(declare-fun m!1375209 () Bool)

(assert (=> b!1490986 m!1375209))

(declare-fun m!1375211 () Bool)

(assert (=> b!1490983 m!1375211))

(declare-fun m!1375213 () Bool)

(assert (=> b!1490983 m!1375213))

(assert (=> b!1490987 m!1375185))

(assert (=> b!1490987 m!1375185))

(declare-fun m!1375215 () Bool)

(assert (=> b!1490987 m!1375215))

(assert (=> b!1490987 m!1375215))

(assert (=> b!1490987 m!1375185))

(declare-fun m!1375217 () Bool)

(assert (=> b!1490987 m!1375217))

(push 1)

