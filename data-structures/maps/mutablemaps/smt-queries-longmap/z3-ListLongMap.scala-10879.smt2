; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!127584 () Bool)

(assert start!127584)

(declare-fun b!1498326 () Bool)

(declare-fun res!1019476 () Bool)

(declare-fun e!839005 () Bool)

(assert (=> b!1498326 (=> (not res!1019476) (not e!839005))))

(declare-datatypes ((array!99878 0))(
  ( (array!99879 (arr!48194 (Array (_ BitVec 32) (_ BitVec 64))) (size!48745 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!99878)

(declare-fun j!87 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1498326 (= res!1019476 (validKeyInArray!0 (select (arr!48194 a!2850) j!87)))))

(declare-fun b!1498327 () Bool)

(declare-fun res!1019474 () Bool)

(assert (=> b!1498327 (=> (not res!1019474) (not e!839005))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99878 (_ BitVec 32)) Bool)

(assert (=> b!1498327 (= res!1019474 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1498328 () Bool)

(assert (=> b!1498328 (= e!839005 false)))

(declare-fun lt!652594 () Bool)

(declare-datatypes ((List!34866 0))(
  ( (Nil!34863) (Cons!34862 (h!36260 (_ BitVec 64)) (t!49567 List!34866)) )
))
(declare-fun arrayNoDuplicates!0 (array!99878 (_ BitVec 32) List!34866) Bool)

(assert (=> b!1498328 (= lt!652594 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34863))))

(declare-fun b!1498329 () Bool)

(declare-fun res!1019478 () Bool)

(assert (=> b!1498329 (=> (not res!1019478) (not e!839005))))

(declare-fun i!996 () (_ BitVec 32))

(assert (=> b!1498329 (= res!1019478 (and (= (size!48745 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48745 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48745 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1498330 () Bool)

(declare-fun res!1019477 () Bool)

(assert (=> b!1498330 (=> (not res!1019477) (not e!839005))))

(assert (=> b!1498330 (= res!1019477 (validKeyInArray!0 (select (arr!48194 a!2850) i!996)))))

(declare-fun res!1019475 () Bool)

(assert (=> start!127584 (=> (not res!1019475) (not e!839005))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127584 (= res!1019475 (validMask!0 mask!2661))))

(assert (=> start!127584 e!839005))

(assert (=> start!127584 true))

(declare-fun array_inv!37139 (array!99878) Bool)

(assert (=> start!127584 (array_inv!37139 a!2850)))

(assert (= (and start!127584 res!1019475) b!1498329))

(assert (= (and b!1498329 res!1019478) b!1498330))

(assert (= (and b!1498330 res!1019477) b!1498326))

(assert (= (and b!1498326 res!1019476) b!1498327))

(assert (= (and b!1498327 res!1019474) b!1498328))

(declare-fun m!1381489 () Bool)

(assert (=> start!127584 m!1381489))

(declare-fun m!1381491 () Bool)

(assert (=> start!127584 m!1381491))

(declare-fun m!1381493 () Bool)

(assert (=> b!1498328 m!1381493))

(declare-fun m!1381495 () Bool)

(assert (=> b!1498330 m!1381495))

(assert (=> b!1498330 m!1381495))

(declare-fun m!1381497 () Bool)

(assert (=> b!1498330 m!1381497))

(declare-fun m!1381499 () Bool)

(assert (=> b!1498326 m!1381499))

(assert (=> b!1498326 m!1381499))

(declare-fun m!1381501 () Bool)

(assert (=> b!1498326 m!1381501))

(declare-fun m!1381503 () Bool)

(assert (=> b!1498327 m!1381503))

(check-sat (not start!127584) (not b!1498330) (not b!1498327) (not b!1498326) (not b!1498328))
