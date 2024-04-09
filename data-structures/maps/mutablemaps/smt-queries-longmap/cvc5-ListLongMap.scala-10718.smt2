; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125488 () Bool)

(assert start!125488)

(declare-fun b!1467490 () Bool)

(declare-fun e!824297 () Bool)

(assert (=> b!1467490 (= e!824297 false)))

(declare-datatypes ((array!98853 0))(
  ( (array!98854 (arr!47710 (Array (_ BitVec 32) (_ BitVec 64))) (size!48261 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98853)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11973 0))(
  ( (MissingZero!11973 (index!50283 (_ BitVec 32))) (Found!11973 (index!50284 (_ BitVec 32))) (Intermediate!11973 (undefined!12785 Bool) (index!50285 (_ BitVec 32)) (x!131889 (_ BitVec 32))) (Undefined!11973) (MissingVacant!11973 (index!50286 (_ BitVec 32))) )
))
(declare-fun lt!642061 () SeekEntryResult!11973)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98853 (_ BitVec 32)) SeekEntryResult!11973)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1467490 (= lt!642061 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47710 a!2862) j!93) mask!2687) (select (arr!47710 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1467491 () Bool)

(declare-fun res!996139 () Bool)

(assert (=> b!1467491 (=> (not res!996139) (not e!824297))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1467491 (= res!996139 (validKeyInArray!0 (select (arr!47710 a!2862) j!93)))))

(declare-fun b!1467492 () Bool)

(declare-fun res!996143 () Bool)

(assert (=> b!1467492 (=> (not res!996143) (not e!824297))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1467492 (= res!996143 (and (= (size!48261 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48261 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48261 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1467493 () Bool)

(declare-fun res!996140 () Bool)

(assert (=> b!1467493 (=> (not res!996140) (not e!824297))))

(declare-datatypes ((List!34391 0))(
  ( (Nil!34388) (Cons!34387 (h!35737 (_ BitVec 64)) (t!49092 List!34391)) )
))
(declare-fun arrayNoDuplicates!0 (array!98853 (_ BitVec 32) List!34391) Bool)

(assert (=> b!1467493 (= res!996140 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34388))))

(declare-fun res!996144 () Bool)

(assert (=> start!125488 (=> (not res!996144) (not e!824297))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125488 (= res!996144 (validMask!0 mask!2687))))

(assert (=> start!125488 e!824297))

(assert (=> start!125488 true))

(declare-fun array_inv!36655 (array!98853) Bool)

(assert (=> start!125488 (array_inv!36655 a!2862)))

(declare-fun b!1467494 () Bool)

(declare-fun res!996138 () Bool)

(assert (=> b!1467494 (=> (not res!996138) (not e!824297))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1467494 (= res!996138 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48261 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48261 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48261 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47710 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1467495 () Bool)

(declare-fun res!996142 () Bool)

(assert (=> b!1467495 (=> (not res!996142) (not e!824297))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98853 (_ BitVec 32)) Bool)

(assert (=> b!1467495 (= res!996142 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1467496 () Bool)

(declare-fun res!996141 () Bool)

(assert (=> b!1467496 (=> (not res!996141) (not e!824297))))

(assert (=> b!1467496 (= res!996141 (validKeyInArray!0 (select (arr!47710 a!2862) i!1006)))))

(assert (= (and start!125488 res!996144) b!1467492))

(assert (= (and b!1467492 res!996143) b!1467496))

(assert (= (and b!1467496 res!996141) b!1467491))

(assert (= (and b!1467491 res!996139) b!1467495))

(assert (= (and b!1467495 res!996142) b!1467493))

(assert (= (and b!1467493 res!996140) b!1467494))

(assert (= (and b!1467494 res!996138) b!1467490))

(declare-fun m!1354491 () Bool)

(assert (=> b!1467493 m!1354491))

(declare-fun m!1354493 () Bool)

(assert (=> b!1467490 m!1354493))

(assert (=> b!1467490 m!1354493))

(declare-fun m!1354495 () Bool)

(assert (=> b!1467490 m!1354495))

(assert (=> b!1467490 m!1354495))

(assert (=> b!1467490 m!1354493))

(declare-fun m!1354497 () Bool)

(assert (=> b!1467490 m!1354497))

(assert (=> b!1467491 m!1354493))

(assert (=> b!1467491 m!1354493))

(declare-fun m!1354499 () Bool)

(assert (=> b!1467491 m!1354499))

(declare-fun m!1354501 () Bool)

(assert (=> b!1467495 m!1354501))

(declare-fun m!1354503 () Bool)

(assert (=> start!125488 m!1354503))

(declare-fun m!1354505 () Bool)

(assert (=> start!125488 m!1354505))

(declare-fun m!1354507 () Bool)

(assert (=> b!1467494 m!1354507))

(declare-fun m!1354509 () Bool)

(assert (=> b!1467494 m!1354509))

(declare-fun m!1354511 () Bool)

(assert (=> b!1467496 m!1354511))

(assert (=> b!1467496 m!1354511))

(declare-fun m!1354513 () Bool)

(assert (=> b!1467496 m!1354513))

(push 1)

(assert (not start!125488))

(assert (not b!1467491))

(assert (not b!1467493))

(assert (not b!1467495))

(assert (not b!1467496))

(assert (not b!1467490))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

