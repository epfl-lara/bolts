; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!122544 () Bool)

(assert start!122544)

(declare-fun b!1419084 () Bool)

(declare-fun res!954720 () Bool)

(declare-fun e!802978 () Bool)

(assert (=> b!1419084 (=> (not res!954720) (not e!802978))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((array!96866 0))(
  ( (array!96867 (arr!46748 (Array (_ BitVec 32) (_ BitVec 64))) (size!47299 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!96866)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11055 0))(
  ( (MissingZero!11055 (index!46611 (_ BitVec 32))) (Found!11055 (index!46612 (_ BitVec 32))) (Intermediate!11055 (undefined!11867 Bool) (index!46613 (_ BitVec 32)) (x!128286 (_ BitVec 32))) (Undefined!11055) (MissingVacant!11055 (index!46614 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96866 (_ BitVec 32)) SeekEntryResult!11055)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1419084 (= res!954720 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46748 a!2831) j!81) mask!2608) (select (arr!46748 a!2831) j!81) a!2831 mask!2608) (Intermediate!11055 false intermediateBeforeIndex!13 intermediateBeforeX!13)))))

(declare-fun b!1419085 () Bool)

(declare-fun res!954715 () Bool)

(assert (=> b!1419085 (=> (not res!954715) (not e!802978))))

(declare-datatypes ((List!33438 0))(
  ( (Nil!33435) (Cons!33434 (h!34733 (_ BitVec 64)) (t!48139 List!33438)) )
))
(declare-fun arrayNoDuplicates!0 (array!96866 (_ BitVec 32) List!33438) Bool)

(assert (=> b!1419085 (= res!954715 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33435))))

(declare-fun b!1419087 () Bool)

(declare-fun res!954714 () Bool)

(assert (=> b!1419087 (=> (not res!954714) (not e!802978))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1419087 (= res!954714 (validKeyInArray!0 (select (arr!46748 a!2831) j!81)))))

(declare-fun b!1419088 () Bool)

(declare-fun res!954719 () Bool)

(assert (=> b!1419088 (=> (not res!954719) (not e!802978))))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1419088 (= res!954719 (and (= (size!47299 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47299 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47299 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1419089 () Bool)

(declare-fun res!954716 () Bool)

(assert (=> b!1419089 (=> (not res!954716) (not e!802978))))

(assert (=> b!1419089 (= res!954716 (validKeyInArray!0 (select (arr!46748 a!2831) i!982)))))

(declare-fun b!1419086 () Bool)

(declare-fun res!954713 () Bool)

(assert (=> b!1419086 (=> (not res!954713) (not e!802978))))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1419086 (= res!954713 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47299 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47299 a!2831))))))

(declare-fun res!954718 () Bool)

(assert (=> start!122544 (=> (not res!954718) (not e!802978))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122544 (= res!954718 (validMask!0 mask!2608))))

(assert (=> start!122544 e!802978))

(assert (=> start!122544 true))

(declare-fun array_inv!35693 (array!96866) Bool)

(assert (=> start!122544 (array_inv!35693 a!2831)))

(declare-fun b!1419090 () Bool)

(declare-fun res!954717 () Bool)

(assert (=> b!1419090 (=> (not res!954717) (not e!802978))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96866 (_ BitVec 32)) Bool)

(assert (=> b!1419090 (= res!954717 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1419091 () Bool)

(assert (=> b!1419091 (= e!802978 (bvslt mask!2608 #b00000000000000000000000000000000))))

(declare-fun lt!625675 () (_ BitVec 32))

(assert (=> b!1419091 (= lt!625675 (toIndex!0 (select (store (arr!46748 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) mask!2608))))

(assert (= (and start!122544 res!954718) b!1419088))

(assert (= (and b!1419088 res!954719) b!1419089))

(assert (= (and b!1419089 res!954716) b!1419087))

(assert (= (and b!1419087 res!954714) b!1419090))

(assert (= (and b!1419090 res!954717) b!1419085))

(assert (= (and b!1419085 res!954715) b!1419086))

(assert (= (and b!1419086 res!954713) b!1419084))

(assert (= (and b!1419084 res!954720) b!1419091))

(declare-fun m!1309651 () Bool)

(assert (=> b!1419085 m!1309651))

(declare-fun m!1309653 () Bool)

(assert (=> start!122544 m!1309653))

(declare-fun m!1309655 () Bool)

(assert (=> start!122544 m!1309655))

(declare-fun m!1309657 () Bool)

(assert (=> b!1419091 m!1309657))

(declare-fun m!1309659 () Bool)

(assert (=> b!1419091 m!1309659))

(assert (=> b!1419091 m!1309659))

(declare-fun m!1309661 () Bool)

(assert (=> b!1419091 m!1309661))

(declare-fun m!1309663 () Bool)

(assert (=> b!1419089 m!1309663))

(assert (=> b!1419089 m!1309663))

(declare-fun m!1309665 () Bool)

(assert (=> b!1419089 m!1309665))

(declare-fun m!1309667 () Bool)

(assert (=> b!1419090 m!1309667))

(declare-fun m!1309669 () Bool)

(assert (=> b!1419087 m!1309669))

(assert (=> b!1419087 m!1309669))

(declare-fun m!1309671 () Bool)

(assert (=> b!1419087 m!1309671))

(assert (=> b!1419084 m!1309669))

(assert (=> b!1419084 m!1309669))

(declare-fun m!1309673 () Bool)

(assert (=> b!1419084 m!1309673))

(assert (=> b!1419084 m!1309673))

(assert (=> b!1419084 m!1309669))

(declare-fun m!1309675 () Bool)

(assert (=> b!1419084 m!1309675))

(check-sat (not b!1419090) (not start!122544) (not b!1419091) (not b!1419089) (not b!1419084) (not b!1419085) (not b!1419087))
(check-sat)
