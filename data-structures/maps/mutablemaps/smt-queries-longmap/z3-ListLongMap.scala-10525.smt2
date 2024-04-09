; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124164 () Bool)

(assert start!124164)

(declare-fun b!1436808 () Bool)

(declare-fun res!969803 () Bool)

(declare-fun e!810766 () Bool)

(assert (=> b!1436808 (=> (not res!969803) (not e!810766))))

(declare-datatypes ((array!97685 0))(
  ( (array!97686 (arr!47132 (Array (_ BitVec 32) (_ BitVec 64))) (size!47683 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97685)

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1436808 (= res!969803 (validKeyInArray!0 (select (arr!47132 a!2862) i!1006)))))

(declare-fun b!1436809 () Bool)

(declare-fun mask!2687 () (_ BitVec 32))

(assert (=> b!1436809 (= e!810766 (bvslt mask!2687 #b00000000000000000000000000000000))))

(declare-fun b!1436810 () Bool)

(declare-fun res!969800 () Bool)

(assert (=> b!1436810 (=> (not res!969800) (not e!810766))))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1436810 (= res!969800 (and (= (size!47683 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47683 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47683 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1436811 () Bool)

(declare-fun res!969804 () Bool)

(assert (=> b!1436811 (=> (not res!969804) (not e!810766))))

(assert (=> b!1436811 (= res!969804 (validKeyInArray!0 (select (arr!47132 a!2862) j!93)))))

(declare-fun res!969807 () Bool)

(assert (=> start!124164 (=> (not res!969807) (not e!810766))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124164 (= res!969807 (validMask!0 mask!2687))))

(assert (=> start!124164 e!810766))

(assert (=> start!124164 true))

(declare-fun array_inv!36077 (array!97685) Bool)

(assert (=> start!124164 (array_inv!36077 a!2862)))

(declare-fun b!1436812 () Bool)

(declare-fun res!969805 () Bool)

(assert (=> b!1436812 (=> (not res!969805) (not e!810766))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11407 0))(
  ( (MissingZero!11407 (index!48019 (_ BitVec 32))) (Found!11407 (index!48020 (_ BitVec 32))) (Intermediate!11407 (undefined!12219 Bool) (index!48021 (_ BitVec 32)) (x!129755 (_ BitVec 32))) (Undefined!11407) (MissingVacant!11407 (index!48022 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97685 (_ BitVec 32)) SeekEntryResult!11407)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1436812 (= res!969805 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47132 a!2862) j!93) mask!2687) (select (arr!47132 a!2862) j!93) a!2862 mask!2687) (Intermediate!11407 false intermediateBeforeIndex!19 intermediateBeforeX!19)))))

(declare-fun b!1436813 () Bool)

(declare-fun res!969802 () Bool)

(assert (=> b!1436813 (=> (not res!969802) (not e!810766))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97685 (_ BitVec 32)) Bool)

(assert (=> b!1436813 (= res!969802 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1436814 () Bool)

(declare-fun res!969801 () Bool)

(assert (=> b!1436814 (=> (not res!969801) (not e!810766))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1436814 (= res!969801 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47683 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47683 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47683 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47132 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1436815 () Bool)

(declare-fun res!969806 () Bool)

(assert (=> b!1436815 (=> (not res!969806) (not e!810766))))

(declare-datatypes ((List!33813 0))(
  ( (Nil!33810) (Cons!33809 (h!35147 (_ BitVec 64)) (t!48514 List!33813)) )
))
(declare-fun arrayNoDuplicates!0 (array!97685 (_ BitVec 32) List!33813) Bool)

(assert (=> b!1436815 (= res!969806 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33810))))

(assert (= (and start!124164 res!969807) b!1436810))

(assert (= (and b!1436810 res!969800) b!1436808))

(assert (= (and b!1436808 res!969803) b!1436811))

(assert (= (and b!1436811 res!969804) b!1436813))

(assert (= (and b!1436813 res!969802) b!1436815))

(assert (= (and b!1436815 res!969806) b!1436814))

(assert (= (and b!1436814 res!969801) b!1436812))

(assert (= (and b!1436812 res!969805) b!1436809))

(declare-fun m!1326165 () Bool)

(assert (=> b!1436813 m!1326165))

(declare-fun m!1326167 () Bool)

(assert (=> b!1436811 m!1326167))

(assert (=> b!1436811 m!1326167))

(declare-fun m!1326169 () Bool)

(assert (=> b!1436811 m!1326169))

(declare-fun m!1326171 () Bool)

(assert (=> b!1436815 m!1326171))

(assert (=> b!1436812 m!1326167))

(assert (=> b!1436812 m!1326167))

(declare-fun m!1326173 () Bool)

(assert (=> b!1436812 m!1326173))

(assert (=> b!1436812 m!1326173))

(assert (=> b!1436812 m!1326167))

(declare-fun m!1326175 () Bool)

(assert (=> b!1436812 m!1326175))

(declare-fun m!1326177 () Bool)

(assert (=> b!1436808 m!1326177))

(assert (=> b!1436808 m!1326177))

(declare-fun m!1326179 () Bool)

(assert (=> b!1436808 m!1326179))

(declare-fun m!1326181 () Bool)

(assert (=> start!124164 m!1326181))

(declare-fun m!1326183 () Bool)

(assert (=> start!124164 m!1326183))

(declare-fun m!1326185 () Bool)

(assert (=> b!1436814 m!1326185))

(declare-fun m!1326187 () Bool)

(assert (=> b!1436814 m!1326187))

(check-sat (not b!1436808) (not b!1436815) (not b!1436813) (not b!1436812) (not start!124164) (not b!1436811))
(check-sat)
