; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124616 () Bool)

(assert start!124616)

(declare-fun b!1441946 () Bool)

(declare-fun e!812796 () Bool)

(declare-fun e!812794 () Bool)

(assert (=> b!1441946 (= e!812796 e!812794)))

(declare-fun res!974332 () Bool)

(assert (=> b!1441946 (=> (not res!974332) (not e!812794))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!97981 0))(
  ( (array!97982 (arr!47274 (Array (_ BitVec 32) (_ BitVec 64))) (size!47825 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97981)

(assert (=> b!1441946 (= res!974332 (= (select (store (arr!47274 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!633380 () array!97981)

(assert (=> b!1441946 (= lt!633380 (array!97982 (store (arr!47274 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47825 a!2862)))))

(declare-fun b!1441947 () Bool)

(declare-fun e!812798 () Bool)

(declare-fun e!812793 () Bool)

(assert (=> b!1441947 (= e!812798 e!812793)))

(declare-fun res!974324 () Bool)

(assert (=> b!1441947 (=> (not res!974324) (not e!812793))))

(declare-datatypes ((SeekEntryResult!11549 0))(
  ( (MissingZero!11549 (index!48587 (_ BitVec 32))) (Found!11549 (index!48588 (_ BitVec 32))) (Intermediate!11549 (undefined!12361 Bool) (index!48589 (_ BitVec 32)) (x!130297 (_ BitVec 32))) (Undefined!11549) (MissingVacant!11549 (index!48590 (_ BitVec 32))) )
))
(declare-fun lt!633381 () SeekEntryResult!11549)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1441947 (= res!974324 (= lt!633381 (Intermediate!11549 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun lt!633379 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97981 (_ BitVec 32)) SeekEntryResult!11549)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1441947 (= lt!633381 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!633379 mask!2687) lt!633379 lt!633380 mask!2687))))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1441947 (= lt!633379 (select (store (arr!47274 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun b!1441948 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun e!812797 () Bool)

(assert (=> b!1441948 (= e!812797 (= lt!633381 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!633379 lt!633380 mask!2687)))))

(declare-fun b!1441949 () Bool)

(declare-fun res!974331 () Bool)

(assert (=> b!1441949 (=> (not res!974331) (not e!812796))))

(assert (=> b!1441949 (= res!974331 (and (= (size!47825 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47825 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47825 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1441950 () Bool)

(declare-fun res!974328 () Bool)

(assert (=> b!1441950 (=> (not res!974328) (not e!812796))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1441950 (= res!974328 (validKeyInArray!0 (select (arr!47274 a!2862) j!93)))))

(declare-fun b!1441951 () Bool)

(assert (=> b!1441951 (= e!812793 (not true))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97981 (_ BitVec 32)) Bool)

(assert (=> b!1441951 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!48542 0))(
  ( (Unit!48543) )
))
(declare-fun lt!633378 () Unit!48542)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97981 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48542)

(assert (=> b!1441951 (= lt!633378 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1441952 () Bool)

(declare-fun res!974322 () Bool)

(assert (=> b!1441952 (=> (not res!974322) (not e!812793))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1441952 (= res!974322 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1441953 () Bool)

(declare-fun res!974334 () Bool)

(assert (=> b!1441953 (=> (not res!974334) (not e!812796))))

(declare-datatypes ((List!33955 0))(
  ( (Nil!33952) (Cons!33951 (h!35301 (_ BitVec 64)) (t!48656 List!33955)) )
))
(declare-fun arrayNoDuplicates!0 (array!97981 (_ BitVec 32) List!33955) Bool)

(assert (=> b!1441953 (= res!974334 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33952))))

(declare-fun b!1441955 () Bool)

(declare-fun res!974325 () Bool)

(assert (=> b!1441955 (=> (not res!974325) (not e!812796))))

(assert (=> b!1441955 (= res!974325 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1441956 () Bool)

(declare-fun res!974333 () Bool)

(assert (=> b!1441956 (=> (not res!974333) (not e!812793))))

(assert (=> b!1441956 (= res!974333 e!812797)))

(declare-fun c!133325 () Bool)

(assert (=> b!1441956 (= c!133325 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1441957 () Bool)

(declare-fun res!974330 () Bool)

(assert (=> b!1441957 (=> (not res!974330) (not e!812796))))

(assert (=> b!1441957 (= res!974330 (validKeyInArray!0 (select (arr!47274 a!2862) i!1006)))))

(declare-fun b!1441958 () Bool)

(assert (=> b!1441958 (= e!812794 e!812798)))

(declare-fun res!974327 () Bool)

(assert (=> b!1441958 (=> (not res!974327) (not e!812798))))

(declare-fun lt!633382 () SeekEntryResult!11549)

(assert (=> b!1441958 (= res!974327 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47274 a!2862) j!93) mask!2687) (select (arr!47274 a!2862) j!93) a!2862 mask!2687) lt!633382))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1441958 (= lt!633382 (Intermediate!11549 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1441959 () Bool)

(declare-fun res!974323 () Bool)

(assert (=> b!1441959 (=> (not res!974323) (not e!812798))))

(assert (=> b!1441959 (= res!974323 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47274 a!2862) j!93) a!2862 mask!2687) lt!633382))))

(declare-fun b!1441960 () Bool)

(declare-fun res!974329 () Bool)

(assert (=> b!1441960 (=> (not res!974329) (not e!812796))))

(assert (=> b!1441960 (= res!974329 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47825 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47825 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47825 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1441954 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97981 (_ BitVec 32)) SeekEntryResult!11549)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97981 (_ BitVec 32)) SeekEntryResult!11549)

(assert (=> b!1441954 (= e!812797 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!633379 lt!633380 mask!2687) (seekEntryOrOpen!0 lt!633379 lt!633380 mask!2687)))))

(declare-fun res!974326 () Bool)

(assert (=> start!124616 (=> (not res!974326) (not e!812796))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124616 (= res!974326 (validMask!0 mask!2687))))

(assert (=> start!124616 e!812796))

(assert (=> start!124616 true))

(declare-fun array_inv!36219 (array!97981) Bool)

(assert (=> start!124616 (array_inv!36219 a!2862)))

(assert (= (and start!124616 res!974326) b!1441949))

(assert (= (and b!1441949 res!974331) b!1441957))

(assert (= (and b!1441957 res!974330) b!1441950))

(assert (= (and b!1441950 res!974328) b!1441955))

(assert (= (and b!1441955 res!974325) b!1441953))

(assert (= (and b!1441953 res!974334) b!1441960))

(assert (= (and b!1441960 res!974329) b!1441946))

(assert (= (and b!1441946 res!974332) b!1441958))

(assert (= (and b!1441958 res!974327) b!1441959))

(assert (= (and b!1441959 res!974323) b!1441947))

(assert (= (and b!1441947 res!974324) b!1441956))

(assert (= (and b!1441956 c!133325) b!1441948))

(assert (= (and b!1441956 (not c!133325)) b!1441954))

(assert (= (and b!1441956 res!974333) b!1441952))

(assert (= (and b!1441952 res!974322) b!1441951))

(declare-fun m!1331187 () Bool)

(assert (=> start!124616 m!1331187))

(declare-fun m!1331189 () Bool)

(assert (=> start!124616 m!1331189))

(declare-fun m!1331191 () Bool)

(assert (=> b!1441948 m!1331191))

(declare-fun m!1331193 () Bool)

(assert (=> b!1441957 m!1331193))

(assert (=> b!1441957 m!1331193))

(declare-fun m!1331195 () Bool)

(assert (=> b!1441957 m!1331195))

(declare-fun m!1331197 () Bool)

(assert (=> b!1441958 m!1331197))

(assert (=> b!1441958 m!1331197))

(declare-fun m!1331199 () Bool)

(assert (=> b!1441958 m!1331199))

(assert (=> b!1441958 m!1331199))

(assert (=> b!1441958 m!1331197))

(declare-fun m!1331201 () Bool)

(assert (=> b!1441958 m!1331201))

(declare-fun m!1331203 () Bool)

(assert (=> b!1441946 m!1331203))

(declare-fun m!1331205 () Bool)

(assert (=> b!1441946 m!1331205))

(assert (=> b!1441950 m!1331197))

(assert (=> b!1441950 m!1331197))

(declare-fun m!1331207 () Bool)

(assert (=> b!1441950 m!1331207))

(declare-fun m!1331209 () Bool)

(assert (=> b!1441954 m!1331209))

(declare-fun m!1331211 () Bool)

(assert (=> b!1441954 m!1331211))

(declare-fun m!1331213 () Bool)

(assert (=> b!1441953 m!1331213))

(declare-fun m!1331215 () Bool)

(assert (=> b!1441947 m!1331215))

(assert (=> b!1441947 m!1331215))

(declare-fun m!1331217 () Bool)

(assert (=> b!1441947 m!1331217))

(assert (=> b!1441947 m!1331203))

(declare-fun m!1331219 () Bool)

(assert (=> b!1441947 m!1331219))

(declare-fun m!1331221 () Bool)

(assert (=> b!1441955 m!1331221))

(assert (=> b!1441959 m!1331197))

(assert (=> b!1441959 m!1331197))

(declare-fun m!1331223 () Bool)

(assert (=> b!1441959 m!1331223))

(declare-fun m!1331225 () Bool)

(assert (=> b!1441951 m!1331225))

(declare-fun m!1331227 () Bool)

(assert (=> b!1441951 m!1331227))

(push 1)

(assert (not b!1441948))

(assert (not start!124616))

