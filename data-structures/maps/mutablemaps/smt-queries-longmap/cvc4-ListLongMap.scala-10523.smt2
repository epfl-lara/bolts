; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124154 () Bool)

(assert start!124154)

(declare-fun b!1436698 () Bool)

(declare-fun res!969691 () Bool)

(declare-fun e!810736 () Bool)

(assert (=> b!1436698 (=> (not res!969691) (not e!810736))))

(declare-datatypes ((array!97675 0))(
  ( (array!97676 (arr!47127 (Array (_ BitVec 32) (_ BitVec 64))) (size!47678 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97675)

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1436698 (= res!969691 (validKeyInArray!0 (select (arr!47127 a!2862) i!1006)))))

(declare-fun res!969694 () Bool)

(assert (=> start!124154 (=> (not res!969694) (not e!810736))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124154 (= res!969694 (validMask!0 mask!2687))))

(assert (=> start!124154 e!810736))

(assert (=> start!124154 true))

(declare-fun array_inv!36072 (array!97675) Bool)

(assert (=> start!124154 (array_inv!36072 a!2862)))

(declare-fun b!1436699 () Bool)

(declare-fun res!969690 () Bool)

(assert (=> b!1436699 (=> (not res!969690) (not e!810736))))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1436699 (= res!969690 (and (= (size!47678 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47678 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47678 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1436700 () Bool)

(declare-fun res!969692 () Bool)

(assert (=> b!1436700 (=> (not res!969692) (not e!810736))))

(declare-datatypes ((List!33808 0))(
  ( (Nil!33805) (Cons!33804 (h!35142 (_ BitVec 64)) (t!48509 List!33808)) )
))
(declare-fun arrayNoDuplicates!0 (array!97675 (_ BitVec 32) List!33808) Bool)

(assert (=> b!1436700 (= res!969692 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33805))))

(declare-fun b!1436701 () Bool)

(declare-fun res!969693 () Bool)

(assert (=> b!1436701 (=> (not res!969693) (not e!810736))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1436701 (= res!969693 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47678 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47678 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47678 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47127 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1436702 () Bool)

(declare-fun res!969696 () Bool)

(assert (=> b!1436702 (=> (not res!969696) (not e!810736))))

(assert (=> b!1436702 (= res!969696 (validKeyInArray!0 (select (arr!47127 a!2862) j!93)))))

(declare-fun b!1436703 () Bool)

(assert (=> b!1436703 (= e!810736 false)))

(declare-fun lt!632149 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1436703 (= lt!632149 (toIndex!0 (select (arr!47127 a!2862) j!93) mask!2687))))

(declare-fun b!1436704 () Bool)

(declare-fun res!969695 () Bool)

(assert (=> b!1436704 (=> (not res!969695) (not e!810736))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97675 (_ BitVec 32)) Bool)

(assert (=> b!1436704 (= res!969695 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(assert (= (and start!124154 res!969694) b!1436699))

(assert (= (and b!1436699 res!969690) b!1436698))

(assert (= (and b!1436698 res!969691) b!1436702))

(assert (= (and b!1436702 res!969696) b!1436704))

(assert (= (and b!1436704 res!969695) b!1436700))

(assert (= (and b!1436700 res!969692) b!1436701))

(assert (= (and b!1436701 res!969693) b!1436703))

(declare-fun m!1326047 () Bool)

(assert (=> b!1436700 m!1326047))

(declare-fun m!1326049 () Bool)

(assert (=> start!124154 m!1326049))

(declare-fun m!1326051 () Bool)

(assert (=> start!124154 m!1326051))

(declare-fun m!1326053 () Bool)

(assert (=> b!1436704 m!1326053))

(declare-fun m!1326055 () Bool)

(assert (=> b!1436703 m!1326055))

(assert (=> b!1436703 m!1326055))

(declare-fun m!1326057 () Bool)

(assert (=> b!1436703 m!1326057))

(assert (=> b!1436702 m!1326055))

(assert (=> b!1436702 m!1326055))

(declare-fun m!1326059 () Bool)

(assert (=> b!1436702 m!1326059))

(declare-fun m!1326061 () Bool)

(assert (=> b!1436698 m!1326061))

(assert (=> b!1436698 m!1326061))

(declare-fun m!1326063 () Bool)

(assert (=> b!1436698 m!1326063))

(declare-fun m!1326065 () Bool)

(assert (=> b!1436701 m!1326065))

(declare-fun m!1326067 () Bool)

(assert (=> b!1436701 m!1326067))

(push 1)

(assert (not b!1436700))

(assert (not b!1436698))

(assert (not b!1436702))

(assert (not start!124154))

(assert (not b!1436704))

(assert (not b!1436703))

(check-sat)

(pop 1)

