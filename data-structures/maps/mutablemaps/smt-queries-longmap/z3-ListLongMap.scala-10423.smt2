; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!122742 () Bool)

(assert start!122742)

(declare-fun e!803771 () Bool)

(declare-fun b!1421494 () Bool)

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((array!97025 0))(
  ( (array!97026 (arr!46826 (Array (_ BitVec 32) (_ BitVec 64))) (size!47377 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97025)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11133 0))(
  ( (MissingZero!11133 (index!46923 (_ BitVec 32))) (Found!11133 (index!46924 (_ BitVec 32))) (Intermediate!11133 (undefined!11945 Bool) (index!46925 (_ BitVec 32)) (x!128578 (_ BitVec 32))) (Undefined!11133) (MissingVacant!11133 (index!46926 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97025 (_ BitVec 32)) SeekEntryResult!11133)

(assert (=> b!1421494 (= e!803771 (= (seekEntryOrOpen!0 (select (arr!46826 a!2831) j!81) a!2831 mask!2608) (Found!11133 j!81)))))

(declare-fun b!1421495 () Bool)

(declare-fun e!803770 () Bool)

(declare-fun e!803767 () Bool)

(assert (=> b!1421495 (= e!803770 e!803767)))

(declare-fun res!957042 () Bool)

(assert (=> b!1421495 (=> (not res!957042) (not e!803767))))

(declare-fun lt!626262 () (_ BitVec 64))

(declare-fun lt!626259 () array!97025)

(declare-fun lt!626261 () SeekEntryResult!11133)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97025 (_ BitVec 32)) SeekEntryResult!11133)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1421495 (= res!957042 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!626262 mask!2608) lt!626262 lt!626259 mask!2608) lt!626261))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1421495 (= lt!626261 (Intermediate!11133 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1421495 (= lt!626262 (select (store (arr!46826 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1421495 (= lt!626259 (array!97026 (store (arr!46826 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47377 a!2831)))))

(declare-fun b!1421496 () Bool)

(declare-fun res!957048 () Bool)

(declare-fun e!803768 () Bool)

(assert (=> b!1421496 (=> (not res!957048) (not e!803768))))

(assert (=> b!1421496 (= res!957048 (and (= (size!47377 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47377 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47377 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1421497 () Bool)

(declare-fun res!957047 () Bool)

(assert (=> b!1421497 (=> (not res!957047) (not e!803767))))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1421497 (= res!957047 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!626262 lt!626259 mask!2608) lt!626261))))

(declare-fun b!1421498 () Bool)

(assert (=> b!1421498 (= e!803767 (not true))))

(assert (=> b!1421498 e!803771))

(declare-fun res!957046 () Bool)

(assert (=> b!1421498 (=> (not res!957046) (not e!803771))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97025 (_ BitVec 32)) Bool)

(assert (=> b!1421498 (= res!957046 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48050 0))(
  ( (Unit!48051) )
))
(declare-fun lt!626260 () Unit!48050)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97025 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48050)

(assert (=> b!1421498 (= lt!626260 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1421499 () Bool)

(declare-fun res!957043 () Bool)

(assert (=> b!1421499 (=> (not res!957043) (not e!803768))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1421499 (= res!957043 (validKeyInArray!0 (select (arr!46826 a!2831) j!81)))))

(declare-fun res!957041 () Bool)

(assert (=> start!122742 (=> (not res!957041) (not e!803768))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122742 (= res!957041 (validMask!0 mask!2608))))

(assert (=> start!122742 e!803768))

(assert (=> start!122742 true))

(declare-fun array_inv!35771 (array!97025) Bool)

(assert (=> start!122742 (array_inv!35771 a!2831)))

(declare-fun b!1421500 () Bool)

(declare-fun res!957039 () Bool)

(assert (=> b!1421500 (=> (not res!957039) (not e!803767))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(assert (=> b!1421500 (= res!957039 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1421501 () Bool)

(declare-fun res!957037 () Bool)

(assert (=> b!1421501 (=> (not res!957037) (not e!803767))))

(declare-fun lt!626263 () SeekEntryResult!11133)

(assert (=> b!1421501 (= res!957037 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46826 a!2831) j!81) a!2831 mask!2608) lt!626263))))

(declare-fun b!1421502 () Bool)

(declare-fun res!957040 () Bool)

(assert (=> b!1421502 (=> (not res!957040) (not e!803768))))

(assert (=> b!1421502 (= res!957040 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47377 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47377 a!2831))))))

(declare-fun b!1421503 () Bool)

(declare-fun res!957038 () Bool)

(assert (=> b!1421503 (=> (not res!957038) (not e!803768))))

(declare-datatypes ((List!33516 0))(
  ( (Nil!33513) (Cons!33512 (h!34814 (_ BitVec 64)) (t!48217 List!33516)) )
))
(declare-fun arrayNoDuplicates!0 (array!97025 (_ BitVec 32) List!33516) Bool)

(assert (=> b!1421503 (= res!957038 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33513))))

(declare-fun b!1421504 () Bool)

(assert (=> b!1421504 (= e!803768 e!803770)))

(declare-fun res!957045 () Bool)

(assert (=> b!1421504 (=> (not res!957045) (not e!803770))))

(assert (=> b!1421504 (= res!957045 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46826 a!2831) j!81) mask!2608) (select (arr!46826 a!2831) j!81) a!2831 mask!2608) lt!626263))))

