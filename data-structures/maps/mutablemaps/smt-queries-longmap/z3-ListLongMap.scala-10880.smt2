; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!127590 () Bool)

(assert start!127590)

(declare-fun b!1498371 () Bool)

(declare-fun res!1019523 () Bool)

(declare-fun e!839024 () Bool)

(assert (=> b!1498371 (=> (not res!1019523) (not e!839024))))

(declare-datatypes ((array!99884 0))(
  ( (array!99885 (arr!48197 (Array (_ BitVec 32) (_ BitVec 64))) (size!48748 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!99884)

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99884 (_ BitVec 32)) Bool)

(assert (=> b!1498371 (= res!1019523 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1498372 () Bool)

(declare-fun res!1019520 () Bool)

(assert (=> b!1498372 (=> (not res!1019520) (not e!839024))))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(assert (=> b!1498372 (= res!1019520 (and (= (size!48748 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48748 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48748 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1498373 () Bool)

(declare-fun res!1019522 () Bool)

(assert (=> b!1498373 (=> (not res!1019522) (not e!839024))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1498373 (= res!1019522 (validKeyInArray!0 (select (arr!48197 a!2850) j!87)))))

(declare-fun b!1498374 () Bool)

(declare-fun res!1019519 () Bool)

(assert (=> b!1498374 (=> (not res!1019519) (not e!839024))))

(assert (=> b!1498374 (= res!1019519 (validKeyInArray!0 (select (arr!48197 a!2850) i!996)))))

(declare-fun res!1019521 () Bool)

(assert (=> start!127590 (=> (not res!1019521) (not e!839024))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127590 (= res!1019521 (validMask!0 mask!2661))))

(assert (=> start!127590 e!839024))

(assert (=> start!127590 true))

(declare-fun array_inv!37142 (array!99884) Bool)

(assert (=> start!127590 (array_inv!37142 a!2850)))

(declare-fun b!1498375 () Bool)

(assert (=> b!1498375 (= e!839024 false)))

(declare-fun lt!652603 () Bool)

(declare-datatypes ((List!34869 0))(
  ( (Nil!34866) (Cons!34865 (h!36263 (_ BitVec 64)) (t!49570 List!34869)) )
))
(declare-fun arrayNoDuplicates!0 (array!99884 (_ BitVec 32) List!34869) Bool)

(assert (=> b!1498375 (= lt!652603 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34866))))

(assert (= (and start!127590 res!1019521) b!1498372))

(assert (= (and b!1498372 res!1019520) b!1498374))

(assert (= (and b!1498374 res!1019519) b!1498373))

(assert (= (and b!1498373 res!1019522) b!1498371))

(assert (= (and b!1498371 res!1019523) b!1498375))

(declare-fun m!1381537 () Bool)

(assert (=> b!1498371 m!1381537))

(declare-fun m!1381539 () Bool)

(assert (=> start!127590 m!1381539))

(declare-fun m!1381541 () Bool)

(assert (=> start!127590 m!1381541))

(declare-fun m!1381543 () Bool)

(assert (=> b!1498375 m!1381543))

(declare-fun m!1381545 () Bool)

(assert (=> b!1498374 m!1381545))

(assert (=> b!1498374 m!1381545))

(declare-fun m!1381547 () Bool)

(assert (=> b!1498374 m!1381547))

(declare-fun m!1381549 () Bool)

(assert (=> b!1498373 m!1381549))

(assert (=> b!1498373 m!1381549))

(declare-fun m!1381551 () Bool)

(assert (=> b!1498373 m!1381551))

(check-sat (not b!1498373) (not start!127590) (not b!1498374) (not b!1498375) (not b!1498371))
