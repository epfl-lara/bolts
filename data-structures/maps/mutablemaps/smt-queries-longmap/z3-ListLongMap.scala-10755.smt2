; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125832 () Bool)

(assert start!125832)

(declare-fun b!1472229 () Bool)

(declare-fun e!826283 () Bool)

(declare-fun e!826285 () Bool)

(assert (=> b!1472229 (= e!826283 e!826285)))

(declare-fun res!1000024 () Bool)

(assert (=> b!1472229 (=> (not res!1000024) (not e!826285))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12085 0))(
  ( (MissingZero!12085 (index!50731 (_ BitVec 32))) (Found!12085 (index!50732 (_ BitVec 32))) (Intermediate!12085 (undefined!12897 Bool) (index!50733 (_ BitVec 32)) (x!132315 (_ BitVec 32))) (Undefined!12085) (MissingVacant!12085 (index!50734 (_ BitVec 32))) )
))
(declare-fun lt!643474 () SeekEntryResult!12085)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1472229 (= res!1000024 (= lt!643474 (Intermediate!12085 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-datatypes ((array!99083 0))(
  ( (array!99084 (arr!47822 (Array (_ BitVec 32) (_ BitVec 64))) (size!48373 (_ BitVec 32))) )
))
(declare-fun lt!643477 () array!99083)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun lt!643473 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99083 (_ BitVec 32)) SeekEntryResult!12085)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1472229 (= lt!643474 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!643473 mask!2687) lt!643473 lt!643477 mask!2687))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun a!2862 () array!99083)

(assert (=> b!1472229 (= lt!643473 (select (store (arr!47822 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun res!1000017 () Bool)

(declare-fun e!826286 () Bool)

(assert (=> start!125832 (=> (not res!1000017) (not e!826286))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125832 (= res!1000017 (validMask!0 mask!2687))))

(assert (=> start!125832 e!826286))

(assert (=> start!125832 true))

(declare-fun array_inv!36767 (array!99083) Bool)

(assert (=> start!125832 (array_inv!36767 a!2862)))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun b!1472230 () Bool)

(declare-fun e!826284 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1472230 (= e!826284 (= lt!643474 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!643473 lt!643477 mask!2687)))))

(declare-fun b!1472231 () Bool)

(declare-fun res!1000028 () Bool)

(assert (=> b!1472231 (=> (not res!1000028) (not e!826285))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1472231 (= res!1000028 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1472232 () Bool)

(declare-fun res!1000020 () Bool)

(assert (=> b!1472232 (=> (not res!1000020) (not e!826286))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99083 (_ BitVec 32)) Bool)

(assert (=> b!1472232 (= res!1000020 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1472233 () Bool)

(declare-fun res!1000023 () Bool)

(assert (=> b!1472233 (=> (not res!1000023) (not e!826283))))

(declare-fun lt!643476 () SeekEntryResult!12085)

(assert (=> b!1472233 (= res!1000023 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47822 a!2862) j!93) a!2862 mask!2687) lt!643476))))

(declare-fun b!1472234 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99083 (_ BitVec 32)) SeekEntryResult!12085)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99083 (_ BitVec 32)) SeekEntryResult!12085)

(assert (=> b!1472234 (= e!826284 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!643473 lt!643477 mask!2687) (seekEntryOrOpen!0 lt!643473 lt!643477 mask!2687)))))

(declare-fun b!1472235 () Bool)

(declare-fun res!1000022 () Bool)

(declare-fun e!826281 () Bool)

(assert (=> b!1472235 (=> (not res!1000022) (not e!826281))))

(assert (=> b!1472235 (= res!1000022 (= (seekEntryOrOpen!0 (select (arr!47822 a!2862) j!93) a!2862 mask!2687) (Found!12085 j!93)))))

(declare-fun b!1472236 () Bool)

(declare-fun e!826282 () Bool)

(assert (=> b!1472236 (= e!826286 e!826282)))

(declare-fun res!1000018 () Bool)

(assert (=> b!1472236 (=> (not res!1000018) (not e!826282))))

