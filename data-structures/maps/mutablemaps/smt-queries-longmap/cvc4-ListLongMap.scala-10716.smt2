; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125480 () Bool)

(assert start!125480)

(declare-fun b!1467408 () Bool)

(declare-fun res!996060 () Bool)

(declare-fun e!824272 () Bool)

(assert (=> b!1467408 (=> (not res!996060) (not e!824272))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!98845 0))(
  ( (array!98846 (arr!47706 (Array (_ BitVec 32) (_ BitVec 64))) (size!48257 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98845)

(assert (=> b!1467408 (= res!996060 (and (= (size!48257 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48257 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48257 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1467409 () Bool)

(assert (=> b!1467409 (= e!824272 false)))

(declare-fun lt!642049 () Bool)

(declare-datatypes ((List!34387 0))(
  ( (Nil!34384) (Cons!34383 (h!35733 (_ BitVec 64)) (t!49088 List!34387)) )
))
(declare-fun arrayNoDuplicates!0 (array!98845 (_ BitVec 32) List!34387) Bool)

(assert (=> b!1467409 (= lt!642049 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34384))))

(declare-fun b!1467410 () Bool)

(declare-fun res!996059 () Bool)

(assert (=> b!1467410 (=> (not res!996059) (not e!824272))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1467410 (= res!996059 (validKeyInArray!0 (select (arr!47706 a!2862) i!1006)))))

(declare-fun res!996057 () Bool)

(assert (=> start!125480 (=> (not res!996057) (not e!824272))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125480 (= res!996057 (validMask!0 mask!2687))))

(assert (=> start!125480 e!824272))

(assert (=> start!125480 true))

(declare-fun array_inv!36651 (array!98845) Bool)

(assert (=> start!125480 (array_inv!36651 a!2862)))

(declare-fun b!1467411 () Bool)

(declare-fun res!996056 () Bool)

(assert (=> b!1467411 (=> (not res!996056) (not e!824272))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98845 (_ BitVec 32)) Bool)

(assert (=> b!1467411 (= res!996056 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1467412 () Bool)

(declare-fun res!996058 () Bool)

(assert (=> b!1467412 (=> (not res!996058) (not e!824272))))

(assert (=> b!1467412 (= res!996058 (validKeyInArray!0 (select (arr!47706 a!2862) j!93)))))

(assert (= (and start!125480 res!996057) b!1467408))

(assert (= (and b!1467408 res!996060) b!1467410))

(assert (= (and b!1467410 res!996059) b!1467412))

(assert (= (and b!1467412 res!996058) b!1467411))

(assert (= (and b!1467411 res!996056) b!1467409))

(declare-fun m!1354409 () Bool)

(assert (=> start!125480 m!1354409))

(declare-fun m!1354411 () Bool)

(assert (=> start!125480 m!1354411))

(declare-fun m!1354413 () Bool)

(assert (=> b!1467409 m!1354413))

(declare-fun m!1354415 () Bool)

(assert (=> b!1467410 m!1354415))

(assert (=> b!1467410 m!1354415))

(declare-fun m!1354417 () Bool)

(assert (=> b!1467410 m!1354417))

(declare-fun m!1354419 () Bool)

(assert (=> b!1467411 m!1354419))

(declare-fun m!1354421 () Bool)

(assert (=> b!1467412 m!1354421))

(assert (=> b!1467412 m!1354421))

(declare-fun m!1354423 () Bool)

(assert (=> b!1467412 m!1354423))

(push 1)

(assert (not b!1467410))

(assert (not b!1467412))

(assert (not b!1467411))

(assert (not start!125480))

(assert (not b!1467409))

(check-sat)

