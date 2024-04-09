; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124092 () Bool)

(assert start!124092)

(declare-fun b!1436344 () Bool)

(declare-fun res!969374 () Bool)

(declare-fun e!810595 () Bool)

(assert (=> b!1436344 (=> (not res!969374) (not e!810595))))

(declare-datatypes ((array!97646 0))(
  ( (array!97647 (arr!47114 (Array (_ BitVec 32) (_ BitVec 64))) (size!47665 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97646)

(declare-datatypes ((List!33795 0))(
  ( (Nil!33792) (Cons!33791 (h!35126 (_ BitVec 64)) (t!48496 List!33795)) )
))
(declare-fun arrayNoDuplicates!0 (array!97646 (_ BitVec 32) List!33795) Bool)

(assert (=> b!1436344 (= res!969374 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33792))))

(declare-fun b!1436346 () Bool)

(declare-fun res!969373 () Bool)

(assert (=> b!1436346 (=> (not res!969373) (not e!810595))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1436346 (= res!969373 (validKeyInArray!0 (select (arr!47114 a!2862) j!93)))))

(declare-fun b!1436347 () Bool)

(declare-fun res!969369 () Bool)

(assert (=> b!1436347 (=> (not res!969369) (not e!810595))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1436347 (= res!969369 (validKeyInArray!0 (select (arr!47114 a!2862) i!1006)))))

(declare-fun b!1436348 () Bool)

(declare-fun res!969371 () Bool)

(assert (=> b!1436348 (=> (not res!969371) (not e!810595))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1436348 (= res!969371 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47665 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47665 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47665 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47114 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1436349 () Bool)

(declare-fun res!969372 () Bool)

(assert (=> b!1436349 (=> (not res!969372) (not e!810595))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97646 (_ BitVec 32)) Bool)

(assert (=> b!1436349 (= res!969372 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1436350 () Bool)

(declare-fun res!969375 () Bool)

(assert (=> b!1436350 (=> (not res!969375) (not e!810595))))

(assert (=> b!1436350 (= res!969375 (and (= (size!47665 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47665 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47665 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1436345 () Bool)

(assert (=> b!1436345 (= e!810595 (bvslt mask!2687 #b00000000000000000000000000000000))))

(declare-fun lt!632065 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1436345 (= lt!632065 (toIndex!0 (select (arr!47114 a!2862) j!93) mask!2687))))

(declare-fun res!969370 () Bool)

(assert (=> start!124092 (=> (not res!969370) (not e!810595))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124092 (= res!969370 (validMask!0 mask!2687))))

(assert (=> start!124092 e!810595))

(assert (=> start!124092 true))

(declare-fun array_inv!36059 (array!97646) Bool)

(assert (=> start!124092 (array_inv!36059 a!2862)))

(assert (= (and start!124092 res!969370) b!1436350))

(assert (= (and b!1436350 res!969375) b!1436347))

(assert (= (and b!1436347 res!969369) b!1436346))

(assert (= (and b!1436346 res!969373) b!1436349))

(assert (= (and b!1436349 res!969372) b!1436344))

(assert (= (and b!1436344 res!969374) b!1436348))

(assert (= (and b!1436348 res!969371) b!1436345))

(declare-fun m!1325713 () Bool)

(assert (=> b!1436346 m!1325713))

(assert (=> b!1436346 m!1325713))

(declare-fun m!1325715 () Bool)

(assert (=> b!1436346 m!1325715))

(declare-fun m!1325717 () Bool)

(assert (=> b!1436348 m!1325717))

(declare-fun m!1325719 () Bool)

(assert (=> b!1436348 m!1325719))

(declare-fun m!1325721 () Bool)

(assert (=> b!1436349 m!1325721))

(declare-fun m!1325723 () Bool)

(assert (=> b!1436344 m!1325723))

(assert (=> b!1436345 m!1325713))

(assert (=> b!1436345 m!1325713))

(declare-fun m!1325725 () Bool)

(assert (=> b!1436345 m!1325725))

(declare-fun m!1325727 () Bool)

(assert (=> start!124092 m!1325727))

(declare-fun m!1325729 () Bool)

(assert (=> start!124092 m!1325729))

(declare-fun m!1325731 () Bool)

(assert (=> b!1436347 m!1325731))

(assert (=> b!1436347 m!1325731))

(declare-fun m!1325733 () Bool)

(assert (=> b!1436347 m!1325733))

(check-sat (not b!1436344) (not b!1436346) (not start!124092) (not b!1436345) (not b!1436349) (not b!1436347))
(check-sat)
