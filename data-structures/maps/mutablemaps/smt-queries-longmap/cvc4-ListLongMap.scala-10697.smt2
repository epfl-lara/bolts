; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125366 () Bool)

(assert start!125366)

(declare-fun lt!640937 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!11924 0))(
  ( (MissingZero!11924 (index!50087 (_ BitVec 32))) (Found!11924 (index!50088 (_ BitVec 32))) (Intermediate!11924 (undefined!12736 Bool) (index!50089 (_ BitVec 32)) (x!131672 (_ BitVec 32))) (Undefined!11924) (MissingVacant!11924 (index!50090 (_ BitVec 32))) )
))
(declare-fun lt!640938 () SeekEntryResult!11924)

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!98731 0))(
  ( (array!98732 (arr!47649 (Array (_ BitVec 32) (_ BitVec 64))) (size!48200 (_ BitVec 32))) )
))
(declare-fun lt!640941 () array!98731)

(declare-fun b!1464080 () Bool)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun e!822836 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98731 (_ BitVec 32)) SeekEntryResult!11924)

(assert (=> b!1464080 (= e!822836 (= lt!640938 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!640937 lt!640941 mask!2687)))))

(declare-fun lt!640942 () (_ BitVec 32))

(declare-fun b!1464081 () Bool)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun e!822833 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98731 (_ BitVec 32)) SeekEntryResult!11924)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98731 (_ BitVec 32)) SeekEntryResult!11924)

(assert (=> b!1464081 (= e!822833 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640942 intermediateAfterIndex!19 lt!640937 lt!640941 mask!2687) (seekEntryOrOpen!0 lt!640937 lt!640941 mask!2687))))))

(declare-fun b!1464082 () Bool)

(assert (=> b!1464082 (= e!822833 (not (= lt!640938 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640942 lt!640937 lt!640941 mask!2687))))))

(declare-fun b!1464083 () Bool)

(declare-fun res!993311 () Bool)

(declare-fun e!822842 () Bool)

(assert (=> b!1464083 (=> (not res!993311) (not e!822842))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1464083 (= res!993311 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1464084 () Bool)

(declare-fun e!822837 () Bool)

(declare-fun e!822841 () Bool)

(assert (=> b!1464084 (= e!822837 e!822841)))

(declare-fun res!993324 () Bool)

(assert (=> b!1464084 (=> (not res!993324) (not e!822841))))

(declare-fun lt!640940 () SeekEntryResult!11924)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun a!2862 () array!98731)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1464084 (= res!993324 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47649 a!2862) j!93) mask!2687) (select (arr!47649 a!2862) j!93) a!2862 mask!2687) lt!640940))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1464084 (= lt!640940 (Intermediate!11924 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1464085 () Bool)

(declare-fun res!993309 () Bool)

(declare-fun e!822834 () Bool)

(assert (=> b!1464085 (=> (not res!993309) (not e!822834))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98731 (_ BitVec 32)) Bool)

(assert (=> b!1464085 (= res!993309 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1464086 () Bool)

(assert (=> b!1464086 (= e!822834 e!822837)))

(declare-fun res!993308 () Bool)

(assert (=> b!1464086 (=> (not res!993308) (not e!822837))))

(assert (=> b!1464086 (= res!993308 (= (select (store (arr!47649 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1464086 (= lt!640941 (array!98732 (store (arr!47649 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48200 a!2862)))))

(declare-fun b!1464087 () Bool)

(assert (=> b!1464087 (= e!822836 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!640937 lt!640941 mask!2687) (seekEntryOrOpen!0 lt!640937 lt!640941 mask!2687)))))

(declare-fun b!1464088 () Bool)

(declare-fun res!993312 () Bool)

(assert (=> b!1464088 (=> (not res!993312) (not e!822834))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1464088 (= res!993312 (validKeyInArray!0 (select (arr!47649 a!2862) j!93)))))

(declare-fun b!1464089 () Bool)

(declare-fun res!993310 () Bool)

(declare-fun e!822838 () Bool)

(assert (=> b!1464089 (=> (not res!993310) (not e!822838))))

(assert (=> b!1464089 (= res!993310 (= (seekEntryOrOpen!0 (select (arr!47649 a!2862) j!93) a!2862 mask!2687) (Found!11924 j!93)))))

(declare-fun b!1464090 () Bool)

(declare-fun res!993318 () Bool)

(assert (=> b!1464090 (=> (not res!993318) (not e!822841))))

(assert (=> b!1464090 (= res!993318 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47649 a!2862) j!93) a!2862 mask!2687) lt!640940))))

(declare-fun b!1464091 () Bool)

(declare-fun res!993323 () Bool)

(assert (=> b!1464091 (=> (not res!993323) (not e!822834))))

(assert (=> b!1464091 (= res!993323 (validKeyInArray!0 (select (arr!47649 a!2862) i!1006)))))

(declare-fun b!1464079 () Bool)

(assert (=> b!1464079 (= e!822838 (or (= (select (arr!47649 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47649 a!2862) intermediateBeforeIndex!19) (select (arr!47649 a!2862) j!93))))))

(declare-fun res!993319 () Bool)

(assert (=> start!125366 (=> (not res!993319) (not e!822834))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125366 (= res!993319 (validMask!0 mask!2687))))

(assert (=> start!125366 e!822834))

(assert (=> start!125366 true))

(declare-fun array_inv!36594 (array!98731) Bool)

(assert (=> start!125366 (array_inv!36594 a!2862)))

(declare-fun b!1464092 () Bool)

(declare-fun res!993316 () Bool)

(declare-fun e!822835 () Bool)

(assert (=> b!1464092 (=> res!993316 e!822835)))

(assert (=> b!1464092 (= res!993316 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640942 (select (arr!47649 a!2862) j!93) a!2862 mask!2687) lt!640940)))))

