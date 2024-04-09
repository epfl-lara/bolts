; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122684 () Bool)

(assert start!122684)

(declare-fun res!956078 () Bool)

(declare-fun e!803416 () Bool)

(assert (=> start!122684 (=> (not res!956078) (not e!803416))))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122684 (= res!956078 (validMask!0 mask!2608))))

(assert (=> start!122684 e!803416))

(assert (=> start!122684 true))

(declare-datatypes ((array!96967 0))(
  ( (array!96968 (arr!46797 (Array (_ BitVec 32) (_ BitVec 64))) (size!47348 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!96967)

(declare-fun array_inv!35742 (array!96967) Bool)

(assert (=> start!122684 (array_inv!35742 a!2831)))

(declare-fun b!1420536 () Bool)

(declare-fun res!956085 () Bool)

(assert (=> b!1420536 (=> (not res!956085) (not e!803416))))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1420536 (= res!956085 (validKeyInArray!0 (select (arr!46797 a!2831) j!81)))))

(declare-fun b!1420537 () Bool)

(declare-fun res!956083 () Bool)

(assert (=> b!1420537 (=> (not res!956083) (not e!803416))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96967 (_ BitVec 32)) Bool)

(assert (=> b!1420537 (= res!956083 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1420538 () Bool)

(declare-fun res!956080 () Bool)

(declare-fun e!803417 () Bool)

(assert (=> b!1420538 (=> (not res!956080) (not e!803417))))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1420538 (= res!956080 (and (bvsge mask!2608 #b00000000000000000000000000000000) (bvslt index!585 (bvadd #b00000000000000000000000000000001 mask!2608))))))

(declare-fun b!1420539 () Bool)

(declare-fun res!956081 () Bool)

(assert (=> b!1420539 (=> (not res!956081) (not e!803416))))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1420539 (= res!956081 (validKeyInArray!0 (select (arr!46797 a!2831) i!982)))))

(declare-fun b!1420540 () Bool)

(declare-fun res!956079 () Bool)

(assert (=> b!1420540 (=> (not res!956079) (not e!803417))))

(declare-fun x!605 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11104 0))(
  ( (MissingZero!11104 (index!46807 (_ BitVec 32))) (Found!11104 (index!46808 (_ BitVec 32))) (Intermediate!11104 (undefined!11916 Bool) (index!46809 (_ BitVec 32)) (x!128469 (_ BitVec 32))) (Undefined!11104) (MissingVacant!11104 (index!46810 (_ BitVec 32))) )
))
(declare-fun lt!625873 () SeekEntryResult!11104)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96967 (_ BitVec 32)) SeekEntryResult!11104)

(assert (=> b!1420540 (= res!956079 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46797 a!2831) j!81) a!2831 mask!2608) lt!625873))))

(declare-fun b!1420541 () Bool)

(assert (=> b!1420541 (= e!803416 e!803417)))

(declare-fun res!956084 () Bool)

