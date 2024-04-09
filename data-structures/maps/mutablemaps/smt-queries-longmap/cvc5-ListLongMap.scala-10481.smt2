; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!123304 () Bool)

(assert start!123304)

(declare-fun b!1429324 () Bool)

(declare-fun res!964064 () Bool)

(declare-fun e!807113 () Bool)

(assert (=> b!1429324 (=> (not res!964064) (not e!807113))))

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((array!97383 0))(
  ( (array!97384 (arr!46999 (Array (_ BitVec 32) (_ BitVec 64))) (size!47550 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97383)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1429324 (= res!964064 (and (= (size!47550 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47550 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47550 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1429325 () Bool)

(declare-fun res!964069 () Bool)

(assert (=> b!1429325 (=> (not res!964069) (not e!807113))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1429325 (= res!964069 (validKeyInArray!0 (select (arr!46999 a!2831) i!982)))))

(declare-fun b!1429326 () Bool)

(declare-fun res!964067 () Bool)

(declare-fun e!807112 () Bool)

(assert (=> b!1429326 (=> (not res!964067) (not e!807112))))

(declare-fun lt!629293 () (_ BitVec 64))

(declare-fun lt!629296 () array!97383)

(declare-datatypes ((SeekEntryResult!11300 0))(
  ( (MissingZero!11300 (index!47591 (_ BitVec 32))) (Found!11300 (index!47592 (_ BitVec 32))) (Intermediate!11300 (undefined!12112 Bool) (index!47593 (_ BitVec 32)) (x!129233 (_ BitVec 32))) (Undefined!11300) (MissingVacant!11300 (index!47594 (_ BitVec 32))) )
))
(declare-fun lt!629295 () SeekEntryResult!11300)

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97383 (_ BitVec 32)) SeekEntryResult!11300)

(assert (=> b!1429326 (= res!964067 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!629293 lt!629296 mask!2608) lt!629295))))

(declare-fun b!1429327 () Bool)

(declare-fun res!964062 () Bool)

(assert (=> b!1429327 (=> (not res!964062) (not e!807113))))

(assert (=> b!1429327 (= res!964062 (validKeyInArray!0 (select (arr!46999 a!2831) j!81)))))

(declare-fun b!1429329 () Bool)

(declare-fun res!964068 () Bool)

(assert (=> b!1429329 (=> (not res!964068) (not e!807113))))

(declare-datatypes ((List!33689 0))(
  ( (Nil!33686) (Cons!33685 (h!34999 (_ BitVec 64)) (t!48390 List!33689)) )
))
(declare-fun arrayNoDuplicates!0 (array!97383 (_ BitVec 32) List!33689) Bool)

(assert (=> b!1429329 (= res!964068 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33686))))

(declare-fun b!1429330 () Bool)

(declare-fun res!964071 () Bool)

(assert (=> b!1429330 (=> (not res!964071) (not e!807113))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97383 (_ BitVec 32)) Bool)

(assert (=> b!1429330 (= res!964071 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1429331 () Bool)

(declare-fun res!964066 () Bool)

(assert (=> b!1429331 (=> (not res!964066) (not e!807113))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(assert (=> b!1429331 (= res!964066 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47550 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47550 a!2831))))))

(declare-fun b!1429332 () Bool)

(declare-fun e!807111 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97383 (_ BitVec 32)) SeekEntryResult!11300)

(assert (=> b!1429332 (= e!807111 (= (seekEntryOrOpen!0 (select (arr!46999 a!2831) j!81) a!2831 mask!2608) (Found!11300 j!81)))))

(declare-fun res!964065 () Bool)

(assert (=> start!123304 (=> (not res!964065) (not e!807113))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123304 (= res!964065 (validMask!0 mask!2608))))

(assert (=> start!123304 e!807113))

(assert (=> start!123304 true))

(declare-fun array_inv!35944 (array!97383) Bool)

(assert (=> start!123304 (array_inv!35944 a!2831)))

(declare-fun b!1429328 () Bool)

(declare-fun res!964072 () Bool)

(assert (=> b!1429328 (=> (not res!964072) (not e!807112))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1429328 (= res!964072 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1429333 () Bool)

(declare-fun res!964074 () Bool)

(assert (=> b!1429333 (=> (not res!964074) (not e!807112))))

(declare-fun lt!629294 () SeekEntryResult!11300)

(assert (=> b!1429333 (= res!964074 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46999 a!2831) j!81) a!2831 mask!2608) lt!629294))))

(declare-fun b!1429334 () Bool)

(declare-fun e!807110 () Bool)

