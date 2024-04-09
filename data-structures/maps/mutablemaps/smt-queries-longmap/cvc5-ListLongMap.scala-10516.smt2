; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124042 () Bool)

(assert start!124042)

(declare-fun b!1436069 () Bool)

(declare-fun res!969132 () Bool)

(declare-fun e!810472 () Bool)

(assert (=> b!1436069 (=> (not res!969132) (not e!810472))))

(declare-datatypes ((array!97623 0))(
  ( (array!97624 (arr!47104 (Array (_ BitVec 32) (_ BitVec 64))) (size!47655 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97623)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97623 (_ BitVec 32)) Bool)

(assert (=> b!1436069 (= res!969132 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1436070 () Bool)

(declare-fun res!969135 () Bool)

(assert (=> b!1436070 (=> (not res!969135) (not e!810472))))

(declare-datatypes ((List!33785 0))(
  ( (Nil!33782) (Cons!33781 (h!35116 (_ BitVec 64)) (t!48486 List!33785)) )
))
(declare-fun arrayNoDuplicates!0 (array!97623 (_ BitVec 32) List!33785) Bool)

(assert (=> b!1436070 (= res!969135 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33782))))

(declare-fun b!1436071 () Bool)

(declare-fun res!969131 () Bool)

(assert (=> b!1436071 (=> (not res!969131) (not e!810472))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1436071 (= res!969131 (validKeyInArray!0 (select (arr!47104 a!2862) j!93)))))

(declare-fun b!1436072 () Bool)

(declare-fun res!969130 () Bool)

(assert (=> b!1436072 (=> (not res!969130) (not e!810472))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1436072 (= res!969130 (validKeyInArray!0 (select (arr!47104 a!2862) i!1006)))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun b!1436073 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1436073 (= e!810472 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47655 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47655 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47655 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47104 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (bvslt mask!2687 #b00000000000000000000000000000000)))))

(declare-fun res!969134 () Bool)

(assert (=> start!124042 (=> (not res!969134) (not e!810472))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124042 (= res!969134 (validMask!0 mask!2687))))

(assert (=> start!124042 e!810472))

(assert (=> start!124042 true))

(declare-fun array_inv!36049 (array!97623) Bool)

(assert (=> start!124042 (array_inv!36049 a!2862)))

(declare-fun b!1436074 () Bool)

(declare-fun res!969133 () Bool)

(assert (=> b!1436074 (=> (not res!969133) (not e!810472))))

(assert (=> b!1436074 (= res!969133 (and (= (size!47655 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47655 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47655 a!2862)) (not (= i!1006 j!93))))))

(assert (= (and start!124042 res!969134) b!1436074))

(assert (= (and b!1436074 res!969133) b!1436072))

(assert (= (and b!1436072 res!969130) b!1436071))

(assert (= (and b!1436071 res!969131) b!1436069))

(assert (= (and b!1436069 res!969132) b!1436070))

(assert (= (and b!1436070 res!969135) b!1436073))

(declare-fun m!1325465 () Bool)

(assert (=> b!1436071 m!1325465))

(assert (=> b!1436071 m!1325465))

(declare-fun m!1325467 () Bool)

(assert (=> b!1436071 m!1325467))

(declare-fun m!1325469 () Bool)

(assert (=> b!1436070 m!1325469))

(declare-fun m!1325471 () Bool)

(assert (=> b!1436069 m!1325471))

(declare-fun m!1325473 () Bool)

(assert (=> b!1436072 m!1325473))

(assert (=> b!1436072 m!1325473))

(declare-fun m!1325475 () Bool)

(assert (=> b!1436072 m!1325475))

(declare-fun m!1325477 () Bool)

(assert (=> start!124042 m!1325477))

(declare-fun m!1325479 () Bool)

(assert (=> start!124042 m!1325479))

(declare-fun m!1325481 () Bool)

(assert (=> b!1436073 m!1325481))

(declare-fun m!1325483 () Bool)

(assert (=> b!1436073 m!1325483))

(push 1)

(assert (not b!1436070))

(assert (not start!124042))

(assert (not b!1436072))

(assert (not b!1436069))

(assert (not b!1436071))

(check-sat)

(pop 1)

(push 1)

(check-sat)

