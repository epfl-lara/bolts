; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!126306 () Bool)

(assert start!126306)

(declare-fun b!1480113 () Bool)

(declare-fun res!1006061 () Bool)

(declare-fun e!830211 () Bool)

(assert (=> b!1480113 (=> (not res!1006061) (not e!830211))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!99329 0))(
  ( (array!99330 (arr!47939 (Array (_ BitVec 32) (_ BitVec 64))) (size!48490 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99329)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1480113 (= res!1006061 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48490 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48490 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48490 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun e!830216 () Bool)

(declare-datatypes ((SeekEntryResult!12202 0))(
  ( (MissingZero!12202 (index!51199 (_ BitVec 32))) (Found!12202 (index!51200 (_ BitVec 32))) (Intermediate!12202 (undefined!13014 Bool) (index!51201 (_ BitVec 32)) (x!132780 (_ BitVec 32))) (Undefined!12202) (MissingVacant!12202 (index!51202 (_ BitVec 32))) )
))
(declare-fun lt!646268 () SeekEntryResult!12202)

(declare-fun b!1480114 () Bool)

(declare-fun lt!646272 () (_ BitVec 64))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun lt!646269 () array!99329)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99329 (_ BitVec 32)) SeekEntryResult!12202)

(assert (=> b!1480114 (= e!830216 (= lt!646268 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!646272 lt!646269 mask!2687)))))

(declare-fun b!1480115 () Bool)

(declare-fun res!1006068 () Bool)

(declare-fun e!830219 () Bool)

(assert (=> b!1480115 (=> (not res!1006068) (not e!830219))))

(declare-fun lt!646266 () SeekEntryResult!12202)

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1480115 (= res!1006068 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47939 a!2862) j!93) a!2862 mask!2687) lt!646266))))

(declare-fun b!1480116 () Bool)

(declare-fun res!1006062 () Bool)

(assert (=> b!1480116 (=> (not res!1006062) (not e!830211))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99329 (_ BitVec 32)) Bool)

(assert (=> b!1480116 (= res!1006062 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1480117 () Bool)

(declare-fun res!1006067 () Bool)

(declare-fun e!830210 () Bool)

(assert (=> b!1480117 (=> (not res!1006067) (not e!830210))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1480117 (= res!1006067 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun res!1006055 () Bool)

(assert (=> start!126306 (=> (not res!1006055) (not e!830211))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126306 (= res!1006055 (validMask!0 mask!2687))))

(assert (=> start!126306 e!830211))

(assert (=> start!126306 true))

(declare-fun array_inv!36884 (array!99329) Bool)

(assert (=> start!126306 (array_inv!36884 a!2862)))

(declare-fun b!1480118 () Bool)

(declare-fun e!830217 () Bool)

(assert (=> b!1480118 (= e!830217 e!830219)))

(declare-fun res!1006063 () Bool)

(assert (=> b!1480118 (=> (not res!1006063) (not e!830219))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1480118 (= res!1006063 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47939 a!2862) j!93) mask!2687) (select (arr!47939 a!2862) j!93) a!2862 mask!2687) lt!646266))))

(assert (=> b!1480118 (= lt!646266 (Intermediate!12202 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1480119 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99329 (_ BitVec 32)) SeekEntryResult!12202)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99329 (_ BitVec 32)) SeekEntryResult!12202)

(assert (=> b!1480119 (= e!830216 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!646272 lt!646269 mask!2687) (seekEntryOrOpen!0 lt!646272 lt!646269 mask!2687)))))

(declare-fun b!1480120 () Bool)

(assert (=> b!1480120 (= e!830211 e!830217)))

(declare-fun res!1006060 () Bool)

(assert (=> b!1480120 (=> (not res!1006060) (not e!830217))))

