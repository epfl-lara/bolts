; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124046 () Bool)

(assert start!124046)

(declare-fun res!969168 () Bool)

(declare-fun e!810484 () Bool)

(assert (=> start!124046 (=> (not res!969168) (not e!810484))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124046 (= res!969168 (validMask!0 mask!2687))))

(assert (=> start!124046 e!810484))

(assert (=> start!124046 true))

(declare-datatypes ((array!97627 0))(
  ( (array!97628 (arr!47106 (Array (_ BitVec 32) (_ BitVec 64))) (size!47657 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97627)

(declare-fun array_inv!36051 (array!97627) Bool)

(assert (=> start!124046 (array_inv!36051 a!2862)))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun b!1436105 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1436105 (= e!810484 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47657 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47657 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47657 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47106 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (bvslt mask!2687 #b00000000000000000000000000000000)))))

(declare-fun b!1436106 () Bool)

(declare-fun res!969170 () Bool)

(assert (=> b!1436106 (=> (not res!969170) (not e!810484))))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1436106 (= res!969170 (and (= (size!47657 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47657 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47657 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1436107 () Bool)

(declare-fun res!969171 () Bool)

(assert (=> b!1436107 (=> (not res!969171) (not e!810484))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97627 (_ BitVec 32)) Bool)

(assert (=> b!1436107 (= res!969171 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1436108 () Bool)

(declare-fun res!969169 () Bool)

(assert (=> b!1436108 (=> (not res!969169) (not e!810484))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1436108 (= res!969169 (validKeyInArray!0 (select (arr!47106 a!2862) i!1006)))))

(declare-fun b!1436109 () Bool)

(declare-fun res!969166 () Bool)

(assert (=> b!1436109 (=> (not res!969166) (not e!810484))))

(assert (=> b!1436109 (= res!969166 (validKeyInArray!0 (select (arr!47106 a!2862) j!93)))))

(declare-fun b!1436110 () Bool)

(declare-fun res!969167 () Bool)

(assert (=> b!1436110 (=> (not res!969167) (not e!810484))))

(declare-datatypes ((List!33787 0))(
  ( (Nil!33784) (Cons!33783 (h!35118 (_ BitVec 64)) (t!48488 List!33787)) )
))
(declare-fun arrayNoDuplicates!0 (array!97627 (_ BitVec 32) List!33787) Bool)

(assert (=> b!1436110 (= res!969167 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33784))))

(assert (= (and start!124046 res!969168) b!1436106))

(assert (= (and b!1436106 res!969170) b!1436108))

(assert (= (and b!1436108 res!969169) b!1436109))

(assert (= (and b!1436109 res!969166) b!1436107))

(assert (= (and b!1436107 res!969171) b!1436110))

(assert (= (and b!1436110 res!969167) b!1436105))

(declare-fun m!1325505 () Bool)

(assert (=> b!1436107 m!1325505))

(declare-fun m!1325507 () Bool)

(assert (=> b!1436109 m!1325507))

(assert (=> b!1436109 m!1325507))

(declare-fun m!1325509 () Bool)

(assert (=> b!1436109 m!1325509))

(declare-fun m!1325511 () Bool)

(assert (=> b!1436105 m!1325511))

(declare-fun m!1325513 () Bool)

(assert (=> b!1436105 m!1325513))

(declare-fun m!1325515 () Bool)

(assert (=> b!1436108 m!1325515))

(assert (=> b!1436108 m!1325515))

(declare-fun m!1325517 () Bool)

(assert (=> b!1436108 m!1325517))

(declare-fun m!1325519 () Bool)

(assert (=> start!124046 m!1325519))

(declare-fun m!1325521 () Bool)

(assert (=> start!124046 m!1325521))

(declare-fun m!1325523 () Bool)

(assert (=> b!1436110 m!1325523))

(push 1)

(assert (not start!124046))

(assert (not b!1436110))

(assert (not b!1436108))

(assert (not b!1436109))

(assert (not b!1436107))

(check-sat)

(pop 1)

(push 1)

(check-sat)

