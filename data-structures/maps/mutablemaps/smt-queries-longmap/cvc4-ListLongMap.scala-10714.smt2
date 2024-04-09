; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125468 () Bool)

(assert start!125468)

(declare-fun b!1467318 () Bool)

(declare-fun e!824236 () Bool)

(assert (=> b!1467318 (= e!824236 false)))

(declare-fun lt!642031 () Bool)

(declare-datatypes ((array!98833 0))(
  ( (array!98834 (arr!47700 (Array (_ BitVec 32) (_ BitVec 64))) (size!48251 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98833)

(declare-datatypes ((List!34381 0))(
  ( (Nil!34378) (Cons!34377 (h!35727 (_ BitVec 64)) (t!49082 List!34381)) )
))
(declare-fun arrayNoDuplicates!0 (array!98833 (_ BitVec 32) List!34381) Bool)

(assert (=> b!1467318 (= lt!642031 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34378))))

(declare-fun b!1467319 () Bool)

(declare-fun res!995968 () Bool)

(assert (=> b!1467319 (=> (not res!995968) (not e!824236))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98833 (_ BitVec 32)) Bool)

(assert (=> b!1467319 (= res!995968 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun res!995970 () Bool)

(assert (=> start!125468 (=> (not res!995970) (not e!824236))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125468 (= res!995970 (validMask!0 mask!2687))))

(assert (=> start!125468 e!824236))

(assert (=> start!125468 true))

(declare-fun array_inv!36645 (array!98833) Bool)

(assert (=> start!125468 (array_inv!36645 a!2862)))

(declare-fun b!1467320 () Bool)

(declare-fun res!995967 () Bool)

(assert (=> b!1467320 (=> (not res!995967) (not e!824236))))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1467320 (= res!995967 (validKeyInArray!0 (select (arr!47700 a!2862) i!1006)))))

(declare-fun b!1467321 () Bool)

(declare-fun res!995969 () Bool)

(assert (=> b!1467321 (=> (not res!995969) (not e!824236))))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1467321 (= res!995969 (validKeyInArray!0 (select (arr!47700 a!2862) j!93)))))

(declare-fun b!1467322 () Bool)

(declare-fun res!995966 () Bool)

(assert (=> b!1467322 (=> (not res!995966) (not e!824236))))

(assert (=> b!1467322 (= res!995966 (and (= (size!48251 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48251 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48251 a!2862)) (not (= i!1006 j!93))))))

(assert (= (and start!125468 res!995970) b!1467322))

(assert (= (and b!1467322 res!995966) b!1467320))

(assert (= (and b!1467320 res!995967) b!1467321))

(assert (= (and b!1467321 res!995969) b!1467319))

(assert (= (and b!1467319 res!995968) b!1467318))

(declare-fun m!1354313 () Bool)

(assert (=> b!1467318 m!1354313))

(declare-fun m!1354315 () Bool)

(assert (=> b!1467321 m!1354315))

(assert (=> b!1467321 m!1354315))

(declare-fun m!1354317 () Bool)

(assert (=> b!1467321 m!1354317))

(declare-fun m!1354319 () Bool)

(assert (=> start!125468 m!1354319))

(declare-fun m!1354321 () Bool)

(assert (=> start!125468 m!1354321))

(declare-fun m!1354323 () Bool)

(assert (=> b!1467319 m!1354323))

(declare-fun m!1354325 () Bool)

(assert (=> b!1467320 m!1354325))

(assert (=> b!1467320 m!1354325))

(declare-fun m!1354327 () Bool)

(assert (=> b!1467320 m!1354327))

(push 1)

(assert (not b!1467319))

(assert (not b!1467321))

(assert (not b!1467318))

(assert (not start!125468))

(assert (not b!1467320))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

