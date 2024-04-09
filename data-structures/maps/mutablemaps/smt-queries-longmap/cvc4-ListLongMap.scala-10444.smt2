; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122870 () Bool)

(assert start!122870)

(declare-fun b!1424473 () Bool)

(declare-fun res!960021 () Bool)

(declare-fun e!805050 () Bool)

(assert (=> b!1424473 (=> (not res!960021) (not e!805050))))

(declare-datatypes ((SeekEntryResult!11197 0))(
  ( (MissingZero!11197 (index!47179 (_ BitVec 32))) (Found!11197 (index!47180 (_ BitVec 32))) (Intermediate!11197 (undefined!12009 Bool) (index!47181 (_ BitVec 32)) (x!128810 (_ BitVec 32))) (Undefined!11197) (MissingVacant!11197 (index!47182 (_ BitVec 32))) )
))
(declare-fun lt!627547 () SeekEntryResult!11197)

(declare-fun x!605 () (_ BitVec 32))

(declare-datatypes ((array!97153 0))(
  ( (array!97154 (arr!46890 (Array (_ BitVec 32) (_ BitVec 64))) (size!47441 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97153)

(declare-fun index!585 () (_ BitVec 32))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97153 (_ BitVec 32)) SeekEntryResult!11197)

(assert (=> b!1424473 (= res!960021 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46890 a!2831) j!81) a!2831 mask!2608) lt!627547))))

(declare-fun b!1424474 () Bool)

(declare-fun e!805051 () Bool)

(assert (=> b!1424474 (= e!805051 true)))

(declare-fun lt!627542 () (_ BitVec 32))

(declare-fun lt!627546 () array!97153)

(declare-fun lt!627544 () (_ BitVec 64))

(declare-fun lt!627541 () SeekEntryResult!11197)

(assert (=> b!1424474 (= lt!627541 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!627542 lt!627544 lt!627546 mask!2608))))

(declare-fun b!1424475 () Bool)

(declare-fun res!960028 () Bool)

(declare-fun e!805053 () Bool)

(assert (=> b!1424475 (=> (not res!960028) (not e!805053))))

(declare-fun i!982 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1424475 (= res!960028 (validKeyInArray!0 (select (arr!46890 a!2831) i!982)))))

(declare-fun res!960030 () Bool)

(assert (=> start!122870 (=> (not res!960030) (not e!805053))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122870 (= res!960030 (validMask!0 mask!2608))))

(assert (=> start!122870 e!805053))

(assert (=> start!122870 true))

(declare-fun array_inv!35835 (array!97153) Bool)

(assert (=> start!122870 (array_inv!35835 a!2831)))

(declare-fun b!1424476 () Bool)

(declare-fun res!960015 () Bool)

(assert (=> b!1424476 (=> (not res!960015) (not e!805053))))

(declare-datatypes ((List!33580 0))(
  ( (Nil!33577) (Cons!33576 (h!34878 (_ BitVec 64)) (t!48281 List!33580)) )
))
(declare-fun arrayNoDuplicates!0 (array!97153 (_ BitVec 32) List!33580) Bool)

(assert (=> b!1424476 (= res!960015 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33577))))

(declare-fun b!1424477 () Bool)

(declare-fun res!960018 () Bool)

(assert (=> b!1424477 (=> (not res!960018) (not e!805053))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(assert (=> b!1424477 (= res!960018 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47441 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47441 a!2831))))))

(declare-fun b!1424478 () Bool)

(declare-fun e!805054 () Bool)

(assert (=> b!1424478 (= e!805050 (not e!805054))))

(declare-fun res!960029 () Bool)

(assert (=> b!1424478 (=> res!960029 e!805054)))

