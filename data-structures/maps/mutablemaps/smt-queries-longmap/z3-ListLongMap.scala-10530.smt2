; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124194 () Bool)

(assert start!124194)

(declare-fun b!1437146 () Bool)

(declare-fun res!970142 () Bool)

(declare-fun e!810861 () Bool)

(assert (=> b!1437146 (=> (not res!970142) (not e!810861))))

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!97715 0))(
  ( (array!97716 (arr!47147 (Array (_ BitVec 32) (_ BitVec 64))) (size!47698 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97715)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11422 0))(
  ( (MissingZero!11422 (index!48079 (_ BitVec 32))) (Found!11422 (index!48080 (_ BitVec 32))) (Intermediate!11422 (undefined!12234 Bool) (index!48081 (_ BitVec 32)) (x!129810 (_ BitVec 32))) (Undefined!11422) (MissingVacant!11422 (index!48082 (_ BitVec 32))) )
))
(declare-fun lt!632191 () SeekEntryResult!11422)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97715 (_ BitVec 32)) SeekEntryResult!11422)

(assert (=> b!1437146 (= res!970142 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47147 a!2862) j!93) a!2862 mask!2687) lt!632191))))

(declare-fun res!970144 () Bool)

(declare-fun e!810862 () Bool)

(assert (=> start!124194 (=> (not res!970144) (not e!810862))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124194 (= res!970144 (validMask!0 mask!2687))))

(assert (=> start!124194 e!810862))

(assert (=> start!124194 true))

(declare-fun array_inv!36092 (array!97715) Bool)

(assert (=> start!124194 (array_inv!36092 a!2862)))

(declare-fun b!1437147 () Bool)

(declare-fun res!970139 () Bool)

(assert (=> b!1437147 (=> (not res!970139) (not e!810862))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97715 (_ BitVec 32)) Bool)

(assert (=> b!1437147 (= res!970139 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1437148 () Bool)

(declare-fun res!970141 () Bool)

(assert (=> b!1437148 (=> (not res!970141) (not e!810862))))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1437148 (= res!970141 (validKeyInArray!0 (select (arr!47147 a!2862) i!1006)))))

(declare-fun b!1437149 () Bool)

(assert (=> b!1437149 (= e!810861 (bvslt mask!2687 #b00000000000000000000000000000000))))

(declare-fun b!1437150 () Bool)

(assert (=> b!1437150 (= e!810862 e!810861)))

(declare-fun res!970140 () Bool)

(assert (=> b!1437150 (=> (not res!970140) (not e!810861))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1437150 (= res!970140 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47147 a!2862) j!93) mask!2687) (select (arr!47147 a!2862) j!93) a!2862 mask!2687) lt!632191))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1437150 (= lt!632191 (Intermediate!11422 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1437151 () Bool)

(declare-fun res!970146 () Bool)

(assert (=> b!1437151 (=> (not res!970146) (not e!810862))))

(assert (=> b!1437151 (= res!970146 (validKeyInArray!0 (select (arr!47147 a!2862) j!93)))))

(declare-fun b!1437152 () Bool)

(declare-fun res!970143 () Bool)

(assert (=> b!1437152 (=> (not res!970143) (not e!810862))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1437152 (= res!970143 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47698 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47698 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47698 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47147 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1437153 () Bool)

(declare-fun res!970145 () Bool)

(assert (=> b!1437153 (=> (not res!970145) (not e!810862))))

(assert (=> b!1437153 (= res!970145 (and (= (size!47698 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47698 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47698 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1437154 () Bool)

(declare-fun res!970138 () Bool)

(assert (=> b!1437154 (=> (not res!970138) (not e!810862))))

(declare-datatypes ((List!33828 0))(
  ( (Nil!33825) (Cons!33824 (h!35162 (_ BitVec 64)) (t!48529 List!33828)) )
))
(declare-fun arrayNoDuplicates!0 (array!97715 (_ BitVec 32) List!33828) Bool)

(assert (=> b!1437154 (= res!970138 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33825))))

(assert (= (and start!124194 res!970144) b!1437153))

(assert (= (and b!1437153 res!970145) b!1437148))

(assert (= (and b!1437148 res!970141) b!1437151))

(assert (= (and b!1437151 res!970146) b!1437147))

(assert (= (and b!1437147 res!970139) b!1437154))

(assert (= (and b!1437154 res!970138) b!1437152))

(assert (= (and b!1437152 res!970143) b!1437150))

(assert (= (and b!1437150 res!970140) b!1437146))

(assert (= (and b!1437146 res!970142) b!1437149))

(declare-fun m!1326527 () Bool)

(assert (=> b!1437147 m!1326527))

(declare-fun m!1326529 () Bool)

(assert (=> b!1437150 m!1326529))

(assert (=> b!1437150 m!1326529))

(declare-fun m!1326531 () Bool)

(assert (=> b!1437150 m!1326531))

(assert (=> b!1437150 m!1326531))

(assert (=> b!1437150 m!1326529))

(declare-fun m!1326533 () Bool)

(assert (=> b!1437150 m!1326533))

(declare-fun m!1326535 () Bool)

(assert (=> b!1437154 m!1326535))

(declare-fun m!1326537 () Bool)

(assert (=> start!124194 m!1326537))

(declare-fun m!1326539 () Bool)

(assert (=> start!124194 m!1326539))

(declare-fun m!1326541 () Bool)

(assert (=> b!1437148 m!1326541))

(assert (=> b!1437148 m!1326541))

(declare-fun m!1326543 () Bool)

(assert (=> b!1437148 m!1326543))

(assert (=> b!1437151 m!1326529))

(assert (=> b!1437151 m!1326529))

(declare-fun m!1326545 () Bool)

(assert (=> b!1437151 m!1326545))

(assert (=> b!1437146 m!1326529))

(assert (=> b!1437146 m!1326529))

(declare-fun m!1326547 () Bool)

(assert (=> b!1437146 m!1326547))

(declare-fun m!1326549 () Bool)

(assert (=> b!1437152 m!1326549))

(declare-fun m!1326551 () Bool)

(assert (=> b!1437152 m!1326551))

(check-sat (not b!1437148) (not b!1437150) (not start!124194) (not b!1437146) (not b!1437147) (not b!1437154) (not b!1437151))
(check-sat)
