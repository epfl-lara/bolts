; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127582 () Bool)

(assert start!127582)

(declare-fun b!1498311 () Bool)

(declare-fun res!1019462 () Bool)

(declare-fun e!839000 () Bool)

(assert (=> b!1498311 (=> (not res!1019462) (not e!839000))))

(declare-datatypes ((array!99876 0))(
  ( (array!99877 (arr!48193 (Array (_ BitVec 32) (_ BitVec 64))) (size!48744 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!99876)

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99876 (_ BitVec 32)) Bool)

(assert (=> b!1498311 (= res!1019462 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1498312 () Bool)

(declare-fun res!1019461 () Bool)

(assert (=> b!1498312 (=> (not res!1019461) (not e!839000))))

(declare-fun j!87 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1498312 (= res!1019461 (validKeyInArray!0 (select (arr!48193 a!2850) j!87)))))

(declare-fun b!1498313 () Bool)

(declare-fun res!1019463 () Bool)

(assert (=> b!1498313 (=> (not res!1019463) (not e!839000))))

(declare-fun i!996 () (_ BitVec 32))

(assert (=> b!1498313 (= res!1019463 (and (= (size!48744 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48744 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48744 a!2850)) (not (= i!996 j!87))))))

(declare-fun res!1019460 () Bool)

(assert (=> start!127582 (=> (not res!1019460) (not e!839000))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127582 (= res!1019460 (validMask!0 mask!2661))))

(assert (=> start!127582 e!839000))

(assert (=> start!127582 true))

(declare-fun array_inv!37138 (array!99876) Bool)

(assert (=> start!127582 (array_inv!37138 a!2850)))

(declare-fun b!1498314 () Bool)

(declare-fun res!1019459 () Bool)

(assert (=> b!1498314 (=> (not res!1019459) (not e!839000))))

(assert (=> b!1498314 (= res!1019459 (validKeyInArray!0 (select (arr!48193 a!2850) i!996)))))

(declare-fun b!1498315 () Bool)

(assert (=> b!1498315 (= e!839000 false)))

(declare-fun lt!652591 () Bool)

(declare-datatypes ((List!34865 0))(
  ( (Nil!34862) (Cons!34861 (h!36259 (_ BitVec 64)) (t!49566 List!34865)) )
))
(declare-fun arrayNoDuplicates!0 (array!99876 (_ BitVec 32) List!34865) Bool)

(assert (=> b!1498315 (= lt!652591 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34862))))

(assert (= (and start!127582 res!1019460) b!1498313))

(assert (= (and b!1498313 res!1019463) b!1498314))

(assert (= (and b!1498314 res!1019459) b!1498312))

(assert (= (and b!1498312 res!1019461) b!1498311))

(assert (= (and b!1498311 res!1019462) b!1498315))

(declare-fun m!1381473 () Bool)

(assert (=> b!1498315 m!1381473))

(declare-fun m!1381475 () Bool)

(assert (=> b!1498312 m!1381475))

(assert (=> b!1498312 m!1381475))

(declare-fun m!1381477 () Bool)

(assert (=> b!1498312 m!1381477))

(declare-fun m!1381479 () Bool)

(assert (=> b!1498314 m!1381479))

(assert (=> b!1498314 m!1381479))

(declare-fun m!1381481 () Bool)

(assert (=> b!1498314 m!1381481))

(declare-fun m!1381483 () Bool)

(assert (=> start!127582 m!1381483))

(declare-fun m!1381485 () Bool)

(assert (=> start!127582 m!1381485))

(declare-fun m!1381487 () Bool)

(assert (=> b!1498311 m!1381487))

(push 1)

(assert (not b!1498311))

(assert (not b!1498312))

(assert (not b!1498314))

(assert (not start!127582))

(assert (not b!1498315))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

