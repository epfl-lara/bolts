; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124456 () Bool)

(assert start!124456)

(declare-fun b!1439288 () Bool)

(declare-fun res!971831 () Bool)

(declare-fun e!811833 () Bool)

(assert (=> b!1439288 (=> (not res!971831) (not e!811833))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!97821 0))(
  ( (array!97822 (arr!47194 (Array (_ BitVec 32) (_ BitVec 64))) (size!47745 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97821)

(assert (=> b!1439288 (= res!971831 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47745 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47745 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47745 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47194 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!971826 () Bool)

(assert (=> start!124456 (=> (not res!971826) (not e!811833))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124456 (= res!971826 (validMask!0 mask!2687))))

(assert (=> start!124456 e!811833))

(assert (=> start!124456 true))

(declare-fun array_inv!36139 (array!97821) Bool)

(assert (=> start!124456 (array_inv!36139 a!2862)))

(declare-fun b!1439289 () Bool)

(declare-fun e!811835 () Bool)

(assert (=> b!1439289 (= e!811833 e!811835)))

(declare-fun res!971832 () Bool)

(assert (=> b!1439289 (=> (not res!971832) (not e!811835))))

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11469 0))(
  ( (MissingZero!11469 (index!48267 (_ BitVec 32))) (Found!11469 (index!48268 (_ BitVec 32))) (Intermediate!11469 (undefined!12281 Bool) (index!48269 (_ BitVec 32)) (x!130009 (_ BitVec 32))) (Undefined!11469) (MissingVacant!11469 (index!48270 (_ BitVec 32))) )
))
(declare-fun lt!632739 () SeekEntryResult!11469)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97821 (_ BitVec 32)) SeekEntryResult!11469)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1439289 (= res!971832 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47194 a!2862) j!93) mask!2687) (select (arr!47194 a!2862) j!93) a!2862 mask!2687) lt!632739))))

(assert (=> b!1439289 (= lt!632739 (Intermediate!11469 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1439290 () Bool)

(assert (=> b!1439290 (= e!811835 false)))

(declare-fun lt!632740 () SeekEntryResult!11469)

(assert (=> b!1439290 (= lt!632740 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!47194 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (select (store (arr!47194 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!97822 (store (arr!47194 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47745 a!2862)) mask!2687))))

(declare-fun b!1439291 () Bool)

(declare-fun res!971825 () Bool)

(assert (=> b!1439291 (=> (not res!971825) (not e!811835))))

(assert (=> b!1439291 (= res!971825 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47194 a!2862) j!93) a!2862 mask!2687) lt!632739))))

(declare-fun b!1439292 () Bool)

(declare-fun res!971830 () Bool)

(assert (=> b!1439292 (=> (not res!971830) (not e!811833))))

(assert (=> b!1439292 (= res!971830 (and (= (size!47745 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47745 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47745 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1439293 () Bool)

(declare-fun res!971824 () Bool)

(assert (=> b!1439293 (=> (not res!971824) (not e!811833))))

(declare-datatypes ((List!33875 0))(
  ( (Nil!33872) (Cons!33871 (h!35221 (_ BitVec 64)) (t!48576 List!33875)) )
))
(declare-fun arrayNoDuplicates!0 (array!97821 (_ BitVec 32) List!33875) Bool)

(assert (=> b!1439293 (= res!971824 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33872))))

(declare-fun b!1439294 () Bool)

(declare-fun res!971828 () Bool)

(assert (=> b!1439294 (=> (not res!971828) (not e!811833))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1439294 (= res!971828 (validKeyInArray!0 (select (arr!47194 a!2862) i!1006)))))

(declare-fun b!1439295 () Bool)

(declare-fun res!971827 () Bool)

(assert (=> b!1439295 (=> (not res!971827) (not e!811833))))

(assert (=> b!1439295 (= res!971827 (validKeyInArray!0 (select (arr!47194 a!2862) j!93)))))

(declare-fun b!1439296 () Bool)

(declare-fun res!971829 () Bool)

(assert (=> b!1439296 (=> (not res!971829) (not e!811833))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97821 (_ BitVec 32)) Bool)

(assert (=> b!1439296 (= res!971829 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(assert (= (and start!124456 res!971826) b!1439292))

(assert (= (and b!1439292 res!971830) b!1439294))

(assert (= (and b!1439294 res!971828) b!1439295))

(assert (= (and b!1439295 res!971827) b!1439296))

(assert (= (and b!1439296 res!971829) b!1439293))

(assert (= (and b!1439293 res!971824) b!1439288))

(assert (= (and b!1439288 res!971831) b!1439289))

(assert (= (and b!1439289 res!971832) b!1439291))

(assert (= (and b!1439291 res!971825) b!1439290))

(declare-fun m!1328409 () Bool)

(assert (=> b!1439296 m!1328409))

(declare-fun m!1328411 () Bool)

(assert (=> b!1439290 m!1328411))

(declare-fun m!1328413 () Bool)

(assert (=> b!1439290 m!1328413))

(assert (=> b!1439290 m!1328413))

(declare-fun m!1328415 () Bool)

(assert (=> b!1439290 m!1328415))

(assert (=> b!1439290 m!1328415))

(assert (=> b!1439290 m!1328413))

(declare-fun m!1328417 () Bool)

(assert (=> b!1439290 m!1328417))

(assert (=> b!1439288 m!1328411))

(declare-fun m!1328419 () Bool)

(assert (=> b!1439288 m!1328419))

(declare-fun m!1328421 () Bool)

(assert (=> b!1439293 m!1328421))

(declare-fun m!1328423 () Bool)

(assert (=> b!1439291 m!1328423))

(assert (=> b!1439291 m!1328423))

(declare-fun m!1328425 () Bool)

(assert (=> b!1439291 m!1328425))

(assert (=> b!1439289 m!1328423))

(assert (=> b!1439289 m!1328423))

(declare-fun m!1328427 () Bool)

(assert (=> b!1439289 m!1328427))

(assert (=> b!1439289 m!1328427))

(assert (=> b!1439289 m!1328423))

(declare-fun m!1328429 () Bool)

(assert (=> b!1439289 m!1328429))

(assert (=> b!1439295 m!1328423))

(assert (=> b!1439295 m!1328423))

(declare-fun m!1328431 () Bool)

(assert (=> b!1439295 m!1328431))

(declare-fun m!1328433 () Bool)

(assert (=> start!124456 m!1328433))

(declare-fun m!1328435 () Bool)

(assert (=> start!124456 m!1328435))

(declare-fun m!1328437 () Bool)

(assert (=> b!1439294 m!1328437))

(assert (=> b!1439294 m!1328437))

(declare-fun m!1328439 () Bool)

(assert (=> b!1439294 m!1328439))

(push 1)

