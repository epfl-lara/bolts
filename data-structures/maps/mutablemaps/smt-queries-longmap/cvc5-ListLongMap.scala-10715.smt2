; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125470 () Bool)

(assert start!125470)

(declare-fun b!1467333 () Bool)

(declare-fun res!995985 () Bool)

(declare-fun e!824243 () Bool)

(assert (=> b!1467333 (=> (not res!995985) (not e!824243))))

(declare-datatypes ((array!98835 0))(
  ( (array!98836 (arr!47701 (Array (_ BitVec 32) (_ BitVec 64))) (size!48252 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98835)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98835 (_ BitVec 32)) Bool)

(assert (=> b!1467333 (= res!995985 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun res!995982 () Bool)

(assert (=> start!125470 (=> (not res!995982) (not e!824243))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125470 (= res!995982 (validMask!0 mask!2687))))

(assert (=> start!125470 e!824243))

(assert (=> start!125470 true))

(declare-fun array_inv!36646 (array!98835) Bool)

(assert (=> start!125470 (array_inv!36646 a!2862)))

(declare-fun b!1467334 () Bool)

(assert (=> b!1467334 (= e!824243 false)))

(declare-fun lt!642034 () Bool)

(declare-datatypes ((List!34382 0))(
  ( (Nil!34379) (Cons!34378 (h!35728 (_ BitVec 64)) (t!49083 List!34382)) )
))
(declare-fun arrayNoDuplicates!0 (array!98835 (_ BitVec 32) List!34382) Bool)

(assert (=> b!1467334 (= lt!642034 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34379))))

(declare-fun b!1467335 () Bool)

(declare-fun res!995981 () Bool)

(assert (=> b!1467335 (=> (not res!995981) (not e!824243))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1467335 (= res!995981 (validKeyInArray!0 (select (arr!47701 a!2862) j!93)))))

(declare-fun b!1467336 () Bool)

(declare-fun res!995983 () Bool)

(assert (=> b!1467336 (=> (not res!995983) (not e!824243))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1467336 (= res!995983 (validKeyInArray!0 (select (arr!47701 a!2862) i!1006)))))

(declare-fun b!1467337 () Bool)

(declare-fun res!995984 () Bool)

(assert (=> b!1467337 (=> (not res!995984) (not e!824243))))

(assert (=> b!1467337 (= res!995984 (and (= (size!48252 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48252 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48252 a!2862)) (not (= i!1006 j!93))))))

(assert (= (and start!125470 res!995982) b!1467337))

(assert (= (and b!1467337 res!995984) b!1467336))

(assert (= (and b!1467336 res!995983) b!1467335))

(assert (= (and b!1467335 res!995981) b!1467333))

(assert (= (and b!1467333 res!995985) b!1467334))

(declare-fun m!1354329 () Bool)

(assert (=> b!1467333 m!1354329))

(declare-fun m!1354331 () Bool)

(assert (=> b!1467336 m!1354331))

(assert (=> b!1467336 m!1354331))

(declare-fun m!1354333 () Bool)

(assert (=> b!1467336 m!1354333))

(declare-fun m!1354335 () Bool)

(assert (=> start!125470 m!1354335))

(declare-fun m!1354337 () Bool)

(assert (=> start!125470 m!1354337))

(declare-fun m!1354339 () Bool)

(assert (=> b!1467334 m!1354339))

(declare-fun m!1354341 () Bool)

(assert (=> b!1467335 m!1354341))

(assert (=> b!1467335 m!1354341))

(declare-fun m!1354343 () Bool)

(assert (=> b!1467335 m!1354343))

(push 1)

(assert (not start!125470))

(assert (not b!1467336))

(assert (not b!1467334))

(assert (not b!1467333))

(assert (not b!1467335))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

