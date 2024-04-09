; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127588 () Bool)

(assert start!127588)

(declare-fun b!1498356 () Bool)

(declare-fun e!839017 () Bool)

(assert (=> b!1498356 (= e!839017 false)))

(declare-fun lt!652600 () Bool)

(declare-datatypes ((array!99882 0))(
  ( (array!99883 (arr!48196 (Array (_ BitVec 32) (_ BitVec 64))) (size!48747 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!99882)

(declare-datatypes ((List!34868 0))(
  ( (Nil!34865) (Cons!34864 (h!36262 (_ BitVec 64)) (t!49569 List!34868)) )
))
(declare-fun arrayNoDuplicates!0 (array!99882 (_ BitVec 32) List!34868) Bool)

(assert (=> b!1498356 (= lt!652600 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34865))))

(declare-fun b!1498357 () Bool)

(declare-fun res!1019504 () Bool)

(assert (=> b!1498357 (=> (not res!1019504) (not e!839017))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(assert (=> b!1498357 (= res!1019504 (and (= (size!48747 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48747 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48747 a!2850)) (not (= i!996 j!87))))))

(declare-fun res!1019508 () Bool)

(assert (=> start!127588 (=> (not res!1019508) (not e!839017))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127588 (= res!1019508 (validMask!0 mask!2661))))

(assert (=> start!127588 e!839017))

(assert (=> start!127588 true))

(declare-fun array_inv!37141 (array!99882) Bool)

(assert (=> start!127588 (array_inv!37141 a!2850)))

(declare-fun b!1498358 () Bool)

(declare-fun res!1019507 () Bool)

(assert (=> b!1498358 (=> (not res!1019507) (not e!839017))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1498358 (= res!1019507 (validKeyInArray!0 (select (arr!48196 a!2850) j!87)))))

(declare-fun b!1498359 () Bool)

(declare-fun res!1019505 () Bool)

(assert (=> b!1498359 (=> (not res!1019505) (not e!839017))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99882 (_ BitVec 32)) Bool)

(assert (=> b!1498359 (= res!1019505 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1498360 () Bool)

(declare-fun res!1019506 () Bool)

(assert (=> b!1498360 (=> (not res!1019506) (not e!839017))))

(assert (=> b!1498360 (= res!1019506 (validKeyInArray!0 (select (arr!48196 a!2850) i!996)))))

(assert (= (and start!127588 res!1019508) b!1498357))

(assert (= (and b!1498357 res!1019504) b!1498360))

(assert (= (and b!1498360 res!1019506) b!1498358))

(assert (= (and b!1498358 res!1019507) b!1498359))

(assert (= (and b!1498359 res!1019505) b!1498356))

(declare-fun m!1381521 () Bool)

(assert (=> b!1498358 m!1381521))

(assert (=> b!1498358 m!1381521))

(declare-fun m!1381523 () Bool)

(assert (=> b!1498358 m!1381523))

(declare-fun m!1381525 () Bool)

(assert (=> b!1498359 m!1381525))

(declare-fun m!1381527 () Bool)

(assert (=> b!1498356 m!1381527))

(declare-fun m!1381529 () Bool)

(assert (=> b!1498360 m!1381529))

(assert (=> b!1498360 m!1381529))

(declare-fun m!1381531 () Bool)

(assert (=> b!1498360 m!1381531))

(declare-fun m!1381533 () Bool)

(assert (=> start!127588 m!1381533))

(declare-fun m!1381535 () Bool)

(assert (=> start!127588 m!1381535))

(push 1)

(assert (not b!1498356))

(assert (not b!1498359))

(assert (not b!1498358))

(assert (not start!127588))

(assert (not b!1498360))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