(assert (=> b!1420541 (=> (not res!956084) (not e!803417))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1420541 (= res!956084 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46797 a!2831) j!81) mask!2608) (select (arr!46797 a!2831) j!81) a!2831 mask!2608) lt!625873))))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(assert (=> b!1420541 (= lt!625873 (Intermediate!11104 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1420542 () Bool)

(declare-fun res!956086 () Bool)

(assert (=> b!1420542 (=> (not res!956086) (not e!803416))))

(assert (=> b!1420542 (= res!956086 (and (= (size!47348 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47348 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47348 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1420543 () Bool)

(declare-fun res!956082 () Bool)

(assert (=> b!1420543 (=> (not res!956082) (not e!803416))))

(declare-datatypes ((List!33487 0))(
  ( (Nil!33484) (Cons!33483 (h!34785 (_ BitVec 64)) (t!48188 List!33487)) )
))
(declare-fun arrayNoDuplicates!0 (array!96967 (_ BitVec 32) List!33487) Bool)

(assert (=> b!1420543 (= res!956082 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33484))))

(declare-fun b!1420544 () Bool)

(assert (=> b!1420544 (= e!803417 (not (validKeyInArray!0 (select (store (arr!46797 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))))

(declare-fun b!1420545 () Bool)

(declare-fun res!956087 () Bool)

(assert (=> b!1420545 (=> (not res!956087) (not e!803416))))

(assert (=> b!1420545 (= res!956087 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47348 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47348 a!2831))))))

(declare-fun b!1420546 () Bool)

(declare-fun res!956088 () Bool)

(assert (=> b!1420546 (=> (not res!956088) (not e!803417))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(assert (=> b!1420546 (= res!956088 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46797 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) mask!2608) (select (store (arr!46797 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) (array!96968 (store (arr!46797 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47348 a!2831)) mask!2608) (Intermediate!11104 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13)))))

(assert (= (and start!122684 res!956078) b!1420542))

(assert (= (and b!1420542 res!956086) b!1420539))

(assert (= (and b!1420539 res!956081) b!1420536))

(assert (= (and b!1420536 res!956085) b!1420537))

(assert (= (and b!1420537 res!956083) b!1420543))

(assert (= (and b!1420543 res!956082) b!1420545))

(assert (= (and b!1420545 res!956087) b!1420541))

(assert (= (and b!1420541 res!956084) b!1420546))

(assert (= (and b!1420546 res!956088) b!1420540))

(assert (= (and b!1420540 res!956079) b!1420538))

(assert (= (and b!1420538 res!956080) b!1420544))

(declare-fun m!1311111 () Bool)

(assert (=> start!122684 m!1311111))

(declare-fun m!1311113 () Bool)

(assert (=> start!122684 m!1311113))

(declare-fun m!1311115 () Bool)

(assert (=> b!1420541 m!1311115))

(assert (=> b!1420541 m!1311115))

(declare-fun m!1311117 () Bool)

(assert (=> b!1420541 m!1311117))

(assert (=> b!1420541 m!1311117))

(assert (=> b!1420541 m!1311115))

(declare-fun m!1311119 () Bool)

(assert (=> b!1420541 m!1311119))

(assert (=> b!1420536 m!1311115))

(assert (=> b!1420536 m!1311115))

(declare-fun m!1311121 () Bool)

(assert (=> b!1420536 m!1311121))

(declare-fun m!1311123 () Bool)

(assert (=> b!1420539 m!1311123))

(assert (=> b!1420539 m!1311123))

(declare-fun m!1311125 () Bool)

(assert (=> b!1420539 m!1311125))

(declare-fun m!1311127 () Bool)

(assert (=> b!1420543 m!1311127))

(assert (=> b!1420540 m!1311115))

(assert (=> b!1420540 m!1311115))

(declare-fun m!1311129 () Bool)

(assert (=> b!1420540 m!1311129))

(declare-fun m!1311131 () Bool)

(assert (=> b!1420537 m!1311131))

(declare-fun m!1311133 () Bool)

(assert (=> b!1420544 m!1311133))

(declare-fun m!1311135 () Bool)

(assert (=> b!1420544 m!1311135))

(assert (=> b!1420544 m!1311135))

(declare-fun m!1311137 () Bool)

(assert (=> b!1420544 m!1311137))

(assert (=> b!1420546 m!1311133))

(assert (=> b!1420546 m!1311135))

(assert (=> b!1420546 m!1311135))

(declare-fun m!1311139 () Bool)

(assert (=> b!1420546 m!1311139))

(assert (=> b!1420546 m!1311139))

(assert (=> b!1420546 m!1311135))

(declare-fun m!1311141 () Bool)

(assert (=> b!1420546 m!1311141))

(push 1)

(assert (not b!1420540))

(assert (not b!1420546))

(assert (not b!1420541))

(assert (not b!1420539))

(assert (not b!1420544))

(assert (not b!1420543))

(assert (not b!1420537))

(assert (not b!1420536))

(assert (not start!122684))