(assert (=> b!1424478 (= res!960029 (or (= (select (arr!46890 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46890 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46890 a!2831) index!585) (select (arr!46890 a!2831) j!81)) (= (select (store (arr!46890 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!805049 () Bool)

(assert (=> b!1424478 e!805049))

(declare-fun res!960026 () Bool)

(assert (=> b!1424478 (=> (not res!960026) (not e!805049))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97153 (_ BitVec 32)) Bool)

(assert (=> b!1424478 (= res!960026 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48178 0))(
  ( (Unit!48179) )
))
(declare-fun lt!627543 () Unit!48178)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97153 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48178)

(assert (=> b!1424478 (= lt!627543 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1424479 () Bool)

(declare-fun res!960020 () Bool)

(assert (=> b!1424479 (=> (not res!960020) (not e!805053))))

(assert (=> b!1424479 (= res!960020 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1424480 () Bool)

(assert (=> b!1424480 (= e!805054 e!805051)))

(declare-fun res!960024 () Bool)

(assert (=> b!1424480 (=> res!960024 e!805051)))

(assert (=> b!1424480 (= res!960024 (or (bvslt (bvadd #b00000000000000000000000000000001 x!605) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!605) #b01111111111111111111111111111110) (bvslt lt!627542 #b00000000000000000000000000000000) (bvsge lt!627542 (size!47441 a!2831))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1424480 (= lt!627542 (nextIndex!0 index!585 x!605 mask!2608))))

(declare-fun b!1424481 () Bool)

(declare-fun e!805052 () Bool)

(assert (=> b!1424481 (= e!805053 e!805052)))

(declare-fun res!960027 () Bool)

(assert (=> b!1424481 (=> (not res!960027) (not e!805052))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1424481 (= res!960027 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46890 a!2831) j!81) mask!2608) (select (arr!46890 a!2831) j!81) a!2831 mask!2608) lt!627547))))

(assert (=> b!1424481 (= lt!627547 (Intermediate!11197 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1424482 () Bool)

(declare-fun res!960022 () Bool)

(assert (=> b!1424482 (=> (not res!960022) (not e!805053))))

(assert (=> b!1424482 (= res!960022 (and (= (size!47441 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47441 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47441 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1424483 () Bool)

(declare-fun res!960016 () Bool)

(assert (=> b!1424483 (=> res!960016 e!805051)))

(assert (=> b!1424483 (= res!960016 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!627542 (select (arr!46890 a!2831) j!81) a!2831 mask!2608) lt!627547)))))

(declare-fun b!1424484 () Bool)

(declare-fun res!960023 () Bool)

(assert (=> b!1424484 (=> (not res!960023) (not e!805053))))

(assert (=> b!1424484 (= res!960023 (validKeyInArray!0 (select (arr!46890 a!2831) j!81)))))

(declare-fun b!1424485 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97153 (_ BitVec 32)) SeekEntryResult!11197)

(assert (=> b!1424485 (= e!805049 (= (seekEntryOrOpen!0 (select (arr!46890 a!2831) j!81) a!2831 mask!2608) (Found!11197 j!81)))))

(declare-fun b!1424486 () Bool)

(declare-fun res!960025 () Bool)

(assert (=> b!1424486 (=> (not res!960025) (not e!805050))))

(declare-fun lt!627545 () SeekEntryResult!11197)

(assert (=> b!1424486 (= res!960025 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!627544 lt!627546 mask!2608) lt!627545))))

(declare-fun b!1424487 () Bool)

(assert (=> b!1424487 (= e!805052 e!805050)))

(declare-fun res!960019 () Bool)

(assert (=> b!1424487 (=> (not res!960019) (not e!805050))))

(assert (=> b!1424487 (= res!960019 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!627544 mask!2608) lt!627544 lt!627546 mask!2608) lt!627545))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1424487 (= lt!627545 (Intermediate!11197 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1424487 (= lt!627544 (select (store (arr!46890 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1424487 (= lt!627546 (array!97154 (store (arr!46890 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47441 a!2831)))))

(declare-fun b!1424488 () Bool)

(declare-fun res!960017 () Bool)

(assert (=> b!1424488 (=> (not res!960017) (not e!805050))))

(assert (=> b!1424488 (= res!960017 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(assert (= (and start!122870 res!960030) b!1424482))

(assert (= (and b!1424482 res!960022) b!1424475))

(assert (= (and b!1424475 res!960028) b!1424484))

(assert (= (and b!1424484 res!960023) b!1424479))

(assert (= (and b!1424479 res!960020) b!1424476))

(assert (= (and b!1424476 res!960015) b!1424477))

(assert (= (and b!1424477 res!960018) b!1424481))

(assert (= (and b!1424481 res!960027) b!1424487))

(assert (= (and b!1424487 res!960019) b!1424473))

(assert (= (and b!1424473 res!960021) b!1424486))

(assert (= (and b!1424486 res!960025) b!1424488))

(assert (= (and b!1424488 res!960017) b!1424478))

(assert (= (and b!1424478 res!960026) b!1424485))

(assert (= (and b!1424478 (not res!960029)) b!1424480))

(assert (= (and b!1424480 (not res!960024)) b!1424483))

(assert (= (and b!1424483 (not res!960016)) b!1424474))

(declare-fun m!1315079 () Bool)

(assert (=> start!122870 m!1315079))

(declare-fun m!1315081 () Bool)

(assert (=> start!122870 m!1315081))

(declare-fun m!1315083 () Bool)

(assert (=> b!1424478 m!1315083))

(declare-fun m!1315085 () Bool)

(assert (=> b!1424478 m!1315085))

(declare-fun m!1315087 () Bool)

(assert (=> b!1424478 m!1315087))

(declare-fun m!1315089 () Bool)

(assert (=> b!1424478 m!1315089))

(declare-fun m!1315091 () Bool)

(assert (=> b!1424478 m!1315091))

(declare-fun m!1315093 () Bool)

(assert (=> b!1424478 m!1315093))

(assert (=> b!1424484 m!1315091))

(assert (=> b!1424484 m!1315091))

(declare-fun m!1315095 () Bool)

(assert (=> b!1424484 m!1315095))

(declare-fun m!1315097 () Bool)

(assert (=> b!1424486 m!1315097))

(assert (=> b!1424485 m!1315091))

(assert (=> b!1424485 m!1315091))

(declare-fun m!1315099 () Bool)

(assert (=> b!1424485 m!1315099))

(assert (=> b!1424481 m!1315091))

(assert (=> b!1424481 m!1315091))

(declare-fun m!1315101 () Bool)

(assert (=> b!1424481 m!1315101))

(assert (=> b!1424481 m!1315101))

(assert (=> b!1424481 m!1315091))

(declare-fun m!1315103 () Bool)

(assert (=> b!1424481 m!1315103))

(declare-fun m!1315105 () Bool)

(assert (=> b!1424479 m!1315105))

(declare-fun m!1315107 () Bool)

(assert (=> b!1424474 m!1315107))

(declare-fun m!1315109 () Bool)

(assert (=> b!1424480 m!1315109))

(assert (=> b!1424483 m!1315091))

(assert (=> b!1424483 m!1315091))

(declare-fun m!1315111 () Bool)

(assert (=> b!1424483 m!1315111))

(declare-fun m!1315113 () Bool)

(assert (=> b!1424476 m!1315113))

(declare-fun m!1315115 () Bool)

(assert (=> b!1424487 m!1315115))

(assert (=> b!1424487 m!1315115))

(declare-fun m!1315117 () Bool)

(assert (=> b!1424487 m!1315117))

(assert (=> b!1424487 m!1315083))

(declare-fun m!1315119 () Bool)

(assert (=> b!1424487 m!1315119))

(declare-fun m!1315121 () Bool)

(assert (=> b!1424475 m!1315121))

(assert (=> b!1424475 m!1315121))

(declare-fun m!1315123 () Bool)

(assert (=> b!1424475 m!1315123))

(assert (=> b!1424473 m!1315091))

(assert (=> b!1424473 m!1315091))

(declare-fun m!1315125 () Bool)

(assert (=> b!1424473 m!1315125))

(push 1)

