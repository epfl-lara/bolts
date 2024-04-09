; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124162 () Bool)

(assert start!124162)

(declare-fun res!969776 () Bool)

(declare-fun e!810761 () Bool)

(assert (=> start!124162 (=> (not res!969776) (not e!810761))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124162 (= res!969776 (validMask!0 mask!2687))))

(assert (=> start!124162 e!810761))

(assert (=> start!124162 true))

(declare-datatypes ((array!97683 0))(
  ( (array!97684 (arr!47131 (Array (_ BitVec 32) (_ BitVec 64))) (size!47682 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97683)

(declare-fun array_inv!36076 (array!97683) Bool)

(assert (=> start!124162 (array_inv!36076 a!2862)))

(declare-fun b!1436784 () Bool)

(declare-fun res!969779 () Bool)

(assert (=> b!1436784 (=> (not res!969779) (not e!810761))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1436784 (= res!969779 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47682 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47682 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47682 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47131 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1436785 () Bool)

(declare-fun res!969780 () Bool)

(assert (=> b!1436785 (=> (not res!969780) (not e!810761))))

(declare-datatypes ((List!33812 0))(
  ( (Nil!33809) (Cons!33808 (h!35146 (_ BitVec 64)) (t!48513 List!33812)) )
))
(declare-fun arrayNoDuplicates!0 (array!97683 (_ BitVec 32) List!33812) Bool)

(assert (=> b!1436785 (= res!969780 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33809))))

(declare-fun b!1436786 () Bool)

(declare-fun res!969783 () Bool)

(assert (=> b!1436786 (=> (not res!969783) (not e!810761))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1436786 (= res!969783 (validKeyInArray!0 (select (arr!47131 a!2862) j!93)))))

(declare-fun b!1436787 () Bool)

(declare-fun res!969781 () Bool)

(assert (=> b!1436787 (=> (not res!969781) (not e!810761))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97683 (_ BitVec 32)) Bool)

(assert (=> b!1436787 (= res!969781 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1436788 () Bool)

(assert (=> b!1436788 (= e!810761 (bvslt mask!2687 #b00000000000000000000000000000000))))

(declare-fun b!1436789 () Bool)

(declare-fun res!969782 () Bool)

(assert (=> b!1436789 (=> (not res!969782) (not e!810761))))

(assert (=> b!1436789 (= res!969782 (and (= (size!47682 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47682 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47682 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1436790 () Bool)

(declare-fun res!969777 () Bool)

(assert (=> b!1436790 (=> (not res!969777) (not e!810761))))

(assert (=> b!1436790 (= res!969777 (validKeyInArray!0 (select (arr!47131 a!2862) i!1006)))))

(declare-fun b!1436791 () Bool)

(declare-fun res!969778 () Bool)

(assert (=> b!1436791 (=> (not res!969778) (not e!810761))))

(declare-datatypes ((SeekEntryResult!11406 0))(
  ( (MissingZero!11406 (index!48015 (_ BitVec 32))) (Found!11406 (index!48016 (_ BitVec 32))) (Intermediate!11406 (undefined!12218 Bool) (index!48017 (_ BitVec 32)) (x!129754 (_ BitVec 32))) (Undefined!11406) (MissingVacant!11406 (index!48018 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97683 (_ BitVec 32)) SeekEntryResult!11406)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1436791 (= res!969778 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47131 a!2862) j!93) mask!2687) (select (arr!47131 a!2862) j!93) a!2862 mask!2687) (Intermediate!11406 false intermediateBeforeIndex!19 intermediateBeforeX!19)))))

(assert (= (and start!124162 res!969776) b!1436789))

(assert (= (and b!1436789 res!969782) b!1436790))

(assert (= (and b!1436790 res!969777) b!1436786))

(assert (= (and b!1436786 res!969783) b!1436787))

(assert (= (and b!1436787 res!969781) b!1436785))

(assert (= (and b!1436785 res!969780) b!1436784))

(assert (= (and b!1436784 res!969779) b!1436791))

(assert (= (and b!1436791 res!969778) b!1436788))

(declare-fun m!1326141 () Bool)

(assert (=> b!1436791 m!1326141))

(assert (=> b!1436791 m!1326141))

(declare-fun m!1326143 () Bool)

(assert (=> b!1436791 m!1326143))

(assert (=> b!1436791 m!1326143))

(assert (=> b!1436791 m!1326141))

(declare-fun m!1326145 () Bool)

(assert (=> b!1436791 m!1326145))

(declare-fun m!1326147 () Bool)

(assert (=> b!1436785 m!1326147))

(assert (=> b!1436786 m!1326141))

(assert (=> b!1436786 m!1326141))

(declare-fun m!1326149 () Bool)

(assert (=> b!1436786 m!1326149))

(declare-fun m!1326151 () Bool)

(assert (=> b!1436784 m!1326151))

(declare-fun m!1326153 () Bool)

(assert (=> b!1436784 m!1326153))

(declare-fun m!1326155 () Bool)

(assert (=> b!1436787 m!1326155))

(declare-fun m!1326157 () Bool)

(assert (=> start!124162 m!1326157))

(declare-fun m!1326159 () Bool)

(assert (=> start!124162 m!1326159))

(declare-fun m!1326161 () Bool)

(assert (=> b!1436790 m!1326161))

(assert (=> b!1436790 m!1326161))

(declare-fun m!1326163 () Bool)

(assert (=> b!1436790 m!1326163))

(push 1)

(assert (not b!1436785))

(assert (not b!1436786))

(assert (not start!124162))

(assert (not b!1436787))

(assert (not b!1436790))

(assert (not b!1436791))

(check-sat)

(pop 1)

(push 1)

(check-sat)

