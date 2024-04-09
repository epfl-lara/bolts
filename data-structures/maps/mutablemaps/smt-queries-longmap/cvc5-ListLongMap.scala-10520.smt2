; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124096 () Bool)

(assert start!124096)

(declare-fun b!1436386 () Bool)

(declare-fun e!810607 () Bool)

(assert (=> b!1436386 (= e!810607 false)))

(declare-fun lt!632071 () (_ BitVec 32))

(declare-datatypes ((array!97650 0))(
  ( (array!97651 (arr!47116 (Array (_ BitVec 32) (_ BitVec 64))) (size!47667 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97650)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1436386 (= lt!632071 (toIndex!0 (select (arr!47116 a!2862) j!93) mask!2687))))

(declare-fun b!1436387 () Bool)

(declare-fun res!969414 () Bool)

(assert (=> b!1436387 (=> (not res!969414) (not e!810607))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1436387 (= res!969414 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47667 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47667 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47667 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47116 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1436388 () Bool)

(declare-fun res!969417 () Bool)

(assert (=> b!1436388 (=> (not res!969417) (not e!810607))))

(declare-datatypes ((List!33797 0))(
  ( (Nil!33794) (Cons!33793 (h!35128 (_ BitVec 64)) (t!48498 List!33797)) )
))
(declare-fun arrayNoDuplicates!0 (array!97650 (_ BitVec 32) List!33797) Bool)

(assert (=> b!1436388 (= res!969417 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33794))))

(declare-fun b!1436389 () Bool)

(declare-fun res!969412 () Bool)

(assert (=> b!1436389 (=> (not res!969412) (not e!810607))))

(assert (=> b!1436389 (= res!969412 (and (= (size!47667 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47667 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47667 a!2862)) (not (= i!1006 j!93))))))

(declare-fun res!969413 () Bool)

(assert (=> start!124096 (=> (not res!969413) (not e!810607))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124096 (= res!969413 (validMask!0 mask!2687))))

(assert (=> start!124096 e!810607))

(assert (=> start!124096 true))

(declare-fun array_inv!36061 (array!97650) Bool)

(assert (=> start!124096 (array_inv!36061 a!2862)))

(declare-fun b!1436390 () Bool)

(declare-fun res!969411 () Bool)

(assert (=> b!1436390 (=> (not res!969411) (not e!810607))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1436390 (= res!969411 (validKeyInArray!0 (select (arr!47116 a!2862) j!93)))))

(declare-fun b!1436391 () Bool)

(declare-fun res!969416 () Bool)

(assert (=> b!1436391 (=> (not res!969416) (not e!810607))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97650 (_ BitVec 32)) Bool)

(assert (=> b!1436391 (= res!969416 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1436392 () Bool)

(declare-fun res!969415 () Bool)

(assert (=> b!1436392 (=> (not res!969415) (not e!810607))))

(assert (=> b!1436392 (= res!969415 (validKeyInArray!0 (select (arr!47116 a!2862) i!1006)))))

(assert (= (and start!124096 res!969413) b!1436389))

(assert (= (and b!1436389 res!969412) b!1436392))

(assert (= (and b!1436392 res!969415) b!1436390))

(assert (= (and b!1436390 res!969411) b!1436391))

(assert (= (and b!1436391 res!969416) b!1436388))

(assert (= (and b!1436388 res!969417) b!1436387))

(assert (= (and b!1436387 res!969414) b!1436386))

(declare-fun m!1325757 () Bool)

(assert (=> b!1436387 m!1325757))

(declare-fun m!1325759 () Bool)

(assert (=> b!1436387 m!1325759))

(declare-fun m!1325761 () Bool)

(assert (=> b!1436391 m!1325761))

(declare-fun m!1325763 () Bool)

(assert (=> b!1436392 m!1325763))

(assert (=> b!1436392 m!1325763))

(declare-fun m!1325765 () Bool)

(assert (=> b!1436392 m!1325765))

(declare-fun m!1325767 () Bool)

(assert (=> start!124096 m!1325767))

(declare-fun m!1325769 () Bool)

(assert (=> start!124096 m!1325769))

(declare-fun m!1325771 () Bool)

(assert (=> b!1436388 m!1325771))

(declare-fun m!1325773 () Bool)

(assert (=> b!1436390 m!1325773))

(assert (=> b!1436390 m!1325773))

(declare-fun m!1325775 () Bool)

(assert (=> b!1436390 m!1325775))

(assert (=> b!1436386 m!1325773))

(assert (=> b!1436386 m!1325773))

(declare-fun m!1325777 () Bool)

(assert (=> b!1436386 m!1325777))

(push 1)

(assert (not start!124096))

(assert (not b!1436392))

(assert (not b!1436391))

(assert (not b!1436388))

(assert (not b!1436390))

(assert (not b!1436386))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

