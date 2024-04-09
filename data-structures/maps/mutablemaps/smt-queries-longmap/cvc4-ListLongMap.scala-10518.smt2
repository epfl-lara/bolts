; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124088 () Bool)

(assert start!124088)

(declare-fun b!1436302 () Bool)

(declare-fun res!969329 () Bool)

(declare-fun e!810584 () Bool)

(assert (=> b!1436302 (=> (not res!969329) (not e!810584))))

(declare-datatypes ((array!97642 0))(
  ( (array!97643 (arr!47112 (Array (_ BitVec 32) (_ BitVec 64))) (size!47663 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97642)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97642 (_ BitVec 32)) Bool)

(assert (=> b!1436302 (= res!969329 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1436303 () Bool)

(declare-fun res!969332 () Bool)

(assert (=> b!1436303 (=> (not res!969332) (not e!810584))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1436303 (= res!969332 (and (= (size!47663 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47663 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47663 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1436304 () Bool)

(assert (=> b!1436304 (= e!810584 false)))

(declare-fun lt!632059 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1436304 (= lt!632059 (toIndex!0 (select (arr!47112 a!2862) j!93) mask!2687))))

(declare-fun b!1436305 () Bool)

(declare-fun res!969333 () Bool)

(assert (=> b!1436305 (=> (not res!969333) (not e!810584))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1436305 (= res!969333 (validKeyInArray!0 (select (arr!47112 a!2862) i!1006)))))

(declare-fun b!1436306 () Bool)

(declare-fun res!969327 () Bool)

(assert (=> b!1436306 (=> (not res!969327) (not e!810584))))

(declare-datatypes ((List!33793 0))(
  ( (Nil!33790) (Cons!33789 (h!35124 (_ BitVec 64)) (t!48494 List!33793)) )
))
(declare-fun arrayNoDuplicates!0 (array!97642 (_ BitVec 32) List!33793) Bool)

(assert (=> b!1436306 (= res!969327 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33790))))

(declare-fun b!1436307 () Bool)

(declare-fun res!969331 () Bool)

(assert (=> b!1436307 (=> (not res!969331) (not e!810584))))

(assert (=> b!1436307 (= res!969331 (validKeyInArray!0 (select (arr!47112 a!2862) j!93)))))

(declare-fun b!1436308 () Bool)

(declare-fun res!969328 () Bool)

(assert (=> b!1436308 (=> (not res!969328) (not e!810584))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1436308 (= res!969328 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47663 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47663 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47663 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47112 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!969330 () Bool)

(assert (=> start!124088 (=> (not res!969330) (not e!810584))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124088 (= res!969330 (validMask!0 mask!2687))))

(assert (=> start!124088 e!810584))

(assert (=> start!124088 true))

(declare-fun array_inv!36057 (array!97642) Bool)

(assert (=> start!124088 (array_inv!36057 a!2862)))

(assert (= (and start!124088 res!969330) b!1436303))

(assert (= (and b!1436303 res!969332) b!1436305))

(assert (= (and b!1436305 res!969333) b!1436307))

(assert (= (and b!1436307 res!969331) b!1436302))

(assert (= (and b!1436302 res!969329) b!1436306))

(assert (= (and b!1436306 res!969327) b!1436308))

(assert (= (and b!1436308 res!969328) b!1436304))

(declare-fun m!1325669 () Bool)

(assert (=> b!1436307 m!1325669))

(assert (=> b!1436307 m!1325669))

(declare-fun m!1325671 () Bool)

(assert (=> b!1436307 m!1325671))

(declare-fun m!1325673 () Bool)

(assert (=> start!124088 m!1325673))

(declare-fun m!1325675 () Bool)

(assert (=> start!124088 m!1325675))

(declare-fun m!1325677 () Bool)

(assert (=> b!1436306 m!1325677))

(declare-fun m!1325679 () Bool)

(assert (=> b!1436302 m!1325679))

(assert (=> b!1436304 m!1325669))

(assert (=> b!1436304 m!1325669))

(declare-fun m!1325681 () Bool)

(assert (=> b!1436304 m!1325681))

(declare-fun m!1325683 () Bool)

(assert (=> b!1436305 m!1325683))

(assert (=> b!1436305 m!1325683))

(declare-fun m!1325685 () Bool)

(assert (=> b!1436305 m!1325685))

(declare-fun m!1325687 () Bool)

(assert (=> b!1436308 m!1325687))

(declare-fun m!1325689 () Bool)

(assert (=> b!1436308 m!1325689))

(push 1)

(assert (not b!1436305))

(assert (not b!1436302))

(assert (not b!1436304))

(assert (not b!1436306))

(assert (not b!1436307))

(assert (not start!124088))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

