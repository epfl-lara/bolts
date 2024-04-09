; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!122754 () Bool)

(assert start!122754)

(declare-fun b!1421728 () Bool)

(declare-fun e!803857 () Bool)

(declare-fun e!803859 () Bool)

(assert (=> b!1421728 (= e!803857 e!803859)))

(declare-fun res!957277 () Bool)

(assert (=> b!1421728 (=> (not res!957277) (not e!803859))))

(declare-datatypes ((SeekEntryResult!11139 0))(
  ( (MissingZero!11139 (index!46947 (_ BitVec 32))) (Found!11139 (index!46948 (_ BitVec 32))) (Intermediate!11139 (undefined!11951 Bool) (index!46949 (_ BitVec 32)) (x!128600 (_ BitVec 32))) (Undefined!11139) (MissingVacant!11139 (index!46950 (_ BitVec 32))) )
))
(declare-fun lt!626352 () SeekEntryResult!11139)

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((array!97037 0))(
  ( (array!97038 (arr!46832 (Array (_ BitVec 32) (_ BitVec 64))) (size!47383 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97037)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97037 (_ BitVec 32)) SeekEntryResult!11139)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1421728 (= res!957277 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46832 a!2831) j!81) mask!2608) (select (arr!46832 a!2831) j!81) a!2831 mask!2608) lt!626352))))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(assert (=> b!1421728 (= lt!626352 (Intermediate!11139 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1421730 () Bool)

(declare-fun res!957278 () Bool)

(assert (=> b!1421730 (=> (not res!957278) (not e!803857))))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1421730 (= res!957278 (and (= (size!47383 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47383 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47383 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1421731 () Bool)

(declare-fun res!957275 () Bool)

(declare-fun e!803861 () Bool)

(assert (=> b!1421731 (=> (not res!957275) (not e!803861))))

(declare-fun lt!626353 () SeekEntryResult!11139)

(declare-fun lt!626351 () array!97037)

(declare-fun index!585 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun lt!626349 () (_ BitVec 64))

(assert (=> b!1421731 (= res!957275 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!626349 lt!626351 mask!2608) lt!626353))))

(declare-fun b!1421732 () Bool)

(declare-fun res!957280 () Bool)

(assert (=> b!1421732 (=> (not res!957280) (not e!803857))))

(declare-datatypes ((List!33522 0))(
  ( (Nil!33519) (Cons!33518 (h!34820 (_ BitVec 64)) (t!48223 List!33522)) )
))
(declare-fun arrayNoDuplicates!0 (array!97037 (_ BitVec 32) List!33522) Bool)

(assert (=> b!1421732 (= res!957280 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33519))))

(declare-fun b!1421733 () Bool)

(declare-fun res!957276 () Bool)

(assert (=> b!1421733 (=> (not res!957276) (not e!803857))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1421733 (= res!957276 (validKeyInArray!0 (select (arr!46832 a!2831) i!982)))))

(declare-fun e!803858 () Bool)

(declare-fun b!1421734 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97037 (_ BitVec 32)) SeekEntryResult!11139)

(assert (=> b!1421734 (= e!803858 (= (seekEntryOrOpen!0 (select (arr!46832 a!2831) j!81) a!2831 mask!2608) (Found!11139 j!81)))))

(declare-fun b!1421735 () Bool)

(declare-fun res!957274 () Bool)

(assert (=> b!1421735 (=> (not res!957274) (not e!803861))))

(assert (=> b!1421735 (= res!957274 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46832 a!2831) j!81) a!2831 mask!2608) lt!626352))))

(declare-fun b!1421736 () Bool)

(declare-fun res!957281 () Bool)

(assert (=> b!1421736 (=> (not res!957281) (not e!803857))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97037 (_ BitVec 32)) Bool)

