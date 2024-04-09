; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!122910 () Bool)

(assert start!122910)

(declare-fun b!1425046 () Bool)

(declare-fun res!960592 () Bool)

(declare-fun e!805264 () Bool)

(assert (=> b!1425046 (=> (not res!960592) (not e!805264))))

(declare-datatypes ((array!97193 0))(
  ( (array!97194 (arr!46910 (Array (_ BitVec 32) (_ BitVec 64))) (size!47461 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97193)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97193 (_ BitVec 32)) Bool)

(assert (=> b!1425046 (= res!960592 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun res!960594 () Bool)

(assert (=> start!122910 (=> (not res!960594) (not e!805264))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122910 (= res!960594 (validMask!0 mask!2608))))

(assert (=> start!122910 e!805264))

(assert (=> start!122910 true))

(declare-fun array_inv!35855 (array!97193) Bool)

(assert (=> start!122910 (array_inv!35855 a!2831)))

(declare-fun b!1425047 () Bool)

(declare-fun res!960588 () Bool)

(assert (=> b!1425047 (=> (not res!960588) (not e!805264))))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1425047 (= res!960588 (validKeyInArray!0 (select (arr!46910 a!2831) j!81)))))

(declare-fun b!1425048 () Bool)

(assert (=> b!1425048 (= e!805264 false)))

(declare-datatypes ((SeekEntryResult!11211 0))(
  ( (MissingZero!11211 (index!47235 (_ BitVec 32))) (Found!11211 (index!47236 (_ BitVec 32))) (Intermediate!11211 (undefined!12023 Bool) (index!47237 (_ BitVec 32)) (x!128880 (_ BitVec 32))) (Undefined!11211) (MissingVacant!11211 (index!47238 (_ BitVec 32))) )
))
(declare-fun lt!627715 () SeekEntryResult!11211)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97193 (_ BitVec 32)) SeekEntryResult!11211)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1425048 (= lt!627715 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46910 a!2831) j!81) mask!2608) (select (arr!46910 a!2831) j!81) a!2831 mask!2608))))

(declare-fun b!1425049 () Bool)

(declare-fun res!960589 () Bool)

(assert (=> b!1425049 (=> (not res!960589) (not e!805264))))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1425049 (= res!960589 (validKeyInArray!0 (select (arr!46910 a!2831) i!982)))))

(declare-fun b!1425050 () Bool)

(declare-fun res!960591 () Bool)

(assert (=> b!1425050 (=> (not res!960591) (not e!805264))))

(assert (=> b!1425050 (= res!960591 (and (= (size!47461 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47461 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47461 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1425051 () Bool)

(declare-fun res!960593 () Bool)

(assert (=> b!1425051 (=> (not res!960593) (not e!805264))))

(declare-datatypes ((List!33600 0))(
  ( (Nil!33597) (Cons!33596 (h!34898 (_ BitVec 64)) (t!48301 List!33600)) )
))
(declare-fun arrayNoDuplicates!0 (array!97193 (_ BitVec 32) List!33600) Bool)

(assert (=> b!1425051 (= res!960593 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33597))))

(declare-fun b!1425052 () Bool)

(declare-fun res!960590 () Bool)

(assert (=> b!1425052 (=> (not res!960590) (not e!805264))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(assert (=> b!1425052 (= res!960590 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47461 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47461 a!2831))))))

(assert (= (and start!122910 res!960594) b!1425050))

(assert (= (and b!1425050 res!960591) b!1425049))

(assert (= (and b!1425049 res!960589) b!1425047))

(assert (= (and b!1425047 res!960588) b!1425046))

(assert (= (and b!1425046 res!960592) b!1425051))

(assert (= (and b!1425051 res!960593) b!1425052))

(assert (= (and b!1425052 res!960590) b!1425048))

(declare-fun m!1315657 () Bool)

(assert (=> start!122910 m!1315657))

(declare-fun m!1315659 () Bool)

(assert (=> start!122910 m!1315659))

(declare-fun m!1315661 () Bool)

(assert (=> b!1425047 m!1315661))

(assert (=> b!1425047 m!1315661))

(declare-fun m!1315663 () Bool)

(assert (=> b!1425047 m!1315663))

(declare-fun m!1315665 () Bool)

(assert (=> b!1425051 m!1315665))

(declare-fun m!1315667 () Bool)

(assert (=> b!1425049 m!1315667))

(assert (=> b!1425049 m!1315667))

(declare-fun m!1315669 () Bool)

(assert (=> b!1425049 m!1315669))

(assert (=> b!1425048 m!1315661))

(assert (=> b!1425048 m!1315661))

(declare-fun m!1315671 () Bool)

(assert (=> b!1425048 m!1315671))

(assert (=> b!1425048 m!1315671))

(assert (=> b!1425048 m!1315661))

(declare-fun m!1315673 () Bool)

(assert (=> b!1425048 m!1315673))

(declare-fun m!1315675 () Bool)

(assert (=> b!1425046 m!1315675))

(check-sat (not b!1425046) (not start!122910) (not b!1425049) (not b!1425051) (not b!1425047) (not b!1425048))
