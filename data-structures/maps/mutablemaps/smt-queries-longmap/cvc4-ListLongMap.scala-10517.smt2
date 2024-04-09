; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124052 () Bool)

(assert start!124052)

(declare-fun res!969220 () Bool)

(declare-fun e!810503 () Bool)

(assert (=> start!124052 (=> (not res!969220) (not e!810503))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124052 (= res!969220 (validMask!0 mask!2687))))

(assert (=> start!124052 e!810503))

(assert (=> start!124052 true))

(declare-datatypes ((array!97633 0))(
  ( (array!97634 (arr!47109 (Array (_ BitVec 32) (_ BitVec 64))) (size!47660 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97633)

(declare-fun array_inv!36054 (array!97633) Bool)

(assert (=> start!124052 (array_inv!36054 a!2862)))

(declare-fun b!1436159 () Bool)

(declare-fun res!969223 () Bool)

(assert (=> b!1436159 (=> (not res!969223) (not e!810503))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1436159 (= res!969223 (validKeyInArray!0 (select (arr!47109 a!2862) j!93)))))

(declare-fun b!1436160 () Bool)

(declare-fun res!969225 () Bool)

(assert (=> b!1436160 (=> (not res!969225) (not e!810503))))

(declare-datatypes ((List!33790 0))(
  ( (Nil!33787) (Cons!33786 (h!35121 (_ BitVec 64)) (t!48491 List!33790)) )
))
(declare-fun arrayNoDuplicates!0 (array!97633 (_ BitVec 32) List!33790) Bool)

(assert (=> b!1436160 (= res!969225 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33787))))

(declare-fun b!1436161 () Bool)

(declare-fun res!969222 () Bool)

(assert (=> b!1436161 (=> (not res!969222) (not e!810503))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1436161 (= res!969222 (validKeyInArray!0 (select (arr!47109 a!2862) i!1006)))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun b!1436162 () Bool)

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1436162 (= e!810503 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47660 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47660 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47660 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47109 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge mask!2687 #b00000000000000000000000000000000) (bvsgt mask!2687 #b00111111111111111111111111111111)))))

(declare-fun b!1436163 () Bool)

(declare-fun res!969221 () Bool)

(assert (=> b!1436163 (=> (not res!969221) (not e!810503))))

(assert (=> b!1436163 (= res!969221 (and (= (size!47660 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47660 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47660 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1436164 () Bool)

(declare-fun res!969224 () Bool)

(assert (=> b!1436164 (=> (not res!969224) (not e!810503))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97633 (_ BitVec 32)) Bool)

(assert (=> b!1436164 (= res!969224 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(assert (= (and start!124052 res!969220) b!1436163))

(assert (= (and b!1436163 res!969221) b!1436161))

(assert (= (and b!1436161 res!969222) b!1436159))

(assert (= (and b!1436159 res!969223) b!1436164))

(assert (= (and b!1436164 res!969224) b!1436160))

(assert (= (and b!1436160 res!969225) b!1436162))

(declare-fun m!1325565 () Bool)

(assert (=> b!1436161 m!1325565))

(assert (=> b!1436161 m!1325565))

(declare-fun m!1325567 () Bool)

(assert (=> b!1436161 m!1325567))

(declare-fun m!1325569 () Bool)

(assert (=> start!124052 m!1325569))

(declare-fun m!1325571 () Bool)

(assert (=> start!124052 m!1325571))

(declare-fun m!1325573 () Bool)

(assert (=> b!1436159 m!1325573))

(assert (=> b!1436159 m!1325573))

(declare-fun m!1325575 () Bool)

(assert (=> b!1436159 m!1325575))

(declare-fun m!1325577 () Bool)

(assert (=> b!1436160 m!1325577))

(declare-fun m!1325579 () Bool)

(assert (=> b!1436162 m!1325579))

(declare-fun m!1325581 () Bool)

(assert (=> b!1436162 m!1325581))

(declare-fun m!1325583 () Bool)

(assert (=> b!1436164 m!1325583))

(push 1)

(assert (not b!1436161))

(assert (not start!124052))

(assert (not b!1436160))

(assert (not b!1436159))

(assert (not b!1436164))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

