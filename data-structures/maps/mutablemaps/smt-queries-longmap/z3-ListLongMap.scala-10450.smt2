; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!122904 () Bool)

(assert start!122904)

(declare-fun b!1424983 () Bool)

(declare-fun res!960527 () Bool)

(declare-fun e!805246 () Bool)

(assert (=> b!1424983 (=> (not res!960527) (not e!805246))))

(declare-datatypes ((array!97187 0))(
  ( (array!97188 (arr!46907 (Array (_ BitVec 32) (_ BitVec 64))) (size!47458 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97187)

(declare-fun j!81 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1424983 (= res!960527 (validKeyInArray!0 (select (arr!46907 a!2831) j!81)))))

(declare-fun b!1424984 () Bool)

(declare-fun res!960525 () Bool)

(assert (=> b!1424984 (=> (not res!960525) (not e!805246))))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1424984 (= res!960525 (validKeyInArray!0 (select (arr!46907 a!2831) i!982)))))

(declare-fun b!1424985 () Bool)

(declare-fun res!960531 () Bool)

(assert (=> b!1424985 (=> (not res!960531) (not e!805246))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1424985 (= res!960531 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47458 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47458 a!2831))))))

(declare-fun b!1424986 () Bool)

(declare-fun res!960528 () Bool)

(assert (=> b!1424986 (=> (not res!960528) (not e!805246))))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97187 (_ BitVec 32)) Bool)

(assert (=> b!1424986 (= res!960528 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1424987 () Bool)

(declare-fun res!960529 () Bool)

(assert (=> b!1424987 (=> (not res!960529) (not e!805246))))

(declare-datatypes ((List!33597 0))(
  ( (Nil!33594) (Cons!33593 (h!34895 (_ BitVec 64)) (t!48298 List!33597)) )
))
(declare-fun arrayNoDuplicates!0 (array!97187 (_ BitVec 32) List!33597) Bool)

(assert (=> b!1424987 (= res!960529 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33594))))

(declare-fun b!1424988 () Bool)

(declare-fun res!960526 () Bool)

(assert (=> b!1424988 (=> (not res!960526) (not e!805246))))

(assert (=> b!1424988 (= res!960526 (and (= (size!47458 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47458 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47458 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1424989 () Bool)

(assert (=> b!1424989 (= e!805246 false)))

(declare-datatypes ((SeekEntryResult!11208 0))(
  ( (MissingZero!11208 (index!47223 (_ BitVec 32))) (Found!11208 (index!47224 (_ BitVec 32))) (Intermediate!11208 (undefined!12020 Bool) (index!47225 (_ BitVec 32)) (x!128869 (_ BitVec 32))) (Undefined!11208) (MissingVacant!11208 (index!47226 (_ BitVec 32))) )
))
(declare-fun lt!627706 () SeekEntryResult!11208)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97187 (_ BitVec 32)) SeekEntryResult!11208)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1424989 (= lt!627706 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46907 a!2831) j!81) mask!2608) (select (arr!46907 a!2831) j!81) a!2831 mask!2608))))

(declare-fun res!960530 () Bool)

(assert (=> start!122904 (=> (not res!960530) (not e!805246))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122904 (= res!960530 (validMask!0 mask!2608))))

(assert (=> start!122904 e!805246))

(assert (=> start!122904 true))

(declare-fun array_inv!35852 (array!97187) Bool)

(assert (=> start!122904 (array_inv!35852 a!2831)))

(assert (= (and start!122904 res!960530) b!1424988))

(assert (= (and b!1424988 res!960526) b!1424984))

(assert (= (and b!1424984 res!960525) b!1424983))

(assert (= (and b!1424983 res!960527) b!1424986))

(assert (= (and b!1424986 res!960528) b!1424987))

(assert (= (and b!1424987 res!960529) b!1424985))

(assert (= (and b!1424985 res!960531) b!1424989))

(declare-fun m!1315597 () Bool)

(assert (=> b!1424989 m!1315597))

(assert (=> b!1424989 m!1315597))

(declare-fun m!1315599 () Bool)

(assert (=> b!1424989 m!1315599))

(assert (=> b!1424989 m!1315599))

(assert (=> b!1424989 m!1315597))

(declare-fun m!1315601 () Bool)

(assert (=> b!1424989 m!1315601))

(declare-fun m!1315603 () Bool)

(assert (=> b!1424987 m!1315603))

(declare-fun m!1315605 () Bool)

(assert (=> start!122904 m!1315605))

(declare-fun m!1315607 () Bool)

(assert (=> start!122904 m!1315607))

(declare-fun m!1315609 () Bool)

(assert (=> b!1424984 m!1315609))

(assert (=> b!1424984 m!1315609))

(declare-fun m!1315611 () Bool)

(assert (=> b!1424984 m!1315611))

(declare-fun m!1315613 () Bool)

(assert (=> b!1424986 m!1315613))

(assert (=> b!1424983 m!1315597))

(assert (=> b!1424983 m!1315597))

(declare-fun m!1315615 () Bool)

(assert (=> b!1424983 m!1315615))

(check-sat (not b!1424983) (not b!1424986) (not b!1424987) (not b!1424989) (not start!122904) (not b!1424984))
