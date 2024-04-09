; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126590 () Bool)

(assert start!126590)

(declare-fun b!1484966 () Bool)

(declare-fun res!1009800 () Bool)

(declare-fun e!832559 () Bool)

(assert (=> b!1484966 (=> (not res!1009800) (not e!832559))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-datatypes ((array!99469 0))(
  ( (array!99470 (arr!48006 (Array (_ BitVec 32) (_ BitVec 64))) (size!48557 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99469)

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1484966 (= res!1009800 (or (= (select (arr!48006 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48006 a!2862) intermediateBeforeIndex!19) (select (arr!48006 a!2862) j!93))))))

(declare-fun b!1484967 () Bool)

(declare-fun e!832551 () Bool)

(declare-fun e!832557 () Bool)

(assert (=> b!1484967 (= e!832551 e!832557)))

(declare-fun res!1009801 () Bool)

(assert (=> b!1484967 (=> (not res!1009801) (not e!832557))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12269 0))(
  ( (MissingZero!12269 (index!51467 (_ BitVec 32))) (Found!12269 (index!51468 (_ BitVec 32))) (Intermediate!12269 (undefined!13081 Bool) (index!51469 (_ BitVec 32)) (x!133044 (_ BitVec 32))) (Undefined!12269) (MissingVacant!12269 (index!51470 (_ BitVec 32))) )
))
(declare-fun lt!647908 () SeekEntryResult!12269)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99469 (_ BitVec 32)) SeekEntryResult!12269)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1484967 (= res!1009801 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48006 a!2862) j!93) mask!2687) (select (arr!48006 a!2862) j!93) a!2862 mask!2687) lt!647908))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1484967 (= lt!647908 (Intermediate!12269 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1484968 () Bool)

(declare-fun res!1009797 () Bool)

(assert (=> b!1484968 (=> (not res!1009797) (not e!832557))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1484968 (= res!1009797 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48006 a!2862) j!93) a!2862 mask!2687) lt!647908))))

(declare-fun b!1484969 () Bool)

(declare-fun res!1009809 () Bool)

(declare-fun e!832554 () Bool)

(assert (=> b!1484969 (=> (not res!1009809) (not e!832554))))

(declare-datatypes ((List!34687 0))(
  ( (Nil!34684) (Cons!34683 (h!36057 (_ BitVec 64)) (t!49388 List!34687)) )
))
(declare-fun arrayNoDuplicates!0 (array!99469 (_ BitVec 32) List!34687) Bool)

(assert (=> b!1484969 (= res!1009809 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34684))))

(declare-fun b!1484970 () Bool)

(declare-fun e!832553 () Bool)

(assert (=> b!1484970 (= e!832553 true)))

(declare-fun lt!647903 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1484970 (= lt!647903 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1484971 () Bool)

(declare-fun res!1009812 () Bool)

(assert (=> b!1484971 (=> (not res!1009812) (not e!832554))))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1484971 (= res!1009812 (validKeyInArray!0 (select (arr!48006 a!2862) i!1006)))))

(declare-fun b!1484972 () Bool)

(declare-fun lt!647902 () SeekEntryResult!12269)

(declare-fun e!832550 () Bool)

(declare-fun lt!647905 () array!99469)

(declare-fun lt!647906 () (_ BitVec 64))

(assert (=> b!1484972 (= e!832550 (= lt!647902 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!647906 lt!647905 mask!2687)))))

(declare-fun b!1484973 () Bool)

(declare-fun res!1009808 () Bool)

(declare-fun e!832558 () Bool)

(assert (=> b!1484973 (=> (not res!1009808) (not e!832558))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1484973 (= res!1009808 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1484974 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99469 (_ BitVec 32)) SeekEntryResult!12269)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99469 (_ BitVec 32)) SeekEntryResult!12269)

(assert (=> b!1484974 (= e!832550 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!647906 lt!647905 mask!2687) (seekEntryOrOpen!0 lt!647906 lt!647905 mask!2687)))))

(declare-fun b!1484975 () Bool)

(declare-fun res!1009807 () Bool)

