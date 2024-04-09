; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124534 () Bool)

(assert start!124534)

(declare-fun res!972945 () Bool)

(declare-fun e!812186 () Bool)

(assert (=> start!124534 (=> (not res!972945) (not e!812186))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124534 (= res!972945 (validMask!0 mask!2687))))

(assert (=> start!124534 e!812186))

(assert (=> start!124534 true))

(declare-datatypes ((array!97899 0))(
  ( (array!97900 (arr!47233 (Array (_ BitVec 32) (_ BitVec 64))) (size!47784 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97899)

(declare-fun array_inv!36178 (array!97899) Bool)

(assert (=> start!124534 (array_inv!36178 a!2862)))

(declare-fun b!1440408 () Bool)

(declare-fun res!972954 () Bool)

(assert (=> b!1440408 (=> (not res!972954) (not e!812186))))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1440408 (= res!972954 (validKeyInArray!0 (select (arr!47233 a!2862) i!1006)))))

(declare-fun b!1440409 () Bool)

(declare-fun res!972947 () Bool)

(assert (=> b!1440409 (=> (not res!972947) (not e!812186))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97899 (_ BitVec 32)) Bool)

(assert (=> b!1440409 (= res!972947 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1440410 () Bool)

(declare-fun res!972949 () Bool)

(assert (=> b!1440410 (=> (not res!972949) (not e!812186))))

(declare-datatypes ((List!33914 0))(
  ( (Nil!33911) (Cons!33910 (h!35260 (_ BitVec 64)) (t!48615 List!33914)) )
))
(declare-fun arrayNoDuplicates!0 (array!97899 (_ BitVec 32) List!33914) Bool)

(assert (=> b!1440410 (= res!972949 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33911))))

(declare-fun b!1440411 () Bool)

(declare-fun res!972951 () Bool)

(declare-fun e!812184 () Bool)

(assert (=> b!1440411 (=> (not res!972951) (not e!812184))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11508 0))(
  ( (MissingZero!11508 (index!48423 (_ BitVec 32))) (Found!11508 (index!48424 (_ BitVec 32))) (Intermediate!11508 (undefined!12320 Bool) (index!48425 (_ BitVec 32)) (x!130152 (_ BitVec 32))) (Undefined!11508) (MissingVacant!11508 (index!48426 (_ BitVec 32))) )
))
(declare-fun lt!632917 () SeekEntryResult!11508)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97899 (_ BitVec 32)) SeekEntryResult!11508)

(assert (=> b!1440411 (= res!972951 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47233 a!2862) j!93) a!2862 mask!2687) lt!632917))))

(declare-fun b!1440412 () Bool)

(assert (=> b!1440412 (= e!812186 e!812184)))

(declare-fun res!972946 () Bool)

