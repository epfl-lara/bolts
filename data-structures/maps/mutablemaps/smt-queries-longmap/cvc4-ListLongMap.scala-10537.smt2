; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124322 () Bool)

(assert start!124322)

(declare-fun b!1438126 () Bool)

(declare-fun res!970908 () Bool)

(declare-fun e!811316 () Bool)

(assert (=> b!1438126 (=> (not res!970908) (not e!811316))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!97765 0))(
  ( (array!97766 (arr!47169 (Array (_ BitVec 32) (_ BitVec 64))) (size!47720 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97765)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11444 0))(
  ( (MissingZero!11444 (index!48167 (_ BitVec 32))) (Found!11444 (index!48168 (_ BitVec 32))) (Intermediate!11444 (undefined!12256 Bool) (index!48169 (_ BitVec 32)) (x!129900 (_ BitVec 32))) (Undefined!11444) (MissingVacant!11444 (index!48170 (_ BitVec 32))) )
))
(declare-fun lt!632454 () SeekEntryResult!11444)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97765 (_ BitVec 32)) SeekEntryResult!11444)

(assert (=> b!1438126 (= res!970908 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47169 a!2862) j!93) a!2862 mask!2687) lt!632454))))

(declare-fun res!970910 () Bool)

(declare-fun e!811314 () Bool)

(assert (=> start!124322 (=> (not res!970910) (not e!811314))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124322 (= res!970910 (validMask!0 mask!2687))))

(assert (=> start!124322 e!811314))

(assert (=> start!124322 true))

(declare-fun array_inv!36114 (array!97765) Bool)

(assert (=> start!124322 (array_inv!36114 a!2862)))

(declare-fun b!1438127 () Bool)

(declare-fun res!970916 () Bool)

(assert (=> b!1438127 (=> (not res!970916) (not e!811314))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97765 (_ BitVec 32)) Bool)

