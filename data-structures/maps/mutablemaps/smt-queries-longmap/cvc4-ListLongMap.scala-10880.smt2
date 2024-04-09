; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127592 () Bool)

(assert start!127592)

(declare-fun b!1498386 () Bool)

(declare-fun res!1019535 () Bool)

(declare-fun e!839030 () Bool)

(assert (=> b!1498386 (=> (not res!1019535) (not e!839030))))

(declare-datatypes ((array!99886 0))(
  ( (array!99887 (arr!48198 (Array (_ BitVec 32) (_ BitVec 64))) (size!48749 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!99886)

(declare-fun i!996 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1498386 (= res!1019535 (validKeyInArray!0 (select (arr!48198 a!2850) i!996)))))

(declare-fun b!1498387 () Bool)

(declare-fun res!1019536 () Bool)

(assert (=> b!1498387 (=> (not res!1019536) (not e!839030))))

(declare-fun j!87 () (_ BitVec 32))

(assert (=> b!1498387 (= res!1019536 (validKeyInArray!0 (select (arr!48198 a!2850) j!87)))))

(declare-fun res!1019534 () Bool)

(assert (=> start!127592 (=> (not res!1019534) (not e!839030))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127592 (= res!1019534 (validMask!0 mask!2661))))

(assert (=> start!127592 e!839030))

(assert (=> start!127592 true))

(declare-fun array_inv!37143 (array!99886) Bool)

(assert (=> start!127592 (array_inv!37143 a!2850)))

(declare-fun b!1498388 () Bool)

(assert (=> b!1498388 (= e!839030 false)))

(declare-fun lt!652606 () Bool)

(declare-datatypes ((List!34870 0))(
  ( (Nil!34867) (Cons!34866 (h!36264 (_ BitVec 64)) (t!49571 List!34870)) )
))
(declare-fun arrayNoDuplicates!0 (array!99886 (_ BitVec 32) List!34870) Bool)

(assert (=> b!1498388 (= lt!652606 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34867))))

(declare-fun b!1498389 () Bool)

(declare-fun res!1019538 () Bool)

(assert (=> b!1498389 (=> (not res!1019538) (not e!839030))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99886 (_ BitVec 32)) Bool)

(assert (=> b!1498389 (= res!1019538 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1498390 () Bool)

(declare-fun res!1019537 () Bool)

(assert (=> b!1498390 (=> (not res!1019537) (not e!839030))))

(assert (=> b!1498390 (= res!1019537 (and (= (size!48749 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48749 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48749 a!2850)) (not (= i!996 j!87))))))

(assert (= (and start!127592 res!1019534) b!1498390))

(assert (= (and b!1498390 res!1019537) b!1498386))

(assert (= (and b!1498386 res!1019535) b!1498387))

(assert (= (and b!1498387 res!1019536) b!1498389))

(assert (= (and b!1498389 res!1019538) b!1498388))

(declare-fun m!1381553 () Bool)

(assert (=> b!1498387 m!1381553))

(assert (=> b!1498387 m!1381553))

(declare-fun m!1381555 () Bool)

(assert (=> b!1498387 m!1381555))

(declare-fun m!1381557 () Bool)

(assert (=> start!127592 m!1381557))

(declare-fun m!1381559 () Bool)

(assert (=> start!127592 m!1381559))

(declare-fun m!1381561 () Bool)

(assert (=> b!1498388 m!1381561))

(declare-fun m!1381563 () Bool)

(assert (=> b!1498389 m!1381563))

(declare-fun m!1381565 () Bool)

(assert (=> b!1498386 m!1381565))

(assert (=> b!1498386 m!1381565))

(declare-fun m!1381567 () Bool)

(assert (=> b!1498386 m!1381567))

(push 1)

(assert (not b!1498387))

(assert (not b!1498388))

(assert (not b!1498389))

(assert (not b!1498386))

(assert (not start!127592))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

