; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!123586 () Bool)

(assert start!123586)

(declare-fun b!1432233 () Bool)

(declare-fun res!966209 () Bool)

(declare-fun e!808532 () Bool)

(assert (=> b!1432233 (=> (not res!966209) (not e!808532))))

(declare-datatypes ((array!97476 0))(
  ( (array!97477 (arr!47041 (Array (_ BitVec 32) (_ BitVec 64))) (size!47592 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97476)

(declare-datatypes ((List!33731 0))(
  ( (Nil!33728) (Cons!33727 (h!35050 (_ BitVec 64)) (t!48432 List!33731)) )
))
(declare-fun arrayNoDuplicates!0 (array!97476 (_ BitVec 32) List!33731) Bool)

(assert (=> b!1432233 (= res!966209 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33728))))

(declare-fun b!1432234 () Bool)

(declare-fun res!966215 () Bool)

(assert (=> b!1432234 (=> (not res!966215) (not e!808532))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1432234 (= res!966215 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47592 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47592 a!2831))))))

(declare-fun b!1432235 () Bool)

(declare-fun e!808535 () Bool)

(assert (=> b!1432235 (= e!808535 true)))

(declare-fun lt!630483 () (_ BitVec 32))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1432235 (= lt!630483 (nextIndex!0 index!585 x!605 mask!2608))))

(declare-fun b!1432236 () Bool)

(declare-fun e!808534 () Bool)

(declare-fun e!808533 () Bool)

(assert (=> b!1432236 (= e!808534 e!808533)))

(declare-fun res!966210 () Bool)

(assert (=> b!1432236 (=> (not res!966210) (not e!808533))))

(declare-datatypes ((SeekEntryResult!11342 0))(
  ( (MissingZero!11342 (index!47759 (_ BitVec 32))) (Found!11342 (index!47760 (_ BitVec 32))) (Intermediate!11342 (undefined!12154 Bool) (index!47761 (_ BitVec 32)) (x!129411 (_ BitVec 32))) (Undefined!11342) (MissingVacant!11342 (index!47762 (_ BitVec 32))) )
))
(declare-fun lt!630479 () SeekEntryResult!11342)

(declare-fun lt!630484 () array!97476)

(declare-fun lt!630481 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97476 (_ BitVec 32)) SeekEntryResult!11342)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1432236 (= res!966210 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!630481 mask!2608) lt!630481 lt!630484 mask!2608) lt!630479))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1432236 (= lt!630479 (Intermediate!11342 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1432236 (= lt!630481 (select (store (arr!47041 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1432236 (= lt!630484 (array!97477 (store (arr!47041 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47592 a!2831)))))

(declare-fun b!1432237 () Bool)

(assert (=> b!1432237 (= e!808532 e!808534)))

(declare-fun res!966218 () Bool)

(assert (=> b!1432237 (=> (not res!966218) (not e!808534))))

(declare-fun lt!630482 () SeekEntryResult!11342)

(assert (=> b!1432237 (= res!966218 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47041 a!2831) j!81) mask!2608) (select (arr!47041 a!2831) j!81) a!2831 mask!2608) lt!630482))))

