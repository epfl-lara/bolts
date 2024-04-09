; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!122676 () Bool)

(assert start!122676)

(declare-fun b!1420412 () Bool)

(declare-fun res!955957 () Bool)

(declare-fun e!803384 () Bool)

(assert (=> b!1420412 (=> (not res!955957) (not e!803384))))

(declare-datatypes ((array!96959 0))(
  ( (array!96960 (arr!46793 (Array (_ BitVec 32) (_ BitVec 64))) (size!47344 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!96959)

(declare-fun j!81 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1420412 (= res!955957 (validKeyInArray!0 (select (arr!46793 a!2831) j!81)))))

(declare-fun b!1420413 () Bool)

(declare-fun res!955956 () Bool)

(assert (=> b!1420413 (=> (not res!955956) (not e!803384))))

(declare-datatypes ((List!33483 0))(
  ( (Nil!33480) (Cons!33479 (h!34781 (_ BitVec 64)) (t!48184 List!33483)) )
))
(declare-fun arrayNoDuplicates!0 (array!96959 (_ BitVec 32) List!33483) Bool)

(assert (=> b!1420413 (= res!955956 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33480))))

(declare-fun b!1420414 () Bool)

(declare-fun res!955959 () Bool)

(assert (=> b!1420414 (=> (not res!955959) (not e!803384))))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96959 (_ BitVec 32)) Bool)

(assert (=> b!1420414 (= res!955959 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1420415 () Bool)

(assert (=> b!1420415 (= e!803384 false)))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11100 0))(
  ( (MissingZero!11100 (index!46791 (_ BitVec 32))) (Found!11100 (index!46792 (_ BitVec 32))) (Intermediate!11100 (undefined!11912 Bool) (index!46793 (_ BitVec 32)) (x!128457 (_ BitVec 32))) (Undefined!11100) (MissingVacant!11100 (index!46794 (_ BitVec 32))) )
))
(declare-fun lt!625861 () SeekEntryResult!11100)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96959 (_ BitVec 32)) SeekEntryResult!11100)

(assert (=> b!1420415 (= lt!625861 (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46793 a!2831) j!81) a!2831 mask!2608))))

(declare-fun b!1420416 () Bool)

(declare-fun res!955962 () Bool)

(assert (=> b!1420416 (=> (not res!955962) (not e!803384))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1420416 (= res!955962 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46793 a!2831) j!81) mask!2608) (select (arr!46793 a!2831) j!81) a!2831 mask!2608) (Intermediate!11100 false intermediateBeforeIndex!13 intermediateBeforeX!13)))))

(declare-fun b!1420417 () Bool)

(declare-fun res!955960 () Bool)

(assert (=> b!1420417 (=> (not res!955960) (not e!803384))))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1420417 (= res!955960 (and (= (size!47344 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47344 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47344 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1420419 () Bool)

(declare-fun res!955954 () Bool)

(assert (=> b!1420419 (=> (not res!955954) (not e!803384))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(assert (=> b!1420419 (= res!955954 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46793 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) mask!2608) (select (store (arr!46793 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) (array!96960 (store (arr!46793 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47344 a!2831)) mask!2608) (Intermediate!11100 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13)))))

(declare-fun b!1420420 () Bool)

(declare-fun res!955958 () Bool)

(assert (=> b!1420420 (=> (not res!955958) (not e!803384))))

(assert (=> b!1420420 (= res!955958 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47344 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47344 a!2831))))))

(declare-fun b!1420418 () Bool)

(declare-fun res!955961 () Bool)

(assert (=> b!1420418 (=> (not res!955961) (not e!803384))))

(assert (=> b!1420418 (= res!955961 (validKeyInArray!0 (select (arr!46793 a!2831) i!982)))))

(declare-fun res!955955 () Bool)

(assert (=> start!122676 (=> (not res!955955) (not e!803384))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122676 (= res!955955 (validMask!0 mask!2608))))

(assert (=> start!122676 e!803384))

(assert (=> start!122676 true))

(declare-fun array_inv!35738 (array!96959) Bool)

(assert (=> start!122676 (array_inv!35738 a!2831)))

(assert (= (and start!122676 res!955955) b!1420417))

(assert (= (and b!1420417 res!955960) b!1420418))

(assert (= (and b!1420418 res!955961) b!1420412))

(assert (= (and b!1420412 res!955957) b!1420414))

(assert (= (and b!1420414 res!955959) b!1420413))

(assert (= (and b!1420413 res!955956) b!1420420))

(assert (= (and b!1420420 res!955958) b!1420416))

(assert (= (and b!1420416 res!955962) b!1420419))

(assert (= (and b!1420419 res!955954) b!1420415))

(declare-fun m!1310987 () Bool)

(assert (=> b!1420413 m!1310987))

(declare-fun m!1310989 () Bool)

(assert (=> b!1420416 m!1310989))

(assert (=> b!1420416 m!1310989))

(declare-fun m!1310991 () Bool)

(assert (=> b!1420416 m!1310991))

(assert (=> b!1420416 m!1310991))

(assert (=> b!1420416 m!1310989))

(declare-fun m!1310993 () Bool)

(assert (=> b!1420416 m!1310993))

(declare-fun m!1310995 () Bool)

(assert (=> b!1420418 m!1310995))

(assert (=> b!1420418 m!1310995))

(declare-fun m!1310997 () Bool)

(assert (=> b!1420418 m!1310997))

(declare-fun m!1310999 () Bool)

(assert (=> b!1420419 m!1310999))

(declare-fun m!1311001 () Bool)

(assert (=> b!1420419 m!1311001))

(assert (=> b!1420419 m!1311001))

(declare-fun m!1311003 () Bool)

(assert (=> b!1420419 m!1311003))

(assert (=> b!1420419 m!1311003))

(assert (=> b!1420419 m!1311001))

(declare-fun m!1311005 () Bool)

(assert (=> b!1420419 m!1311005))

(assert (=> b!1420412 m!1310989))

(assert (=> b!1420412 m!1310989))

(declare-fun m!1311007 () Bool)

(assert (=> b!1420412 m!1311007))

(declare-fun m!1311009 () Bool)

(assert (=> start!122676 m!1311009))

(declare-fun m!1311011 () Bool)

(assert (=> start!122676 m!1311011))

(assert (=> b!1420415 m!1310989))

(assert (=> b!1420415 m!1310989))

(declare-fun m!1311013 () Bool)

(assert (=> b!1420415 m!1311013))

(declare-fun m!1311015 () Bool)

(assert (=> b!1420414 m!1311015))

(check-sat (not b!1420419) (not b!1420416) (not b!1420414) (not b!1420415) (not b!1420413) (not b!1420418) (not start!122676) (not b!1420412))
