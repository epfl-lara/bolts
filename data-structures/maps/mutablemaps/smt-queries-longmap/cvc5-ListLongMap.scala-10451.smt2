; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122908 () Bool)

(assert start!122908)

(declare-fun b!1425025 () Bool)

(declare-fun res!960568 () Bool)

(declare-fun e!805259 () Bool)

(assert (=> b!1425025 (=> (not res!960568) (not e!805259))))

(declare-datatypes ((array!97191 0))(
  ( (array!97192 (arr!46909 (Array (_ BitVec 32) (_ BitVec 64))) (size!47460 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97191)

(declare-fun i!982 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1425025 (= res!960568 (validKeyInArray!0 (select (arr!46909 a!2831) i!982)))))

(declare-fun b!1425026 () Bool)

(declare-fun res!960571 () Bool)

(assert (=> b!1425026 (=> (not res!960571) (not e!805259))))

(declare-fun j!81 () (_ BitVec 32))

(assert (=> b!1425026 (= res!960571 (validKeyInArray!0 (select (arr!46909 a!2831) j!81)))))

(declare-fun b!1425027 () Bool)

(declare-fun res!960570 () Bool)

(assert (=> b!1425027 (=> (not res!960570) (not e!805259))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(assert (=> b!1425027 (= res!960570 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47460 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47460 a!2831))))))

(declare-fun res!960567 () Bool)

(assert (=> start!122908 (=> (not res!960567) (not e!805259))))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122908 (= res!960567 (validMask!0 mask!2608))))

(assert (=> start!122908 e!805259))

(assert (=> start!122908 true))

(declare-fun array_inv!35854 (array!97191) Bool)

(assert (=> start!122908 (array_inv!35854 a!2831)))

(declare-fun b!1425028 () Bool)

(declare-fun res!960569 () Bool)

(assert (=> b!1425028 (=> (not res!960569) (not e!805259))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97191 (_ BitVec 32)) Bool)

(assert (=> b!1425028 (= res!960569 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1425029 () Bool)

(declare-fun res!960572 () Bool)

(assert (=> b!1425029 (=> (not res!960572) (not e!805259))))

(declare-datatypes ((List!33599 0))(
  ( (Nil!33596) (Cons!33595 (h!34897 (_ BitVec 64)) (t!48300 List!33599)) )
))
(declare-fun arrayNoDuplicates!0 (array!97191 (_ BitVec 32) List!33599) Bool)

(assert (=> b!1425029 (= res!960572 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33596))))

(declare-fun b!1425030 () Bool)

(declare-fun res!960573 () Bool)

(assert (=> b!1425030 (=> (not res!960573) (not e!805259))))

(assert (=> b!1425030 (= res!960573 (and (= (size!47460 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47460 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47460 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1425031 () Bool)

(assert (=> b!1425031 (= e!805259 false)))

(declare-datatypes ((SeekEntryResult!11210 0))(
  ( (MissingZero!11210 (index!47231 (_ BitVec 32))) (Found!11210 (index!47232 (_ BitVec 32))) (Intermediate!11210 (undefined!12022 Bool) (index!47233 (_ BitVec 32)) (x!128879 (_ BitVec 32))) (Undefined!11210) (MissingVacant!11210 (index!47234 (_ BitVec 32))) )
))
(declare-fun lt!627712 () SeekEntryResult!11210)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97191 (_ BitVec 32)) SeekEntryResult!11210)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1425031 (= lt!627712 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46909 a!2831) j!81) mask!2608) (select (arr!46909 a!2831) j!81) a!2831 mask!2608))))

(assert (= (and start!122908 res!960567) b!1425030))

(assert (= (and b!1425030 res!960573) b!1425025))

(assert (= (and b!1425025 res!960568) b!1425026))

(assert (= (and b!1425026 res!960571) b!1425028))

(assert (= (and b!1425028 res!960569) b!1425029))

(assert (= (and b!1425029 res!960572) b!1425027))

(assert (= (and b!1425027 res!960570) b!1425031))

(declare-fun m!1315637 () Bool)

(assert (=> b!1425031 m!1315637))

(assert (=> b!1425031 m!1315637))

(declare-fun m!1315639 () Bool)

(assert (=> b!1425031 m!1315639))

(assert (=> b!1425031 m!1315639))

(assert (=> b!1425031 m!1315637))

(declare-fun m!1315641 () Bool)

(assert (=> b!1425031 m!1315641))

(declare-fun m!1315643 () Bool)

(assert (=> start!122908 m!1315643))

(declare-fun m!1315645 () Bool)

(assert (=> start!122908 m!1315645))

(assert (=> b!1425026 m!1315637))

(assert (=> b!1425026 m!1315637))

(declare-fun m!1315647 () Bool)

(assert (=> b!1425026 m!1315647))

(declare-fun m!1315649 () Bool)

(assert (=> b!1425025 m!1315649))

(assert (=> b!1425025 m!1315649))

(declare-fun m!1315651 () Bool)

(assert (=> b!1425025 m!1315651))

(declare-fun m!1315653 () Bool)

(assert (=> b!1425029 m!1315653))

(declare-fun m!1315655 () Bool)

(assert (=> b!1425028 m!1315655))

(push 1)

(assert (not b!1425026))

(assert (not start!122908))

(assert (not b!1425025))

(assert (not b!1425029))

(assert (not b!1425031))

(assert (not b!1425028))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