(assert (=> b!1480120 (= res!1006060 (= (select (store (arr!47939 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1480120 (= lt!646269 (array!99330 (store (arr!47939 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48490 a!2862)))))

(declare-fun b!1480121 () Bool)

(declare-fun res!1006054 () Bool)

(assert (=> b!1480121 (=> (not res!1006054) (not e!830211))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1480121 (= res!1006054 (validKeyInArray!0 (select (arr!47939 a!2862) j!93)))))

(declare-fun b!1480122 () Bool)

(declare-fun res!1006052 () Bool)

(assert (=> b!1480122 (=> (not res!1006052) (not e!830210))))

(assert (=> b!1480122 (= res!1006052 e!830216)))

(declare-fun c!136553 () Bool)

(assert (=> b!1480122 (= c!136553 (bvsle x!665 intermediateAfterX!19))))

(declare-fun e!830215 () Bool)

(declare-fun lt!646267 () SeekEntryResult!12202)

(declare-fun b!1480123 () Bool)

(assert (=> b!1480123 (= e!830215 (= lt!646267 (seekEntryOrOpen!0 lt!646272 lt!646269 mask!2687)))))

(declare-fun lt!646271 () SeekEntryResult!12202)

(assert (=> b!1480123 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!646272 lt!646269 mask!2687) lt!646271)))

(declare-datatypes ((Unit!49692 0))(
  ( (Unit!49693) )
))
(declare-fun lt!646273 () Unit!49692)

(declare-fun lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 (array!99329 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49692)

(assert (=> b!1480123 (= lt!646273 (lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 a!2862 i!1006 j!93 x!665 index!646 intermediateBeforeIndex!19 intermediateAfterIndex!19 mask!2687))))

(declare-fun b!1480124 () Bool)

(declare-fun res!1006066 () Bool)

(assert (=> b!1480124 (=> (not res!1006066) (not e!830211))))

(assert (=> b!1480124 (= res!1006066 (validKeyInArray!0 (select (arr!47939 a!2862) i!1006)))))

(declare-fun b!1480125 () Bool)

(assert (=> b!1480125 (= e!830219 e!830210)))

(declare-fun res!1006053 () Bool)

(assert (=> b!1480125 (=> (not res!1006053) (not e!830210))))

(assert (=> b!1480125 (= res!1006053 (= lt!646268 (Intermediate!12202 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1480125 (= lt!646268 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!646272 mask!2687) lt!646272 lt!646269 mask!2687))))

(assert (=> b!1480125 (= lt!646272 (select (store (arr!47939 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1480126 () Bool)

(declare-fun res!1006064 () Bool)

(assert (=> b!1480126 (=> (not res!1006064) (not e!830211))))

(assert (=> b!1480126 (= res!1006064 (and (= (size!48490 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48490 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48490 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1480127 () Bool)

(declare-fun e!830213 () Bool)

(declare-fun e!830218 () Bool)

(assert (=> b!1480127 (= e!830213 e!830218)))

(declare-fun res!1006065 () Bool)

(assert (=> b!1480127 (=> (not res!1006065) (not e!830218))))

(assert (=> b!1480127 (= res!1006065 (= lt!646267 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47939 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1480128 () Bool)

(declare-fun e!830214 () Bool)

(assert (=> b!1480128 (= e!830214 e!830213)))

(declare-fun res!1006059 () Bool)

(assert (=> b!1480128 (=> res!1006059 e!830213)))

(assert (=> b!1480128 (= res!1006059 (or (and (= (select (arr!47939 a!2862) index!646) (select (store (arr!47939 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47939 a!2862) index!646) (select (arr!47939 a!2862) j!93))) (not (= (select (arr!47939 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1480129 () Bool)

(declare-fun res!1006051 () Bool)

(assert (=> b!1480129 (=> (not res!1006051) (not e!830211))))

(declare-datatypes ((List!34620 0))(
  ( (Nil!34617) (Cons!34616 (h!35984 (_ BitVec 64)) (t!49321 List!34620)) )
))
(declare-fun arrayNoDuplicates!0 (array!99329 (_ BitVec 32) List!34620) Bool)

(assert (=> b!1480129 (= res!1006051 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34617))))

(declare-fun b!1480130 () Bool)

(declare-fun res!1006057 () Bool)

(assert (=> b!1480130 (=> res!1006057 e!830215)))

(assert (=> b!1480130 (= res!1006057 (not (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateBeforeIndex!19 (select (arr!47939 a!2862) j!93) a!2862 mask!2687) lt!646271)))))

(declare-fun b!1480131 () Bool)

(assert (=> b!1480131 (= e!830210 (not e!830215))))

(declare-fun res!1006058 () Bool)

(assert (=> b!1480131 (=> res!1006058 e!830215)))

(assert (=> b!1480131 (= res!1006058 (or (and (= (select (arr!47939 a!2862) index!646) (select (store (arr!47939 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47939 a!2862) index!646) (select (arr!47939 a!2862) j!93))) (not (= (select (arr!47939 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47939 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1480131 e!830214))

(declare-fun res!1006056 () Bool)

(assert (=> b!1480131 (=> (not res!1006056) (not e!830214))))

(assert (=> b!1480131 (= res!1006056 (and (= lt!646267 lt!646271) (or (= (select (arr!47939 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47939 a!2862) intermediateBeforeIndex!19) (select (arr!47939 a!2862) j!93)))))))

(assert (=> b!1480131 (= lt!646271 (Found!12202 j!93))))

(assert (=> b!1480131 (= lt!646267 (seekEntryOrOpen!0 (select (arr!47939 a!2862) j!93) a!2862 mask!2687))))

(assert (=> b!1480131 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-fun lt!646270 () Unit!49692)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99329 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49692)

(assert (=> b!1480131 (= lt!646270 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1480132 () Bool)

(assert (=> b!1480132 (= e!830218 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(assert (= (and start!126306 res!1006055) b!1480126))

(assert (= (and b!1480126 res!1006064) b!1480124))

(assert (= (and b!1480124 res!1006066) b!1480121))

(assert (= (and b!1480121 res!1006054) b!1480116))

(assert (= (and b!1480116 res!1006062) b!1480129))

(assert (= (and b!1480129 res!1006051) b!1480113))

(assert (= (and b!1480113 res!1006061) b!1480120))

(assert (= (and b!1480120 res!1006060) b!1480118))

(assert (= (and b!1480118 res!1006063) b!1480115))

(assert (= (and b!1480115 res!1006068) b!1480125))

(assert (= (and b!1480125 res!1006053) b!1480122))

(assert (= (and b!1480122 c!136553) b!1480114))

(assert (= (and b!1480122 (not c!136553)) b!1480119))

(assert (= (and b!1480122 res!1006052) b!1480117))

(assert (= (and b!1480117 res!1006067) b!1480131))

(assert (= (and b!1480131 res!1006056) b!1480128))

(assert (= (and b!1480128 (not res!1006059)) b!1480127))

(assert (= (and b!1480127 res!1006065) b!1480132))

(assert (= (and b!1480131 (not res!1006058)) b!1480130))

(assert (= (and b!1480130 (not res!1006057)) b!1480123))

(declare-fun m!1365989 () Bool)

(assert (=> start!126306 m!1365989))

(declare-fun m!1365991 () Bool)

(assert (=> start!126306 m!1365991))

(declare-fun m!1365993 () Bool)

(assert (=> b!1480119 m!1365993))

(declare-fun m!1365995 () Bool)

(assert (=> b!1480119 m!1365995))

(declare-fun m!1365997 () Bool)

(assert (=> b!1480116 m!1365997))

(declare-fun m!1365999 () Bool)

(assert (=> b!1480127 m!1365999))

(assert (=> b!1480127 m!1365999))

(declare-fun m!1366001 () Bool)

(assert (=> b!1480127 m!1366001))

(declare-fun m!1366003 () Bool)

(assert (=> b!1480131 m!1366003))

(declare-fun m!1366005 () Bool)

(assert (=> b!1480131 m!1366005))

(declare-fun m!1366007 () Bool)

(assert (=> b!1480131 m!1366007))

(declare-fun m!1366009 () Bool)

(assert (=> b!1480131 m!1366009))

(declare-fun m!1366011 () Bool)

(assert (=> b!1480131 m!1366011))

(assert (=> b!1480131 m!1365999))

(declare-fun m!1366013 () Bool)

(assert (=> b!1480131 m!1366013))

(declare-fun m!1366015 () Bool)

(assert (=> b!1480131 m!1366015))

(assert (=> b!1480131 m!1365999))

(assert (=> b!1480115 m!1365999))

(assert (=> b!1480115 m!1365999))

(declare-fun m!1366017 () Bool)

(assert (=> b!1480115 m!1366017))

(declare-fun m!1366019 () Bool)

(assert (=> b!1480129 m!1366019))

(assert (=> b!1480121 m!1365999))

(assert (=> b!1480121 m!1365999))

(declare-fun m!1366021 () Bool)

(assert (=> b!1480121 m!1366021))

(declare-fun m!1366023 () Bool)

(assert (=> b!1480125 m!1366023))

(assert (=> b!1480125 m!1366023))

(declare-fun m!1366025 () Bool)

(assert (=> b!1480125 m!1366025))

(assert (=> b!1480125 m!1366005))

(declare-fun m!1366027 () Bool)

(assert (=> b!1480125 m!1366027))

(assert (=> b!1480120 m!1366005))

(declare-fun m!1366029 () Bool)

(assert (=> b!1480120 m!1366029))

(assert (=> b!1480118 m!1365999))

(assert (=> b!1480118 m!1365999))

(declare-fun m!1366031 () Bool)

(assert (=> b!1480118 m!1366031))

(assert (=> b!1480118 m!1366031))

(assert (=> b!1480118 m!1365999))

(declare-fun m!1366033 () Bool)

(assert (=> b!1480118 m!1366033))

(declare-fun m!1366035 () Bool)

(assert (=> b!1480124 m!1366035))

(assert (=> b!1480124 m!1366035))

(declare-fun m!1366037 () Bool)

(assert (=> b!1480124 m!1366037))

(assert (=> b!1480128 m!1366011))

(assert (=> b!1480128 m!1366005))

(assert (=> b!1480128 m!1366009))

(assert (=> b!1480128 m!1365999))

(assert (=> b!1480130 m!1365999))

(assert (=> b!1480130 m!1365999))

(declare-fun m!1366039 () Bool)

(assert (=> b!1480130 m!1366039))

(declare-fun m!1366041 () Bool)

(assert (=> b!1480114 m!1366041))

(assert (=> b!1480123 m!1365995))

(assert (=> b!1480123 m!1365993))

(declare-fun m!1366043 () Bool)

(assert (=> b!1480123 m!1366043))

(check-sat (not b!1480125) (not b!1480129) (not b!1480130) (not b!1480114) (not b!1480115) (not b!1480124) (not b!1480127) (not start!126306) (not b!1480116) (not b!1480123) (not b!1480121) (not b!1480118) (not b!1480131) (not b!1480119))
(check-sat)
