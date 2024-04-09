; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!126456 () Bool)

(assert start!126456)

(declare-fun b!1482297 () Bool)

(declare-fun e!831249 () Bool)

(assert (=> b!1482297 (= e!831249 (not true))))

(declare-fun e!831251 () Bool)

(assert (=> b!1482297 e!831251))

(declare-fun res!1007625 () Bool)

(assert (=> b!1482297 (=> (not res!1007625) (not e!831251))))

(declare-datatypes ((array!99392 0))(
  ( (array!99393 (arr!47969 (Array (_ BitVec 32) (_ BitVec 64))) (size!48520 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99392)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99392 (_ BitVec 32)) Bool)

(assert (=> b!1482297 (= res!1007625 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49752 0))(
  ( (Unit!49753) )
))
(declare-fun lt!646992 () Unit!49752)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99392 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49752)

(assert (=> b!1482297 (= lt!646992 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1482298 () Bool)

(declare-fun e!831250 () Bool)

(declare-fun e!831247 () Bool)

(assert (=> b!1482298 (= e!831250 e!831247)))

(declare-fun res!1007629 () Bool)

(assert (=> b!1482298 (=> (not res!1007629) (not e!831247))))

(declare-datatypes ((SeekEntryResult!12232 0))(
  ( (MissingZero!12232 (index!51319 (_ BitVec 32))) (Found!12232 (index!51320 (_ BitVec 32))) (Intermediate!12232 (undefined!13044 Bool) (index!51321 (_ BitVec 32)) (x!132902 (_ BitVec 32))) (Undefined!12232) (MissingVacant!12232 (index!51322 (_ BitVec 32))) )
))
(declare-fun lt!646993 () SeekEntryResult!12232)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99392 (_ BitVec 32)) SeekEntryResult!12232)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1482298 (= res!1007629 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47969 a!2862) j!93) mask!2687) (select (arr!47969 a!2862) j!93) a!2862 mask!2687) lt!646993))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1482298 (= lt!646993 (Intermediate!12232 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun lt!646995 () (_ BitVec 64))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun lt!646996 () SeekEntryResult!12232)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun lt!646994 () array!99392)

(declare-fun b!1482299 () Bool)

(declare-fun e!831246 () Bool)

(assert (=> b!1482299 (= e!831246 (= lt!646996 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!646995 lt!646994 mask!2687)))))

(declare-fun res!1007632 () Bool)

(declare-fun e!831245 () Bool)

(assert (=> start!126456 (=> (not res!1007632) (not e!831245))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126456 (= res!1007632 (validMask!0 mask!2687))))

(assert (=> start!126456 e!831245))

(assert (=> start!126456 true))

(declare-fun array_inv!36914 (array!99392) Bool)

(assert (=> start!126456 (array_inv!36914 a!2862)))

(declare-fun b!1482300 () Bool)

(assert (=> b!1482300 (= e!831245 e!831250)))

(declare-fun res!1007627 () Bool)

