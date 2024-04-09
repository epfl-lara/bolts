; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124190 () Bool)

(assert start!124190)

(declare-fun b!1437094 () Bool)

(declare-fun res!970092 () Bool)

(declare-fun e!810844 () Bool)

(assert (=> b!1437094 (=> (not res!970092) (not e!810844))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!97711 0))(
  ( (array!97712 (arr!47145 (Array (_ BitVec 32) (_ BitVec 64))) (size!47696 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97711)

(assert (=> b!1437094 (= res!970092 (and (= (size!47696 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47696 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47696 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1437095 () Bool)

(declare-fun res!970090 () Bool)

(assert (=> b!1437095 (=> (not res!970090) (not e!810844))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1437095 (= res!970090 (validKeyInArray!0 (select (arr!47145 a!2862) j!93)))))

(declare-fun b!1437096 () Bool)

(declare-fun res!970086 () Bool)

(assert (=> b!1437096 (=> (not res!970086) (not e!810844))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1437096 (= res!970086 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47696 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47696 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47696 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47145 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1437097 () Bool)

(declare-fun res!970089 () Bool)

(assert (=> b!1437097 (=> (not res!970089) (not e!810844))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97711 (_ BitVec 32)) Bool)

(assert (=> b!1437097 (= res!970089 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1437098 () Bool)

(assert (=> b!1437098 (= e!810844 false)))

(declare-datatypes ((SeekEntryResult!11420 0))(
  ( (MissingZero!11420 (index!48071 (_ BitVec 32))) (Found!11420 (index!48072 (_ BitVec 32))) (Intermediate!11420 (undefined!12232 Bool) (index!48073 (_ BitVec 32)) (x!129800 (_ BitVec 32))) (Undefined!11420) (MissingVacant!11420 (index!48074 (_ BitVec 32))) )
))
(declare-fun lt!632185 () SeekEntryResult!11420)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97711 (_ BitVec 32)) SeekEntryResult!11420)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1437098 (= lt!632185 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47145 a!2862) j!93) mask!2687) (select (arr!47145 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1437100 () Bool)

(declare-fun res!970088 () Bool)

(assert (=> b!1437100 (=> (not res!970088) (not e!810844))))

(declare-datatypes ((List!33826 0))(
  ( (Nil!33823) (Cons!33822 (h!35160 (_ BitVec 64)) (t!48527 List!33826)) )
))
(declare-fun arrayNoDuplicates!0 (array!97711 (_ BitVec 32) List!33826) Bool)

(assert (=> b!1437100 (= res!970088 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33823))))

(declare-fun res!970091 () Bool)

(assert (=> start!124190 (=> (not res!970091) (not e!810844))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124190 (= res!970091 (validMask!0 mask!2687))))

(assert (=> start!124190 e!810844))

(assert (=> start!124190 true))

(declare-fun array_inv!36090 (array!97711) Bool)

(assert (=> start!124190 (array_inv!36090 a!2862)))

(declare-fun b!1437099 () Bool)

(declare-fun res!970087 () Bool)

(assert (=> b!1437099 (=> (not res!970087) (not e!810844))))

(assert (=> b!1437099 (= res!970087 (validKeyInArray!0 (select (arr!47145 a!2862) i!1006)))))

(assert (= (and start!124190 res!970091) b!1437094))

(assert (= (and b!1437094 res!970092) b!1437099))

(assert (= (and b!1437099 res!970087) b!1437095))

(assert (= (and b!1437095 res!970090) b!1437097))

(assert (= (and b!1437097 res!970089) b!1437100))

(assert (= (and b!1437100 res!970088) b!1437096))

(assert (= (and b!1437096 res!970086) b!1437098))

(declare-fun m!1326477 () Bool)

(assert (=> start!124190 m!1326477))

(declare-fun m!1326479 () Bool)

(assert (=> start!124190 m!1326479))

(declare-fun m!1326481 () Bool)

(assert (=> b!1437097 m!1326481))

(declare-fun m!1326483 () Bool)

(assert (=> b!1437098 m!1326483))

(assert (=> b!1437098 m!1326483))

(declare-fun m!1326485 () Bool)

(assert (=> b!1437098 m!1326485))

(assert (=> b!1437098 m!1326485))

(assert (=> b!1437098 m!1326483))

(declare-fun m!1326487 () Bool)

(assert (=> b!1437098 m!1326487))

(declare-fun m!1326489 () Bool)

(assert (=> b!1437100 m!1326489))

(declare-fun m!1326491 () Bool)

(assert (=> b!1437096 m!1326491))

(declare-fun m!1326493 () Bool)

(assert (=> b!1437096 m!1326493))

(declare-fun m!1326495 () Bool)

(assert (=> b!1437099 m!1326495))

(assert (=> b!1437099 m!1326495))

(declare-fun m!1326497 () Bool)

(assert (=> b!1437099 m!1326497))

(assert (=> b!1437095 m!1326483))

(assert (=> b!1437095 m!1326483))

(declare-fun m!1326499 () Bool)

(assert (=> b!1437095 m!1326499))

(push 1)

(assert (not start!124190))

(assert (not b!1437095))

(assert (not b!1437100))

(assert (not b!1437098))

(assert (not b!1437099))

(assert (not b!1437097))

(check-sat)

