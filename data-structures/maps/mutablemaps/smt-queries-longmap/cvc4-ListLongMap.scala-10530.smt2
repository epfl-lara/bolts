; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124196 () Bool)

(assert start!124196)

(declare-fun b!1437173 () Bool)

(declare-fun res!970172 () Bool)

(declare-fun e!810871 () Bool)

(assert (=> b!1437173 (=> (not res!970172) (not e!810871))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!97717 0))(
  ( (array!97718 (arr!47148 (Array (_ BitVec 32) (_ BitVec 64))) (size!47699 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97717)

(assert (=> b!1437173 (= res!970172 (and (= (size!47699 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47699 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47699 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1437174 () Bool)

(declare-fun res!970165 () Bool)

(assert (=> b!1437174 (=> (not res!970165) (not e!810871))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1437174 (= res!970165 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47699 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47699 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47699 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47148 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1437175 () Bool)

(declare-fun res!970171 () Bool)

(assert (=> b!1437175 (=> (not res!970171) (not e!810871))))

(declare-datatypes ((List!33829 0))(
  ( (Nil!33826) (Cons!33825 (h!35163 (_ BitVec 64)) (t!48530 List!33829)) )
))
(declare-fun arrayNoDuplicates!0 (array!97717 (_ BitVec 32) List!33829) Bool)

(assert (=> b!1437175 (= res!970171 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33826))))

(declare-fun res!970167 () Bool)

(assert (=> start!124196 (=> (not res!970167) (not e!810871))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124196 (= res!970167 (validMask!0 mask!2687))))

(assert (=> start!124196 e!810871))

(assert (=> start!124196 true))

(declare-fun array_inv!36093 (array!97717) Bool)

(assert (=> start!124196 (array_inv!36093 a!2862)))

(declare-fun b!1437176 () Bool)

(declare-fun e!810872 () Bool)

(assert (=> b!1437176 (= e!810872 (bvslt mask!2687 #b00000000000000000000000000000000))))

(declare-fun b!1437177 () Bool)

(declare-fun res!970168 () Bool)

(assert (=> b!1437177 (=> (not res!970168) (not e!810871))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1437177 (= res!970168 (validKeyInArray!0 (select (arr!47148 a!2862) j!93)))))

(declare-fun b!1437178 () Bool)

(declare-fun res!970170 () Bool)

(assert (=> b!1437178 (=> (not res!970170) (not e!810871))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97717 (_ BitVec 32)) Bool)

(assert (=> b!1437178 (= res!970170 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1437179 () Bool)

(assert (=> b!1437179 (= e!810871 e!810872)))

(declare-fun res!970166 () Bool)

(assert (=> b!1437179 (=> (not res!970166) (not e!810872))))

(declare-datatypes ((SeekEntryResult!11423 0))(
  ( (MissingZero!11423 (index!48083 (_ BitVec 32))) (Found!11423 (index!48084 (_ BitVec 32))) (Intermediate!11423 (undefined!12235 Bool) (index!48085 (_ BitVec 32)) (x!129811 (_ BitVec 32))) (Undefined!11423) (MissingVacant!11423 (index!48086 (_ BitVec 32))) )
))
(declare-fun lt!632194 () SeekEntryResult!11423)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97717 (_ BitVec 32)) SeekEntryResult!11423)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1437179 (= res!970166 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47148 a!2862) j!93) mask!2687) (select (arr!47148 a!2862) j!93) a!2862 mask!2687) lt!632194))))

(assert (=> b!1437179 (= lt!632194 (Intermediate!11423 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1437180 () Bool)

(declare-fun res!970173 () Bool)

(assert (=> b!1437180 (=> (not res!970173) (not e!810872))))

(assert (=> b!1437180 (= res!970173 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47148 a!2862) j!93) a!2862 mask!2687) lt!632194))))

(declare-fun b!1437181 () Bool)

(declare-fun res!970169 () Bool)

(assert (=> b!1437181 (=> (not res!970169) (not e!810871))))

(assert (=> b!1437181 (= res!970169 (validKeyInArray!0 (select (arr!47148 a!2862) i!1006)))))

(assert (= (and start!124196 res!970167) b!1437173))

(assert (= (and b!1437173 res!970172) b!1437181))

(assert (= (and b!1437181 res!970169) b!1437177))

(assert (= (and b!1437177 res!970168) b!1437178))

(assert (= (and b!1437178 res!970170) b!1437175))

(assert (= (and b!1437175 res!970171) b!1437174))

(assert (= (and b!1437174 res!970165) b!1437179))

(assert (= (and b!1437179 res!970166) b!1437180))

(assert (= (and b!1437180 res!970173) b!1437176))

(declare-fun m!1326553 () Bool)

(assert (=> b!1437179 m!1326553))

(assert (=> b!1437179 m!1326553))

(declare-fun m!1326555 () Bool)

(assert (=> b!1437179 m!1326555))

(assert (=> b!1437179 m!1326555))

(assert (=> b!1437179 m!1326553))

(declare-fun m!1326557 () Bool)

(assert (=> b!1437179 m!1326557))

(declare-fun m!1326559 () Bool)

(assert (=> b!1437181 m!1326559))

(assert (=> b!1437181 m!1326559))

(declare-fun m!1326561 () Bool)

(assert (=> b!1437181 m!1326561))

(declare-fun m!1326563 () Bool)

(assert (=> b!1437175 m!1326563))

(assert (=> b!1437177 m!1326553))

(assert (=> b!1437177 m!1326553))

(declare-fun m!1326565 () Bool)

(assert (=> b!1437177 m!1326565))

(declare-fun m!1326567 () Bool)

(assert (=> b!1437178 m!1326567))

(declare-fun m!1326569 () Bool)

(assert (=> start!124196 m!1326569))

(declare-fun m!1326571 () Bool)

(assert (=> start!124196 m!1326571))

(assert (=> b!1437180 m!1326553))

(assert (=> b!1437180 m!1326553))

(declare-fun m!1326573 () Bool)

(assert (=> b!1437180 m!1326573))

(declare-fun m!1326575 () Bool)

(assert (=> b!1437174 m!1326575))

(declare-fun m!1326577 () Bool)

(assert (=> b!1437174 m!1326577))

(push 1)

(assert (not b!1437181))

(assert (not b!1437180))

(assert (not b!1437178))

(assert (not start!124196))

(assert (not b!1437177))

(assert (not b!1437179))

(assert (not b!1437175))

(check-sat)

(pop 1)

(push 1)

(check-sat)

