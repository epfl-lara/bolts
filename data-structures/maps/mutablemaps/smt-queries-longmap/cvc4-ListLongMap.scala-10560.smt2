; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124544 () Bool)

(assert start!124544)

(declare-fun b!1440557 () Bool)

(declare-fun res!973093 () Bool)

(declare-fun e!812231 () Bool)

(assert (=> b!1440557 (=> (not res!973093) (not e!812231))))

(declare-datatypes ((array!97909 0))(
  ( (array!97910 (arr!47238 (Array (_ BitVec 32) (_ BitVec 64))) (size!47789 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97909)

(declare-datatypes ((List!33919 0))(
  ( (Nil!33916) (Cons!33915 (h!35265 (_ BitVec 64)) (t!48620 List!33919)) )
))
(declare-fun arrayNoDuplicates!0 (array!97909 (_ BitVec 32) List!33919) Bool)

(assert (=> b!1440557 (= res!973093 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33916))))

(declare-fun b!1440558 () Bool)

(declare-fun res!973096 () Bool)

(assert (=> b!1440558 (=> (not res!973096) (not e!812231))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1440558 (= res!973096 (and (= (size!47789 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47789 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47789 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1440560 () Bool)

(declare-fun res!973097 () Bool)

(assert (=> b!1440560 (=> (not res!973097) (not e!812231))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1440560 (= res!973097 (validKeyInArray!0 (select (arr!47238 a!2862) i!1006)))))

(declare-fun b!1440561 () Bool)

(declare-fun res!973098 () Bool)

(assert (=> b!1440561 (=> (not res!973098) (not e!812231))))

(assert (=> b!1440561 (= res!973098 (validKeyInArray!0 (select (arr!47238 a!2862) j!93)))))

(declare-fun b!1440562 () Bool)

(declare-fun e!812229 () Bool)

(assert (=> b!1440562 (= e!812231 e!812229)))

(declare-fun res!973094 () Bool)

(assert (=> b!1440562 (=> (not res!973094) (not e!812229))))

(declare-datatypes ((SeekEntryResult!11513 0))(
  ( (MissingZero!11513 (index!48443 (_ BitVec 32))) (Found!11513 (index!48444 (_ BitVec 32))) (Intermediate!11513 (undefined!12325 Bool) (index!48445 (_ BitVec 32)) (x!130165 (_ BitVec 32))) (Undefined!11513) (MissingVacant!11513 (index!48446 (_ BitVec 32))) )
))
(declare-fun lt!632940 () SeekEntryResult!11513)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97909 (_ BitVec 32)) SeekEntryResult!11513)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1440562 (= res!973094 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47238 a!2862) j!93) mask!2687) (select (arr!47238 a!2862) j!93) a!2862 mask!2687) lt!632940))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1440562 (= lt!632940 (Intermediate!11513 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1440563 () Bool)

(declare-fun res!973101 () Bool)

(assert (=> b!1440563 (=> (not res!973101) (not e!812229))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1440563 (= res!973101 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47238 a!2862) j!93) a!2862 mask!2687) lt!632940))))

(declare-fun res!973099 () Bool)

(assert (=> start!124544 (=> (not res!973099) (not e!812231))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124544 (= res!973099 (validMask!0 mask!2687))))

(assert (=> start!124544 e!812231))

(assert (=> start!124544 true))

(declare-fun array_inv!36183 (array!97909) Bool)

(assert (=> start!124544 (array_inv!36183 a!2862)))

(declare-fun b!1440559 () Bool)

(declare-fun res!973100 () Bool)

(assert (=> b!1440559 (=> (not res!973100) (not e!812231))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1440559 (= res!973100 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47789 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47789 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47789 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47238 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1440564 () Bool)

(declare-fun res!973095 () Bool)

(assert (=> b!1440564 (=> (not res!973095) (not e!812231))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97909 (_ BitVec 32)) Bool)

(assert (=> b!1440564 (= res!973095 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1440565 () Bool)

(assert (=> b!1440565 (= e!812229 false)))

(declare-fun lt!632941 () SeekEntryResult!11513)

(assert (=> b!1440565 (= lt!632941 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!47238 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (select (store (arr!47238 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!97910 (store (arr!47238 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47789 a!2862)) mask!2687))))

(assert (= (and start!124544 res!973099) b!1440558))

(assert (= (and b!1440558 res!973096) b!1440560))

(assert (= (and b!1440560 res!973097) b!1440561))

(assert (= (and b!1440561 res!973098) b!1440564))

(assert (= (and b!1440564 res!973095) b!1440557))

(assert (= (and b!1440557 res!973093) b!1440559))

(assert (= (and b!1440559 res!973100) b!1440562))

(assert (= (and b!1440562 res!973094) b!1440563))

(assert (= (and b!1440563 res!973101) b!1440565))

(declare-fun m!1329829 () Bool)

(assert (=> b!1440557 m!1329829))

(declare-fun m!1329831 () Bool)

(assert (=> b!1440563 m!1329831))

(assert (=> b!1440563 m!1329831))

(declare-fun m!1329833 () Bool)

(assert (=> b!1440563 m!1329833))

(declare-fun m!1329835 () Bool)

(assert (=> b!1440560 m!1329835))

(assert (=> b!1440560 m!1329835))

(declare-fun m!1329837 () Bool)

(assert (=> b!1440560 m!1329837))

(assert (=> b!1440561 m!1329831))

(assert (=> b!1440561 m!1329831))

(declare-fun m!1329839 () Bool)

(assert (=> b!1440561 m!1329839))

(declare-fun m!1329841 () Bool)

(assert (=> start!124544 m!1329841))

(declare-fun m!1329843 () Bool)

(assert (=> start!124544 m!1329843))

(declare-fun m!1329845 () Bool)

(assert (=> b!1440565 m!1329845))

(declare-fun m!1329847 () Bool)

(assert (=> b!1440565 m!1329847))

(assert (=> b!1440565 m!1329847))

(declare-fun m!1329849 () Bool)

(assert (=> b!1440565 m!1329849))

(assert (=> b!1440565 m!1329849))

(assert (=> b!1440565 m!1329847))

(declare-fun m!1329851 () Bool)

(assert (=> b!1440565 m!1329851))

(declare-fun m!1329853 () Bool)

(assert (=> b!1440564 m!1329853))

(assert (=> b!1440562 m!1329831))

(assert (=> b!1440562 m!1329831))

(declare-fun m!1329855 () Bool)

(assert (=> b!1440562 m!1329855))

(assert (=> b!1440562 m!1329855))

(assert (=> b!1440562 m!1329831))

(declare-fun m!1329857 () Bool)

(assert (=> b!1440562 m!1329857))

(assert (=> b!1440559 m!1329845))

(declare-fun m!1329859 () Bool)

(assert (=> b!1440559 m!1329859))

(push 1)

(assert (not b!1440565))

(assert (not b!1440561))

(assert (not b!1440560))

(assert (not b!1440563))

(assert (not b!1440562))

(assert (not b!1440557))

(assert (not start!124544))

