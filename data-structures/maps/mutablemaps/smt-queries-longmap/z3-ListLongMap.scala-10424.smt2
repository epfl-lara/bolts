; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!122748 () Bool)

(assert start!122748)

(declare-fun b!1421611 () Bool)

(declare-fun res!957161 () Bool)

(declare-fun e!803813 () Bool)

(assert (=> b!1421611 (=> (not res!957161) (not e!803813))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-datatypes ((array!97031 0))(
  ( (array!97032 (arr!46829 (Array (_ BitVec 32) (_ BitVec 64))) (size!47380 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97031)

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1421611 (= res!957161 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47380 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47380 a!2831))))))

(declare-fun b!1421612 () Bool)

(declare-fun res!957154 () Bool)

(assert (=> b!1421612 (=> (not res!957154) (not e!803813))))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97031 (_ BitVec 32)) Bool)

(assert (=> b!1421612 (= res!957154 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun res!957157 () Bool)

(assert (=> start!122748 (=> (not res!957157) (not e!803813))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122748 (= res!957157 (validMask!0 mask!2608))))

(assert (=> start!122748 e!803813))

(assert (=> start!122748 true))

(declare-fun array_inv!35774 (array!97031) Bool)

(assert (=> start!122748 (array_inv!35774 a!2831)))

(declare-fun e!803812 () Bool)

(declare-fun j!81 () (_ BitVec 32))

(declare-fun b!1421613 () Bool)

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1421613 (= e!803812 (not (or (= (select (arr!46829 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46829 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46829 a!2831) index!585) (select (arr!46829 a!2831) j!81)) (= (select (store (arr!46829 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge mask!2608 #b00000000000000000000000000000000))))))

(declare-fun e!803816 () Bool)

(assert (=> b!1421613 e!803816))

(declare-fun res!957163 () Bool)

(assert (=> b!1421613 (=> (not res!957163) (not e!803816))))

(assert (=> b!1421613 (= res!957163 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48056 0))(
  ( (Unit!48057) )
))
(declare-fun lt!626305 () Unit!48056)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97031 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48056)

(assert (=> b!1421613 (= lt!626305 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1421614 () Bool)

(declare-datatypes ((SeekEntryResult!11136 0))(
  ( (MissingZero!11136 (index!46935 (_ BitVec 32))) (Found!11136 (index!46936 (_ BitVec 32))) (Intermediate!11136 (undefined!11948 Bool) (index!46937 (_ BitVec 32)) (x!128589 (_ BitVec 32))) (Undefined!11136) (MissingVacant!11136 (index!46938 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97031 (_ BitVec 32)) SeekEntryResult!11136)

(assert (=> b!1421614 (= e!803816 (= (seekEntryOrOpen!0 (select (arr!46829 a!2831) j!81) a!2831 mask!2608) (Found!11136 j!81)))))

(declare-fun b!1421615 () Bool)

(declare-fun e!803815 () Bool)

(assert (=> b!1421615 (= e!803813 e!803815)))

(declare-fun res!957165 () Bool)

(assert (=> b!1421615 (=> (not res!957165) (not e!803815))))

(declare-fun lt!626307 () SeekEntryResult!11136)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97031 (_ BitVec 32)) SeekEntryResult!11136)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1421615 (= res!957165 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46829 a!2831) j!81) mask!2608) (select (arr!46829 a!2831) j!81) a!2831 mask!2608) lt!626307))))

(assert (=> b!1421615 (= lt!626307 (Intermediate!11136 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1421616 () Bool)

(assert (=> b!1421616 (= e!803815 e!803812)))

(declare-fun res!957158 () Bool)

(assert (=> b!1421616 (=> (not res!957158) (not e!803812))))

(declare-fun lt!626304 () SeekEntryResult!11136)

(declare-fun lt!626306 () array!97031)

(declare-fun lt!626308 () (_ BitVec 64))

(assert (=> b!1421616 (= res!957158 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!626308 mask!2608) lt!626308 lt!626306 mask!2608) lt!626304))))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(assert (=> b!1421616 (= lt!626304 (Intermediate!11136 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1421616 (= lt!626308 (select (store (arr!46829 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1421616 (= lt!626306 (array!97032 (store (arr!46829 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47380 a!2831)))))

(declare-fun b!1421617 () Bool)

(declare-fun res!957162 () Bool)

(assert (=> b!1421617 (=> (not res!957162) (not e!803812))))

(assert (=> b!1421617 (= res!957162 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!626308 lt!626306 mask!2608) lt!626304))))

(declare-fun b!1421618 () Bool)

(declare-fun res!957164 () Bool)

(assert (=> b!1421618 (=> (not res!957164) (not e!803812))))

(assert (=> b!1421618 (= res!957164 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46829 a!2831) j!81) a!2831 mask!2608) lt!626307))))

(declare-fun b!1421619 () Bool)

(declare-fun res!957160 () Bool)

(assert (=> b!1421619 (=> (not res!957160) (not e!803812))))

(assert (=> b!1421619 (= res!957160 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1421620 () Bool)

(declare-fun res!957159 () Bool)

(assert (=> b!1421620 (=> (not res!957159) (not e!803813))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1421620 (= res!957159 (validKeyInArray!0 (select (arr!46829 a!2831) j!81)))))

(declare-fun b!1421621 () Bool)

(declare-fun res!957155 () Bool)

(assert (=> b!1421621 (=> (not res!957155) (not e!803813))))

(declare-datatypes ((List!33519 0))(
  ( (Nil!33516) (Cons!33515 (h!34817 (_ BitVec 64)) (t!48220 List!33519)) )
))
(declare-fun arrayNoDuplicates!0 (array!97031 (_ BitVec 32) List!33519) Bool)

(assert (=> b!1421621 (= res!957155 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33516))))

(declare-fun b!1421622 () Bool)

(declare-fun res!957153 () Bool)

(assert (=> b!1421622 (=> (not res!957153) (not e!803813))))

(assert (=> b!1421622 (= res!957153 (and (= (size!47380 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47380 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47380 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1421623 () Bool)

(declare-fun res!957156 () Bool)

(assert (=> b!1421623 (=> (not res!957156) (not e!803813))))

(assert (=> b!1421623 (= res!957156 (validKeyInArray!0 (select (arr!46829 a!2831) i!982)))))

(assert (= (and start!122748 res!957157) b!1421622))

(assert (= (and b!1421622 res!957153) b!1421623))

(assert (= (and b!1421623 res!957156) b!1421620))

(assert (= (and b!1421620 res!957159) b!1421612))

(assert (= (and b!1421612 res!957154) b!1421621))

(assert (= (and b!1421621 res!957155) b!1421611))

(assert (= (and b!1421611 res!957161) b!1421615))

(assert (= (and b!1421615 res!957165) b!1421616))

(assert (= (and b!1421616 res!957158) b!1421618))

(assert (= (and b!1421618 res!957164) b!1421617))

(assert (= (and b!1421617 res!957162) b!1421619))

(assert (= (and b!1421619 res!957160) b!1421613))

(assert (= (and b!1421613 res!957163) b!1421614))

(declare-fun m!1312211 () Bool)

(assert (=> b!1421617 m!1312211))

(declare-fun m!1312213 () Bool)

(assert (=> start!122748 m!1312213))

(declare-fun m!1312215 () Bool)

(assert (=> start!122748 m!1312215))

(declare-fun m!1312217 () Bool)

(assert (=> b!1421613 m!1312217))

(declare-fun m!1312219 () Bool)

(assert (=> b!1421613 m!1312219))

(declare-fun m!1312221 () Bool)

(assert (=> b!1421613 m!1312221))

(declare-fun m!1312223 () Bool)

(assert (=> b!1421613 m!1312223))

(declare-fun m!1312225 () Bool)

(assert (=> b!1421613 m!1312225))

(declare-fun m!1312227 () Bool)

(assert (=> b!1421613 m!1312227))

(assert (=> b!1421615 m!1312225))

(assert (=> b!1421615 m!1312225))

(declare-fun m!1312229 () Bool)

(assert (=> b!1421615 m!1312229))

(assert (=> b!1421615 m!1312229))

(assert (=> b!1421615 m!1312225))

(declare-fun m!1312231 () Bool)

(assert (=> b!1421615 m!1312231))

(declare-fun m!1312233 () Bool)

(assert (=> b!1421612 m!1312233))

(assert (=> b!1421614 m!1312225))

(assert (=> b!1421614 m!1312225))

(declare-fun m!1312235 () Bool)

(assert (=> b!1421614 m!1312235))

(assert (=> b!1421618 m!1312225))

(assert (=> b!1421618 m!1312225))

(declare-fun m!1312237 () Bool)

(assert (=> b!1421618 m!1312237))

(declare-fun m!1312239 () Bool)

(assert (=> b!1421621 m!1312239))

(assert (=> b!1421620 m!1312225))

(assert (=> b!1421620 m!1312225))

(declare-fun m!1312241 () Bool)

(assert (=> b!1421620 m!1312241))

(declare-fun m!1312243 () Bool)

(assert (=> b!1421623 m!1312243))

(assert (=> b!1421623 m!1312243))

(declare-fun m!1312245 () Bool)

(assert (=> b!1421623 m!1312245))

(declare-fun m!1312247 () Bool)

(assert (=> b!1421616 m!1312247))

(assert (=> b!1421616 m!1312247))

(declare-fun m!1312249 () Bool)

(assert (=> b!1421616 m!1312249))

(assert (=> b!1421616 m!1312217))

(declare-fun m!1312251 () Bool)

(assert (=> b!1421616 m!1312251))

(check-sat (not b!1421621) (not b!1421616) (not start!122748) (not b!1421620) (not b!1421623) (not b!1421613) (not b!1421615) (not b!1421612) (not b!1421617) (not b!1421618) (not b!1421614))
(check-sat)
