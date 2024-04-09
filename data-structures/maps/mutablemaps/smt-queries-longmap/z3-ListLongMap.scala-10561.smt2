; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124548 () Bool)

(assert start!124548)

(declare-fun res!973160 () Bool)

(declare-fun e!812248 () Bool)

(assert (=> start!124548 (=> (not res!973160) (not e!812248))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124548 (= res!973160 (validMask!0 mask!2687))))

(assert (=> start!124548 e!812248))

(assert (=> start!124548 true))

(declare-datatypes ((array!97913 0))(
  ( (array!97914 (arr!47240 (Array (_ BitVec 32) (_ BitVec 64))) (size!47791 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97913)

(declare-fun array_inv!36185 (array!97913) Bool)

(assert (=> start!124548 (array_inv!36185 a!2862)))

(declare-fun b!1440616 () Bool)

(declare-fun res!973152 () Bool)

(assert (=> b!1440616 (=> (not res!973152) (not e!812248))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97913 (_ BitVec 32)) Bool)

(assert (=> b!1440616 (= res!973152 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1440617 () Bool)

(declare-fun e!812249 () Bool)

(assert (=> b!1440617 (= e!812248 e!812249)))

(declare-fun res!973155 () Bool)

(assert (=> b!1440617 (=> (not res!973155) (not e!812249))))

(declare-datatypes ((SeekEntryResult!11515 0))(
  ( (MissingZero!11515 (index!48451 (_ BitVec 32))) (Found!11515 (index!48452 (_ BitVec 32))) (Intermediate!11515 (undefined!12327 Bool) (index!48453 (_ BitVec 32)) (x!130175 (_ BitVec 32))) (Undefined!11515) (MissingVacant!11515 (index!48454 (_ BitVec 32))) )
))
(declare-fun lt!632947 () SeekEntryResult!11515)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97913 (_ BitVec 32)) SeekEntryResult!11515)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1440617 (= res!973155 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47240 a!2862) j!93) mask!2687) (select (arr!47240 a!2862) j!93) a!2862 mask!2687) lt!632947))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1440617 (= lt!632947 (Intermediate!11515 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1440618 () Bool)

(declare-fun res!973157 () Bool)

(assert (=> b!1440618 (=> (not res!973157) (not e!812248))))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1440618 (= res!973157 (validKeyInArray!0 (select (arr!47240 a!2862) i!1006)))))

(declare-fun b!1440619 () Bool)

(declare-fun res!973156 () Bool)

(assert (=> b!1440619 (=> (not res!973156) (not e!812249))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1440619 (= res!973156 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!47240 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (select (store (arr!47240 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!97914 (store (arr!47240 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47791 a!2862)) mask!2687) (Intermediate!11515 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun b!1440620 () Bool)

(assert (=> b!1440620 (= e!812249 (and (bvsgt x!665 intermediateAfterX!19) (bvslt mask!2687 #b00000000000000000000000000000000)))))

(declare-fun b!1440621 () Bool)

(declare-fun res!973154 () Bool)

(assert (=> b!1440621 (=> (not res!973154) (not e!812248))))

(declare-datatypes ((List!33921 0))(
  ( (Nil!33918) (Cons!33917 (h!35267 (_ BitVec 64)) (t!48622 List!33921)) )
))
(declare-fun arrayNoDuplicates!0 (array!97913 (_ BitVec 32) List!33921) Bool)

(assert (=> b!1440621 (= res!973154 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33918))))

(declare-fun b!1440622 () Bool)

(declare-fun res!973153 () Bool)

(assert (=> b!1440622 (=> (not res!973153) (not e!812249))))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1440622 (= res!973153 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47240 a!2862) j!93) a!2862 mask!2687) lt!632947))))

(declare-fun b!1440623 () Bool)

(declare-fun res!973158 () Bool)

(assert (=> b!1440623 (=> (not res!973158) (not e!812248))))

(assert (=> b!1440623 (= res!973158 (validKeyInArray!0 (select (arr!47240 a!2862) j!93)))))

(declare-fun b!1440624 () Bool)

(declare-fun res!973161 () Bool)

(assert (=> b!1440624 (=> (not res!973161) (not e!812248))))

(assert (=> b!1440624 (= res!973161 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47791 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47791 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47791 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47240 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1440625 () Bool)

(declare-fun res!973159 () Bool)

(assert (=> b!1440625 (=> (not res!973159) (not e!812248))))

(assert (=> b!1440625 (= res!973159 (and (= (size!47791 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47791 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47791 a!2862)) (not (= i!1006 j!93))))))

(assert (= (and start!124548 res!973160) b!1440625))

(assert (= (and b!1440625 res!973159) b!1440618))

(assert (= (and b!1440618 res!973157) b!1440623))

(assert (= (and b!1440623 res!973158) b!1440616))

(assert (= (and b!1440616 res!973152) b!1440621))

(assert (= (and b!1440621 res!973154) b!1440624))

(assert (= (and b!1440624 res!973161) b!1440617))

(assert (= (and b!1440617 res!973155) b!1440622))

(assert (= (and b!1440622 res!973153) b!1440619))

(assert (= (and b!1440619 res!973156) b!1440620))

(declare-fun m!1329893 () Bool)

(assert (=> b!1440624 m!1329893))

(declare-fun m!1329895 () Bool)

(assert (=> b!1440624 m!1329895))

(declare-fun m!1329897 () Bool)

(assert (=> b!1440617 m!1329897))

(assert (=> b!1440617 m!1329897))

(declare-fun m!1329899 () Bool)

(assert (=> b!1440617 m!1329899))

(assert (=> b!1440617 m!1329899))

(assert (=> b!1440617 m!1329897))

(declare-fun m!1329901 () Bool)

(assert (=> b!1440617 m!1329901))

(assert (=> b!1440619 m!1329893))

(declare-fun m!1329903 () Bool)

(assert (=> b!1440619 m!1329903))

(assert (=> b!1440619 m!1329903))

(declare-fun m!1329905 () Bool)

(assert (=> b!1440619 m!1329905))

(assert (=> b!1440619 m!1329905))

(assert (=> b!1440619 m!1329903))

(declare-fun m!1329907 () Bool)

(assert (=> b!1440619 m!1329907))

(declare-fun m!1329909 () Bool)

(assert (=> start!124548 m!1329909))

(declare-fun m!1329911 () Bool)

(assert (=> start!124548 m!1329911))

(declare-fun m!1329913 () Bool)

(assert (=> b!1440621 m!1329913))

(declare-fun m!1329915 () Bool)

(assert (=> b!1440618 m!1329915))

(assert (=> b!1440618 m!1329915))

(declare-fun m!1329917 () Bool)

(assert (=> b!1440618 m!1329917))

(assert (=> b!1440622 m!1329897))

(assert (=> b!1440622 m!1329897))

(declare-fun m!1329919 () Bool)

(assert (=> b!1440622 m!1329919))

(declare-fun m!1329921 () Bool)

(assert (=> b!1440616 m!1329921))

(assert (=> b!1440623 m!1329897))

(assert (=> b!1440623 m!1329897))

(declare-fun m!1329923 () Bool)

(assert (=> b!1440623 m!1329923))

(check-sat (not b!1440622) (not b!1440619) (not b!1440616) (not b!1440621) (not b!1440618) (not start!124548) (not b!1440623) (not b!1440617))
(check-sat)
