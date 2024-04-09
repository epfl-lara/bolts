; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124094 () Bool)

(assert start!124094)

(declare-fun b!1436365 () Bool)

(declare-fun res!969391 () Bool)

(declare-fun e!810602 () Bool)

(assert (=> b!1436365 (=> (not res!969391) (not e!810602))))

(declare-datatypes ((array!97648 0))(
  ( (array!97649 (arr!47115 (Array (_ BitVec 32) (_ BitVec 64))) (size!47666 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97648)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1436365 (= res!969391 (validKeyInArray!0 (select (arr!47115 a!2862) j!93)))))

(declare-fun b!1436366 () Bool)

(declare-fun res!969392 () Bool)

(assert (=> b!1436366 (=> (not res!969392) (not e!810602))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97648 (_ BitVec 32)) Bool)

(assert (=> b!1436366 (= res!969392 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1436367 () Bool)

(declare-fun res!969394 () Bool)

(assert (=> b!1436367 (=> (not res!969394) (not e!810602))))

(declare-datatypes ((List!33796 0))(
  ( (Nil!33793) (Cons!33792 (h!35127 (_ BitVec 64)) (t!48497 List!33796)) )
))
(declare-fun arrayNoDuplicates!0 (array!97648 (_ BitVec 32) List!33796) Bool)

(assert (=> b!1436367 (= res!969394 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33793))))

(declare-fun b!1436368 () Bool)

(declare-fun res!969393 () Bool)

(assert (=> b!1436368 (=> (not res!969393) (not e!810602))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1436368 (= res!969393 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47666 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47666 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47666 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47115 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!969395 () Bool)

(assert (=> start!124094 (=> (not res!969395) (not e!810602))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124094 (= res!969395 (validMask!0 mask!2687))))

(assert (=> start!124094 e!810602))

(assert (=> start!124094 true))

(declare-fun array_inv!36060 (array!97648) Bool)

(assert (=> start!124094 (array_inv!36060 a!2862)))

(declare-fun b!1436369 () Bool)

(assert (=> b!1436369 (= e!810602 (bvslt mask!2687 #b00000000000000000000000000000000))))

(declare-fun lt!632068 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1436369 (= lt!632068 (toIndex!0 (select (arr!47115 a!2862) j!93) mask!2687))))

(declare-fun b!1436370 () Bool)

(declare-fun res!969396 () Bool)

(assert (=> b!1436370 (=> (not res!969396) (not e!810602))))

(assert (=> b!1436370 (= res!969396 (and (= (size!47666 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47666 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47666 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1436371 () Bool)

(declare-fun res!969390 () Bool)

(assert (=> b!1436371 (=> (not res!969390) (not e!810602))))

(assert (=> b!1436371 (= res!969390 (validKeyInArray!0 (select (arr!47115 a!2862) i!1006)))))

(assert (= (and start!124094 res!969395) b!1436370))

(assert (= (and b!1436370 res!969396) b!1436371))

(assert (= (and b!1436371 res!969390) b!1436365))

(assert (= (and b!1436365 res!969391) b!1436366))

(assert (= (and b!1436366 res!969392) b!1436367))

(assert (= (and b!1436367 res!969394) b!1436368))

(assert (= (and b!1436368 res!969393) b!1436369))

(declare-fun m!1325735 () Bool)

(assert (=> b!1436369 m!1325735))

(assert (=> b!1436369 m!1325735))

(declare-fun m!1325737 () Bool)

(assert (=> b!1436369 m!1325737))

(declare-fun m!1325739 () Bool)

(assert (=> b!1436368 m!1325739))

(declare-fun m!1325741 () Bool)

(assert (=> b!1436368 m!1325741))

(declare-fun m!1325743 () Bool)

(assert (=> b!1436371 m!1325743))

(assert (=> b!1436371 m!1325743))

(declare-fun m!1325745 () Bool)

(assert (=> b!1436371 m!1325745))

(assert (=> b!1436365 m!1325735))

(assert (=> b!1436365 m!1325735))

(declare-fun m!1325747 () Bool)

(assert (=> b!1436365 m!1325747))

(declare-fun m!1325749 () Bool)

(assert (=> b!1436366 m!1325749))

(declare-fun m!1325751 () Bool)

(assert (=> start!124094 m!1325751))

(declare-fun m!1325753 () Bool)

(assert (=> start!124094 m!1325753))

(declare-fun m!1325755 () Bool)

(assert (=> b!1436367 m!1325755))

(push 1)

(assert (not start!124094))

(assert (not b!1436369))

(assert (not b!1436366))

(assert (not b!1436367))

(assert (not b!1436371))

(assert (not b!1436365))

(check-sat)

(pop 1)

(push 1)

(check-sat)