(assert (=> b!1421736 (= res!957281 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun res!957270 () Bool)

(assert (=> start!122754 (=> (not res!957270) (not e!803857))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122754 (= res!957270 (validMask!0 mask!2608))))

(assert (=> start!122754 e!803857))

(assert (=> start!122754 true))

(declare-fun array_inv!35777 (array!97037) Bool)

(assert (=> start!122754 (array_inv!35777 a!2831)))

(declare-fun b!1421729 () Bool)

(assert (=> b!1421729 (= e!803861 (not (or (= (select (arr!46832 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46832 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46832 a!2831) index!585) (select (arr!46832 a!2831) j!81)) (= (select (store (arr!46832 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (bvslt mask!2608 #b00000000000000000000000000000000) (bvslt index!585 (bvadd #b00000000000000000000000000000001 mask!2608)))))))

(assert (=> b!1421729 e!803858))

(declare-fun res!957282 () Bool)

(assert (=> b!1421729 (=> (not res!957282) (not e!803858))))

(assert (=> b!1421729 (= res!957282 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48062 0))(
  ( (Unit!48063) )
))
(declare-fun lt!626350 () Unit!48062)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97037 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48062)

(assert (=> b!1421729 (= lt!626350 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1421737 () Bool)

(assert (=> b!1421737 (= e!803859 e!803861)))

(declare-fun res!957279 () Bool)

(assert (=> b!1421737 (=> (not res!957279) (not e!803861))))

(assert (=> b!1421737 (= res!957279 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!626349 mask!2608) lt!626349 lt!626351 mask!2608) lt!626353))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1421737 (= lt!626353 (Intermediate!11139 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1421737 (= lt!626349 (select (store (arr!46832 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1421737 (= lt!626351 (array!97038 (store (arr!46832 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47383 a!2831)))))

(declare-fun b!1421738 () Bool)

(declare-fun res!957273 () Bool)

(assert (=> b!1421738 (=> (not res!957273) (not e!803857))))

(assert (=> b!1421738 (= res!957273 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47383 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47383 a!2831))))))

(declare-fun b!1421739 () Bool)

(declare-fun res!957271 () Bool)

(assert (=> b!1421739 (=> (not res!957271) (not e!803861))))

(assert (=> b!1421739 (= res!957271 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1421740 () Bool)

(declare-fun res!957272 () Bool)

(assert (=> b!1421740 (=> (not res!957272) (not e!803857))))

(assert (=> b!1421740 (= res!957272 (validKeyInArray!0 (select (arr!46832 a!2831) j!81)))))

(assert (= (and start!122754 res!957270) b!1421730))

(assert (= (and b!1421730 res!957278) b!1421733))

(assert (= (and b!1421733 res!957276) b!1421740))

(assert (= (and b!1421740 res!957272) b!1421736))

(assert (= (and b!1421736 res!957281) b!1421732))

(assert (= (and b!1421732 res!957280) b!1421738))

(assert (= (and b!1421738 res!957273) b!1421728))

(assert (= (and b!1421728 res!957277) b!1421737))

(assert (= (and b!1421737 res!957279) b!1421735))

(assert (= (and b!1421735 res!957274) b!1421731))

(assert (= (and b!1421731 res!957275) b!1421739))

(assert (= (and b!1421739 res!957271) b!1421729))

(assert (= (and b!1421729 res!957282) b!1421734))

(declare-fun m!1312337 () Bool)

(assert (=> b!1421734 m!1312337))

(assert (=> b!1421734 m!1312337))

(declare-fun m!1312339 () Bool)

(assert (=> b!1421734 m!1312339))

(declare-fun m!1312341 () Bool)

(assert (=> b!1421732 m!1312341))

(declare-fun m!1312343 () Bool)

(assert (=> b!1421731 m!1312343))

(assert (=> b!1421740 m!1312337))

(assert (=> b!1421740 m!1312337))

(declare-fun m!1312345 () Bool)

(assert (=> b!1421740 m!1312345))

(assert (=> b!1421735 m!1312337))

(assert (=> b!1421735 m!1312337))

(declare-fun m!1312347 () Bool)

(assert (=> b!1421735 m!1312347))

(declare-fun m!1312349 () Bool)

(assert (=> b!1421733 m!1312349))

(assert (=> b!1421733 m!1312349))

(declare-fun m!1312351 () Bool)

(assert (=> b!1421733 m!1312351))

(declare-fun m!1312353 () Bool)

(assert (=> start!122754 m!1312353))

(declare-fun m!1312355 () Bool)

(assert (=> start!122754 m!1312355))

(assert (=> b!1421728 m!1312337))

(assert (=> b!1421728 m!1312337))

(declare-fun m!1312357 () Bool)

(assert (=> b!1421728 m!1312357))

(assert (=> b!1421728 m!1312357))

(assert (=> b!1421728 m!1312337))

(declare-fun m!1312359 () Bool)

(assert (=> b!1421728 m!1312359))

(declare-fun m!1312361 () Bool)

(assert (=> b!1421736 m!1312361))

(declare-fun m!1312363 () Bool)

(assert (=> b!1421729 m!1312363))

(declare-fun m!1312365 () Bool)

(assert (=> b!1421729 m!1312365))

(declare-fun m!1312367 () Bool)

(assert (=> b!1421729 m!1312367))

(declare-fun m!1312369 () Bool)

(assert (=> b!1421729 m!1312369))

(assert (=> b!1421729 m!1312337))

(declare-fun m!1312371 () Bool)

(assert (=> b!1421729 m!1312371))

(declare-fun m!1312373 () Bool)

(assert (=> b!1421737 m!1312373))

(assert (=> b!1421737 m!1312373))

(declare-fun m!1312375 () Bool)

(assert (=> b!1421737 m!1312375))

(assert (=> b!1421737 m!1312363))

(declare-fun m!1312377 () Bool)

(assert (=> b!1421737 m!1312377))

(check-sat (not start!122754) (not b!1421733) (not b!1421735) (not b!1421737) (not b!1421732) (not b!1421740) (not b!1421731) (not b!1421729) (not b!1421734) (not b!1421728) (not b!1421736))
(check-sat)
