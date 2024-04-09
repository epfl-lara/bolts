; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124090 () Bool)

(assert start!124090)

(declare-fun res!969353 () Bool)

(declare-fun e!810589 () Bool)

(assert (=> start!124090 (=> (not res!969353) (not e!810589))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124090 (= res!969353 (validMask!0 mask!2687))))

(assert (=> start!124090 e!810589))

(assert (=> start!124090 true))

(declare-datatypes ((array!97644 0))(
  ( (array!97645 (arr!47113 (Array (_ BitVec 32) (_ BitVec 64))) (size!47664 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97644)

(declare-fun array_inv!36058 (array!97644) Bool)

(assert (=> start!124090 (array_inv!36058 a!2862)))

(declare-fun b!1436323 () Bool)

(declare-fun res!969349 () Bool)

(assert (=> b!1436323 (=> (not res!969349) (not e!810589))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1436323 (= res!969349 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47664 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47664 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47664 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47113 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1436324 () Bool)

(assert (=> b!1436324 (= e!810589 (bvslt mask!2687 #b00000000000000000000000000000000))))

(declare-fun lt!632062 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1436324 (= lt!632062 (toIndex!0 (select (arr!47113 a!2862) j!93) mask!2687))))

(declare-fun b!1436325 () Bool)

(declare-fun res!969350 () Bool)

(assert (=> b!1436325 (=> (not res!969350) (not e!810589))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1436325 (= res!969350 (validKeyInArray!0 (select (arr!47113 a!2862) i!1006)))))

(declare-fun b!1436326 () Bool)

(declare-fun res!969354 () Bool)

(assert (=> b!1436326 (=> (not res!969354) (not e!810589))))

(assert (=> b!1436326 (= res!969354 (validKeyInArray!0 (select (arr!47113 a!2862) j!93)))))

(declare-fun b!1436327 () Bool)

(declare-fun res!969352 () Bool)

(assert (=> b!1436327 (=> (not res!969352) (not e!810589))))

(declare-datatypes ((List!33794 0))(
  ( (Nil!33791) (Cons!33790 (h!35125 (_ BitVec 64)) (t!48495 List!33794)) )
))
(declare-fun arrayNoDuplicates!0 (array!97644 (_ BitVec 32) List!33794) Bool)

(assert (=> b!1436327 (= res!969352 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33791))))

(declare-fun b!1436328 () Bool)

(declare-fun res!969348 () Bool)

(assert (=> b!1436328 (=> (not res!969348) (not e!810589))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97644 (_ BitVec 32)) Bool)

(assert (=> b!1436328 (= res!969348 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1436329 () Bool)

(declare-fun res!969351 () Bool)

(assert (=> b!1436329 (=> (not res!969351) (not e!810589))))

(assert (=> b!1436329 (= res!969351 (and (= (size!47664 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47664 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47664 a!2862)) (not (= i!1006 j!93))))))

(assert (= (and start!124090 res!969353) b!1436329))

(assert (= (and b!1436329 res!969351) b!1436325))

(assert (= (and b!1436325 res!969350) b!1436326))

(assert (= (and b!1436326 res!969354) b!1436328))

(assert (= (and b!1436328 res!969348) b!1436327))

(assert (= (and b!1436327 res!969352) b!1436323))

(assert (= (and b!1436323 res!969349) b!1436324))

(declare-fun m!1325691 () Bool)

(assert (=> start!124090 m!1325691))

(declare-fun m!1325693 () Bool)

(assert (=> start!124090 m!1325693))

(declare-fun m!1325695 () Bool)

(assert (=> b!1436326 m!1325695))

(assert (=> b!1436326 m!1325695))

(declare-fun m!1325697 () Bool)

(assert (=> b!1436326 m!1325697))

(declare-fun m!1325699 () Bool)

(assert (=> b!1436325 m!1325699))

(assert (=> b!1436325 m!1325699))

(declare-fun m!1325701 () Bool)

(assert (=> b!1436325 m!1325701))

(declare-fun m!1325703 () Bool)

(assert (=> b!1436323 m!1325703))

(declare-fun m!1325705 () Bool)

(assert (=> b!1436323 m!1325705))

(declare-fun m!1325707 () Bool)

(assert (=> b!1436327 m!1325707))

(assert (=> b!1436324 m!1325695))

(assert (=> b!1436324 m!1325695))

(declare-fun m!1325709 () Bool)

(assert (=> b!1436324 m!1325709))

(declare-fun m!1325711 () Bool)

(assert (=> b!1436328 m!1325711))

(push 1)

(assert (not b!1436326))

(assert (not b!1436328))

(assert (not b!1436327))

(assert (not b!1436325))

(assert (not b!1436324))

(assert (not start!124090))

(check-sat)

(pop 1)

(push 1)

(check-sat)

