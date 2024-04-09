; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127570 () Bool)

(assert start!127570)

(declare-fun b!1498212 () Bool)

(declare-fun e!838964 () Bool)

(assert (=> b!1498212 (= e!838964 false)))

(declare-fun lt!652582 () Bool)

(declare-datatypes ((array!99864 0))(
  ( (array!99865 (arr!48187 (Array (_ BitVec 32) (_ BitVec 64))) (size!48738 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!99864)

(declare-datatypes ((List!34859 0))(
  ( (Nil!34856) (Cons!34855 (h!36253 (_ BitVec 64)) (t!49560 List!34859)) )
))
(declare-fun arrayNoDuplicates!0 (array!99864 (_ BitVec 32) List!34859) Bool)

(assert (=> b!1498212 (= lt!652582 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34856))))

(declare-fun b!1498213 () Bool)

(declare-fun res!1019361 () Bool)

(assert (=> b!1498213 (=> (not res!1019361) (not e!838964))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(assert (=> b!1498213 (= res!1019361 (and (= (size!48738 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48738 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48738 a!2850)) (not (= i!996 j!87))))))

(declare-fun res!1019360 () Bool)

(assert (=> start!127570 (=> (not res!1019360) (not e!838964))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127570 (= res!1019360 (validMask!0 mask!2661))))

(assert (=> start!127570 e!838964))

(assert (=> start!127570 true))

(declare-fun array_inv!37132 (array!99864) Bool)

(assert (=> start!127570 (array_inv!37132 a!2850)))

(declare-fun b!1498214 () Bool)

(declare-fun res!1019362 () Bool)

(assert (=> b!1498214 (=> (not res!1019362) (not e!838964))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1498214 (= res!1019362 (validKeyInArray!0 (select (arr!48187 a!2850) j!87)))))

(declare-fun b!1498215 () Bool)

(declare-fun res!1019363 () Bool)

(assert (=> b!1498215 (=> (not res!1019363) (not e!838964))))

(assert (=> b!1498215 (= res!1019363 (validKeyInArray!0 (select (arr!48187 a!2850) i!996)))))

(declare-fun b!1498216 () Bool)

(declare-fun res!1019364 () Bool)

(assert (=> b!1498216 (=> (not res!1019364) (not e!838964))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99864 (_ BitVec 32)) Bool)

(assert (=> b!1498216 (= res!1019364 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(assert (= (and start!127570 res!1019360) b!1498213))

(assert (= (and b!1498213 res!1019361) b!1498215))

(assert (= (and b!1498215 res!1019363) b!1498214))

(assert (= (and b!1498214 res!1019362) b!1498216))

(assert (= (and b!1498216 res!1019364) b!1498212))

(declare-fun m!1381359 () Bool)

(assert (=> b!1498215 m!1381359))

(assert (=> b!1498215 m!1381359))

(declare-fun m!1381361 () Bool)

(assert (=> b!1498215 m!1381361))

(declare-fun m!1381363 () Bool)

(assert (=> start!127570 m!1381363))

(declare-fun m!1381365 () Bool)

(assert (=> start!127570 m!1381365))

(declare-fun m!1381367 () Bool)

(assert (=> b!1498214 m!1381367))

(assert (=> b!1498214 m!1381367))

(declare-fun m!1381369 () Bool)

(assert (=> b!1498214 m!1381369))

(declare-fun m!1381371 () Bool)

(assert (=> b!1498216 m!1381371))

(declare-fun m!1381373 () Bool)

(assert (=> b!1498212 m!1381373))

(push 1)

(assert (not b!1498212))

(assert (not b!1498215))

(assert (not start!127570))

(assert (not b!1498214))

(assert (not b!1498216))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

