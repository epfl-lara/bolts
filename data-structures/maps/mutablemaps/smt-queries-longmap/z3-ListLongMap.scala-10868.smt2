; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!127428 () Bool)

(assert start!127428)

(declare-fun res!1018809 () Bool)

(declare-fun e!838657 () Bool)

(assert (=> start!127428 (=> (not res!1018809) (not e!838657))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127428 (= res!1018809 (validMask!0 mask!2661))))

(assert (=> start!127428 e!838657))

(assert (=> start!127428 true))

(declare-datatypes ((array!99803 0))(
  ( (array!99804 (arr!48161 (Array (_ BitVec 32) (_ BitVec 64))) (size!48712 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!99803)

(declare-fun array_inv!37106 (array!99803) Bool)

(assert (=> start!127428 (array_inv!37106 a!2850)))

(declare-fun b!1497605 () Bool)

(declare-fun res!1018806 () Bool)

(assert (=> b!1497605 (=> (not res!1018806) (not e!838657))))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1497605 (= res!1018806 (validKeyInArray!0 (select (arr!48161 a!2850) i!996)))))

(declare-fun b!1497606 () Bool)

(declare-fun res!1018808 () Bool)

(assert (=> b!1497606 (=> (not res!1018808) (not e!838657))))

(declare-fun j!87 () (_ BitVec 32))

(assert (=> b!1497606 (= res!1018808 (validKeyInArray!0 (select (arr!48161 a!2850) j!87)))))

(declare-fun b!1497604 () Bool)

(declare-fun res!1018807 () Bool)

(assert (=> b!1497604 (=> (not res!1018807) (not e!838657))))

(assert (=> b!1497604 (= res!1018807 (and (= (size!48712 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48712 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48712 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1497607 () Bool)

(assert (=> b!1497607 (= e!838657 (bvsgt #b00000000000000000000000000000000 (size!48712 a!2850)))))

(assert (= (and start!127428 res!1018809) b!1497604))

(assert (= (and b!1497604 res!1018807) b!1497605))

(assert (= (and b!1497605 res!1018806) b!1497606))

(assert (= (and b!1497606 res!1018808) b!1497607))

(declare-fun m!1380753 () Bool)

(assert (=> start!127428 m!1380753))

(declare-fun m!1380755 () Bool)

(assert (=> start!127428 m!1380755))

(declare-fun m!1380757 () Bool)

(assert (=> b!1497605 m!1380757))

(assert (=> b!1497605 m!1380757))

(declare-fun m!1380759 () Bool)

(assert (=> b!1497605 m!1380759))

(declare-fun m!1380761 () Bool)

(assert (=> b!1497606 m!1380761))

(assert (=> b!1497606 m!1380761))

(declare-fun m!1380763 () Bool)

(assert (=> b!1497606 m!1380763))

(check-sat (not start!127428) (not b!1497605) (not b!1497606))
(check-sat)
