; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!126234 () Bool)

(assert start!126234)

(declare-fun b!1478078 () Bool)

(declare-fun res!1004245 () Bool)

(declare-fun e!829194 () Bool)

(assert (=> b!1478078 (=> (not res!1004245) (not e!829194))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1478078 (= res!1004245 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1478079 () Bool)

(declare-fun e!829191 () Bool)

(declare-fun e!829188 () Bool)

(assert (=> b!1478079 (= e!829191 e!829188)))

(declare-fun res!1004238 () Bool)

(assert (=> b!1478079 (=> res!1004238 e!829188)))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((array!99257 0))(
  ( (array!99258 (arr!47903 (Array (_ BitVec 32) (_ BitVec 64))) (size!48454 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99257)

(assert (=> b!1478079 (= res!1004238 (or (and (= (select (arr!47903 a!2862) index!646) (select (store (arr!47903 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47903 a!2862) index!646) (select (arr!47903 a!2862) j!93))) (not (= (select (arr!47903 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1478080 () Bool)

(declare-fun res!1004240 () Bool)

(declare-fun e!829195 () Bool)

(assert (=> b!1478080 (=> (not res!1004240) (not e!829195))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12166 0))(
  ( (MissingZero!12166 (index!51055 (_ BitVec 32))) (Found!12166 (index!51056 (_ BitVec 32))) (Intermediate!12166 (undefined!12978 Bool) (index!51057 (_ BitVec 32)) (x!132648 (_ BitVec 32))) (Undefined!12166) (MissingVacant!12166 (index!51058 (_ BitVec 32))) )
))
(declare-fun lt!645529 () SeekEntryResult!12166)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99257 (_ BitVec 32)) SeekEntryResult!12166)

(assert (=> b!1478080 (= res!1004240 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47903 a!2862) j!93) a!2862 mask!2687) lt!645529))))

(declare-fun b!1478081 () Bool)

(assert (=> b!1478081 (= e!829195 e!829194)))

(declare-fun res!1004241 () Bool)

(assert (=> b!1478081 (=> (not res!1004241) (not e!829194))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun lt!645531 () SeekEntryResult!12166)

(assert (=> b!1478081 (= res!1004241 (= lt!645531 (Intermediate!12166 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!645527 () (_ BitVec 64))

(declare-fun lt!645530 () array!99257)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1478081 (= lt!645531 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!645527 mask!2687) lt!645527 lt!645530 mask!2687))))

(assert (=> b!1478081 (= lt!645527 (select (store (arr!47903 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1478082 () Bool)

(declare-fun res!1004239 () Bool)

(declare-fun e!829193 () Bool)

(assert (=> b!1478082 (=> (not res!1004239) (not e!829193))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1478082 (= res!1004239 (validKeyInArray!0 (select (arr!47903 a!2862) i!1006)))))

(declare-fun b!1478083 () Bool)

(declare-fun res!1004236 () Bool)

(assert (=> b!1478083 (=> (not res!1004236) (not e!829194))))

(declare-fun e!829196 () Bool)

(assert (=> b!1478083 (= res!1004236 e!829196)))

(declare-fun c!136445 () Bool)

(assert (=> b!1478083 (= c!136445 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1478084 () Bool)

(declare-fun res!1004232 () Bool)

(assert (=> b!1478084 (=> (not res!1004232) (not e!829193))))

(declare-datatypes ((List!34584 0))(
  ( (Nil!34581) (Cons!34580 (h!35948 (_ BitVec 64)) (t!49285 List!34584)) )
))
(declare-fun arrayNoDuplicates!0 (array!99257 (_ BitVec 32) List!34584) Bool)

(assert (=> b!1478084 (= res!1004232 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34581))))

(declare-fun res!1004244 () Bool)

(assert (=> start!126234 (=> (not res!1004244) (not e!829193))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126234 (= res!1004244 (validMask!0 mask!2687))))

(assert (=> start!126234 e!829193))

(assert (=> start!126234 true))

(declare-fun array_inv!36848 (array!99257) Bool)

(assert (=> start!126234 (array_inv!36848 a!2862)))

(declare-fun b!1478085 () Bool)

(declare-fun res!1004246 () Bool)

(assert (=> b!1478085 (=> (not res!1004246) (not e!829193))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1478085 (= res!1004246 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48454 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48454 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48454 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1478086 () Bool)

(declare-fun res!1004247 () Bool)

(assert (=> b!1478086 (=> (not res!1004247) (not e!829193))))

(assert (=> b!1478086 (= res!1004247 (validKeyInArray!0 (select (arr!47903 a!2862) j!93)))))

(declare-fun b!1478087 () Bool)

(declare-fun res!1004233 () Bool)

(assert (=> b!1478087 (=> (not res!1004233) (not e!829193))))

(assert (=> b!1478087 (= res!1004233 (and (= (size!48454 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48454 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48454 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1478088 () Bool)

(declare-fun e!829190 () Bool)

(assert (=> b!1478088 (= e!829190 e!829195)))

(declare-fun res!1004234 () Bool)

(assert (=> b!1478088 (=> (not res!1004234) (not e!829195))))

(assert (=> b!1478088 (= res!1004234 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47903 a!2862) j!93) mask!2687) (select (arr!47903 a!2862) j!93) a!2862 mask!2687) lt!645529))))

(assert (=> b!1478088 (= lt!645529 (Intermediate!12166 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1478089 () Bool)

(declare-fun e!829189 () Bool)

(assert (=> b!1478089 (= e!829189 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1478090 () Bool)

(assert (=> b!1478090 (= e!829196 (= lt!645531 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!645527 lt!645530 mask!2687)))))

(declare-fun b!1478091 () Bool)

(assert (=> b!1478091 (= e!829194 (not true))))

(assert (=> b!1478091 e!829191))

(declare-fun res!1004243 () Bool)

(assert (=> b!1478091 (=> (not res!1004243) (not e!829191))))

(declare-fun lt!645532 () SeekEntryResult!12166)

(assert (=> b!1478091 (= res!1004243 (and (= lt!645532 (Found!12166 j!93)) (or (= (select (arr!47903 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47903 a!2862) intermediateBeforeIndex!19) (select (arr!47903 a!2862) j!93)))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99257 (_ BitVec 32)) SeekEntryResult!12166)

(assert (=> b!1478091 (= lt!645532 (seekEntryOrOpen!0 (select (arr!47903 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99257 (_ BitVec 32)) Bool)

(assert (=> b!1478091 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!49620 0))(
  ( (Unit!49621) )
))
(declare-fun lt!645528 () Unit!49620)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99257 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49620)

(assert (=> b!1478091 (= lt!645528 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1478092 () Bool)

(assert (=> b!1478092 (= e!829193 e!829190)))

(declare-fun res!1004237 () Bool)

(assert (=> b!1478092 (=> (not res!1004237) (not e!829190))))

(assert (=> b!1478092 (= res!1004237 (= (select (store (arr!47903 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1478092 (= lt!645530 (array!99258 (store (arr!47903 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48454 a!2862)))))

(declare-fun b!1478093 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99257 (_ BitVec 32)) SeekEntryResult!12166)

(assert (=> b!1478093 (= e!829196 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!645527 lt!645530 mask!2687) (seekEntryOrOpen!0 lt!645527 lt!645530 mask!2687)))))

(declare-fun b!1478094 () Bool)

(assert (=> b!1478094 (= e!829188 e!829189)))

(declare-fun res!1004235 () Bool)

(assert (=> b!1478094 (=> (not res!1004235) (not e!829189))))

(assert (=> b!1478094 (= res!1004235 (= lt!645532 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47903 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1478095 () Bool)

(declare-fun res!1004242 () Bool)

(assert (=> b!1478095 (=> (not res!1004242) (not e!829193))))

(assert (=> b!1478095 (= res!1004242 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(assert (= (and start!126234 res!1004244) b!1478087))

(assert (= (and b!1478087 res!1004233) b!1478082))

(assert (= (and b!1478082 res!1004239) b!1478086))

(assert (= (and b!1478086 res!1004247) b!1478095))

(assert (= (and b!1478095 res!1004242) b!1478084))

(assert (= (and b!1478084 res!1004232) b!1478085))

(assert (= (and b!1478085 res!1004246) b!1478092))

(assert (= (and b!1478092 res!1004237) b!1478088))

(assert (= (and b!1478088 res!1004234) b!1478080))

(assert (= (and b!1478080 res!1004240) b!1478081))

(assert (= (and b!1478081 res!1004241) b!1478083))

(assert (= (and b!1478083 c!136445) b!1478090))

(assert (= (and b!1478083 (not c!136445)) b!1478093))

(assert (= (and b!1478083 res!1004236) b!1478078))

(assert (= (and b!1478078 res!1004245) b!1478091))

(assert (= (and b!1478091 res!1004243) b!1478079))

(assert (= (and b!1478079 (not res!1004238)) b!1478094))

(assert (= (and b!1478094 res!1004235) b!1478089))

(declare-fun m!1364059 () Bool)

(assert (=> b!1478081 m!1364059))

(assert (=> b!1478081 m!1364059))

(declare-fun m!1364061 () Bool)

(assert (=> b!1478081 m!1364061))

(declare-fun m!1364063 () Bool)

(assert (=> b!1478081 m!1364063))

(declare-fun m!1364065 () Bool)

(assert (=> b!1478081 m!1364065))

(declare-fun m!1364067 () Bool)

(assert (=> b!1478080 m!1364067))

(assert (=> b!1478080 m!1364067))

(declare-fun m!1364069 () Bool)

(assert (=> b!1478080 m!1364069))

(declare-fun m!1364071 () Bool)

(assert (=> b!1478084 m!1364071))

(declare-fun m!1364073 () Bool)

(assert (=> b!1478093 m!1364073))

(declare-fun m!1364075 () Bool)

(assert (=> b!1478093 m!1364075))

(assert (=> b!1478088 m!1364067))

(assert (=> b!1478088 m!1364067))

(declare-fun m!1364077 () Bool)

(assert (=> b!1478088 m!1364077))

(assert (=> b!1478088 m!1364077))

(assert (=> b!1478088 m!1364067))

(declare-fun m!1364079 () Bool)

(assert (=> b!1478088 m!1364079))

(declare-fun m!1364081 () Bool)

(assert (=> b!1478079 m!1364081))

(assert (=> b!1478079 m!1364063))

(declare-fun m!1364083 () Bool)

(assert (=> b!1478079 m!1364083))

(assert (=> b!1478079 m!1364067))

(assert (=> b!1478094 m!1364067))

(assert (=> b!1478094 m!1364067))

(declare-fun m!1364085 () Bool)

(assert (=> b!1478094 m!1364085))

(declare-fun m!1364087 () Bool)

(assert (=> start!126234 m!1364087))

(declare-fun m!1364089 () Bool)

(assert (=> start!126234 m!1364089))

(assert (=> b!1478092 m!1364063))

(declare-fun m!1364091 () Bool)

(assert (=> b!1478092 m!1364091))

(declare-fun m!1364093 () Bool)

(assert (=> b!1478091 m!1364093))

(declare-fun m!1364095 () Bool)

(assert (=> b!1478091 m!1364095))

(assert (=> b!1478091 m!1364067))

(declare-fun m!1364097 () Bool)

(assert (=> b!1478091 m!1364097))

(declare-fun m!1364099 () Bool)

(assert (=> b!1478091 m!1364099))

(assert (=> b!1478091 m!1364067))

(declare-fun m!1364101 () Bool)

(assert (=> b!1478090 m!1364101))

(assert (=> b!1478086 m!1364067))

(assert (=> b!1478086 m!1364067))

(declare-fun m!1364103 () Bool)

(assert (=> b!1478086 m!1364103))

(declare-fun m!1364105 () Bool)

(assert (=> b!1478082 m!1364105))

(assert (=> b!1478082 m!1364105))

(declare-fun m!1364107 () Bool)

(assert (=> b!1478082 m!1364107))

(declare-fun m!1364109 () Bool)

(assert (=> b!1478095 m!1364109))

(check-sat (not b!1478095) (not b!1478084) (not b!1478090) (not b!1478082) (not b!1478081) (not start!126234) (not b!1478091) (not b!1478093) (not b!1478086) (not b!1478088) (not b!1478094) (not b!1478080))