(assert (=> b!1438127 (= res!970916 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1438128 () Bool)

(declare-fun res!970911 () Bool)

(assert (=> b!1438128 (=> (not res!970911) (not e!811314))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1438128 (= res!970911 (and (= (size!47720 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47720 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47720 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1438129 () Bool)

(declare-fun res!970913 () Bool)

(assert (=> b!1438129 (=> (not res!970913) (not e!811314))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1438129 (= res!970913 (validKeyInArray!0 (select (arr!47169 a!2862) j!93)))))

(declare-fun b!1438130 () Bool)

(declare-fun res!970912 () Bool)

(assert (=> b!1438130 (=> (not res!970912) (not e!811314))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1438130 (= res!970912 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47720 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47720 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47720 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47169 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1438131 () Bool)

(declare-fun e!811315 () Bool)

(assert (=> b!1438131 (= e!811316 e!811315)))

(declare-fun res!970914 () Bool)

(assert (=> b!1438131 (=> (not res!970914) (not e!811315))))

(declare-fun lt!632455 () (_ BitVec 32))

(assert (=> b!1438131 (= res!970914 (and (bvsge mask!2687 #b00000000000000000000000000000000) (bvsge lt!632455 #b00000000000000000000000000000000) (bvslt lt!632455 (bvadd #b00000000000000000000000000000001 mask!2687))))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1438131 (= lt!632455 (toIndex!0 (select (store (arr!47169 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687))))

(declare-fun b!1438132 () Bool)

(declare-fun res!970915 () Bool)

(assert (=> b!1438132 (=> (not res!970915) (not e!811314))))

(assert (=> b!1438132 (= res!970915 (validKeyInArray!0 (select (arr!47169 a!2862) i!1006)))))

(declare-fun b!1438133 () Bool)

(declare-fun res!970909 () Bool)

(assert (=> b!1438133 (=> (not res!970909) (not e!811314))))

(declare-datatypes ((List!33850 0))(
  ( (Nil!33847) (Cons!33846 (h!35190 (_ BitVec 64)) (t!48551 List!33850)) )
))
(declare-fun arrayNoDuplicates!0 (array!97765 (_ BitVec 32) List!33850) Bool)

(assert (=> b!1438133 (= res!970909 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33847))))

(declare-fun b!1438134 () Bool)

(assert (=> b!1438134 (= e!811315 (not (validKeyInArray!0 (select (store (arr!47169 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))))

(declare-fun b!1438135 () Bool)

(assert (=> b!1438135 (= e!811314 e!811316)))

(declare-fun res!970917 () Bool)

(assert (=> b!1438135 (=> (not res!970917) (not e!811316))))

(assert (=> b!1438135 (= res!970917 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47169 a!2862) j!93) mask!2687) (select (arr!47169 a!2862) j!93) a!2862 mask!2687) lt!632454))))

(assert (=> b!1438135 (= lt!632454 (Intermediate!11444 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(assert (= (and start!124322 res!970910) b!1438128))

(assert (= (and b!1438128 res!970911) b!1438132))

(assert (= (and b!1438132 res!970915) b!1438129))

(assert (= (and b!1438129 res!970913) b!1438127))

(assert (= (and b!1438127 res!970916) b!1438133))

(assert (= (and b!1438133 res!970909) b!1438130))

(assert (= (and b!1438130 res!970912) b!1438135))

(assert (= (and b!1438135 res!970917) b!1438126))

(assert (= (and b!1438126 res!970908) b!1438131))

(assert (= (and b!1438131 res!970914) b!1438134))

(declare-fun m!1327363 () Bool)

(assert (=> b!1438129 m!1327363))

(assert (=> b!1438129 m!1327363))

(declare-fun m!1327365 () Bool)

(assert (=> b!1438129 m!1327365))

(assert (=> b!1438135 m!1327363))

(assert (=> b!1438135 m!1327363))

(declare-fun m!1327367 () Bool)

(assert (=> b!1438135 m!1327367))

(assert (=> b!1438135 m!1327367))

(assert (=> b!1438135 m!1327363))

(declare-fun m!1327369 () Bool)

(assert (=> b!1438135 m!1327369))

(declare-fun m!1327371 () Bool)

(assert (=> b!1438131 m!1327371))

(declare-fun m!1327373 () Bool)

(assert (=> b!1438131 m!1327373))

(assert (=> b!1438131 m!1327373))

(declare-fun m!1327375 () Bool)

(assert (=> b!1438131 m!1327375))

(declare-fun m!1327377 () Bool)

(assert (=> b!1438127 m!1327377))

(declare-fun m!1327379 () Bool)

(assert (=> start!124322 m!1327379))

(declare-fun m!1327381 () Bool)

(assert (=> start!124322 m!1327381))

(assert (=> b!1438134 m!1327371))

(assert (=> b!1438134 m!1327373))

(assert (=> b!1438134 m!1327373))

(declare-fun m!1327383 () Bool)

(assert (=> b!1438134 m!1327383))

(declare-fun m!1327385 () Bool)

(assert (=> b!1438132 m!1327385))

(assert (=> b!1438132 m!1327385))

(declare-fun m!1327387 () Bool)

(assert (=> b!1438132 m!1327387))

(assert (=> b!1438130 m!1327371))

(declare-fun m!1327389 () Bool)

(assert (=> b!1438130 m!1327389))

(assert (=> b!1438126 m!1327363))

(assert (=> b!1438126 m!1327363))

(declare-fun m!1327391 () Bool)

(assert (=> b!1438126 m!1327391))

(declare-fun m!1327393 () Bool)

(assert (=> b!1438133 m!1327393))

(push 1)

(assert (not b!1438132))

(assert (not start!124322))

(assert (not b!1438131))

(assert (not b!1438129))

(assert (not b!1438134))

(assert (not b!1438133))

(assert (not b!1438135))

(assert (not b!1438127))

(assert (not b!1438126))

(check-sat)

