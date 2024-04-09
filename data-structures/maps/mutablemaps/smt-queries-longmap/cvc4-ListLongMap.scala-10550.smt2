; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124484 () Bool)

(assert start!124484)

(declare-fun b!1439684 () Bool)

(declare-fun res!972228 () Bool)

(declare-fun e!811960 () Bool)

(assert (=> b!1439684 (=> (not res!972228) (not e!811960))))

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11483 0))(
  ( (MissingZero!11483 (index!48323 (_ BitVec 32))) (Found!11483 (index!48324 (_ BitVec 32))) (Intermediate!11483 (undefined!12295 Bool) (index!48325 (_ BitVec 32)) (x!130055 (_ BitVec 32))) (Undefined!11483) (MissingVacant!11483 (index!48326 (_ BitVec 32))) )
))
(declare-fun lt!632805 () SeekEntryResult!11483)

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!97849 0))(
  ( (array!97850 (arr!47208 (Array (_ BitVec 32) (_ BitVec 64))) (size!47759 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97849)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97849 (_ BitVec 32)) SeekEntryResult!11483)

(assert (=> b!1439684 (= res!972228 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47208 a!2862) j!93) a!2862 mask!2687) lt!632805))))

(declare-fun b!1439685 () Bool)

(declare-fun res!972223 () Bool)

(declare-fun e!811961 () Bool)

(assert (=> b!1439685 (=> (not res!972223) (not e!811961))))

(declare-datatypes ((List!33889 0))(
  ( (Nil!33886) (Cons!33885 (h!35235 (_ BitVec 64)) (t!48590 List!33889)) )
))
(declare-fun arrayNoDuplicates!0 (array!97849 (_ BitVec 32) List!33889) Bool)

(assert (=> b!1439685 (= res!972223 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33886))))

(declare-fun b!1439686 () Bool)

(assert (=> b!1439686 (= e!811960 false)))

(declare-fun lt!632806 () SeekEntryResult!11483)

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1439686 (= lt!632806 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!47208 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (select (store (arr!47208 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!97850 (store (arr!47208 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47759 a!2862)) mask!2687))))

(declare-fun b!1439687 () Bool)

(declare-fun res!972224 () Bool)

(assert (=> b!1439687 (=> (not res!972224) (not e!811961))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1439687 (= res!972224 (validKeyInArray!0 (select (arr!47208 a!2862) i!1006)))))

(declare-fun b!1439688 () Bool)

(assert (=> b!1439688 (= e!811961 e!811960)))

(declare-fun res!972221 () Bool)

(assert (=> b!1439688 (=> (not res!972221) (not e!811960))))

(assert (=> b!1439688 (= res!972221 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47208 a!2862) j!93) mask!2687) (select (arr!47208 a!2862) j!93) a!2862 mask!2687) lt!632805))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1439688 (= lt!632805 (Intermediate!11483 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1439689 () Bool)

(declare-fun res!972227 () Bool)

(assert (=> b!1439689 (=> (not res!972227) (not e!811961))))

(assert (=> b!1439689 (= res!972227 (validKeyInArray!0 (select (arr!47208 a!2862) j!93)))))

(declare-fun res!972222 () Bool)

(assert (=> start!124484 (=> (not res!972222) (not e!811961))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124484 (= res!972222 (validMask!0 mask!2687))))

(assert (=> start!124484 e!811961))

(assert (=> start!124484 true))

(declare-fun array_inv!36153 (array!97849) Bool)

(assert (=> start!124484 (array_inv!36153 a!2862)))

(declare-fun b!1439690 () Bool)

(declare-fun res!972220 () Bool)

(assert (=> b!1439690 (=> (not res!972220) (not e!811961))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97849 (_ BitVec 32)) Bool)

(assert (=> b!1439690 (= res!972220 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1439691 () Bool)

(declare-fun res!972225 () Bool)

(assert (=> b!1439691 (=> (not res!972225) (not e!811961))))

(assert (=> b!1439691 (= res!972225 (and (= (size!47759 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47759 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47759 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1439692 () Bool)

(declare-fun res!972226 () Bool)

(assert (=> b!1439692 (=> (not res!972226) (not e!811961))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1439692 (= res!972226 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47759 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47759 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47759 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47208 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!124484 res!972222) b!1439691))

(assert (= (and b!1439691 res!972225) b!1439687))

(assert (= (and b!1439687 res!972224) b!1439689))

(assert (= (and b!1439689 res!972227) b!1439690))

(assert (= (and b!1439690 res!972220) b!1439685))

(assert (= (and b!1439685 res!972223) b!1439692))

(assert (= (and b!1439692 res!972226) b!1439688))

(assert (= (and b!1439688 res!972221) b!1439684))

(assert (= (and b!1439684 res!972228) b!1439686))

(declare-fun m!1328857 () Bool)

(assert (=> start!124484 m!1328857))

(declare-fun m!1328859 () Bool)

(assert (=> start!124484 m!1328859))

(declare-fun m!1328861 () Bool)

(assert (=> b!1439689 m!1328861))

(assert (=> b!1439689 m!1328861))

(declare-fun m!1328863 () Bool)

(assert (=> b!1439689 m!1328863))

(declare-fun m!1328865 () Bool)

(assert (=> b!1439685 m!1328865))

(assert (=> b!1439688 m!1328861))

(assert (=> b!1439688 m!1328861))

(declare-fun m!1328867 () Bool)

(assert (=> b!1439688 m!1328867))

(assert (=> b!1439688 m!1328867))

(assert (=> b!1439688 m!1328861))

(declare-fun m!1328869 () Bool)

(assert (=> b!1439688 m!1328869))

(assert (=> b!1439684 m!1328861))

(assert (=> b!1439684 m!1328861))

(declare-fun m!1328871 () Bool)

(assert (=> b!1439684 m!1328871))

(declare-fun m!1328873 () Bool)

(assert (=> b!1439687 m!1328873))

(assert (=> b!1439687 m!1328873))

(declare-fun m!1328875 () Bool)

(assert (=> b!1439687 m!1328875))

(declare-fun m!1328877 () Bool)

(assert (=> b!1439690 m!1328877))

(declare-fun m!1328879 () Bool)

(assert (=> b!1439692 m!1328879))

(declare-fun m!1328881 () Bool)

(assert (=> b!1439692 m!1328881))

(assert (=> b!1439686 m!1328879))

(declare-fun m!1328883 () Bool)

(assert (=> b!1439686 m!1328883))

(assert (=> b!1439686 m!1328883))

(declare-fun m!1328885 () Bool)

(assert (=> b!1439686 m!1328885))

(assert (=> b!1439686 m!1328885))

(assert (=> b!1439686 m!1328883))

(declare-fun m!1328887 () Bool)

(assert (=> b!1439686 m!1328887))

(push 1)

(assert (not b!1439690))

(assert (not b!1439688))

