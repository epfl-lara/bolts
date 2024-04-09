; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125464 () Bool)

(assert start!125464)

(declare-fun b!1467288 () Bool)

(declare-fun res!995936 () Bool)

(declare-fun e!824225 () Bool)

(assert (=> b!1467288 (=> (not res!995936) (not e!824225))))

(declare-datatypes ((array!98829 0))(
  ( (array!98830 (arr!47698 (Array (_ BitVec 32) (_ BitVec 64))) (size!48249 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98829)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1467288 (= res!995936 (validKeyInArray!0 (select (arr!47698 a!2862) j!93)))))

(declare-fun b!1467289 () Bool)

(declare-fun res!995939 () Bool)

(assert (=> b!1467289 (=> (not res!995939) (not e!824225))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98829 (_ BitVec 32)) Bool)

(assert (=> b!1467289 (= res!995939 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1467291 () Bool)

(assert (=> b!1467291 (= e!824225 false)))

(declare-fun lt!642025 () Bool)

(declare-datatypes ((List!34379 0))(
  ( (Nil!34376) (Cons!34375 (h!35725 (_ BitVec 64)) (t!49080 List!34379)) )
))
(declare-fun arrayNoDuplicates!0 (array!98829 (_ BitVec 32) List!34379) Bool)

(assert (=> b!1467291 (= lt!642025 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34376))))

(declare-fun b!1467292 () Bool)

(declare-fun res!995937 () Bool)

(assert (=> b!1467292 (=> (not res!995937) (not e!824225))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1467292 (= res!995937 (validKeyInArray!0 (select (arr!47698 a!2862) i!1006)))))

(declare-fun b!1467290 () Bool)

(declare-fun res!995940 () Bool)

(assert (=> b!1467290 (=> (not res!995940) (not e!824225))))

(assert (=> b!1467290 (= res!995940 (and (= (size!48249 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48249 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48249 a!2862)) (not (= i!1006 j!93))))))

(declare-fun res!995938 () Bool)

(assert (=> start!125464 (=> (not res!995938) (not e!824225))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125464 (= res!995938 (validMask!0 mask!2687))))

(assert (=> start!125464 e!824225))

(assert (=> start!125464 true))

(declare-fun array_inv!36643 (array!98829) Bool)

(assert (=> start!125464 (array_inv!36643 a!2862)))

(assert (= (and start!125464 res!995938) b!1467290))

(assert (= (and b!1467290 res!995940) b!1467292))

(assert (= (and b!1467292 res!995937) b!1467288))

(assert (= (and b!1467288 res!995936) b!1467289))

(assert (= (and b!1467289 res!995939) b!1467291))

(declare-fun m!1354281 () Bool)

(assert (=> b!1467291 m!1354281))

(declare-fun m!1354283 () Bool)

(assert (=> b!1467292 m!1354283))

(assert (=> b!1467292 m!1354283))

(declare-fun m!1354285 () Bool)

(assert (=> b!1467292 m!1354285))

(declare-fun m!1354287 () Bool)

(assert (=> start!125464 m!1354287))

(declare-fun m!1354289 () Bool)

(assert (=> start!125464 m!1354289))

(declare-fun m!1354291 () Bool)

(assert (=> b!1467289 m!1354291))

(declare-fun m!1354293 () Bool)

(assert (=> b!1467288 m!1354293))

(assert (=> b!1467288 m!1354293))

(declare-fun m!1354295 () Bool)

(assert (=> b!1467288 m!1354295))

(push 1)

(assert (not start!125464))

(assert (not b!1467289))

(assert (not b!1467288))

(assert (not b!1467292))

(assert (not b!1467291))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

