; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127406 () Bool)

(assert start!127406)

(declare-fun b!1496968 () Bool)

(declare-fun res!1018289 () Bool)

(declare-fun e!838402 () Bool)

(assert (=> b!1496968 (=> (not res!1018289) (not e!838402))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!99781 0))(
  ( (array!99782 (arr!48150 (Array (_ BitVec 32) (_ BitVec 64))) (size!48701 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99781)

(assert (=> b!1496968 (= res!1018289 (and (= (size!48701 a!2862) (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48701 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48701 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1496969 () Bool)

(declare-fun e!838398 () Bool)

(assert (=> b!1496969 (= e!838402 e!838398)))

(declare-fun res!1018291 () Bool)

(assert (=> b!1496969 (=> (not res!1018291) (not e!838398))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1496969 (= res!1018291 (= (select (store (arr!48150 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!652247 () array!99781)

(assert (=> b!1496969 (= lt!652247 (array!99782 (store (arr!48150 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48701 a!2862)))))

(declare-fun b!1496970 () Bool)

(declare-fun e!838400 () Bool)

(assert (=> b!1496970 (= e!838398 e!838400)))

(declare-fun res!1018296 () Bool)

(assert (=> b!1496970 (=> (not res!1018296) (not e!838400))))

(declare-datatypes ((SeekEntryResult!12413 0))(
  ( (MissingZero!12413 (index!52043 (_ BitVec 32))) (Found!12413 (index!52044 (_ BitVec 32))) (Intermediate!12413 (undefined!13225 Bool) (index!52045 (_ BitVec 32)) (x!133668 (_ BitVec 32))) (Undefined!12413) (MissingVacant!12413 (index!52046 (_ BitVec 32))) )
))
(declare-fun lt!652245 () SeekEntryResult!12413)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99781 (_ BitVec 32)) SeekEntryResult!12413)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1496970 (= res!1018296 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48150 a!2862) j!93) mask!2687) (select (arr!48150 a!2862) j!93) a!2862 mask!2687) lt!652245))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1496970 (= lt!652245 (Intermediate!12413 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1496971 () Bool)

(declare-fun res!1018294 () Bool)

(declare-fun e!838403 () Bool)

(assert (=> b!1496971 (=> res!1018294 e!838403)))

(declare-fun e!838399 () Bool)

(assert (=> b!1496971 (= res!1018294 e!838399)))

(declare-fun c!138881 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1496971 (= c!138881 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1496972 () Bool)

(declare-fun res!1018290 () Bool)

(declare-fun e!838397 () Bool)

(assert (=> b!1496972 (=> (not res!1018290) (not e!838397))))

(declare-fun e!838396 () Bool)

(assert (=> b!1496972 (= res!1018290 e!838396)))

(declare-fun c!138880 () Bool)

(assert (=> b!1496972 (= c!138880 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1496973 () Bool)

(assert (=> b!1496973 (= e!838403 true)))

(declare-fun lt!652251 () (_ BitVec 64))

(declare-fun lt!652252 () SeekEntryResult!12413)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99781 (_ BitVec 32)) SeekEntryResult!12413)

(assert (=> b!1496973 (= lt!652252 (seekEntryOrOpen!0 lt!652251 lt!652247 mask!2687))))

(declare-datatypes ((Unit!50114 0))(
  ( (Unit!50115) )
))
(declare-fun lt!652248 () Unit!50114)

(declare-fun lt!652249 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 (array!99781 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50114)

(assert (=> b!1496973 (= lt!652248 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 a!2862 i!1006 j!93 (bvadd #b00000000000000000000000000000001 x!665) lt!652249 intermediateBeforeX!19 intermediateBeforeIndex!19 intermediateAfterX!19 intermediateAfterIndex!19 mask!2687))))

(declare-fun lt!652246 () SeekEntryResult!12413)

(declare-fun b!1496974 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1496974 (= e!838396 (= lt!652246 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!652251 lt!652247 mask!2687)))))

(declare-fun b!1496975 () Bool)

(declare-fun e!838395 () Bool)

(assert (=> b!1496975 (= e!838397 (not e!838395))))

(declare-fun res!1018282 () Bool)

(assert (=> b!1496975 (=> res!1018282 e!838395)))

(assert (=> b!1496975 (= res!1018282 (or (and (= (select (arr!48150 a!2862) index!646) (select (store (arr!48150 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48150 a!2862) index!646) (select (arr!48150 a!2862) j!93))) (= (select (arr!48150 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(assert (=> b!1496975 (and (= lt!652252 (Found!12413 j!93)) (or (= (select (arr!48150 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48150 a!2862) intermediateBeforeIndex!19) (select (arr!48150 a!2862) j!93))))))

(assert (=> b!1496975 (= lt!652252 (seekEntryOrOpen!0 (select (arr!48150 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99781 (_ BitVec 32)) Bool)

(assert (=> b!1496975 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-fun lt!652250 () Unit!50114)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99781 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50114)

(assert (=> b!1496975 (= lt!652250 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1496976 () Bool)

(assert (=> b!1496976 (= e!838399 (not (= lt!652246 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!652249 lt!652251 lt!652247 mask!2687))))))

(declare-fun b!1496977 () Bool)

(declare-fun res!1018284 () Bool)

(assert (=> b!1496977 (=> (not res!1018284) (not e!838402))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1496977 (= res!1018284 (validKeyInArray!0 (select (arr!48150 a!2862) i!1006)))))

(declare-fun b!1496978 () Bool)

(declare-fun res!1018286 () Bool)

(assert (=> b!1496978 (=> (not res!1018286) (not e!838402))))

(assert (=> b!1496978 (= res!1018286 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1496979 () Bool)

(declare-fun res!1018295 () Bool)

(assert (=> b!1496979 (=> res!1018295 e!838403)))

(assert (=> b!1496979 (= res!1018295 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!652249 (select (arr!48150 a!2862) j!93) a!2862 mask!2687) lt!652245)))))

(declare-fun b!1496980 () Bool)

(declare-fun res!1018298 () Bool)

(assert (=> b!1496980 (=> (not res!1018298) (not e!838402))))

(assert (=> b!1496980 (= res!1018298 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48701 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48701 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48701 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1496981 () Bool)

(assert (=> b!1496981 (= e!838400 e!838397)))

(declare-fun res!1018297 () Bool)

(assert (=> b!1496981 (=> (not res!1018297) (not e!838397))))

(assert (=> b!1496981 (= res!1018297 (= lt!652246 (Intermediate!12413 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1496981 (= lt!652246 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!652251 mask!2687) lt!652251 lt!652247 mask!2687))))

(assert (=> b!1496981 (= lt!652251 (select (store (arr!48150 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun res!1018287 () Bool)

(assert (=> start!127406 (=> (not res!1018287) (not e!838402))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127406 (= res!1018287 (validMask!0 mask!2687))))

(assert (=> start!127406 e!838402))

(assert (=> start!127406 true))

(declare-fun array_inv!37095 (array!99781) Bool)

(assert (=> start!127406 (array_inv!37095 a!2862)))

(declare-fun b!1496982 () Bool)

(declare-fun res!1018285 () Bool)

(assert (=> b!1496982 (=> res!1018285 e!838403)))

(assert (=> b!1496982 (= res!1018285 (bvsgt (bvadd #b00000000000000000000000000000001 x!665) intermediateBeforeX!19))))

(declare-fun b!1496983 () Bool)

(declare-fun res!1018288 () Bool)

(assert (=> b!1496983 (=> (not res!1018288) (not e!838397))))

(assert (=> b!1496983 (= res!1018288 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1496984 () Bool)

(declare-fun res!1018299 () Bool)

(assert (=> b!1496984 (=> (not res!1018299) (not e!838402))))

(assert (=> b!1496984 (= res!1018299 (validKeyInArray!0 (select (arr!48150 a!2862) j!93)))))

(declare-fun b!1496985 () Bool)

(assert (=> b!1496985 (= e!838395 e!838403)))

(declare-fun res!1018292 () Bool)

(assert (=> b!1496985 (=> res!1018292 e!838403)))

(assert (=> b!1496985 (= res!1018292 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!652249 #b00000000000000000000000000000000) (bvsge lt!652249 (size!48701 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1496985 (= lt!652249 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1496986 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99781 (_ BitVec 32)) SeekEntryResult!12413)

(assert (=> b!1496986 (= e!838396 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!652251 lt!652247 mask!2687) (seekEntryOrOpen!0 lt!652251 lt!652247 mask!2687)))))

(declare-fun b!1496987 () Bool)

(assert (=> b!1496987 (= e!838399 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!652249 intermediateAfterIndex!19 lt!652251 lt!652247 mask!2687) (seekEntryOrOpen!0 lt!652251 lt!652247 mask!2687))))))

(declare-fun b!1496988 () Bool)

(declare-fun res!1018283 () Bool)

(assert (=> b!1496988 (=> (not res!1018283) (not e!838402))))

(declare-datatypes ((List!34831 0))(
  ( (Nil!34828) (Cons!34827 (h!36225 (_ BitVec 64)) (t!49532 List!34831)) )
))
(declare-fun arrayNoDuplicates!0 (array!99781 (_ BitVec 32) List!34831) Bool)

(assert (=> b!1496988 (= res!1018283 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34828))))

(declare-fun b!1496989 () Bool)

(declare-fun res!1018293 () Bool)

(assert (=> b!1496989 (=> (not res!1018293) (not e!838400))))

(assert (=> b!1496989 (= res!1018293 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48150 a!2862) j!93) a!2862 mask!2687) lt!652245))))

(assert (= (and start!127406 res!1018287) b!1496968))

(assert (= (and b!1496968 res!1018289) b!1496977))

(assert (= (and b!1496977 res!1018284) b!1496984))

(assert (= (and b!1496984 res!1018299) b!1496978))

(assert (= (and b!1496978 res!1018286) b!1496988))

(assert (= (and b!1496988 res!1018283) b!1496980))

(assert (= (and b!1496980 res!1018298) b!1496969))

(assert (= (and b!1496969 res!1018291) b!1496970))

(assert (= (and b!1496970 res!1018296) b!1496989))

(assert (= (and b!1496989 res!1018293) b!1496981))

(assert (= (and b!1496981 res!1018297) b!1496972))

(assert (= (and b!1496972 c!138880) b!1496974))

(assert (= (and b!1496972 (not c!138880)) b!1496986))

(assert (= (and b!1496972 res!1018290) b!1496983))

(assert (= (and b!1496983 res!1018288) b!1496975))

(assert (= (and b!1496975 (not res!1018282)) b!1496985))

(assert (= (and b!1496985 (not res!1018292)) b!1496979))

(assert (= (and b!1496979 (not res!1018295)) b!1496971))

(assert (= (and b!1496971 c!138881) b!1496976))

(assert (= (and b!1496971 (not c!138881)) b!1496987))

(assert (= (and b!1496971 (not res!1018294)) b!1496982))

(assert (= (and b!1496982 (not res!1018285)) b!1496973))

(declare-fun m!1380141 () Bool)

(assert (=> b!1496981 m!1380141))

(assert (=> b!1496981 m!1380141))

(declare-fun m!1380143 () Bool)

(assert (=> b!1496981 m!1380143))

(declare-fun m!1380145 () Bool)

(assert (=> b!1496981 m!1380145))

(declare-fun m!1380147 () Bool)

(assert (=> b!1496981 m!1380147))

(declare-fun m!1380149 () Bool)

(assert (=> b!1496989 m!1380149))

(assert (=> b!1496989 m!1380149))

(declare-fun m!1380151 () Bool)

(assert (=> b!1496989 m!1380151))

(assert (=> b!1496970 m!1380149))

(assert (=> b!1496970 m!1380149))

(declare-fun m!1380153 () Bool)

(assert (=> b!1496970 m!1380153))

(assert (=> b!1496970 m!1380153))

(assert (=> b!1496970 m!1380149))

(declare-fun m!1380155 () Bool)

(assert (=> b!1496970 m!1380155))

(declare-fun m!1380157 () Bool)

(assert (=> b!1496985 m!1380157))

(declare-fun m!1380159 () Bool)

(assert (=> b!1496976 m!1380159))

(assert (=> b!1496984 m!1380149))

(assert (=> b!1496984 m!1380149))

(declare-fun m!1380161 () Bool)

(assert (=> b!1496984 m!1380161))

(assert (=> b!1496969 m!1380145))

(declare-fun m!1380163 () Bool)

(assert (=> b!1496969 m!1380163))

(declare-fun m!1380165 () Bool)

(assert (=> start!127406 m!1380165))

(declare-fun m!1380167 () Bool)

(assert (=> start!127406 m!1380167))

(declare-fun m!1380169 () Bool)

(assert (=> b!1496974 m!1380169))

(declare-fun m!1380171 () Bool)

(assert (=> b!1496978 m!1380171))

(declare-fun m!1380173 () Bool)

(assert (=> b!1496977 m!1380173))

(assert (=> b!1496977 m!1380173))

(declare-fun m!1380175 () Bool)

(assert (=> b!1496977 m!1380175))

(assert (=> b!1496979 m!1380149))

(assert (=> b!1496979 m!1380149))

(declare-fun m!1380177 () Bool)

(assert (=> b!1496979 m!1380177))

(declare-fun m!1380179 () Bool)

(assert (=> b!1496973 m!1380179))

(declare-fun m!1380181 () Bool)

(assert (=> b!1496973 m!1380181))

(declare-fun m!1380183 () Bool)

(assert (=> b!1496986 m!1380183))

(assert (=> b!1496986 m!1380179))

(declare-fun m!1380185 () Bool)

(assert (=> b!1496988 m!1380185))

(declare-fun m!1380187 () Bool)

(assert (=> b!1496975 m!1380187))

(assert (=> b!1496975 m!1380145))

(declare-fun m!1380189 () Bool)

(assert (=> b!1496975 m!1380189))

(declare-fun m!1380191 () Bool)

(assert (=> b!1496975 m!1380191))

(declare-fun m!1380193 () Bool)

(assert (=> b!1496975 m!1380193))

(assert (=> b!1496975 m!1380149))

(declare-fun m!1380195 () Bool)

(assert (=> b!1496975 m!1380195))

(declare-fun m!1380197 () Bool)

(assert (=> b!1496975 m!1380197))

(assert (=> b!1496975 m!1380149))

(declare-fun m!1380199 () Bool)

(assert (=> b!1496987 m!1380199))

(assert (=> b!1496987 m!1380179))

(push 1)

(assert (not start!127406))

(assert (not b!1496984))

(assert (not b!1496979))

(assert (not b!1496975))

(assert (not b!1496977))

(assert (not b!1496987))

(assert (not b!1496978))

(assert (not b!1496973))

(assert (not b!1496985))

(assert (not b!1496976))

(assert (not b!1496986))

(assert (not b!1496974))

(assert (not b!1496989))

(assert (not b!1496981))

(assert (not b!1496970))

(assert (not b!1496988))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

