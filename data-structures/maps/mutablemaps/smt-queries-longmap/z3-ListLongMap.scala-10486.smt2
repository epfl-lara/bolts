; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!123390 () Bool)

(assert start!123390)

(declare-fun b!1430262 () Bool)

(declare-fun res!964799 () Bool)

(declare-fun e!807540 () Bool)

(assert (=> b!1430262 (=> (not res!964799) (not e!807540))))

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((array!97418 0))(
  ( (array!97419 (arr!47015 (Array (_ BitVec 32) (_ BitVec 64))) (size!47566 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97418)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1430262 (= res!964799 (and (= (size!47566 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47566 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47566 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1430263 () Bool)

(declare-fun e!807539 () Bool)

(declare-fun e!807542 () Bool)

(assert (=> b!1430263 (= e!807539 e!807542)))

(declare-fun res!964804 () Bool)

(assert (=> b!1430263 (=> (not res!964804) (not e!807542))))

(declare-fun lt!629667 () (_ BitVec 64))

(declare-fun lt!629665 () array!97418)

(declare-datatypes ((SeekEntryResult!11316 0))(
  ( (MissingZero!11316 (index!47655 (_ BitVec 32))) (Found!11316 (index!47656 (_ BitVec 32))) (Intermediate!11316 (undefined!12128 Bool) (index!47657 (_ BitVec 32)) (x!129295 (_ BitVec 32))) (Undefined!11316) (MissingVacant!11316 (index!47658 (_ BitVec 32))) )
))
(declare-fun lt!629664 () SeekEntryResult!11316)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97418 (_ BitVec 32)) SeekEntryResult!11316)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1430263 (= res!964804 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!629667 mask!2608) lt!629667 lt!629665 mask!2608) lt!629664))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1430263 (= lt!629664 (Intermediate!11316 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1430263 (= lt!629667 (select (store (arr!47015 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1430263 (= lt!629665 (array!97419 (store (arr!47015 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47566 a!2831)))))

(declare-fun b!1430264 () Bool)

(declare-fun res!964803 () Bool)

(assert (=> b!1430264 (=> (not res!964803) (not e!807540))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1430264 (= res!964803 (validKeyInArray!0 (select (arr!47015 a!2831) i!982)))))

(declare-fun b!1430265 () Bool)

(assert (=> b!1430265 (= e!807540 e!807539)))

(declare-fun res!964810 () Bool)

(assert (=> b!1430265 (=> (not res!964810) (not e!807539))))

(declare-fun lt!629666 () SeekEntryResult!11316)

(assert (=> b!1430265 (= res!964810 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47015 a!2831) j!81) mask!2608) (select (arr!47015 a!2831) j!81) a!2831 mask!2608) lt!629666))))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(assert (=> b!1430265 (= lt!629666 (Intermediate!11316 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun e!807541 () Bool)

(declare-fun index!585 () (_ BitVec 32))

(declare-fun b!1430266 () Bool)

(assert (=> b!1430266 (= e!807541 (or (= (select (arr!47015 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47015 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47015 a!2831) index!585) (select (arr!47015 a!2831) j!81)) (not (= (select (store (arr!47015 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)) (= index!585 intermediateAfterIndex!13)))))

(declare-fun res!964809 () Bool)

(assert (=> start!123390 (=> (not res!964809) (not e!807540))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123390 (= res!964809 (validMask!0 mask!2608))))

(assert (=> start!123390 e!807540))

(assert (=> start!123390 true))

(declare-fun array_inv!35960 (array!97418) Bool)

(assert (=> start!123390 (array_inv!35960 a!2831)))

(declare-fun b!1430267 () Bool)

(declare-fun res!964802 () Bool)

(assert (=> b!1430267 (=> (not res!964802) (not e!807541))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97418 (_ BitVec 32)) SeekEntryResult!11316)

(assert (=> b!1430267 (= res!964802 (= (seekEntryOrOpen!0 (select (arr!47015 a!2831) j!81) a!2831 mask!2608) (Found!11316 j!81)))))

(declare-fun b!1430268 () Bool)

(declare-fun res!964811 () Bool)

(assert (=> b!1430268 (=> (not res!964811) (not e!807542))))

(assert (=> b!1430268 (= res!964811 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1430269 () Bool)

(declare-fun res!964800 () Bool)

(assert (=> b!1430269 (=> (not res!964800) (not e!807542))))

(declare-fun x!605 () (_ BitVec 32))

(assert (=> b!1430269 (= res!964800 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!47015 a!2831) j!81) a!2831 mask!2608) lt!629666))))

(declare-fun b!1430270 () Bool)

(declare-fun res!964808 () Bool)

(assert (=> b!1430270 (=> (not res!964808) (not e!807542))))

(assert (=> b!1430270 (= res!964808 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!629667 lt!629665 mask!2608) lt!629664))))

(declare-fun b!1430271 () Bool)

(assert (=> b!1430271 (= e!807542 (not (or (= (select (arr!47015 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47015 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47015 a!2831) index!585) (select (arr!47015 a!2831) j!81)) (not (= (select (store (arr!47015 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)) (= intermediateAfterIndex!13 i!982))))))

(assert (=> b!1430271 e!807541))

(declare-fun res!964807 () Bool)

(assert (=> b!1430271 (=> (not res!964807) (not e!807541))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97418 (_ BitVec 32)) Bool)

(assert (=> b!1430271 (= res!964807 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48326 0))(
  ( (Unit!48327) )
))
(declare-fun lt!629668 () Unit!48326)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97418 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48326)

(assert (=> b!1430271 (= lt!629668 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1430272 () Bool)

(declare-fun res!964805 () Bool)

(assert (=> b!1430272 (=> (not res!964805) (not e!807540))))

(assert (=> b!1430272 (= res!964805 (validKeyInArray!0 (select (arr!47015 a!2831) j!81)))))

(declare-fun b!1430273 () Bool)

(declare-fun res!964806 () Bool)

(assert (=> b!1430273 (=> (not res!964806) (not e!807540))))

(declare-datatypes ((List!33705 0))(
  ( (Nil!33702) (Cons!33701 (h!35018 (_ BitVec 64)) (t!48406 List!33705)) )
))
(declare-fun arrayNoDuplicates!0 (array!97418 (_ BitVec 32) List!33705) Bool)

(assert (=> b!1430273 (= res!964806 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33702))))

(declare-fun b!1430274 () Bool)

(declare-fun res!964812 () Bool)

(assert (=> b!1430274 (=> (not res!964812) (not e!807540))))

(assert (=> b!1430274 (= res!964812 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1430275 () Bool)

(declare-fun res!964801 () Bool)

(assert (=> b!1430275 (=> (not res!964801) (not e!807540))))

(assert (=> b!1430275 (= res!964801 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47566 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47566 a!2831))))))

(assert (= (and start!123390 res!964809) b!1430262))

(assert (= (and b!1430262 res!964799) b!1430264))

(assert (= (and b!1430264 res!964803) b!1430272))

(assert (= (and b!1430272 res!964805) b!1430274))

(assert (= (and b!1430274 res!964812) b!1430273))

(assert (= (and b!1430273 res!964806) b!1430275))

(assert (= (and b!1430275 res!964801) b!1430265))

(assert (= (and b!1430265 res!964810) b!1430263))

(assert (= (and b!1430263 res!964804) b!1430269))

(assert (= (and b!1430269 res!964800) b!1430270))

(assert (= (and b!1430270 res!964808) b!1430268))

(assert (= (and b!1430268 res!964811) b!1430271))

(assert (= (and b!1430271 res!964807) b!1430267))

(assert (= (and b!1430267 res!964802) b!1430266))

(declare-fun m!1320293 () Bool)

(assert (=> b!1430274 m!1320293))

(declare-fun m!1320295 () Bool)

(assert (=> start!123390 m!1320295))

(declare-fun m!1320297 () Bool)

(assert (=> start!123390 m!1320297))

(declare-fun m!1320299 () Bool)

(assert (=> b!1430271 m!1320299))

(declare-fun m!1320301 () Bool)

(assert (=> b!1430271 m!1320301))

(declare-fun m!1320303 () Bool)

(assert (=> b!1430271 m!1320303))

(declare-fun m!1320305 () Bool)

(assert (=> b!1430271 m!1320305))

(declare-fun m!1320307 () Bool)

(assert (=> b!1430271 m!1320307))

(declare-fun m!1320309 () Bool)

(assert (=> b!1430271 m!1320309))

(assert (=> b!1430266 m!1320303))

(assert (=> b!1430266 m!1320307))

(assert (=> b!1430266 m!1320299))

(assert (=> b!1430266 m!1320301))

(declare-fun m!1320311 () Bool)

(assert (=> b!1430263 m!1320311))

(assert (=> b!1430263 m!1320311))

(declare-fun m!1320313 () Bool)

(assert (=> b!1430263 m!1320313))

(assert (=> b!1430263 m!1320299))

(declare-fun m!1320315 () Bool)

(assert (=> b!1430263 m!1320315))

(assert (=> b!1430267 m!1320307))

(assert (=> b!1430267 m!1320307))

(declare-fun m!1320317 () Bool)

(assert (=> b!1430267 m!1320317))

(assert (=> b!1430269 m!1320307))

(assert (=> b!1430269 m!1320307))

(declare-fun m!1320319 () Bool)

(assert (=> b!1430269 m!1320319))

(declare-fun m!1320321 () Bool)

(assert (=> b!1430270 m!1320321))

(declare-fun m!1320323 () Bool)

(assert (=> b!1430273 m!1320323))

(assert (=> b!1430265 m!1320307))

(assert (=> b!1430265 m!1320307))

(declare-fun m!1320325 () Bool)

(assert (=> b!1430265 m!1320325))

(assert (=> b!1430265 m!1320325))

(assert (=> b!1430265 m!1320307))

(declare-fun m!1320327 () Bool)

(assert (=> b!1430265 m!1320327))

(declare-fun m!1320329 () Bool)

(assert (=> b!1430264 m!1320329))

(assert (=> b!1430264 m!1320329))

(declare-fun m!1320331 () Bool)

(assert (=> b!1430264 m!1320331))

(assert (=> b!1430272 m!1320307))

(assert (=> b!1430272 m!1320307))

(declare-fun m!1320333 () Bool)

(assert (=> b!1430272 m!1320333))

(check-sat (not b!1430264) (not b!1430269) (not b!1430271) (not b!1430263) (not start!123390) (not b!1430267) (not b!1430265) (not b!1430273) (not b!1430274) (not b!1430272) (not b!1430270))
(check-sat)
