; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124146 () Bool)

(assert start!124146)

(declare-fun res!969609 () Bool)

(declare-fun e!810712 () Bool)

(assert (=> start!124146 (=> (not res!969609) (not e!810712))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124146 (= res!969609 (validMask!0 mask!2687))))

(assert (=> start!124146 e!810712))

(assert (=> start!124146 true))

(declare-datatypes ((array!97667 0))(
  ( (array!97668 (arr!47123 (Array (_ BitVec 32) (_ BitVec 64))) (size!47674 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97667)

(declare-fun array_inv!36068 (array!97667) Bool)

(assert (=> start!124146 (array_inv!36068 a!2862)))

(declare-fun b!1436614 () Bool)

(declare-fun res!969610 () Bool)

(assert (=> b!1436614 (=> (not res!969610) (not e!810712))))

(declare-datatypes ((List!33804 0))(
  ( (Nil!33801) (Cons!33800 (h!35138 (_ BitVec 64)) (t!48505 List!33804)) )
))
(declare-fun arrayNoDuplicates!0 (array!97667 (_ BitVec 32) List!33804) Bool)

(assert (=> b!1436614 (= res!969610 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33801))))

(declare-fun b!1436615 () Bool)

(declare-fun res!969612 () Bool)

(assert (=> b!1436615 (=> (not res!969612) (not e!810712))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1436615 (= res!969612 (and (= (size!47674 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47674 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47674 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1436616 () Bool)

(declare-fun res!969611 () Bool)

(assert (=> b!1436616 (=> (not res!969611) (not e!810712))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97667 (_ BitVec 32)) Bool)

(assert (=> b!1436616 (= res!969611 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1436617 () Bool)

(assert (=> b!1436617 (= e!810712 false)))

(declare-fun lt!632137 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1436617 (= lt!632137 (toIndex!0 (select (arr!47123 a!2862) j!93) mask!2687))))

(declare-fun b!1436618 () Bool)

(declare-fun res!969608 () Bool)

(assert (=> b!1436618 (=> (not res!969608) (not e!810712))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1436618 (= res!969608 (validKeyInArray!0 (select (arr!47123 a!2862) i!1006)))))

(declare-fun b!1436619 () Bool)

(declare-fun res!969606 () Bool)

(assert (=> b!1436619 (=> (not res!969606) (not e!810712))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1436619 (= res!969606 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47674 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47674 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47674 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47123 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1436620 () Bool)

(declare-fun res!969607 () Bool)

(assert (=> b!1436620 (=> (not res!969607) (not e!810712))))

(assert (=> b!1436620 (= res!969607 (validKeyInArray!0 (select (arr!47123 a!2862) j!93)))))

(assert (= (and start!124146 res!969609) b!1436615))

(assert (= (and b!1436615 res!969612) b!1436618))

(assert (= (and b!1436618 res!969608) b!1436620))

(assert (= (and b!1436620 res!969607) b!1436616))

(assert (= (and b!1436616 res!969611) b!1436614))

(assert (= (and b!1436614 res!969610) b!1436619))

(assert (= (and b!1436619 res!969606) b!1436617))

(declare-fun m!1325959 () Bool)

(assert (=> b!1436617 m!1325959))

(assert (=> b!1436617 m!1325959))

(declare-fun m!1325961 () Bool)

(assert (=> b!1436617 m!1325961))

(declare-fun m!1325963 () Bool)

(assert (=> start!124146 m!1325963))

(declare-fun m!1325965 () Bool)

(assert (=> start!124146 m!1325965))

(declare-fun m!1325967 () Bool)

(assert (=> b!1436619 m!1325967))

(declare-fun m!1325969 () Bool)

(assert (=> b!1436619 m!1325969))

(declare-fun m!1325971 () Bool)

(assert (=> b!1436618 m!1325971))

(assert (=> b!1436618 m!1325971))

(declare-fun m!1325973 () Bool)

(assert (=> b!1436618 m!1325973))

(declare-fun m!1325975 () Bool)

(assert (=> b!1436614 m!1325975))

(assert (=> b!1436620 m!1325959))

(assert (=> b!1436620 m!1325959))

(declare-fun m!1325977 () Bool)

(assert (=> b!1436620 m!1325977))

(declare-fun m!1325979 () Bool)

(assert (=> b!1436616 m!1325979))

(check-sat (not start!124146) (not b!1436616) (not b!1436614) (not b!1436618) (not b!1436620) (not b!1436617))
