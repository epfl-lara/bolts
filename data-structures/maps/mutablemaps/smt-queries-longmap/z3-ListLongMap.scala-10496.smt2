; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!123594 () Bool)

(assert start!123594)

(declare-fun res!966380 () Bool)

(declare-fun e!808602 () Bool)

(assert (=> start!123594 (=> (not res!966380) (not e!808602))))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123594 (= res!966380 (validMask!0 mask!2608))))

(assert (=> start!123594 e!808602))

(assert (=> start!123594 true))

(declare-datatypes ((array!97484 0))(
  ( (array!97485 (arr!47045 (Array (_ BitVec 32) (_ BitVec 64))) (size!47596 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97484)

(declare-fun array_inv!35990 (array!97484) Bool)

(assert (=> start!123594 (array_inv!35990 a!2831)))

(declare-fun b!1432401 () Bool)

(declare-fun e!808603 () Bool)

(declare-fun e!808607 () Bool)

(assert (=> b!1432401 (= e!808603 e!808607)))

(declare-fun res!966374 () Bool)

(assert (=> b!1432401 (=> (not res!966374) (not e!808607))))

(declare-fun lt!630555 () array!97484)

(declare-fun lt!630554 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!11346 0))(
  ( (MissingZero!11346 (index!47775 (_ BitVec 32))) (Found!11346 (index!47776 (_ BitVec 32))) (Intermediate!11346 (undefined!12158 Bool) (index!47777 (_ BitVec 32)) (x!129423 (_ BitVec 32))) (Undefined!11346) (MissingVacant!11346 (index!47778 (_ BitVec 32))) )
))
(declare-fun lt!630556 () SeekEntryResult!11346)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97484 (_ BitVec 32)) SeekEntryResult!11346)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1432401 (= res!966374 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!630554 mask!2608) lt!630554 lt!630555 mask!2608) lt!630556))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1432401 (= lt!630556 (Intermediate!11346 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1432401 (= lt!630554 (select (store (arr!47045 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1432401 (= lt!630555 (array!97485 (store (arr!47045 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47596 a!2831)))))

(declare-fun b!1432402 () Bool)

(declare-fun res!966381 () Bool)

(assert (=> b!1432402 (=> (not res!966381) (not e!808607))))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1432402 (= res!966381 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!630554 lt!630555 mask!2608) lt!630556))))

(declare-fun b!1432403 () Bool)

(declare-fun res!966382 () Bool)

(assert (=> b!1432403 (=> (not res!966382) (not e!808602))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1432403 (= res!966382 (validKeyInArray!0 (select (arr!47045 a!2831) j!81)))))

(declare-fun b!1432404 () Bool)

(declare-fun e!808605 () Bool)

(assert (=> b!1432404 (= e!808605 true)))

(declare-fun lt!630551 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1432404 (= lt!630551 (nextIndex!0 index!585 x!605 mask!2608))))

(declare-fun b!1432405 () Bool)

(declare-fun res!966386 () Bool)

(assert (=> b!1432405 (=> (not res!966386) (not e!808607))))

(declare-fun lt!630553 () SeekEntryResult!11346)

(assert (=> b!1432405 (= res!966386 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!47045 a!2831) j!81) a!2831 mask!2608) lt!630553))))

(declare-fun b!1432406 () Bool)

(declare-fun res!966376 () Bool)

(assert (=> b!1432406 (=> (not res!966376) (not e!808602))))

(declare-datatypes ((List!33735 0))(
  ( (Nil!33732) (Cons!33731 (h!35054 (_ BitVec 64)) (t!48436 List!33735)) )
))
(declare-fun arrayNoDuplicates!0 (array!97484 (_ BitVec 32) List!33735) Bool)

(assert (=> b!1432406 (= res!966376 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33732))))

(declare-fun b!1432407 () Bool)

(assert (=> b!1432407 (= e!808607 (not e!808605))))

(declare-fun res!966384 () Bool)

(assert (=> b!1432407 (=> res!966384 e!808605)))

