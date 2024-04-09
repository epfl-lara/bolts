; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124474 () Bool)

(assert start!124474)

(declare-fun b!1439542 () Bool)

(declare-fun res!972084 () Bool)

(declare-fun e!811915 () Bool)

(assert (=> b!1439542 (=> (not res!972084) (not e!811915))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!97839 0))(
  ( (array!97840 (arr!47203 (Array (_ BitVec 32) (_ BitVec 64))) (size!47754 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97839)

(assert (=> b!1439542 (= res!972084 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47754 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47754 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47754 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47203 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1439543 () Bool)

(declare-fun res!972081 () Bool)

(assert (=> b!1439543 (=> (not res!972081) (not e!811915))))

(declare-datatypes ((List!33884 0))(
  ( (Nil!33881) (Cons!33880 (h!35230 (_ BitVec 64)) (t!48585 List!33884)) )
))
(declare-fun arrayNoDuplicates!0 (array!97839 (_ BitVec 32) List!33884) Bool)

(assert (=> b!1439543 (= res!972081 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33881))))

(declare-fun b!1439544 () Bool)

(declare-fun e!811914 () Bool)

(assert (=> b!1439544 (= e!811915 e!811914)))

(declare-fun res!972082 () Bool)

(assert (=> b!1439544 (=> (not res!972082) (not e!811914))))

(declare-datatypes ((SeekEntryResult!11478 0))(
  ( (MissingZero!11478 (index!48303 (_ BitVec 32))) (Found!11478 (index!48304 (_ BitVec 32))) (Intermediate!11478 (undefined!12290 Bool) (index!48305 (_ BitVec 32)) (x!130042 (_ BitVec 32))) (Undefined!11478) (MissingVacant!11478 (index!48306 (_ BitVec 32))) )
))
(declare-fun lt!632782 () SeekEntryResult!11478)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97839 (_ BitVec 32)) SeekEntryResult!11478)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1439544 (= res!972082 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47203 a!2862) j!93) mask!2687) (select (arr!47203 a!2862) j!93) a!2862 mask!2687) lt!632782))))

(assert (=> b!1439544 (= lt!632782 (Intermediate!11478 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1439545 () Bool)

(declare-fun res!972086 () Bool)

(assert (=> b!1439545 (=> (not res!972086) (not e!811914))))

(assert (=> b!1439545 (= res!972086 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47203 a!2862) j!93) a!2862 mask!2687) lt!632782))))

(declare-fun b!1439546 () Bool)

(declare-fun res!972079 () Bool)

(assert (=> b!1439546 (=> (not res!972079) (not e!811915))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97839 (_ BitVec 32)) Bool)

(assert (=> b!1439546 (= res!972079 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun res!972085 () Bool)

(assert (=> start!124474 (=> (not res!972085) (not e!811915))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124474 (= res!972085 (validMask!0 mask!2687))))

(assert (=> start!124474 e!811915))

(assert (=> start!124474 true))

(declare-fun array_inv!36148 (array!97839) Bool)

(assert (=> start!124474 (array_inv!36148 a!2862)))

(declare-fun b!1439547 () Bool)

(assert (=> b!1439547 (= e!811914 (and (bvsle x!665 intermediateAfterX!19) (bvsge mask!2687 #b00000000000000000000000000000000) (bvsge index!646 (bvadd #b00000000000000000000000000000001 mask!2687))))))

(declare-fun b!1439548 () Bool)

(declare-fun res!972080 () Bool)

(assert (=> b!1439548 (=> (not res!972080) (not e!811915))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1439548 (= res!972080 (validKeyInArray!0 (select (arr!47203 a!2862) j!93)))))

(declare-fun b!1439549 () Bool)

(declare-fun res!972078 () Bool)

(assert (=> b!1439549 (=> (not res!972078) (not e!811915))))

(assert (=> b!1439549 (= res!972078 (and (= (size!47754 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47754 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47754 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1439550 () Bool)

(declare-fun res!972083 () Bool)

(assert (=> b!1439550 (=> (not res!972083) (not e!811915))))

(assert (=> b!1439550 (= res!972083 (validKeyInArray!0 (select (arr!47203 a!2862) i!1006)))))

(declare-fun b!1439551 () Bool)

(declare-fun res!972087 () Bool)

(assert (=> b!1439551 (=> (not res!972087) (not e!811914))))

(assert (=> b!1439551 (= res!972087 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!47203 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (select (store (arr!47203 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!97840 (store (arr!47203 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47754 a!2862)) mask!2687) (Intermediate!11478 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (= (and start!124474 res!972085) b!1439549))

(assert (= (and b!1439549 res!972078) b!1439550))

(assert (= (and b!1439550 res!972083) b!1439548))

(assert (= (and b!1439548 res!972080) b!1439546))

(assert (= (and b!1439546 res!972079) b!1439543))

(assert (= (and b!1439543 res!972081) b!1439542))

(assert (= (and b!1439542 res!972084) b!1439544))

(assert (= (and b!1439544 res!972082) b!1439545))

(assert (= (and b!1439545 res!972086) b!1439551))

(assert (= (and b!1439551 res!972087) b!1439547))

(declare-fun m!1328697 () Bool)

(assert (=> b!1439551 m!1328697))

(declare-fun m!1328699 () Bool)

(assert (=> b!1439551 m!1328699))

(assert (=> b!1439551 m!1328699))

(declare-fun m!1328701 () Bool)

(assert (=> b!1439551 m!1328701))

(assert (=> b!1439551 m!1328701))

(assert (=> b!1439551 m!1328699))

(declare-fun m!1328703 () Bool)

(assert (=> b!1439551 m!1328703))

(declare-fun m!1328705 () Bool)

(assert (=> b!1439544 m!1328705))

(assert (=> b!1439544 m!1328705))

(declare-fun m!1328707 () Bool)

(assert (=> b!1439544 m!1328707))

(assert (=> b!1439544 m!1328707))

(assert (=> b!1439544 m!1328705))

(declare-fun m!1328709 () Bool)

(assert (=> b!1439544 m!1328709))

(declare-fun m!1328711 () Bool)

(assert (=> b!1439543 m!1328711))

(declare-fun m!1328713 () Bool)

(assert (=> start!124474 m!1328713))

(declare-fun m!1328715 () Bool)

(assert (=> start!124474 m!1328715))

(assert (=> b!1439542 m!1328697))

(declare-fun m!1328717 () Bool)

(assert (=> b!1439542 m!1328717))

(assert (=> b!1439548 m!1328705))

(assert (=> b!1439548 m!1328705))

(declare-fun m!1328719 () Bool)

(assert (=> b!1439548 m!1328719))

(assert (=> b!1439545 m!1328705))

(assert (=> b!1439545 m!1328705))

(declare-fun m!1328721 () Bool)

(assert (=> b!1439545 m!1328721))

(declare-fun m!1328723 () Bool)

(assert (=> b!1439550 m!1328723))

(assert (=> b!1439550 m!1328723))

(declare-fun m!1328725 () Bool)

(assert (=> b!1439550 m!1328725))

(declare-fun m!1328727 () Bool)

(assert (=> b!1439546 m!1328727))

(push 1)

(assert (not start!124474))

(assert (not b!1439551))

(assert (not b!1439550))

(assert (not b!1439543))

(assert (not b!1439546))

(assert (not b!1439545))

(assert (not b!1439548))

(assert (not b!1439544))

(check-sat)

(pop 1)

(push 1)

(check-sat)

