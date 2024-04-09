; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125484 () Bool)

(assert start!125484)

(declare-fun b!1467448 () Bool)

(declare-fun res!996102 () Bool)

(declare-fun e!824284 () Bool)

(assert (=> b!1467448 (=> (not res!996102) (not e!824284))))

(declare-datatypes ((array!98849 0))(
  ( (array!98850 (arr!47708 (Array (_ BitVec 32) (_ BitVec 64))) (size!48259 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98849)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1467448 (= res!996102 (validKeyInArray!0 (select (arr!47708 a!2862) j!93)))))

(declare-fun b!1467449 () Bool)

(declare-fun res!996100 () Bool)

(assert (=> b!1467449 (=> (not res!996100) (not e!824284))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1467449 (= res!996100 (and (= (size!48259 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48259 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48259 a!2862)) (not (= i!1006 j!93))))))

(declare-fun res!996096 () Bool)

(assert (=> start!125484 (=> (not res!996096) (not e!824284))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125484 (= res!996096 (validMask!0 mask!2687))))

(assert (=> start!125484 e!824284))

(assert (=> start!125484 true))

(declare-fun array_inv!36653 (array!98849) Bool)

(assert (=> start!125484 (array_inv!36653 a!2862)))

(declare-fun b!1467450 () Bool)

(assert (=> b!1467450 (= e!824284 false)))

(declare-fun lt!642055 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1467450 (= lt!642055 (toIndex!0 (select (arr!47708 a!2862) j!93) mask!2687))))

(declare-fun b!1467451 () Bool)

(declare-fun res!996101 () Bool)

(assert (=> b!1467451 (=> (not res!996101) (not e!824284))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1467451 (= res!996101 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48259 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48259 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48259 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47708 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1467452 () Bool)

(declare-fun res!996099 () Bool)

(assert (=> b!1467452 (=> (not res!996099) (not e!824284))))

(declare-datatypes ((List!34389 0))(
  ( (Nil!34386) (Cons!34385 (h!35735 (_ BitVec 64)) (t!49090 List!34389)) )
))
(declare-fun arrayNoDuplicates!0 (array!98849 (_ BitVec 32) List!34389) Bool)

(assert (=> b!1467452 (= res!996099 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34386))))

(declare-fun b!1467453 () Bool)

(declare-fun res!996098 () Bool)

(assert (=> b!1467453 (=> (not res!996098) (not e!824284))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98849 (_ BitVec 32)) Bool)

(assert (=> b!1467453 (= res!996098 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1467454 () Bool)

(declare-fun res!996097 () Bool)

(assert (=> b!1467454 (=> (not res!996097) (not e!824284))))

(assert (=> b!1467454 (= res!996097 (validKeyInArray!0 (select (arr!47708 a!2862) i!1006)))))

(assert (= (and start!125484 res!996096) b!1467449))

(assert (= (and b!1467449 res!996100) b!1467454))

(assert (= (and b!1467454 res!996097) b!1467448))

(assert (= (and b!1467448 res!996102) b!1467453))

(assert (= (and b!1467453 res!996098) b!1467452))

(assert (= (and b!1467452 res!996099) b!1467451))

(assert (= (and b!1467451 res!996101) b!1467450))

(declare-fun m!1354447 () Bool)

(assert (=> b!1467451 m!1354447))

(declare-fun m!1354449 () Bool)

(assert (=> b!1467451 m!1354449))

(declare-fun m!1354451 () Bool)

(assert (=> start!125484 m!1354451))

(declare-fun m!1354453 () Bool)

(assert (=> start!125484 m!1354453))

(declare-fun m!1354455 () Bool)

(assert (=> b!1467448 m!1354455))

(assert (=> b!1467448 m!1354455))

(declare-fun m!1354457 () Bool)

(assert (=> b!1467448 m!1354457))

(declare-fun m!1354459 () Bool)

(assert (=> b!1467452 m!1354459))

(assert (=> b!1467450 m!1354455))

(assert (=> b!1467450 m!1354455))

(declare-fun m!1354461 () Bool)

(assert (=> b!1467450 m!1354461))

(declare-fun m!1354463 () Bool)

(assert (=> b!1467454 m!1354463))

(assert (=> b!1467454 m!1354463))

(declare-fun m!1354465 () Bool)

(assert (=> b!1467454 m!1354465))

(declare-fun m!1354467 () Bool)

(assert (=> b!1467453 m!1354467))

(check-sat (not b!1467448) (not start!125484) (not b!1467454) (not b!1467453) (not b!1467452) (not b!1467450))