(assert (=> b!1482300 (=> (not res!1007627) (not e!831250))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1482300 (= res!1007627 (= (select (store (arr!47969 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1482300 (= lt!646994 (array!99393 (store (arr!47969 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48520 a!2862)))))

(declare-fun b!1482301 () Bool)

(declare-fun res!1007626 () Bool)

(assert (=> b!1482301 (=> (not res!1007626) (not e!831245))))

(declare-datatypes ((List!34650 0))(
  ( (Nil!34647) (Cons!34646 (h!36017 (_ BitVec 64)) (t!49351 List!34650)) )
))
(declare-fun arrayNoDuplicates!0 (array!99392 (_ BitVec 32) List!34650) Bool)

(assert (=> b!1482301 (= res!1007626 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34647))))

(declare-fun b!1482302 () Bool)

(declare-fun res!1007623 () Bool)

(assert (=> b!1482302 (=> (not res!1007623) (not e!831251))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99392 (_ BitVec 32)) SeekEntryResult!12232)

(assert (=> b!1482302 (= res!1007623 (= (seekEntryOrOpen!0 (select (arr!47969 a!2862) j!93) a!2862 mask!2687) (Found!12232 j!93)))))

(declare-fun b!1482303 () Bool)

(declare-fun res!1007624 () Bool)

(assert (=> b!1482303 (=> (not res!1007624) (not e!831245))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1482303 (= res!1007624 (validKeyInArray!0 (select (arr!47969 a!2862) i!1006)))))

(declare-fun b!1482304 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1482304 (= e!831251 (and (or (= (select (arr!47969 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47969 a!2862) intermediateBeforeIndex!19) (select (arr!47969 a!2862) j!93))) (or (and (= (select (arr!47969 a!2862) index!646) (select (store (arr!47969 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47969 a!2862) index!646) (select (arr!47969 a!2862) j!93))) (= (select (arr!47969 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= (select (store (arr!47969 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1482305 () Bool)

(assert (=> b!1482305 (= e!831247 e!831249)))

(declare-fun res!1007622 () Bool)

(assert (=> b!1482305 (=> (not res!1007622) (not e!831249))))

(assert (=> b!1482305 (= res!1007622 (= lt!646996 (Intermediate!12232 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1482305 (= lt!646996 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!646995 mask!2687) lt!646995 lt!646994 mask!2687))))

(assert (=> b!1482305 (= lt!646995 (select (store (arr!47969 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1482306 () Bool)

(declare-fun res!1007634 () Bool)

(assert (=> b!1482306 (=> (not res!1007634) (not e!831245))))

(assert (=> b!1482306 (= res!1007634 (and (= (size!48520 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48520 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48520 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1482307 () Bool)

(declare-fun res!1007631 () Bool)

(assert (=> b!1482307 (=> (not res!1007631) (not e!831249))))

(assert (=> b!1482307 (= res!1007631 e!831246)))

(declare-fun c!136862 () Bool)

(assert (=> b!1482307 (= c!136862 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1482308 () Bool)

(declare-fun res!1007628 () Bool)

(assert (=> b!1482308 (=> (not res!1007628) (not e!831249))))

(assert (=> b!1482308 (= res!1007628 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1482309 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99392 (_ BitVec 32)) SeekEntryResult!12232)

(assert (=> b!1482309 (= e!831246 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!646995 lt!646994 mask!2687) (seekEntryOrOpen!0 lt!646995 lt!646994 mask!2687)))))

(declare-fun b!1482310 () Bool)

(declare-fun res!1007630 () Bool)

(assert (=> b!1482310 (=> (not res!1007630) (not e!831245))))

(assert (=> b!1482310 (= res!1007630 (validKeyInArray!0 (select (arr!47969 a!2862) j!93)))))

(declare-fun b!1482311 () Bool)

(declare-fun res!1007621 () Bool)

(assert (=> b!1482311 (=> (not res!1007621) (not e!831245))))

(assert (=> b!1482311 (= res!1007621 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48520 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48520 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48520 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1482312 () Bool)

(declare-fun res!1007633 () Bool)

(assert (=> b!1482312 (=> (not res!1007633) (not e!831247))))

(assert (=> b!1482312 (= res!1007633 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47969 a!2862) j!93) a!2862 mask!2687) lt!646993))))

(declare-fun b!1482313 () Bool)

(declare-fun res!1007620 () Bool)

(assert (=> b!1482313 (=> (not res!1007620) (not e!831245))))

(assert (=> b!1482313 (= res!1007620 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(assert (= (and start!126456 res!1007632) b!1482306))

(assert (= (and b!1482306 res!1007634) b!1482303))

(assert (= (and b!1482303 res!1007624) b!1482310))

(assert (= (and b!1482310 res!1007630) b!1482313))

(assert (= (and b!1482313 res!1007620) b!1482301))

(assert (= (and b!1482301 res!1007626) b!1482311))

(assert (= (and b!1482311 res!1007621) b!1482300))

(assert (= (and b!1482300 res!1007627) b!1482298))

(assert (= (and b!1482298 res!1007629) b!1482312))

(assert (= (and b!1482312 res!1007633) b!1482305))

(assert (= (and b!1482305 res!1007622) b!1482307))

(assert (= (and b!1482307 c!136862) b!1482299))

(assert (= (and b!1482307 (not c!136862)) b!1482309))

(assert (= (and b!1482307 res!1007631) b!1482308))

(assert (= (and b!1482308 res!1007628) b!1482297))

(assert (= (and b!1482297 res!1007625) b!1482302))

(assert (= (and b!1482302 res!1007623) b!1482304))

(declare-fun m!1368077 () Bool)

(assert (=> start!126456 m!1368077))

(declare-fun m!1368079 () Bool)

(assert (=> start!126456 m!1368079))

(declare-fun m!1368081 () Bool)

(assert (=> b!1482298 m!1368081))

(assert (=> b!1482298 m!1368081))

(declare-fun m!1368083 () Bool)

(assert (=> b!1482298 m!1368083))

(assert (=> b!1482298 m!1368083))

(assert (=> b!1482298 m!1368081))

(declare-fun m!1368085 () Bool)

(assert (=> b!1482298 m!1368085))

(declare-fun m!1368087 () Bool)

(assert (=> b!1482303 m!1368087))

(assert (=> b!1482303 m!1368087))

(declare-fun m!1368089 () Bool)

(assert (=> b!1482303 m!1368089))

(declare-fun m!1368091 () Bool)

(assert (=> b!1482305 m!1368091))

(assert (=> b!1482305 m!1368091))

(declare-fun m!1368093 () Bool)

(assert (=> b!1482305 m!1368093))

(declare-fun m!1368095 () Bool)

(assert (=> b!1482305 m!1368095))

(declare-fun m!1368097 () Bool)

(assert (=> b!1482305 m!1368097))

(declare-fun m!1368099 () Bool)

(assert (=> b!1482299 m!1368099))

(assert (=> b!1482300 m!1368095))

(declare-fun m!1368101 () Bool)

(assert (=> b!1482300 m!1368101))

(declare-fun m!1368103 () Bool)

(assert (=> b!1482301 m!1368103))

(declare-fun m!1368105 () Bool)

(assert (=> b!1482309 m!1368105))

(declare-fun m!1368107 () Bool)

(assert (=> b!1482309 m!1368107))

(assert (=> b!1482312 m!1368081))

(assert (=> b!1482312 m!1368081))

(declare-fun m!1368109 () Bool)

(assert (=> b!1482312 m!1368109))

(assert (=> b!1482304 m!1368095))

(declare-fun m!1368111 () Bool)

(assert (=> b!1482304 m!1368111))

(declare-fun m!1368113 () Bool)

(assert (=> b!1482304 m!1368113))

(declare-fun m!1368115 () Bool)

(assert (=> b!1482304 m!1368115))

(assert (=> b!1482304 m!1368081))

(declare-fun m!1368117 () Bool)

(assert (=> b!1482297 m!1368117))

(declare-fun m!1368119 () Bool)

(assert (=> b!1482297 m!1368119))

(assert (=> b!1482302 m!1368081))

(assert (=> b!1482302 m!1368081))

(declare-fun m!1368121 () Bool)

(assert (=> b!1482302 m!1368121))

(assert (=> b!1482310 m!1368081))

(assert (=> b!1482310 m!1368081))

(declare-fun m!1368123 () Bool)

(assert (=> b!1482310 m!1368123))

(declare-fun m!1368125 () Bool)

(assert (=> b!1482313 m!1368125))

(check-sat (not start!126456) (not b!1482309) (not b!1482299) (not b!1482303) (not b!1482313) (not b!1482302) (not b!1482305) (not b!1482310) (not b!1482298) (not b!1482312) (not b!1482297) (not b!1482301))
(check-sat)
