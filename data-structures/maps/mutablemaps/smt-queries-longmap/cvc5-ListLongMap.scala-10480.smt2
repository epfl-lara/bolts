; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!123298 () Bool)

(assert start!123298)

(declare-fun b!1429207 () Bool)

(declare-fun res!963949 () Bool)

(declare-fun e!807068 () Bool)

(assert (=> b!1429207 (=> (not res!963949) (not e!807068))))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((array!97377 0))(
  ( (array!97378 (arr!46996 (Array (_ BitVec 32) (_ BitVec 64))) (size!47547 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97377)

(declare-fun index!585 () (_ BitVec 32))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11297 0))(
  ( (MissingZero!11297 (index!47579 (_ BitVec 32))) (Found!11297 (index!47580 (_ BitVec 32))) (Intermediate!11297 (undefined!12109 Bool) (index!47581 (_ BitVec 32)) (x!129222 (_ BitVec 32))) (Undefined!11297) (MissingVacant!11297 (index!47582 (_ BitVec 32))) )
))
(declare-fun lt!629250 () SeekEntryResult!11297)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97377 (_ BitVec 32)) SeekEntryResult!11297)

(assert (=> b!1429207 (= res!963949 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46996 a!2831) j!81) a!2831 mask!2608) lt!629250))))

(declare-fun b!1429208 () Bool)

(declare-fun res!963950 () Bool)

(declare-fun e!807066 () Bool)

(assert (=> b!1429208 (=> (not res!963950) (not e!807066))))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1429208 (= res!963950 (and (= (size!47547 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47547 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47547 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1429209 () Bool)

(declare-fun res!963947 () Bool)

(assert (=> b!1429209 (=> (not res!963947) (not e!807068))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1429209 (= res!963947 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1429210 () Bool)

(declare-fun res!963957 () Bool)

(assert (=> b!1429210 (=> (not res!963957) (not e!807066))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1429210 (= res!963957 (validKeyInArray!0 (select (arr!46996 a!2831) j!81)))))

(declare-fun b!1429211 () Bool)

(declare-fun res!963948 () Bool)

(assert (=> b!1429211 (=> (not res!963948) (not e!807066))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97377 (_ BitVec 32)) Bool)

(assert (=> b!1429211 (= res!963948 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1429212 () Bool)

(declare-fun e!807065 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97377 (_ BitVec 32)) SeekEntryResult!11297)

(assert (=> b!1429212 (= e!807065 (= (seekEntryOrOpen!0 (select (arr!46996 a!2831) j!81) a!2831 mask!2608) (Found!11297 j!81)))))

(declare-fun b!1429213 () Bool)

(declare-fun res!963953 () Bool)

(assert (=> b!1429213 (=> (not res!963953) (not e!807068))))

(declare-fun lt!629249 () SeekEntryResult!11297)

(declare-fun lt!629251 () array!97377)

(declare-fun lt!629247 () (_ BitVec 64))

(assert (=> b!1429213 (= res!963953 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!629247 lt!629251 mask!2608) lt!629249))))

(declare-fun b!1429214 () Bool)

(declare-fun res!963952 () Bool)

(assert (=> b!1429214 (=> (not res!963952) (not e!807066))))

(assert (=> b!1429214 (= res!963952 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47547 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47547 a!2831))))))

(declare-fun b!1429215 () Bool)

(declare-fun e!807067 () Bool)

(assert (=> b!1429215 (= e!807066 e!807067)))

(declare-fun res!963951 () Bool)

(assert (=> b!1429215 (=> (not res!963951) (not e!807067))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1429215 (= res!963951 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46996 a!2831) j!81) mask!2608) (select (arr!46996 a!2831) j!81) a!2831 mask!2608) lt!629250))))

(assert (=> b!1429215 (= lt!629250 (Intermediate!11297 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1429216 () Bool)

(assert (=> b!1429216 (= e!807067 e!807068)))

(declare-fun res!963954 () Bool)

(assert (=> b!1429216 (=> (not res!963954) (not e!807068))))

(assert (=> b!1429216 (= res!963954 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!629247 mask!2608) lt!629247 lt!629251 mask!2608) lt!629249))))

