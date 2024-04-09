; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124516 () Bool)

(assert start!124516)

(declare-fun b!1440152 () Bool)

(declare-fun res!972692 () Bool)

(declare-fun e!812105 () Bool)

(assert (=> b!1440152 (=> (not res!972692) (not e!812105))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!97881 0))(
  ( (array!97882 (arr!47224 (Array (_ BitVec 32) (_ BitVec 64))) (size!47775 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97881)

(assert (=> b!1440152 (= res!972692 (and (= (size!47775 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47775 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47775 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1440153 () Bool)

(declare-fun res!972689 () Bool)

(assert (=> b!1440153 (=> (not res!972689) (not e!812105))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1440153 (= res!972689 (validKeyInArray!0 (select (arr!47224 a!2862) j!93)))))

(declare-fun b!1440154 () Bool)

(declare-fun e!812103 () Bool)

(assert (=> b!1440154 (= e!812105 e!812103)))

(declare-fun res!972694 () Bool)

(assert (=> b!1440154 (=> (not res!972694) (not e!812103))))

(declare-datatypes ((SeekEntryResult!11499 0))(
  ( (MissingZero!11499 (index!48387 (_ BitVec 32))) (Found!11499 (index!48388 (_ BitVec 32))) (Intermediate!11499 (undefined!12311 Bool) (index!48389 (_ BitVec 32)) (x!130119 (_ BitVec 32))) (Undefined!11499) (MissingVacant!11499 (index!48390 (_ BitVec 32))) )
))
(declare-fun lt!632874 () SeekEntryResult!11499)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97881 (_ BitVec 32)) SeekEntryResult!11499)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1440154 (= res!972694 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47224 a!2862) j!93) mask!2687) (select (arr!47224 a!2862) j!93) a!2862 mask!2687) lt!632874))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1440154 (= lt!632874 (Intermediate!11499 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1440155 () Bool)

(declare-fun res!972693 () Bool)

(assert (=> b!1440155 (=> (not res!972693) (not e!812105))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97881 (_ BitVec 32)) Bool)

(assert (=> b!1440155 (= res!972693 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1440156 () Bool)

(declare-fun res!972688 () Bool)

(assert (=> b!1440156 (=> (not res!972688) (not e!812105))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun x!665 () (_ BitVec 32))

(assert (=> b!1440156 (= res!972688 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47775 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47775 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47775 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47224 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1440157 () Bool)

(declare-fun res!972695 () Bool)

(assert (=> b!1440157 (=> (not res!972695) (not e!812103))))

(assert (=> b!1440157 (= res!972695 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47224 a!2862) j!93) a!2862 mask!2687) lt!632874))))

(declare-fun res!972691 () Bool)

(assert (=> start!124516 (=> (not res!972691) (not e!812105))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124516 (= res!972691 (validMask!0 mask!2687))))

(assert (=> start!124516 e!812105))

(assert (=> start!124516 true))

(declare-fun array_inv!36169 (array!97881) Bool)

(assert (=> start!124516 (array_inv!36169 a!2862)))

(declare-fun b!1440158 () Bool)

(declare-fun res!972696 () Bool)

(assert (=> b!1440158 (=> (not res!972696) (not e!812105))))

(declare-datatypes ((List!33905 0))(
  ( (Nil!33902) (Cons!33901 (h!35251 (_ BitVec 64)) (t!48606 List!33905)) )
))
(declare-fun arrayNoDuplicates!0 (array!97881 (_ BitVec 32) List!33905) Bool)

(assert (=> b!1440158 (= res!972696 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33902))))

(declare-fun b!1440159 () Bool)

(assert (=> b!1440159 (= e!812103 false)))

(declare-fun lt!632875 () SeekEntryResult!11499)

(assert (=> b!1440159 (= lt!632875 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!47224 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (select (store (arr!47224 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!97882 (store (arr!47224 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47775 a!2862)) mask!2687))))

(declare-fun b!1440160 () Bool)

(declare-fun res!972690 () Bool)

(assert (=> b!1440160 (=> (not res!972690) (not e!812105))))

(assert (=> b!1440160 (= res!972690 (validKeyInArray!0 (select (arr!47224 a!2862) i!1006)))))

(assert (= (and start!124516 res!972691) b!1440152))

(assert (= (and b!1440152 res!972692) b!1440160))

(assert (= (and b!1440160 res!972690) b!1440153))

(assert (= (and b!1440153 res!972689) b!1440155))

(assert (= (and b!1440155 res!972693) b!1440158))

(assert (= (and b!1440158 res!972696) b!1440156))

(assert (= (and b!1440156 res!972688) b!1440154))

(assert (= (and b!1440154 res!972694) b!1440157))

(assert (= (and b!1440157 res!972695) b!1440159))

(declare-fun m!1329375 () Bool)

(assert (=> b!1440158 m!1329375))

(declare-fun m!1329377 () Bool)

(assert (=> b!1440153 m!1329377))

(assert (=> b!1440153 m!1329377))

(declare-fun m!1329379 () Bool)

(assert (=> b!1440153 m!1329379))

(declare-fun m!1329381 () Bool)

(assert (=> b!1440159 m!1329381))

(declare-fun m!1329383 () Bool)

(assert (=> b!1440159 m!1329383))

(assert (=> b!1440159 m!1329383))

(declare-fun m!1329385 () Bool)

(assert (=> b!1440159 m!1329385))

(assert (=> b!1440159 m!1329385))

(assert (=> b!1440159 m!1329383))

(declare-fun m!1329387 () Bool)

(assert (=> b!1440159 m!1329387))

(assert (=> b!1440156 m!1329381))

(declare-fun m!1329389 () Bool)

(assert (=> b!1440156 m!1329389))

(assert (=> b!1440154 m!1329377))

(assert (=> b!1440154 m!1329377))

(declare-fun m!1329391 () Bool)

(assert (=> b!1440154 m!1329391))

(assert (=> b!1440154 m!1329391))

(assert (=> b!1440154 m!1329377))

(declare-fun m!1329393 () Bool)

(assert (=> b!1440154 m!1329393))

(declare-fun m!1329395 () Bool)

(assert (=> b!1440160 m!1329395))

(assert (=> b!1440160 m!1329395))

(declare-fun m!1329397 () Bool)

(assert (=> b!1440160 m!1329397))

(declare-fun m!1329399 () Bool)

(assert (=> b!1440155 m!1329399))

(assert (=> b!1440157 m!1329377))

(assert (=> b!1440157 m!1329377))

(declare-fun m!1329401 () Bool)

(assert (=> b!1440157 m!1329401))

(declare-fun m!1329403 () Bool)

(assert (=> start!124516 m!1329403))

(declare-fun m!1329405 () Bool)

(assert (=> start!124516 m!1329405))

(push 1)

