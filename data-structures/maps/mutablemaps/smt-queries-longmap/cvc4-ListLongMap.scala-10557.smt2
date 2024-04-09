; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124526 () Bool)

(assert start!124526)

(declare-fun res!972838 () Bool)

(declare-fun e!812148 () Bool)

(assert (=> start!124526 (=> (not res!972838) (not e!812148))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124526 (= res!972838 (validMask!0 mask!2687))))

(assert (=> start!124526 e!812148))

(assert (=> start!124526 true))

(declare-datatypes ((array!97891 0))(
  ( (array!97892 (arr!47229 (Array (_ BitVec 32) (_ BitVec 64))) (size!47780 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97891)

(declare-fun array_inv!36174 (array!97891) Bool)

(assert (=> start!124526 (array_inv!36174 a!2862)))

(declare-fun b!1440295 () Bool)

(declare-fun res!972833 () Bool)

(assert (=> b!1440295 (=> (not res!972833) (not e!812148))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1440295 (= res!972833 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47780 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47780 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47780 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47229 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1440296 () Bool)

(declare-fun res!972835 () Bool)

(assert (=> b!1440296 (=> (not res!972835) (not e!812148))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1440296 (= res!972835 (validKeyInArray!0 (select (arr!47229 a!2862) i!1006)))))

(declare-fun b!1440297 () Bool)

(declare-fun res!972834 () Bool)

(declare-fun e!812149 () Bool)

(assert (=> b!1440297 (=> (not res!972834) (not e!812149))))

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11504 0))(
  ( (MissingZero!11504 (index!48407 (_ BitVec 32))) (Found!11504 (index!48408 (_ BitVec 32))) (Intermediate!11504 (undefined!12316 Bool) (index!48409 (_ BitVec 32)) (x!130132 (_ BitVec 32))) (Undefined!11504) (MissingVacant!11504 (index!48410 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97891 (_ BitVec 32)) SeekEntryResult!11504)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1440297 (= res!972834 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!47229 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (select (store (arr!47229 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!97892 (store (arr!47229 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47780 a!2862)) mask!2687) (Intermediate!11504 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun b!1440298 () Bool)

(declare-fun res!972831 () Bool)

(assert (=> b!1440298 (=> (not res!972831) (not e!812148))))

(assert (=> b!1440298 (= res!972831 (and (= (size!47780 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47780 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47780 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1440299 () Bool)

(declare-fun res!972839 () Bool)

(assert (=> b!1440299 (=> (not res!972839) (not e!812148))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97891 (_ BitVec 32)) Bool)

(assert (=> b!1440299 (= res!972839 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1440300 () Bool)

(declare-fun res!972837 () Bool)

(assert (=> b!1440300 (=> (not res!972837) (not e!812148))))

(assert (=> b!1440300 (= res!972837 (validKeyInArray!0 (select (arr!47229 a!2862) j!93)))))

(declare-fun b!1440301 () Bool)

(assert (=> b!1440301 (= e!812149 (and (bvsgt x!665 intermediateAfterX!19) (bvsge mask!2687 #b00000000000000000000000000000000) (bvslt index!646 (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge intermediateAfterIndex!19 (bvadd #b00000000000000000000000000000001 mask!2687))))))

(declare-fun b!1440302 () Bool)

(declare-fun res!972836 () Bool)

(assert (=> b!1440302 (=> (not res!972836) (not e!812149))))

(declare-fun lt!632896 () SeekEntryResult!11504)

(assert (=> b!1440302 (= res!972836 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47229 a!2862) j!93) a!2862 mask!2687) lt!632896))))

(declare-fun b!1440303 () Bool)

(assert (=> b!1440303 (= e!812148 e!812149)))

(declare-fun res!972832 () Bool)

(assert (=> b!1440303 (=> (not res!972832) (not e!812149))))

(assert (=> b!1440303 (= res!972832 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47229 a!2862) j!93) mask!2687) (select (arr!47229 a!2862) j!93) a!2862 mask!2687) lt!632896))))

(assert (=> b!1440303 (= lt!632896 (Intermediate!11504 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1440304 () Bool)

(declare-fun res!972840 () Bool)

(assert (=> b!1440304 (=> (not res!972840) (not e!812148))))

(declare-datatypes ((List!33910 0))(
  ( (Nil!33907) (Cons!33906 (h!35256 (_ BitVec 64)) (t!48611 List!33910)) )
))
(declare-fun arrayNoDuplicates!0 (array!97891 (_ BitVec 32) List!33910) Bool)

(assert (=> b!1440304 (= res!972840 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33907))))

(assert (= (and start!124526 res!972838) b!1440298))

(assert (= (and b!1440298 res!972831) b!1440296))

(assert (= (and b!1440296 res!972835) b!1440300))

(assert (= (and b!1440300 res!972837) b!1440299))

(assert (= (and b!1440299 res!972839) b!1440304))

(assert (= (and b!1440304 res!972840) b!1440295))

(assert (= (and b!1440295 res!972833) b!1440303))

(assert (= (and b!1440303 res!972832) b!1440302))

(assert (= (and b!1440302 res!972836) b!1440297))

(assert (= (and b!1440297 res!972834) b!1440301))

(declare-fun m!1329535 () Bool)

(assert (=> b!1440297 m!1329535))

(declare-fun m!1329537 () Bool)

(assert (=> b!1440297 m!1329537))

(assert (=> b!1440297 m!1329537))

(declare-fun m!1329539 () Bool)

(assert (=> b!1440297 m!1329539))

(assert (=> b!1440297 m!1329539))

(assert (=> b!1440297 m!1329537))

(declare-fun m!1329541 () Bool)

(assert (=> b!1440297 m!1329541))

(declare-fun m!1329543 () Bool)

(assert (=> start!124526 m!1329543))

(declare-fun m!1329545 () Bool)

(assert (=> start!124526 m!1329545))

(declare-fun m!1329547 () Bool)

(assert (=> b!1440304 m!1329547))

(declare-fun m!1329549 () Bool)

(assert (=> b!1440302 m!1329549))

(assert (=> b!1440302 m!1329549))

(declare-fun m!1329551 () Bool)

(assert (=> b!1440302 m!1329551))

(assert (=> b!1440303 m!1329549))

(assert (=> b!1440303 m!1329549))

(declare-fun m!1329553 () Bool)

(assert (=> b!1440303 m!1329553))

(assert (=> b!1440303 m!1329553))

(assert (=> b!1440303 m!1329549))

(declare-fun m!1329555 () Bool)

(assert (=> b!1440303 m!1329555))

(assert (=> b!1440300 m!1329549))

(assert (=> b!1440300 m!1329549))

(declare-fun m!1329557 () Bool)

(assert (=> b!1440300 m!1329557))

(assert (=> b!1440295 m!1329535))

(declare-fun m!1329559 () Bool)

(assert (=> b!1440295 m!1329559))

(declare-fun m!1329561 () Bool)

(assert (=> b!1440299 m!1329561))

(declare-fun m!1329563 () Bool)

(assert (=> b!1440296 m!1329563))

(assert (=> b!1440296 m!1329563))

(declare-fun m!1329565 () Bool)

(assert (=> b!1440296 m!1329565))

(push 1)

(assert (not b!1440302))

(assert (not b!1440297))

(assert (not b!1440303))

(assert (not b!1440304))

(assert (not b!1440300))

(assert (not start!124526))

(assert (not b!1440296))

(assert (not b!1440299))

(check-sat)

(pop 1)

(push 1)

(check-sat)

