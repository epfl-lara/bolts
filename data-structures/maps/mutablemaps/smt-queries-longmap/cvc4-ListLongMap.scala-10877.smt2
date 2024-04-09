; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127574 () Bool)

(assert start!127574)

(declare-fun b!1498242 () Bool)

(declare-fun res!1019392 () Bool)

(declare-fun e!838976 () Bool)

(assert (=> b!1498242 (=> (not res!1019392) (not e!838976))))

(declare-datatypes ((array!99868 0))(
  ( (array!99869 (arr!48189 (Array (_ BitVec 32) (_ BitVec 64))) (size!48740 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!99868)

(declare-fun j!87 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1498242 (= res!1019392 (validKeyInArray!0 (select (arr!48189 a!2850) j!87)))))

(declare-fun res!1019391 () Bool)

(assert (=> start!127574 (=> (not res!1019391) (not e!838976))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127574 (= res!1019391 (validMask!0 mask!2661))))

(assert (=> start!127574 e!838976))

(assert (=> start!127574 true))

(declare-fun array_inv!37134 (array!99868) Bool)

(assert (=> start!127574 (array_inv!37134 a!2850)))

(declare-fun b!1498243 () Bool)

(declare-fun res!1019393 () Bool)

(assert (=> b!1498243 (=> (not res!1019393) (not e!838976))))

(declare-fun i!996 () (_ BitVec 32))

(assert (=> b!1498243 (= res!1019393 (and (= (size!48740 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48740 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48740 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1498244 () Bool)

(declare-fun res!1019390 () Bool)

(assert (=> b!1498244 (=> (not res!1019390) (not e!838976))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99868 (_ BitVec 32)) Bool)

(assert (=> b!1498244 (= res!1019390 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1498245 () Bool)

(declare-fun res!1019394 () Bool)

(assert (=> b!1498245 (=> (not res!1019394) (not e!838976))))

(assert (=> b!1498245 (= res!1019394 (validKeyInArray!0 (select (arr!48189 a!2850) i!996)))))

(declare-fun b!1498246 () Bool)

(assert (=> b!1498246 (= e!838976 false)))

(declare-fun lt!652588 () Bool)

(declare-datatypes ((List!34861 0))(
  ( (Nil!34858) (Cons!34857 (h!36255 (_ BitVec 64)) (t!49562 List!34861)) )
))
(declare-fun arrayNoDuplicates!0 (array!99868 (_ BitVec 32) List!34861) Bool)

(assert (=> b!1498246 (= lt!652588 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34858))))

(assert (= (and start!127574 res!1019391) b!1498243))

(assert (= (and b!1498243 res!1019393) b!1498245))

(assert (= (and b!1498245 res!1019394) b!1498242))

(assert (= (and b!1498242 res!1019392) b!1498244))

(assert (= (and b!1498244 res!1019390) b!1498246))

(declare-fun m!1381391 () Bool)

(assert (=> b!1498244 m!1381391))

(declare-fun m!1381393 () Bool)

(assert (=> b!1498242 m!1381393))

(assert (=> b!1498242 m!1381393))

(declare-fun m!1381395 () Bool)

(assert (=> b!1498242 m!1381395))

(declare-fun m!1381397 () Bool)

(assert (=> b!1498246 m!1381397))

(declare-fun m!1381399 () Bool)

(assert (=> start!127574 m!1381399))

(declare-fun m!1381401 () Bool)

(assert (=> start!127574 m!1381401))

(declare-fun m!1381403 () Bool)

(assert (=> b!1498245 m!1381403))

(assert (=> b!1498245 m!1381403))

(declare-fun m!1381405 () Bool)

(assert (=> b!1498245 m!1381405))

(push 1)

(assert (not b!1498244))

(assert (not b!1498245))

(assert (not b!1498246))

(assert (not start!127574))

(assert (not b!1498242))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

