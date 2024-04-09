; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!123590 () Bool)

(assert start!123590)

(declare-fun b!1432318 () Bool)

(declare-fun res!966300 () Bool)

(declare-fun e!808569 () Bool)

(assert (=> b!1432318 (=> (not res!966300) (not e!808569))))

(declare-datatypes ((SeekEntryResult!11344 0))(
  ( (MissingZero!11344 (index!47767 (_ BitVec 32))) (Found!11344 (index!47768 (_ BitVec 32))) (Intermediate!11344 (undefined!12156 Bool) (index!47769 (_ BitVec 32)) (x!129413 (_ BitVec 32))) (Undefined!11344) (MissingVacant!11344 (index!47770 (_ BitVec 32))) )
))
(declare-fun lt!630518 () SeekEntryResult!11344)

(declare-fun lt!630515 () (_ BitVec 64))

(declare-fun x!605 () (_ BitVec 32))

(declare-datatypes ((array!97480 0))(
  ( (array!97481 (arr!47043 (Array (_ BitVec 32) (_ BitVec 64))) (size!47594 (_ BitVec 32))) )
))
(declare-fun lt!630517 () array!97480)

(declare-fun index!585 () (_ BitVec 32))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97480 (_ BitVec 32)) SeekEntryResult!11344)

(assert (=> b!1432318 (= res!966300 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!630515 lt!630517 mask!2608) lt!630518))))

(declare-fun b!1432319 () Bool)

(declare-fun res!966299 () Bool)

(declare-fun e!808571 () Bool)

(assert (=> b!1432319 (=> (not res!966299) (not e!808571))))

(declare-fun a!2831 () array!97480)

(declare-fun j!81 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1432319 (= res!966299 (validKeyInArray!0 (select (arr!47043 a!2831) j!81)))))

(declare-fun b!1432320 () Bool)

(declare-fun res!966302 () Bool)