(assert (=> b!1432237 (= lt!630482 (Intermediate!11342 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1432238 () Bool)

(declare-fun res!966208 () Bool)

(assert (=> b!1432238 (=> (not res!966208) (not e!808532))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1432238 (= res!966208 (validKeyInArray!0 (select (arr!47041 a!2831) i!982)))))

(declare-fun res!966207 () Bool)

(assert (=> start!123586 (=> (not res!966207) (not e!808532))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123586 (= res!966207 (validMask!0 mask!2608))))

(assert (=> start!123586 e!808532))

(assert (=> start!123586 true))

(declare-fun array_inv!35986 (array!97476) Bool)

(assert (=> start!123586 (array_inv!35986 a!2831)))

(declare-fun b!1432239 () Bool)

(assert (=> b!1432239 (= e!808533 (not e!808535))))

(declare-fun res!966217 () Bool)

(assert (=> b!1432239 (=> res!966217 e!808535)))

(assert (=> b!1432239 (= res!966217 (or (= (select (arr!47041 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47041 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47041 a!2831) index!585) (select (arr!47041 a!2831) j!81)) (= (select (store (arr!47041 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!808530 () Bool)

(assert (=> b!1432239 e!808530))

(declare-fun res!966214 () Bool)

(assert (=> b!1432239 (=> (not res!966214) (not e!808530))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97476 (_ BitVec 32)) Bool)

(assert (=> b!1432239 (= res!966214 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48378 0))(
  ( (Unit!48379) )
))
(declare-fun lt!630480 () Unit!48378)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97476 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48378)

(assert (=> b!1432239 (= lt!630480 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1432240 () Bool)

(declare-fun res!966212 () Bool)

(assert (=> b!1432240 (=> (not res!966212) (not e!808533))))

(assert (=> b!1432240 (= res!966212 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1432241 () Bool)

(declare-fun res!966219 () Bool)

(assert (=> b!1432241 (=> (not res!966219) (not e!808532))))

(assert (=> b!1432241 (= res!966219 (validKeyInArray!0 (select (arr!47041 a!2831) j!81)))))

(declare-fun b!1432242 () Bool)

(declare-fun res!966211 () Bool)

(assert (=> b!1432242 (=> (not res!966211) (not e!808533))))

(assert (=> b!1432242 (= res!966211 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!630481 lt!630484 mask!2608) lt!630479))))

(declare-fun b!1432243 () Bool)

(declare-fun res!966206 () Bool)

(assert (=> b!1432243 (=> (not res!966206) (not e!808532))))

(assert (=> b!1432243 (= res!966206 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1432244 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97476 (_ BitVec 32)) SeekEntryResult!11342)

(assert (=> b!1432244 (= e!808530 (= (seekEntryOrOpen!0 (select (arr!47041 a!2831) j!81) a!2831 mask!2608) (Found!11342 j!81)))))

(declare-fun b!1432245 () Bool)

(declare-fun res!966216 () Bool)

(assert (=> b!1432245 (=> (not res!966216) (not e!808533))))

(assert (=> b!1432245 (= res!966216 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!47041 a!2831) j!81) a!2831 mask!2608) lt!630482))))

(declare-fun b!1432246 () Bool)

(declare-fun res!966213 () Bool)

(assert (=> b!1432246 (=> (not res!966213) (not e!808532))))

(assert (=> b!1432246 (= res!966213 (and (= (size!47592 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47592 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47592 a!2831)) (not (= i!982 j!81))))))

(assert (= (and start!123586 res!966207) b!1432246))

(assert (= (and b!1432246 res!966213) b!1432238))

(assert (= (and b!1432238 res!966208) b!1432241))

(assert (= (and b!1432241 res!966219) b!1432243))

(assert (= (and b!1432243 res!966206) b!1432233))

(assert (= (and b!1432233 res!966209) b!1432234))

(assert (= (and b!1432234 res!966215) b!1432237))

(assert (= (and b!1432237 res!966218) b!1432236))

(assert (= (and b!1432236 res!966210) b!1432245))

(assert (= (and b!1432245 res!966216) b!1432242))

(assert (= (and b!1432242 res!966211) b!1432240))

(assert (= (and b!1432240 res!966212) b!1432239))

(assert (= (and b!1432239 res!966214) b!1432244))

(assert (= (and b!1432239 (not res!966217)) b!1432235))

(declare-fun m!1322093 () Bool)

(assert (=> b!1432237 m!1322093))

(assert (=> b!1432237 m!1322093))

(declare-fun m!1322095 () Bool)

(assert (=> b!1432237 m!1322095))

(assert (=> b!1432237 m!1322095))

(assert (=> b!1432237 m!1322093))

(declare-fun m!1322097 () Bool)

(assert (=> b!1432237 m!1322097))

(assert (=> b!1432241 m!1322093))

(assert (=> b!1432241 m!1322093))

(declare-fun m!1322099 () Bool)

(assert (=> b!1432241 m!1322099))

(assert (=> b!1432245 m!1322093))

(assert (=> b!1432245 m!1322093))

(declare-fun m!1322101 () Bool)

(assert (=> b!1432245 m!1322101))

(declare-fun m!1322103 () Bool)

(assert (=> b!1432243 m!1322103))

(declare-fun m!1322105 () Bool)

(assert (=> start!123586 m!1322105))

(declare-fun m!1322107 () Bool)

(assert (=> start!123586 m!1322107))

(declare-fun m!1322109 () Bool)

(assert (=> b!1432242 m!1322109))

(declare-fun m!1322111 () Bool)

(assert (=> b!1432235 m!1322111))

(assert (=> b!1432244 m!1322093))

(assert (=> b!1432244 m!1322093))

(declare-fun m!1322113 () Bool)

(assert (=> b!1432244 m!1322113))

(declare-fun m!1322115 () Bool)

(assert (=> b!1432236 m!1322115))

(assert (=> b!1432236 m!1322115))

(declare-fun m!1322117 () Bool)

(assert (=> b!1432236 m!1322117))

(declare-fun m!1322119 () Bool)

(assert (=> b!1432236 m!1322119))

(declare-fun m!1322121 () Bool)

(assert (=> b!1432236 m!1322121))

(declare-fun m!1322123 () Bool)

(assert (=> b!1432238 m!1322123))

(assert (=> b!1432238 m!1322123))

(declare-fun m!1322125 () Bool)

(assert (=> b!1432238 m!1322125))

(assert (=> b!1432239 m!1322119))

(declare-fun m!1322127 () Bool)

(assert (=> b!1432239 m!1322127))

(declare-fun m!1322129 () Bool)

(assert (=> b!1432239 m!1322129))

(declare-fun m!1322131 () Bool)

(assert (=> b!1432239 m!1322131))

(assert (=> b!1432239 m!1322093))

(declare-fun m!1322133 () Bool)

(assert (=> b!1432239 m!1322133))

(declare-fun m!1322135 () Bool)

(assert (=> b!1432233 m!1322135))

(push 1)

