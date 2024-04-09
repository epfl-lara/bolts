; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124464 () Bool)

(assert start!124464)

(declare-fun b!1439401 () Bool)

(declare-fun res!971946 () Bool)

(declare-fun e!811869 () Bool)

(assert (=> b!1439401 (=> (not res!971946) (not e!811869))))

(declare-datatypes ((array!97829 0))(
  ( (array!97830 (arr!47198 (Array (_ BitVec 32) (_ BitVec 64))) (size!47749 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97829)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97829 (_ BitVec 32)) Bool)

(assert (=> b!1439401 (= res!971946 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1439402 () Bool)

(declare-fun res!971943 () Bool)

(assert (=> b!1439402 (=> (not res!971943) (not e!811869))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1439402 (= res!971943 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47749 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47749 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47749 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47198 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1439403 () Bool)

(declare-fun res!971942 () Bool)

(assert (=> b!1439403 (=> (not res!971942) (not e!811869))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1439403 (= res!971942 (validKeyInArray!0 (select (arr!47198 a!2862) j!93)))))

(declare-fun b!1439404 () Bool)

(declare-fun res!971944 () Bool)

(declare-fun e!811871 () Bool)

(assert (=> b!1439404 (=> (not res!971944) (not e!811871))))

(declare-datatypes ((SeekEntryResult!11473 0))(
  ( (MissingZero!11473 (index!48283 (_ BitVec 32))) (Found!11473 (index!48284 (_ BitVec 32))) (Intermediate!11473 (undefined!12285 Bool) (index!48285 (_ BitVec 32)) (x!130021 (_ BitVec 32))) (Undefined!11473) (MissingVacant!11473 (index!48286 (_ BitVec 32))) )
))
(declare-fun lt!632758 () SeekEntryResult!11473)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97829 (_ BitVec 32)) SeekEntryResult!11473)

(assert (=> b!1439404 (= res!971944 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47198 a!2862) j!93) a!2862 mask!2687) lt!632758))))

(declare-fun b!1439405 () Bool)

(assert (=> b!1439405 (= e!811871 (and (bvsle x!665 intermediateAfterX!19) (bvslt mask!2687 #b00000000000000000000000000000000)))))

(declare-fun b!1439406 () Bool)

(assert (=> b!1439406 (= e!811869 e!811871)))

(declare-fun res!971939 () Bool)

(assert (=> b!1439406 (=> (not res!971939) (not e!811871))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1439406 (= res!971939 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47198 a!2862) j!93) mask!2687) (select (arr!47198 a!2862) j!93) a!2862 mask!2687) lt!632758))))

(assert (=> b!1439406 (= lt!632758 (Intermediate!11473 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1439407 () Bool)

(declare-fun res!971940 () Bool)

(assert (=> b!1439407 (=> (not res!971940) (not e!811869))))

(assert (=> b!1439407 (= res!971940 (and (= (size!47749 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47749 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47749 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1439408 () Bool)

(declare-fun res!971938 () Bool)

(assert (=> b!1439408 (=> (not res!971938) (not e!811869))))

(declare-datatypes ((List!33879 0))(
  ( (Nil!33876) (Cons!33875 (h!35225 (_ BitVec 64)) (t!48580 List!33879)) )
))
(declare-fun arrayNoDuplicates!0 (array!97829 (_ BitVec 32) List!33879) Bool)

(assert (=> b!1439408 (= res!971938 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33876))))

(declare-fun res!971945 () Bool)

(assert (=> start!124464 (=> (not res!971945) (not e!811869))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124464 (= res!971945 (validMask!0 mask!2687))))

(assert (=> start!124464 e!811869))

(assert (=> start!124464 true))

(declare-fun array_inv!36143 (array!97829) Bool)

(assert (=> start!124464 (array_inv!36143 a!2862)))

(declare-fun b!1439409 () Bool)

(declare-fun res!971941 () Bool)

(assert (=> b!1439409 (=> (not res!971941) (not e!811871))))

(assert (=> b!1439409 (= res!971941 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!47198 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (select (store (arr!47198 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!97830 (store (arr!47198 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47749 a!2862)) mask!2687) (Intermediate!11473 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun b!1439410 () Bool)

(declare-fun res!971937 () Bool)

(assert (=> b!1439410 (=> (not res!971937) (not e!811869))))

(assert (=> b!1439410 (= res!971937 (validKeyInArray!0 (select (arr!47198 a!2862) i!1006)))))

(assert (= (and start!124464 res!971945) b!1439407))

(assert (= (and b!1439407 res!971940) b!1439410))

(assert (= (and b!1439410 res!971937) b!1439403))

(assert (= (and b!1439403 res!971942) b!1439401))

(assert (= (and b!1439401 res!971946) b!1439408))

(assert (= (and b!1439408 res!971938) b!1439402))

(assert (= (and b!1439402 res!971943) b!1439406))

(assert (= (and b!1439406 res!971939) b!1439404))

(assert (= (and b!1439404 res!971944) b!1439409))

(assert (= (and b!1439409 res!971941) b!1439405))

(declare-fun m!1328537 () Bool)

(assert (=> b!1439401 m!1328537))

(declare-fun m!1328539 () Bool)

(assert (=> b!1439410 m!1328539))

(assert (=> b!1439410 m!1328539))

(declare-fun m!1328541 () Bool)

(assert (=> b!1439410 m!1328541))

(declare-fun m!1328543 () Bool)

(assert (=> b!1439404 m!1328543))

(assert (=> b!1439404 m!1328543))

(declare-fun m!1328545 () Bool)

(assert (=> b!1439404 m!1328545))

(assert (=> b!1439406 m!1328543))

(assert (=> b!1439406 m!1328543))

(declare-fun m!1328547 () Bool)

(assert (=> b!1439406 m!1328547))

(assert (=> b!1439406 m!1328547))

(assert (=> b!1439406 m!1328543))

(declare-fun m!1328549 () Bool)

(assert (=> b!1439406 m!1328549))

(declare-fun m!1328551 () Bool)

(assert (=> b!1439409 m!1328551))

(declare-fun m!1328553 () Bool)

(assert (=> b!1439409 m!1328553))

(assert (=> b!1439409 m!1328553))

(declare-fun m!1328555 () Bool)

(assert (=> b!1439409 m!1328555))

(assert (=> b!1439409 m!1328555))

(assert (=> b!1439409 m!1328553))

(declare-fun m!1328557 () Bool)

(assert (=> b!1439409 m!1328557))

(assert (=> b!1439403 m!1328543))

(assert (=> b!1439403 m!1328543))

(declare-fun m!1328559 () Bool)

(assert (=> b!1439403 m!1328559))

(assert (=> b!1439402 m!1328551))

(declare-fun m!1328561 () Bool)

(assert (=> b!1439402 m!1328561))

(declare-fun m!1328563 () Bool)

(assert (=> start!124464 m!1328563))

(declare-fun m!1328565 () Bool)

(assert (=> start!124464 m!1328565))

(declare-fun m!1328567 () Bool)

(assert (=> b!1439408 m!1328567))

(check-sat (not b!1439401) (not b!1439409) (not b!1439410) (not b!1439408) (not start!124464) (not b!1439403) (not b!1439406) (not b!1439404))
(check-sat)
