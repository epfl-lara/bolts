; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124086 () Bool)

(assert start!124086)

(declare-fun b!1436281 () Bool)

(declare-fun res!969308 () Bool)

(declare-fun e!810577 () Bool)

(assert (=> b!1436281 (=> (not res!969308) (not e!810577))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!97640 0))(
  ( (array!97641 (arr!47111 (Array (_ BitVec 32) (_ BitVec 64))) (size!47662 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97640)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1436281 (= res!969308 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47662 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47662 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47662 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47111 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!969307 () Bool)

(assert (=> start!124086 (=> (not res!969307) (not e!810577))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124086 (= res!969307 (validMask!0 mask!2687))))

(assert (=> start!124086 e!810577))

(assert (=> start!124086 true))

(declare-fun array_inv!36056 (array!97640) Bool)

(assert (=> start!124086 (array_inv!36056 a!2862)))

(declare-fun b!1436282 () Bool)

(assert (=> b!1436282 (= e!810577 false)))

(declare-fun lt!632056 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1436282 (= lt!632056 (toIndex!0 (select (arr!47111 a!2862) j!93) mask!2687))))

(declare-fun b!1436283 () Bool)

(declare-fun res!969306 () Bool)

(assert (=> b!1436283 (=> (not res!969306) (not e!810577))))

(assert (=> b!1436283 (= res!969306 (and (= (size!47662 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47662 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47662 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1436284 () Bool)

(declare-fun res!969309 () Bool)

(assert (=> b!1436284 (=> (not res!969309) (not e!810577))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97640 (_ BitVec 32)) Bool)

(assert (=> b!1436284 (= res!969309 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1436285 () Bool)

(declare-fun res!969312 () Bool)

(assert (=> b!1436285 (=> (not res!969312) (not e!810577))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1436285 (= res!969312 (validKeyInArray!0 (select (arr!47111 a!2862) i!1006)))))

(declare-fun b!1436286 () Bool)

(declare-fun res!969310 () Bool)

(assert (=> b!1436286 (=> (not res!969310) (not e!810577))))

(assert (=> b!1436286 (= res!969310 (validKeyInArray!0 (select (arr!47111 a!2862) j!93)))))

(declare-fun b!1436287 () Bool)

(declare-fun res!969311 () Bool)

(assert (=> b!1436287 (=> (not res!969311) (not e!810577))))

(declare-datatypes ((List!33792 0))(
  ( (Nil!33789) (Cons!33788 (h!35123 (_ BitVec 64)) (t!48493 List!33792)) )
))
(declare-fun arrayNoDuplicates!0 (array!97640 (_ BitVec 32) List!33792) Bool)

(assert (=> b!1436287 (= res!969311 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33789))))

(assert (= (and start!124086 res!969307) b!1436283))

(assert (= (and b!1436283 res!969306) b!1436285))

(assert (= (and b!1436285 res!969312) b!1436286))

(assert (= (and b!1436286 res!969310) b!1436284))

(assert (= (and b!1436284 res!969309) b!1436287))

(assert (= (and b!1436287 res!969311) b!1436281))

(assert (= (and b!1436281 res!969308) b!1436282))

(declare-fun m!1325647 () Bool)

(assert (=> start!124086 m!1325647))

(declare-fun m!1325649 () Bool)

(assert (=> start!124086 m!1325649))

(declare-fun m!1325651 () Bool)

(assert (=> b!1436285 m!1325651))

(assert (=> b!1436285 m!1325651))

(declare-fun m!1325653 () Bool)

(assert (=> b!1436285 m!1325653))

(declare-fun m!1325655 () Bool)

(assert (=> b!1436282 m!1325655))

(assert (=> b!1436282 m!1325655))

(declare-fun m!1325657 () Bool)

(assert (=> b!1436282 m!1325657))

(declare-fun m!1325659 () Bool)

(assert (=> b!1436281 m!1325659))

(declare-fun m!1325661 () Bool)

(assert (=> b!1436281 m!1325661))

(declare-fun m!1325663 () Bool)

(assert (=> b!1436287 m!1325663))

(assert (=> b!1436286 m!1325655))

(assert (=> b!1436286 m!1325655))

(declare-fun m!1325665 () Bool)

(assert (=> b!1436286 m!1325665))

(declare-fun m!1325667 () Bool)

(assert (=> b!1436284 m!1325667))

(check-sat (not start!124086) (not b!1436284) (not b!1436287) (not b!1436286) (not b!1436282) (not b!1436285))
