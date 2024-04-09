; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!122616 () Bool)

(assert start!122616)

(declare-fun b!1419616 () Bool)

(declare-fun res!955160 () Bool)

(declare-fun e!803185 () Bool)

(assert (=> b!1419616 (=> (not res!955160) (not e!803185))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((array!96899 0))(
  ( (array!96900 (arr!46763 (Array (_ BitVec 32) (_ BitVec 64))) (size!47314 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!96899)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11070 0))(
  ( (MissingZero!11070 (index!46671 (_ BitVec 32))) (Found!11070 (index!46672 (_ BitVec 32))) (Intermediate!11070 (undefined!11882 Bool) (index!46673 (_ BitVec 32)) (x!128347 (_ BitVec 32))) (Undefined!11070) (MissingVacant!11070 (index!46674 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96899 (_ BitVec 32)) SeekEntryResult!11070)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1419616 (= res!955160 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46763 a!2831) j!81) mask!2608) (select (arr!46763 a!2831) j!81) a!2831 mask!2608) (Intermediate!11070 false intermediateBeforeIndex!13 intermediateBeforeX!13)))))

(declare-fun b!1419617 () Bool)

(declare-fun res!955164 () Bool)

(assert (=> b!1419617 (=> (not res!955164) (not e!803185))))

(declare-fun i!982 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1419617 (= res!955164 (validKeyInArray!0 (select (arr!46763 a!2831) i!982)))))

(declare-fun b!1419618 () Bool)

(declare-fun res!955159 () Bool)

(assert (=> b!1419618 (=> (not res!955159) (not e!803185))))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1419618 (= res!955159 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47314 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47314 a!2831))))))

(declare-fun b!1419619 () Bool)

(declare-fun res!955157 () Bool)

(assert (=> b!1419619 (=> (not res!955157) (not e!803185))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96899 (_ BitVec 32)) Bool)

(assert (=> b!1419619 (= res!955157 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1419620 () Bool)

(assert (=> b!1419620 (= e!803185 false)))

(declare-fun lt!625789 () SeekEntryResult!11070)

(assert (=> b!1419620 (= lt!625789 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46763 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) mask!2608) (select (store (arr!46763 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) (array!96900 (store (arr!46763 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47314 a!2831)) mask!2608))))

(declare-fun b!1419621 () Bool)

(declare-fun res!955163 () Bool)

(assert (=> b!1419621 (=> (not res!955163) (not e!803185))))

(assert (=> b!1419621 (= res!955163 (and (= (size!47314 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47314 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47314 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1419622 () Bool)

(declare-fun res!955162 () Bool)

(assert (=> b!1419622 (=> (not res!955162) (not e!803185))))

(assert (=> b!1419622 (= res!955162 (validKeyInArray!0 (select (arr!46763 a!2831) j!81)))))

(declare-fun res!955161 () Bool)

(assert (=> start!122616 (=> (not res!955161) (not e!803185))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122616 (= res!955161 (validMask!0 mask!2608))))

(assert (=> start!122616 e!803185))

(assert (=> start!122616 true))

(declare-fun array_inv!35708 (array!96899) Bool)

(assert (=> start!122616 (array_inv!35708 a!2831)))

(declare-fun b!1419615 () Bool)

(declare-fun res!955158 () Bool)

(assert (=> b!1419615 (=> (not res!955158) (not e!803185))))

(declare-datatypes ((List!33453 0))(
  ( (Nil!33450) (Cons!33449 (h!34751 (_ BitVec 64)) (t!48154 List!33453)) )
))
(declare-fun arrayNoDuplicates!0 (array!96899 (_ BitVec 32) List!33453) Bool)

(assert (=> b!1419615 (= res!955158 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33450))))

(assert (= (and start!122616 res!955161) b!1419621))

(assert (= (and b!1419621 res!955163) b!1419617))

(assert (= (and b!1419617 res!955164) b!1419622))

(assert (= (and b!1419622 res!955162) b!1419619))

(assert (= (and b!1419619 res!955157) b!1419615))

(assert (= (and b!1419615 res!955158) b!1419618))

(assert (= (and b!1419618 res!955159) b!1419616))

(assert (= (and b!1419616 res!955160) b!1419620))

(declare-fun m!1310121 () Bool)

(assert (=> b!1419615 m!1310121))

(declare-fun m!1310123 () Bool)

(assert (=> b!1419620 m!1310123))

(declare-fun m!1310125 () Bool)

(assert (=> b!1419620 m!1310125))

(assert (=> b!1419620 m!1310125))

(declare-fun m!1310127 () Bool)

(assert (=> b!1419620 m!1310127))

(assert (=> b!1419620 m!1310127))

(assert (=> b!1419620 m!1310125))

(declare-fun m!1310129 () Bool)

(assert (=> b!1419620 m!1310129))

(declare-fun m!1310131 () Bool)

(assert (=> b!1419622 m!1310131))

(assert (=> b!1419622 m!1310131))

(declare-fun m!1310133 () Bool)

(assert (=> b!1419622 m!1310133))

(declare-fun m!1310135 () Bool)

(assert (=> start!122616 m!1310135))

(declare-fun m!1310137 () Bool)

(assert (=> start!122616 m!1310137))

(assert (=> b!1419616 m!1310131))

(assert (=> b!1419616 m!1310131))

(declare-fun m!1310139 () Bool)

(assert (=> b!1419616 m!1310139))

(assert (=> b!1419616 m!1310139))

(assert (=> b!1419616 m!1310131))

(declare-fun m!1310141 () Bool)

(assert (=> b!1419616 m!1310141))

(declare-fun m!1310143 () Bool)

(assert (=> b!1419617 m!1310143))

(assert (=> b!1419617 m!1310143))

(declare-fun m!1310145 () Bool)

(assert (=> b!1419617 m!1310145))

(declare-fun m!1310147 () Bool)

(assert (=> b!1419619 m!1310147))

(check-sat (not start!122616) (not b!1419622) (not b!1419617) (not b!1419615) (not b!1419619) (not b!1419620) (not b!1419616))
