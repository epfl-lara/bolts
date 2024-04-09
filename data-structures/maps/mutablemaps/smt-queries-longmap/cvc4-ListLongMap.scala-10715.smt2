; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125474 () Bool)

(assert start!125474)

(declare-fun res!996015 () Bool)

(declare-fun e!824255 () Bool)

(assert (=> start!125474 (=> (not res!996015) (not e!824255))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125474 (= res!996015 (validMask!0 mask!2687))))

(assert (=> start!125474 e!824255))

(assert (=> start!125474 true))

(declare-datatypes ((array!98839 0))(
  ( (array!98840 (arr!47703 (Array (_ BitVec 32) (_ BitVec 64))) (size!48254 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98839)

(declare-fun array_inv!36648 (array!98839) Bool)

(assert (=> start!125474 (array_inv!36648 a!2862)))

(declare-fun b!1467363 () Bool)

(declare-fun res!996014 () Bool)

(assert (=> b!1467363 (=> (not res!996014) (not e!824255))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1467363 (= res!996014 (validKeyInArray!0 (select (arr!47703 a!2862) j!93)))))

(declare-fun b!1467364 () Bool)

(declare-fun res!996012 () Bool)

(assert (=> b!1467364 (=> (not res!996012) (not e!824255))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1467364 (= res!996012 (and (= (size!48254 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48254 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48254 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1467365 () Bool)

(declare-fun res!996011 () Bool)

(assert (=> b!1467365 (=> (not res!996011) (not e!824255))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98839 (_ BitVec 32)) Bool)

(assert (=> b!1467365 (= res!996011 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1467366 () Bool)

(declare-fun res!996013 () Bool)

(assert (=> b!1467366 (=> (not res!996013) (not e!824255))))

(assert (=> b!1467366 (= res!996013 (validKeyInArray!0 (select (arr!47703 a!2862) i!1006)))))

(declare-fun b!1467367 () Bool)

(assert (=> b!1467367 (= e!824255 false)))

(declare-fun lt!642040 () Bool)

(declare-datatypes ((List!34384 0))(
  ( (Nil!34381) (Cons!34380 (h!35730 (_ BitVec 64)) (t!49085 List!34384)) )
))
(declare-fun arrayNoDuplicates!0 (array!98839 (_ BitVec 32) List!34384) Bool)

(assert (=> b!1467367 (= lt!642040 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34381))))

(assert (= (and start!125474 res!996015) b!1467364))

(assert (= (and b!1467364 res!996012) b!1467366))

(assert (= (and b!1467366 res!996013) b!1467363))

(assert (= (and b!1467363 res!996014) b!1467365))

(assert (= (and b!1467365 res!996011) b!1467367))

(declare-fun m!1354361 () Bool)

(assert (=> b!1467365 m!1354361))

(declare-fun m!1354363 () Bool)

(assert (=> b!1467366 m!1354363))

(assert (=> b!1467366 m!1354363))

(declare-fun m!1354365 () Bool)

(assert (=> b!1467366 m!1354365))

(declare-fun m!1354367 () Bool)

(assert (=> start!125474 m!1354367))

(declare-fun m!1354369 () Bool)

(assert (=> start!125474 m!1354369))

(declare-fun m!1354371 () Bool)

(assert (=> b!1467363 m!1354371))

(assert (=> b!1467363 m!1354371))

(declare-fun m!1354373 () Bool)

(assert (=> b!1467363 m!1354373))

(declare-fun m!1354375 () Bool)

(assert (=> b!1467367 m!1354375))

(push 1)

(assert (not b!1467366))

(assert (not b!1467363))

(assert (not start!125474))

(assert (not b!1467367))

(assert (not b!1467365))

(check-sat)

(pop 1)

(push 1)

