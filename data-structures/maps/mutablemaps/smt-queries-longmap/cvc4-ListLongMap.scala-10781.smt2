; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126230 () Bool)

(assert start!126230)

(declare-fun b!1477970 () Bool)

(declare-fun res!1004146 () Bool)

(declare-fun e!829141 () Bool)

(assert (=> b!1477970 (=> (not res!1004146) (not e!829141))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!99253 0))(
  ( (array!99254 (arr!47901 (Array (_ BitVec 32) (_ BitVec 64))) (size!48452 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99253)

(assert (=> b!1477970 (= res!1004146 (and (= (size!48452 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48452 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48452 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1477971 () Bool)

(declare-fun res!1004138 () Bool)

(assert (=> b!1477971 (=> (not res!1004138) (not e!829141))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99253 (_ BitVec 32)) Bool)

(assert (=> b!1477971 (= res!1004138 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1477972 () Bool)

(declare-fun res!1004150 () Bool)

(assert (=> b!1477972 (=> (not res!1004150) (not e!829141))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1477972 (= res!1004150 (validKeyInArray!0 (select (arr!47901 a!2862) i!1006)))))

(declare-fun b!1477974 () Bool)

(declare-fun res!1004140 () Bool)

(assert (=> b!1477974 (=> (not res!1004140) (not e!829141))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1477974 (= res!1004140 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48452 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48452 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48452 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1477975 () Bool)

(declare-fun e!829140 () Bool)

(assert (=> b!1477975 (= e!829140 (not true))))

(declare-fun e!829137 () Bool)

(assert (=> b!1477975 e!829137))

(declare-fun res!1004142 () Bool)

(assert (=> b!1477975 (=> (not res!1004142) (not e!829137))))

(declare-datatypes ((SeekEntryResult!12164 0))(
  ( (MissingZero!12164 (index!51047 (_ BitVec 32))) (Found!12164 (index!51048 (_ BitVec 32))) (Intermediate!12164 (undefined!12976 Bool) (index!51049 (_ BitVec 32)) (x!132638 (_ BitVec 32))) (Undefined!12164) (MissingVacant!12164 (index!51050 (_ BitVec 32))) )
))
(declare-fun lt!645494 () SeekEntryResult!12164)

(assert (=> b!1477975 (= res!1004142 (and (= lt!645494 (Found!12164 j!93)) (or (= (select (arr!47901 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47901 a!2862) intermediateBeforeIndex!19) (select (arr!47901 a!2862) j!93)))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99253 (_ BitVec 32)) SeekEntryResult!12164)

(assert (=> b!1477975 (= lt!645494 (seekEntryOrOpen!0 (select (arr!47901 a!2862) j!93) a!2862 mask!2687))))

(assert (=> b!1477975 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!49616 0))(
  ( (Unit!49617) )
))
(declare-fun lt!645491 () Unit!49616)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99253 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49616)

(assert (=> b!1477975 (= lt!645491 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1477976 () Bool)

(declare-fun res!1004149 () Bool)

(assert (=> b!1477976 (=> (not res!1004149) (not e!829141))))

(assert (=> b!1477976 (= res!1004149 (validKeyInArray!0 (select (arr!47901 a!2862) j!93)))))

(declare-fun b!1477977 () Bool)

(declare-fun e!829134 () Bool)

(declare-fun e!829136 () Bool)

(assert (=> b!1477977 (= e!829134 e!829136)))

(declare-fun res!1004139 () Bool)

(assert (=> b!1477977 (=> (not res!1004139) (not e!829136))))

(declare-fun lt!645496 () SeekEntryResult!12164)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99253 (_ BitVec 32)) SeekEntryResult!12164)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1477977 (= res!1004139 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47901 a!2862) j!93) mask!2687) (select (arr!47901 a!2862) j!93) a!2862 mask!2687) lt!645496))))

(assert (=> b!1477977 (= lt!645496 (Intermediate!12164 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1477978 () Bool)

(declare-fun res!1004145 () Bool)

(assert (=> b!1477978 (=> (not res!1004145) (not e!829140))))

(assert (=> b!1477978 (= res!1004145 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun e!829139 () Bool)

(declare-fun b!1477979 () Bool)

(declare-fun lt!645492 () array!99253)

(declare-fun lt!645495 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99253 (_ BitVec 32)) SeekEntryResult!12164)

(assert (=> b!1477979 (= e!829139 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!645495 lt!645492 mask!2687) (seekEntryOrOpen!0 lt!645495 lt!645492 mask!2687)))))

(declare-fun b!1477973 () Bool)

(declare-fun lt!645493 () SeekEntryResult!12164)

(assert (=> b!1477973 (= e!829139 (= lt!645493 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!645495 lt!645492 mask!2687)))))

(declare-fun res!1004144 () Bool)

(assert (=> start!126230 (=> (not res!1004144) (not e!829141))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126230 (= res!1004144 (validMask!0 mask!2687))))

(assert (=> start!126230 e!829141))

(assert (=> start!126230 true))

(declare-fun array_inv!36846 (array!99253) Bool)

(assert (=> start!126230 (array_inv!36846 a!2862)))

(declare-fun b!1477980 () Bool)

(declare-fun res!1004147 () Bool)

(assert (=> b!1477980 (=> (not res!1004147) (not e!829141))))

(declare-datatypes ((List!34582 0))(
  ( (Nil!34579) (Cons!34578 (h!35946 (_ BitVec 64)) (t!49283 List!34582)) )
))
(declare-fun arrayNoDuplicates!0 (array!99253 (_ BitVec 32) List!34582) Bool)

(assert (=> b!1477980 (= res!1004147 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34579))))

(declare-fun b!1477981 () Bool)

(declare-fun res!1004148 () Bool)

(assert (=> b!1477981 (=> (not res!1004148) (not e!829140))))

(assert (=> b!1477981 (= res!1004148 e!829139)))

(declare-fun c!136439 () Bool)

(assert (=> b!1477981 (= c!136439 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1477982 () Bool)

(assert (=> b!1477982 (= e!829136 e!829140)))

(declare-fun res!1004151 () Bool)

(assert (=> b!1477982 (=> (not res!1004151) (not e!829140))))

(assert (=> b!1477982 (= res!1004151 (= lt!645493 (Intermediate!12164 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1477982 (= lt!645493 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!645495 mask!2687) lt!645495 lt!645492 mask!2687))))

(assert (=> b!1477982 (= lt!645495 (select (store (arr!47901 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1477983 () Bool)

(declare-fun res!1004143 () Bool)

(assert (=> b!1477983 (=> (not res!1004143) (not e!829136))))

(assert (=> b!1477983 (= res!1004143 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47901 a!2862) j!93) a!2862 mask!2687) lt!645496))))

(declare-fun b!1477984 () Bool)

(declare-fun e!829135 () Bool)

(assert (=> b!1477984 (= e!829137 e!829135)))

(declare-fun res!1004137 () Bool)

(assert (=> b!1477984 (=> res!1004137 e!829135)))

(assert (=> b!1477984 (= res!1004137 (or (and (= (select (arr!47901 a!2862) index!646) (select (store (arr!47901 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47901 a!2862) index!646) (select (arr!47901 a!2862) j!93))) (not (= (select (arr!47901 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1477985 () Bool)

(declare-fun e!829142 () Bool)

(assert (=> b!1477985 (= e!829142 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1477986 () Bool)

(assert (=> b!1477986 (= e!829141 e!829134)))

(declare-fun res!1004141 () Bool)

(assert (=> b!1477986 (=> (not res!1004141) (not e!829134))))

(assert (=> b!1477986 (= res!1004141 (= (select (store (arr!47901 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1477986 (= lt!645492 (array!99254 (store (arr!47901 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48452 a!2862)))))

(declare-fun b!1477987 () Bool)

(assert (=> b!1477987 (= e!829135 e!829142)))

(declare-fun res!1004136 () Bool)

(assert (=> b!1477987 (=> (not res!1004136) (not e!829142))))

(assert (=> b!1477987 (= res!1004136 (= lt!645494 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47901 a!2862) j!93) a!2862 mask!2687)))))

(assert (= (and start!126230 res!1004144) b!1477970))

(assert (= (and b!1477970 res!1004146) b!1477972))

(assert (= (and b!1477972 res!1004150) b!1477976))

(assert (= (and b!1477976 res!1004149) b!1477971))

(assert (= (and b!1477971 res!1004138) b!1477980))

(assert (= (and b!1477980 res!1004147) b!1477974))

(assert (= (and b!1477974 res!1004140) b!1477986))

(assert (= (and b!1477986 res!1004141) b!1477977))

(assert (= (and b!1477977 res!1004139) b!1477983))

(assert (= (and b!1477983 res!1004143) b!1477982))

(assert (= (and b!1477982 res!1004151) b!1477981))

(assert (= (and b!1477981 c!136439) b!1477973))

(assert (= (and b!1477981 (not c!136439)) b!1477979))

(assert (= (and b!1477981 res!1004148) b!1477978))

(assert (= (and b!1477978 res!1004145) b!1477975))

(assert (= (and b!1477975 res!1004142) b!1477984))

(assert (= (and b!1477984 (not res!1004137)) b!1477987))

(assert (= (and b!1477987 res!1004136) b!1477985))

(declare-fun m!1363955 () Bool)

(assert (=> b!1477976 m!1363955))

(assert (=> b!1477976 m!1363955))

(declare-fun m!1363957 () Bool)

(assert (=> b!1477976 m!1363957))

(declare-fun m!1363959 () Bool)

(assert (=> b!1477971 m!1363959))

(declare-fun m!1363961 () Bool)

(assert (=> start!126230 m!1363961))

(declare-fun m!1363963 () Bool)

(assert (=> start!126230 m!1363963))

(declare-fun m!1363965 () Bool)

(assert (=> b!1477972 m!1363965))

(assert (=> b!1477972 m!1363965))

(declare-fun m!1363967 () Bool)

(assert (=> b!1477972 m!1363967))

(assert (=> b!1477987 m!1363955))

(assert (=> b!1477987 m!1363955))

(declare-fun m!1363969 () Bool)

(assert (=> b!1477987 m!1363969))

(declare-fun m!1363971 () Bool)

(assert (=> b!1477980 m!1363971))

(assert (=> b!1477983 m!1363955))

(assert (=> b!1477983 m!1363955))

(declare-fun m!1363973 () Bool)

(assert (=> b!1477983 m!1363973))

(assert (=> b!1477977 m!1363955))

(assert (=> b!1477977 m!1363955))

(declare-fun m!1363975 () Bool)

(assert (=> b!1477977 m!1363975))

(assert (=> b!1477977 m!1363975))

(assert (=> b!1477977 m!1363955))

(declare-fun m!1363977 () Bool)

(assert (=> b!1477977 m!1363977))

(declare-fun m!1363979 () Bool)

(assert (=> b!1477975 m!1363979))

(declare-fun m!1363981 () Bool)

(assert (=> b!1477975 m!1363981))

(assert (=> b!1477975 m!1363955))

(declare-fun m!1363983 () Bool)

(assert (=> b!1477975 m!1363983))

(declare-fun m!1363985 () Bool)

(assert (=> b!1477975 m!1363985))

(assert (=> b!1477975 m!1363955))

(declare-fun m!1363987 () Bool)

(assert (=> b!1477986 m!1363987))

(declare-fun m!1363989 () Bool)

(assert (=> b!1477986 m!1363989))

(declare-fun m!1363991 () Bool)

(assert (=> b!1477982 m!1363991))

(assert (=> b!1477982 m!1363991))

(declare-fun m!1363993 () Bool)

(assert (=> b!1477982 m!1363993))

(assert (=> b!1477982 m!1363987))

(declare-fun m!1363995 () Bool)

(assert (=> b!1477982 m!1363995))

(declare-fun m!1363997 () Bool)

(assert (=> b!1477979 m!1363997))

(declare-fun m!1363999 () Bool)

(assert (=> b!1477979 m!1363999))

(declare-fun m!1364001 () Bool)

(assert (=> b!1477984 m!1364001))

(assert (=> b!1477984 m!1363987))

(declare-fun m!1364003 () Bool)

(assert (=> b!1477984 m!1364003))

(assert (=> b!1477984 m!1363955))

(declare-fun m!1364005 () Bool)

(assert (=> b!1477973 m!1364005))

(push 1)

