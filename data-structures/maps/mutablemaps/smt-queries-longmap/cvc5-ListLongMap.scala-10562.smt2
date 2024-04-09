; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124552 () Bool)

(assert start!124552)

(declare-fun b!1440674 () Bool)

(declare-fun res!973215 () Bool)

(declare-fun e!812267 () Bool)

(assert (=> b!1440674 (=> (not res!973215) (not e!812267))))

(declare-datatypes ((array!97917 0))(
  ( (array!97918 (arr!47242 (Array (_ BitVec 32) (_ BitVec 64))) (size!47793 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97917)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1440674 (= res!973215 (validKeyInArray!0 (select (arr!47242 a!2862) j!93)))))

(declare-fun b!1440675 () Bool)

(declare-fun res!973212 () Bool)

(assert (=> b!1440675 (=> (not res!973212) (not e!812267))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1440675 (= res!973212 (validKeyInArray!0 (select (arr!47242 a!2862) i!1006)))))

(declare-fun b!1440676 () Bool)

(declare-fun res!973216 () Bool)

(assert (=> b!1440676 (=> (not res!973216) (not e!812267))))

(declare-fun mask!2687 () (_ BitVec 32))

(assert (=> b!1440676 (= res!973216 (and (= (size!47793 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47793 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47793 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1440677 () Bool)

(declare-fun e!812266 () Bool)

(assert (=> b!1440677 (= e!812267 e!812266)))

(declare-fun res!973211 () Bool)

(assert (=> b!1440677 (=> (not res!973211) (not e!812266))))

(declare-datatypes ((SeekEntryResult!11517 0))(
  ( (MissingZero!11517 (index!48459 (_ BitVec 32))) (Found!11517 (index!48460 (_ BitVec 32))) (Intermediate!11517 (undefined!12329 Bool) (index!48461 (_ BitVec 32)) (x!130185 (_ BitVec 32))) (Undefined!11517) (MissingVacant!11517 (index!48462 (_ BitVec 32))) )
))
(declare-fun lt!632955 () SeekEntryResult!11517)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97917 (_ BitVec 32)) SeekEntryResult!11517)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1440677 (= res!973211 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47242 a!2862) j!93) mask!2687) (select (arr!47242 a!2862) j!93) a!2862 mask!2687) lt!632955))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1440677 (= lt!632955 (Intermediate!11517 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1440678 () Bool)

(declare-fun res!973210 () Bool)

(assert (=> b!1440678 (=> (not res!973210) (not e!812267))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97917 (_ BitVec 32)) Bool)

(assert (=> b!1440678 (= res!973210 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun res!973213 () Bool)

(assert (=> start!124552 (=> (not res!973213) (not e!812267))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124552 (= res!973213 (validMask!0 mask!2687))))

(assert (=> start!124552 e!812267))

(assert (=> start!124552 true))

(declare-fun array_inv!36187 (array!97917) Bool)

(assert (=> start!124552 (array_inv!36187 a!2862)))

(declare-fun b!1440679 () Bool)

(assert (=> b!1440679 (= e!812266 false)))

(declare-fun lt!632956 () SeekEntryResult!11517)

(assert (=> b!1440679 (= lt!632956 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!47242 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (select (store (arr!47242 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!97918 (store (arr!47242 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47793 a!2862)) mask!2687))))

(declare-fun b!1440680 () Bool)

(declare-fun res!973214 () Bool)

(assert (=> b!1440680 (=> (not res!973214) (not e!812267))))

(declare-datatypes ((List!33923 0))(
  ( (Nil!33920) (Cons!33919 (h!35269 (_ BitVec 64)) (t!48624 List!33923)) )
))
(declare-fun arrayNoDuplicates!0 (array!97917 (_ BitVec 32) List!33923) Bool)

(assert (=> b!1440680 (= res!973214 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33920))))

(declare-fun b!1440681 () Bool)

(declare-fun res!973217 () Bool)

(assert (=> b!1440681 (=> (not res!973217) (not e!812266))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1440681 (= res!973217 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47242 a!2862) j!93) a!2862 mask!2687) lt!632955))))

(declare-fun b!1440682 () Bool)

(declare-fun res!973218 () Bool)

(assert (=> b!1440682 (=> (not res!973218) (not e!812267))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1440682 (= res!973218 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47793 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47793 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47793 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47242 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!124552 res!973213) b!1440676))

(assert (= (and b!1440676 res!973216) b!1440675))

(assert (= (and b!1440675 res!973212) b!1440674))

(assert (= (and b!1440674 res!973215) b!1440678))

(assert (= (and b!1440678 res!973210) b!1440680))

(assert (= (and b!1440680 res!973214) b!1440682))

(assert (= (and b!1440682 res!973218) b!1440677))

(assert (= (and b!1440677 res!973211) b!1440681))

(assert (= (and b!1440681 res!973217) b!1440679))

(declare-fun m!1329957 () Bool)

(assert (=> b!1440682 m!1329957))

(declare-fun m!1329959 () Bool)

(assert (=> b!1440682 m!1329959))

(declare-fun m!1329961 () Bool)

(assert (=> b!1440675 m!1329961))

(assert (=> b!1440675 m!1329961))

(declare-fun m!1329963 () Bool)

(assert (=> b!1440675 m!1329963))

(declare-fun m!1329965 () Bool)

(assert (=> b!1440681 m!1329965))

(assert (=> b!1440681 m!1329965))

(declare-fun m!1329967 () Bool)

(assert (=> b!1440681 m!1329967))

(assert (=> b!1440677 m!1329965))

(assert (=> b!1440677 m!1329965))

(declare-fun m!1329969 () Bool)

(assert (=> b!1440677 m!1329969))

(assert (=> b!1440677 m!1329969))

(assert (=> b!1440677 m!1329965))

(declare-fun m!1329971 () Bool)

(assert (=> b!1440677 m!1329971))

(assert (=> b!1440679 m!1329957))

(declare-fun m!1329973 () Bool)

(assert (=> b!1440679 m!1329973))

(assert (=> b!1440679 m!1329973))

(declare-fun m!1329975 () Bool)

(assert (=> b!1440679 m!1329975))

(assert (=> b!1440679 m!1329975))

(assert (=> b!1440679 m!1329973))

(declare-fun m!1329977 () Bool)

(assert (=> b!1440679 m!1329977))

(declare-fun m!1329979 () Bool)

(assert (=> start!124552 m!1329979))

(declare-fun m!1329981 () Bool)

(assert (=> start!124552 m!1329981))

(declare-fun m!1329983 () Bool)

(assert (=> b!1440678 m!1329983))

(assert (=> b!1440674 m!1329965))

(assert (=> b!1440674 m!1329965))

(declare-fun m!1329985 () Bool)

(assert (=> b!1440674 m!1329985))

(declare-fun m!1329987 () Bool)

(assert (=> b!1440680 m!1329987))

(push 1)

