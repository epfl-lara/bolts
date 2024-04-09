; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125486 () Bool)

(assert start!125486)

(declare-fun b!1467469 () Bool)

(declare-fun res!996122 () Bool)

(declare-fun e!824291 () Bool)

(assert (=> b!1467469 (=> (not res!996122) (not e!824291))))

(declare-datatypes ((array!98851 0))(
  ( (array!98852 (arr!47709 (Array (_ BitVec 32) (_ BitVec 64))) (size!48260 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98851)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1467469 (= res!996122 (validKeyInArray!0 (select (arr!47709 a!2862) j!93)))))

(declare-fun b!1467470 () Bool)

(assert (=> b!1467470 (= e!824291 false)))

(declare-fun lt!642058 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1467470 (= lt!642058 (toIndex!0 (select (arr!47709 a!2862) j!93) mask!2687))))

(declare-fun b!1467471 () Bool)

(declare-fun res!996119 () Bool)

(assert (=> b!1467471 (=> (not res!996119) (not e!824291))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1467471 (= res!996119 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48260 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48260 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48260 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47709 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!996121 () Bool)

(assert (=> start!125486 (=> (not res!996121) (not e!824291))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125486 (= res!996121 (validMask!0 mask!2687))))

(assert (=> start!125486 e!824291))

(assert (=> start!125486 true))

(declare-fun array_inv!36654 (array!98851) Bool)

(assert (=> start!125486 (array_inv!36654 a!2862)))

(declare-fun b!1467472 () Bool)

(declare-fun res!996120 () Bool)

(assert (=> b!1467472 (=> (not res!996120) (not e!824291))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98851 (_ BitVec 32)) Bool)

(assert (=> b!1467472 (= res!996120 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1467473 () Bool)

(declare-fun res!996118 () Bool)

(assert (=> b!1467473 (=> (not res!996118) (not e!824291))))

(assert (=> b!1467473 (= res!996118 (and (= (size!48260 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48260 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48260 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1467474 () Bool)

(declare-fun res!996123 () Bool)

(assert (=> b!1467474 (=> (not res!996123) (not e!824291))))

(declare-datatypes ((List!34390 0))(
  ( (Nil!34387) (Cons!34386 (h!35736 (_ BitVec 64)) (t!49091 List!34390)) )
))
(declare-fun arrayNoDuplicates!0 (array!98851 (_ BitVec 32) List!34390) Bool)

(assert (=> b!1467474 (= res!996123 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34387))))

(declare-fun b!1467475 () Bool)

(declare-fun res!996117 () Bool)

(assert (=> b!1467475 (=> (not res!996117) (not e!824291))))

(assert (=> b!1467475 (= res!996117 (validKeyInArray!0 (select (arr!47709 a!2862) i!1006)))))

(assert (= (and start!125486 res!996121) b!1467473))

(assert (= (and b!1467473 res!996118) b!1467475))

(assert (= (and b!1467475 res!996117) b!1467469))

(assert (= (and b!1467469 res!996122) b!1467472))

(assert (= (and b!1467472 res!996120) b!1467474))

(assert (= (and b!1467474 res!996123) b!1467471))

(assert (= (and b!1467471 res!996119) b!1467470))

(declare-fun m!1354469 () Bool)

(assert (=> b!1467471 m!1354469))

(declare-fun m!1354471 () Bool)

(assert (=> b!1467471 m!1354471))

(declare-fun m!1354473 () Bool)

(assert (=> b!1467472 m!1354473))

(declare-fun m!1354475 () Bool)

(assert (=> b!1467474 m!1354475))

(declare-fun m!1354477 () Bool)

(assert (=> start!125486 m!1354477))

(declare-fun m!1354479 () Bool)

(assert (=> start!125486 m!1354479))

(declare-fun m!1354481 () Bool)

(assert (=> b!1467475 m!1354481))

(assert (=> b!1467475 m!1354481))

(declare-fun m!1354483 () Bool)

(assert (=> b!1467475 m!1354483))

(declare-fun m!1354485 () Bool)

(assert (=> b!1467470 m!1354485))

(assert (=> b!1467470 m!1354485))

(declare-fun m!1354487 () Bool)

(assert (=> b!1467470 m!1354487))

(assert (=> b!1467469 m!1354485))

(assert (=> b!1467469 m!1354485))

(declare-fun m!1354489 () Bool)

(assert (=> b!1467469 m!1354489))

(push 1)

(assert (not b!1467470))

(assert (not start!125486))

(assert (not b!1467474))

(assert (not b!1467475))

(assert (not b!1467472))

(assert (not b!1467469))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