(assert (=> b!1472236 (= res!1000018 (= (select (store (arr!47822 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1472236 (= lt!643477 (array!99084 (store (arr!47822 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48373 a!2862)))))

(declare-fun b!1472237 () Bool)

(assert (=> b!1472237 (= e!826285 (not true))))

(assert (=> b!1472237 e!826281))

(declare-fun res!1000027 () Bool)

(assert (=> b!1472237 (=> (not res!1000027) (not e!826281))))

(assert (=> b!1472237 (= res!1000027 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49458 0))(
  ( (Unit!49459) )
))
(declare-fun lt!643475 () Unit!49458)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99083 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49458)

(assert (=> b!1472237 (= lt!643475 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1472238 () Bool)

(declare-fun res!1000029 () Bool)

(assert (=> b!1472238 (=> (not res!1000029) (not e!826285))))

(assert (=> b!1472238 (= res!1000029 e!826284)))

(declare-fun c!135623 () Bool)

(assert (=> b!1472238 (= c!135623 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1472239 () Bool)

(declare-fun res!1000019 () Bool)

(assert (=> b!1472239 (=> (not res!1000019) (not e!826286))))

(declare-datatypes ((List!34503 0))(
  ( (Nil!34500) (Cons!34499 (h!35855 (_ BitVec 64)) (t!49204 List!34503)) )
))
(declare-fun arrayNoDuplicates!0 (array!99083 (_ BitVec 32) List!34503) Bool)

(assert (=> b!1472239 (= res!1000019 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34500))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun b!1472240 () Bool)

(assert (=> b!1472240 (= e!826281 (or (= (select (arr!47822 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47822 a!2862) intermediateBeforeIndex!19) (select (arr!47822 a!2862) j!93))))))

(declare-fun b!1472241 () Bool)

(declare-fun res!1000025 () Bool)

(assert (=> b!1472241 (=> (not res!1000025) (not e!826286))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1472241 (= res!1000025 (validKeyInArray!0 (select (arr!47822 a!2862) i!1006)))))

(declare-fun b!1472242 () Bool)

(assert (=> b!1472242 (= e!826282 e!826283)))

(declare-fun res!1000026 () Bool)

(assert (=> b!1472242 (=> (not res!1000026) (not e!826283))))

(assert (=> b!1472242 (= res!1000026 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47822 a!2862) j!93) mask!2687) (select (arr!47822 a!2862) j!93) a!2862 mask!2687) lt!643476))))

(assert (=> b!1472242 (= lt!643476 (Intermediate!12085 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1472243 () Bool)

(declare-fun res!1000016 () Bool)

(assert (=> b!1472243 (=> (not res!1000016) (not e!826286))))

(assert (=> b!1472243 (= res!1000016 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48373 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48373 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48373 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1472244 () Bool)

(declare-fun res!1000021 () Bool)

(assert (=> b!1472244 (=> (not res!1000021) (not e!826286))))

(assert (=> b!1472244 (= res!1000021 (and (= (size!48373 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48373 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48373 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1472245 () Bool)

(declare-fun res!1000015 () Bool)

(assert (=> b!1472245 (=> (not res!1000015) (not e!826286))))

(assert (=> b!1472245 (= res!1000015 (validKeyInArray!0 (select (arr!47822 a!2862) j!93)))))

(assert (= (and start!125832 res!1000017) b!1472244))

(assert (= (and b!1472244 res!1000021) b!1472241))

(assert (= (and b!1472241 res!1000025) b!1472245))

(assert (= (and b!1472245 res!1000015) b!1472232))

(assert (= (and b!1472232 res!1000020) b!1472239))

(assert (= (and b!1472239 res!1000019) b!1472243))

(assert (= (and b!1472243 res!1000016) b!1472236))

(assert (= (and b!1472236 res!1000018) b!1472242))

(assert (= (and b!1472242 res!1000026) b!1472233))

(assert (= (and b!1472233 res!1000023) b!1472229))

(assert (= (and b!1472229 res!1000024) b!1472238))

(assert (= (and b!1472238 c!135623) b!1472230))

(assert (= (and b!1472238 (not c!135623)) b!1472234))

(assert (= (and b!1472238 res!1000029) b!1472231))

(assert (= (and b!1472231 res!1000028) b!1472237))

(assert (= (and b!1472237 res!1000027) b!1472235))

(assert (= (and b!1472235 res!1000022) b!1472240))

(declare-fun m!1359013 () Bool)

(assert (=> start!125832 m!1359013))

(declare-fun m!1359015 () Bool)

(assert (=> start!125832 m!1359015))

(declare-fun m!1359017 () Bool)

(assert (=> b!1472235 m!1359017))

(assert (=> b!1472235 m!1359017))

(declare-fun m!1359019 () Bool)

(assert (=> b!1472235 m!1359019))

(declare-fun m!1359021 () Bool)

(assert (=> b!1472241 m!1359021))

(assert (=> b!1472241 m!1359021))

(declare-fun m!1359023 () Bool)

(assert (=> b!1472241 m!1359023))

(assert (=> b!1472245 m!1359017))

(assert (=> b!1472245 m!1359017))

(declare-fun m!1359025 () Bool)

(assert (=> b!1472245 m!1359025))

(declare-fun m!1359027 () Bool)

(assert (=> b!1472232 m!1359027))

(declare-fun m!1359029 () Bool)

(assert (=> b!1472237 m!1359029))

(declare-fun m!1359031 () Bool)

(assert (=> b!1472237 m!1359031))

(assert (=> b!1472233 m!1359017))

(assert (=> b!1472233 m!1359017))

(declare-fun m!1359033 () Bool)

(assert (=> b!1472233 m!1359033))

(declare-fun m!1359035 () Bool)

(assert (=> b!1472229 m!1359035))

(assert (=> b!1472229 m!1359035))

(declare-fun m!1359037 () Bool)

(assert (=> b!1472229 m!1359037))

(declare-fun m!1359039 () Bool)

(assert (=> b!1472229 m!1359039))

(declare-fun m!1359041 () Bool)

(assert (=> b!1472229 m!1359041))

(declare-fun m!1359043 () Bool)

(assert (=> b!1472240 m!1359043))

(assert (=> b!1472240 m!1359017))

(assert (=> b!1472236 m!1359039))

(declare-fun m!1359045 () Bool)

(assert (=> b!1472236 m!1359045))

(declare-fun m!1359047 () Bool)

(assert (=> b!1472234 m!1359047))

(declare-fun m!1359049 () Bool)

(assert (=> b!1472234 m!1359049))

(declare-fun m!1359051 () Bool)

(assert (=> b!1472230 m!1359051))

(assert (=> b!1472242 m!1359017))

(assert (=> b!1472242 m!1359017))

(declare-fun m!1359053 () Bool)

(assert (=> b!1472242 m!1359053))

(assert (=> b!1472242 m!1359053))

(assert (=> b!1472242 m!1359017))

(declare-fun m!1359055 () Bool)

(assert (=> b!1472242 m!1359055))

(declare-fun m!1359057 () Bool)

(assert (=> b!1472239 m!1359057))

(check-sat (not start!125832) (not b!1472233) (not b!1472232) (not b!1472230) (not b!1472239) (not b!1472241) (not b!1472242) (not b!1472229) (not b!1472235) (not b!1472234) (not b!1472237) (not b!1472245))
(check-sat)
