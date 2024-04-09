; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124148 () Bool)

(assert start!124148)

(declare-fun b!1436635 () Bool)

(declare-fun res!969627 () Bool)

(declare-fun e!810719 () Bool)

(assert (=> b!1436635 (=> (not res!969627) (not e!810719))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!97669 0))(
  ( (array!97670 (arr!47124 (Array (_ BitVec 32) (_ BitVec 64))) (size!47675 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97669)

(assert (=> b!1436635 (= res!969627 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47675 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47675 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47675 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47124 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1436636 () Bool)

(declare-fun res!969633 () Bool)

(assert (=> b!1436636 (=> (not res!969633) (not e!810719))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1436636 (= res!969633 (validKeyInArray!0 (select (arr!47124 a!2862) i!1006)))))

(declare-fun b!1436637 () Bool)

(declare-fun res!969632 () Bool)

(assert (=> b!1436637 (=> (not res!969632) (not e!810719))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(assert (=> b!1436637 (= res!969632 (and (= (size!47675 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47675 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47675 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1436638 () Bool)

(declare-fun res!969630 () Bool)

(assert (=> b!1436638 (=> (not res!969630) (not e!810719))))

(declare-datatypes ((List!33805 0))(
  ( (Nil!33802) (Cons!33801 (h!35139 (_ BitVec 64)) (t!48506 List!33805)) )
))
(declare-fun arrayNoDuplicates!0 (array!97669 (_ BitVec 32) List!33805) Bool)

(assert (=> b!1436638 (= res!969630 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33802))))

(declare-fun res!969631 () Bool)

(assert (=> start!124148 (=> (not res!969631) (not e!810719))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124148 (= res!969631 (validMask!0 mask!2687))))

(assert (=> start!124148 e!810719))

(assert (=> start!124148 true))

(declare-fun array_inv!36069 (array!97669) Bool)

(assert (=> start!124148 (array_inv!36069 a!2862)))

(declare-fun b!1436639 () Bool)

(assert (=> b!1436639 (= e!810719 false)))

(declare-fun lt!632140 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1436639 (= lt!632140 (toIndex!0 (select (arr!47124 a!2862) j!93) mask!2687))))

(declare-fun b!1436640 () Bool)

(declare-fun res!969628 () Bool)

(assert (=> b!1436640 (=> (not res!969628) (not e!810719))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97669 (_ BitVec 32)) Bool)

(assert (=> b!1436640 (= res!969628 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1436641 () Bool)

(declare-fun res!969629 () Bool)

(assert (=> b!1436641 (=> (not res!969629) (not e!810719))))

(assert (=> b!1436641 (= res!969629 (validKeyInArray!0 (select (arr!47124 a!2862) j!93)))))

(assert (= (and start!124148 res!969631) b!1436637))

(assert (= (and b!1436637 res!969632) b!1436636))

(assert (= (and b!1436636 res!969633) b!1436641))

(assert (= (and b!1436641 res!969629) b!1436640))

(assert (= (and b!1436640 res!969628) b!1436638))

(assert (= (and b!1436638 res!969630) b!1436635))

(assert (= (and b!1436635 res!969627) b!1436639))

(declare-fun m!1325981 () Bool)

(assert (=> b!1436636 m!1325981))

(assert (=> b!1436636 m!1325981))

(declare-fun m!1325983 () Bool)

(assert (=> b!1436636 m!1325983))

(declare-fun m!1325985 () Bool)

(assert (=> b!1436640 m!1325985))

(declare-fun m!1325987 () Bool)

(assert (=> b!1436641 m!1325987))

(assert (=> b!1436641 m!1325987))

(declare-fun m!1325989 () Bool)

(assert (=> b!1436641 m!1325989))

(assert (=> b!1436639 m!1325987))

(assert (=> b!1436639 m!1325987))

(declare-fun m!1325991 () Bool)

(assert (=> b!1436639 m!1325991))

(declare-fun m!1325993 () Bool)

(assert (=> b!1436638 m!1325993))

(declare-fun m!1325995 () Bool)

(assert (=> b!1436635 m!1325995))

(declare-fun m!1325997 () Bool)

(assert (=> b!1436635 m!1325997))

(declare-fun m!1325999 () Bool)

(assert (=> start!124148 m!1325999))

(declare-fun m!1326001 () Bool)

(assert (=> start!124148 m!1326001))

(push 1)

(assert (not b!1436640))

(assert (not b!1436641))

(assert (not b!1436639))

(assert (not b!1436636))

(assert (not b!1436638))

(assert (not start!124148))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

