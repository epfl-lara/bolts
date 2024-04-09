; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124178 () Bool)

(assert start!124178)

(declare-fun b!1436967 () Bool)

(declare-fun e!810808 () Bool)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1436967 (= e!810808 (and (bvsge mask!2687 #b00000000000000000000000000000000) (bvsge index!646 (bvadd #b00000000000000000000000000000001 mask!2687))))))

(declare-fun b!1436968 () Bool)

(declare-fun res!969965 () Bool)

(assert (=> b!1436968 (=> (not res!969965) (not e!810808))))

(declare-datatypes ((array!97699 0))(
  ( (array!97700 (arr!47139 (Array (_ BitVec 32) (_ BitVec 64))) (size!47690 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97699)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1436968 (= res!969965 (validKeyInArray!0 (select (arr!47139 a!2862) j!93)))))

(declare-fun b!1436969 () Bool)

(declare-fun res!969959 () Bool)

(assert (=> b!1436969 (=> (not res!969959) (not e!810808))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97699 (_ BitVec 32)) Bool)

(assert (=> b!1436969 (= res!969959 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1436970 () Bool)

(declare-fun res!969962 () Bool)

(assert (=> b!1436970 (=> (not res!969962) (not e!810808))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1436970 (= res!969962 (validKeyInArray!0 (select (arr!47139 a!2862) i!1006)))))

(declare-fun b!1436971 () Bool)

(declare-fun res!969960 () Bool)

(assert (=> b!1436971 (=> (not res!969960) (not e!810808))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1436971 (= res!969960 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47690 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47690 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47690 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47139 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1436972 () Bool)

(declare-fun res!969961 () Bool)

(assert (=> b!1436972 (=> (not res!969961) (not e!810808))))

(declare-datatypes ((List!33820 0))(
  ( (Nil!33817) (Cons!33816 (h!35154 (_ BitVec 64)) (t!48521 List!33820)) )
))
(declare-fun arrayNoDuplicates!0 (array!97699 (_ BitVec 32) List!33820) Bool)

(assert (=> b!1436972 (= res!969961 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33817))))

(declare-fun b!1436973 () Bool)

(declare-fun res!969966 () Bool)

(assert (=> b!1436973 (=> (not res!969966) (not e!810808))))

(assert (=> b!1436973 (= res!969966 (and (= (size!47690 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47690 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47690 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1436974 () Bool)

(declare-fun res!969964 () Bool)

(assert (=> b!1436974 (=> (not res!969964) (not e!810808))))

(declare-datatypes ((SeekEntryResult!11414 0))(
  ( (MissingZero!11414 (index!48047 (_ BitVec 32))) (Found!11414 (index!48048 (_ BitVec 32))) (Intermediate!11414 (undefined!12226 Bool) (index!48049 (_ BitVec 32)) (x!129778 (_ BitVec 32))) (Undefined!11414) (MissingVacant!11414 (index!48050 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97699 (_ BitVec 32)) SeekEntryResult!11414)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1436974 (= res!969964 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47139 a!2862) j!93) mask!2687) (select (arr!47139 a!2862) j!93) a!2862 mask!2687) (Intermediate!11414 false intermediateBeforeIndex!19 intermediateBeforeX!19)))))

(declare-fun res!969963 () Bool)

(assert (=> start!124178 (=> (not res!969963) (not e!810808))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124178 (= res!969963 (validMask!0 mask!2687))))

(assert (=> start!124178 e!810808))

(assert (=> start!124178 true))

(declare-fun array_inv!36084 (array!97699) Bool)

(assert (=> start!124178 (array_inv!36084 a!2862)))

(assert (= (and start!124178 res!969963) b!1436973))

(assert (= (and b!1436973 res!969966) b!1436970))

(assert (= (and b!1436970 res!969962) b!1436968))

(assert (= (and b!1436968 res!969965) b!1436969))

(assert (= (and b!1436969 res!969959) b!1436972))

(assert (= (and b!1436972 res!969961) b!1436971))

(assert (= (and b!1436971 res!969960) b!1436974))

(assert (= (and b!1436974 res!969964) b!1436967))

(declare-fun m!1326333 () Bool)

(assert (=> b!1436974 m!1326333))

(assert (=> b!1436974 m!1326333))

(declare-fun m!1326335 () Bool)

(assert (=> b!1436974 m!1326335))

(assert (=> b!1436974 m!1326335))

(assert (=> b!1436974 m!1326333))

(declare-fun m!1326337 () Bool)

(assert (=> b!1436974 m!1326337))

(assert (=> b!1436968 m!1326333))

(assert (=> b!1436968 m!1326333))

(declare-fun m!1326339 () Bool)

(assert (=> b!1436968 m!1326339))

(declare-fun m!1326341 () Bool)

(assert (=> b!1436971 m!1326341))

(declare-fun m!1326343 () Bool)

(assert (=> b!1436971 m!1326343))

(declare-fun m!1326345 () Bool)

(assert (=> b!1436969 m!1326345))

(declare-fun m!1326347 () Bool)

(assert (=> b!1436970 m!1326347))

(assert (=> b!1436970 m!1326347))

(declare-fun m!1326349 () Bool)

(assert (=> b!1436970 m!1326349))

(declare-fun m!1326351 () Bool)

(assert (=> b!1436972 m!1326351))

(declare-fun m!1326353 () Bool)

(assert (=> start!124178 m!1326353))

(declare-fun m!1326355 () Bool)

(assert (=> start!124178 m!1326355))

(push 1)

(assert (not b!1436969))

(assert (not b!1436974))

(assert (not b!1436968))

(assert (not b!1436972))

(assert (not b!1436970))

(assert (not start!124178))

(check-sat)

(pop 1)

(push 1)

(check-sat)

