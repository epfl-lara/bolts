; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127580 () Bool)

(assert start!127580)

(declare-fun b!1498295 () Bool)

(declare-fun res!1019443 () Bool)

(declare-fun e!838994 () Bool)

(assert (=> b!1498295 (=> (not res!1019443) (not e!838994))))

(declare-datatypes ((array!99874 0))(
  ( (array!99875 (arr!48192 (Array (_ BitVec 32) (_ BitVec 64))) (size!48743 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!99874)

(declare-fun i!996 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1498295 (= res!1019443 (validKeyInArray!0 (select (arr!48192 a!2850) i!996)))))

(declare-fun res!1019447 () Bool)

(assert (=> start!127580 (=> (not res!1019447) (not e!838994))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127580 (= res!1019447 (validMask!0 mask!2661))))

(assert (=> start!127580 e!838994))

(assert (=> start!127580 true))

(declare-fun array_inv!37137 (array!99874) Bool)

(assert (=> start!127580 (array_inv!37137 a!2850)))

(declare-fun b!1498296 () Bool)

(declare-fun res!1019445 () Bool)

(assert (=> b!1498296 (=> (not res!1019445) (not e!838994))))

(declare-fun j!87 () (_ BitVec 32))

(assert (=> b!1498296 (= res!1019445 (and (= (size!48743 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48743 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48743 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1498297 () Bool)

(declare-fun index!625 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1498297 (= e!838994 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48743 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48743 a!2850)) (= (select (arr!48192 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48192 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48743 a!2850)) (bvsge mask!2661 #b00000000000000000000000000000000) (bvslt index!625 (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge vacantBefore!10 (bvadd #b00000000000000000000000000000001 mask!2661))))))

(declare-fun b!1498298 () Bool)

(declare-fun res!1019444 () Bool)

(assert (=> b!1498298 (=> (not res!1019444) (not e!838994))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99874 (_ BitVec 32)) Bool)

(assert (=> b!1498298 (= res!1019444 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1498299 () Bool)

(declare-fun res!1019448 () Bool)

(assert (=> b!1498299 (=> (not res!1019448) (not e!838994))))

(assert (=> b!1498299 (= res!1019448 (validKeyInArray!0 (select (arr!48192 a!2850) j!87)))))

(declare-fun b!1498300 () Bool)

(declare-fun res!1019446 () Bool)

(assert (=> b!1498300 (=> (not res!1019446) (not e!838994))))

(declare-datatypes ((List!34864 0))(
  ( (Nil!34861) (Cons!34860 (h!36258 (_ BitVec 64)) (t!49565 List!34864)) )
))
(declare-fun arrayNoDuplicates!0 (array!99874 (_ BitVec 32) List!34864) Bool)

(assert (=> b!1498300 (= res!1019446 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34861))))

(assert (= (and start!127580 res!1019447) b!1498296))

(assert (= (and b!1498296 res!1019445) b!1498295))

(assert (= (and b!1498295 res!1019443) b!1498299))

(assert (= (and b!1498299 res!1019448) b!1498298))

(assert (= (and b!1498298 res!1019444) b!1498300))

(assert (= (and b!1498300 res!1019446) b!1498297))

(declare-fun m!1381451 () Bool)

(assert (=> start!127580 m!1381451))

(declare-fun m!1381453 () Bool)

(assert (=> start!127580 m!1381453))

(declare-fun m!1381455 () Bool)

(assert (=> b!1498297 m!1381455))

(declare-fun m!1381457 () Bool)

(assert (=> b!1498297 m!1381457))

(declare-fun m!1381459 () Bool)

(assert (=> b!1498297 m!1381459))

(declare-fun m!1381461 () Bool)

(assert (=> b!1498298 m!1381461))

(declare-fun m!1381463 () Bool)

(assert (=> b!1498295 m!1381463))

(assert (=> b!1498295 m!1381463))

(declare-fun m!1381465 () Bool)

(assert (=> b!1498295 m!1381465))

(declare-fun m!1381467 () Bool)

(assert (=> b!1498300 m!1381467))

(declare-fun m!1381469 () Bool)

(assert (=> b!1498299 m!1381469))

(assert (=> b!1498299 m!1381469))

(declare-fun m!1381471 () Bool)

(assert (=> b!1498299 m!1381471))

(push 1)

(assert (not b!1498298))

(assert (not b!1498295))

(assert (not b!1498299))

(assert (not start!127580))

(assert (not b!1498300))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

