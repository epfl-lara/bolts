; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124314 () Bool)

(assert start!124314)

(declare-fun b!1438010 () Bool)

(declare-fun e!811270 () Bool)

(assert (=> b!1438010 (= e!811270 false)))

(declare-fun lt!632431 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!97757 0))(
  ( (array!97758 (arr!47165 (Array (_ BitVec 32) (_ BitVec 64))) (size!47716 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97757)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1438010 (= lt!632431 (toIndex!0 (select (store (arr!47165 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687))))

(declare-fun b!1438012 () Bool)

(declare-fun res!970792 () Bool)

(declare-fun e!811271 () Bool)

(assert (=> b!1438012 (=> (not res!970792) (not e!811271))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1438012 (= res!970792 (validKeyInArray!0 (select (arr!47165 a!2862) j!93)))))

(declare-fun b!1438013 () Bool)

(declare-fun res!970795 () Bool)

(assert (=> b!1438013 (=> (not res!970795) (not e!811271))))

(declare-datatypes ((List!33846 0))(
  ( (Nil!33843) (Cons!33842 (h!35186 (_ BitVec 64)) (t!48547 List!33846)) )
))
(declare-fun arrayNoDuplicates!0 (array!97757 (_ BitVec 32) List!33846) Bool)

(assert (=> b!1438013 (= res!970795 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33843))))

(declare-fun b!1438014 () Bool)

(declare-fun res!970800 () Bool)

(assert (=> b!1438014 (=> (not res!970800) (not e!811271))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97757 (_ BitVec 32)) Bool)

(assert (=> b!1438014 (= res!970800 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1438015 () Bool)

(declare-fun res!970797 () Bool)

(assert (=> b!1438015 (=> (not res!970797) (not e!811270))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11440 0))(
  ( (MissingZero!11440 (index!48151 (_ BitVec 32))) (Found!11440 (index!48152 (_ BitVec 32))) (Intermediate!11440 (undefined!12252 Bool) (index!48153 (_ BitVec 32)) (x!129888 (_ BitVec 32))) (Undefined!11440) (MissingVacant!11440 (index!48154 (_ BitVec 32))) )
))
(declare-fun lt!632430 () SeekEntryResult!11440)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97757 (_ BitVec 32)) SeekEntryResult!11440)

(assert (=> b!1438015 (= res!970797 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47165 a!2862) j!93) a!2862 mask!2687) lt!632430))))

(declare-fun b!1438016 () Bool)

(declare-fun res!970793 () Bool)

(assert (=> b!1438016 (=> (not res!970793) (not e!811271))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1438016 (= res!970793 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47716 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47716 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47716 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47165 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1438017 () Bool)

(assert (=> b!1438017 (= e!811271 e!811270)))

(declare-fun res!970798 () Bool)

(assert (=> b!1438017 (=> (not res!970798) (not e!811270))))

(assert (=> b!1438017 (= res!970798 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47165 a!2862) j!93) mask!2687) (select (arr!47165 a!2862) j!93) a!2862 mask!2687) lt!632430))))

(assert (=> b!1438017 (= lt!632430 (Intermediate!11440 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1438018 () Bool)

(declare-fun res!970799 () Bool)

(assert (=> b!1438018 (=> (not res!970799) (not e!811271))))

(assert (=> b!1438018 (= res!970799 (and (= (size!47716 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47716 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47716 a!2862)) (not (= i!1006 j!93))))))

(declare-fun res!970796 () Bool)

(assert (=> start!124314 (=> (not res!970796) (not e!811271))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124314 (= res!970796 (validMask!0 mask!2687))))

(assert (=> start!124314 e!811271))

(assert (=> start!124314 true))

(declare-fun array_inv!36110 (array!97757) Bool)

(assert (=> start!124314 (array_inv!36110 a!2862)))

(declare-fun b!1438011 () Bool)

(declare-fun res!970794 () Bool)

(assert (=> b!1438011 (=> (not res!970794) (not e!811271))))

(assert (=> b!1438011 (= res!970794 (validKeyInArray!0 (select (arr!47165 a!2862) i!1006)))))

(assert (= (and start!124314 res!970796) b!1438018))

(assert (= (and b!1438018 res!970799) b!1438011))

(assert (= (and b!1438011 res!970794) b!1438012))

(assert (= (and b!1438012 res!970792) b!1438014))

(assert (= (and b!1438014 res!970800) b!1438013))

(assert (= (and b!1438013 res!970795) b!1438016))

(assert (= (and b!1438016 res!970793) b!1438017))

(assert (= (and b!1438017 res!970798) b!1438015))

(assert (= (and b!1438015 res!970797) b!1438010))

(declare-fun m!1327239 () Bool)

(assert (=> b!1438013 m!1327239))

(declare-fun m!1327241 () Bool)

(assert (=> b!1438011 m!1327241))

(assert (=> b!1438011 m!1327241))

(declare-fun m!1327243 () Bool)

(assert (=> b!1438011 m!1327243))

(declare-fun m!1327245 () Bool)

(assert (=> b!1438014 m!1327245))

(declare-fun m!1327247 () Bool)

(assert (=> start!124314 m!1327247))

(declare-fun m!1327249 () Bool)

(assert (=> start!124314 m!1327249))

(declare-fun m!1327251 () Bool)

(assert (=> b!1438015 m!1327251))

(assert (=> b!1438015 m!1327251))

(declare-fun m!1327253 () Bool)

(assert (=> b!1438015 m!1327253))

(declare-fun m!1327255 () Bool)

(assert (=> b!1438016 m!1327255))

(declare-fun m!1327257 () Bool)

(assert (=> b!1438016 m!1327257))

(assert (=> b!1438012 m!1327251))

(assert (=> b!1438012 m!1327251))

(declare-fun m!1327259 () Bool)

(assert (=> b!1438012 m!1327259))

(assert (=> b!1438010 m!1327255))

(declare-fun m!1327261 () Bool)

(assert (=> b!1438010 m!1327261))

(assert (=> b!1438010 m!1327261))

(declare-fun m!1327263 () Bool)

(assert (=> b!1438010 m!1327263))

(assert (=> b!1438017 m!1327251))

(assert (=> b!1438017 m!1327251))

(declare-fun m!1327265 () Bool)

(assert (=> b!1438017 m!1327265))

(assert (=> b!1438017 m!1327265))

(assert (=> b!1438017 m!1327251))

(declare-fun m!1327267 () Bool)

(assert (=> b!1438017 m!1327267))

(check-sat (not b!1438010) (not b!1438017) (not b!1438013) (not b!1438014) (not b!1438015) (not b!1438012) (not start!124314) (not b!1438011))
(check-sat)
