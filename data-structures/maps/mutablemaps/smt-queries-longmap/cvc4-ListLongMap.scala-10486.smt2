; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!123392 () Bool)

(assert start!123392)

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun e!807555 () Bool)

(declare-fun b!1430304 () Bool)

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((array!97420 0))(
  ( (array!97421 (arr!47016 (Array (_ BitVec 32) (_ BitVec 64))) (size!47567 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97420)

(declare-fun index!585 () (_ BitVec 32))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1430304 (= e!807555 (or (= (select (arr!47016 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47016 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47016 a!2831) index!585) (select (arr!47016 a!2831) j!81)) (not (= (select (store (arr!47016 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)) (= index!585 intermediateAfterIndex!13)))))

(declare-fun b!1430305 () Bool)

(declare-fun res!964846 () Bool)

(declare-fun e!807553 () Bool)

(assert (=> b!1430305 (=> (not res!964846) (not e!807553))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1430305 (= res!964846 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1430306 () Bool)

(declare-fun res!964845 () Bool)

(declare-fun e!807556 () Bool)

(assert (=> b!1430306 (=> (not res!964845) (not e!807556))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1430306 (= res!964845 (validKeyInArray!0 (select (arr!47016 a!2831) j!81)))))

(declare-fun b!1430307 () Bool)

(assert (=> b!1430307 (= e!807553 (not (or (= (select (arr!47016 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47016 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47016 a!2831) index!585) (select (arr!47016 a!2831) j!81)) (not (= (select (store (arr!47016 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)) (= intermediateAfterIndex!13 i!982))))))

(assert (=> b!1430307 e!807555))

(declare-fun res!964848 () Bool)

(assert (=> b!1430307 (=> (not res!964848) (not e!807555))))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97420 (_ BitVec 32)) Bool)

(assert (=> b!1430307 (= res!964848 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48328 0))(
  ( (Unit!48329) )
))
(declare-fun lt!629679 () Unit!48328)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97420 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48328)

(assert (=> b!1430307 (= lt!629679 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1430308 () Bool)

(declare-fun res!964843 () Bool)

(assert (=> b!1430308 (=> (not res!964843) (not e!807556))))

(assert (=> b!1430308 (= res!964843 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1430309 () Bool)

(declare-fun res!964841 () Bool)

(assert (=> b!1430309 (=> (not res!964841) (not e!807555))))

(declare-datatypes ((SeekEntryResult!11317 0))(
  ( (MissingZero!11317 (index!47659 (_ BitVec 32))) (Found!11317 (index!47660 (_ BitVec 32))) (Intermediate!11317 (undefined!12129 Bool) (index!47661 (_ BitVec 32)) (x!129296 (_ BitVec 32))) (Undefined!11317) (MissingVacant!11317 (index!47662 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97420 (_ BitVec 32)) SeekEntryResult!11317)

(assert (=> b!1430309 (= res!964841 (= (seekEntryOrOpen!0 (select (arr!47016 a!2831) j!81) a!2831 mask!2608) (Found!11317 j!81)))))

(declare-fun b!1430310 () Bool)

(declare-fun e!807554 () Bool)

(assert (=> b!1430310 (= e!807556 e!807554)))

(declare-fun res!964849 () Bool)

(assert (=> b!1430310 (=> (not res!964849) (not e!807554))))

(declare-fun lt!629682 () SeekEntryResult!11317)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97420 (_ BitVec 32)) SeekEntryResult!11317)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1430310 (= res!964849 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47016 a!2831) j!81) mask!2608) (select (arr!47016 a!2831) j!81) a!2831 mask!2608) lt!629682))))

(assert (=> b!1430310 (= lt!629682 (Intermediate!11317 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1430311 () Bool)

(declare-fun res!964842 () Bool)

(assert (=> b!1430311 (=> (not res!964842) (not e!807556))))

(assert (=> b!1430311 (= res!964842 (and (= (size!47567 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47567 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47567 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1430312 () Bool)

(declare-fun res!964844 () Bool)

(assert (=> b!1430312 (=> (not res!964844) (not e!807556))))

(declare-fun x!605 () (_ BitVec 32))

(assert (=> b!1430312 (= res!964844 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47567 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47567 a!2831))))))

(declare-fun res!964851 () Bool)

(assert (=> start!123392 (=> (not res!964851) (not e!807556))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123392 (= res!964851 (validMask!0 mask!2608))))

(assert (=> start!123392 e!807556))

(assert (=> start!123392 true))

(declare-fun array_inv!35961 (array!97420) Bool)

(assert (=> start!123392 (array_inv!35961 a!2831)))

(declare-fun b!1430313 () Bool)

(declare-fun res!964847 () Bool)

(assert (=> b!1430313 (=> (not res!964847) (not e!807556))))

(declare-datatypes ((List!33706 0))(
  ( (Nil!33703) (Cons!33702 (h!35019 (_ BitVec 64)) (t!48407 List!33706)) )
))
(declare-fun arrayNoDuplicates!0 (array!97420 (_ BitVec 32) List!33706) Bool)

(assert (=> b!1430313 (= res!964847 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33703))))

(declare-fun b!1430314 () Bool)

(declare-fun res!964853 () Bool)

(assert (=> b!1430314 (=> (not res!964853) (not e!807556))))

(assert (=> b!1430314 (= res!964853 (validKeyInArray!0 (select (arr!47016 a!2831) i!982)))))

(declare-fun b!1430315 () Bool)

(declare-fun res!964854 () Bool)

(assert (=> b!1430315 (=> (not res!964854) (not e!807553))))

(declare-fun lt!629680 () (_ BitVec 64))

(declare-fun lt!629683 () array!97420)

(declare-fun lt!629681 () SeekEntryResult!11317)

(assert (=> b!1430315 (= res!964854 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!629680 lt!629683 mask!2608) lt!629681))))

(declare-fun b!1430316 () Bool)

(assert (=> b!1430316 (= e!807554 e!807553)))

(declare-fun res!964852 () Bool)

(assert (=> b!1430316 (=> (not res!964852) (not e!807553))))

(assert (=> b!1430316 (= res!964852 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!629680 mask!2608) lt!629680 lt!629683 mask!2608) lt!629681))))

(assert (=> b!1430316 (= lt!629681 (Intermediate!11317 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1430316 (= lt!629680 (select (store (arr!47016 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1430316 (= lt!629683 (array!97421 (store (arr!47016 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47567 a!2831)))))

(declare-fun b!1430317 () Bool)

(declare-fun res!964850 () Bool)

(assert (=> b!1430317 (=> (not res!964850) (not e!807553))))

(assert (=> b!1430317 (= res!964850 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!47016 a!2831) j!81) a!2831 mask!2608) lt!629682))))

(assert (= (and start!123392 res!964851) b!1430311))

(assert (= (and b!1430311 res!964842) b!1430314))

(assert (= (and b!1430314 res!964853) b!1430306))

(assert (= (and b!1430306 res!964845) b!1430308))

(assert (= (and b!1430308 res!964843) b!1430313))

(assert (= (and b!1430313 res!964847) b!1430312))

(assert (= (and b!1430312 res!964844) b!1430310))

(assert (= (and b!1430310 res!964849) b!1430316))

(assert (= (and b!1430316 res!964852) b!1430317))

(assert (= (and b!1430317 res!964850) b!1430315))

(assert (= (and b!1430315 res!964854) b!1430305))

(assert (= (and b!1430305 res!964846) b!1430307))

(assert (= (and b!1430307 res!964848) b!1430309))

(assert (= (and b!1430309 res!964841) b!1430304))

(declare-fun m!1320335 () Bool)

(assert (=> b!1430313 m!1320335))

(declare-fun m!1320337 () Bool)

(assert (=> b!1430315 m!1320337))

(declare-fun m!1320339 () Bool)

(assert (=> b!1430307 m!1320339))

(declare-fun m!1320341 () Bool)

(assert (=> b!1430307 m!1320341))

(declare-fun m!1320343 () Bool)

(assert (=> b!1430307 m!1320343))

(declare-fun m!1320345 () Bool)

(assert (=> b!1430307 m!1320345))

(declare-fun m!1320347 () Bool)

(assert (=> b!1430307 m!1320347))

(declare-fun m!1320349 () Bool)

(assert (=> b!1430307 m!1320349))

(assert (=> b!1430309 m!1320347))

(assert (=> b!1430309 m!1320347))

(declare-fun m!1320351 () Bool)

(assert (=> b!1430309 m!1320351))

(assert (=> b!1430304 m!1320343))

(assert (=> b!1430304 m!1320347))

(assert (=> b!1430304 m!1320339))

(assert (=> b!1430304 m!1320341))

(assert (=> b!1430317 m!1320347))

(assert (=> b!1430317 m!1320347))

(declare-fun m!1320353 () Bool)

(assert (=> b!1430317 m!1320353))

(assert (=> b!1430310 m!1320347))

(assert (=> b!1430310 m!1320347))

(declare-fun m!1320355 () Bool)

(assert (=> b!1430310 m!1320355))

(assert (=> b!1430310 m!1320355))

(assert (=> b!1430310 m!1320347))

(declare-fun m!1320357 () Bool)

(assert (=> b!1430310 m!1320357))

(declare-fun m!1320359 () Bool)

(assert (=> b!1430308 m!1320359))

(declare-fun m!1320361 () Bool)

(assert (=> start!123392 m!1320361))

(declare-fun m!1320363 () Bool)

(assert (=> start!123392 m!1320363))

(assert (=> b!1430306 m!1320347))

(assert (=> b!1430306 m!1320347))

(declare-fun m!1320365 () Bool)

(assert (=> b!1430306 m!1320365))

(declare-fun m!1320367 () Bool)

(assert (=> b!1430316 m!1320367))

(assert (=> b!1430316 m!1320367))

(declare-fun m!1320369 () Bool)

(assert (=> b!1430316 m!1320369))

(assert (=> b!1430316 m!1320339))

(declare-fun m!1320371 () Bool)

(assert (=> b!1430316 m!1320371))

(declare-fun m!1320373 () Bool)

(assert (=> b!1430314 m!1320373))

(assert (=> b!1430314 m!1320373))

(declare-fun m!1320375 () Bool)

(assert (=> b!1430314 m!1320375))

(push 1)

(assert (not b!1430316))

