; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126454 () Bool)

(assert start!126454)

(declare-fun b!1482246 () Bool)

(declare-fun res!1007576 () Bool)

(declare-fun e!831228 () Bool)

(assert (=> b!1482246 (=> (not res!1007576) (not e!831228))))

(declare-datatypes ((array!99390 0))(
  ( (array!99391 (arr!47968 (Array (_ BitVec 32) (_ BitVec 64))) (size!48519 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99390)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1482246 (= res!1007576 (validKeyInArray!0 (select (arr!47968 a!2862) j!93)))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun b!1482247 () Bool)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun e!831224 () Bool)

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1482247 (= e!831224 (and (or (= (select (arr!47968 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47968 a!2862) intermediateBeforeIndex!19) (select (arr!47968 a!2862) j!93))) (or (and (= (select (arr!47968 a!2862) index!646) (select (store (arr!47968 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47968 a!2862) index!646) (select (arr!47968 a!2862) j!93))) (= (select (arr!47968 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= (select (store (arr!47968 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1482248 () Bool)

(declare-fun res!1007578 () Bool)

(assert (=> b!1482248 (=> (not res!1007578) (not e!831228))))

(assert (=> b!1482248 (= res!1007578 (validKeyInArray!0 (select (arr!47968 a!2862) i!1006)))))

(declare-fun b!1482249 () Bool)

(declare-fun e!831230 () Bool)

(assert (=> b!1482249 (= e!831228 e!831230)))

(declare-fun res!1007585 () Bool)

(assert (=> b!1482249 (=> (not res!1007585) (not e!831230))))

(assert (=> b!1482249 (= res!1007585 (= (select (store (arr!47968 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!646977 () array!99390)

(assert (=> b!1482249 (= lt!646977 (array!99391 (store (arr!47968 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48519 a!2862)))))

(declare-fun b!1482250 () Bool)

(declare-fun res!1007586 () Bool)

(assert (=> b!1482250 (=> (not res!1007586) (not e!831228))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1482250 (= res!1007586 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48519 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48519 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48519 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1482251 () Bool)

(declare-fun res!1007579 () Bool)

(assert (=> b!1482251 (=> (not res!1007579) (not e!831224))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12231 0))(
  ( (MissingZero!12231 (index!51315 (_ BitVec 32))) (Found!12231 (index!51316 (_ BitVec 32))) (Intermediate!12231 (undefined!13043 Bool) (index!51317 (_ BitVec 32)) (x!132901 (_ BitVec 32))) (Undefined!12231) (MissingVacant!12231 (index!51318 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99390 (_ BitVec 32)) SeekEntryResult!12231)

(assert (=> b!1482251 (= res!1007579 (= (seekEntryOrOpen!0 (select (arr!47968 a!2862) j!93) a!2862 mask!2687) (Found!12231 j!93)))))

(declare-fun b!1482252 () Bool)

(declare-fun res!1007589 () Bool)

(assert (=> b!1482252 (=> (not res!1007589) (not e!831228))))

(assert (=> b!1482252 (= res!1007589 (and (= (size!48519 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48519 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48519 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1482253 () Bool)

(declare-fun res!1007584 () Bool)

(assert (=> b!1482253 (=> (not res!1007584) (not e!831228))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99390 (_ BitVec 32)) Bool)

(assert (=> b!1482253 (= res!1007584 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1482254 () Bool)

(declare-fun e!831227 () Bool)

(assert (=> b!1482254 (= e!831227 (not true))))

(assert (=> b!1482254 e!831224))

(declare-fun res!1007588 () Bool)

(assert (=> b!1482254 (=> (not res!1007588) (not e!831224))))

(assert (=> b!1482254 (= res!1007588 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49750 0))(
  ( (Unit!49751) )
))
(declare-fun lt!646980 () Unit!49750)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99390 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49750)

(assert (=> b!1482254 (= lt!646980 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1482255 () Bool)

(declare-fun e!831226 () Bool)

(assert (=> b!1482255 (= e!831226 e!831227)))

(declare-fun res!1007587 () Bool)

(assert (=> b!1482255 (=> (not res!1007587) (not e!831227))))

(declare-fun lt!646981 () SeekEntryResult!12231)

(assert (=> b!1482255 (= res!1007587 (= lt!646981 (Intermediate!12231 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!646979 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99390 (_ BitVec 32)) SeekEntryResult!12231)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1482255 (= lt!646981 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!646979 mask!2687) lt!646979 lt!646977 mask!2687))))

(assert (=> b!1482255 (= lt!646979 (select (store (arr!47968 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun e!831225 () Bool)

(declare-fun b!1482256 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99390 (_ BitVec 32)) SeekEntryResult!12231)

(assert (=> b!1482256 (= e!831225 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!646979 lt!646977 mask!2687) (seekEntryOrOpen!0 lt!646979 lt!646977 mask!2687)))))

(declare-fun res!1007583 () Bool)

(assert (=> start!126454 (=> (not res!1007583) (not e!831228))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126454 (= res!1007583 (validMask!0 mask!2687))))

(assert (=> start!126454 e!831228))

(assert (=> start!126454 true))

(declare-fun array_inv!36913 (array!99390) Bool)

(assert (=> start!126454 (array_inv!36913 a!2862)))

(declare-fun b!1482257 () Bool)

(declare-fun res!1007575 () Bool)

(assert (=> b!1482257 (=> (not res!1007575) (not e!831227))))

(assert (=> b!1482257 (= res!1007575 e!831225)))

(declare-fun c!136859 () Bool)

(assert (=> b!1482257 (= c!136859 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1482258 () Bool)

(assert (=> b!1482258 (= e!831225 (= lt!646981 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!646979 lt!646977 mask!2687)))))

(declare-fun b!1482259 () Bool)

(declare-fun res!1007581 () Bool)

(assert (=> b!1482259 (=> (not res!1007581) (not e!831226))))

(declare-fun lt!646978 () SeekEntryResult!12231)

(assert (=> b!1482259 (= res!1007581 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47968 a!2862) j!93) a!2862 mask!2687) lt!646978))))

(declare-fun b!1482260 () Bool)

(declare-fun res!1007582 () Bool)

(assert (=> b!1482260 (=> (not res!1007582) (not e!831227))))

(assert (=> b!1482260 (= res!1007582 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1482261 () Bool)

(assert (=> b!1482261 (= e!831230 e!831226)))

(declare-fun res!1007580 () Bool)

(assert (=> b!1482261 (=> (not res!1007580) (not e!831226))))

(assert (=> b!1482261 (= res!1007580 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47968 a!2862) j!93) mask!2687) (select (arr!47968 a!2862) j!93) a!2862 mask!2687) lt!646978))))

(assert (=> b!1482261 (= lt!646978 (Intermediate!12231 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1482262 () Bool)

(declare-fun res!1007577 () Bool)

(assert (=> b!1482262 (=> (not res!1007577) (not e!831228))))

(declare-datatypes ((List!34649 0))(
  ( (Nil!34646) (Cons!34645 (h!36016 (_ BitVec 64)) (t!49350 List!34649)) )
))
(declare-fun arrayNoDuplicates!0 (array!99390 (_ BitVec 32) List!34649) Bool)

(assert (=> b!1482262 (= res!1007577 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34646))))

(assert (= (and start!126454 res!1007583) b!1482252))

(assert (= (and b!1482252 res!1007589) b!1482248))

(assert (= (and b!1482248 res!1007578) b!1482246))

(assert (= (and b!1482246 res!1007576) b!1482253))

(assert (= (and b!1482253 res!1007584) b!1482262))

(assert (= (and b!1482262 res!1007577) b!1482250))

(assert (= (and b!1482250 res!1007586) b!1482249))

(assert (= (and b!1482249 res!1007585) b!1482261))

(assert (= (and b!1482261 res!1007580) b!1482259))

(assert (= (and b!1482259 res!1007581) b!1482255))

(assert (= (and b!1482255 res!1007587) b!1482257))

(assert (= (and b!1482257 c!136859) b!1482258))

(assert (= (and b!1482257 (not c!136859)) b!1482256))

(assert (= (and b!1482257 res!1007575) b!1482260))

(assert (= (and b!1482260 res!1007582) b!1482254))

(assert (= (and b!1482254 res!1007588) b!1482251))

(assert (= (and b!1482251 res!1007579) b!1482247))

(declare-fun m!1368027 () Bool)

(assert (=> b!1482256 m!1368027))

(declare-fun m!1368029 () Bool)

(assert (=> b!1482256 m!1368029))

(declare-fun m!1368031 () Bool)

(assert (=> b!1482255 m!1368031))

(assert (=> b!1482255 m!1368031))

(declare-fun m!1368033 () Bool)

(assert (=> b!1482255 m!1368033))

(declare-fun m!1368035 () Bool)

(assert (=> b!1482255 m!1368035))

(declare-fun m!1368037 () Bool)

(assert (=> b!1482255 m!1368037))

(declare-fun m!1368039 () Bool)

(assert (=> b!1482246 m!1368039))

(assert (=> b!1482246 m!1368039))

(declare-fun m!1368041 () Bool)

(assert (=> b!1482246 m!1368041))

(declare-fun m!1368043 () Bool)

(assert (=> start!126454 m!1368043))

(declare-fun m!1368045 () Bool)

(assert (=> start!126454 m!1368045))

(declare-fun m!1368047 () Bool)

(assert (=> b!1482248 m!1368047))

(assert (=> b!1482248 m!1368047))

(declare-fun m!1368049 () Bool)

(assert (=> b!1482248 m!1368049))

(declare-fun m!1368051 () Bool)

(assert (=> b!1482258 m!1368051))

(assert (=> b!1482261 m!1368039))

(assert (=> b!1482261 m!1368039))

(declare-fun m!1368053 () Bool)

(assert (=> b!1482261 m!1368053))

(assert (=> b!1482261 m!1368053))

(assert (=> b!1482261 m!1368039))

(declare-fun m!1368055 () Bool)

(assert (=> b!1482261 m!1368055))

(declare-fun m!1368057 () Bool)

(assert (=> b!1482262 m!1368057))

(declare-fun m!1368059 () Bool)

(assert (=> b!1482253 m!1368059))

(declare-fun m!1368061 () Bool)

(assert (=> b!1482254 m!1368061))

(declare-fun m!1368063 () Bool)

(assert (=> b!1482254 m!1368063))

(assert (=> b!1482251 m!1368039))

(assert (=> b!1482251 m!1368039))

(declare-fun m!1368065 () Bool)

(assert (=> b!1482251 m!1368065))

(assert (=> b!1482249 m!1368035))

(declare-fun m!1368067 () Bool)

(assert (=> b!1482249 m!1368067))

(assert (=> b!1482259 m!1368039))

(assert (=> b!1482259 m!1368039))

(declare-fun m!1368069 () Bool)

(assert (=> b!1482259 m!1368069))

(assert (=> b!1482247 m!1368035))

(declare-fun m!1368071 () Bool)

(assert (=> b!1482247 m!1368071))

(declare-fun m!1368073 () Bool)

(assert (=> b!1482247 m!1368073))

(declare-fun m!1368075 () Bool)

(assert (=> b!1482247 m!1368075))

(assert (=> b!1482247 m!1368039))

(push 1)