(assert (=> b!1432407 (= res!966384 (or (= (select (arr!47045 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47045 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47045 a!2831) index!585) (select (arr!47045 a!2831) j!81)) (= (select (store (arr!47045 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!808604 () Bool)

(assert (=> b!1432407 e!808604))

(declare-fun res!966387 () Bool)

(assert (=> b!1432407 (=> (not res!966387) (not e!808604))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97484 (_ BitVec 32)) Bool)

(assert (=> b!1432407 (= res!966387 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48386 0))(
  ( (Unit!48387) )
))
(declare-fun lt!630552 () Unit!48386)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97484 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48386)

(assert (=> b!1432407 (= lt!630552 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1432408 () Bool)

(declare-fun res!966383 () Bool)

(assert (=> b!1432408 (=> (not res!966383) (not e!808602))))

(assert (=> b!1432408 (= res!966383 (and (= (size!47596 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47596 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47596 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1432409 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97484 (_ BitVec 32)) SeekEntryResult!11346)

(assert (=> b!1432409 (= e!808604 (= (seekEntryOrOpen!0 (select (arr!47045 a!2831) j!81) a!2831 mask!2608) (Found!11346 j!81)))))

(declare-fun b!1432410 () Bool)

(declare-fun res!966377 () Bool)

(assert (=> b!1432410 (=> (not res!966377) (not e!808602))))

(assert (=> b!1432410 (= res!966377 (validKeyInArray!0 (select (arr!47045 a!2831) i!982)))))

(declare-fun b!1432411 () Bool)

(declare-fun res!966378 () Bool)

(assert (=> b!1432411 (=> (not res!966378) (not e!808602))))

(assert (=> b!1432411 (= res!966378 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1432412 () Bool)

(assert (=> b!1432412 (= e!808602 e!808603)))

(declare-fun res!966379 () Bool)

(assert (=> b!1432412 (=> (not res!966379) (not e!808603))))

(assert (=> b!1432412 (= res!966379 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47045 a!2831) j!81) mask!2608) (select (arr!47045 a!2831) j!81) a!2831 mask!2608) lt!630553))))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(assert (=> b!1432412 (= lt!630553 (Intermediate!11346 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1432413 () Bool)

(declare-fun res!966375 () Bool)

(assert (=> b!1432413 (=> (not res!966375) (not e!808602))))

(assert (=> b!1432413 (= res!966375 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47596 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47596 a!2831))))))

(declare-fun b!1432414 () Bool)

(declare-fun res!966385 () Bool)

(assert (=> b!1432414 (=> (not res!966385) (not e!808607))))

(assert (=> b!1432414 (= res!966385 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(assert (= (and start!123594 res!966380) b!1432408))

(assert (= (and b!1432408 res!966383) b!1432410))

(assert (= (and b!1432410 res!966377) b!1432403))

(assert (= (and b!1432403 res!966382) b!1432411))

(assert (= (and b!1432411 res!966378) b!1432406))

(assert (= (and b!1432406 res!966376) b!1432413))

(assert (= (and b!1432413 res!966375) b!1432412))

(assert (= (and b!1432412 res!966379) b!1432401))

(assert (= (and b!1432401 res!966374) b!1432405))

(assert (= (and b!1432405 res!966386) b!1432402))

(assert (= (and b!1432402 res!966381) b!1432414))

(assert (= (and b!1432414 res!966385) b!1432407))

(assert (= (and b!1432407 res!966387) b!1432409))

(assert (= (and b!1432407 (not res!966384)) b!1432404))

(declare-fun m!1322269 () Bool)

(assert (=> b!1432409 m!1322269))

(assert (=> b!1432409 m!1322269))

(declare-fun m!1322271 () Bool)

(assert (=> b!1432409 m!1322271))

(declare-fun m!1322273 () Bool)

(assert (=> b!1432410 m!1322273))

(assert (=> b!1432410 m!1322273))

(declare-fun m!1322275 () Bool)

(assert (=> b!1432410 m!1322275))

(assert (=> b!1432412 m!1322269))

(assert (=> b!1432412 m!1322269))

(declare-fun m!1322277 () Bool)

(assert (=> b!1432412 m!1322277))

(assert (=> b!1432412 m!1322277))

(assert (=> b!1432412 m!1322269))

(declare-fun m!1322279 () Bool)

(assert (=> b!1432412 m!1322279))

(declare-fun m!1322281 () Bool)

(assert (=> start!123594 m!1322281))

(declare-fun m!1322283 () Bool)

(assert (=> start!123594 m!1322283))

(declare-fun m!1322285 () Bool)

(assert (=> b!1432404 m!1322285))

(declare-fun m!1322287 () Bool)

(assert (=> b!1432402 m!1322287))

(declare-fun m!1322289 () Bool)

(assert (=> b!1432401 m!1322289))

(assert (=> b!1432401 m!1322289))

(declare-fun m!1322291 () Bool)

(assert (=> b!1432401 m!1322291))

(declare-fun m!1322293 () Bool)

(assert (=> b!1432401 m!1322293))

(declare-fun m!1322295 () Bool)

(assert (=> b!1432401 m!1322295))

(assert (=> b!1432403 m!1322269))

(assert (=> b!1432403 m!1322269))

(declare-fun m!1322297 () Bool)

(assert (=> b!1432403 m!1322297))

(declare-fun m!1322299 () Bool)

(assert (=> b!1432406 m!1322299))

(assert (=> b!1432407 m!1322293))

(declare-fun m!1322301 () Bool)

(assert (=> b!1432407 m!1322301))

(declare-fun m!1322303 () Bool)

(assert (=> b!1432407 m!1322303))

(declare-fun m!1322305 () Bool)

(assert (=> b!1432407 m!1322305))

(assert (=> b!1432407 m!1322269))

(declare-fun m!1322307 () Bool)

(assert (=> b!1432407 m!1322307))

(assert (=> b!1432405 m!1322269))

(assert (=> b!1432405 m!1322269))

(declare-fun m!1322309 () Bool)

(assert (=> b!1432405 m!1322309))

(declare-fun m!1322311 () Bool)

(assert (=> b!1432411 m!1322311))

(check-sat (not b!1432407) (not b!1432409) (not b!1432402) (not start!123594) (not b!1432406) (not b!1432405) (not b!1432410) (not b!1432404) (not b!1432401) (not b!1432411) (not b!1432412) (not b!1432403))
(check-sat)
