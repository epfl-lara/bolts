; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124494 () Bool)

(assert start!124494)

(declare-fun b!1439837 () Bool)

(declare-fun res!972375 () Bool)

(declare-fun e!812004 () Bool)

(assert (=> b!1439837 (=> (not res!972375) (not e!812004))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!97859 0))(
  ( (array!97860 (arr!47213 (Array (_ BitVec 32) (_ BitVec 64))) (size!47764 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97859)

(assert (=> b!1439837 (= res!972375 (and (= (size!47764 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47764 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47764 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1439838 () Bool)

(declare-fun res!972380 () Bool)

(assert (=> b!1439838 (=> (not res!972380) (not e!812004))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97859 (_ BitVec 32)) Bool)

(assert (=> b!1439838 (= res!972380 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1439839 () Bool)

(declare-fun res!972376 () Bool)

(assert (=> b!1439839 (=> (not res!972376) (not e!812004))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1439839 (= res!972376 (validKeyInArray!0 (select (arr!47213 a!2862) i!1006)))))

(declare-fun b!1439840 () Bool)

(declare-fun e!812005 () Bool)

(assert (=> b!1439840 (= e!812004 e!812005)))

(declare-fun res!972381 () Bool)

(assert (=> b!1439840 (=> (not res!972381) (not e!812005))))

(declare-datatypes ((SeekEntryResult!11488 0))(
  ( (MissingZero!11488 (index!48343 (_ BitVec 32))) (Found!11488 (index!48344 (_ BitVec 32))) (Intermediate!11488 (undefined!12300 Bool) (index!48345 (_ BitVec 32)) (x!130076 (_ BitVec 32))) (Undefined!11488) (MissingVacant!11488 (index!48346 (_ BitVec 32))) )
))
(declare-fun lt!632826 () SeekEntryResult!11488)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97859 (_ BitVec 32)) SeekEntryResult!11488)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1439840 (= res!972381 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47213 a!2862) j!93) mask!2687) (select (arr!47213 a!2862) j!93) a!2862 mask!2687) lt!632826))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1439840 (= lt!632826 (Intermediate!11488 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1439841 () Bool)

(assert (=> b!1439841 (= e!812005 false)))

(declare-fun lt!632827 () SeekEntryResult!11488)

(assert (=> b!1439841 (= lt!632827 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!47213 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (select (store (arr!47213 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!97860 (store (arr!47213 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47764 a!2862)) mask!2687))))

(declare-fun b!1439842 () Bool)

(declare-fun res!972378 () Bool)

(assert (=> b!1439842 (=> (not res!972378) (not e!812004))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1439842 (= res!972378 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47764 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47764 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47764 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47213 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!972373 () Bool)

(assert (=> start!124494 (=> (not res!972373) (not e!812004))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124494 (= res!972373 (validMask!0 mask!2687))))

(assert (=> start!124494 e!812004))

(assert (=> start!124494 true))

(declare-fun array_inv!36158 (array!97859) Bool)

(assert (=> start!124494 (array_inv!36158 a!2862)))

(declare-fun b!1439843 () Bool)

(declare-fun res!972377 () Bool)

(assert (=> b!1439843 (=> (not res!972377) (not e!812004))))

(assert (=> b!1439843 (= res!972377 (validKeyInArray!0 (select (arr!47213 a!2862) j!93)))))

(declare-fun b!1439844 () Bool)

(declare-fun res!972374 () Bool)

(assert (=> b!1439844 (=> (not res!972374) (not e!812004))))

(declare-datatypes ((List!33894 0))(
  ( (Nil!33891) (Cons!33890 (h!35240 (_ BitVec 64)) (t!48595 List!33894)) )
))
(declare-fun arrayNoDuplicates!0 (array!97859 (_ BitVec 32) List!33894) Bool)

(assert (=> b!1439844 (= res!972374 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33891))))

(declare-fun b!1439845 () Bool)

(declare-fun res!972379 () Bool)

(assert (=> b!1439845 (=> (not res!972379) (not e!812005))))

(assert (=> b!1439845 (= res!972379 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47213 a!2862) j!93) a!2862 mask!2687) lt!632826))))

(assert (= (and start!124494 res!972373) b!1439837))

(assert (= (and b!1439837 res!972375) b!1439839))

(assert (= (and b!1439839 res!972376) b!1439843))

(assert (= (and b!1439843 res!972377) b!1439838))

(assert (= (and b!1439838 res!972380) b!1439844))

(assert (= (and b!1439844 res!972374) b!1439842))

(assert (= (and b!1439842 res!972378) b!1439840))

(assert (= (and b!1439840 res!972381) b!1439845))

(assert (= (and b!1439845 res!972379) b!1439841))

(declare-fun m!1329023 () Bool)

(assert (=> b!1439843 m!1329023))

(assert (=> b!1439843 m!1329023))

(declare-fun m!1329025 () Bool)

(assert (=> b!1439843 m!1329025))

(declare-fun m!1329027 () Bool)

(assert (=> b!1439842 m!1329027))

(declare-fun m!1329029 () Bool)

(assert (=> b!1439842 m!1329029))

(declare-fun m!1329031 () Bool)

(assert (=> b!1439838 m!1329031))

(declare-fun m!1329033 () Bool)

(assert (=> b!1439844 m!1329033))

(assert (=> b!1439840 m!1329023))

(assert (=> b!1439840 m!1329023))

(declare-fun m!1329035 () Bool)

(assert (=> b!1439840 m!1329035))

(assert (=> b!1439840 m!1329035))

(assert (=> b!1439840 m!1329023))

(declare-fun m!1329037 () Bool)

(assert (=> b!1439840 m!1329037))

(declare-fun m!1329039 () Bool)

(assert (=> start!124494 m!1329039))

(declare-fun m!1329041 () Bool)

(assert (=> start!124494 m!1329041))

(assert (=> b!1439845 m!1329023))

(assert (=> b!1439845 m!1329023))

(declare-fun m!1329043 () Bool)

(assert (=> b!1439845 m!1329043))

(declare-fun m!1329045 () Bool)

(assert (=> b!1439839 m!1329045))

(assert (=> b!1439839 m!1329045))

(declare-fun m!1329047 () Bool)

(assert (=> b!1439839 m!1329047))

(assert (=> b!1439841 m!1329027))

(declare-fun m!1329049 () Bool)

(assert (=> b!1439841 m!1329049))

(assert (=> b!1439841 m!1329049))

(declare-fun m!1329051 () Bool)

(assert (=> b!1439841 m!1329051))

(assert (=> b!1439841 m!1329051))

(assert (=> b!1439841 m!1329049))

(declare-fun m!1329053 () Bool)

(assert (=> b!1439841 m!1329053))

(check-sat (not start!124494) (not b!1439838) (not b!1439844) (not b!1439841) (not b!1439839) (not b!1439845) (not b!1439843) (not b!1439840))
(check-sat)
