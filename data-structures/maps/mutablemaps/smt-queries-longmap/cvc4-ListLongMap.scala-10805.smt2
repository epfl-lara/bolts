; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126464 () Bool)

(assert start!126464)

(declare-fun b!1482509 () Bool)

(declare-fun res!1007821 () Bool)

(declare-fun e!831340 () Bool)

(assert (=> b!1482509 (=> (not res!1007821) (not e!831340))))

(declare-datatypes ((array!99400 0))(
  ( (array!99401 (arr!47973 (Array (_ BitVec 32) (_ BitVec 64))) (size!48524 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99400)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12236 0))(
  ( (MissingZero!12236 (index!51335 (_ BitVec 32))) (Found!12236 (index!51336 (_ BitVec 32))) (Intermediate!12236 (undefined!13048 Bool) (index!51337 (_ BitVec 32)) (x!132914 (_ BitVec 32))) (Undefined!12236) (MissingVacant!12236 (index!51338 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99400 (_ BitVec 32)) SeekEntryResult!12236)

(assert (=> b!1482509 (= res!1007821 (= (seekEntryOrOpen!0 (select (arr!47973 a!2862) j!93) a!2862 mask!2687) (Found!12236 j!93)))))

(declare-fun b!1482510 () Bool)

(declare-fun res!1007823 () Bool)

(declare-fun e!831343 () Bool)

(assert (=> b!1482510 (=> (not res!1007823) (not e!831343))))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1482510 (= res!1007823 (validKeyInArray!0 (select (arr!47973 a!2862) i!1006)))))

(declare-fun b!1482511 () Bool)

(declare-fun e!831341 () Bool)

(assert (=> b!1482511 (= e!831343 e!831341)))

(declare-fun res!1007817 () Bool)

(assert (=> b!1482511 (=> (not res!1007817) (not e!831341))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1482511 (= res!1007817 (= (select (store (arr!47973 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!647053 () array!99400)

(assert (=> b!1482511 (= lt!647053 (array!99401 (store (arr!47973 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48524 a!2862)))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun b!1482512 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1482512 (= e!831340 (and (or (= (select (arr!47973 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47973 a!2862) intermediateBeforeIndex!19) (select (arr!47973 a!2862) j!93))) (let ((bdg!54272 (select (store (arr!47973 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!47973 a!2862) index!646) bdg!54272) (= (select (arr!47973 a!2862) index!646) (select (arr!47973 a!2862) j!93))) (= (select (arr!47973 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!54272 #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!1482513 () Bool)

(declare-fun lt!647056 () (_ BitVec 64))

(declare-fun e!831342 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99400 (_ BitVec 32)) SeekEntryResult!12236)

(assert (=> b!1482513 (= e!831342 (= (seekEntryOrOpen!0 lt!647056 lt!647053 mask!2687) (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!647056 lt!647053 mask!2687)))))

(declare-fun b!1482515 () Bool)

(declare-fun res!1007811 () Bool)

(assert (=> b!1482515 (=> (not res!1007811) (not e!831343))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1482515 (= res!1007811 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48524 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48524 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48524 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1482516 () Bool)

(declare-fun e!831337 () Bool)

(assert (=> b!1482516 (= e!831341 e!831337)))

(declare-fun res!1007813 () Bool)

(assert (=> b!1482516 (=> (not res!1007813) (not e!831337))))

(declare-fun lt!647055 () SeekEntryResult!12236)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99400 (_ BitVec 32)) SeekEntryResult!12236)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1482516 (= res!1007813 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47973 a!2862) j!93) mask!2687) (select (arr!47973 a!2862) j!93) a!2862 mask!2687) lt!647055))))

(assert (=> b!1482516 (= lt!647055 (Intermediate!12236 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1482517 () Bool)

(declare-fun res!1007820 () Bool)

(assert (=> b!1482517 (=> (not res!1007820) (not e!831343))))

(assert (=> b!1482517 (= res!1007820 (and (= (size!48524 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48524 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48524 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1482518 () Bool)

(declare-fun e!831339 () Bool)

(assert (=> b!1482518 (= e!831337 e!831339)))

(declare-fun res!1007815 () Bool)

(assert (=> b!1482518 (=> (not res!1007815) (not e!831339))))

(declare-fun lt!647054 () SeekEntryResult!12236)

(assert (=> b!1482518 (= res!1007815 (= lt!647054 (Intermediate!12236 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1482518 (= lt!647054 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!647056 mask!2687) lt!647056 lt!647053 mask!2687))))

(assert (=> b!1482518 (= lt!647056 (select (store (arr!47973 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1482519 () Bool)

(declare-fun res!1007808 () Bool)

(assert (=> b!1482519 (=> (not res!1007808) (not e!831343))))

(declare-datatypes ((List!34654 0))(
  ( (Nil!34651) (Cons!34650 (h!36021 (_ BitVec 64)) (t!49355 List!34654)) )
))
(declare-fun arrayNoDuplicates!0 (array!99400 (_ BitVec 32) List!34654) Bool)

(assert (=> b!1482519 (= res!1007808 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34651))))

(declare-fun b!1482520 () Bool)

(declare-fun res!1007810 () Bool)

(assert (=> b!1482520 (=> (not res!1007810) (not e!831339))))

(assert (=> b!1482520 (= res!1007810 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun e!831338 () Bool)

(declare-fun b!1482521 () Bool)

(assert (=> b!1482521 (= e!831338 (= lt!647054 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!647056 lt!647053 mask!2687)))))

(declare-fun b!1482522 () Bool)

(declare-fun res!1007819 () Bool)

(assert (=> b!1482522 (=> (not res!1007819) (not e!831339))))

(assert (=> b!1482522 (= res!1007819 e!831338)))

(declare-fun c!136874 () Bool)

(assert (=> b!1482522 (= c!136874 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1482523 () Bool)

(assert (=> b!1482523 (= e!831339 (not e!831342))))

(declare-fun res!1007816 () Bool)

(assert (=> b!1482523 (=> res!1007816 e!831342)))

(assert (=> b!1482523 (= res!1007816 (or (and (= (select (arr!47973 a!2862) index!646) (select (store (arr!47973 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47973 a!2862) index!646) (select (arr!47973 a!2862) j!93))) (= (select (arr!47973 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1482523 e!831340))

(declare-fun res!1007809 () Bool)

(assert (=> b!1482523 (=> (not res!1007809) (not e!831340))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99400 (_ BitVec 32)) Bool)

(assert (=> b!1482523 (= res!1007809 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49760 0))(
  ( (Unit!49761) )
))
(declare-fun lt!647052 () Unit!49760)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99400 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49760)

(assert (=> b!1482523 (= lt!647052 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1482524 () Bool)

(declare-fun res!1007822 () Bool)

(assert (=> b!1482524 (=> (not res!1007822) (not e!831337))))

(assert (=> b!1482524 (= res!1007822 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47973 a!2862) j!93) a!2862 mask!2687) lt!647055))))

(declare-fun b!1482514 () Bool)

(declare-fun res!1007812 () Bool)

(assert (=> b!1482514 (=> (not res!1007812) (not e!831343))))

(assert (=> b!1482514 (= res!1007812 (validKeyInArray!0 (select (arr!47973 a!2862) j!93)))))

(declare-fun res!1007818 () Bool)

(assert (=> start!126464 (=> (not res!1007818) (not e!831343))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126464 (= res!1007818 (validMask!0 mask!2687))))

(assert (=> start!126464 e!831343))

(assert (=> start!126464 true))

(declare-fun array_inv!36918 (array!99400) Bool)

(assert (=> start!126464 (array_inv!36918 a!2862)))

(declare-fun b!1482525 () Bool)

(assert (=> b!1482525 (= e!831338 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!647056 lt!647053 mask!2687) (seekEntryOrOpen!0 lt!647056 lt!647053 mask!2687)))))

(declare-fun b!1482526 () Bool)

(declare-fun res!1007814 () Bool)

(assert (=> b!1482526 (=> (not res!1007814) (not e!831343))))

(assert (=> b!1482526 (= res!1007814 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(assert (= (and start!126464 res!1007818) b!1482517))

(assert (= (and b!1482517 res!1007820) b!1482510))

(assert (= (and b!1482510 res!1007823) b!1482514))

(assert (= (and b!1482514 res!1007812) b!1482526))

(assert (= (and b!1482526 res!1007814) b!1482519))

(assert (= (and b!1482519 res!1007808) b!1482515))

(assert (= (and b!1482515 res!1007811) b!1482511))

(assert (= (and b!1482511 res!1007817) b!1482516))

(assert (= (and b!1482516 res!1007813) b!1482524))

(assert (= (and b!1482524 res!1007822) b!1482518))

(assert (= (and b!1482518 res!1007815) b!1482522))

(assert (= (and b!1482522 c!136874) b!1482521))

(assert (= (and b!1482522 (not c!136874)) b!1482525))

(assert (= (and b!1482522 res!1007819) b!1482520))

(assert (= (and b!1482520 res!1007810) b!1482523))

(assert (= (and b!1482523 res!1007809) b!1482509))

(assert (= (and b!1482509 res!1007821) b!1482512))

(assert (= (and b!1482523 (not res!1007816)) b!1482513))

(declare-fun m!1368277 () Bool)

(assert (=> b!1482525 m!1368277))

(declare-fun m!1368279 () Bool)

(assert (=> b!1482525 m!1368279))

(declare-fun m!1368281 () Bool)

(assert (=> b!1482516 m!1368281))

(assert (=> b!1482516 m!1368281))

(declare-fun m!1368283 () Bool)

(assert (=> b!1482516 m!1368283))

(assert (=> b!1482516 m!1368283))

(assert (=> b!1482516 m!1368281))

(declare-fun m!1368285 () Bool)

(assert (=> b!1482516 m!1368285))

(assert (=> b!1482509 m!1368281))

(assert (=> b!1482509 m!1368281))

(declare-fun m!1368287 () Bool)

(assert (=> b!1482509 m!1368287))

(declare-fun m!1368289 () Bool)

(assert (=> b!1482510 m!1368289))

(assert (=> b!1482510 m!1368289))

(declare-fun m!1368291 () Bool)

(assert (=> b!1482510 m!1368291))

(declare-fun m!1368293 () Bool)

(assert (=> b!1482526 m!1368293))

(assert (=> b!1482514 m!1368281))

(assert (=> b!1482514 m!1368281))

(declare-fun m!1368295 () Bool)

(assert (=> b!1482514 m!1368295))

(declare-fun m!1368297 () Bool)

(assert (=> b!1482519 m!1368297))

(assert (=> b!1482513 m!1368279))

(assert (=> b!1482513 m!1368277))

(assert (=> b!1482524 m!1368281))

(assert (=> b!1482524 m!1368281))

(declare-fun m!1368299 () Bool)

(assert (=> b!1482524 m!1368299))

(declare-fun m!1368301 () Bool)

(assert (=> b!1482521 m!1368301))

(declare-fun m!1368303 () Bool)

(assert (=> b!1482512 m!1368303))

(declare-fun m!1368305 () Bool)

(assert (=> b!1482512 m!1368305))

(declare-fun m!1368307 () Bool)

(assert (=> b!1482512 m!1368307))

(declare-fun m!1368309 () Bool)

(assert (=> b!1482512 m!1368309))

(assert (=> b!1482512 m!1368281))

(declare-fun m!1368311 () Bool)

(assert (=> start!126464 m!1368311))

(declare-fun m!1368313 () Bool)

(assert (=> start!126464 m!1368313))

(declare-fun m!1368315 () Bool)

(assert (=> b!1482518 m!1368315))

(assert (=> b!1482518 m!1368315))

(declare-fun m!1368317 () Bool)

(assert (=> b!1482518 m!1368317))

(assert (=> b!1482518 m!1368303))

(declare-fun m!1368319 () Bool)

(assert (=> b!1482518 m!1368319))

(declare-fun m!1368321 () Bool)

(assert (=> b!1482523 m!1368321))

(assert (=> b!1482523 m!1368303))

(assert (=> b!1482523 m!1368307))

(assert (=> b!1482523 m!1368309))

(declare-fun m!1368323 () Bool)

(assert (=> b!1482523 m!1368323))

(assert (=> b!1482523 m!1368281))

(assert (=> b!1482511 m!1368303))

(declare-fun m!1368325 () Bool)

(assert (=> b!1482511 m!1368325))

(push 1)

(assert (not b!1482516))

(assert (not start!126464))

(assert (not b!1482514))

(assert (not b!1482524))

(assert (not b!1482509))

(assert (not b!1482521))

(assert (not b!1482526))

(assert (not b!1482523))

(assert (not b!1482518))

(assert (not b!1482510))

(assert (not b!1482519))

(assert (not b!1482513))

(assert (not b!1482525))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1482625 () Bool)

(declare-fun e!831406 () Bool)

(declare-fun e!831408 () Bool)

(assert (=> b!1482625 (= e!831406 e!831408)))

(declare-fun lt!647099 () (_ BitVec 64))

(assert (=> b!1482625 (= lt!647099 (select (arr!47973 a!2862) #b00000000000000000000000000000000))))

(declare-fun lt!647100 () Unit!49760)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!99400 (_ BitVec 64) (_ BitVec 32)) Unit!49760)

(assert (=> b!1482625 (= lt!647100 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2862 lt!647099 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!99400 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1482625 (arrayContainsKey!0 a!2862 lt!647099 #b00000000000000000000000000000000)))

(declare-fun lt!647101 () Unit!49760)

(assert (=> b!1482625 (= lt!647101 lt!647100)))

(declare-fun res!1007860 () Bool)

(assert (=> b!1482625 (= res!1007860 (= (seekEntryOrOpen!0 (select (arr!47973 a!2862) #b00000000000000000000000000000000) a!2862 mask!2687) (Found!12236 #b00000000000000000000000000000000)))))

(assert (=> b!1482625 (=> (not res!1007860) (not e!831408))))

(declare-fun b!1482626 () Bool)

(declare-fun call!67860 () Bool)

(assert (=> b!1482626 (= e!831408 call!67860)))

(declare-fun b!1482627 () Bool)

(declare-fun e!831407 () Bool)

(assert (=> b!1482627 (= e!831407 e!831406)))

(declare-fun c!136907 () Bool)

(assert (=> b!1482627 (= c!136907 (validKeyInArray!0 (select (arr!47973 a!2862) #b00000000000000000000000000000000)))))

(declare-fun bm!67857 () Bool)

(assert (=> bm!67857 (= call!67860 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2862 mask!2687))))

(declare-fun b!1482628 () Bool)

(assert (=> b!1482628 (= e!831406 call!67860)))

(declare-fun d!156235 () Bool)

(declare-fun res!1007859 () Bool)

(assert (=> d!156235 (=> res!1007859 e!831407)))

(assert (=> d!156235 (= res!1007859 (bvsge #b00000000000000000000000000000000 (size!48524 a!2862)))))

(assert (=> d!156235 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687) e!831407)))

(assert (= (and d!156235 (not res!1007859)) b!1482627))

(assert (= (and b!1482627 c!136907) b!1482625))

(assert (= (and b!1482627 (not c!136907)) b!1482628))

(assert (= (and b!1482625 res!1007860) b!1482626))

(assert (= (or b!1482626 b!1482628) bm!67857))

(declare-fun m!1368373 () Bool)

(assert (=> b!1482625 m!1368373))

(declare-fun m!1368377 () Bool)

(assert (=> b!1482625 m!1368377))

(declare-fun m!1368379 () Bool)

(assert (=> b!1482625 m!1368379))

(assert (=> b!1482625 m!1368373))

(declare-fun m!1368383 () Bool)

(assert (=> b!1482625 m!1368383))

(assert (=> b!1482627 m!1368373))

(assert (=> b!1482627 m!1368373))

(declare-fun m!1368385 () Bool)

(assert (=> b!1482627 m!1368385))

(declare-fun m!1368387 () Bool)

(assert (=> bm!67857 m!1368387))

(assert (=> b!1482526 d!156235))

(declare-fun b!1482677 () Bool)

(declare-fun e!831435 () SeekEntryResult!12236)

(declare-fun e!831433 () SeekEntryResult!12236)

(assert (=> b!1482677 (= e!831435 e!831433)))

(declare-fun c!136934 () Bool)

(declare-fun lt!647122 () (_ BitVec 64))

(assert (=> b!1482677 (= c!136934 (= lt!647122 lt!647056))))

(declare-fun e!831434 () SeekEntryResult!12236)

(declare-fun b!1482678 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1482678 (= e!831434 (seekKeyOrZeroReturnVacant!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) intermediateAfterIndex!19 lt!647056 lt!647053 mask!2687))))

(declare-fun b!1482679 () Bool)

(assert (=> b!1482679 (= e!831434 (MissingVacant!12236 intermediateAfterIndex!19))))

(declare-fun d!156247 () Bool)

(declare-fun lt!647121 () SeekEntryResult!12236)

(assert (=> d!156247 (and (or (is-Undefined!12236 lt!647121) (not (is-Found!12236 lt!647121)) (and (bvsge (index!51336 lt!647121) #b00000000000000000000000000000000) (bvslt (index!51336 lt!647121) (size!48524 lt!647053)))) (or (is-Undefined!12236 lt!647121) (is-Found!12236 lt!647121) (not (is-MissingVacant!12236 lt!647121)) (not (= (index!51338 lt!647121) intermediateAfterIndex!19)) (and (bvsge (index!51338 lt!647121) #b00000000000000000000000000000000) (bvslt (index!51338 lt!647121) (size!48524 lt!647053)))) (or (is-Undefined!12236 lt!647121) (ite (is-Found!12236 lt!647121) (= (select (arr!47973 lt!647053) (index!51336 lt!647121)) lt!647056) (and (is-MissingVacant!12236 lt!647121) (= (index!51338 lt!647121) intermediateAfterIndex!19) (= (select (arr!47973 lt!647053) (index!51338 lt!647121)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!156247 (= lt!647121 e!831435)))

(declare-fun c!136933 () Bool)

(assert (=> d!156247 (= c!136933 (bvsge x!665 #b01111111111111111111111111111110))))

(assert (=> d!156247 (= lt!647122 (select (arr!47973 lt!647053) index!646))))

(assert (=> d!156247 (validMask!0 mask!2687)))

(assert (=> d!156247 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!647056 lt!647053 mask!2687) lt!647121)))

(declare-fun b!1482680 () Bool)

(assert (=> b!1482680 (= e!831435 Undefined!12236)))

(declare-fun b!1482681 () Bool)

(declare-fun c!136932 () Bool)

(assert (=> b!1482681 (= c!136932 (= lt!647122 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1482681 (= e!831433 e!831434)))

(declare-fun b!1482682 () Bool)

(assert (=> b!1482682 (= e!831433 (Found!12236 index!646))))

(assert (= (and d!156247 c!136933) b!1482680))

(assert (= (and d!156247 (not c!136933)) b!1482677))

(assert (= (and b!1482677 c!136934) b!1482682))

(assert (= (and b!1482677 (not c!136934)) b!1482681))

(assert (= (and b!1482681 c!136932) b!1482679))

(assert (= (and b!1482681 (not c!136932)) b!1482678))

(declare-fun m!1368405 () Bool)

(assert (=> b!1482678 m!1368405))

(assert (=> b!1482678 m!1368405))

(declare-fun m!1368407 () Bool)

(assert (=> b!1482678 m!1368407))

(declare-fun m!1368409 () Bool)

(assert (=> d!156247 m!1368409))

(declare-fun m!1368411 () Bool)

(assert (=> d!156247 m!1368411))

(declare-fun m!1368413 () Bool)

(assert (=> d!156247 m!1368413))

(assert (=> d!156247 m!1368311))

(assert (=> b!1482525 d!156247))

(declare-fun b!1482733 () Bool)

(declare-fun e!831464 () SeekEntryResult!12236)

(declare-fun lt!647147 () SeekEntryResult!12236)

(assert (=> b!1482733 (= e!831464 (Found!12236 (index!51337 lt!647147)))))

(declare-fun b!1482734 () Bool)

(declare-fun c!136957 () Bool)

(declare-fun lt!647146 () (_ BitVec 64))

(assert (=> b!1482734 (= c!136957 (= lt!647146 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!831462 () SeekEntryResult!12236)

(assert (=> b!1482734 (= e!831464 e!831462)))

(declare-fun b!1482735 () Bool)

(assert (=> b!1482735 (= e!831462 (MissingZero!12236 (index!51337 lt!647147)))))

(declare-fun b!1482736 () Bool)

(declare-fun e!831463 () SeekEntryResult!12236)

(assert (=> b!1482736 (= e!831463 e!831464)))

(assert (=> b!1482736 (= lt!647146 (select (arr!47973 lt!647053) (index!51337 lt!647147)))))

(declare-fun c!136959 () Bool)

(assert (=> b!1482736 (= c!136959 (= lt!647146 lt!647056))))

(declare-fun b!1482737 () Bool)

(assert (=> b!1482737 (= e!831462 (seekKeyOrZeroReturnVacant!0 (x!132914 lt!647147) (index!51337 lt!647147) (index!51337 lt!647147) lt!647056 lt!647053 mask!2687))))

(declare-fun b!1482732 () Bool)

(assert (=> b!1482732 (= e!831463 Undefined!12236)))

(declare-fun d!156255 () Bool)

(declare-fun lt!647148 () SeekEntryResult!12236)

(assert (=> d!156255 (and (or (is-Undefined!12236 lt!647148) (not (is-Found!12236 lt!647148)) (and (bvsge (index!51336 lt!647148) #b00000000000000000000000000000000) (bvslt (index!51336 lt!647148) (size!48524 lt!647053)))) (or (is-Undefined!12236 lt!647148) (is-Found!12236 lt!647148) (not (is-MissingZero!12236 lt!647148)) (and (bvsge (index!51335 lt!647148) #b00000000000000000000000000000000) (bvslt (index!51335 lt!647148) (size!48524 lt!647053)))) (or (is-Undefined!12236 lt!647148) (is-Found!12236 lt!647148) (is-MissingZero!12236 lt!647148) (not (is-MissingVacant!12236 lt!647148)) (and (bvsge (index!51338 lt!647148) #b00000000000000000000000000000000) (bvslt (index!51338 lt!647148) (size!48524 lt!647053)))) (or (is-Undefined!12236 lt!647148) (ite (is-Found!12236 lt!647148) (= (select (arr!47973 lt!647053) (index!51336 lt!647148)) lt!647056) (ite (is-MissingZero!12236 lt!647148) (= (select (arr!47973 lt!647053) (index!51335 lt!647148)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!12236 lt!647148) (= (select (arr!47973 lt!647053) (index!51338 lt!647148)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!156255 (= lt!647148 e!831463)))

(declare-fun c!136958 () Bool)

(assert (=> d!156255 (= c!136958 (and (is-Intermediate!12236 lt!647147) (undefined!13048 lt!647147)))))

(assert (=> d!156255 (= lt!647147 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!647056 mask!2687) lt!647056 lt!647053 mask!2687))))

(assert (=> d!156255 (validMask!0 mask!2687)))

(assert (=> d!156255 (= (seekEntryOrOpen!0 lt!647056 lt!647053 mask!2687) lt!647148)))

(assert (= (and d!156255 c!136958) b!1482732))

(assert (= (and d!156255 (not c!136958)) b!1482736))

(assert (= (and b!1482736 c!136959) b!1482733))

(assert (= (and b!1482736 (not c!136959)) b!1482734))

(assert (= (and b!1482734 c!136957) b!1482735))

(assert (= (and b!1482734 (not c!136957)) b!1482737))

(declare-fun m!1368447 () Bool)

(assert (=> b!1482736 m!1368447))

(declare-fun m!1368449 () Bool)

(assert (=> b!1482737 m!1368449))

(assert (=> d!156255 m!1368315))

(declare-fun m!1368451 () Bool)

(assert (=> d!156255 m!1368451))

(declare-fun m!1368453 () Bool)

(assert (=> d!156255 m!1368453))

(assert (=> d!156255 m!1368315))

(assert (=> d!156255 m!1368317))

(assert (=> d!156255 m!1368311))

(declare-fun m!1368455 () Bool)

(assert (=> d!156255 m!1368455))

(assert (=> b!1482525 d!156255))

(declare-fun b!1482800 () Bool)

(declare-fun e!831503 () SeekEntryResult!12236)

(declare-fun e!831505 () SeekEntryResult!12236)

(assert (=> b!1482800 (= e!831503 e!831505)))

(declare-fun c!136981 () Bool)

(declare-fun lt!647167 () (_ BitVec 64))

(assert (=> b!1482800 (= c!136981 (or (= lt!647167 (select (arr!47973 a!2862) j!93)) (= (bvadd lt!647167 lt!647167) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1482801 () Bool)

(declare-fun e!831502 () Bool)

(declare-fun lt!647168 () SeekEntryResult!12236)

(assert (=> b!1482801 (= e!831502 (bvsge (x!132914 lt!647168) #b01111111111111111111111111111110))))

(declare-fun b!1482802 () Bool)

(assert (=> b!1482802 (= e!831505 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!47973 a!2862) j!93) mask!2687) #b00000000000000000000000000000000 mask!2687) (select (arr!47973 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1482803 () Bool)

(declare-fun e!831504 () Bool)

(assert (=> b!1482803 (= e!831502 e!831504)))

(declare-fun res!1007888 () Bool)

(assert (=> b!1482803 (= res!1007888 (and (is-Intermediate!12236 lt!647168) (not (undefined!13048 lt!647168)) (bvslt (x!132914 lt!647168) #b01111111111111111111111111111110) (bvsge (x!132914 lt!647168) #b00000000000000000000000000000000) (bvsge (x!132914 lt!647168) #b00000000000000000000000000000000)))))

(assert (=> b!1482803 (=> (not res!1007888) (not e!831504))))

(declare-fun d!156269 () Bool)

(assert (=> d!156269 e!831502))

(declare-fun c!136982 () Bool)

(assert (=> d!156269 (= c!136982 (and (is-Intermediate!12236 lt!647168) (undefined!13048 lt!647168)))))

(assert (=> d!156269 (= lt!647168 e!831503)))

(declare-fun c!136980 () Bool)

(assert (=> d!156269 (= c!136980 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!156269 (= lt!647167 (select (arr!47973 a!2862) (toIndex!0 (select (arr!47973 a!2862) j!93) mask!2687)))))

(assert (=> d!156269 (validMask!0 mask!2687)))

(assert (=> d!156269 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47973 a!2862) j!93) mask!2687) (select (arr!47973 a!2862) j!93) a!2862 mask!2687) lt!647168)))

(declare-fun b!1482804 () Bool)

(assert (=> b!1482804 (and (bvsge (index!51337 lt!647168) #b00000000000000000000000000000000) (bvslt (index!51337 lt!647168) (size!48524 a!2862)))))

(declare-fun e!831501 () Bool)

(assert (=> b!1482804 (= e!831501 (= (select (arr!47973 a!2862) (index!51337 lt!647168)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1482805 () Bool)

(assert (=> b!1482805 (= e!831503 (Intermediate!12236 true (toIndex!0 (select (arr!47973 a!2862) j!93) mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1482806 () Bool)

(assert (=> b!1482806 (and (bvsge (index!51337 lt!647168) #b00000000000000000000000000000000) (bvslt (index!51337 lt!647168) (size!48524 a!2862)))))

(declare-fun res!1007890 () Bool)

(assert (=> b!1482806 (= res!1007890 (= (select (arr!47973 a!2862) (index!51337 lt!647168)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1482806 (=> res!1007890 e!831501)))

(declare-fun b!1482807 () Bool)

(assert (=> b!1482807 (and (bvsge (index!51337 lt!647168) #b00000000000000000000000000000000) (bvslt (index!51337 lt!647168) (size!48524 a!2862)))))

(declare-fun res!1007889 () Bool)

(assert (=> b!1482807 (= res!1007889 (= (select (arr!47973 a!2862) (index!51337 lt!647168)) (select (arr!47973 a!2862) j!93)))))

(assert (=> b!1482807 (=> res!1007889 e!831501)))

(assert (=> b!1482807 (= e!831504 e!831501)))

(declare-fun b!1482808 () Bool)

(assert (=> b!1482808 (= e!831505 (Intermediate!12236 false (toIndex!0 (select (arr!47973 a!2862) j!93) mask!2687) #b00000000000000000000000000000000))))

(assert (= (and d!156269 c!136980) b!1482805))

(assert (= (and d!156269 (not c!136980)) b!1482800))

(assert (= (and b!1482800 c!136981) b!1482808))

(assert (= (and b!1482800 (not c!136981)) b!1482802))

(assert (= (and d!156269 c!136982) b!1482801))

(assert (= (and d!156269 (not c!136982)) b!1482803))

(assert (= (and b!1482803 res!1007888) b!1482807))

(assert (= (and b!1482807 (not res!1007889)) b!1482806))

(assert (= (and b!1482806 (not res!1007890)) b!1482804))

(declare-fun m!1368465 () Bool)

(assert (=> b!1482806 m!1368465))

(assert (=> b!1482802 m!1368283))

(declare-fun m!1368467 () Bool)

(assert (=> b!1482802 m!1368467))

(assert (=> b!1482802 m!1368467))

(assert (=> b!1482802 m!1368281))

(declare-fun m!1368469 () Bool)

(assert (=> b!1482802 m!1368469))

(assert (=> b!1482807 m!1368465))

(assert (=> d!156269 m!1368283))

(declare-fun m!1368471 () Bool)

(assert (=> d!156269 m!1368471))

(assert (=> d!156269 m!1368311))

(assert (=> b!1482804 m!1368465))

(assert (=> b!1482516 d!156269))

(declare-fun d!156275 () Bool)

(declare-fun lt!647180 () (_ BitVec 32))

(declare-fun lt!647179 () (_ BitVec 32))

(assert (=> d!156275 (= lt!647180 (bvmul (bvxor lt!647179 (bvlshr lt!647179 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!156275 (= lt!647179 ((_ extract 31 0) (bvand (bvxor (select (arr!47973 a!2862) j!93) (bvlshr (select (arr!47973 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!156275 (and (bvsge mask!2687 #b00000000000000000000000000000000) (let ((res!1007893 (let ((h!36023 ((_ extract 31 0) (bvand (bvxor (select (arr!47973 a!2862) j!93) (bvlshr (select (arr!47973 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!132922 (bvmul (bvxor h!36023 (bvlshr h!36023 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!132922 (bvlshr x!132922 #b00000000000000000000000000001101)) mask!2687))))) (and (bvslt res!1007893 (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge res!1007893 #b00000000000000000000000000000000))))))

(assert (=> d!156275 (= (toIndex!0 (select (arr!47973 a!2862) j!93) mask!2687) (bvand (bvxor lt!647180 (bvlshr lt!647180 #b00000000000000000000000000001101)) mask!2687))))

(assert (=> b!1482516 d!156275))

(declare-fun b!1482813 () Bool)

(declare-fun e!831509 () Bool)

(declare-fun e!831511 () Bool)

(assert (=> b!1482813 (= e!831509 e!831511)))

(declare-fun lt!647181 () (_ BitVec 64))

(assert (=> b!1482813 (= lt!647181 (select (arr!47973 a!2862) j!93))))

(declare-fun lt!647182 () Unit!49760)

(assert (=> b!1482813 (= lt!647182 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2862 lt!647181 j!93))))

(assert (=> b!1482813 (arrayContainsKey!0 a!2862 lt!647181 #b00000000000000000000000000000000)))

(declare-fun lt!647183 () Unit!49760)

(assert (=> b!1482813 (= lt!647183 lt!647182)))

(declare-fun res!1007895 () Bool)

(assert (=> b!1482813 (= res!1007895 (= (seekEntryOrOpen!0 (select (arr!47973 a!2862) j!93) a!2862 mask!2687) (Found!12236 j!93)))))

(assert (=> b!1482813 (=> (not res!1007895) (not e!831511))))

(declare-fun b!1482814 () Bool)

(declare-fun call!67865 () Bool)

(assert (=> b!1482814 (= e!831511 call!67865)))

(declare-fun b!1482815 () Bool)

(declare-fun e!831510 () Bool)

(assert (=> b!1482815 (= e!831510 e!831509)))

(declare-fun c!136984 () Bool)

(assert (=> b!1482815 (= c!136984 (validKeyInArray!0 (select (arr!47973 a!2862) j!93)))))

(declare-fun bm!67862 () Bool)

(assert (=> bm!67862 (= call!67865 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!93 #b00000000000000000000000000000001) a!2862 mask!2687))))

(declare-fun b!1482816 () Bool)

(assert (=> b!1482816 (= e!831509 call!67865)))

(declare-fun d!156281 () Bool)

(declare-fun res!1007894 () Bool)

(assert (=> d!156281 (=> res!1007894 e!831510)))

(assert (=> d!156281 (= res!1007894 (bvsge j!93 (size!48524 a!2862)))))

(assert (=> d!156281 (= (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687) e!831510)))

(assert (= (and d!156281 (not res!1007894)) b!1482815))

(assert (= (and b!1482815 c!136984) b!1482813))

(assert (= (and b!1482815 (not c!136984)) b!1482816))

(assert (= (and b!1482813 res!1007895) b!1482814))

(assert (= (or b!1482814 b!1482816) bm!67862))

(assert (=> b!1482813 m!1368281))

(declare-fun m!1368481 () Bool)

(assert (=> b!1482813 m!1368481))

(declare-fun m!1368483 () Bool)

(assert (=> b!1482813 m!1368483))

(assert (=> b!1482813 m!1368281))

(assert (=> b!1482813 m!1368287))

(assert (=> b!1482815 m!1368281))

(assert (=> b!1482815 m!1368281))

(assert (=> b!1482815 m!1368295))

(declare-fun m!1368485 () Bool)

(assert (=> bm!67862 m!1368485))

(assert (=> b!1482523 d!156281))

(declare-fun d!156285 () Bool)

(assert (=> d!156285 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-fun lt!647189 () Unit!49760)

(declare-fun choose!38 (array!99400 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49760)

(assert (=> d!156285 (= lt!647189 (choose!38 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(assert (=> d!156285 (validMask!0 mask!2687)))

(assert (=> d!156285 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93) lt!647189)))

(declare-fun bs!42706 () Bool)

(assert (= bs!42706 d!156285))

(assert (=> bs!42706 m!1368323))

(declare-fun m!1368499 () Bool)

(assert (=> bs!42706 m!1368499))

(assert (=> bs!42706 m!1368311))

(assert (=> b!1482523 d!156285))

(declare-fun d!156289 () Bool)

(assert (=> d!156289 (= (validKeyInArray!0 (select (arr!47973 a!2862) j!93)) (and (not (= (select (arr!47973 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47973 a!2862) j!93) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1482514 d!156289))

(declare-fun b!1482831 () Bool)

(declare-fun e!831525 () SeekEntryResult!12236)

(declare-fun e!831527 () SeekEntryResult!12236)

(assert (=> b!1482831 (= e!831525 e!831527)))

(declare-fun lt!647190 () (_ BitVec 64))

(declare-fun c!136989 () Bool)

(assert (=> b!1482831 (= c!136989 (or (= lt!647190 (select (arr!47973 a!2862) j!93)) (= (bvadd lt!647190 lt!647190) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1482832 () Bool)

(declare-fun e!831524 () Bool)

(declare-fun lt!647191 () SeekEntryResult!12236)

(assert (=> b!1482832 (= e!831524 (bvsge (x!132914 lt!647191) #b01111111111111111111111111111110))))

(declare-fun b!1482833 () Bool)

(assert (=> b!1482833 (= e!831527 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) (select (arr!47973 a!2862) j!93) a!2862 mask!2687))))

