; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125492 () Bool)

(assert start!125492)

(declare-fun b!1467532 () Bool)

(declare-fun res!996183 () Bool)

(declare-fun e!824308 () Bool)

(assert (=> b!1467532 (=> (not res!996183) (not e!824308))))

(declare-datatypes ((array!98857 0))(
  ( (array!98858 (arr!47712 (Array (_ BitVec 32) (_ BitVec 64))) (size!48263 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98857)

(declare-datatypes ((List!34393 0))(
  ( (Nil!34390) (Cons!34389 (h!35739 (_ BitVec 64)) (t!49094 List!34393)) )
))
(declare-fun arrayNoDuplicates!0 (array!98857 (_ BitVec 32) List!34393) Bool)

(assert (=> b!1467532 (= res!996183 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34390))))

(declare-fun b!1467533 () Bool)

(declare-fun res!996182 () Bool)

(assert (=> b!1467533 (=> (not res!996182) (not e!824308))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1467533 (= res!996182 (validKeyInArray!0 (select (arr!47712 a!2862) j!93)))))

(declare-fun b!1467534 () Bool)

(declare-fun res!996186 () Bool)

(assert (=> b!1467534 (=> (not res!996186) (not e!824308))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98857 (_ BitVec 32)) Bool)

(assert (=> b!1467534 (= res!996186 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1467535 () Bool)

(declare-fun res!996180 () Bool)

(assert (=> b!1467535 (=> (not res!996180) (not e!824308))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1467535 (= res!996180 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48263 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48263 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48263 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47712 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1467536 () Bool)

(declare-fun res!996181 () Bool)

(assert (=> b!1467536 (=> (not res!996181) (not e!824308))))

(assert (=> b!1467536 (= res!996181 (and (= (size!48263 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48263 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48263 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1467538 () Bool)

(declare-fun res!996184 () Bool)

(assert (=> b!1467538 (=> (not res!996184) (not e!824308))))

(assert (=> b!1467538 (= res!996184 (validKeyInArray!0 (select (arr!47712 a!2862) i!1006)))))

(declare-fun res!996185 () Bool)

(assert (=> start!125492 (=> (not res!996185) (not e!824308))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125492 (= res!996185 (validMask!0 mask!2687))))

(assert (=> start!125492 e!824308))

(assert (=> start!125492 true))

(declare-fun array_inv!36657 (array!98857) Bool)

(assert (=> start!125492 (array_inv!36657 a!2862)))

(declare-fun b!1467537 () Bool)

(assert (=> b!1467537 (= e!824308 false)))

(declare-datatypes ((SeekEntryResult!11975 0))(
  ( (MissingZero!11975 (index!50291 (_ BitVec 32))) (Found!11975 (index!50292 (_ BitVec 32))) (Intermediate!11975 (undefined!12787 Bool) (index!50293 (_ BitVec 32)) (x!131891 (_ BitVec 32))) (Undefined!11975) (MissingVacant!11975 (index!50294 (_ BitVec 32))) )
))
(declare-fun lt!642067 () SeekEntryResult!11975)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98857 (_ BitVec 32)) SeekEntryResult!11975)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1467537 (= lt!642067 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47712 a!2862) j!93) mask!2687) (select (arr!47712 a!2862) j!93) a!2862 mask!2687))))

(assert (= (and start!125492 res!996185) b!1467536))

(assert (= (and b!1467536 res!996181) b!1467538))

(assert (= (and b!1467538 res!996184) b!1467533))

(assert (= (and b!1467533 res!996182) b!1467534))

(assert (= (and b!1467534 res!996186) b!1467532))

(assert (= (and b!1467532 res!996183) b!1467535))

(assert (= (and b!1467535 res!996180) b!1467537))

(declare-fun m!1354539 () Bool)

(assert (=> b!1467538 m!1354539))

(assert (=> b!1467538 m!1354539))

(declare-fun m!1354541 () Bool)

(assert (=> b!1467538 m!1354541))

(declare-fun m!1354543 () Bool)

(assert (=> start!125492 m!1354543))

(declare-fun m!1354545 () Bool)

(assert (=> start!125492 m!1354545))

(declare-fun m!1354547 () Bool)

(assert (=> b!1467537 m!1354547))

(assert (=> b!1467537 m!1354547))

(declare-fun m!1354549 () Bool)

(assert (=> b!1467537 m!1354549))

(assert (=> b!1467537 m!1354549))

(assert (=> b!1467537 m!1354547))

(declare-fun m!1354551 () Bool)

(assert (=> b!1467537 m!1354551))

(declare-fun m!1354553 () Bool)

(assert (=> b!1467535 m!1354553))

(declare-fun m!1354555 () Bool)

(assert (=> b!1467535 m!1354555))

(assert (=> b!1467533 m!1354547))

(assert (=> b!1467533 m!1354547))

(declare-fun m!1354557 () Bool)

(assert (=> b!1467533 m!1354557))

(declare-fun m!1354559 () Bool)

(assert (=> b!1467532 m!1354559))

(declare-fun m!1354561 () Bool)

(assert (=> b!1467534 m!1354561))

(push 1)

(assert (not b!1467534))

(assert (not b!1467532))

(assert (not b!1467538))

(assert (not b!1467533))

(assert (not start!125492))

