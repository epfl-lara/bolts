; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!127674 () Bool)

(assert start!127674)

(declare-fun b!1499350 () Bool)

(declare-fun res!1020501 () Bool)

(declare-fun e!839290 () Bool)

(assert (=> b!1499350 (=> (not res!1020501) (not e!839290))))

(declare-datatypes ((array!99968 0))(
  ( (array!99969 (arr!48239 (Array (_ BitVec 32) (_ BitVec 64))) (size!48790 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!99968)

(declare-fun index!625 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12468 0))(
  ( (MissingZero!12468 (index!52263 (_ BitVec 32))) (Found!12468 (index!52264 (_ BitVec 32))) (Intermediate!12468 (undefined!13280 Bool) (index!52265 (_ BitVec 32)) (x!133963 (_ BitVec 32))) (Undefined!12468) (MissingVacant!12468 (index!52266 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99968 (_ BitVec 32)) SeekEntryResult!12468)

(assert (=> b!1499350 (= res!1020501 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48239 a!2850) j!87) a!2850 mask!2661) (Found!12468 j!87)))))

(declare-fun b!1499351 () Bool)

(declare-fun e!839291 () Bool)

(assert (=> b!1499351 (= e!839290 e!839291)))

(declare-fun res!1020507 () Bool)

(assert (=> b!1499351 (=> (not res!1020507) (not e!839291))))

(declare-fun lt!652689 () (_ BitVec 32))

(assert (=> b!1499351 (= res!1020507 (and (bvsge (bvadd #b00000000000000000000000000000001 x!647) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!647) #b01111111111111111111111111111110) (bvsge lt!652689 #b00000000000000000000000000000000) (bvslt lt!652689 (size!48790 a!2850))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1499351 (= lt!652689 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1499352 () Bool)

(declare-fun res!1020502 () Bool)

(assert (=> b!1499352 (=> (not res!1020502) (not e!839290))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99968 (_ BitVec 32)) Bool)

(assert (=> b!1499352 (= res!1020502 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1499353 () Bool)

(declare-fun res!1020506 () Bool)

(assert (=> b!1499353 (=> (not res!1020506) (not e!839290))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1499353 (= res!1020506 (validKeyInArray!0 (select (arr!48239 a!2850) j!87)))))

(declare-fun b!1499354 () Bool)

(declare-fun res!1020499 () Bool)

(assert (=> b!1499354 (=> (not res!1020499) (not e!839290))))

(declare-fun i!996 () (_ BitVec 32))

(assert (=> b!1499354 (= res!1020499 (validKeyInArray!0 (select (arr!48239 a!2850) i!996)))))

(declare-fun b!1499355 () Bool)

(declare-fun res!1020500 () Bool)

(assert (=> b!1499355 (=> (not res!1020500) (not e!839290))))

(declare-datatypes ((List!34911 0))(
  ( (Nil!34908) (Cons!34907 (h!36305 (_ BitVec 64)) (t!49612 List!34911)) )
))
(declare-fun arrayNoDuplicates!0 (array!99968 (_ BitVec 32) List!34911) Bool)

(assert (=> b!1499355 (= res!1020500 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34908))))

(declare-fun b!1499357 () Bool)

(declare-fun res!1020504 () Bool)

(assert (=> b!1499357 (=> (not res!1020504) (not e!839290))))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1499357 (= res!1020504 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48790 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48790 a!2850)) (= (select (arr!48239 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48239 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48790 a!2850))))))

(declare-fun b!1499358 () Bool)

(declare-fun res!1020498 () Bool)

(assert (=> b!1499358 (=> (not res!1020498) (not e!839290))))

(assert (=> b!1499358 (= res!1020498 (and (= (size!48790 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48790 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48790 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1499359 () Bool)

(declare-fun res!1020505 () Bool)

(assert (=> b!1499359 (=> (not res!1020505) (not e!839290))))

(assert (=> b!1499359 (= res!1020505 (not (= (select (arr!48239 a!2850) index!625) (select (arr!48239 a!2850) j!87))))))

(declare-fun res!1020503 () Bool)

(assert (=> start!127674 (=> (not res!1020503) (not e!839290))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127674 (= res!1020503 (validMask!0 mask!2661))))

(assert (=> start!127674 e!839290))

(assert (=> start!127674 true))

(declare-fun array_inv!37184 (array!99968) Bool)

(assert (=> start!127674 (array_inv!37184 a!2850)))

(declare-fun b!1499356 () Bool)

(assert (=> b!1499356 (= e!839291 false)))

(declare-fun lt!652690 () SeekEntryResult!12468)

(assert (=> b!1499356 (= lt!652690 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!652689 vacantBefore!10 (select (arr!48239 a!2850) j!87) a!2850 mask!2661))))

(assert (= (and start!127674 res!1020503) b!1499358))

(assert (= (and b!1499358 res!1020498) b!1499354))

(assert (= (and b!1499354 res!1020499) b!1499353))

(assert (= (and b!1499353 res!1020506) b!1499352))

(assert (= (and b!1499352 res!1020502) b!1499355))

(assert (= (and b!1499355 res!1020500) b!1499357))

(assert (= (and b!1499357 res!1020504) b!1499350))

(assert (= (and b!1499350 res!1020501) b!1499359))

(assert (= (and b!1499359 res!1020505) b!1499351))

(assert (= (and b!1499351 res!1020507) b!1499356))

(declare-fun m!1382601 () Bool)

(assert (=> b!1499355 m!1382601))

(declare-fun m!1382603 () Bool)

(assert (=> b!1499351 m!1382603))

(declare-fun m!1382605 () Bool)

(assert (=> b!1499359 m!1382605))

(declare-fun m!1382607 () Bool)

(assert (=> b!1499359 m!1382607))

(declare-fun m!1382609 () Bool)

(assert (=> b!1499357 m!1382609))

(declare-fun m!1382611 () Bool)

(assert (=> b!1499357 m!1382611))

(declare-fun m!1382613 () Bool)

(assert (=> b!1499357 m!1382613))

(assert (=> b!1499356 m!1382607))

(assert (=> b!1499356 m!1382607))

(declare-fun m!1382615 () Bool)

(assert (=> b!1499356 m!1382615))

(assert (=> b!1499350 m!1382607))

(assert (=> b!1499350 m!1382607))

(declare-fun m!1382617 () Bool)

(assert (=> b!1499350 m!1382617))

(declare-fun m!1382619 () Bool)

(assert (=> start!127674 m!1382619))

(declare-fun m!1382621 () Bool)

(assert (=> start!127674 m!1382621))

(assert (=> b!1499353 m!1382607))

(assert (=> b!1499353 m!1382607))

(declare-fun m!1382623 () Bool)

(assert (=> b!1499353 m!1382623))

(declare-fun m!1382625 () Bool)

(assert (=> b!1499352 m!1382625))

(declare-fun m!1382627 () Bool)

(assert (=> b!1499354 m!1382627))

(assert (=> b!1499354 m!1382627))

(declare-fun m!1382629 () Bool)

(assert (=> b!1499354 m!1382629))

(check-sat (not b!1499354) (not start!127674) (not b!1499353) (not b!1499351) (not b!1499355) (not b!1499350) (not b!1499356) (not b!1499352))
(check-sat)
