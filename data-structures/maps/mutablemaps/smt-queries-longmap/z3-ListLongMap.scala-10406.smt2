; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!122640 () Bool)

(assert start!122640)

(declare-fun b!1419921 () Bool)

(declare-fun res!955470 () Bool)

(declare-fun e!803258 () Bool)

(assert (=> b!1419921 (=> (not res!955470) (not e!803258))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((array!96923 0))(
  ( (array!96924 (arr!46775 (Array (_ BitVec 32) (_ BitVec 64))) (size!47326 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!96923)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11082 0))(
  ( (MissingZero!11082 (index!46719 (_ BitVec 32))) (Found!11082 (index!46720 (_ BitVec 32))) (Intermediate!11082 (undefined!11894 Bool) (index!46721 (_ BitVec 32)) (x!128391 (_ BitVec 32))) (Undefined!11082) (MissingVacant!11082 (index!46722 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96923 (_ BitVec 32)) SeekEntryResult!11082)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1419921 (= res!955470 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46775 a!2831) j!81) mask!2608) (select (arr!46775 a!2831) j!81) a!2831 mask!2608) (Intermediate!11082 false intermediateBeforeIndex!13 intermediateBeforeX!13)))))

(declare-fun b!1419922 () Bool)

(declare-fun res!955467 () Bool)

(assert (=> b!1419922 (=> (not res!955467) (not e!803258))))

(declare-fun i!982 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1419922 (= res!955467 (validKeyInArray!0 (select (arr!46775 a!2831) i!982)))))

(declare-fun b!1419923 () Bool)

(declare-fun res!955469 () Bool)

(assert (=> b!1419923 (=> (not res!955469) (not e!803258))))

(declare-datatypes ((List!33465 0))(
  ( (Nil!33462) (Cons!33461 (h!34763 (_ BitVec 64)) (t!48166 List!33465)) )
))
(declare-fun arrayNoDuplicates!0 (array!96923 (_ BitVec 32) List!33465) Bool)

(assert (=> b!1419923 (= res!955469 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33462))))

(declare-fun b!1419924 () Bool)

(declare-fun res!955466 () Bool)

(assert (=> b!1419924 (=> (not res!955466) (not e!803258))))

(assert (=> b!1419924 (= res!955466 (validKeyInArray!0 (select (arr!46775 a!2831) j!81)))))

(declare-fun b!1419925 () Bool)

(declare-fun res!955463 () Bool)

(assert (=> b!1419925 (=> (not res!955463) (not e!803258))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96923 (_ BitVec 32)) Bool)

(assert (=> b!1419925 (= res!955463 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun res!955465 () Bool)

(assert (=> start!122640 (=> (not res!955465) (not e!803258))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122640 (= res!955465 (validMask!0 mask!2608))))

(assert (=> start!122640 e!803258))

(assert (=> start!122640 true))

(declare-fun array_inv!35720 (array!96923) Bool)

(assert (=> start!122640 (array_inv!35720 a!2831)))

(declare-fun b!1419926 () Bool)

(assert (=> b!1419926 (= e!803258 false)))

(declare-fun lt!625807 () SeekEntryResult!11082)

(assert (=> b!1419926 (= lt!625807 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46775 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) mask!2608) (select (store (arr!46775 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) (array!96924 (store (arr!46775 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47326 a!2831)) mask!2608))))

(declare-fun b!1419927 () Bool)

(declare-fun res!955468 () Bool)

(assert (=> b!1419927 (=> (not res!955468) (not e!803258))))

(assert (=> b!1419927 (= res!955468 (and (= (size!47326 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47326 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47326 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1419928 () Bool)

(declare-fun res!955464 () Bool)

(assert (=> b!1419928 (=> (not res!955464) (not e!803258))))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1419928 (= res!955464 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47326 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47326 a!2831))))))

(assert (= (and start!122640 res!955465) b!1419927))

(assert (= (and b!1419927 res!955468) b!1419922))

(assert (= (and b!1419922 res!955467) b!1419924))

(assert (= (and b!1419924 res!955466) b!1419925))

(assert (= (and b!1419925 res!955463) b!1419923))

(assert (= (and b!1419923 res!955469) b!1419928))

(assert (= (and b!1419928 res!955464) b!1419921))

(assert (= (and b!1419921 res!955470) b!1419926))

(declare-fun m!1310457 () Bool)

(assert (=> b!1419923 m!1310457))

(declare-fun m!1310459 () Bool)

(assert (=> b!1419925 m!1310459))

(declare-fun m!1310461 () Bool)

(assert (=> b!1419924 m!1310461))

(assert (=> b!1419924 m!1310461))

(declare-fun m!1310463 () Bool)

(assert (=> b!1419924 m!1310463))

(declare-fun m!1310465 () Bool)

(assert (=> b!1419922 m!1310465))

(assert (=> b!1419922 m!1310465))

(declare-fun m!1310467 () Bool)

(assert (=> b!1419922 m!1310467))

(declare-fun m!1310469 () Bool)

(assert (=> b!1419926 m!1310469))

(declare-fun m!1310471 () Bool)

(assert (=> b!1419926 m!1310471))

(assert (=> b!1419926 m!1310471))

(declare-fun m!1310473 () Bool)

(assert (=> b!1419926 m!1310473))

(assert (=> b!1419926 m!1310473))

(assert (=> b!1419926 m!1310471))

(declare-fun m!1310475 () Bool)

(assert (=> b!1419926 m!1310475))

(assert (=> b!1419921 m!1310461))

(assert (=> b!1419921 m!1310461))

(declare-fun m!1310477 () Bool)

(assert (=> b!1419921 m!1310477))

(assert (=> b!1419921 m!1310477))

(assert (=> b!1419921 m!1310461))

(declare-fun m!1310479 () Bool)

(assert (=> b!1419921 m!1310479))

(declare-fun m!1310481 () Bool)

(assert (=> start!122640 m!1310481))

(declare-fun m!1310483 () Bool)

(assert (=> start!122640 m!1310483))

(check-sat (not b!1419926) (not b!1419921) (not b!1419923) (not b!1419922) (not b!1419924) (not start!122640) (not b!1419925))
