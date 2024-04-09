; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124084 () Bool)

(assert start!124084)

(declare-fun b!1436260 () Bool)

(declare-fun res!969286 () Bool)

(declare-fun e!810572 () Bool)

(assert (=> b!1436260 (=> (not res!969286) (not e!810572))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!97638 0))(
  ( (array!97639 (arr!47110 (Array (_ BitVec 32) (_ BitVec 64))) (size!47661 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97638)

(declare-fun mask!2687 () (_ BitVec 32))

(assert (=> b!1436260 (= res!969286 (and (= (size!47661 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47661 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47661 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1436261 () Bool)

(assert (=> b!1436261 (= e!810572 false)))

(declare-fun lt!632053 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1436261 (= lt!632053 (toIndex!0 (select (arr!47110 a!2862) j!93) mask!2687))))

(declare-fun b!1436262 () Bool)

(declare-fun res!969288 () Bool)

(assert (=> b!1436262 (=> (not res!969288) (not e!810572))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1436262 (= res!969288 (validKeyInArray!0 (select (arr!47110 a!2862) j!93)))))

(declare-fun b!1436263 () Bool)

(declare-fun res!969291 () Bool)

(assert (=> b!1436263 (=> (not res!969291) (not e!810572))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97638 (_ BitVec 32)) Bool)

(assert (=> b!1436263 (= res!969291 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1436264 () Bool)

(declare-fun res!969287 () Bool)

(assert (=> b!1436264 (=> (not res!969287) (not e!810572))))

(assert (=> b!1436264 (= res!969287 (validKeyInArray!0 (select (arr!47110 a!2862) i!1006)))))

(declare-fun b!1436265 () Bool)

(declare-fun res!969289 () Bool)

(assert (=> b!1436265 (=> (not res!969289) (not e!810572))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1436265 (= res!969289 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47661 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47661 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47661 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47110 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!969285 () Bool)

(assert (=> start!124084 (=> (not res!969285) (not e!810572))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124084 (= res!969285 (validMask!0 mask!2687))))

(assert (=> start!124084 e!810572))

(assert (=> start!124084 true))

(declare-fun array_inv!36055 (array!97638) Bool)

(assert (=> start!124084 (array_inv!36055 a!2862)))

(declare-fun b!1436266 () Bool)

(declare-fun res!969290 () Bool)

(assert (=> b!1436266 (=> (not res!969290) (not e!810572))))

(declare-datatypes ((List!33791 0))(
  ( (Nil!33788) (Cons!33787 (h!35122 (_ BitVec 64)) (t!48492 List!33791)) )
))
(declare-fun arrayNoDuplicates!0 (array!97638 (_ BitVec 32) List!33791) Bool)

(assert (=> b!1436266 (= res!969290 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33788))))

(assert (= (and start!124084 res!969285) b!1436260))

(assert (= (and b!1436260 res!969286) b!1436264))

(assert (= (and b!1436264 res!969287) b!1436262))

(assert (= (and b!1436262 res!969288) b!1436263))

(assert (= (and b!1436263 res!969291) b!1436266))

(assert (= (and b!1436266 res!969290) b!1436265))

(assert (= (and b!1436265 res!969289) b!1436261))

(declare-fun m!1325625 () Bool)

(assert (=> b!1436261 m!1325625))

(assert (=> b!1436261 m!1325625))

(declare-fun m!1325627 () Bool)

(assert (=> b!1436261 m!1325627))

(declare-fun m!1325629 () Bool)

(assert (=> b!1436265 m!1325629))

(declare-fun m!1325631 () Bool)

(assert (=> b!1436265 m!1325631))

(declare-fun m!1325633 () Bool)

(assert (=> b!1436266 m!1325633))

(declare-fun m!1325635 () Bool)

(assert (=> b!1436264 m!1325635))

(assert (=> b!1436264 m!1325635))

(declare-fun m!1325637 () Bool)

(assert (=> b!1436264 m!1325637))

(declare-fun m!1325639 () Bool)

(assert (=> b!1436263 m!1325639))

(assert (=> b!1436262 m!1325625))

(assert (=> b!1436262 m!1325625))

(declare-fun m!1325641 () Bool)

(assert (=> b!1436262 m!1325641))

(declare-fun m!1325643 () Bool)

(assert (=> start!124084 m!1325643))

(declare-fun m!1325645 () Bool)

(assert (=> start!124084 m!1325645))

(push 1)

(assert (not b!1436266))

(assert (not b!1436263))

(assert (not b!1436264))

(assert (not b!1436262))

(assert (not b!1436261))

(assert (not start!124084))

(check-sat)

