; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124254 () Bool)

(assert start!124254)

(declare-fun b!1437578 () Bool)

(declare-fun e!811066 () Bool)

(declare-fun e!811065 () Bool)

(assert (=> b!1437578 (= e!811066 e!811065)))

(declare-fun res!970468 () Bool)

(assert (=> b!1437578 (=> (not res!970468) (not e!811065))))

(declare-datatypes ((SeekEntryResult!11431 0))(
  ( (MissingZero!11431 (index!48115 (_ BitVec 32))) (Found!11431 (index!48116 (_ BitVec 32))) (Intermediate!11431 (undefined!12243 Bool) (index!48117 (_ BitVec 32)) (x!129849 (_ BitVec 32))) (Undefined!11431) (MissingVacant!11431 (index!48118 (_ BitVec 32))) )
))
(declare-fun lt!632302 () SeekEntryResult!11431)

(declare-datatypes ((array!97736 0))(
  ( (array!97737 (arr!47156 (Array (_ BitVec 32) (_ BitVec 64))) (size!47707 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97736)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97736 (_ BitVec 32)) SeekEntryResult!11431)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1437578 (= res!970468 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47156 a!2862) j!93) mask!2687) (select (arr!47156 a!2862) j!93) a!2862 mask!2687) lt!632302))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1437578 (= lt!632302 (Intermediate!11431 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1437579 () Bool)

(declare-fun res!970465 () Bool)

(assert (=> b!1437579 (=> (not res!970465) (not e!811066))))

(declare-datatypes ((List!33837 0))(
  ( (Nil!33834) (Cons!33833 (h!35174 (_ BitVec 64)) (t!48538 List!33837)) )
))
(declare-fun arrayNoDuplicates!0 (array!97736 (_ BitVec 32) List!33837) Bool)

(assert (=> b!1437579 (= res!970465 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33834))))

(declare-fun b!1437580 () Bool)

(declare-fun res!970469 () Bool)

(assert (=> b!1437580 (=> (not res!970469) (not e!811066))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97736 (_ BitVec 32)) Bool)

(assert (=> b!1437580 (= res!970469 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1437581 () Bool)

(declare-fun res!970471 () Bool)

(assert (=> b!1437581 (=> (not res!970471) (not e!811066))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1437581 (= res!970471 (validKeyInArray!0 (select (arr!47156 a!2862) j!93)))))

(declare-fun b!1437582 () Bool)

(declare-fun res!970466 () Bool)

(assert (=> b!1437582 (=> (not res!970466) (not e!811066))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1437582 (= res!970466 (and (= (size!47707 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47707 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47707 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1437583 () Bool)

(declare-fun res!970473 () Bool)

(assert (=> b!1437583 (=> (not res!970473) (not e!811065))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1437583 (= res!970473 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47156 a!2862) j!93) a!2862 mask!2687) lt!632302))))

(declare-fun b!1437584 () Bool)

(assert (=> b!1437584 (= e!811065 (bvslt mask!2687 #b00000000000000000000000000000000))))

(declare-fun lt!632301 () (_ BitVec 32))

(assert (=> b!1437584 (= lt!632301 (toIndex!0 (select (store (arr!47156 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687))))

(declare-fun res!970472 () Bool)

(assert (=> start!124254 (=> (not res!970472) (not e!811066))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124254 (= res!970472 (validMask!0 mask!2687))))

(assert (=> start!124254 e!811066))

(assert (=> start!124254 true))

(declare-fun array_inv!36101 (array!97736) Bool)

(assert (=> start!124254 (array_inv!36101 a!2862)))

(declare-fun b!1437585 () Bool)

(declare-fun res!970467 () Bool)

(assert (=> b!1437585 (=> (not res!970467) (not e!811066))))

(assert (=> b!1437585 (= res!970467 (validKeyInArray!0 (select (arr!47156 a!2862) i!1006)))))

(declare-fun b!1437586 () Bool)

(declare-fun res!970470 () Bool)

(assert (=> b!1437586 (=> (not res!970470) (not e!811066))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1437586 (= res!970470 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47707 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47707 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47707 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47156 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!124254 res!970472) b!1437582))

(assert (= (and b!1437582 res!970466) b!1437585))

(assert (= (and b!1437585 res!970467) b!1437581))

(assert (= (and b!1437581 res!970471) b!1437580))

(assert (= (and b!1437580 res!970469) b!1437579))

(assert (= (and b!1437579 res!970465) b!1437586))

(assert (= (and b!1437586 res!970470) b!1437578))

(assert (= (and b!1437578 res!970468) b!1437583))

(assert (= (and b!1437583 res!970473) b!1437584))

(declare-fun m!1326873 () Bool)

(assert (=> b!1437583 m!1326873))

(assert (=> b!1437583 m!1326873))

(declare-fun m!1326875 () Bool)

(assert (=> b!1437583 m!1326875))

(declare-fun m!1326877 () Bool)

(assert (=> b!1437584 m!1326877))

(declare-fun m!1326879 () Bool)

(assert (=> b!1437584 m!1326879))

(assert (=> b!1437584 m!1326879))

(declare-fun m!1326881 () Bool)

(assert (=> b!1437584 m!1326881))

(assert (=> b!1437578 m!1326873))

(assert (=> b!1437578 m!1326873))

(declare-fun m!1326883 () Bool)

(assert (=> b!1437578 m!1326883))

(assert (=> b!1437578 m!1326883))

(assert (=> b!1437578 m!1326873))

(declare-fun m!1326885 () Bool)

(assert (=> b!1437578 m!1326885))

(declare-fun m!1326887 () Bool)

(assert (=> b!1437585 m!1326887))

(assert (=> b!1437585 m!1326887))

(declare-fun m!1326889 () Bool)

(assert (=> b!1437585 m!1326889))

(assert (=> b!1437586 m!1326877))

(declare-fun m!1326891 () Bool)

(assert (=> b!1437586 m!1326891))

(declare-fun m!1326893 () Bool)

(assert (=> b!1437580 m!1326893))

(assert (=> b!1437581 m!1326873))

(assert (=> b!1437581 m!1326873))

(declare-fun m!1326895 () Bool)

(assert (=> b!1437581 m!1326895))

(declare-fun m!1326897 () Bool)

(assert (=> b!1437579 m!1326897))

(declare-fun m!1326899 () Bool)

(assert (=> start!124254 m!1326899))

(declare-fun m!1326901 () Bool)

(assert (=> start!124254 m!1326901))

(check-sat (not b!1437584) (not b!1437580) (not b!1437579) (not b!1437581) (not b!1437583) (not start!124254) (not b!1437585) (not b!1437578))
(check-sat)
