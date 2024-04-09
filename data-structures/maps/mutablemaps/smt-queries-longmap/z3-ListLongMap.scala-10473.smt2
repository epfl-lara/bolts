; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!123204 () Bool)

(assert start!123204)

(declare-fun b!1428118 () Bool)

(declare-fun res!963069 () Bool)

(declare-fun e!806575 () Bool)

(assert (=> b!1428118 (=> (not res!963069) (not e!806575))))

(declare-datatypes ((array!97334 0))(
  ( (array!97335 (arr!46976 (Array (_ BitVec 32) (_ BitVec 64))) (size!47527 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97334)

(declare-fun j!81 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1428118 (= res!963069 (validKeyInArray!0 (select (arr!46976 a!2831) j!81)))))

(declare-fun b!1428119 () Bool)

(declare-fun e!806576 () Bool)

(declare-fun e!806578 () Bool)

(assert (=> b!1428119 (= e!806576 e!806578)))

(declare-fun res!963061 () Bool)

(assert (=> b!1428119 (=> (not res!963061) (not e!806578))))

(declare-fun lt!628816 () array!97334)

(declare-datatypes ((SeekEntryResult!11277 0))(
  ( (MissingZero!11277 (index!47499 (_ BitVec 32))) (Found!11277 (index!47500 (_ BitVec 32))) (Intermediate!11277 (undefined!12089 Bool) (index!47501 (_ BitVec 32)) (x!129140 (_ BitVec 32))) (Undefined!11277) (MissingVacant!11277 (index!47502 (_ BitVec 32))) )
))
(declare-fun lt!628818 () SeekEntryResult!11277)

(declare-fun lt!628819 () (_ BitVec 64))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97334 (_ BitVec 32)) SeekEntryResult!11277)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1428119 (= res!963061 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!628819 mask!2608) lt!628819 lt!628816 mask!2608) lt!628818))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1428119 (= lt!628818 (Intermediate!11277 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1428119 (= lt!628819 (select (store (arr!46976 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1428119 (= lt!628816 (array!97335 (store (arr!46976 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47527 a!2831)))))

(declare-fun e!806577 () Bool)

(declare-fun b!1428120 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97334 (_ BitVec 32)) SeekEntryResult!11277)

(assert (=> b!1428120 (= e!806577 (= (seekEntryOrOpen!0 (select (arr!46976 a!2831) j!81) a!2831 mask!2608) (Found!11277 j!81)))))

(declare-fun b!1428121 () Bool)

(declare-fun res!963060 () Bool)

(assert (=> b!1428121 (=> (not res!963060) (not e!806575))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1428121 (= res!963060 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47527 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47527 a!2831))))))

(declare-fun b!1428122 () Bool)

(declare-fun res!963063 () Bool)

(assert (=> b!1428122 (=> (not res!963063) (not e!806578))))

(assert (=> b!1428122 (= res!963063 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!628819 lt!628816 mask!2608) lt!628818))))

(declare-fun b!1428123 () Bool)

(declare-fun res!963057 () Bool)

(assert (=> b!1428123 (=> (not res!963057) (not e!806575))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97334 (_ BitVec 32)) Bool)

