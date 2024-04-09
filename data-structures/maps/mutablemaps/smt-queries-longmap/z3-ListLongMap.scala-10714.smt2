; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125466 () Bool)

(assert start!125466)

(declare-fun res!995953 () Bool)

(declare-fun e!824230 () Bool)

(assert (=> start!125466 (=> (not res!995953) (not e!824230))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125466 (= res!995953 (validMask!0 mask!2687))))

(assert (=> start!125466 e!824230))

(assert (=> start!125466 true))

(declare-datatypes ((array!98831 0))(
  ( (array!98832 (arr!47699 (Array (_ BitVec 32) (_ BitVec 64))) (size!48250 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98831)

(declare-fun array_inv!36644 (array!98831) Bool)

(assert (=> start!125466 (array_inv!36644 a!2862)))

(declare-fun b!1467303 () Bool)

(declare-fun res!995951 () Bool)

(assert (=> b!1467303 (=> (not res!995951) (not e!824230))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98831 (_ BitVec 32)) Bool)

(assert (=> b!1467303 (= res!995951 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1467304 () Bool)

(declare-fun res!995954 () Bool)

(assert (=> b!1467304 (=> (not res!995954) (not e!824230))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1467304 (= res!995954 (and (= (size!48250 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48250 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48250 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1467305 () Bool)

(declare-fun res!995955 () Bool)

(assert (=> b!1467305 (=> (not res!995955) (not e!824230))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1467305 (= res!995955 (validKeyInArray!0 (select (arr!47699 a!2862) j!93)))))

(declare-fun b!1467306 () Bool)

(assert (=> b!1467306 (= e!824230 false)))

(declare-fun lt!642028 () Bool)

(declare-datatypes ((List!34380 0))(
  ( (Nil!34377) (Cons!34376 (h!35726 (_ BitVec 64)) (t!49081 List!34380)) )
))
(declare-fun arrayNoDuplicates!0 (array!98831 (_ BitVec 32) List!34380) Bool)

(assert (=> b!1467306 (= lt!642028 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34377))))

(declare-fun b!1467307 () Bool)

(declare-fun res!995952 () Bool)

(assert (=> b!1467307 (=> (not res!995952) (not e!824230))))

(assert (=> b!1467307 (= res!995952 (validKeyInArray!0 (select (arr!47699 a!2862) i!1006)))))

(assert (= (and start!125466 res!995953) b!1467304))

(assert (= (and b!1467304 res!995954) b!1467307))

(assert (= (and b!1467307 res!995952) b!1467305))

(assert (= (and b!1467305 res!995955) b!1467303))

(assert (= (and b!1467303 res!995951) b!1467306))

(declare-fun m!1354297 () Bool)

(assert (=> b!1467303 m!1354297))

(declare-fun m!1354299 () Bool)

(assert (=> b!1467307 m!1354299))

(assert (=> b!1467307 m!1354299))

(declare-fun m!1354301 () Bool)

(assert (=> b!1467307 m!1354301))

(declare-fun m!1354303 () Bool)

(assert (=> b!1467305 m!1354303))

(assert (=> b!1467305 m!1354303))

(declare-fun m!1354305 () Bool)

(assert (=> b!1467305 m!1354305))

(declare-fun m!1354307 () Bool)

(assert (=> b!1467306 m!1354307))

(declare-fun m!1354309 () Bool)

(assert (=> start!125466 m!1354309))

(declare-fun m!1354311 () Bool)

(assert (=> start!125466 m!1354311))

(check-sat (not b!1467303) (not b!1467306) (not start!125466) (not b!1467305) (not b!1467307))
