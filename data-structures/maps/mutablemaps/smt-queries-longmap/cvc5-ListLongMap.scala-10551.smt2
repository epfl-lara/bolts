; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124486 () Bool)

(assert start!124486)

(declare-fun b!1439715 () Bool)

(declare-fun e!811970 () Bool)

(declare-fun e!811968 () Bool)

(assert (=> b!1439715 (= e!811970 e!811968)))

(declare-fun res!972254 () Bool)

(assert (=> b!1439715 (=> (not res!972254) (not e!811968))))

(declare-datatypes ((array!97851 0))(
  ( (array!97852 (arr!47209 (Array (_ BitVec 32) (_ BitVec 64))) (size!47760 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97851)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11484 0))(
  ( (MissingZero!11484 (index!48327 (_ BitVec 32))) (Found!11484 (index!48328 (_ BitVec 32))) (Intermediate!11484 (undefined!12296 Bool) (index!48329 (_ BitVec 32)) (x!130064 (_ BitVec 32))) (Undefined!11484) (MissingVacant!11484 (index!48330 (_ BitVec 32))) )
))
(declare-fun lt!632809 () SeekEntryResult!11484)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97851 (_ BitVec 32)) SeekEntryResult!11484)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1439715 (= res!972254 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47209 a!2862) j!93) mask!2687) (select (arr!47209 a!2862) j!93) a!2862 mask!2687) lt!632809))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1439715 (= lt!632809 (Intermediate!11484 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1439716 () Bool)

(declare-fun res!972259 () Bool)

(assert (=> b!1439716 (=> (not res!972259) (not e!811970))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97851 (_ BitVec 32)) Bool)

(assert (=> b!1439716 (= res!972259 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1439717 () Bool)

(declare-fun res!972261 () Bool)

(assert (=> b!1439717 (=> (not res!972261) (not e!811970))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1439717 (= res!972261 (and (= (size!47760 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47760 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47760 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1439718 () Bool)

(declare-fun res!972260 () Bool)

(assert (=> b!1439718 (=> (not res!972260) (not e!811968))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1439718 (= res!972260 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47209 a!2862) j!93) a!2862 mask!2687) lt!632809))))

(declare-fun b!1439719 () Bool)

(declare-fun res!972253 () Bool)

(assert (=> b!1439719 (=> (not res!972253) (not e!811970))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1439719 (= res!972253 (validKeyInArray!0 (select (arr!47209 a!2862) j!93)))))

(declare-fun res!972255 () Bool)

(assert (=> start!124486 (=> (not res!972255) (not e!811970))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124486 (= res!972255 (validMask!0 mask!2687))))

(assert (=> start!124486 e!811970))

(assert (=> start!124486 true))

(declare-fun array_inv!36154 (array!97851) Bool)

(assert (=> start!124486 (array_inv!36154 a!2862)))

(declare-fun b!1439720 () Bool)

(declare-fun res!972257 () Bool)

(assert (=> b!1439720 (=> (not res!972257) (not e!811970))))

(declare-datatypes ((List!33890 0))(
  ( (Nil!33887) (Cons!33886 (h!35236 (_ BitVec 64)) (t!48591 List!33890)) )
))
(declare-fun arrayNoDuplicates!0 (array!97851 (_ BitVec 32) List!33890) Bool)

(assert (=> b!1439720 (= res!972257 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33887))))

(declare-fun b!1439721 () Bool)

(declare-fun res!972251 () Bool)

(assert (=> b!1439721 (=> (not res!972251) (not e!811968))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1439721 (= res!972251 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!47209 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (select (store (arr!47209 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!97852 (store (arr!47209 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47760 a!2862)) mask!2687) (Intermediate!11484 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun b!1439722 () Bool)

(declare-fun res!972256 () Bool)

(assert (=> b!1439722 (=> (not res!972256) (not e!811968))))

(assert (=> b!1439722 (= res!972256 (and (bvsle x!665 intermediateAfterX!19) (bvsge mask!2687 #b00000000000000000000000000000000) (bvslt index!646 (bvadd #b00000000000000000000000000000001 mask!2687))))))

(declare-fun b!1439723 () Bool)

(declare-fun res!972252 () Bool)

(assert (=> b!1439723 (=> (not res!972252) (not e!811970))))

(assert (=> b!1439723 (= res!972252 (validKeyInArray!0 (select (arr!47209 a!2862) i!1006)))))

(declare-fun b!1439724 () Bool)

(assert (=> b!1439724 (= e!811968 (not (validKeyInArray!0 (select (store (arr!47209 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))))

(declare-fun b!1439725 () Bool)

(declare-fun res!972258 () Bool)

(assert (=> b!1439725 (=> (not res!972258) (not e!811970))))

(assert (=> b!1439725 (= res!972258 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47760 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47760 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47760 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47209 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!124486 res!972255) b!1439717))

(assert (= (and b!1439717 res!972261) b!1439723))

(assert (= (and b!1439723 res!972252) b!1439719))

(assert (= (and b!1439719 res!972253) b!1439716))

(assert (= (and b!1439716 res!972259) b!1439720))

(assert (= (and b!1439720 res!972257) b!1439725))

(assert (= (and b!1439725 res!972258) b!1439715))

(assert (= (and b!1439715 res!972254) b!1439718))

(assert (= (and b!1439718 res!972260) b!1439721))

(assert (= (and b!1439721 res!972251) b!1439722))

(assert (= (and b!1439722 res!972256) b!1439724))

(declare-fun m!1328889 () Bool)

(assert (=> b!1439725 m!1328889))

(declare-fun m!1328891 () Bool)

(assert (=> b!1439725 m!1328891))

(declare-fun m!1328893 () Bool)

(assert (=> b!1439719 m!1328893))

(assert (=> b!1439719 m!1328893))

(declare-fun m!1328895 () Bool)

(assert (=> b!1439719 m!1328895))

(declare-fun m!1328897 () Bool)

(assert (=> start!124486 m!1328897))

(declare-fun m!1328899 () Bool)

(assert (=> start!124486 m!1328899))

(declare-fun m!1328901 () Bool)

(assert (=> b!1439720 m!1328901))

(declare-fun m!1328903 () Bool)

(assert (=> b!1439723 m!1328903))

(assert (=> b!1439723 m!1328903))

(declare-fun m!1328905 () Bool)

(assert (=> b!1439723 m!1328905))

(assert (=> b!1439715 m!1328893))

(assert (=> b!1439715 m!1328893))

(declare-fun m!1328907 () Bool)

(assert (=> b!1439715 m!1328907))

(assert (=> b!1439715 m!1328907))

(assert (=> b!1439715 m!1328893))

(declare-fun m!1328909 () Bool)

(assert (=> b!1439715 m!1328909))

(assert (=> b!1439724 m!1328889))

(declare-fun m!1328911 () Bool)

(assert (=> b!1439724 m!1328911))

(assert (=> b!1439724 m!1328911))

(declare-fun m!1328913 () Bool)

(assert (=> b!1439724 m!1328913))

(declare-fun m!1328915 () Bool)

(assert (=> b!1439716 m!1328915))

(assert (=> b!1439721 m!1328889))

(assert (=> b!1439721 m!1328911))

(assert (=> b!1439721 m!1328911))

(declare-fun m!1328917 () Bool)

(assert (=> b!1439721 m!1328917))

(assert (=> b!1439721 m!1328917))

(assert (=> b!1439721 m!1328911))

(declare-fun m!1328919 () Bool)

(assert (=> b!1439721 m!1328919))

(assert (=> b!1439718 m!1328893))

(assert (=> b!1439718 m!1328893))

(declare-fun m!1328921 () Bool)

(assert (=> b!1439718 m!1328921))

(push 1)