(assert (=> b!1428123 (= res!963057 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1428125 () Bool)

(declare-fun res!963068 () Bool)

(assert (=> b!1428125 (=> (not res!963068) (not e!806575))))

(assert (=> b!1428125 (= res!963068 (and (= (size!47527 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47527 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47527 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1428126 () Bool)

(assert (=> b!1428126 (= e!806575 e!806576)))

(declare-fun res!963062 () Bool)

(assert (=> b!1428126 (=> (not res!963062) (not e!806576))))

(declare-fun lt!628817 () SeekEntryResult!11277)

(assert (=> b!1428126 (= res!963062 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46976 a!2831) j!81) mask!2608) (select (arr!46976 a!2831) j!81) a!2831 mask!2608) lt!628817))))

(assert (=> b!1428126 (= lt!628817 (Intermediate!11277 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1428127 () Bool)

(declare-fun res!963065 () Bool)

(assert (=> b!1428127 (=> (not res!963065) (not e!806578))))

(assert (=> b!1428127 (= res!963065 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1428128 () Bool)

(declare-fun res!963066 () Bool)

(assert (=> b!1428128 (=> (not res!963066) (not e!806575))))

(assert (=> b!1428128 (= res!963066 (validKeyInArray!0 (select (arr!46976 a!2831) i!982)))))

(declare-fun b!1428129 () Bool)

(declare-fun res!963064 () Bool)

(assert (=> b!1428129 (=> (not res!963064) (not e!806575))))

(declare-datatypes ((List!33666 0))(
  ( (Nil!33663) (Cons!33662 (h!34973 (_ BitVec 64)) (t!48367 List!33666)) )
))
(declare-fun arrayNoDuplicates!0 (array!97334 (_ BitVec 32) List!33666) Bool)

(assert (=> b!1428129 (= res!963064 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33663))))

(declare-fun b!1428130 () Bool)

(declare-fun res!963058 () Bool)

(assert (=> b!1428130 (=> (not res!963058) (not e!806578))))

(assert (=> b!1428130 (= res!963058 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46976 a!2831) j!81) a!2831 mask!2608) lt!628817))))

(declare-fun b!1428124 () Bool)

(assert (=> b!1428124 (= e!806578 (not true))))

(assert (=> b!1428124 e!806577))

(declare-fun res!963067 () Bool)

(assert (=> b!1428124 (=> (not res!963067) (not e!806577))))

(assert (=> b!1428124 (= res!963067 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48248 0))(
  ( (Unit!48249) )
))
(declare-fun lt!628815 () Unit!48248)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97334 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48248)

(assert (=> b!1428124 (= lt!628815 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun res!963059 () Bool)

(assert (=> start!123204 (=> (not res!963059) (not e!806575))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123204 (= res!963059 (validMask!0 mask!2608))))

(assert (=> start!123204 e!806575))

(assert (=> start!123204 true))

(declare-fun array_inv!35921 (array!97334) Bool)

(assert (=> start!123204 (array_inv!35921 a!2831)))

(assert (= (and start!123204 res!963059) b!1428125))

(assert (= (and b!1428125 res!963068) b!1428128))

(assert (= (and b!1428128 res!963066) b!1428118))

(assert (= (and b!1428118 res!963069) b!1428123))

(assert (= (and b!1428123 res!963057) b!1428129))

(assert (= (and b!1428129 res!963064) b!1428121))

(assert (= (and b!1428121 res!963060) b!1428126))

(assert (= (and b!1428126 res!963062) b!1428119))

(assert (= (and b!1428119 res!963061) b!1428130))

(assert (= (and b!1428130 res!963058) b!1428122))

(assert (= (and b!1428122 res!963063) b!1428127))

(assert (= (and b!1428127 res!963065) b!1428124))

(assert (= (and b!1428124 res!963067) b!1428120))

(declare-fun m!1318417 () Bool)

(assert (=> b!1428118 m!1318417))

(assert (=> b!1428118 m!1318417))

(declare-fun m!1318419 () Bool)

(assert (=> b!1428118 m!1318419))

(declare-fun m!1318421 () Bool)

(assert (=> b!1428128 m!1318421))

(assert (=> b!1428128 m!1318421))

(declare-fun m!1318423 () Bool)

(assert (=> b!1428128 m!1318423))

(assert (=> b!1428120 m!1318417))

(assert (=> b!1428120 m!1318417))

(declare-fun m!1318425 () Bool)

(assert (=> b!1428120 m!1318425))

(assert (=> b!1428130 m!1318417))

(assert (=> b!1428130 m!1318417))

(declare-fun m!1318427 () Bool)

(assert (=> b!1428130 m!1318427))

(declare-fun m!1318429 () Bool)

(assert (=> b!1428123 m!1318429))

(declare-fun m!1318431 () Bool)

(assert (=> b!1428119 m!1318431))

(assert (=> b!1428119 m!1318431))

(declare-fun m!1318433 () Bool)

(assert (=> b!1428119 m!1318433))

(declare-fun m!1318435 () Bool)

(assert (=> b!1428119 m!1318435))

(declare-fun m!1318437 () Bool)

(assert (=> b!1428119 m!1318437))

(assert (=> b!1428126 m!1318417))

(assert (=> b!1428126 m!1318417))

(declare-fun m!1318439 () Bool)

(assert (=> b!1428126 m!1318439))

(assert (=> b!1428126 m!1318439))

(assert (=> b!1428126 m!1318417))

(declare-fun m!1318441 () Bool)

(assert (=> b!1428126 m!1318441))

(declare-fun m!1318443 () Bool)

(assert (=> b!1428122 m!1318443))

(declare-fun m!1318445 () Bool)

(assert (=> b!1428124 m!1318445))

(declare-fun m!1318447 () Bool)

(assert (=> b!1428124 m!1318447))

(declare-fun m!1318449 () Bool)

(assert (=> start!123204 m!1318449))

(declare-fun m!1318451 () Bool)

(assert (=> start!123204 m!1318451))

(declare-fun m!1318453 () Bool)

(assert (=> b!1428129 m!1318453))

(check-sat (not b!1428130) (not b!1428123) (not start!123204) (not b!1428119) (not b!1428124) (not b!1428128) (not b!1428118) (not b!1428129) (not b!1428126) (not b!1428120) (not b!1428122))
(check-sat)
