; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124098 () Bool)

(assert start!124098)

(declare-fun b!1436408 () Bool)

(declare-fun res!969432 () Bool)

(declare-fun e!810613 () Bool)

(assert (=> b!1436408 (=> (not res!969432) (not e!810613))))

(declare-datatypes ((array!97652 0))(
  ( (array!97653 (arr!47117 (Array (_ BitVec 32) (_ BitVec 64))) (size!47668 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97652)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97652 (_ BitVec 32)) Bool)

(assert (=> b!1436408 (= res!969432 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1436409 () Bool)

(declare-fun res!969433 () Bool)

(assert (=> b!1436409 (=> (not res!969433) (not e!810613))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1436409 (= res!969433 (validKeyInArray!0 (select (arr!47117 a!2862) j!93)))))

(declare-fun b!1436410 () Bool)

(assert (=> b!1436410 (= e!810613 false)))

(declare-fun lt!632074 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1436410 (= lt!632074 (toIndex!0 (select (arr!47117 a!2862) j!93) mask!2687))))

(declare-fun b!1436411 () Bool)

(declare-fun res!969438 () Bool)

(assert (=> b!1436411 (=> (not res!969438) (not e!810613))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1436411 (= res!969438 (validKeyInArray!0 (select (arr!47117 a!2862) i!1006)))))

(declare-fun b!1436412 () Bool)

(declare-fun res!969437 () Bool)

(assert (=> b!1436412 (=> (not res!969437) (not e!810613))))

(declare-datatypes ((List!33798 0))(
  ( (Nil!33795) (Cons!33794 (h!35129 (_ BitVec 64)) (t!48499 List!33798)) )
))
(declare-fun arrayNoDuplicates!0 (array!97652 (_ BitVec 32) List!33798) Bool)

(assert (=> b!1436412 (= res!969437 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33795))))

(declare-fun b!1436413 () Bool)

(declare-fun res!969435 () Bool)

(assert (=> b!1436413 (=> (not res!969435) (not e!810613))))

(assert (=> b!1436413 (= res!969435 (and (= (size!47668 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47668 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47668 a!2862)) (not (= i!1006 j!93))))))

(declare-fun res!969434 () Bool)

(assert (=> start!124098 (=> (not res!969434) (not e!810613))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124098 (= res!969434 (validMask!0 mask!2687))))

(assert (=> start!124098 e!810613))

(assert (=> start!124098 true))

(declare-fun array_inv!36062 (array!97652) Bool)

(assert (=> start!124098 (array_inv!36062 a!2862)))

(declare-fun b!1436407 () Bool)

(declare-fun res!969436 () Bool)

(assert (=> b!1436407 (=> (not res!969436) (not e!810613))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1436407 (= res!969436 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47668 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47668 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47668 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47117 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!124098 res!969434) b!1436413))

(assert (= (and b!1436413 res!969435) b!1436411))

(assert (= (and b!1436411 res!969438) b!1436409))

(assert (= (and b!1436409 res!969433) b!1436408))

(assert (= (and b!1436408 res!969432) b!1436412))

(assert (= (and b!1436412 res!969437) b!1436407))

(assert (= (and b!1436407 res!969436) b!1436410))

(declare-fun m!1325779 () Bool)

(assert (=> b!1436408 m!1325779))

(declare-fun m!1325781 () Bool)

(assert (=> b!1436411 m!1325781))

(assert (=> b!1436411 m!1325781))

(declare-fun m!1325783 () Bool)

(assert (=> b!1436411 m!1325783))

(declare-fun m!1325785 () Bool)

(assert (=> b!1436409 m!1325785))

(assert (=> b!1436409 m!1325785))

(declare-fun m!1325787 () Bool)

(assert (=> b!1436409 m!1325787))

(declare-fun m!1325789 () Bool)

(assert (=> b!1436407 m!1325789))

(declare-fun m!1325791 () Bool)

(assert (=> b!1436407 m!1325791))

(declare-fun m!1325793 () Bool)

(assert (=> start!124098 m!1325793))

(declare-fun m!1325795 () Bool)

(assert (=> start!124098 m!1325795))

(declare-fun m!1325797 () Bool)

(assert (=> b!1436412 m!1325797))

(assert (=> b!1436410 m!1325785))

(assert (=> b!1436410 m!1325785))

(declare-fun m!1325799 () Bool)

(assert (=> b!1436410 m!1325799))

(check-sat (not b!1436408) (not b!1436412) (not start!124098) (not b!1436411) (not b!1436410) (not b!1436409))
