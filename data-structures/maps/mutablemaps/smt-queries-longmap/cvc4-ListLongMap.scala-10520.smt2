; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124100 () Bool)

(assert start!124100)

(declare-fun b!1436428 () Bool)

(declare-fun e!810619 () Bool)

(assert (=> b!1436428 (= e!810619 false)))

(declare-fun lt!632077 () (_ BitVec 32))

(declare-datatypes ((array!97654 0))(
  ( (array!97655 (arr!47118 (Array (_ BitVec 32) (_ BitVec 64))) (size!47669 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97654)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1436428 (= lt!632077 (toIndex!0 (select (arr!47118 a!2862) j!93) mask!2687))))

(declare-fun b!1436429 () Bool)

(declare-fun res!969453 () Bool)

(assert (=> b!1436429 (=> (not res!969453) (not e!810619))))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1436429 (= res!969453 (validKeyInArray!0 (select (arr!47118 a!2862) i!1006)))))

(declare-fun res!969457 () Bool)

(assert (=> start!124100 (=> (not res!969457) (not e!810619))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124100 (= res!969457 (validMask!0 mask!2687))))

(assert (=> start!124100 e!810619))

(assert (=> start!124100 true))

(declare-fun array_inv!36063 (array!97654) Bool)

(assert (=> start!124100 (array_inv!36063 a!2862)))

(declare-fun b!1436430 () Bool)

(declare-fun res!969454 () Bool)

(assert (=> b!1436430 (=> (not res!969454) (not e!810619))))

(assert (=> b!1436430 (= res!969454 (and (= (size!47669 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47669 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47669 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1436431 () Bool)

(declare-fun res!969455 () Bool)

(assert (=> b!1436431 (=> (not res!969455) (not e!810619))))

(declare-datatypes ((List!33799 0))(
  ( (Nil!33796) (Cons!33795 (h!35130 (_ BitVec 64)) (t!48500 List!33799)) )
))
(declare-fun arrayNoDuplicates!0 (array!97654 (_ BitVec 32) List!33799) Bool)

(assert (=> b!1436431 (= res!969455 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33796))))

(declare-fun b!1436432 () Bool)

(declare-fun res!969456 () Bool)

(assert (=> b!1436432 (=> (not res!969456) (not e!810619))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97654 (_ BitVec 32)) Bool)

(assert (=> b!1436432 (= res!969456 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1436433 () Bool)

(declare-fun res!969458 () Bool)

(assert (=> b!1436433 (=> (not res!969458) (not e!810619))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1436433 (= res!969458 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47669 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47669 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47669 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47118 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1436434 () Bool)

(declare-fun res!969459 () Bool)

(assert (=> b!1436434 (=> (not res!969459) (not e!810619))))

(assert (=> b!1436434 (= res!969459 (validKeyInArray!0 (select (arr!47118 a!2862) j!93)))))

(assert (= (and start!124100 res!969457) b!1436430))

(assert (= (and b!1436430 res!969454) b!1436429))

(assert (= (and b!1436429 res!969453) b!1436434))

(assert (= (and b!1436434 res!969459) b!1436432))

(assert (= (and b!1436432 res!969456) b!1436431))

(assert (= (and b!1436431 res!969455) b!1436433))

(assert (= (and b!1436433 res!969458) b!1436428))

(declare-fun m!1325801 () Bool)

(assert (=> b!1436431 m!1325801))

(declare-fun m!1325803 () Bool)

(assert (=> b!1436429 m!1325803))

(assert (=> b!1436429 m!1325803))

(declare-fun m!1325805 () Bool)

(assert (=> b!1436429 m!1325805))

(declare-fun m!1325807 () Bool)

(assert (=> b!1436434 m!1325807))

(assert (=> b!1436434 m!1325807))

(declare-fun m!1325809 () Bool)

(assert (=> b!1436434 m!1325809))

(declare-fun m!1325811 () Bool)

(assert (=> b!1436432 m!1325811))

(declare-fun m!1325813 () Bool)

(assert (=> start!124100 m!1325813))

(declare-fun m!1325815 () Bool)

(assert (=> start!124100 m!1325815))

(declare-fun m!1325817 () Bool)

(assert (=> b!1436433 m!1325817))

(declare-fun m!1325819 () Bool)

(assert (=> b!1436433 m!1325819))

(assert (=> b!1436428 m!1325807))

(assert (=> b!1436428 m!1325807))

(declare-fun m!1325821 () Bool)

(assert (=> b!1436428 m!1325821))

(push 1)

(assert (not b!1436431))

(assert (not b!1436434))

(assert (not b!1436428))

(assert (not start!124100))

(assert (not b!1436432))

(assert (not b!1436429))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

