; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124472 () Bool)

(assert start!124472)

(declare-fun b!1439514 () Bool)

(declare-fun res!972051 () Bool)

(declare-fun e!811906 () Bool)

(assert (=> b!1439514 (=> (not res!972051) (not e!811906))))

(declare-datatypes ((array!97837 0))(
  ( (array!97838 (arr!47202 (Array (_ BitVec 32) (_ BitVec 64))) (size!47753 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97837)

(declare-datatypes ((List!33883 0))(
  ( (Nil!33880) (Cons!33879 (h!35229 (_ BitVec 64)) (t!48584 List!33883)) )
))
(declare-fun arrayNoDuplicates!0 (array!97837 (_ BitVec 32) List!33883) Bool)

(assert (=> b!1439514 (= res!972051 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33880))))

(declare-fun b!1439515 () Bool)

(declare-fun res!972057 () Bool)

(assert (=> b!1439515 (=> (not res!972057) (not e!811906))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1439515 (= res!972057 (validKeyInArray!0 (select (arr!47202 a!2862) j!93)))))

(declare-fun b!1439516 () Bool)

(declare-fun res!972054 () Bool)

(assert (=> b!1439516 (=> (not res!972054) (not e!811906))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97837 (_ BitVec 32)) Bool)

(assert (=> b!1439516 (= res!972054 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1439517 () Bool)

(declare-fun res!972052 () Bool)

(assert (=> b!1439517 (=> (not res!972052) (not e!811906))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1439517 (= res!972052 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47753 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47753 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47753 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47202 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1439518 () Bool)

(declare-fun res!972053 () Bool)

(declare-fun e!811905 () Bool)

(assert (=> b!1439518 (=> (not res!972053) (not e!811905))))

(declare-datatypes ((SeekEntryResult!11477 0))(
  ( (MissingZero!11477 (index!48299 (_ BitVec 32))) (Found!11477 (index!48300 (_ BitVec 32))) (Intermediate!11477 (undefined!12289 Bool) (index!48301 (_ BitVec 32)) (x!130033 (_ BitVec 32))) (Undefined!11477) (MissingVacant!11477 (index!48302 (_ BitVec 32))) )
))
(declare-fun lt!632778 () SeekEntryResult!11477)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97837 (_ BitVec 32)) SeekEntryResult!11477)

(assert (=> b!1439518 (= res!972053 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47202 a!2862) j!93) a!2862 mask!2687) lt!632778))))

(declare-fun b!1439519 () Bool)

(assert (=> b!1439519 (= e!811905 false)))

(declare-fun lt!632779 () SeekEntryResult!11477)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1439519 (= lt!632779 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!47202 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (select (store (arr!47202 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!97838 (store (arr!47202 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47753 a!2862)) mask!2687))))

(declare-fun b!1439520 () Bool)

(assert (=> b!1439520 (= e!811906 e!811905)))

(declare-fun res!972049 () Bool)

(assert (=> b!1439520 (=> (not res!972049) (not e!811905))))

(assert (=> b!1439520 (= res!972049 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47202 a!2862) j!93) mask!2687) (select (arr!47202 a!2862) j!93) a!2862 mask!2687) lt!632778))))

(assert (=> b!1439520 (= lt!632778 (Intermediate!11477 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1439521 () Bool)

(declare-fun res!972056 () Bool)

(assert (=> b!1439521 (=> (not res!972056) (not e!811906))))

(assert (=> b!1439521 (= res!972056 (and (= (size!47753 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47753 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47753 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1439513 () Bool)

(declare-fun res!972055 () Bool)

(assert (=> b!1439513 (=> (not res!972055) (not e!811906))))

(assert (=> b!1439513 (= res!972055 (validKeyInArray!0 (select (arr!47202 a!2862) i!1006)))))

(declare-fun res!972050 () Bool)

(assert (=> start!124472 (=> (not res!972050) (not e!811906))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124472 (= res!972050 (validMask!0 mask!2687))))

(assert (=> start!124472 e!811906))

(assert (=> start!124472 true))

(declare-fun array_inv!36147 (array!97837) Bool)

(assert (=> start!124472 (array_inv!36147 a!2862)))

(assert (= (and start!124472 res!972050) b!1439521))

(assert (= (and b!1439521 res!972056) b!1439513))

(assert (= (and b!1439513 res!972055) b!1439515))

(assert (= (and b!1439515 res!972057) b!1439516))

(assert (= (and b!1439516 res!972054) b!1439514))

(assert (= (and b!1439514 res!972051) b!1439517))

(assert (= (and b!1439517 res!972052) b!1439520))

(assert (= (and b!1439520 res!972049) b!1439518))

(assert (= (and b!1439518 res!972053) b!1439519))

(declare-fun m!1328665 () Bool)

(assert (=> b!1439519 m!1328665))

(declare-fun m!1328667 () Bool)

(assert (=> b!1439519 m!1328667))

(assert (=> b!1439519 m!1328667))

(declare-fun m!1328669 () Bool)

(assert (=> b!1439519 m!1328669))

(assert (=> b!1439519 m!1328669))

(assert (=> b!1439519 m!1328667))

(declare-fun m!1328671 () Bool)

(assert (=> b!1439519 m!1328671))

(assert (=> b!1439517 m!1328665))

(declare-fun m!1328673 () Bool)

(assert (=> b!1439517 m!1328673))

(declare-fun m!1328675 () Bool)

(assert (=> b!1439514 m!1328675))

(declare-fun m!1328677 () Bool)

(assert (=> b!1439518 m!1328677))

(assert (=> b!1439518 m!1328677))

(declare-fun m!1328679 () Bool)

(assert (=> b!1439518 m!1328679))

(assert (=> b!1439515 m!1328677))

(assert (=> b!1439515 m!1328677))

(declare-fun m!1328681 () Bool)

(assert (=> b!1439515 m!1328681))

(declare-fun m!1328683 () Bool)

(assert (=> b!1439513 m!1328683))

(assert (=> b!1439513 m!1328683))

(declare-fun m!1328685 () Bool)

(assert (=> b!1439513 m!1328685))

(declare-fun m!1328687 () Bool)

(assert (=> start!124472 m!1328687))

(declare-fun m!1328689 () Bool)

(assert (=> start!124472 m!1328689))

(assert (=> b!1439520 m!1328677))

(assert (=> b!1439520 m!1328677))

(declare-fun m!1328691 () Bool)

(assert (=> b!1439520 m!1328691))

(assert (=> b!1439520 m!1328691))

(assert (=> b!1439520 m!1328677))

(declare-fun m!1328693 () Bool)

(assert (=> b!1439520 m!1328693))

(declare-fun m!1328695 () Bool)

(assert (=> b!1439516 m!1328695))

(push 1)

(assert (not b!1439516))

(assert (not start!124472))

(assert (not b!1439513))

(assert (not b!1439515))

(assert (not b!1439520))

(assert (not b!1439519))

(assert (not b!1439518))

(assert (not b!1439514))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

