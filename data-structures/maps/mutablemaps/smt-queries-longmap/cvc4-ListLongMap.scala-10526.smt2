; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124172 () Bool)

(assert start!124172)

(declare-fun b!1436896 () Bool)

(declare-fun res!969893 () Bool)

(declare-fun e!810791 () Bool)

(assert (=> b!1436896 (=> (not res!969893) (not e!810791))))

(declare-datatypes ((array!97693 0))(
  ( (array!97694 (arr!47136 (Array (_ BitVec 32) (_ BitVec 64))) (size!47687 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97693)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97693 (_ BitVec 32)) Bool)

(assert (=> b!1436896 (= res!969893 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1436897 () Bool)

(assert (=> b!1436897 (= e!810791 false)))

(declare-datatypes ((SeekEntryResult!11411 0))(
  ( (MissingZero!11411 (index!48035 (_ BitVec 32))) (Found!11411 (index!48036 (_ BitVec 32))) (Intermediate!11411 (undefined!12223 Bool) (index!48037 (_ BitVec 32)) (x!129767 (_ BitVec 32))) (Undefined!11411) (MissingVacant!11411 (index!48038 (_ BitVec 32))) )
))
(declare-fun lt!632167 () SeekEntryResult!11411)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97693 (_ BitVec 32)) SeekEntryResult!11411)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1436897 (= lt!632167 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47136 a!2862) j!93) mask!2687) (select (arr!47136 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1436898 () Bool)

(declare-fun res!969891 () Bool)

(assert (=> b!1436898 (=> (not res!969891) (not e!810791))))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1436898 (= res!969891 (validKeyInArray!0 (select (arr!47136 a!2862) i!1006)))))

(declare-fun res!969888 () Bool)

(assert (=> start!124172 (=> (not res!969888) (not e!810791))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124172 (= res!969888 (validMask!0 mask!2687))))

(assert (=> start!124172 e!810791))

(assert (=> start!124172 true))

(declare-fun array_inv!36081 (array!97693) Bool)

(assert (=> start!124172 (array_inv!36081 a!2862)))

(declare-fun b!1436899 () Bool)

(declare-fun res!969894 () Bool)

(assert (=> b!1436899 (=> (not res!969894) (not e!810791))))

(assert (=> b!1436899 (= res!969894 (and (= (size!47687 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47687 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47687 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1436900 () Bool)

(declare-fun res!969890 () Bool)

(assert (=> b!1436900 (=> (not res!969890) (not e!810791))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1436900 (= res!969890 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47687 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47687 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47687 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47136 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1436901 () Bool)

(declare-fun res!969889 () Bool)

(assert (=> b!1436901 (=> (not res!969889) (not e!810791))))

(declare-datatypes ((List!33817 0))(
  ( (Nil!33814) (Cons!33813 (h!35151 (_ BitVec 64)) (t!48518 List!33817)) )
))
(declare-fun arrayNoDuplicates!0 (array!97693 (_ BitVec 32) List!33817) Bool)

(assert (=> b!1436901 (= res!969889 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33814))))

(declare-fun b!1436902 () Bool)

(declare-fun res!969892 () Bool)

(assert (=> b!1436902 (=> (not res!969892) (not e!810791))))

(assert (=> b!1436902 (= res!969892 (validKeyInArray!0 (select (arr!47136 a!2862) j!93)))))

(assert (= (and start!124172 res!969888) b!1436899))

(assert (= (and b!1436899 res!969894) b!1436898))

(assert (= (and b!1436898 res!969891) b!1436902))

(assert (= (and b!1436902 res!969892) b!1436896))

(assert (= (and b!1436896 res!969893) b!1436901))

(assert (= (and b!1436901 res!969889) b!1436900))

(assert (= (and b!1436900 res!969890) b!1436897))

(declare-fun m!1326261 () Bool)

(assert (=> b!1436901 m!1326261))

(declare-fun m!1326263 () Bool)

(assert (=> b!1436900 m!1326263))

(declare-fun m!1326265 () Bool)

(assert (=> b!1436900 m!1326265))

(declare-fun m!1326267 () Bool)

(assert (=> b!1436898 m!1326267))

(assert (=> b!1436898 m!1326267))

(declare-fun m!1326269 () Bool)

(assert (=> b!1436898 m!1326269))

(declare-fun m!1326271 () Bool)

(assert (=> start!124172 m!1326271))

(declare-fun m!1326273 () Bool)

(assert (=> start!124172 m!1326273))

(declare-fun m!1326275 () Bool)

(assert (=> b!1436902 m!1326275))

(assert (=> b!1436902 m!1326275))

(declare-fun m!1326277 () Bool)

(assert (=> b!1436902 m!1326277))

(assert (=> b!1436897 m!1326275))

(assert (=> b!1436897 m!1326275))

(declare-fun m!1326279 () Bool)

(assert (=> b!1436897 m!1326279))

(assert (=> b!1436897 m!1326279))

(assert (=> b!1436897 m!1326275))

(declare-fun m!1326281 () Bool)

(assert (=> b!1436897 m!1326281))

(declare-fun m!1326283 () Bool)

(assert (=> b!1436896 m!1326283))

(push 1)

(assert (not start!124172))

(assert (not b!1436896))

(assert (not b!1436897))

(assert (not b!1436901))

(assert (not b!1436902))

(assert (not b!1436898))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

