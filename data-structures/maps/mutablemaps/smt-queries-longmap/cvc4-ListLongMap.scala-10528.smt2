; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124184 () Bool)

(assert start!124184)

(declare-fun b!1437031 () Bool)

(declare-fun res!970025 () Bool)

(declare-fun e!810827 () Bool)

(assert (=> b!1437031 (=> (not res!970025) (not e!810827))))

(declare-datatypes ((array!97705 0))(
  ( (array!97706 (arr!47142 (Array (_ BitVec 32) (_ BitVec 64))) (size!47693 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97705)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97705 (_ BitVec 32)) Bool)

(assert (=> b!1437031 (= res!970025 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1437032 () Bool)

(declare-fun res!970027 () Bool)

(assert (=> b!1437032 (=> (not res!970027) (not e!810827))))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1437032 (= res!970027 (validKeyInArray!0 (select (arr!47142 a!2862) i!1006)))))

(declare-fun b!1437033 () Bool)

(declare-fun res!970029 () Bool)

(assert (=> b!1437033 (=> (not res!970029) (not e!810827))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1437033 (= res!970029 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47693 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47693 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47693 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47142 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1437034 () Bool)

(declare-fun res!970028 () Bool)

(assert (=> b!1437034 (=> (not res!970028) (not e!810827))))

(declare-datatypes ((List!33823 0))(
  ( (Nil!33820) (Cons!33819 (h!35157 (_ BitVec 64)) (t!48524 List!33823)) )
))
(declare-fun arrayNoDuplicates!0 (array!97705 (_ BitVec 32) List!33823) Bool)

(assert (=> b!1437034 (= res!970028 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33820))))

(declare-fun b!1437035 () Bool)

(assert (=> b!1437035 (= e!810827 false)))

(declare-datatypes ((SeekEntryResult!11417 0))(
  ( (MissingZero!11417 (index!48059 (_ BitVec 32))) (Found!11417 (index!48060 (_ BitVec 32))) (Intermediate!11417 (undefined!12229 Bool) (index!48061 (_ BitVec 32)) (x!129789 (_ BitVec 32))) (Undefined!11417) (MissingVacant!11417 (index!48062 (_ BitVec 32))) )
))
(declare-fun lt!632176 () SeekEntryResult!11417)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97705 (_ BitVec 32)) SeekEntryResult!11417)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1437035 (= lt!632176 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47142 a!2862) j!93) mask!2687) (select (arr!47142 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1437036 () Bool)

(declare-fun res!970024 () Bool)

(assert (=> b!1437036 (=> (not res!970024) (not e!810827))))

(assert (=> b!1437036 (= res!970024 (and (= (size!47693 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47693 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47693 a!2862)) (not (= i!1006 j!93))))))

(declare-fun res!970026 () Bool)

(assert (=> start!124184 (=> (not res!970026) (not e!810827))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124184 (= res!970026 (validMask!0 mask!2687))))

(assert (=> start!124184 e!810827))

(assert (=> start!124184 true))

(declare-fun array_inv!36087 (array!97705) Bool)

(assert (=> start!124184 (array_inv!36087 a!2862)))

(declare-fun b!1437037 () Bool)

(declare-fun res!970023 () Bool)

(assert (=> b!1437037 (=> (not res!970023) (not e!810827))))

(assert (=> b!1437037 (= res!970023 (validKeyInArray!0 (select (arr!47142 a!2862) j!93)))))

(assert (= (and start!124184 res!970026) b!1437036))

(assert (= (and b!1437036 res!970024) b!1437032))

(assert (= (and b!1437032 res!970027) b!1437037))

(assert (= (and b!1437037 res!970023) b!1437031))

(assert (= (and b!1437031 res!970025) b!1437034))

(assert (= (and b!1437034 res!970028) b!1437033))

(assert (= (and b!1437033 res!970029) b!1437035))

(declare-fun m!1326405 () Bool)

(assert (=> b!1437032 m!1326405))

(assert (=> b!1437032 m!1326405))

(declare-fun m!1326407 () Bool)

(assert (=> b!1437032 m!1326407))

(declare-fun m!1326409 () Bool)

(assert (=> b!1437034 m!1326409))

(declare-fun m!1326411 () Bool)

(assert (=> b!1437037 m!1326411))

(assert (=> b!1437037 m!1326411))

(declare-fun m!1326413 () Bool)

(assert (=> b!1437037 m!1326413))

(assert (=> b!1437035 m!1326411))

(assert (=> b!1437035 m!1326411))

(declare-fun m!1326415 () Bool)

(assert (=> b!1437035 m!1326415))

(assert (=> b!1437035 m!1326415))

(assert (=> b!1437035 m!1326411))

(declare-fun m!1326417 () Bool)

(assert (=> b!1437035 m!1326417))

(declare-fun m!1326419 () Bool)

(assert (=> b!1437031 m!1326419))

(declare-fun m!1326421 () Bool)

(assert (=> b!1437033 m!1326421))

(declare-fun m!1326423 () Bool)

(assert (=> b!1437033 m!1326423))

(declare-fun m!1326425 () Bool)

(assert (=> start!124184 m!1326425))

(declare-fun m!1326427 () Bool)

(assert (=> start!124184 m!1326427))

(push 1)

(assert (not b!1437031))

(assert (not b!1437032))

(assert (not b!1437035))

(assert (not b!1437034))

(assert (not b!1437037))

(assert (not start!124184))

(check-sat)