(assert (=> b!1484975 (=> (not res!1009807) (not e!832554))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1484975 (= res!1009807 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48557 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48557 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48557 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1484976 () Bool)

(assert (=> b!1484976 (= e!832554 e!832551)))

(declare-fun res!1009806 () Bool)

(assert (=> b!1484976 (=> (not res!1009806) (not e!832551))))

(assert (=> b!1484976 (= res!1009806 (= (select (store (arr!48006 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1484976 (= lt!647905 (array!99470 (store (arr!48006 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48557 a!2862)))))

(declare-fun res!1009794 () Bool)

(assert (=> start!126590 (=> (not res!1009794) (not e!832554))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126590 (= res!1009794 (validMask!0 mask!2687))))

(assert (=> start!126590 e!832554))

(assert (=> start!126590 true))

(declare-fun array_inv!36951 (array!99469) Bool)

(assert (=> start!126590 (array_inv!36951 a!2862)))

(declare-fun b!1484977 () Bool)

(assert (=> b!1484977 (= e!832557 e!832558)))

(declare-fun res!1009795 () Bool)

(assert (=> b!1484977 (=> (not res!1009795) (not e!832558))))

(assert (=> b!1484977 (= res!1009795 (= lt!647902 (Intermediate!12269 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1484977 (= lt!647902 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!647906 mask!2687) lt!647906 lt!647905 mask!2687))))

(assert (=> b!1484977 (= lt!647906 (select (store (arr!48006 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1484978 () Bool)

(declare-fun res!1009798 () Bool)

(assert (=> b!1484978 (=> (not res!1009798) (not e!832554))))

(assert (=> b!1484978 (= res!1009798 (validKeyInArray!0 (select (arr!48006 a!2862) j!93)))))

(declare-fun b!1484979 () Bool)

(assert (=> b!1484979 (= e!832558 (not e!832553))))

(declare-fun res!1009805 () Bool)

(assert (=> b!1484979 (=> res!1009805 e!832553)))

(assert (=> b!1484979 (= res!1009805 (or (and (= (select (arr!48006 a!2862) index!646) (select (store (arr!48006 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48006 a!2862) index!646) (select (arr!48006 a!2862) j!93))) (= (select (arr!48006 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1484979 e!832559))

(declare-fun res!1009804 () Bool)

(assert (=> b!1484979 (=> (not res!1009804) (not e!832559))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99469 (_ BitVec 32)) Bool)

(assert (=> b!1484979 (= res!1009804 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49826 0))(
  ( (Unit!49827) )
))
(declare-fun lt!647904 () Unit!49826)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99469 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49826)

(assert (=> b!1484979 (= lt!647904 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1484980 () Bool)

(declare-fun res!1009803 () Bool)

(assert (=> b!1484980 (=> (not res!1009803) (not e!832558))))

(assert (=> b!1484980 (= res!1009803 e!832550)))

(declare-fun c!137111 () Bool)

(assert (=> b!1484980 (= c!137111 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1484981 () Bool)

(declare-fun res!1009799 () Bool)

(assert (=> b!1484981 (=> (not res!1009799) (not e!832559))))

(assert (=> b!1484981 (= res!1009799 (= (seekEntryOrOpen!0 (select (arr!48006 a!2862) j!93) a!2862 mask!2687) (Found!12269 j!93)))))

(declare-fun b!1484982 () Bool)

(declare-fun res!1009796 () Bool)

(assert (=> b!1484982 (=> (not res!1009796) (not e!832554))))

(assert (=> b!1484982 (= res!1009796 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1484983 () Bool)

(declare-fun e!832552 () Bool)

(declare-fun e!832556 () Bool)

(assert (=> b!1484983 (= e!832552 e!832556)))

(declare-fun res!1009811 () Bool)

(assert (=> b!1484983 (=> (not res!1009811) (not e!832556))))

(declare-fun lt!647907 () (_ BitVec 64))

(assert (=> b!1484983 (= res!1009811 (and (= index!646 intermediateAfterIndex!19) (= lt!647907 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1484984 () Bool)

(assert (=> b!1484984 (= e!832559 e!832552)))

(declare-fun res!1009810 () Bool)

(assert (=> b!1484984 (=> res!1009810 e!832552)))

(assert (=> b!1484984 (= res!1009810 (or (and (= (select (arr!48006 a!2862) index!646) lt!647907) (= (select (arr!48006 a!2862) index!646) (select (arr!48006 a!2862) j!93))) (= (select (arr!48006 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1484984 (= lt!647907 (select (store (arr!48006 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))))

(declare-fun b!1484985 () Bool)

(declare-fun res!1009802 () Bool)

(assert (=> b!1484985 (=> (not res!1009802) (not e!832554))))

(assert (=> b!1484985 (= res!1009802 (and (= (size!48557 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48557 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48557 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1484986 () Bool)

(assert (=> b!1484986 (= e!832556 (= (seekEntryOrOpen!0 lt!647906 lt!647905 mask!2687) (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!647906 lt!647905 mask!2687)))))

(assert (= (and start!126590 res!1009794) b!1484985))

(assert (= (and b!1484985 res!1009802) b!1484971))

(assert (= (and b!1484971 res!1009812) b!1484978))

(assert (= (and b!1484978 res!1009798) b!1484982))

(assert (= (and b!1484982 res!1009796) b!1484969))

(assert (= (and b!1484969 res!1009809) b!1484975))

(assert (= (and b!1484975 res!1009807) b!1484976))

(assert (= (and b!1484976 res!1009806) b!1484967))

(assert (= (and b!1484967 res!1009801) b!1484968))

(assert (= (and b!1484968 res!1009797) b!1484977))

(assert (= (and b!1484977 res!1009795) b!1484980))

(assert (= (and b!1484980 c!137111) b!1484972))

(assert (= (and b!1484980 (not c!137111)) b!1484974))

(assert (= (and b!1484980 res!1009803) b!1484973))

(assert (= (and b!1484973 res!1009808) b!1484979))

(assert (= (and b!1484979 res!1009804) b!1484981))

(assert (= (and b!1484981 res!1009799) b!1484966))

(assert (= (and b!1484966 res!1009800) b!1484984))

(assert (= (and b!1484984 (not res!1009810)) b!1484983))

(assert (= (and b!1484983 res!1009811) b!1484986))

(assert (= (and b!1484979 (not res!1009805)) b!1484970))

(declare-fun m!1370225 () Bool)

(assert (=> b!1484981 m!1370225))

(assert (=> b!1484981 m!1370225))

(declare-fun m!1370227 () Bool)

(assert (=> b!1484981 m!1370227))

(declare-fun m!1370229 () Bool)

(assert (=> b!1484974 m!1370229))

(declare-fun m!1370231 () Bool)

(assert (=> b!1484974 m!1370231))

(declare-fun m!1370233 () Bool)

(assert (=> b!1484971 m!1370233))

(assert (=> b!1484971 m!1370233))

(declare-fun m!1370235 () Bool)

(assert (=> b!1484971 m!1370235))

(declare-fun m!1370237 () Bool)

(assert (=> b!1484972 m!1370237))

(assert (=> b!1484978 m!1370225))

(assert (=> b!1484978 m!1370225))

(declare-fun m!1370239 () Bool)

(assert (=> b!1484978 m!1370239))

(declare-fun m!1370241 () Bool)

(assert (=> b!1484977 m!1370241))

(assert (=> b!1484977 m!1370241))

(declare-fun m!1370243 () Bool)

(assert (=> b!1484977 m!1370243))

(declare-fun m!1370245 () Bool)

(assert (=> b!1484977 m!1370245))

(declare-fun m!1370247 () Bool)

(assert (=> b!1484977 m!1370247))

(declare-fun m!1370249 () Bool)

(assert (=> b!1484969 m!1370249))

(assert (=> b!1484968 m!1370225))

(assert (=> b!1484968 m!1370225))

(declare-fun m!1370251 () Bool)

(assert (=> b!1484968 m!1370251))

(declare-fun m!1370253 () Bool)

(assert (=> b!1484984 m!1370253))

(assert (=> b!1484984 m!1370225))

(assert (=> b!1484984 m!1370245))

(declare-fun m!1370255 () Bool)

(assert (=> b!1484984 m!1370255))

(declare-fun m!1370257 () Bool)

(assert (=> b!1484982 m!1370257))

(declare-fun m!1370259 () Bool)

(assert (=> b!1484966 m!1370259))

(assert (=> b!1484966 m!1370225))

(declare-fun m!1370261 () Bool)

(assert (=> b!1484979 m!1370261))

(assert (=> b!1484979 m!1370245))

(assert (=> b!1484979 m!1370255))

(assert (=> b!1484979 m!1370253))

(declare-fun m!1370263 () Bool)

(assert (=> b!1484979 m!1370263))

(assert (=> b!1484979 m!1370225))

(assert (=> b!1484967 m!1370225))

(assert (=> b!1484967 m!1370225))

(declare-fun m!1370265 () Bool)

(assert (=> b!1484967 m!1370265))

(assert (=> b!1484967 m!1370265))

(assert (=> b!1484967 m!1370225))

(declare-fun m!1370267 () Bool)

(assert (=> b!1484967 m!1370267))

(assert (=> b!1484976 m!1370245))

(declare-fun m!1370269 () Bool)

(assert (=> b!1484976 m!1370269))

(declare-fun m!1370271 () Bool)

(assert (=> start!126590 m!1370271))

(declare-fun m!1370273 () Bool)

(assert (=> start!126590 m!1370273))

(declare-fun m!1370275 () Bool)

(assert (=> b!1484970 m!1370275))

(assert (=> b!1484986 m!1370231))

(assert (=> b!1484986 m!1370229))

(push 1)

