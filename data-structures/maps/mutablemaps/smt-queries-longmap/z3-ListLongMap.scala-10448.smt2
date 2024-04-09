; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!122892 () Bool)

(assert start!122892)

(declare-fun b!1424857 () Bool)

(declare-fun res!960402 () Bool)

(declare-fun e!805210 () Bool)

(assert (=> b!1424857 (=> (not res!960402) (not e!805210))))

(declare-datatypes ((array!97175 0))(
  ( (array!97176 (arr!46901 (Array (_ BitVec 32) (_ BitVec 64))) (size!47452 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97175)

(declare-datatypes ((List!33591 0))(
  ( (Nil!33588) (Cons!33587 (h!34889 (_ BitVec 64)) (t!48292 List!33591)) )
))
(declare-fun arrayNoDuplicates!0 (array!97175 (_ BitVec 32) List!33591) Bool)

(assert (=> b!1424857 (= res!960402 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33588))))

(declare-fun b!1424858 () Bool)

(declare-fun res!960399 () Bool)

(assert (=> b!1424858 (=> (not res!960399) (not e!805210))))

(declare-fun i!982 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1424858 (= res!960399 (validKeyInArray!0 (select (arr!46901 a!2831) i!982)))))

(declare-fun b!1424859 () Bool)

(declare-fun res!960401 () Bool)

(assert (=> b!1424859 (=> (not res!960401) (not e!805210))))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun mask!2608 () (_ BitVec 32))

(assert (=> b!1424859 (= res!960401 (and (= (size!47452 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47452 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47452 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1424860 () Bool)

(assert (=> b!1424860 (= e!805210 false)))

(declare-fun lt!627688 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1424860 (= lt!627688 (toIndex!0 (select (arr!46901 a!2831) j!81) mask!2608))))

(declare-fun b!1424861 () Bool)

(declare-fun res!960405 () Bool)

(assert (=> b!1424861 (=> (not res!960405) (not e!805210))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1424861 (= res!960405 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47452 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47452 a!2831))))))

(declare-fun b!1424862 () Bool)

(declare-fun res!960403 () Bool)

(assert (=> b!1424862 (=> (not res!960403) (not e!805210))))

(assert (=> b!1424862 (= res!960403 (validKeyInArray!0 (select (arr!46901 a!2831) j!81)))))

(declare-fun res!960404 () Bool)

(assert (=> start!122892 (=> (not res!960404) (not e!805210))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122892 (= res!960404 (validMask!0 mask!2608))))

(assert (=> start!122892 e!805210))

(assert (=> start!122892 true))

(declare-fun array_inv!35846 (array!97175) Bool)

(assert (=> start!122892 (array_inv!35846 a!2831)))

(declare-fun b!1424863 () Bool)

(declare-fun res!960400 () Bool)

(assert (=> b!1424863 (=> (not res!960400) (not e!805210))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97175 (_ BitVec 32)) Bool)

(assert (=> b!1424863 (= res!960400 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(assert (= (and start!122892 res!960404) b!1424859))

(assert (= (and b!1424859 res!960401) b!1424858))

(assert (= (and b!1424858 res!960399) b!1424862))

(assert (= (and b!1424862 res!960403) b!1424863))

(assert (= (and b!1424863 res!960400) b!1424857))

(assert (= (and b!1424857 res!960402) b!1424861))

(assert (= (and b!1424861 res!960405) b!1424860))

(declare-fun m!1315481 () Bool)

(assert (=> b!1424863 m!1315481))

(declare-fun m!1315483 () Bool)

(assert (=> b!1424858 m!1315483))

(assert (=> b!1424858 m!1315483))

(declare-fun m!1315485 () Bool)

(assert (=> b!1424858 m!1315485))

(declare-fun m!1315487 () Bool)

(assert (=> b!1424857 m!1315487))

(declare-fun m!1315489 () Bool)

(assert (=> start!122892 m!1315489))

(declare-fun m!1315491 () Bool)

(assert (=> start!122892 m!1315491))

(declare-fun m!1315493 () Bool)

(assert (=> b!1424862 m!1315493))

(assert (=> b!1424862 m!1315493))

(declare-fun m!1315495 () Bool)

(assert (=> b!1424862 m!1315495))

(assert (=> b!1424860 m!1315493))

(assert (=> b!1424860 m!1315493))

(declare-fun m!1315497 () Bool)

(assert (=> b!1424860 m!1315497))

(check-sat (not start!122892) (not b!1424863) (not b!1424858) (not b!1424857) (not b!1424860) (not b!1424862))
