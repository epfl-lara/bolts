; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124188 () Bool)

(assert start!124188)

(declare-fun b!1437073 () Bool)

(declare-fun res!970066 () Bool)

(declare-fun e!810838 () Bool)

(assert (=> b!1437073 (=> (not res!970066) (not e!810838))))

(declare-datatypes ((array!97709 0))(
  ( (array!97710 (arr!47144 (Array (_ BitVec 32) (_ BitVec 64))) (size!47695 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97709)

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1437073 (= res!970066 (validKeyInArray!0 (select (arr!47144 a!2862) i!1006)))))

(declare-fun res!970068 () Bool)

(assert (=> start!124188 (=> (not res!970068) (not e!810838))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124188 (= res!970068 (validMask!0 mask!2687))))

(assert (=> start!124188 e!810838))

(assert (=> start!124188 true))

(declare-fun array_inv!36089 (array!97709) Bool)

(assert (=> start!124188 (array_inv!36089 a!2862)))

(declare-fun b!1437074 () Bool)

(assert (=> b!1437074 (= e!810838 false)))

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11419 0))(
  ( (MissingZero!11419 (index!48067 (_ BitVec 32))) (Found!11419 (index!48068 (_ BitVec 32))) (Intermediate!11419 (undefined!12231 Bool) (index!48069 (_ BitVec 32)) (x!129799 (_ BitVec 32))) (Undefined!11419) (MissingVacant!11419 (index!48070 (_ BitVec 32))) )
))
(declare-fun lt!632182 () SeekEntryResult!11419)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97709 (_ BitVec 32)) SeekEntryResult!11419)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1437074 (= lt!632182 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47144 a!2862) j!93) mask!2687) (select (arr!47144 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1437075 () Bool)

(declare-fun res!970065 () Bool)

(assert (=> b!1437075 (=> (not res!970065) (not e!810838))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97709 (_ BitVec 32)) Bool)

(assert (=> b!1437075 (= res!970065 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1437076 () Bool)

(declare-fun res!970067 () Bool)

(assert (=> b!1437076 (=> (not res!970067) (not e!810838))))

(assert (=> b!1437076 (= res!970067 (and (= (size!47695 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47695 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47695 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1437077 () Bool)

(declare-fun res!970071 () Bool)

(assert (=> b!1437077 (=> (not res!970071) (not e!810838))))

(declare-datatypes ((List!33825 0))(
  ( (Nil!33822) (Cons!33821 (h!35159 (_ BitVec 64)) (t!48526 List!33825)) )
))
(declare-fun arrayNoDuplicates!0 (array!97709 (_ BitVec 32) List!33825) Bool)

(assert (=> b!1437077 (= res!970071 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33822))))

(declare-fun b!1437078 () Bool)

(declare-fun res!970070 () Bool)

(assert (=> b!1437078 (=> (not res!970070) (not e!810838))))

(assert (=> b!1437078 (= res!970070 (validKeyInArray!0 (select (arr!47144 a!2862) j!93)))))

(declare-fun b!1437079 () Bool)

(declare-fun res!970069 () Bool)

(assert (=> b!1437079 (=> (not res!970069) (not e!810838))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1437079 (= res!970069 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47695 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47695 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47695 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47144 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!124188 res!970068) b!1437076))

(assert (= (and b!1437076 res!970067) b!1437073))

(assert (= (and b!1437073 res!970066) b!1437078))

(assert (= (and b!1437078 res!970070) b!1437075))

(assert (= (and b!1437075 res!970065) b!1437077))

(assert (= (and b!1437077 res!970071) b!1437079))

(assert (= (and b!1437079 res!970069) b!1437074))

(declare-fun m!1326453 () Bool)

(assert (=> b!1437074 m!1326453))

(assert (=> b!1437074 m!1326453))

(declare-fun m!1326455 () Bool)

(assert (=> b!1437074 m!1326455))

(assert (=> b!1437074 m!1326455))

(assert (=> b!1437074 m!1326453))

(declare-fun m!1326457 () Bool)

(assert (=> b!1437074 m!1326457))

(declare-fun m!1326459 () Bool)

(assert (=> b!1437079 m!1326459))

(declare-fun m!1326461 () Bool)

(assert (=> b!1437079 m!1326461))

(assert (=> b!1437078 m!1326453))

(assert (=> b!1437078 m!1326453))

(declare-fun m!1326463 () Bool)

(assert (=> b!1437078 m!1326463))

(declare-fun m!1326465 () Bool)

(assert (=> b!1437075 m!1326465))

(declare-fun m!1326467 () Bool)

(assert (=> b!1437077 m!1326467))

(declare-fun m!1326469 () Bool)

(assert (=> start!124188 m!1326469))

(declare-fun m!1326471 () Bool)

(assert (=> start!124188 m!1326471))

(declare-fun m!1326473 () Bool)

(assert (=> b!1437073 m!1326473))

(assert (=> b!1437073 m!1326473))

(declare-fun m!1326475 () Bool)

(assert (=> b!1437073 m!1326475))

(check-sat (not b!1437078) (not b!1437074) (not b!1437077) (not start!124188) (not b!1437073) (not b!1437075))
