; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124180 () Bool)

(assert start!124180)

(declare-fun b!1436989 () Bool)

(declare-fun res!969981 () Bool)

(declare-fun e!810814 () Bool)

(assert (=> b!1436989 (=> (not res!969981) (not e!810814))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!97701 0))(
  ( (array!97702 (arr!47140 (Array (_ BitVec 32) (_ BitVec 64))) (size!47691 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97701)

(assert (=> b!1436989 (= res!969981 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47691 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47691 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47691 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47140 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1436990 () Bool)

(declare-fun res!969983 () Bool)

(assert (=> b!1436990 (=> (not res!969983) (not e!810814))))

(declare-datatypes ((List!33821 0))(
  ( (Nil!33818) (Cons!33817 (h!35155 (_ BitVec 64)) (t!48522 List!33821)) )
))
(declare-fun arrayNoDuplicates!0 (array!97701 (_ BitVec 32) List!33821) Bool)

(assert (=> b!1436990 (= res!969983 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33818))))

(declare-fun res!969986 () Bool)

(assert (=> start!124180 (=> (not res!969986) (not e!810814))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124180 (= res!969986 (validMask!0 mask!2687))))

(assert (=> start!124180 e!810814))

(assert (=> start!124180 true))

(declare-fun array_inv!36085 (array!97701) Bool)

(assert (=> start!124180 (array_inv!36085 a!2862)))

(declare-fun b!1436991 () Bool)

(declare-fun res!969984 () Bool)

(assert (=> b!1436991 (=> (not res!969984) (not e!810814))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1436991 (= res!969984 (validKeyInArray!0 (select (arr!47140 a!2862) i!1006)))))

(declare-fun b!1436992 () Bool)

(declare-fun res!969987 () Bool)

(assert (=> b!1436992 (=> (not res!969987) (not e!810814))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97701 (_ BitVec 32)) Bool)

(assert (=> b!1436992 (= res!969987 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1436993 () Bool)

(declare-fun res!969985 () Bool)

(assert (=> b!1436993 (=> (not res!969985) (not e!810814))))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1436993 (= res!969985 (and (= (size!47691 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47691 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47691 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1436994 () Bool)

(declare-fun res!969982 () Bool)

(assert (=> b!1436994 (=> (not res!969982) (not e!810814))))

(assert (=> b!1436994 (= res!969982 (validKeyInArray!0 (select (arr!47140 a!2862) j!93)))))

(declare-fun b!1436995 () Bool)

(assert (=> b!1436995 (= e!810814 false)))

(declare-datatypes ((SeekEntryResult!11415 0))(
  ( (MissingZero!11415 (index!48051 (_ BitVec 32))) (Found!11415 (index!48052 (_ BitVec 32))) (Intermediate!11415 (undefined!12227 Bool) (index!48053 (_ BitVec 32)) (x!129787 (_ BitVec 32))) (Undefined!11415) (MissingVacant!11415 (index!48054 (_ BitVec 32))) )
))
(declare-fun lt!632170 () SeekEntryResult!11415)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97701 (_ BitVec 32)) SeekEntryResult!11415)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1436995 (= lt!632170 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47140 a!2862) j!93) mask!2687) (select (arr!47140 a!2862) j!93) a!2862 mask!2687))))

(assert (= (and start!124180 res!969986) b!1436993))

(assert (= (and b!1436993 res!969985) b!1436991))

(assert (= (and b!1436991 res!969984) b!1436994))

(assert (= (and b!1436994 res!969982) b!1436992))

(assert (= (and b!1436992 res!969987) b!1436990))

(assert (= (and b!1436990 res!969983) b!1436989))

(assert (= (and b!1436989 res!969981) b!1436995))

(declare-fun m!1326357 () Bool)

(assert (=> b!1436992 m!1326357))

(declare-fun m!1326359 () Bool)

(assert (=> b!1436995 m!1326359))

(assert (=> b!1436995 m!1326359))

(declare-fun m!1326361 () Bool)

(assert (=> b!1436995 m!1326361))

(assert (=> b!1436995 m!1326361))

(assert (=> b!1436995 m!1326359))

(declare-fun m!1326363 () Bool)

(assert (=> b!1436995 m!1326363))

(assert (=> b!1436994 m!1326359))

(assert (=> b!1436994 m!1326359))

(declare-fun m!1326365 () Bool)

(assert (=> b!1436994 m!1326365))

(declare-fun m!1326367 () Bool)

(assert (=> b!1436989 m!1326367))

(declare-fun m!1326369 () Bool)

(assert (=> b!1436989 m!1326369))

(declare-fun m!1326371 () Bool)

(assert (=> start!124180 m!1326371))

(declare-fun m!1326373 () Bool)

(assert (=> start!124180 m!1326373))

(declare-fun m!1326375 () Bool)

(assert (=> b!1436990 m!1326375))

(declare-fun m!1326377 () Bool)

(assert (=> b!1436991 m!1326377))

(assert (=> b!1436991 m!1326377))

(declare-fun m!1326379 () Bool)

(assert (=> b!1436991 m!1326379))

(push 1)

(assert (not b!1436990))

(assert (not b!1436994))

(assert (not b!1436992))

(assert (not b!1436991))

(assert (not b!1436995))

(assert (not start!124180))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

