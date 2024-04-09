; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127586 () Bool)

(assert start!127586)

(declare-fun b!1498341 () Bool)

(declare-fun res!1019491 () Bool)

(declare-fun e!839011 () Bool)

(assert (=> b!1498341 (=> (not res!1019491) (not e!839011))))

(declare-datatypes ((array!99880 0))(
  ( (array!99881 (arr!48195 (Array (_ BitVec 32) (_ BitVec 64))) (size!48746 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!99880)

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99880 (_ BitVec 32)) Bool)

(assert (=> b!1498341 (= res!1019491 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun res!1019493 () Bool)

(assert (=> start!127586 (=> (not res!1019493) (not e!839011))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127586 (= res!1019493 (validMask!0 mask!2661))))

(assert (=> start!127586 e!839011))

(assert (=> start!127586 true))

(declare-fun array_inv!37140 (array!99880) Bool)

(assert (=> start!127586 (array_inv!37140 a!2850)))

(declare-fun b!1498342 () Bool)

(assert (=> b!1498342 (= e!839011 false)))

(declare-fun lt!652597 () Bool)

(declare-datatypes ((List!34867 0))(
  ( (Nil!34864) (Cons!34863 (h!36261 (_ BitVec 64)) (t!49568 List!34867)) )
))
(declare-fun arrayNoDuplicates!0 (array!99880 (_ BitVec 32) List!34867) Bool)

(assert (=> b!1498342 (= lt!652597 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34864))))

(declare-fun b!1498343 () Bool)

(declare-fun res!1019489 () Bool)

(assert (=> b!1498343 (=> (not res!1019489) (not e!839011))))

(declare-fun j!87 () (_ BitVec 32))

(declare-fun i!996 () (_ BitVec 32))

(assert (=> b!1498343 (= res!1019489 (and (= (size!48746 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48746 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48746 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1498344 () Bool)

(declare-fun res!1019492 () Bool)

(assert (=> b!1498344 (=> (not res!1019492) (not e!839011))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1498344 (= res!1019492 (validKeyInArray!0 (select (arr!48195 a!2850) i!996)))))

(declare-fun b!1498345 () Bool)

(declare-fun res!1019490 () Bool)

(assert (=> b!1498345 (=> (not res!1019490) (not e!839011))))

(assert (=> b!1498345 (= res!1019490 (validKeyInArray!0 (select (arr!48195 a!2850) j!87)))))

(assert (= (and start!127586 res!1019493) b!1498343))

(assert (= (and b!1498343 res!1019489) b!1498344))

(assert (= (and b!1498344 res!1019492) b!1498345))

(assert (= (and b!1498345 res!1019490) b!1498341))

(assert (= (and b!1498341 res!1019491) b!1498342))

(declare-fun m!1381505 () Bool)

(assert (=> b!1498344 m!1381505))

(assert (=> b!1498344 m!1381505))

(declare-fun m!1381507 () Bool)

(assert (=> b!1498344 m!1381507))

(declare-fun m!1381509 () Bool)

(assert (=> b!1498342 m!1381509))

(declare-fun m!1381511 () Bool)

(assert (=> b!1498345 m!1381511))

(assert (=> b!1498345 m!1381511))

(declare-fun m!1381513 () Bool)

(assert (=> b!1498345 m!1381513))

(declare-fun m!1381515 () Bool)

(assert (=> b!1498341 m!1381515))

(declare-fun m!1381517 () Bool)

(assert (=> start!127586 m!1381517))

(declare-fun m!1381519 () Bool)

(assert (=> start!127586 m!1381519))

(push 1)

(assert (not b!1498342))

(assert (not b!1498341))

(assert (not b!1498345))

(assert (not start!127586))

(assert (not b!1498344))

(check-sat)

(pop 1)

(push 1)

(check-sat)