(assert (=> b!1440412 (=> (not res!972946) (not e!812184))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1440412 (= res!972946 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47233 a!2862) j!93) mask!2687) (select (arr!47233 a!2862) j!93) a!2862 mask!2687) lt!632917))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1440412 (= lt!632917 (Intermediate!11508 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1440413 () Bool)

(declare-fun res!972952 () Bool)

(assert (=> b!1440413 (=> (not res!972952) (not e!812186))))

(assert (=> b!1440413 (= res!972952 (and (= (size!47784 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47784 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47784 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1440414 () Bool)

(declare-fun res!972944 () Bool)

(assert (=> b!1440414 (=> (not res!972944) (not e!812186))))

(assert (=> b!1440414 (= res!972944 (validKeyInArray!0 (select (arr!47233 a!2862) j!93)))))

(declare-fun b!1440415 () Bool)

(declare-fun res!972950 () Bool)

(assert (=> b!1440415 (=> (not res!972950) (not e!812186))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1440415 (= res!972950 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47784 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47784 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47784 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47233 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1440416 () Bool)

(declare-fun res!972948 () Bool)

(assert (=> b!1440416 (=> (not res!972948) (not e!812184))))

(assert (=> b!1440416 (= res!972948 (and (bvsgt x!665 intermediateAfterX!19) (bvsge mask!2687 #b00000000000000000000000000000000) (bvslt index!646 (bvadd #b00000000000000000000000000000001 mask!2687)) (bvslt intermediateAfterIndex!19 (bvadd #b00000000000000000000000000000001 mask!2687))))))

(declare-fun b!1440417 () Bool)

(assert (=> b!1440417 (= e!812184 (not (validKeyInArray!0 (select (store (arr!47233 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))))

(declare-fun b!1440418 () Bool)

(declare-fun res!972953 () Bool)

(assert (=> b!1440418 (=> (not res!972953) (not e!812184))))

(assert (=> b!1440418 (= res!972953 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!47233 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (select (store (arr!47233 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!97900 (store (arr!47233 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47784 a!2862)) mask!2687) (Intermediate!11508 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (= (and start!124534 res!972945) b!1440413))

(assert (= (and b!1440413 res!972952) b!1440408))

(assert (= (and b!1440408 res!972954) b!1440414))

(assert (= (and b!1440414 res!972944) b!1440409))

(assert (= (and b!1440409 res!972947) b!1440410))

(assert (= (and b!1440410 res!972949) b!1440415))

(assert (= (and b!1440415 res!972950) b!1440412))

(assert (= (and b!1440412 res!972946) b!1440411))

(assert (= (and b!1440411 res!972951) b!1440418))

(assert (= (and b!1440418 res!972953) b!1440416))

(assert (= (and b!1440416 res!972948) b!1440417))

(declare-fun m!1329663 () Bool)

(assert (=> b!1440411 m!1329663))

(assert (=> b!1440411 m!1329663))

(declare-fun m!1329665 () Bool)

(assert (=> b!1440411 m!1329665))

(declare-fun m!1329667 () Bool)

(assert (=> b!1440409 m!1329667))

(assert (=> b!1440412 m!1329663))

(assert (=> b!1440412 m!1329663))

(declare-fun m!1329669 () Bool)

(assert (=> b!1440412 m!1329669))

(assert (=> b!1440412 m!1329669))

(assert (=> b!1440412 m!1329663))

(declare-fun m!1329671 () Bool)

(assert (=> b!1440412 m!1329671))

(declare-fun m!1329673 () Bool)

(assert (=> b!1440408 m!1329673))

(assert (=> b!1440408 m!1329673))

(declare-fun m!1329675 () Bool)

(assert (=> b!1440408 m!1329675))

(declare-fun m!1329677 () Bool)

(assert (=> b!1440415 m!1329677))

(declare-fun m!1329679 () Bool)

(assert (=> b!1440415 m!1329679))

(assert (=> b!1440414 m!1329663))

(assert (=> b!1440414 m!1329663))

(declare-fun m!1329681 () Bool)

(assert (=> b!1440414 m!1329681))

(assert (=> b!1440418 m!1329677))

(declare-fun m!1329683 () Bool)

(assert (=> b!1440418 m!1329683))

(assert (=> b!1440418 m!1329683))

(declare-fun m!1329685 () Bool)

(assert (=> b!1440418 m!1329685))

(assert (=> b!1440418 m!1329685))

(assert (=> b!1440418 m!1329683))

(declare-fun m!1329687 () Bool)

(assert (=> b!1440418 m!1329687))

(assert (=> b!1440417 m!1329677))

(assert (=> b!1440417 m!1329683))

(assert (=> b!1440417 m!1329683))

(declare-fun m!1329689 () Bool)

(assert (=> b!1440417 m!1329689))

(declare-fun m!1329691 () Bool)

(assert (=> start!124534 m!1329691))

(declare-fun m!1329693 () Bool)

(assert (=> start!124534 m!1329693))

(declare-fun m!1329695 () Bool)

(assert (=> b!1440410 m!1329695))

(push 1)

(assert (not b!1440412))

(assert (not b!1440414))

(assert (not b!1440410))

(assert (not b!1440408))

(assert (not start!124534))

(assert (not b!1440418))

(assert (not b!1440409))

(assert (not b!1440411))

(assert (not b!1440417))

