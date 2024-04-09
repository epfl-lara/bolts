; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124144 () Bool)

(assert start!124144)

(declare-fun b!1436593 () Bool)

(declare-fun res!969589 () Bool)

(declare-fun e!810707 () Bool)

(assert (=> b!1436593 (=> (not res!969589) (not e!810707))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!97665 0))(
  ( (array!97666 (arr!47122 (Array (_ BitVec 32) (_ BitVec 64))) (size!47673 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97665)

(assert (=> b!1436593 (= res!969589 (and (= (size!47673 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47673 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47673 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1436594 () Bool)

(declare-fun res!969588 () Bool)

(assert (=> b!1436594 (=> (not res!969588) (not e!810707))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1436594 (= res!969588 (validKeyInArray!0 (select (arr!47122 a!2862) j!93)))))

(declare-fun b!1436595 () Bool)

(assert (=> b!1436595 (= e!810707 false)))

(declare-fun lt!632134 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1436595 (= lt!632134 (toIndex!0 (select (arr!47122 a!2862) j!93) mask!2687))))

(declare-fun b!1436596 () Bool)

(declare-fun res!969587 () Bool)

(assert (=> b!1436596 (=> (not res!969587) (not e!810707))))

(assert (=> b!1436596 (= res!969587 (validKeyInArray!0 (select (arr!47122 a!2862) i!1006)))))

(declare-fun b!1436598 () Bool)

(declare-fun res!969585 () Bool)

(assert (=> b!1436598 (=> (not res!969585) (not e!810707))))

(declare-datatypes ((List!33803 0))(
  ( (Nil!33800) (Cons!33799 (h!35137 (_ BitVec 64)) (t!48504 List!33803)) )
))
(declare-fun arrayNoDuplicates!0 (array!97665 (_ BitVec 32) List!33803) Bool)

(assert (=> b!1436598 (= res!969585 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33800))))

(declare-fun b!1436599 () Bool)

(declare-fun res!969591 () Bool)

(assert (=> b!1436599 (=> (not res!969591) (not e!810707))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1436599 (= res!969591 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47673 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47673 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47673 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47122 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1436597 () Bool)

(declare-fun res!969590 () Bool)

(assert (=> b!1436597 (=> (not res!969590) (not e!810707))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97665 (_ BitVec 32)) Bool)

(assert (=> b!1436597 (= res!969590 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun res!969586 () Bool)

(assert (=> start!124144 (=> (not res!969586) (not e!810707))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124144 (= res!969586 (validMask!0 mask!2687))))

(assert (=> start!124144 e!810707))

(assert (=> start!124144 true))

(declare-fun array_inv!36067 (array!97665) Bool)

(assert (=> start!124144 (array_inv!36067 a!2862)))

(assert (= (and start!124144 res!969586) b!1436593))

(assert (= (and b!1436593 res!969589) b!1436596))

(assert (= (and b!1436596 res!969587) b!1436594))

(assert (= (and b!1436594 res!969588) b!1436597))

(assert (= (and b!1436597 res!969590) b!1436598))

(assert (= (and b!1436598 res!969585) b!1436599))

(assert (= (and b!1436599 res!969591) b!1436595))

(declare-fun m!1325937 () Bool)

(assert (=> b!1436598 m!1325937))

(declare-fun m!1325939 () Bool)

(assert (=> start!124144 m!1325939))

(declare-fun m!1325941 () Bool)

(assert (=> start!124144 m!1325941))

(declare-fun m!1325943 () Bool)

(assert (=> b!1436594 m!1325943))

(assert (=> b!1436594 m!1325943))

(declare-fun m!1325945 () Bool)

(assert (=> b!1436594 m!1325945))

(assert (=> b!1436595 m!1325943))

(assert (=> b!1436595 m!1325943))

(declare-fun m!1325947 () Bool)

(assert (=> b!1436595 m!1325947))

(declare-fun m!1325949 () Bool)

(assert (=> b!1436596 m!1325949))

(assert (=> b!1436596 m!1325949))

(declare-fun m!1325951 () Bool)

(assert (=> b!1436596 m!1325951))

(declare-fun m!1325953 () Bool)

(assert (=> b!1436597 m!1325953))

(declare-fun m!1325955 () Bool)

(assert (=> b!1436599 m!1325955))

(declare-fun m!1325957 () Bool)

(assert (=> b!1436599 m!1325957))

(push 1)

(assert (not b!1436597))

(assert (not b!1436594))

(assert (not b!1436598))

(assert (not b!1436595))

(assert (not start!124144))

(assert (not b!1436596))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

