; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125476 () Bool)

(assert start!125476)

(declare-fun b!1467378 () Bool)

(declare-fun e!824260 () Bool)

(assert (=> b!1467378 (= e!824260 false)))

(declare-fun lt!642043 () Bool)

(declare-datatypes ((array!98841 0))(
  ( (array!98842 (arr!47704 (Array (_ BitVec 32) (_ BitVec 64))) (size!48255 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98841)

(declare-datatypes ((List!34385 0))(
  ( (Nil!34382) (Cons!34381 (h!35731 (_ BitVec 64)) (t!49086 List!34385)) )
))
(declare-fun arrayNoDuplicates!0 (array!98841 (_ BitVec 32) List!34385) Bool)

(assert (=> b!1467378 (= lt!642043 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34382))))

(declare-fun b!1467379 () Bool)

(declare-fun res!996030 () Bool)

(assert (=> b!1467379 (=> (not res!996030) (not e!824260))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1467379 (= res!996030 (validKeyInArray!0 (select (arr!47704 a!2862) j!93)))))

(declare-fun res!996028 () Bool)

(assert (=> start!125476 (=> (not res!996028) (not e!824260))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125476 (= res!996028 (validMask!0 mask!2687))))

(assert (=> start!125476 e!824260))

(assert (=> start!125476 true))

(declare-fun array_inv!36649 (array!98841) Bool)

(assert (=> start!125476 (array_inv!36649 a!2862)))

(declare-fun b!1467380 () Bool)

(declare-fun res!996026 () Bool)

(assert (=> b!1467380 (=> (not res!996026) (not e!824260))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1467380 (= res!996026 (and (= (size!48255 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48255 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48255 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1467381 () Bool)

(declare-fun res!996027 () Bool)

(assert (=> b!1467381 (=> (not res!996027) (not e!824260))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98841 (_ BitVec 32)) Bool)

(assert (=> b!1467381 (= res!996027 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1467382 () Bool)

(declare-fun res!996029 () Bool)

(assert (=> b!1467382 (=> (not res!996029) (not e!824260))))

(assert (=> b!1467382 (= res!996029 (validKeyInArray!0 (select (arr!47704 a!2862) i!1006)))))

(assert (= (and start!125476 res!996028) b!1467380))

(assert (= (and b!1467380 res!996026) b!1467382))

(assert (= (and b!1467382 res!996029) b!1467379))

(assert (= (and b!1467379 res!996030) b!1467381))

(assert (= (and b!1467381 res!996027) b!1467378))

(declare-fun m!1354377 () Bool)

(assert (=> b!1467379 m!1354377))

(assert (=> b!1467379 m!1354377))

(declare-fun m!1354379 () Bool)

(assert (=> b!1467379 m!1354379))

(declare-fun m!1354381 () Bool)

(assert (=> b!1467381 m!1354381))

(declare-fun m!1354383 () Bool)

(assert (=> b!1467378 m!1354383))

(declare-fun m!1354385 () Bool)

(assert (=> start!125476 m!1354385))

(declare-fun m!1354387 () Bool)

(assert (=> start!125476 m!1354387))

(declare-fun m!1354389 () Bool)

(assert (=> b!1467382 m!1354389))

(assert (=> b!1467382 m!1354389))

(declare-fun m!1354391 () Bool)

(assert (=> b!1467382 m!1354391))

(push 1)

(assert (not b!1467379))

(assert (not start!125476))

(assert (not b!1467378))

(assert (not b!1467381))

(assert (not b!1467382))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

