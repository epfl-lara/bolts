; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124170 () Bool)

(assert start!124170)

(declare-fun b!1436875 () Bool)

(declare-fun res!969872 () Bool)

(declare-fun e!810785 () Bool)

(assert (=> b!1436875 (=> (not res!969872) (not e!810785))))

(declare-datatypes ((array!97691 0))(
  ( (array!97692 (arr!47135 (Array (_ BitVec 32) (_ BitVec 64))) (size!47686 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97691)

(declare-datatypes ((List!33816 0))(
  ( (Nil!33813) (Cons!33812 (h!35150 (_ BitVec 64)) (t!48517 List!33816)) )
))
(declare-fun arrayNoDuplicates!0 (array!97691 (_ BitVec 32) List!33816) Bool)

(assert (=> b!1436875 (= res!969872 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33813))))

(declare-fun b!1436876 () Bool)

(assert (=> b!1436876 (= e!810785 false)))

(declare-datatypes ((SeekEntryResult!11410 0))(
  ( (MissingZero!11410 (index!48031 (_ BitVec 32))) (Found!11410 (index!48032 (_ BitVec 32))) (Intermediate!11410 (undefined!12222 Bool) (index!48033 (_ BitVec 32)) (x!129766 (_ BitVec 32))) (Undefined!11410) (MissingVacant!11410 (index!48034 (_ BitVec 32))) )
))
(declare-fun lt!632164 () SeekEntryResult!11410)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97691 (_ BitVec 32)) SeekEntryResult!11410)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1436876 (= lt!632164 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47135 a!2862) j!93) mask!2687) (select (arr!47135 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1436877 () Bool)

(declare-fun res!969868 () Bool)

(assert (=> b!1436877 (=> (not res!969868) (not e!810785))))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1436877 (= res!969868 (validKeyInArray!0 (select (arr!47135 a!2862) i!1006)))))

(declare-fun b!1436878 () Bool)

(declare-fun res!969870 () Bool)

(assert (=> b!1436878 (=> (not res!969870) (not e!810785))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97691 (_ BitVec 32)) Bool)

(assert (=> b!1436878 (= res!969870 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1436879 () Bool)

(declare-fun res!969867 () Bool)

(assert (=> b!1436879 (=> (not res!969867) (not e!810785))))

(assert (=> b!1436879 (= res!969867 (and (= (size!47686 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47686 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47686 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1436880 () Bool)

(declare-fun res!969871 () Bool)

(assert (=> b!1436880 (=> (not res!969871) (not e!810785))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1436880 (= res!969871 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47686 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47686 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47686 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47135 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1436881 () Bool)

(declare-fun res!969873 () Bool)

(assert (=> b!1436881 (=> (not res!969873) (not e!810785))))

(assert (=> b!1436881 (= res!969873 (validKeyInArray!0 (select (arr!47135 a!2862) j!93)))))

(declare-fun res!969869 () Bool)

(assert (=> start!124170 (=> (not res!969869) (not e!810785))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124170 (= res!969869 (validMask!0 mask!2687))))

(assert (=> start!124170 e!810785))

(assert (=> start!124170 true))

(declare-fun array_inv!36080 (array!97691) Bool)

(assert (=> start!124170 (array_inv!36080 a!2862)))

(assert (= (and start!124170 res!969869) b!1436879))

(assert (= (and b!1436879 res!969867) b!1436877))

(assert (= (and b!1436877 res!969868) b!1436881))

(assert (= (and b!1436881 res!969873) b!1436878))

(assert (= (and b!1436878 res!969870) b!1436875))

(assert (= (and b!1436875 res!969872) b!1436880))

(assert (= (and b!1436880 res!969871) b!1436876))

(declare-fun m!1326237 () Bool)

(assert (=> b!1436876 m!1326237))

(assert (=> b!1436876 m!1326237))

(declare-fun m!1326239 () Bool)

(assert (=> b!1436876 m!1326239))

(assert (=> b!1436876 m!1326239))

(assert (=> b!1436876 m!1326237))

(declare-fun m!1326241 () Bool)

(assert (=> b!1436876 m!1326241))

(assert (=> b!1436881 m!1326237))

(assert (=> b!1436881 m!1326237))

(declare-fun m!1326243 () Bool)

(assert (=> b!1436881 m!1326243))

(declare-fun m!1326245 () Bool)

(assert (=> b!1436877 m!1326245))

(assert (=> b!1436877 m!1326245))

(declare-fun m!1326247 () Bool)

(assert (=> b!1436877 m!1326247))

(declare-fun m!1326249 () Bool)

(assert (=> start!124170 m!1326249))

(declare-fun m!1326251 () Bool)

(assert (=> start!124170 m!1326251))

(declare-fun m!1326253 () Bool)

(assert (=> b!1436875 m!1326253))

(declare-fun m!1326255 () Bool)

(assert (=> b!1436880 m!1326255))

(declare-fun m!1326257 () Bool)

(assert (=> b!1436880 m!1326257))

(declare-fun m!1326259 () Bool)

(assert (=> b!1436878 m!1326259))

(check-sat (not b!1436876) (not b!1436875) (not b!1436877) (not b!1436881) (not start!124170) (not b!1436878))
