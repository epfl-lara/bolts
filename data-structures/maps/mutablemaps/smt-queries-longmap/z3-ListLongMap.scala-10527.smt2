; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124176 () Bool)

(assert start!124176)

(declare-fun b!1436943 () Bool)

(declare-fun res!969937 () Bool)

(declare-fun e!810802 () Bool)

(assert (=> b!1436943 (=> (not res!969937) (not e!810802))))

(declare-datatypes ((array!97697 0))(
  ( (array!97698 (arr!47138 (Array (_ BitVec 32) (_ BitVec 64))) (size!47689 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97697)

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1436943 (= res!969937 (validKeyInArray!0 (select (arr!47138 a!2862) i!1006)))))

(declare-fun b!1436944 () Bool)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1436944 (= e!810802 (and (bvsge mask!2687 #b00000000000000000000000000000000) (bvsge index!646 (bvadd #b00000000000000000000000000000001 mask!2687))))))

(declare-fun b!1436945 () Bool)

(declare-fun res!969935 () Bool)

(assert (=> b!1436945 (=> (not res!969935) (not e!810802))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11413 0))(
  ( (MissingZero!11413 (index!48043 (_ BitVec 32))) (Found!11413 (index!48044 (_ BitVec 32))) (Intermediate!11413 (undefined!12225 Bool) (index!48045 (_ BitVec 32)) (x!129777 (_ BitVec 32))) (Undefined!11413) (MissingVacant!11413 (index!48046 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97697 (_ BitVec 32)) SeekEntryResult!11413)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1436945 (= res!969935 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47138 a!2862) j!93) mask!2687) (select (arr!47138 a!2862) j!93) a!2862 mask!2687) (Intermediate!11413 false intermediateBeforeIndex!19 intermediateBeforeX!19)))))

(declare-fun b!1436946 () Bool)

(declare-fun res!969942 () Bool)

(assert (=> b!1436946 (=> (not res!969942) (not e!810802))))

(assert (=> b!1436946 (= res!969942 (validKeyInArray!0 (select (arr!47138 a!2862) j!93)))))

(declare-fun res!969940 () Bool)

(assert (=> start!124176 (=> (not res!969940) (not e!810802))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124176 (= res!969940 (validMask!0 mask!2687))))

(assert (=> start!124176 e!810802))

(assert (=> start!124176 true))

(declare-fun array_inv!36083 (array!97697) Bool)

(assert (=> start!124176 (array_inv!36083 a!2862)))

(declare-fun b!1436947 () Bool)

(declare-fun res!969939 () Bool)

(assert (=> b!1436947 (=> (not res!969939) (not e!810802))))

(declare-datatypes ((List!33819 0))(
  ( (Nil!33816) (Cons!33815 (h!35153 (_ BitVec 64)) (t!48520 List!33819)) )
))
(declare-fun arrayNoDuplicates!0 (array!97697 (_ BitVec 32) List!33819) Bool)

(assert (=> b!1436947 (= res!969939 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33816))))

(declare-fun b!1436948 () Bool)

(declare-fun res!969941 () Bool)

(assert (=> b!1436948 (=> (not res!969941) (not e!810802))))

(assert (=> b!1436948 (= res!969941 (and (= (size!47689 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47689 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47689 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1436949 () Bool)

(declare-fun res!969938 () Bool)

(assert (=> b!1436949 (=> (not res!969938) (not e!810802))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1436949 (= res!969938 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47689 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47689 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47689 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47138 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1436950 () Bool)

(declare-fun res!969936 () Bool)

(assert (=> b!1436950 (=> (not res!969936) (not e!810802))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97697 (_ BitVec 32)) Bool)

(assert (=> b!1436950 (= res!969936 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(assert (= (and start!124176 res!969940) b!1436948))

(assert (= (and b!1436948 res!969941) b!1436943))

(assert (= (and b!1436943 res!969937) b!1436946))

(assert (= (and b!1436946 res!969942) b!1436950))

(assert (= (and b!1436950 res!969936) b!1436947))

(assert (= (and b!1436947 res!969939) b!1436949))

(assert (= (and b!1436949 res!969938) b!1436945))

(assert (= (and b!1436945 res!969935) b!1436944))

(declare-fun m!1326309 () Bool)

(assert (=> start!124176 m!1326309))

(declare-fun m!1326311 () Bool)

(assert (=> start!124176 m!1326311))

(declare-fun m!1326313 () Bool)

(assert (=> b!1436943 m!1326313))

(assert (=> b!1436943 m!1326313))

(declare-fun m!1326315 () Bool)

(assert (=> b!1436943 m!1326315))

(declare-fun m!1326317 () Bool)

(assert (=> b!1436950 m!1326317))

(declare-fun m!1326319 () Bool)

(assert (=> b!1436945 m!1326319))

(assert (=> b!1436945 m!1326319))

(declare-fun m!1326321 () Bool)

(assert (=> b!1436945 m!1326321))

(assert (=> b!1436945 m!1326321))

(assert (=> b!1436945 m!1326319))

(declare-fun m!1326323 () Bool)

(assert (=> b!1436945 m!1326323))

(declare-fun m!1326325 () Bool)

(assert (=> b!1436949 m!1326325))

(declare-fun m!1326327 () Bool)

(assert (=> b!1436949 m!1326327))

(declare-fun m!1326329 () Bool)

(assert (=> b!1436947 m!1326329))

(assert (=> b!1436946 m!1326319))

(assert (=> b!1436946 m!1326319))

(declare-fun m!1326331 () Bool)

(assert (=> b!1436946 m!1326331))

(check-sat (not b!1436950) (not b!1436943) (not b!1436946) (not start!124176) (not b!1436947) (not b!1436945))
(check-sat)
