; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125472 () Bool)

(assert start!125472)

(declare-fun b!1467348 () Bool)

(declare-fun res!995999 () Bool)

(declare-fun e!824249 () Bool)

(assert (=> b!1467348 (=> (not res!995999) (not e!824249))))

(declare-datatypes ((array!98837 0))(
  ( (array!98838 (arr!47702 (Array (_ BitVec 32) (_ BitVec 64))) (size!48253 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98837)

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1467348 (= res!995999 (validKeyInArray!0 (select (arr!47702 a!2862) i!1006)))))

(declare-fun res!995998 () Bool)

(assert (=> start!125472 (=> (not res!995998) (not e!824249))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125472 (= res!995998 (validMask!0 mask!2687))))

(assert (=> start!125472 e!824249))

(assert (=> start!125472 true))

(declare-fun array_inv!36647 (array!98837) Bool)

(assert (=> start!125472 (array_inv!36647 a!2862)))

(declare-fun b!1467349 () Bool)

(assert (=> b!1467349 (= e!824249 false)))

(declare-fun lt!642037 () Bool)

(declare-datatypes ((List!34383 0))(
  ( (Nil!34380) (Cons!34379 (h!35729 (_ BitVec 64)) (t!49084 List!34383)) )
))
(declare-fun arrayNoDuplicates!0 (array!98837 (_ BitVec 32) List!34383) Bool)

(assert (=> b!1467349 (= lt!642037 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34380))))

(declare-fun b!1467350 () Bool)

(declare-fun res!995997 () Bool)

(assert (=> b!1467350 (=> (not res!995997) (not e!824249))))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1467350 (= res!995997 (validKeyInArray!0 (select (arr!47702 a!2862) j!93)))))

(declare-fun b!1467351 () Bool)

(declare-fun res!995996 () Bool)

(assert (=> b!1467351 (=> (not res!995996) (not e!824249))))

(assert (=> b!1467351 (= res!995996 (and (= (size!48253 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48253 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48253 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1467352 () Bool)

(declare-fun res!996000 () Bool)

(assert (=> b!1467352 (=> (not res!996000) (not e!824249))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98837 (_ BitVec 32)) Bool)

(assert (=> b!1467352 (= res!996000 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(assert (= (and start!125472 res!995998) b!1467351))

(assert (= (and b!1467351 res!995996) b!1467348))

(assert (= (and b!1467348 res!995999) b!1467350))

(assert (= (and b!1467350 res!995997) b!1467352))

(assert (= (and b!1467352 res!996000) b!1467349))

(declare-fun m!1354345 () Bool)

(assert (=> b!1467352 m!1354345))

(declare-fun m!1354347 () Bool)

(assert (=> b!1467350 m!1354347))

(assert (=> b!1467350 m!1354347))

(declare-fun m!1354349 () Bool)

(assert (=> b!1467350 m!1354349))

(declare-fun m!1354351 () Bool)

(assert (=> b!1467348 m!1354351))

(assert (=> b!1467348 m!1354351))

(declare-fun m!1354353 () Bool)

(assert (=> b!1467348 m!1354353))

(declare-fun m!1354355 () Bool)

(assert (=> start!125472 m!1354355))

(declare-fun m!1354357 () Bool)

(assert (=> start!125472 m!1354357))

(declare-fun m!1354359 () Bool)

(assert (=> b!1467349 m!1354359))

(check-sat (not b!1467349) (not b!1467352) (not b!1467350) (not b!1467348) (not start!125472))
