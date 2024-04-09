; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124246 () Bool)

(assert start!124246)

(declare-fun b!1437470 () Bool)

(declare-fun e!811029 () Bool)

(assert (=> b!1437470 (= e!811029 false)))

(declare-fun lt!632277 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!97728 0))(
  ( (array!97729 (arr!47152 (Array (_ BitVec 32) (_ BitVec 64))) (size!47703 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97728)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1437470 (= lt!632277 (toIndex!0 (select (store (arr!47152 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687))))

(declare-fun b!1437471 () Bool)

(declare-fun res!970365 () Bool)

(declare-fun e!811030 () Bool)

(assert (=> b!1437471 (=> (not res!970365) (not e!811030))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1437471 (= res!970365 (validKeyInArray!0 (select (arr!47152 a!2862) j!93)))))

(declare-fun b!1437473 () Bool)

(declare-fun res!970357 () Bool)

(assert (=> b!1437473 (=> (not res!970357) (not e!811030))))

(assert (=> b!1437473 (= res!970357 (validKeyInArray!0 (select (arr!47152 a!2862) i!1006)))))

(declare-fun b!1437474 () Bool)

(assert (=> b!1437474 (= e!811030 e!811029)))

(declare-fun res!970360 () Bool)

(assert (=> b!1437474 (=> (not res!970360) (not e!811029))))

(declare-datatypes ((SeekEntryResult!11427 0))(
  ( (MissingZero!11427 (index!48099 (_ BitVec 32))) (Found!11427 (index!48100 (_ BitVec 32))) (Intermediate!11427 (undefined!12239 Bool) (index!48101 (_ BitVec 32)) (x!129837 (_ BitVec 32))) (Undefined!11427) (MissingVacant!11427 (index!48102 (_ BitVec 32))) )
))
(declare-fun lt!632278 () SeekEntryResult!11427)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97728 (_ BitVec 32)) SeekEntryResult!11427)

(assert (=> b!1437474 (= res!970360 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47152 a!2862) j!93) mask!2687) (select (arr!47152 a!2862) j!93) a!2862 mask!2687) lt!632278))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1437474 (= lt!632278 (Intermediate!11427 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1437475 () Bool)

(declare-fun res!970363 () Bool)

(assert (=> b!1437475 (=> (not res!970363) (not e!811030))))

(assert (=> b!1437475 (= res!970363 (and (= (size!47703 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47703 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47703 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1437476 () Bool)

(declare-fun res!970359 () Bool)

(assert (=> b!1437476 (=> (not res!970359) (not e!811030))))

(declare-datatypes ((List!33833 0))(
  ( (Nil!33830) (Cons!33829 (h!35170 (_ BitVec 64)) (t!48534 List!33833)) )
))
(declare-fun arrayNoDuplicates!0 (array!97728 (_ BitVec 32) List!33833) Bool)

(assert (=> b!1437476 (= res!970359 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33830))))

(declare-fun b!1437472 () Bool)

(declare-fun res!970362 () Bool)

(assert (=> b!1437472 (=> (not res!970362) (not e!811030))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97728 (_ BitVec 32)) Bool)

(assert (=> b!1437472 (= res!970362 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun res!970361 () Bool)

(assert (=> start!124246 (=> (not res!970361) (not e!811030))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124246 (= res!970361 (validMask!0 mask!2687))))

(assert (=> start!124246 e!811030))

(assert (=> start!124246 true))

(declare-fun array_inv!36097 (array!97728) Bool)

(assert (=> start!124246 (array_inv!36097 a!2862)))

(declare-fun b!1437477 () Bool)

(declare-fun res!970364 () Bool)

(assert (=> b!1437477 (=> (not res!970364) (not e!811029))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1437477 (= res!970364 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47152 a!2862) j!93) a!2862 mask!2687) lt!632278))))

(declare-fun b!1437478 () Bool)

(declare-fun res!970358 () Bool)

(assert (=> b!1437478 (=> (not res!970358) (not e!811030))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1437478 (= res!970358 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47703 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47703 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47703 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47152 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!124246 res!970361) b!1437475))

(assert (= (and b!1437475 res!970363) b!1437473))

(assert (= (and b!1437473 res!970357) b!1437471))

(assert (= (and b!1437471 res!970365) b!1437472))

(assert (= (and b!1437472 res!970362) b!1437476))

(assert (= (and b!1437476 res!970359) b!1437478))

(assert (= (and b!1437478 res!970358) b!1437474))

(assert (= (and b!1437474 res!970360) b!1437477))

(assert (= (and b!1437477 res!970364) b!1437470))

(declare-fun m!1326753 () Bool)

(assert (=> b!1437477 m!1326753))

(assert (=> b!1437477 m!1326753))

(declare-fun m!1326755 () Bool)

(assert (=> b!1437477 m!1326755))

(declare-fun m!1326757 () Bool)

(assert (=> start!124246 m!1326757))

(declare-fun m!1326759 () Bool)

(assert (=> start!124246 m!1326759))

(declare-fun m!1326761 () Bool)

(assert (=> b!1437476 m!1326761))

(assert (=> b!1437471 m!1326753))

(assert (=> b!1437471 m!1326753))

(declare-fun m!1326763 () Bool)

(assert (=> b!1437471 m!1326763))

(declare-fun m!1326765 () Bool)

(assert (=> b!1437472 m!1326765))

(declare-fun m!1326767 () Bool)

(assert (=> b!1437470 m!1326767))

(declare-fun m!1326769 () Bool)

(assert (=> b!1437470 m!1326769))

(assert (=> b!1437470 m!1326769))

(declare-fun m!1326771 () Bool)

(assert (=> b!1437470 m!1326771))

(assert (=> b!1437478 m!1326767))

(declare-fun m!1326773 () Bool)

(assert (=> b!1437478 m!1326773))

(declare-fun m!1326775 () Bool)

(assert (=> b!1437473 m!1326775))

(assert (=> b!1437473 m!1326775))

(declare-fun m!1326777 () Bool)

(assert (=> b!1437473 m!1326777))

(assert (=> b!1437474 m!1326753))

(assert (=> b!1437474 m!1326753))

(declare-fun m!1326779 () Bool)

(assert (=> b!1437474 m!1326779))

(assert (=> b!1437474 m!1326779))

(assert (=> b!1437474 m!1326753))

(declare-fun m!1326781 () Bool)

(assert (=> b!1437474 m!1326781))

(push 1)

