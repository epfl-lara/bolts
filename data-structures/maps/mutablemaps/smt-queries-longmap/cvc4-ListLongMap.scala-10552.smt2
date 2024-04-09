; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124496 () Bool)

(assert start!124496)

(declare-fun b!1439864 () Bool)

(declare-fun res!972408 () Bool)

(declare-fun e!812015 () Bool)

(assert (=> b!1439864 (=> (not res!972408) (not e!812015))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11489 0))(
  ( (MissingZero!11489 (index!48347 (_ BitVec 32))) (Found!11489 (index!48348 (_ BitVec 32))) (Intermediate!11489 (undefined!12301 Bool) (index!48349 (_ BitVec 32)) (x!130077 (_ BitVec 32))) (Undefined!11489) (MissingVacant!11489 (index!48350 (_ BitVec 32))) )
))
(declare-fun lt!632833 () SeekEntryResult!11489)

(declare-datatypes ((array!97861 0))(
  ( (array!97862 (arr!47214 (Array (_ BitVec 32) (_ BitVec 64))) (size!47765 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97861)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97861 (_ BitVec 32)) SeekEntryResult!11489)

(assert (=> b!1439864 (= res!972408 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47214 a!2862) j!93) a!2862 mask!2687) lt!632833))))

(declare-fun b!1439865 () Bool)

(declare-fun res!972406 () Bool)

(declare-fun e!812014 () Bool)

(assert (=> b!1439865 (=> (not res!972406) (not e!812014))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1439865 (= res!972406 (validKeyInArray!0 (select (arr!47214 a!2862) j!93)))))

(declare-fun b!1439866 () Bool)

(declare-fun res!972405 () Bool)

(assert (=> b!1439866 (=> (not res!972405) (not e!812014))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1439866 (= res!972405 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47765 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47765 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47765 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47214 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1439867 () Bool)

(assert (=> b!1439867 (= e!812014 e!812015)))

(declare-fun res!972407 () Bool)

(assert (=> b!1439867 (=> (not res!972407) (not e!812015))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1439867 (= res!972407 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47214 a!2862) j!93) mask!2687) (select (arr!47214 a!2862) j!93) a!2862 mask!2687) lt!632833))))

(assert (=> b!1439867 (= lt!632833 (Intermediate!11489 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1439868 () Bool)

(declare-fun res!972400 () Bool)

(assert (=> b!1439868 (=> (not res!972400) (not e!812014))))

(declare-datatypes ((List!33895 0))(
  ( (Nil!33892) (Cons!33891 (h!35241 (_ BitVec 64)) (t!48596 List!33895)) )
))
(declare-fun arrayNoDuplicates!0 (array!97861 (_ BitVec 32) List!33895) Bool)

(assert (=> b!1439868 (= res!972400 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33892))))

(declare-fun b!1439869 () Bool)

(assert (=> b!1439869 (= e!812015 false)))

(declare-fun lt!632832 () SeekEntryResult!11489)

(assert (=> b!1439869 (= lt!632832 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!47214 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (select (store (arr!47214 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!97862 (store (arr!47214 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47765 a!2862)) mask!2687))))

(declare-fun b!1439870 () Bool)

(declare-fun res!972401 () Bool)

(assert (=> b!1439870 (=> (not res!972401) (not e!812014))))

(assert (=> b!1439870 (= res!972401 (validKeyInArray!0 (select (arr!47214 a!2862) i!1006)))))

(declare-fun b!1439872 () Bool)

(declare-fun res!972404 () Bool)

(assert (=> b!1439872 (=> (not res!972404) (not e!812014))))

(assert (=> b!1439872 (= res!972404 (and (= (size!47765 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47765 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47765 a!2862)) (not (= i!1006 j!93))))))

(declare-fun res!972402 () Bool)

(assert (=> start!124496 (=> (not res!972402) (not e!812014))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124496 (= res!972402 (validMask!0 mask!2687))))

(assert (=> start!124496 e!812014))

(assert (=> start!124496 true))

(declare-fun array_inv!36159 (array!97861) Bool)

(assert (=> start!124496 (array_inv!36159 a!2862)))

(declare-fun b!1439871 () Bool)

(declare-fun res!972403 () Bool)

(assert (=> b!1439871 (=> (not res!972403) (not e!812014))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97861 (_ BitVec 32)) Bool)

(assert (=> b!1439871 (= res!972403 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(assert (= (and start!124496 res!972402) b!1439872))

(assert (= (and b!1439872 res!972404) b!1439870))

(assert (= (and b!1439870 res!972401) b!1439865))

(assert (= (and b!1439865 res!972406) b!1439871))

(assert (= (and b!1439871 res!972403) b!1439868))

(assert (= (and b!1439868 res!972400) b!1439866))

(assert (= (and b!1439866 res!972405) b!1439867))

(assert (= (and b!1439867 res!972407) b!1439864))

(assert (= (and b!1439864 res!972408) b!1439869))

(declare-fun m!1329055 () Bool)

(assert (=> b!1439865 m!1329055))

(assert (=> b!1439865 m!1329055))

(declare-fun m!1329057 () Bool)

(assert (=> b!1439865 m!1329057))

(assert (=> b!1439867 m!1329055))

(assert (=> b!1439867 m!1329055))

(declare-fun m!1329059 () Bool)

(assert (=> b!1439867 m!1329059))

(assert (=> b!1439867 m!1329059))

(assert (=> b!1439867 m!1329055))

(declare-fun m!1329061 () Bool)

(assert (=> b!1439867 m!1329061))

(declare-fun m!1329063 () Bool)

(assert (=> start!124496 m!1329063))

(declare-fun m!1329065 () Bool)

(assert (=> start!124496 m!1329065))

(declare-fun m!1329067 () Bool)

(assert (=> b!1439869 m!1329067))

(declare-fun m!1329069 () Bool)

(assert (=> b!1439869 m!1329069))

(assert (=> b!1439869 m!1329069))

(declare-fun m!1329071 () Bool)

(assert (=> b!1439869 m!1329071))

(assert (=> b!1439869 m!1329071))

(assert (=> b!1439869 m!1329069))

(declare-fun m!1329073 () Bool)

(assert (=> b!1439869 m!1329073))

(declare-fun m!1329075 () Bool)

(assert (=> b!1439871 m!1329075))

(declare-fun m!1329077 () Bool)

(assert (=> b!1439868 m!1329077))

(assert (=> b!1439864 m!1329055))

(assert (=> b!1439864 m!1329055))

(declare-fun m!1329079 () Bool)

(assert (=> b!1439864 m!1329079))

(declare-fun m!1329081 () Bool)

(assert (=> b!1439870 m!1329081))

(assert (=> b!1439870 m!1329081))

(declare-fun m!1329083 () Bool)

(assert (=> b!1439870 m!1329083))

(assert (=> b!1439866 m!1329067))

(declare-fun m!1329085 () Bool)

(assert (=> b!1439866 m!1329085))

(push 1)

(assert (not b!1439865))

(assert (not b!1439869))

(assert (not b!1439867))

(assert (not b!1439868))

(assert (not start!124496))

(assert (not b!1439870))

(assert (not b!1439871))

(assert (not b!1439864))

(check-sat)

