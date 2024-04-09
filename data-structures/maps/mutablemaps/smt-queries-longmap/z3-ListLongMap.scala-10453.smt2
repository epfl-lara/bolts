; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!122922 () Bool)

(assert start!122922)

(declare-fun b!1425186 () Bool)

(declare-fun res!960733 () Bool)

(declare-fun e!805301 () Bool)

(assert (=> b!1425186 (=> (not res!960733) (not e!805301))))

(declare-datatypes ((array!97205 0))(
  ( (array!97206 (arr!46916 (Array (_ BitVec 32) (_ BitVec 64))) (size!47467 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97205)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97205 (_ BitVec 32)) Bool)

(assert (=> b!1425186 (= res!960733 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun res!960731 () Bool)

(assert (=> start!122922 (=> (not res!960731) (not e!805301))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122922 (= res!960731 (validMask!0 mask!2608))))

(assert (=> start!122922 e!805301))

(assert (=> start!122922 true))

(declare-fun array_inv!35861 (array!97205) Bool)

(assert (=> start!122922 (array_inv!35861 a!2831)))

(declare-fun b!1425187 () Bool)

(declare-fun res!960735 () Bool)

(assert (=> b!1425187 (=> (not res!960735) (not e!805301))))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1425187 (= res!960735 (and (= (size!47467 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47467 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47467 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1425188 () Bool)

(declare-fun res!960734 () Bool)

(assert (=> b!1425188 (=> (not res!960734) (not e!805301))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1425188 (= res!960734 (validKeyInArray!0 (select (arr!46916 a!2831) j!81)))))

(declare-fun b!1425189 () Bool)

(declare-fun res!960729 () Bool)

(assert (=> b!1425189 (=> (not res!960729) (not e!805301))))

(declare-datatypes ((List!33606 0))(
  ( (Nil!33603) (Cons!33602 (h!34904 (_ BitVec 64)) (t!48307 List!33606)) )
))
(declare-fun arrayNoDuplicates!0 (array!97205 (_ BitVec 32) List!33606) Bool)

(assert (=> b!1425189 (= res!960729 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33603))))

(declare-fun b!1425190 () Bool)

(declare-fun res!960730 () Bool)

(assert (=> b!1425190 (=> (not res!960730) (not e!805301))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1425190 (= res!960730 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47467 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47467 a!2831))))))

(declare-fun b!1425191 () Bool)

(declare-fun res!960732 () Bool)

(assert (=> b!1425191 (=> (not res!960732) (not e!805301))))

(declare-datatypes ((SeekEntryResult!11217 0))(
  ( (MissingZero!11217 (index!47259 (_ BitVec 32))) (Found!11217 (index!47260 (_ BitVec 32))) (Intermediate!11217 (undefined!12029 Bool) (index!47261 (_ BitVec 32)) (x!128902 (_ BitVec 32))) (Undefined!11217) (MissingVacant!11217 (index!47262 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97205 (_ BitVec 32)) SeekEntryResult!11217)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1425191 (= res!960732 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46916 a!2831) j!81) mask!2608) (select (arr!46916 a!2831) j!81) a!2831 mask!2608) (Intermediate!11217 false intermediateBeforeIndex!13 intermediateBeforeX!13)))))

(declare-fun b!1425192 () Bool)

(assert (=> b!1425192 (= e!805301 false)))

(declare-fun lt!627733 () (_ BitVec 32))

(assert (=> b!1425192 (= lt!627733 (toIndex!0 (select (store (arr!46916 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) mask!2608))))

(declare-fun b!1425193 () Bool)

(declare-fun res!960728 () Bool)

(assert (=> b!1425193 (=> (not res!960728) (not e!805301))))

(assert (=> b!1425193 (= res!960728 (validKeyInArray!0 (select (arr!46916 a!2831) i!982)))))

(assert (= (and start!122922 res!960731) b!1425187))

(assert (= (and b!1425187 res!960735) b!1425193))

(assert (= (and b!1425193 res!960728) b!1425188))

(assert (= (and b!1425188 res!960734) b!1425186))

(assert (= (and b!1425186 res!960733) b!1425189))

(assert (= (and b!1425189 res!960729) b!1425190))

(assert (= (and b!1425190 res!960730) b!1425191))

(assert (= (and b!1425191 res!960732) b!1425192))

(declare-fun m!1315801 () Bool)

(assert (=> start!122922 m!1315801))

(declare-fun m!1315803 () Bool)

(assert (=> start!122922 m!1315803))

(declare-fun m!1315805 () Bool)

(assert (=> b!1425192 m!1315805))

(declare-fun m!1315807 () Bool)

(assert (=> b!1425192 m!1315807))

(assert (=> b!1425192 m!1315807))

(declare-fun m!1315809 () Bool)

(assert (=> b!1425192 m!1315809))

(declare-fun m!1315811 () Bool)

(assert (=> b!1425186 m!1315811))

(declare-fun m!1315813 () Bool)

(assert (=> b!1425193 m!1315813))

(assert (=> b!1425193 m!1315813))

(declare-fun m!1315815 () Bool)

(assert (=> b!1425193 m!1315815))

(declare-fun m!1315817 () Bool)

(assert (=> b!1425189 m!1315817))

(declare-fun m!1315819 () Bool)

(assert (=> b!1425188 m!1315819))

(assert (=> b!1425188 m!1315819))

(declare-fun m!1315821 () Bool)

(assert (=> b!1425188 m!1315821))

(assert (=> b!1425191 m!1315819))

(assert (=> b!1425191 m!1315819))

(declare-fun m!1315823 () Bool)

(assert (=> b!1425191 m!1315823))

(assert (=> b!1425191 m!1315823))

(assert (=> b!1425191 m!1315819))

(declare-fun m!1315825 () Bool)

(assert (=> b!1425191 m!1315825))

(check-sat (not b!1425186) (not b!1425188) (not b!1425191) (not b!1425192) (not b!1425193) (not start!122922) (not b!1425189))