(assert (=> b!1429216 (= lt!629249 (Intermediate!11297 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1429216 (= lt!629247 (select (store (arr!46996 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1429216 (= lt!629251 (array!97378 (store (arr!46996 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47547 a!2831)))))

(declare-fun b!1429217 () Bool)

(declare-fun res!963945 () Bool)

(assert (=> b!1429217 (=> (not res!963945) (not e!807066))))

(declare-datatypes ((List!33686 0))(
  ( (Nil!33683) (Cons!33682 (h!34996 (_ BitVec 64)) (t!48387 List!33686)) )
))
(declare-fun arrayNoDuplicates!0 (array!97377 (_ BitVec 32) List!33686) Bool)

(assert (=> b!1429217 (= res!963945 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33683))))

(declare-fun res!963946 () Bool)

(assert (=> start!123298 (=> (not res!963946) (not e!807066))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123298 (= res!963946 (validMask!0 mask!2608))))

(assert (=> start!123298 e!807066))

(assert (=> start!123298 true))

(declare-fun array_inv!35941 (array!97377) Bool)

(assert (=> start!123298 (array_inv!35941 a!2831)))

(declare-fun b!1429218 () Bool)

(assert (=> b!1429218 (= e!807068 (not true))))

(assert (=> b!1429218 e!807065))

(declare-fun res!963955 () Bool)

(assert (=> b!1429218 (=> (not res!963955) (not e!807065))))

(assert (=> b!1429218 (= res!963955 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48288 0))(
  ( (Unit!48289) )
))
(declare-fun lt!629248 () Unit!48288)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97377 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48288)

(assert (=> b!1429218 (= lt!629248 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1429219 () Bool)

(declare-fun res!963956 () Bool)

(assert (=> b!1429219 (=> (not res!963956) (not e!807066))))

(assert (=> b!1429219 (= res!963956 (validKeyInArray!0 (select (arr!46996 a!2831) i!982)))))

(assert (= (and start!123298 res!963946) b!1429208))

(assert (= (and b!1429208 res!963950) b!1429219))

(assert (= (and b!1429219 res!963956) b!1429210))

(assert (= (and b!1429210 res!963957) b!1429211))

(assert (= (and b!1429211 res!963948) b!1429217))

(assert (= (and b!1429217 res!963945) b!1429214))

(assert (= (and b!1429214 res!963952) b!1429215))

(assert (= (and b!1429215 res!963951) b!1429216))

(assert (= (and b!1429216 res!963954) b!1429207))

(assert (= (and b!1429207 res!963949) b!1429213))

(assert (= (and b!1429213 res!963953) b!1429209))

(assert (= (and b!1429209 res!963947) b!1429218))

(assert (= (and b!1429218 res!963955) b!1429212))

(declare-fun m!1319369 () Bool)

(assert (=> b!1429210 m!1319369))

(assert (=> b!1429210 m!1319369))

(declare-fun m!1319371 () Bool)

(assert (=> b!1429210 m!1319371))

(assert (=> b!1429215 m!1319369))

(assert (=> b!1429215 m!1319369))

(declare-fun m!1319373 () Bool)

(assert (=> b!1429215 m!1319373))

(assert (=> b!1429215 m!1319373))

(assert (=> b!1429215 m!1319369))

(declare-fun m!1319375 () Bool)

(assert (=> b!1429215 m!1319375))

(declare-fun m!1319377 () Bool)

(assert (=> b!1429211 m!1319377))

(declare-fun m!1319379 () Bool)

(assert (=> b!1429217 m!1319379))

(declare-fun m!1319381 () Bool)

(assert (=> b!1429213 m!1319381))

(assert (=> b!1429212 m!1319369))

(assert (=> b!1429212 m!1319369))

(declare-fun m!1319383 () Bool)

(assert (=> b!1429212 m!1319383))

(declare-fun m!1319385 () Bool)

(assert (=> b!1429216 m!1319385))

(assert (=> b!1429216 m!1319385))

(declare-fun m!1319387 () Bool)

(assert (=> b!1429216 m!1319387))

(declare-fun m!1319389 () Bool)

(assert (=> b!1429216 m!1319389))

(declare-fun m!1319391 () Bool)

(assert (=> b!1429216 m!1319391))

(assert (=> b!1429207 m!1319369))

(assert (=> b!1429207 m!1319369))

(declare-fun m!1319393 () Bool)

(assert (=> b!1429207 m!1319393))

(declare-fun m!1319395 () Bool)

(assert (=> b!1429218 m!1319395))

(declare-fun m!1319397 () Bool)

(assert (=> b!1429218 m!1319397))

(declare-fun m!1319399 () Bool)

(assert (=> b!1429219 m!1319399))

(assert (=> b!1429219 m!1319399))

(declare-fun m!1319401 () Bool)

(assert (=> b!1429219 m!1319401))

(declare-fun m!1319403 () Bool)

(assert (=> start!123298 m!1319403))

(declare-fun m!1319405 () Bool)

(assert (=> start!123298 m!1319405))

(push 1)

