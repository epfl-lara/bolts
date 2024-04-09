; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!127572 () Bool)

(assert start!127572)

(declare-fun b!1498227 () Bool)

(declare-fun res!1019379 () Bool)

(declare-fun e!838970 () Bool)

(assert (=> b!1498227 (=> (not res!1019379) (not e!838970))))

(declare-datatypes ((array!99866 0))(
  ( (array!99867 (arr!48188 (Array (_ BitVec 32) (_ BitVec 64))) (size!48739 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!99866)

(declare-fun j!87 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1498227 (= res!1019379 (validKeyInArray!0 (select (arr!48188 a!2850) j!87)))))

(declare-fun res!1019376 () Bool)

(assert (=> start!127572 (=> (not res!1019376) (not e!838970))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127572 (= res!1019376 (validMask!0 mask!2661))))

(assert (=> start!127572 e!838970))

(assert (=> start!127572 true))

(declare-fun array_inv!37133 (array!99866) Bool)

(assert (=> start!127572 (array_inv!37133 a!2850)))

(declare-fun b!1498228 () Bool)

(declare-fun res!1019375 () Bool)

(assert (=> b!1498228 (=> (not res!1019375) (not e!838970))))

(declare-fun i!996 () (_ BitVec 32))

(assert (=> b!1498228 (= res!1019375 (and (= (size!48739 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48739 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48739 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1498229 () Bool)

(declare-fun res!1019378 () Bool)

(assert (=> b!1498229 (=> (not res!1019378) (not e!838970))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99866 (_ BitVec 32)) Bool)

(assert (=> b!1498229 (= res!1019378 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1498230 () Bool)

(declare-fun res!1019377 () Bool)

(assert (=> b!1498230 (=> (not res!1019377) (not e!838970))))

(assert (=> b!1498230 (= res!1019377 (validKeyInArray!0 (select (arr!48188 a!2850) i!996)))))

(declare-fun b!1498231 () Bool)

(assert (=> b!1498231 (= e!838970 false)))

(declare-fun lt!652585 () Bool)

(declare-datatypes ((List!34860 0))(
  ( (Nil!34857) (Cons!34856 (h!36254 (_ BitVec 64)) (t!49561 List!34860)) )
))
(declare-fun arrayNoDuplicates!0 (array!99866 (_ BitVec 32) List!34860) Bool)

(assert (=> b!1498231 (= lt!652585 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34857))))

(assert (= (and start!127572 res!1019376) b!1498228))

(assert (= (and b!1498228 res!1019375) b!1498230))

(assert (= (and b!1498230 res!1019377) b!1498227))

(assert (= (and b!1498227 res!1019379) b!1498229))

(assert (= (and b!1498229 res!1019378) b!1498231))

(declare-fun m!1381375 () Bool)

(assert (=> b!1498230 m!1381375))

(assert (=> b!1498230 m!1381375))

(declare-fun m!1381377 () Bool)

(assert (=> b!1498230 m!1381377))

(declare-fun m!1381379 () Bool)

(assert (=> b!1498231 m!1381379))

(declare-fun m!1381381 () Bool)

(assert (=> b!1498227 m!1381381))

(assert (=> b!1498227 m!1381381))

(declare-fun m!1381383 () Bool)

(assert (=> b!1498227 m!1381383))

(declare-fun m!1381385 () Bool)

(assert (=> b!1498229 m!1381385))

(declare-fun m!1381387 () Bool)

(assert (=> start!127572 m!1381387))

(declare-fun m!1381389 () Bool)

(assert (=> start!127572 m!1381389))

(check-sat (not b!1498230) (not b!1498229) (not start!127572) (not b!1498231) (not b!1498227))