(assert (=> b!1432320 (=> (not res!966302) (not e!808571))))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1432320 (= res!966302 (and (= (size!47594 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47594 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47594 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1432321 () Bool)

(declare-fun res!966303 () Bool)

(assert (=> b!1432321 (=> (not res!966303) (not e!808571))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97480 (_ BitVec 32)) Bool)

(assert (=> b!1432321 (= res!966303 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1432322 () Bool)

(declare-fun e!808567 () Bool)

(assert (=> b!1432322 (= e!808569 (not e!808567))))

(declare-fun res!966297 () Bool)

(assert (=> b!1432322 (=> res!966297 e!808567)))

(assert (=> b!1432322 (= res!966297 (or (= (select (arr!47043 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47043 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47043 a!2831) index!585) (select (arr!47043 a!2831) j!81)) (= (select (store (arr!47043 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!808570 () Bool)

(assert (=> b!1432322 e!808570))

(declare-fun res!966298 () Bool)

(assert (=> b!1432322 (=> (not res!966298) (not e!808570))))

(assert (=> b!1432322 (= res!966298 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48382 0))(
  ( (Unit!48383) )
))
(declare-fun lt!630516 () Unit!48382)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97480 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48382)

(assert (=> b!1432322 (= lt!630516 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1432323 () Bool)

(declare-fun res!966301 () Bool)

(assert (=> b!1432323 (=> (not res!966301) (not e!808571))))

(declare-datatypes ((List!33733 0))(
  ( (Nil!33730) (Cons!33729 (h!35052 (_ BitVec 64)) (t!48434 List!33733)) )
))
(declare-fun arrayNoDuplicates!0 (array!97480 (_ BitVec 32) List!33733) Bool)

(assert (=> b!1432323 (= res!966301 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33730))))

(declare-fun b!1432324 () Bool)

(declare-fun res!966290 () Bool)

(assert (=> b!1432324 (=> (not res!966290) (not e!808569))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1432324 (= res!966290 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1432317 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97480 (_ BitVec 32)) SeekEntryResult!11344)

(assert (=> b!1432317 (= e!808570 (= (seekEntryOrOpen!0 (select (arr!47043 a!2831) j!81) a!2831 mask!2608) (Found!11344 j!81)))))

(declare-fun res!966291 () Bool)

(assert (=> start!123590 (=> (not res!966291) (not e!808571))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123590 (= res!966291 (validMask!0 mask!2608))))

(assert (=> start!123590 e!808571))

(assert (=> start!123590 true))

(declare-fun array_inv!35988 (array!97480) Bool)

(assert (=> start!123590 (array_inv!35988 a!2831)))

(declare-fun b!1432325 () Bool)

(assert (=> b!1432325 (= e!808567 true)))

(declare-fun lt!630519 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1432325 (= lt!630519 (nextIndex!0 index!585 x!605 mask!2608))))

(declare-fun b!1432326 () Bool)

(declare-fun e!808566 () Bool)

(assert (=> b!1432326 (= e!808566 e!808569)))

(declare-fun res!966293 () Bool)

(assert (=> b!1432326 (=> (not res!966293) (not e!808569))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1432326 (= res!966293 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!630515 mask!2608) lt!630515 lt!630517 mask!2608) lt!630518))))

(assert (=> b!1432326 (= lt!630518 (Intermediate!11344 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1432326 (= lt!630515 (select (store (arr!47043 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1432326 (= lt!630517 (array!97481 (store (arr!47043 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47594 a!2831)))))

(declare-fun b!1432327 () Bool)

(declare-fun res!966294 () Bool)

(assert (=> b!1432327 (=> (not res!966294) (not e!808571))))

(assert (=> b!1432327 (= res!966294 (validKeyInArray!0 (select (arr!47043 a!2831) i!982)))))

(declare-fun b!1432328 () Bool)

(declare-fun res!966296 () Bool)

(assert (=> b!1432328 (=> (not res!966296) (not e!808569))))

(declare-fun lt!630520 () SeekEntryResult!11344)

(assert (=> b!1432328 (= res!966296 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!47043 a!2831) j!81) a!2831 mask!2608) lt!630520))))

(declare-fun b!1432329 () Bool)

(declare-fun res!966292 () Bool)

(assert (=> b!1432329 (=> (not res!966292) (not e!808571))))

(assert (=> b!1432329 (= res!966292 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47594 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47594 a!2831))))))

(declare-fun b!1432330 () Bool)

(assert (=> b!1432330 (= e!808571 e!808566)))

(declare-fun res!966295 () Bool)

(assert (=> b!1432330 (=> (not res!966295) (not e!808566))))

(assert (=> b!1432330 (= res!966295 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47043 a!2831) j!81) mask!2608) (select (arr!47043 a!2831) j!81) a!2831 mask!2608) lt!630520))))

(assert (=> b!1432330 (= lt!630520 (Intermediate!11344 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(assert (= (and start!123590 res!966291) b!1432320))

(assert (= (and b!1432320 res!966302) b!1432327))

(assert (= (and b!1432327 res!966294) b!1432319))

(assert (= (and b!1432319 res!966299) b!1432321))

(assert (= (and b!1432321 res!966303) b!1432323))

(assert (= (and b!1432323 res!966301) b!1432329))

(assert (= (and b!1432329 res!966292) b!1432330))

(assert (= (and b!1432330 res!966295) b!1432326))

(assert (= (and b!1432326 res!966293) b!1432328))

(assert (= (and b!1432328 res!966296) b!1432318))

(assert (= (and b!1432318 res!966300) b!1432324))

(assert (= (and b!1432324 res!966290) b!1432322))

(assert (= (and b!1432322 res!966298) b!1432317))

(assert (= (and b!1432322 (not res!966297)) b!1432325))

(declare-fun m!1322181 () Bool)

(assert (=> b!1432321 m!1322181))

(declare-fun m!1322183 () Bool)

(assert (=> b!1432319 m!1322183))

(assert (=> b!1432319 m!1322183))

(declare-fun m!1322185 () Bool)

(assert (=> b!1432319 m!1322185))

(declare-fun m!1322187 () Bool)

(assert (=> b!1432323 m!1322187))

(declare-fun m!1322189 () Bool)

(assert (=> b!1432325 m!1322189))

(declare-fun m!1322191 () Bool)

(assert (=> start!123590 m!1322191))

(declare-fun m!1322193 () Bool)

(assert (=> start!123590 m!1322193))

(assert (=> b!1432330 m!1322183))

(assert (=> b!1432330 m!1322183))

(declare-fun m!1322195 () Bool)

(assert (=> b!1432330 m!1322195))

(assert (=> b!1432330 m!1322195))

(assert (=> b!1432330 m!1322183))

(declare-fun m!1322197 () Bool)

(assert (=> b!1432330 m!1322197))

(assert (=> b!1432328 m!1322183))

(assert (=> b!1432328 m!1322183))

(declare-fun m!1322199 () Bool)

(assert (=> b!1432328 m!1322199))

(declare-fun m!1322201 () Bool)

(assert (=> b!1432327 m!1322201))

(assert (=> b!1432327 m!1322201))

(declare-fun m!1322203 () Bool)

(assert (=> b!1432327 m!1322203))

(declare-fun m!1322205 () Bool)

(assert (=> b!1432326 m!1322205))

(assert (=> b!1432326 m!1322205))

(declare-fun m!1322207 () Bool)

(assert (=> b!1432326 m!1322207))

(declare-fun m!1322209 () Bool)

(assert (=> b!1432326 m!1322209))

(declare-fun m!1322211 () Bool)

(assert (=> b!1432326 m!1322211))

(assert (=> b!1432322 m!1322209))

(declare-fun m!1322213 () Bool)

(assert (=> b!1432322 m!1322213))

(declare-fun m!1322215 () Bool)

(assert (=> b!1432322 m!1322215))

(declare-fun m!1322217 () Bool)

(assert (=> b!1432322 m!1322217))

(assert (=> b!1432322 m!1322183))

(declare-fun m!1322219 () Bool)

(assert (=> b!1432322 m!1322219))

(assert (=> b!1432317 m!1322183))

(assert (=> b!1432317 m!1322183))

(declare-fun m!1322221 () Bool)

(assert (=> b!1432317 m!1322221))

(declare-fun m!1322223 () Bool)

(assert (=> b!1432318 m!1322223))

(push 1)

