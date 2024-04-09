; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124156 () Bool)

(assert start!124156)

(declare-fun b!1436720 () Bool)

(declare-fun res!969715 () Bool)

(declare-fun e!810743 () Bool)

(assert (=> b!1436720 (=> (not res!969715) (not e!810743))))

(declare-datatypes ((array!97677 0))(
  ( (array!97678 (arr!47128 (Array (_ BitVec 32) (_ BitVec 64))) (size!47679 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97677)

(declare-datatypes ((List!33809 0))(
  ( (Nil!33806) (Cons!33805 (h!35143 (_ BitVec 64)) (t!48510 List!33809)) )
))
(declare-fun arrayNoDuplicates!0 (array!97677 (_ BitVec 32) List!33809) Bool)

(assert (=> b!1436720 (= res!969715 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33806))))

(declare-fun b!1436721 () Bool)

(declare-fun res!969713 () Bool)

(assert (=> b!1436721 (=> (not res!969713) (not e!810743))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1436721 (= res!969713 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47679 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47679 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47679 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47128 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1436722 () Bool)

(declare-fun res!969712 () Bool)

(assert (=> b!1436722 (=> (not res!969712) (not e!810743))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1436722 (= res!969712 (and (= (size!47679 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47679 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47679 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1436723 () Bool)

(declare-fun res!969717 () Bool)

(assert (=> b!1436723 (=> (not res!969717) (not e!810743))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1436723 (= res!969717 (validKeyInArray!0 (select (arr!47128 a!2862) j!93)))))

(declare-fun b!1436719 () Bool)

(assert (=> b!1436719 (= e!810743 false)))

(declare-datatypes ((SeekEntryResult!11403 0))(
  ( (MissingZero!11403 (index!48003 (_ BitVec 32))) (Found!11403 (index!48004 (_ BitVec 32))) (Intermediate!11403 (undefined!12215 Bool) (index!48005 (_ BitVec 32)) (x!129743 (_ BitVec 32))) (Undefined!11403) (MissingVacant!11403 (index!48006 (_ BitVec 32))) )
))
(declare-fun lt!632152 () SeekEntryResult!11403)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97677 (_ BitVec 32)) SeekEntryResult!11403)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1436719 (= lt!632152 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47128 a!2862) j!93) mask!2687) (select (arr!47128 a!2862) j!93) a!2862 mask!2687))))

(declare-fun res!969716 () Bool)

(assert (=> start!124156 (=> (not res!969716) (not e!810743))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124156 (= res!969716 (validMask!0 mask!2687))))

(assert (=> start!124156 e!810743))

(assert (=> start!124156 true))

(declare-fun array_inv!36073 (array!97677) Bool)

(assert (=> start!124156 (array_inv!36073 a!2862)))

(declare-fun b!1436724 () Bool)

(declare-fun res!969714 () Bool)

(assert (=> b!1436724 (=> (not res!969714) (not e!810743))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97677 (_ BitVec 32)) Bool)

(assert (=> b!1436724 (= res!969714 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1436725 () Bool)

(declare-fun res!969711 () Bool)

(assert (=> b!1436725 (=> (not res!969711) (not e!810743))))

(assert (=> b!1436725 (= res!969711 (validKeyInArray!0 (select (arr!47128 a!2862) i!1006)))))

(assert (= (and start!124156 res!969716) b!1436722))

(assert (= (and b!1436722 res!969712) b!1436725))

(assert (= (and b!1436725 res!969711) b!1436723))

(assert (= (and b!1436723 res!969717) b!1436724))

(assert (= (and b!1436724 res!969714) b!1436720))

(assert (= (and b!1436720 res!969715) b!1436721))

(assert (= (and b!1436721 res!969713) b!1436719))

(declare-fun m!1326069 () Bool)

(assert (=> b!1436721 m!1326069))

(declare-fun m!1326071 () Bool)

(assert (=> b!1436721 m!1326071))

(declare-fun m!1326073 () Bool)

(assert (=> b!1436724 m!1326073))

(declare-fun m!1326075 () Bool)

(assert (=> b!1436720 m!1326075))

(declare-fun m!1326077 () Bool)

(assert (=> b!1436723 m!1326077))

(assert (=> b!1436723 m!1326077))

(declare-fun m!1326079 () Bool)

(assert (=> b!1436723 m!1326079))

(declare-fun m!1326081 () Bool)

(assert (=> b!1436725 m!1326081))

(assert (=> b!1436725 m!1326081))

(declare-fun m!1326083 () Bool)

(assert (=> b!1436725 m!1326083))

(declare-fun m!1326085 () Bool)

(assert (=> start!124156 m!1326085))

(declare-fun m!1326087 () Bool)

(assert (=> start!124156 m!1326087))

(assert (=> b!1436719 m!1326077))

(assert (=> b!1436719 m!1326077))

(declare-fun m!1326089 () Bool)

(assert (=> b!1436719 m!1326089))

(assert (=> b!1436719 m!1326089))

(assert (=> b!1436719 m!1326077))

(declare-fun m!1326091 () Bool)

(assert (=> b!1436719 m!1326091))

(push 1)

(assert (not start!124156))

(assert (not b!1436724))

(assert (not b!1436725))

(assert (not b!1436723))

(assert (not b!1436720))

(assert (not b!1436719))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

