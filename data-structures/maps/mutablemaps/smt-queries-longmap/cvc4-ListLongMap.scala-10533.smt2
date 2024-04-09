; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124256 () Bool)

(assert start!124256)

(declare-fun b!1437605 () Bool)

(declare-fun e!811074 () Bool)

(declare-fun mask!2687 () (_ BitVec 32))

(assert (=> b!1437605 (= e!811074 (bvslt mask!2687 #b00000000000000000000000000000000))))

(declare-fun lt!632307 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!97738 0))(
  ( (array!97739 (arr!47157 (Array (_ BitVec 32) (_ BitVec 64))) (size!47708 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97738)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1437605 (= lt!632307 (toIndex!0 (select (store (arr!47157 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687))))

(declare-fun b!1437606 () Bool)

(declare-fun res!970499 () Bool)

(assert (=> b!1437606 (=> (not res!970499) (not e!811074))))

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11432 0))(
  ( (MissingZero!11432 (index!48119 (_ BitVec 32))) (Found!11432 (index!48120 (_ BitVec 32))) (Intermediate!11432 (undefined!12244 Bool) (index!48121 (_ BitVec 32)) (x!129850 (_ BitVec 32))) (Undefined!11432) (MissingVacant!11432 (index!48122 (_ BitVec 32))) )
))
(declare-fun lt!632308 () SeekEntryResult!11432)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97738 (_ BitVec 32)) SeekEntryResult!11432)

(assert (=> b!1437606 (= res!970499 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47157 a!2862) j!93) a!2862 mask!2687) lt!632308))))

(declare-fun res!970493 () Bool)

(declare-fun e!811076 () Bool)

(assert (=> start!124256 (=> (not res!970493) (not e!811076))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124256 (= res!970493 (validMask!0 mask!2687))))

(assert (=> start!124256 e!811076))

(assert (=> start!124256 true))

(declare-fun array_inv!36102 (array!97738) Bool)

(assert (=> start!124256 (array_inv!36102 a!2862)))

(declare-fun b!1437607 () Bool)

(declare-fun res!970498 () Bool)

(assert (=> b!1437607 (=> (not res!970498) (not e!811076))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1437607 (= res!970498 (validKeyInArray!0 (select (arr!47157 a!2862) i!1006)))))

(declare-fun b!1437608 () Bool)

(declare-fun res!970500 () Bool)

(assert (=> b!1437608 (=> (not res!970500) (not e!811076))))

(declare-datatypes ((List!33838 0))(
  ( (Nil!33835) (Cons!33834 (h!35175 (_ BitVec 64)) (t!48539 List!33838)) )
))
(declare-fun arrayNoDuplicates!0 (array!97738 (_ BitVec 32) List!33838) Bool)

(assert (=> b!1437608 (= res!970500 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33835))))

(declare-fun b!1437609 () Bool)

(declare-fun res!970495 () Bool)

(assert (=> b!1437609 (=> (not res!970495) (not e!811076))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97738 (_ BitVec 32)) Bool)

(assert (=> b!1437609 (= res!970495 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1437610 () Bool)

(declare-fun res!970494 () Bool)

(assert (=> b!1437610 (=> (not res!970494) (not e!811076))))

(assert (=> b!1437610 (= res!970494 (and (= (size!47708 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47708 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47708 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1437611 () Bool)

(assert (=> b!1437611 (= e!811076 e!811074)))

(declare-fun res!970496 () Bool)

(assert (=> b!1437611 (=> (not res!970496) (not e!811074))))

(assert (=> b!1437611 (= res!970496 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47157 a!2862) j!93) mask!2687) (select (arr!47157 a!2862) j!93) a!2862 mask!2687) lt!632308))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1437611 (= lt!632308 (Intermediate!11432 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1437612 () Bool)

(declare-fun res!970492 () Bool)

(assert (=> b!1437612 (=> (not res!970492) (not e!811076))))

(assert (=> b!1437612 (= res!970492 (validKeyInArray!0 (select (arr!47157 a!2862) j!93)))))

(declare-fun b!1437613 () Bool)

(declare-fun res!970497 () Bool)

(assert (=> b!1437613 (=> (not res!970497) (not e!811076))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1437613 (= res!970497 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47708 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47708 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47708 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47157 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!124256 res!970493) b!1437610))

(assert (= (and b!1437610 res!970494) b!1437607))

(assert (= (and b!1437607 res!970498) b!1437612))

(assert (= (and b!1437612 res!970492) b!1437609))

(assert (= (and b!1437609 res!970495) b!1437608))

(assert (= (and b!1437608 res!970500) b!1437613))

(assert (= (and b!1437613 res!970497) b!1437611))

(assert (= (and b!1437611 res!970496) b!1437606))

(assert (= (and b!1437606 res!970499) b!1437605))

(declare-fun m!1326903 () Bool)

(assert (=> b!1437606 m!1326903))

(assert (=> b!1437606 m!1326903))

(declare-fun m!1326905 () Bool)

(assert (=> b!1437606 m!1326905))

(declare-fun m!1326907 () Bool)

(assert (=> b!1437613 m!1326907))

(declare-fun m!1326909 () Bool)

(assert (=> b!1437613 m!1326909))

(declare-fun m!1326911 () Bool)

(assert (=> b!1437609 m!1326911))

(assert (=> b!1437612 m!1326903))

(assert (=> b!1437612 m!1326903))

(declare-fun m!1326913 () Bool)

(assert (=> b!1437612 m!1326913))

(declare-fun m!1326915 () Bool)

(assert (=> start!124256 m!1326915))

(declare-fun m!1326917 () Bool)

(assert (=> start!124256 m!1326917))

(assert (=> b!1437605 m!1326907))

(declare-fun m!1326919 () Bool)

(assert (=> b!1437605 m!1326919))

(assert (=> b!1437605 m!1326919))

(declare-fun m!1326921 () Bool)

(assert (=> b!1437605 m!1326921))

(assert (=> b!1437611 m!1326903))

(assert (=> b!1437611 m!1326903))

(declare-fun m!1326923 () Bool)

(assert (=> b!1437611 m!1326923))

(assert (=> b!1437611 m!1326923))

(assert (=> b!1437611 m!1326903))

(declare-fun m!1326925 () Bool)

(assert (=> b!1437611 m!1326925))

(declare-fun m!1326927 () Bool)

(assert (=> b!1437607 m!1326927))

(assert (=> b!1437607 m!1326927))

(declare-fun m!1326929 () Bool)

(assert (=> b!1437607 m!1326929))

(declare-fun m!1326931 () Bool)

(assert (=> b!1437608 m!1326931))

(push 1)

(assert (not b!1437605))

(assert (not b!1437612))

(assert (not b!1437609))

(assert (not b!1437608))

(assert (not start!124256))

(assert (not b!1437611))

(assert (not b!1437606))

(assert (not b!1437607))

(check-sat)

(pop 1)

(push 1)

(check-sat)

