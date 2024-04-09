; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124150 () Bool)

(assert start!124150)

(declare-fun b!1436656 () Bool)

(declare-fun res!969650 () Bool)

(declare-fun e!810725 () Bool)

(assert (=> b!1436656 (=> (not res!969650) (not e!810725))))

(declare-datatypes ((array!97671 0))(
  ( (array!97672 (arr!47125 (Array (_ BitVec 32) (_ BitVec 64))) (size!47676 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97671)

(declare-datatypes ((List!33806 0))(
  ( (Nil!33803) (Cons!33802 (h!35140 (_ BitVec 64)) (t!48507 List!33806)) )
))
(declare-fun arrayNoDuplicates!0 (array!97671 (_ BitVec 32) List!33806) Bool)

(assert (=> b!1436656 (= res!969650 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33803))))

(declare-fun b!1436658 () Bool)

(declare-fun res!969651 () Bool)

(assert (=> b!1436658 (=> (not res!969651) (not e!810725))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1436658 (= res!969651 (and (= (size!47676 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47676 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47676 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1436659 () Bool)

(declare-fun res!969649 () Bool)

(assert (=> b!1436659 (=> (not res!969649) (not e!810725))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1436659 (= res!969649 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47676 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47676 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47676 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47125 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1436660 () Bool)

(declare-fun res!969652 () Bool)

(assert (=> b!1436660 (=> (not res!969652) (not e!810725))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1436660 (= res!969652 (validKeyInArray!0 (select (arr!47125 a!2862) i!1006)))))

(declare-fun b!1436657 () Bool)

(assert (=> b!1436657 (= e!810725 false)))

(declare-fun lt!632143 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1436657 (= lt!632143 (toIndex!0 (select (arr!47125 a!2862) j!93) mask!2687))))

(declare-fun res!969653 () Bool)

(assert (=> start!124150 (=> (not res!969653) (not e!810725))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124150 (= res!969653 (validMask!0 mask!2687))))

(assert (=> start!124150 e!810725))

(assert (=> start!124150 true))

(declare-fun array_inv!36070 (array!97671) Bool)

(assert (=> start!124150 (array_inv!36070 a!2862)))

(declare-fun b!1436661 () Bool)

(declare-fun res!969648 () Bool)

(assert (=> b!1436661 (=> (not res!969648) (not e!810725))))

(assert (=> b!1436661 (= res!969648 (validKeyInArray!0 (select (arr!47125 a!2862) j!93)))))

(declare-fun b!1436662 () Bool)

(declare-fun res!969654 () Bool)

(assert (=> b!1436662 (=> (not res!969654) (not e!810725))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97671 (_ BitVec 32)) Bool)

(assert (=> b!1436662 (= res!969654 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(assert (= (and start!124150 res!969653) b!1436658))

(assert (= (and b!1436658 res!969651) b!1436660))

(assert (= (and b!1436660 res!969652) b!1436661))

(assert (= (and b!1436661 res!969648) b!1436662))

(assert (= (and b!1436662 res!969654) b!1436656))

(assert (= (and b!1436656 res!969650) b!1436659))

(assert (= (and b!1436659 res!969649) b!1436657))

(declare-fun m!1326003 () Bool)

(assert (=> b!1436662 m!1326003))

(declare-fun m!1326005 () Bool)

(assert (=> start!124150 m!1326005))

(declare-fun m!1326007 () Bool)

(assert (=> start!124150 m!1326007))

(declare-fun m!1326009 () Bool)

(assert (=> b!1436661 m!1326009))

(assert (=> b!1436661 m!1326009))

(declare-fun m!1326011 () Bool)

(assert (=> b!1436661 m!1326011))

(assert (=> b!1436657 m!1326009))

(assert (=> b!1436657 m!1326009))

(declare-fun m!1326013 () Bool)

(assert (=> b!1436657 m!1326013))

(declare-fun m!1326015 () Bool)

(assert (=> b!1436659 m!1326015))

(declare-fun m!1326017 () Bool)

(assert (=> b!1436659 m!1326017))

(declare-fun m!1326019 () Bool)

(assert (=> b!1436660 m!1326019))

(assert (=> b!1436660 m!1326019))

(declare-fun m!1326021 () Bool)

(assert (=> b!1436660 m!1326021))

(declare-fun m!1326023 () Bool)

(assert (=> b!1436656 m!1326023))

(push 1)

(assert (not b!1436657))

(assert (not start!124150))

(assert (not b!1436662))

(assert (not b!1436660))

(assert (not b!1436661))

(assert (not b!1436656))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

