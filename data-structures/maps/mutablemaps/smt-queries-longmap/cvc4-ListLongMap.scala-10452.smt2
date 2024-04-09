; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122918 () Bool)

(assert start!122918)

(declare-fun b!1425138 () Bool)

(declare-fun e!805288 () Bool)

(assert (=> b!1425138 (= e!805288 false)))

(declare-fun lt!627727 () (_ BitVec 32))

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((array!97201 0))(
  ( (array!97202 (arr!46914 (Array (_ BitVec 32) (_ BitVec 64))) (size!47465 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97201)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun i!982 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1425138 (= lt!627727 (toIndex!0 (select (store (arr!46914 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) mask!2608))))

(declare-fun b!1425139 () Bool)

(declare-fun res!960680 () Bool)

(assert (=> b!1425139 (=> (not res!960680) (not e!805288))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1425139 (= res!960680 (validKeyInArray!0 (select (arr!46914 a!2831) j!81)))))

(declare-fun b!1425140 () Bool)

(declare-fun res!960687 () Bool)

(assert (=> b!1425140 (=> (not res!960687) (not e!805288))))

(assert (=> b!1425140 (= res!960687 (validKeyInArray!0 (select (arr!46914 a!2831) i!982)))))

(declare-fun b!1425141 () Bool)

(declare-fun res!960686 () Bool)

(assert (=> b!1425141 (=> (not res!960686) (not e!805288))))

(assert (=> b!1425141 (= res!960686 (and (= (size!47465 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47465 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47465 a!2831)) (not (= i!982 j!81))))))

(declare-fun res!960683 () Bool)

(assert (=> start!122918 (=> (not res!960683) (not e!805288))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122918 (= res!960683 (validMask!0 mask!2608))))

(assert (=> start!122918 e!805288))

(assert (=> start!122918 true))

(declare-fun array_inv!35859 (array!97201) Bool)

(assert (=> start!122918 (array_inv!35859 a!2831)))

(declare-fun b!1425142 () Bool)

(declare-fun res!960685 () Bool)

(assert (=> b!1425142 (=> (not res!960685) (not e!805288))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1425142 (= res!960685 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47465 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47465 a!2831))))))

(declare-fun b!1425143 () Bool)

(declare-fun res!960681 () Bool)

(assert (=> b!1425143 (=> (not res!960681) (not e!805288))))

(declare-datatypes ((List!33604 0))(
  ( (Nil!33601) (Cons!33600 (h!34902 (_ BitVec 64)) (t!48305 List!33604)) )
))
(declare-fun arrayNoDuplicates!0 (array!97201 (_ BitVec 32) List!33604) Bool)

(assert (=> b!1425143 (= res!960681 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33601))))

(declare-fun b!1425144 () Bool)

(declare-fun res!960682 () Bool)

(assert (=> b!1425144 (=> (not res!960682) (not e!805288))))

(declare-datatypes ((SeekEntryResult!11215 0))(
  ( (MissingZero!11215 (index!47251 (_ BitVec 32))) (Found!11215 (index!47252 (_ BitVec 32))) (Intermediate!11215 (undefined!12027 Bool) (index!47253 (_ BitVec 32)) (x!128892 (_ BitVec 32))) (Undefined!11215) (MissingVacant!11215 (index!47254 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97201 (_ BitVec 32)) SeekEntryResult!11215)

(assert (=> b!1425144 (= res!960682 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46914 a!2831) j!81) mask!2608) (select (arr!46914 a!2831) j!81) a!2831 mask!2608) (Intermediate!11215 false intermediateBeforeIndex!13 intermediateBeforeX!13)))))

(declare-fun b!1425145 () Bool)

(declare-fun res!960684 () Bool)

(assert (=> b!1425145 (=> (not res!960684) (not e!805288))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97201 (_ BitVec 32)) Bool)

(assert (=> b!1425145 (= res!960684 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(assert (= (and start!122918 res!960683) b!1425141))

(assert (= (and b!1425141 res!960686) b!1425140))

(assert (= (and b!1425140 res!960687) b!1425139))

(assert (= (and b!1425139 res!960680) b!1425145))

(assert (= (and b!1425145 res!960684) b!1425143))

(assert (= (and b!1425143 res!960681) b!1425142))

(assert (= (and b!1425142 res!960685) b!1425144))

(assert (= (and b!1425144 res!960682) b!1425138))

(declare-fun m!1315749 () Bool)

(assert (=> b!1425143 m!1315749))

(declare-fun m!1315751 () Bool)

(assert (=> b!1425145 m!1315751))

(declare-fun m!1315753 () Bool)

(assert (=> start!122918 m!1315753))

(declare-fun m!1315755 () Bool)

(assert (=> start!122918 m!1315755))

(declare-fun m!1315757 () Bool)

(assert (=> b!1425144 m!1315757))

(assert (=> b!1425144 m!1315757))

(declare-fun m!1315759 () Bool)

(assert (=> b!1425144 m!1315759))

(assert (=> b!1425144 m!1315759))

(assert (=> b!1425144 m!1315757))

(declare-fun m!1315761 () Bool)

(assert (=> b!1425144 m!1315761))

(declare-fun m!1315763 () Bool)

(assert (=> b!1425140 m!1315763))

(assert (=> b!1425140 m!1315763))

(declare-fun m!1315765 () Bool)

(assert (=> b!1425140 m!1315765))

(assert (=> b!1425139 m!1315757))

(assert (=> b!1425139 m!1315757))

(declare-fun m!1315767 () Bool)

(assert (=> b!1425139 m!1315767))

(declare-fun m!1315769 () Bool)

(assert (=> b!1425138 m!1315769))

(declare-fun m!1315771 () Bool)

(assert (=> b!1425138 m!1315771))

(assert (=> b!1425138 m!1315771))

(declare-fun m!1315773 () Bool)

(assert (=> b!1425138 m!1315773))

(push 1)

(assert (not b!1425139))

(assert (not b!1425138))

(assert (not start!122918))

(assert (not b!1425143))

(assert (not b!1425145))

(assert (not b!1425140))

(assert (not b!1425144))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