(assert (=> b!1421504 (= lt!626263 (Intermediate!11133 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1421505 () Bool)

(declare-fun res!957036 () Bool)

(assert (=> b!1421505 (=> (not res!957036) (not e!803768))))

(assert (=> b!1421505 (= res!957036 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1421506 () Bool)

(declare-fun res!957044 () Bool)

(assert (=> b!1421506 (=> (not res!957044) (not e!803768))))

(assert (=> b!1421506 (= res!957044 (validKeyInArray!0 (select (arr!46826 a!2831) i!982)))))

(assert (= (and start!122742 res!957041) b!1421496))

(assert (= (and b!1421496 res!957048) b!1421506))

(assert (= (and b!1421506 res!957044) b!1421499))

(assert (= (and b!1421499 res!957043) b!1421505))

(assert (= (and b!1421505 res!957036) b!1421503))

(assert (= (and b!1421503 res!957038) b!1421502))

(assert (= (and b!1421502 res!957040) b!1421504))

(assert (= (and b!1421504 res!957045) b!1421495))

(assert (= (and b!1421495 res!957042) b!1421501))

(assert (= (and b!1421501 res!957037) b!1421497))

(assert (= (and b!1421497 res!957047) b!1421500))

(assert (= (and b!1421500 res!957039) b!1421498))

(assert (= (and b!1421498 res!957046) b!1421494))

(declare-fun m!1312093 () Bool)

(assert (=> b!1421494 m!1312093))

(assert (=> b!1421494 m!1312093))

(declare-fun m!1312095 () Bool)

(assert (=> b!1421494 m!1312095))

(assert (=> b!1421504 m!1312093))

(assert (=> b!1421504 m!1312093))

(declare-fun m!1312097 () Bool)

(assert (=> b!1421504 m!1312097))

(assert (=> b!1421504 m!1312097))

(assert (=> b!1421504 m!1312093))

(declare-fun m!1312099 () Bool)

(assert (=> b!1421504 m!1312099))

(declare-fun m!1312101 () Bool)

(assert (=> b!1421497 m!1312101))

(declare-fun m!1312103 () Bool)

(assert (=> b!1421503 m!1312103))

(assert (=> b!1421501 m!1312093))

(assert (=> b!1421501 m!1312093))

(declare-fun m!1312105 () Bool)

(assert (=> b!1421501 m!1312105))

(declare-fun m!1312107 () Bool)

(assert (=> start!122742 m!1312107))

(declare-fun m!1312109 () Bool)

(assert (=> start!122742 m!1312109))

(declare-fun m!1312111 () Bool)

(assert (=> b!1421505 m!1312111))

(declare-fun m!1312113 () Bool)

(assert (=> b!1421495 m!1312113))

(assert (=> b!1421495 m!1312113))

(declare-fun m!1312115 () Bool)

(assert (=> b!1421495 m!1312115))

(declare-fun m!1312117 () Bool)

(assert (=> b!1421495 m!1312117))

(declare-fun m!1312119 () Bool)

(assert (=> b!1421495 m!1312119))

(declare-fun m!1312121 () Bool)

(assert (=> b!1421506 m!1312121))

(assert (=> b!1421506 m!1312121))

(declare-fun m!1312123 () Bool)

(assert (=> b!1421506 m!1312123))

(declare-fun m!1312125 () Bool)

(assert (=> b!1421498 m!1312125))

(declare-fun m!1312127 () Bool)

(assert (=> b!1421498 m!1312127))

(assert (=> b!1421499 m!1312093))

(assert (=> b!1421499 m!1312093))

(declare-fun m!1312129 () Bool)

(assert (=> b!1421499 m!1312129))

(check-sat (not b!1421501) (not b!1421498) (not b!1421505) (not b!1421497) (not b!1421503) (not b!1421504) (not start!122742) (not b!1421494) (not b!1421499) (not b!1421506) (not b!1421495))
(check-sat)
