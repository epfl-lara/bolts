; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122228 () Bool)

(assert start!122228)

(declare-fun b!1417402 () Bool)

(declare-fun e!802213 () Bool)

(assert (=> b!1417402 (= e!802213 (not true))))

(declare-fun e!802212 () Bool)

(assert (=> b!1417402 e!802212))

(declare-fun res!953243 () Bool)

(assert (=> b!1417402 (=> (not res!953243) (not e!802212))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!96730 0))(
  ( (array!96731 (arr!46689 (Array (_ BitVec 32) (_ BitVec 64))) (size!47240 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96730)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96730 (_ BitVec 32)) Bool)

(assert (=> b!1417402 (= res!953243 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47968 0))(
  ( (Unit!47969) )
))
(declare-fun lt!625323 () Unit!47968)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96730 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47968)

(assert (=> b!1417402 (= lt!625323 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-datatypes ((SeekEntryResult!11022 0))(
  ( (MissingZero!11022 (index!46479 (_ BitVec 32))) (Found!11022 (index!46480 (_ BitVec 32))) (Intermediate!11022 (undefined!11834 Bool) (index!46481 (_ BitVec 32)) (x!128084 (_ BitVec 32))) (Undefined!11022) (MissingVacant!11022 (index!46482 (_ BitVec 32))) )
))
(declare-fun lt!625324 () SeekEntryResult!11022)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96730 (_ BitVec 32)) SeekEntryResult!11022)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1417402 (= lt!625324 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46689 a!2901) j!112) mask!2840) (select (arr!46689 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1417403 () Bool)

(declare-fun res!953242 () Bool)

(assert (=> b!1417403 (=> (not res!953242) (not e!802213))))

(declare-datatypes ((List!33388 0))(
  ( (Nil!33385) (Cons!33384 (h!34677 (_ BitVec 64)) (t!48089 List!33388)) )
))
(declare-fun arrayNoDuplicates!0 (array!96730 (_ BitVec 32) List!33388) Bool)

(assert (=> b!1417403 (= res!953242 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33385))))

(declare-fun res!953244 () Bool)

(assert (=> start!122228 (=> (not res!953244) (not e!802213))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122228 (= res!953244 (validMask!0 mask!2840))))

(assert (=> start!122228 e!802213))

(assert (=> start!122228 true))

(declare-fun array_inv!35634 (array!96730) Bool)

(assert (=> start!122228 (array_inv!35634 a!2901)))

(declare-fun b!1417404 () Bool)

(declare-fun res!953247 () Bool)

(assert (=> b!1417404 (=> (not res!953247) (not e!802213))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1417404 (= res!953247 (validKeyInArray!0 (select (arr!46689 a!2901) j!112)))))

(declare-fun b!1417405 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96730 (_ BitVec 32)) SeekEntryResult!11022)

(assert (=> b!1417405 (= e!802212 (= (seekEntryOrOpen!0 (select (arr!46689 a!2901) j!112) a!2901 mask!2840) (Found!11022 j!112)))))

(declare-fun b!1417406 () Bool)

(declare-fun res!953245 () Bool)

(assert (=> b!1417406 (=> (not res!953245) (not e!802213))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1417406 (= res!953245 (validKeyInArray!0 (select (arr!46689 a!2901) i!1037)))))

(declare-fun b!1417407 () Bool)

(declare-fun res!953241 () Bool)

(assert (=> b!1417407 (=> (not res!953241) (not e!802213))))

(assert (=> b!1417407 (= res!953241 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1417408 () Bool)

(declare-fun res!953246 () Bool)

(assert (=> b!1417408 (=> (not res!953246) (not e!802213))))

(assert (=> b!1417408 (= res!953246 (and (= (size!47240 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47240 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47240 a!2901)) (not (= i!1037 j!112))))))

(assert (= (and start!122228 res!953244) b!1417408))

(assert (= (and b!1417408 res!953246) b!1417406))

(assert (= (and b!1417406 res!953245) b!1417404))

(assert (= (and b!1417404 res!953247) b!1417407))

(assert (= (and b!1417407 res!953241) b!1417403))

(assert (= (and b!1417403 res!953242) b!1417402))

(assert (= (and b!1417402 res!953243) b!1417405))

(declare-fun m!1308189 () Bool)

(assert (=> b!1417407 m!1308189))

(declare-fun m!1308191 () Bool)

(assert (=> b!1417403 m!1308191))

(declare-fun m!1308193 () Bool)

(assert (=> b!1417402 m!1308193))

(declare-fun m!1308195 () Bool)

(assert (=> b!1417402 m!1308195))

(assert (=> b!1417402 m!1308193))

(declare-fun m!1308197 () Bool)

(assert (=> b!1417402 m!1308197))

(assert (=> b!1417402 m!1308195))

(assert (=> b!1417402 m!1308193))

(declare-fun m!1308199 () Bool)

(assert (=> b!1417402 m!1308199))

(declare-fun m!1308201 () Bool)

(assert (=> b!1417402 m!1308201))

(declare-fun m!1308203 () Bool)

(assert (=> start!122228 m!1308203))

(declare-fun m!1308205 () Bool)

(assert (=> start!122228 m!1308205))

(assert (=> b!1417404 m!1308193))

(assert (=> b!1417404 m!1308193))

(declare-fun m!1308207 () Bool)

(assert (=> b!1417404 m!1308207))

(declare-fun m!1308209 () Bool)

(assert (=> b!1417406 m!1308209))

(assert (=> b!1417406 m!1308209))

(declare-fun m!1308211 () Bool)

(assert (=> b!1417406 m!1308211))

(assert (=> b!1417405 m!1308193))

(assert (=> b!1417405 m!1308193))

(declare-fun m!1308213 () Bool)

(assert (=> b!1417405 m!1308213))

(push 1)

(assert (not b!1417403))

(assert (not b!1417405))

(assert (not b!1417407))

(assert (not start!122228))

(assert (not b!1417406))

(assert (not b!1417402))

(assert (not b!1417404))