(assert (=> b!1429334 (= e!807113 e!807110)))

(declare-fun res!964070 () Bool)

(assert (=> b!1429334 (=> (not res!964070) (not e!807110))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1429334 (= res!964070 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46999 a!2831) j!81) mask!2608) (select (arr!46999 a!2831) j!81) a!2831 mask!2608) lt!629294))))

(assert (=> b!1429334 (= lt!629294 (Intermediate!11300 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1429335 () Bool)

(assert (=> b!1429335 (= e!807112 (not true))))

(assert (=> b!1429335 e!807111))

(declare-fun res!964073 () Bool)

(assert (=> b!1429335 (=> (not res!964073) (not e!807111))))

(assert (=> b!1429335 (= res!964073 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48294 0))(
  ( (Unit!48295) )
))
(declare-fun lt!629292 () Unit!48294)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97383 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48294)

(assert (=> b!1429335 (= lt!629292 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1429336 () Bool)

(assert (=> b!1429336 (= e!807110 e!807112)))

(declare-fun res!964063 () Bool)

(assert (=> b!1429336 (=> (not res!964063) (not e!807112))))

(assert (=> b!1429336 (= res!964063 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!629293 mask!2608) lt!629293 lt!629296 mask!2608) lt!629295))))

(assert (=> b!1429336 (= lt!629295 (Intermediate!11300 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1429336 (= lt!629293 (select (store (arr!46999 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1429336 (= lt!629296 (array!97384 (store (arr!46999 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47550 a!2831)))))

(assert (= (and start!123304 res!964065) b!1429324))

(assert (= (and b!1429324 res!964064) b!1429325))

(assert (= (and b!1429325 res!964069) b!1429327))

(assert (= (and b!1429327 res!964062) b!1429330))

(assert (= (and b!1429330 res!964071) b!1429329))

(assert (= (and b!1429329 res!964068) b!1429331))

(assert (= (and b!1429331 res!964066) b!1429334))

(assert (= (and b!1429334 res!964070) b!1429336))

(assert (= (and b!1429336 res!964063) b!1429333))

(assert (= (and b!1429333 res!964074) b!1429326))

(assert (= (and b!1429326 res!964067) b!1429328))

(assert (= (and b!1429328 res!964072) b!1429335))

(assert (= (and b!1429335 res!964073) b!1429332))

(declare-fun m!1319483 () Bool)

(assert (=> b!1429336 m!1319483))

(assert (=> b!1429336 m!1319483))

(declare-fun m!1319485 () Bool)

(assert (=> b!1429336 m!1319485))

(declare-fun m!1319487 () Bool)

(assert (=> b!1429336 m!1319487))

(declare-fun m!1319489 () Bool)

(assert (=> b!1429336 m!1319489))

(declare-fun m!1319491 () Bool)

(assert (=> b!1429329 m!1319491))

(declare-fun m!1319493 () Bool)

(assert (=> b!1429327 m!1319493))

(assert (=> b!1429327 m!1319493))

(declare-fun m!1319495 () Bool)

(assert (=> b!1429327 m!1319495))

(assert (=> b!1429332 m!1319493))

(assert (=> b!1429332 m!1319493))

(declare-fun m!1319497 () Bool)

(assert (=> b!1429332 m!1319497))

(assert (=> b!1429334 m!1319493))

(assert (=> b!1429334 m!1319493))

(declare-fun m!1319499 () Bool)

(assert (=> b!1429334 m!1319499))

(assert (=> b!1429334 m!1319499))

(assert (=> b!1429334 m!1319493))

(declare-fun m!1319501 () Bool)

(assert (=> b!1429334 m!1319501))

(declare-fun m!1319503 () Bool)

(assert (=> b!1429325 m!1319503))

(assert (=> b!1429325 m!1319503))

(declare-fun m!1319505 () Bool)

(assert (=> b!1429325 m!1319505))

(declare-fun m!1319507 () Bool)

(assert (=> b!1429326 m!1319507))

(declare-fun m!1319509 () Bool)

(assert (=> b!1429330 m!1319509))

(declare-fun m!1319511 () Bool)

(assert (=> start!123304 m!1319511))

(declare-fun m!1319513 () Bool)

(assert (=> start!123304 m!1319513))

(declare-fun m!1319515 () Bool)

(assert (=> b!1429335 m!1319515))

(declare-fun m!1319517 () Bool)

(assert (=> b!1429335 m!1319517))

(assert (=> b!1429333 m!1319493))

(assert (=> b!1429333 m!1319493))

(declare-fun m!1319519 () Bool)

(assert (=> b!1429333 m!1319519))

(push 1)

