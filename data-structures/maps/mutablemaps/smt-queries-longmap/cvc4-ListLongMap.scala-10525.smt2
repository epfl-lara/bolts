; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124166 () Bool)

(assert start!124166)

(declare-fun b!1436832 () Bool)

(declare-fun e!810772 () Bool)

(declare-fun mask!2687 () (_ BitVec 32))

(assert (=> b!1436832 (= e!810772 (bvslt mask!2687 #b00000000000000000000000000000000))))

(declare-fun b!1436833 () Bool)

(declare-fun res!969825 () Bool)

(assert (=> b!1436833 (=> (not res!969825) (not e!810772))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!97687 0))(
  ( (array!97688 (arr!47133 (Array (_ BitVec 32) (_ BitVec 64))) (size!47684 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97687)

(assert (=> b!1436833 (= res!969825 (and (= (size!47684 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47684 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47684 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1436835 () Bool)

(declare-fun res!969830 () Bool)

(assert (=> b!1436835 (=> (not res!969830) (not e!810772))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1436835 (= res!969830 (validKeyInArray!0 (select (arr!47133 a!2862) i!1006)))))

(declare-fun b!1436836 () Bool)

(declare-fun res!969826 () Bool)

(assert (=> b!1436836 (=> (not res!969826) (not e!810772))))

(declare-datatypes ((List!33814 0))(
  ( (Nil!33811) (Cons!33810 (h!35148 (_ BitVec 64)) (t!48515 List!33814)) )
))
(declare-fun arrayNoDuplicates!0 (array!97687 (_ BitVec 32) List!33814) Bool)

(assert (=> b!1436836 (= res!969826 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33811))))

(declare-fun b!1436837 () Bool)

(declare-fun res!969828 () Bool)

(assert (=> b!1436837 (=> (not res!969828) (not e!810772))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11408 0))(
  ( (MissingZero!11408 (index!48023 (_ BitVec 32))) (Found!11408 (index!48024 (_ BitVec 32))) (Intermediate!11408 (undefined!12220 Bool) (index!48025 (_ BitVec 32)) (x!129756 (_ BitVec 32))) (Undefined!11408) (MissingVacant!11408 (index!48026 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97687 (_ BitVec 32)) SeekEntryResult!11408)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1436837 (= res!969828 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47133 a!2862) j!93) mask!2687) (select (arr!47133 a!2862) j!93) a!2862 mask!2687) (Intermediate!11408 false intermediateBeforeIndex!19 intermediateBeforeX!19)))))

(declare-fun b!1436838 () Bool)

(declare-fun res!969831 () Bool)

(assert (=> b!1436838 (=> (not res!969831) (not e!810772))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1436838 (= res!969831 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47684 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47684 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47684 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47133 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1436839 () Bool)

(declare-fun res!969827 () Bool)

(assert (=> b!1436839 (=> (not res!969827) (not e!810772))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97687 (_ BitVec 32)) Bool)

(assert (=> b!1436839 (= res!969827 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun res!969824 () Bool)

(assert (=> start!124166 (=> (not res!969824) (not e!810772))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124166 (= res!969824 (validMask!0 mask!2687))))

(assert (=> start!124166 e!810772))

(assert (=> start!124166 true))

(declare-fun array_inv!36078 (array!97687) Bool)

(assert (=> start!124166 (array_inv!36078 a!2862)))

(declare-fun b!1436834 () Bool)

(declare-fun res!969829 () Bool)

(assert (=> b!1436834 (=> (not res!969829) (not e!810772))))

(assert (=> b!1436834 (= res!969829 (validKeyInArray!0 (select (arr!47133 a!2862) j!93)))))

(assert (= (and start!124166 res!969824) b!1436833))

(assert (= (and b!1436833 res!969825) b!1436835))

(assert (= (and b!1436835 res!969830) b!1436834))

(assert (= (and b!1436834 res!969829) b!1436839))

(assert (= (and b!1436839 res!969827) b!1436836))

(assert (= (and b!1436836 res!969826) b!1436838))

(assert (= (and b!1436838 res!969831) b!1436837))

(assert (= (and b!1436837 res!969828) b!1436832))

(declare-fun m!1326189 () Bool)

(assert (=> b!1436834 m!1326189))

(assert (=> b!1436834 m!1326189))

(declare-fun m!1326191 () Bool)

(assert (=> b!1436834 m!1326191))

(declare-fun m!1326193 () Bool)

(assert (=> start!124166 m!1326193))

(declare-fun m!1326195 () Bool)

(assert (=> start!124166 m!1326195))

(assert (=> b!1436837 m!1326189))

(assert (=> b!1436837 m!1326189))

(declare-fun m!1326197 () Bool)

(assert (=> b!1436837 m!1326197))

(assert (=> b!1436837 m!1326197))

(assert (=> b!1436837 m!1326189))

(declare-fun m!1326199 () Bool)

(assert (=> b!1436837 m!1326199))

(declare-fun m!1326201 () Bool)

(assert (=> b!1436835 m!1326201))

(assert (=> b!1436835 m!1326201))

(declare-fun m!1326203 () Bool)

(assert (=> b!1436835 m!1326203))

(declare-fun m!1326205 () Bool)

(assert (=> b!1436838 m!1326205))

(declare-fun m!1326207 () Bool)

(assert (=> b!1436838 m!1326207))

(declare-fun m!1326209 () Bool)

(assert (=> b!1436839 m!1326209))

(declare-fun m!1326211 () Bool)

(assert (=> b!1436836 m!1326211))

(push 1)

(assert (not b!1436839))

(assert (not b!1436836))

(assert (not b!1436837))

(assert (not b!1436834))

(assert (not start!124166))

(assert (not b!1436835))

(check-sat)

(pop 1)

(push 1)

(check-sat)