(declare-fun b!1464093 () Bool)

(declare-fun e!822839 () Bool)

(assert (=> b!1464093 (= e!822842 (not e!822839))))

(declare-fun res!993307 () Bool)

(assert (=> b!1464093 (=> res!993307 e!822839)))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1464093 (= res!993307 (or (and (= (select (arr!47649 a!2862) index!646) (select (store (arr!47649 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47649 a!2862) index!646) (select (arr!47649 a!2862) j!93))) (= (select (arr!47649 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(assert (=> b!1464093 e!822838))

(declare-fun res!993314 () Bool)

(assert (=> b!1464093 (=> (not res!993314) (not e!822838))))

(assert (=> b!1464093 (= res!993314 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49292 0))(
  ( (Unit!49293) )
))
(declare-fun lt!640936 () Unit!49292)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98731 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49292)

(assert (=> b!1464093 (= lt!640936 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1464094 () Bool)

(declare-fun res!993320 () Bool)

(assert (=> b!1464094 (=> (not res!993320) (not e!822842))))

(assert (=> b!1464094 (= res!993320 e!822836)))

(declare-fun c!134899 () Bool)

(assert (=> b!1464094 (= c!134899 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1464095 () Bool)

(assert (=> b!1464095 (= e!822835 true)))

(declare-fun lt!640939 () Bool)

(assert (=> b!1464095 (= lt!640939 e!822833)))

(declare-fun c!134900 () Bool)

(assert (=> b!1464095 (= c!134900 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1464096 () Bool)

(assert (=> b!1464096 (= e!822841 e!822842)))

(declare-fun res!993317 () Bool)

(assert (=> b!1464096 (=> (not res!993317) (not e!822842))))

(assert (=> b!1464096 (= res!993317 (= lt!640938 (Intermediate!11924 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1464096 (= lt!640938 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!640937 mask!2687) lt!640937 lt!640941 mask!2687))))

(assert (=> b!1464096 (= lt!640937 (select (store (arr!47649 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1464097 () Bool)

(assert (=> b!1464097 (= e!822839 e!822835)))

(declare-fun res!993315 () Bool)

(assert (=> b!1464097 (=> res!993315 e!822835)))

(assert (=> b!1464097 (= res!993315 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!640942 #b00000000000000000000000000000000) (bvsge lt!640942 (size!48200 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1464097 (= lt!640942 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1464098 () Bool)

(declare-fun res!993313 () Bool)

(assert (=> b!1464098 (=> (not res!993313) (not e!822834))))

(assert (=> b!1464098 (= res!993313 (and (= (size!48200 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48200 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48200 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1464099 () Bool)

(declare-fun res!993321 () Bool)

(assert (=> b!1464099 (=> (not res!993321) (not e!822834))))

(assert (=> b!1464099 (= res!993321 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48200 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48200 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48200 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1464100 () Bool)

(declare-fun res!993322 () Bool)

(assert (=> b!1464100 (=> (not res!993322) (not e!822834))))

(declare-datatypes ((List!34330 0))(
  ( (Nil!34327) (Cons!34326 (h!35676 (_ BitVec 64)) (t!49031 List!34330)) )
))
(declare-fun arrayNoDuplicates!0 (array!98731 (_ BitVec 32) List!34330) Bool)

(assert (=> b!1464100 (= res!993322 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34327))))

(assert (= (and start!125366 res!993319) b!1464098))

(assert (= (and b!1464098 res!993313) b!1464091))

(assert (= (and b!1464091 res!993323) b!1464088))

(assert (= (and b!1464088 res!993312) b!1464085))

(assert (= (and b!1464085 res!993309) b!1464100))

(assert (= (and b!1464100 res!993322) b!1464099))

(assert (= (and b!1464099 res!993321) b!1464086))

(assert (= (and b!1464086 res!993308) b!1464084))

(assert (= (and b!1464084 res!993324) b!1464090))

(assert (= (and b!1464090 res!993318) b!1464096))

(assert (= (and b!1464096 res!993317) b!1464094))

(assert (= (and b!1464094 c!134899) b!1464080))

(assert (= (and b!1464094 (not c!134899)) b!1464087))

(assert (= (and b!1464094 res!993320) b!1464083))

(assert (= (and b!1464083 res!993311) b!1464093))

(assert (= (and b!1464093 res!993314) b!1464089))

(assert (= (and b!1464089 res!993310) b!1464079))

(assert (= (and b!1464093 (not res!993307)) b!1464097))

(assert (= (and b!1464097 (not res!993315)) b!1464092))

(assert (= (and b!1464092 (not res!993316)) b!1464095))

(assert (= (and b!1464095 c!134900) b!1464082))

(assert (= (and b!1464095 (not c!134900)) b!1464081))

(declare-fun m!1351385 () Bool)

(assert (=> b!1464080 m!1351385))

(declare-fun m!1351387 () Bool)

(assert (=> b!1464082 m!1351387))

(declare-fun m!1351389 () Bool)

(assert (=> b!1464100 m!1351389))

(declare-fun m!1351391 () Bool)

(assert (=> b!1464089 m!1351391))

(assert (=> b!1464089 m!1351391))

(declare-fun m!1351393 () Bool)

(assert (=> b!1464089 m!1351393))

(declare-fun m!1351395 () Bool)

(assert (=> b!1464091 m!1351395))

(assert (=> b!1464091 m!1351395))

(declare-fun m!1351397 () Bool)

(assert (=> b!1464091 m!1351397))

(declare-fun m!1351399 () Bool)

(assert (=> b!1464093 m!1351399))

(declare-fun m!1351401 () Bool)

(assert (=> b!1464093 m!1351401))

(declare-fun m!1351403 () Bool)

(assert (=> b!1464093 m!1351403))

(declare-fun m!1351405 () Bool)

(assert (=> b!1464093 m!1351405))

(declare-fun m!1351407 () Bool)

(assert (=> b!1464093 m!1351407))

(assert (=> b!1464093 m!1351391))

(declare-fun m!1351409 () Bool)

(assert (=> b!1464087 m!1351409))

(declare-fun m!1351411 () Bool)

(assert (=> b!1464087 m!1351411))

(declare-fun m!1351413 () Bool)

(assert (=> b!1464081 m!1351413))

(assert (=> b!1464081 m!1351411))

(declare-fun m!1351415 () Bool)

(assert (=> b!1464085 m!1351415))

(declare-fun m!1351417 () Bool)

(assert (=> start!125366 m!1351417))

(declare-fun m!1351419 () Bool)

(assert (=> start!125366 m!1351419))

(assert (=> b!1464088 m!1351391))

(assert (=> b!1464088 m!1351391))

(declare-fun m!1351421 () Bool)

(assert (=> b!1464088 m!1351421))

(declare-fun m!1351423 () Bool)

(assert (=> b!1464079 m!1351423))

(assert (=> b!1464079 m!1351391))

(assert (=> b!1464092 m!1351391))

(assert (=> b!1464092 m!1351391))

(declare-fun m!1351425 () Bool)

(assert (=> b!1464092 m!1351425))

(declare-fun m!1351427 () Bool)

(assert (=> b!1464097 m!1351427))

(assert (=> b!1464086 m!1351401))

(declare-fun m!1351429 () Bool)

(assert (=> b!1464086 m!1351429))

(assert (=> b!1464084 m!1351391))

(assert (=> b!1464084 m!1351391))

(declare-fun m!1351431 () Bool)

(assert (=> b!1464084 m!1351431))

(assert (=> b!1464084 m!1351431))

(assert (=> b!1464084 m!1351391))

(declare-fun m!1351433 () Bool)

(assert (=> b!1464084 m!1351433))

(declare-fun m!1351435 () Bool)

(assert (=> b!1464096 m!1351435))

(assert (=> b!1464096 m!1351435))

(declare-fun m!1351437 () Bool)

(assert (=> b!1464096 m!1351437))

(assert (=> b!1464096 m!1351401))

(declare-fun m!1351439 () Bool)

(assert (=> b!1464096 m!1351439))

(assert (=> b!1464090 m!1351391))

(assert (=> b!1464090 m!1351391))

(declare-fun m!1351441 () Bool)

(assert (=> b!1464090 m!1351441))

(push 1)

