; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127550 () Bool)

(assert start!127550)

(declare-fun b!1498044 () Bool)

(declare-fun res!1019194 () Bool)

(declare-fun e!838903 () Bool)

(assert (=> b!1498044 (=> (not res!1019194) (not e!838903))))

(declare-datatypes ((array!99844 0))(
  ( (array!99845 (arr!48177 (Array (_ BitVec 32) (_ BitVec 64))) (size!48728 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!99844)

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99844 (_ BitVec 32)) Bool)

(assert (=> b!1498044 (= res!1019194 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1498045 () Bool)

(declare-fun res!1019192 () Bool)

(assert (=> b!1498045 (=> (not res!1019192) (not e!838903))))

(declare-fun j!87 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1498045 (= res!1019192 (validKeyInArray!0 (select (arr!48177 a!2850) j!87)))))

(declare-fun b!1498046 () Bool)

(declare-fun res!1019195 () Bool)

(assert (=> b!1498046 (=> (not res!1019195) (not e!838903))))

(declare-fun i!996 () (_ BitVec 32))

(assert (=> b!1498046 (= res!1019195 (and (= (size!48728 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48728 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48728 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1498047 () Bool)

(declare-fun res!1019193 () Bool)

(assert (=> b!1498047 (=> (not res!1019193) (not e!838903))))

(assert (=> b!1498047 (= res!1019193 (validKeyInArray!0 (select (arr!48177 a!2850) i!996)))))

(declare-fun b!1498048 () Bool)

(assert (=> b!1498048 (= e!838903 false)))

(declare-fun lt!652570 () Bool)

(declare-datatypes ((List!34849 0))(
  ( (Nil!34846) (Cons!34845 (h!36243 (_ BitVec 64)) (t!49550 List!34849)) )
))
(declare-fun arrayNoDuplicates!0 (array!99844 (_ BitVec 32) List!34849) Bool)

(assert (=> b!1498048 (= lt!652570 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34846))))

(declare-fun res!1019196 () Bool)

(assert (=> start!127550 (=> (not res!1019196) (not e!838903))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127550 (= res!1019196 (validMask!0 mask!2661))))

(assert (=> start!127550 e!838903))

(assert (=> start!127550 true))

(declare-fun array_inv!37122 (array!99844) Bool)

(assert (=> start!127550 (array_inv!37122 a!2850)))

(assert (= (and start!127550 res!1019196) b!1498046))

(assert (= (and b!1498046 res!1019195) b!1498047))

(assert (= (and b!1498047 res!1019193) b!1498045))

(assert (= (and b!1498045 res!1019192) b!1498044))

(assert (= (and b!1498044 res!1019194) b!1498048))

(declare-fun m!1381163 () Bool)

(assert (=> b!1498044 m!1381163))

(declare-fun m!1381165 () Bool)

(assert (=> b!1498047 m!1381165))

(assert (=> b!1498047 m!1381165))

(declare-fun m!1381167 () Bool)

(assert (=> b!1498047 m!1381167))

(declare-fun m!1381169 () Bool)

(assert (=> b!1498048 m!1381169))

(declare-fun m!1381171 () Bool)

(assert (=> b!1498045 m!1381171))

(assert (=> b!1498045 m!1381171))

(declare-fun m!1381173 () Bool)

(assert (=> b!1498045 m!1381173))

(declare-fun m!1381175 () Bool)

(assert (=> start!127550 m!1381175))

(declare-fun m!1381177 () Bool)

(assert (=> start!127550 m!1381177))

(push 1)

(assert (not b!1498047))

(assert (not b!1498048))

(assert (not b!1498044))

(assert (not b!1498045))

(assert (not start!127550))

(check-sat)

(pop 1)

(push 1)

