; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!127560 () Bool)

(assert start!127560)

(declare-fun b!1498128 () Bool)

(declare-fun res!1019278 () Bool)

(declare-fun e!838933 () Bool)

(assert (=> b!1498128 (=> (not res!1019278) (not e!838933))))

(declare-datatypes ((array!99854 0))(
  ( (array!99855 (arr!48182 (Array (_ BitVec 32) (_ BitVec 64))) (size!48733 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!99854)

(declare-fun i!996 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1498128 (= res!1019278 (validKeyInArray!0 (select (arr!48182 a!2850) i!996)))))

(declare-fun b!1498129 () Bool)

(declare-fun res!1019280 () Bool)

(assert (=> b!1498129 (=> (not res!1019280) (not e!838933))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99854 (_ BitVec 32)) Bool)

(assert (=> b!1498129 (= res!1019280 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1498130 () Bool)

(assert (=> b!1498130 (= e!838933 false)))

(declare-fun lt!652576 () Bool)

(declare-datatypes ((List!34854 0))(
  ( (Nil!34851) (Cons!34850 (h!36248 (_ BitVec 64)) (t!49555 List!34854)) )
))
(declare-fun arrayNoDuplicates!0 (array!99854 (_ BitVec 32) List!34854) Bool)

(assert (=> b!1498130 (= lt!652576 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34851))))

(declare-fun res!1019276 () Bool)

(assert (=> start!127560 (=> (not res!1019276) (not e!838933))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127560 (= res!1019276 (validMask!0 mask!2661))))

(assert (=> start!127560 e!838933))

(assert (=> start!127560 true))

(declare-fun array_inv!37127 (array!99854) Bool)

(assert (=> start!127560 (array_inv!37127 a!2850)))

(declare-fun b!1498131 () Bool)

(declare-fun res!1019279 () Bool)

(assert (=> b!1498131 (=> (not res!1019279) (not e!838933))))

(declare-fun j!87 () (_ BitVec 32))

(assert (=> b!1498131 (= res!1019279 (and (= (size!48733 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48733 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48733 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1498132 () Bool)

(declare-fun res!1019277 () Bool)

(assert (=> b!1498132 (=> (not res!1019277) (not e!838933))))

(assert (=> b!1498132 (= res!1019277 (validKeyInArray!0 (select (arr!48182 a!2850) j!87)))))

(assert (= (and start!127560 res!1019276) b!1498131))

(assert (= (and b!1498131 res!1019279) b!1498128))

(assert (= (and b!1498128 res!1019278) b!1498132))

(assert (= (and b!1498132 res!1019277) b!1498129))

(assert (= (and b!1498129 res!1019280) b!1498130))

(declare-fun m!1381261 () Bool)

(assert (=> start!127560 m!1381261))

(declare-fun m!1381263 () Bool)

(assert (=> start!127560 m!1381263))

(declare-fun m!1381265 () Bool)

(assert (=> b!1498128 m!1381265))

(assert (=> b!1498128 m!1381265))

(declare-fun m!1381267 () Bool)

(assert (=> b!1498128 m!1381267))

(declare-fun m!1381269 () Bool)

(assert (=> b!1498132 m!1381269))

(assert (=> b!1498132 m!1381269))

(declare-fun m!1381271 () Bool)

(assert (=> b!1498132 m!1381271))

(declare-fun m!1381273 () Bool)

(assert (=> b!1498130 m!1381273))

(declare-fun m!1381275 () Bool)

(assert (=> b!1498129 m!1381275))

(check-sat (not b!1498128) (not start!127560) (not b!1498129) (not b!1498132) (not b!1498130))
