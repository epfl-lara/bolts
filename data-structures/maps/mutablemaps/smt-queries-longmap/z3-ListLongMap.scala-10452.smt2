; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!122916 () Bool)

(assert start!122916)

(declare-fun b!1425114 () Bool)

(declare-fun res!960656 () Bool)

(declare-fun e!805282 () Bool)

(assert (=> b!1425114 (=> (not res!960656) (not e!805282))))

(declare-datatypes ((array!97199 0))(
  ( (array!97200 (arr!46913 (Array (_ BitVec 32) (_ BitVec 64))) (size!47464 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97199)

(declare-fun i!982 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1425114 (= res!960656 (validKeyInArray!0 (select (arr!46913 a!2831) i!982)))))

(declare-fun b!1425115 () Bool)

(declare-fun res!960659 () Bool)

(assert (=> b!1425115 (=> (not res!960659) (not e!805282))))

(declare-fun j!81 () (_ BitVec 32))

(assert (=> b!1425115 (= res!960659 (validKeyInArray!0 (select (arr!46913 a!2831) j!81)))))

(declare-fun b!1425116 () Bool)

(declare-fun res!960662 () Bool)

(assert (=> b!1425116 (=> (not res!960662) (not e!805282))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1425116 (= res!960662 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47464 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47464 a!2831))))))

(declare-fun res!960660 () Bool)

(assert (=> start!122916 (=> (not res!960660) (not e!805282))))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122916 (= res!960660 (validMask!0 mask!2608))))

(assert (=> start!122916 e!805282))

(assert (=> start!122916 true))

(declare-fun array_inv!35858 (array!97199) Bool)

(assert (=> start!122916 (array_inv!35858 a!2831)))

(declare-fun b!1425117 () Bool)

(declare-fun res!960661 () Bool)

(assert (=> b!1425117 (=> (not res!960661) (not e!805282))))

(declare-datatypes ((SeekEntryResult!11214 0))(
  ( (MissingZero!11214 (index!47247 (_ BitVec 32))) (Found!11214 (index!47248 (_ BitVec 32))) (Intermediate!11214 (undefined!12026 Bool) (index!47249 (_ BitVec 32)) (x!128891 (_ BitVec 32))) (Undefined!11214) (MissingVacant!11214 (index!47250 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97199 (_ BitVec 32)) SeekEntryResult!11214)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1425117 (= res!960661 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46913 a!2831) j!81) mask!2608) (select (arr!46913 a!2831) j!81) a!2831 mask!2608) (Intermediate!11214 false intermediateBeforeIndex!13 intermediateBeforeX!13)))))

(declare-fun b!1425118 () Bool)

(assert (=> b!1425118 (= e!805282 false)))

(declare-fun lt!627724 () (_ BitVec 32))

(assert (=> b!1425118 (= lt!627724 (toIndex!0 (select (store (arr!46913 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) mask!2608))))

(declare-fun b!1425119 () Bool)

(declare-fun res!960657 () Bool)

(assert (=> b!1425119 (=> (not res!960657) (not e!805282))))

(declare-datatypes ((List!33603 0))(
  ( (Nil!33600) (Cons!33599 (h!34901 (_ BitVec 64)) (t!48304 List!33603)) )
))
(declare-fun arrayNoDuplicates!0 (array!97199 (_ BitVec 32) List!33603) Bool)

(assert (=> b!1425119 (= res!960657 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33600))))

(declare-fun b!1425120 () Bool)

(declare-fun res!960658 () Bool)

(assert (=> b!1425120 (=> (not res!960658) (not e!805282))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97199 (_ BitVec 32)) Bool)

(assert (=> b!1425120 (= res!960658 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1425121 () Bool)

(declare-fun res!960663 () Bool)

(assert (=> b!1425121 (=> (not res!960663) (not e!805282))))

(assert (=> b!1425121 (= res!960663 (and (= (size!47464 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47464 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47464 a!2831)) (not (= i!982 j!81))))))

(assert (= (and start!122916 res!960660) b!1425121))

(assert (= (and b!1425121 res!960663) b!1425114))

(assert (= (and b!1425114 res!960656) b!1425115))

(assert (= (and b!1425115 res!960659) b!1425120))

(assert (= (and b!1425120 res!960658) b!1425119))

(assert (= (and b!1425119 res!960657) b!1425116))

(assert (= (and b!1425116 res!960662) b!1425117))

(assert (= (and b!1425117 res!960661) b!1425118))

(declare-fun m!1315723 () Bool)

(assert (=> b!1425118 m!1315723))

(declare-fun m!1315725 () Bool)

(assert (=> b!1425118 m!1315725))

(assert (=> b!1425118 m!1315725))

(declare-fun m!1315727 () Bool)

(assert (=> b!1425118 m!1315727))

(declare-fun m!1315729 () Bool)

(assert (=> start!122916 m!1315729))

(declare-fun m!1315731 () Bool)

(assert (=> start!122916 m!1315731))

(declare-fun m!1315733 () Bool)

(assert (=> b!1425115 m!1315733))

(assert (=> b!1425115 m!1315733))

(declare-fun m!1315735 () Bool)

(assert (=> b!1425115 m!1315735))

(declare-fun m!1315737 () Bool)

(assert (=> b!1425114 m!1315737))

(assert (=> b!1425114 m!1315737))

(declare-fun m!1315739 () Bool)

(assert (=> b!1425114 m!1315739))

(declare-fun m!1315741 () Bool)

(assert (=> b!1425119 m!1315741))

(declare-fun m!1315743 () Bool)

(assert (=> b!1425120 m!1315743))

(assert (=> b!1425117 m!1315733))

(assert (=> b!1425117 m!1315733))

(declare-fun m!1315745 () Bool)

(assert (=> b!1425117 m!1315745))

(assert (=> b!1425117 m!1315745))

(assert (=> b!1425117 m!1315733))

(declare-fun m!1315747 () Bool)

(assert (=> b!1425117 m!1315747))

(check-sat (not b!1425120) (not b!1425119) (not b!1425114) (not b!1425118) (not b!1425115) (not b!1425117) (not start!122916))
