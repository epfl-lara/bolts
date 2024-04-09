; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124044 () Bool)

(assert start!124044)

(declare-fun b!1436087 () Bool)

(declare-fun res!969151 () Bool)

(declare-fun e!810479 () Bool)

(assert (=> b!1436087 (=> (not res!969151) (not e!810479))))

(declare-datatypes ((array!97625 0))(
  ( (array!97626 (arr!47105 (Array (_ BitVec 32) (_ BitVec 64))) (size!47656 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97625)

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1436087 (= res!969151 (validKeyInArray!0 (select (arr!47105 a!2862) i!1006)))))

(declare-fun b!1436088 () Bool)

(declare-fun res!969150 () Bool)

(assert (=> b!1436088 (=> (not res!969150) (not e!810479))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97625 (_ BitVec 32)) Bool)

(assert (=> b!1436088 (= res!969150 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1436089 () Bool)

(declare-fun res!969149 () Bool)

(assert (=> b!1436089 (=> (not res!969149) (not e!810479))))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1436089 (= res!969149 (validKeyInArray!0 (select (arr!47105 a!2862) j!93)))))

(declare-fun b!1436091 () Bool)

(declare-fun res!969153 () Bool)

(assert (=> b!1436091 (=> (not res!969153) (not e!810479))))

(declare-datatypes ((List!33786 0))(
  ( (Nil!33783) (Cons!33782 (h!35117 (_ BitVec 64)) (t!48487 List!33786)) )
))
(declare-fun arrayNoDuplicates!0 (array!97625 (_ BitVec 32) List!33786) Bool)

(assert (=> b!1436091 (= res!969153 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33783))))

(declare-fun b!1436092 () Bool)

(declare-fun res!969152 () Bool)

(assert (=> b!1436092 (=> (not res!969152) (not e!810479))))

(assert (=> b!1436092 (= res!969152 (and (= (size!47656 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47656 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47656 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1436090 () Bool)

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun x!665 () (_ BitVec 32))

(assert (=> b!1436090 (= e!810479 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47656 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47656 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47656 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47105 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (bvslt mask!2687 #b00000000000000000000000000000000)))))

(declare-fun res!969148 () Bool)

(assert (=> start!124044 (=> (not res!969148) (not e!810479))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124044 (= res!969148 (validMask!0 mask!2687))))

(assert (=> start!124044 e!810479))

(assert (=> start!124044 true))

(declare-fun array_inv!36050 (array!97625) Bool)

(assert (=> start!124044 (array_inv!36050 a!2862)))

(assert (= (and start!124044 res!969148) b!1436092))

(assert (= (and b!1436092 res!969152) b!1436087))

(assert (= (and b!1436087 res!969151) b!1436089))

(assert (= (and b!1436089 res!969149) b!1436088))

(assert (= (and b!1436088 res!969150) b!1436091))

(assert (= (and b!1436091 res!969153) b!1436090))

(declare-fun m!1325485 () Bool)

(assert (=> b!1436089 m!1325485))

(assert (=> b!1436089 m!1325485))

(declare-fun m!1325487 () Bool)

(assert (=> b!1436089 m!1325487))

(declare-fun m!1325489 () Bool)

(assert (=> b!1436088 m!1325489))

(declare-fun m!1325491 () Bool)

(assert (=> start!124044 m!1325491))

(declare-fun m!1325493 () Bool)

(assert (=> start!124044 m!1325493))

(declare-fun m!1325495 () Bool)

(assert (=> b!1436087 m!1325495))

(assert (=> b!1436087 m!1325495))

(declare-fun m!1325497 () Bool)

(assert (=> b!1436087 m!1325497))

(declare-fun m!1325499 () Bool)

(assert (=> b!1436091 m!1325499))

(declare-fun m!1325501 () Bool)

(assert (=> b!1436090 m!1325501))

(declare-fun m!1325503 () Bool)

(assert (=> b!1436090 m!1325503))

(check-sat (not start!124044) (not b!1436087) (not b!1436091) (not b!1436089) (not b!1436088))
(check-sat)
