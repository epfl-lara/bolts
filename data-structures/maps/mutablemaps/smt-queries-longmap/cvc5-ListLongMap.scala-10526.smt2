; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124168 () Bool)

(assert start!124168)

(declare-fun b!1436854 () Bool)

(declare-fun res!969850 () Bool)

(declare-fun e!810778 () Bool)

(assert (=> b!1436854 (=> (not res!969850) (not e!810778))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!97689 0))(
  ( (array!97690 (arr!47134 (Array (_ BitVec 32) (_ BitVec 64))) (size!47685 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97689)

(assert (=> b!1436854 (= res!969850 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47685 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47685 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47685 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47134 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1436855 () Bool)

(declare-fun res!969848 () Bool)

(assert (=> b!1436855 (=> (not res!969848) (not e!810778))))

(declare-datatypes ((List!33815 0))(
  ( (Nil!33812) (Cons!33811 (h!35149 (_ BitVec 64)) (t!48516 List!33815)) )
))
(declare-fun arrayNoDuplicates!0 (array!97689 (_ BitVec 32) List!33815) Bool)

(assert (=> b!1436855 (= res!969848 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33812))))

(declare-fun res!969846 () Bool)

(assert (=> start!124168 (=> (not res!969846) (not e!810778))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124168 (= res!969846 (validMask!0 mask!2687))))

(assert (=> start!124168 e!810778))

(assert (=> start!124168 true))

(declare-fun array_inv!36079 (array!97689) Bool)

(assert (=> start!124168 (array_inv!36079 a!2862)))

(declare-fun b!1436856 () Bool)

(declare-fun res!969851 () Bool)

(assert (=> b!1436856 (=> (not res!969851) (not e!810778))))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1436856 (= res!969851 (and (= (size!47685 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47685 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47685 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1436857 () Bool)

(declare-fun res!969852 () Bool)

(assert (=> b!1436857 (=> (not res!969852) (not e!810778))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1436857 (= res!969852 (validKeyInArray!0 (select (arr!47134 a!2862) i!1006)))))

(declare-fun b!1436858 () Bool)

(assert (=> b!1436858 (= e!810778 false)))

(declare-datatypes ((SeekEntryResult!11409 0))(
  ( (MissingZero!11409 (index!48027 (_ BitVec 32))) (Found!11409 (index!48028 (_ BitVec 32))) (Intermediate!11409 (undefined!12221 Bool) (index!48029 (_ BitVec 32)) (x!129765 (_ BitVec 32))) (Undefined!11409) (MissingVacant!11409 (index!48030 (_ BitVec 32))) )
))
(declare-fun lt!632161 () SeekEntryResult!11409)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97689 (_ BitVec 32)) SeekEntryResult!11409)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1436858 (= lt!632161 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47134 a!2862) j!93) mask!2687) (select (arr!47134 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1436859 () Bool)

(declare-fun res!969847 () Bool)

(assert (=> b!1436859 (=> (not res!969847) (not e!810778))))

(assert (=> b!1436859 (= res!969847 (validKeyInArray!0 (select (arr!47134 a!2862) j!93)))))

(declare-fun b!1436860 () Bool)

(declare-fun res!969849 () Bool)

(assert (=> b!1436860 (=> (not res!969849) (not e!810778))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97689 (_ BitVec 32)) Bool)

(assert (=> b!1436860 (= res!969849 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(assert (= (and start!124168 res!969846) b!1436856))

(assert (= (and b!1436856 res!969851) b!1436857))

(assert (= (and b!1436857 res!969852) b!1436859))

(assert (= (and b!1436859 res!969847) b!1436860))

(assert (= (and b!1436860 res!969849) b!1436855))

(assert (= (and b!1436855 res!969848) b!1436854))

(assert (= (and b!1436854 res!969850) b!1436858))

(declare-fun m!1326213 () Bool)

(assert (=> b!1436855 m!1326213))

(declare-fun m!1326215 () Bool)

(assert (=> b!1436854 m!1326215))

(declare-fun m!1326217 () Bool)

(assert (=> b!1436854 m!1326217))

(declare-fun m!1326219 () Bool)

(assert (=> b!1436859 m!1326219))

(assert (=> b!1436859 m!1326219))

(declare-fun m!1326221 () Bool)

(assert (=> b!1436859 m!1326221))

(assert (=> b!1436858 m!1326219))

(assert (=> b!1436858 m!1326219))

(declare-fun m!1326223 () Bool)

(assert (=> b!1436858 m!1326223))

(assert (=> b!1436858 m!1326223))

(assert (=> b!1436858 m!1326219))

(declare-fun m!1326225 () Bool)

(assert (=> b!1436858 m!1326225))

(declare-fun m!1326227 () Bool)

(assert (=> start!124168 m!1326227))

(declare-fun m!1326229 () Bool)

(assert (=> start!124168 m!1326229))

(declare-fun m!1326231 () Bool)

(assert (=> b!1436857 m!1326231))

(assert (=> b!1436857 m!1326231))

(declare-fun m!1326233 () Bool)

(assert (=> b!1436857 m!1326233))

(declare-fun m!1326235 () Bool)

(assert (=> b!1436860 m!1326235))

(push 1)

(assert (not b!1436860))

(assert (not b!1436858))

(assert (not b!1436857))

(assert (not b!1436859))

(assert (not b!1436855))

(assert (not start!124168))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

