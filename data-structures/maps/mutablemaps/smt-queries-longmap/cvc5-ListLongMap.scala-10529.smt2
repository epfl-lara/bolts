; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124186 () Bool)

(assert start!124186)

(declare-fun res!970047 () Bool)

(declare-fun e!810832 () Bool)

(assert (=> start!124186 (=> (not res!970047) (not e!810832))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124186 (= res!970047 (validMask!0 mask!2687))))

(assert (=> start!124186 e!810832))

(assert (=> start!124186 true))

(declare-datatypes ((array!97707 0))(
  ( (array!97708 (arr!47143 (Array (_ BitVec 32) (_ BitVec 64))) (size!47694 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97707)

(declare-fun array_inv!36088 (array!97707) Bool)

(assert (=> start!124186 (array_inv!36088 a!2862)))

(declare-fun b!1437052 () Bool)

(declare-fun res!970044 () Bool)

(assert (=> b!1437052 (=> (not res!970044) (not e!810832))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1437052 (= res!970044 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47694 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47694 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47694 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47143 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1437053 () Bool)

(declare-fun res!970048 () Bool)

(assert (=> b!1437053 (=> (not res!970048) (not e!810832))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1437053 (= res!970048 (validKeyInArray!0 (select (arr!47143 a!2862) j!93)))))

(declare-fun b!1437054 () Bool)

(declare-fun res!970045 () Bool)

(assert (=> b!1437054 (=> (not res!970045) (not e!810832))))

(declare-datatypes ((List!33824 0))(
  ( (Nil!33821) (Cons!33820 (h!35158 (_ BitVec 64)) (t!48525 List!33824)) )
))
(declare-fun arrayNoDuplicates!0 (array!97707 (_ BitVec 32) List!33824) Bool)

(assert (=> b!1437054 (= res!970045 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33821))))

(declare-fun b!1437055 () Bool)

(assert (=> b!1437055 (= e!810832 false)))

(declare-datatypes ((SeekEntryResult!11418 0))(
  ( (MissingZero!11418 (index!48063 (_ BitVec 32))) (Found!11418 (index!48064 (_ BitVec 32))) (Intermediate!11418 (undefined!12230 Bool) (index!48065 (_ BitVec 32)) (x!129798 (_ BitVec 32))) (Undefined!11418) (MissingVacant!11418 (index!48066 (_ BitVec 32))) )
))
(declare-fun lt!632179 () SeekEntryResult!11418)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97707 (_ BitVec 32)) SeekEntryResult!11418)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1437055 (= lt!632179 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47143 a!2862) j!93) mask!2687) (select (arr!47143 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1437056 () Bool)

(declare-fun res!970049 () Bool)

(assert (=> b!1437056 (=> (not res!970049) (not e!810832))))

(assert (=> b!1437056 (= res!970049 (validKeyInArray!0 (select (arr!47143 a!2862) i!1006)))))

(declare-fun b!1437057 () Bool)

(declare-fun res!970050 () Bool)

(assert (=> b!1437057 (=> (not res!970050) (not e!810832))))

(assert (=> b!1437057 (= res!970050 (and (= (size!47694 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47694 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47694 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1437058 () Bool)

(declare-fun res!970046 () Bool)

(assert (=> b!1437058 (=> (not res!970046) (not e!810832))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97707 (_ BitVec 32)) Bool)

(assert (=> b!1437058 (= res!970046 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(assert (= (and start!124186 res!970047) b!1437057))

(assert (= (and b!1437057 res!970050) b!1437056))

(assert (= (and b!1437056 res!970049) b!1437053))

(assert (= (and b!1437053 res!970048) b!1437058))

(assert (= (and b!1437058 res!970046) b!1437054))

(assert (= (and b!1437054 res!970045) b!1437052))

(assert (= (and b!1437052 res!970044) b!1437055))

(declare-fun m!1326429 () Bool)

(assert (=> b!1437053 m!1326429))

(assert (=> b!1437053 m!1326429))

(declare-fun m!1326431 () Bool)

(assert (=> b!1437053 m!1326431))

(declare-fun m!1326433 () Bool)

(assert (=> b!1437058 m!1326433))

(declare-fun m!1326435 () Bool)

(assert (=> start!124186 m!1326435))

(declare-fun m!1326437 () Bool)

(assert (=> start!124186 m!1326437))

(assert (=> b!1437055 m!1326429))

(assert (=> b!1437055 m!1326429))

(declare-fun m!1326439 () Bool)

(assert (=> b!1437055 m!1326439))

(assert (=> b!1437055 m!1326439))

(assert (=> b!1437055 m!1326429))

(declare-fun m!1326441 () Bool)

(assert (=> b!1437055 m!1326441))

(declare-fun m!1326443 () Bool)

(assert (=> b!1437054 m!1326443))

(declare-fun m!1326445 () Bool)

(assert (=> b!1437052 m!1326445))

(declare-fun m!1326447 () Bool)

(assert (=> b!1437052 m!1326447))

(declare-fun m!1326449 () Bool)

(assert (=> b!1437056 m!1326449))

(assert (=> b!1437056 m!1326449))

(declare-fun m!1326451 () Bool)

(assert (=> b!1437056 m!1326451))

(push 1)

(assert (not start!124186))

(assert (not b!1437056))

(assert (not b!1437058))

(assert (not b!1437054))

(assert (not b!1437055))

(assert (not b!1437053))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

