; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!127746 () Bool)

(assert start!127746)

(declare-fun b!1500430 () Bool)

(declare-fun e!839615 () Bool)

(declare-fun e!839613 () Bool)

(assert (=> b!1500430 (= e!839615 e!839613)))

(declare-fun res!1021578 () Bool)

(assert (=> b!1500430 (=> (not res!1021578) (not e!839613))))

(declare-datatypes ((array!100040 0))(
  ( (array!100041 (arr!48275 (Array (_ BitVec 32) (_ BitVec 64))) (size!48826 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100040)

(declare-fun x!647 () (_ BitVec 32))

(declare-fun lt!652906 () (_ BitVec 32))

(assert (=> b!1500430 (= res!1021578 (and (bvsge (bvadd #b00000000000000000000000000000001 x!647) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!647) #b01111111111111111111111111111110) (bvsge lt!652906 #b00000000000000000000000000000000) (bvslt lt!652906 (size!48826 a!2850))))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1500430 (= lt!652906 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1500431 () Bool)

(assert (=> b!1500431 (= e!839613 false)))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12504 0))(
  ( (MissingZero!12504 (index!52407 (_ BitVec 32))) (Found!12504 (index!52408 (_ BitVec 32))) (Intermediate!12504 (undefined!13316 Bool) (index!52409 (_ BitVec 32)) (x!134095 (_ BitVec 32))) (Undefined!12504) (MissingVacant!12504 (index!52410 (_ BitVec 32))) )
))
(declare-fun lt!652905 () SeekEntryResult!12504)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100040 (_ BitVec 32)) SeekEntryResult!12504)

(assert (=> b!1500431 (= lt!652905 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!652906 vacantBefore!10 (select (arr!48275 a!2850) j!87) a!2850 mask!2661))))

(declare-fun b!1500432 () Bool)

(declare-fun res!1021580 () Bool)

(assert (=> b!1500432 (=> (not res!1021580) (not e!839615))))

(declare-fun i!996 () (_ BitVec 32))

(assert (=> b!1500432 (= res!1021580 (and (= (size!48826 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48826 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48826 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1500433 () Bool)

(declare-fun res!1021584 () Bool)

(assert (=> b!1500433 (=> (not res!1021584) (not e!839615))))

(declare-datatypes ((List!34947 0))(
  ( (Nil!34944) (Cons!34943 (h!36341 (_ BitVec 64)) (t!49648 List!34947)) )
))
(declare-fun arrayNoDuplicates!0 (array!100040 (_ BitVec 32) List!34947) Bool)

(assert (=> b!1500433 (= res!1021584 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34944))))

(declare-fun b!1500434 () Bool)

(declare-fun res!1021582 () Bool)

(assert (=> b!1500434 (=> (not res!1021582) (not e!839615))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1500434 (= res!1021582 (validKeyInArray!0 (select (arr!48275 a!2850) i!996)))))

(declare-fun b!1500435 () Bool)

(declare-fun res!1021579 () Bool)

(assert (=> b!1500435 (=> (not res!1021579) (not e!839615))))

(assert (=> b!1500435 (= res!1021579 (not (= (select (arr!48275 a!2850) index!625) (select (arr!48275 a!2850) j!87))))))

(declare-fun b!1500436 () Bool)

(declare-fun res!1021586 () Bool)

(assert (=> b!1500436 (=> (not res!1021586) (not e!839615))))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1500436 (= res!1021586 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48826 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48826 a!2850)) (= (select (arr!48275 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48275 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48826 a!2850))))))

(declare-fun b!1500437 () Bool)

(declare-fun res!1021583 () Bool)

(assert (=> b!1500437 (=> (not res!1021583) (not e!839615))))

(assert (=> b!1500437 (= res!1021583 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48275 a!2850) j!87) a!2850 mask!2661) (Found!12504 j!87)))))

(declare-fun res!1021585 () Bool)

(assert (=> start!127746 (=> (not res!1021585) (not e!839615))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127746 (= res!1021585 (validMask!0 mask!2661))))

(assert (=> start!127746 e!839615))

(assert (=> start!127746 true))

(declare-fun array_inv!37220 (array!100040) Bool)

(assert (=> start!127746 (array_inv!37220 a!2850)))

(declare-fun b!1500438 () Bool)

(declare-fun res!1021581 () Bool)

(assert (=> b!1500438 (=> (not res!1021581) (not e!839615))))

(assert (=> b!1500438 (= res!1021581 (validKeyInArray!0 (select (arr!48275 a!2850) j!87)))))

(declare-fun b!1500439 () Bool)

(declare-fun res!1021587 () Bool)

(assert (=> b!1500439 (=> (not res!1021587) (not e!839615))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100040 (_ BitVec 32)) Bool)

(assert (=> b!1500439 (= res!1021587 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(assert (= (and start!127746 res!1021585) b!1500432))

(assert (= (and b!1500432 res!1021580) b!1500434))

(assert (= (and b!1500434 res!1021582) b!1500438))

(assert (= (and b!1500438 res!1021581) b!1500439))

(assert (= (and b!1500439 res!1021587) b!1500433))

(assert (= (and b!1500433 res!1021584) b!1500436))

(assert (= (and b!1500436 res!1021586) b!1500437))

(assert (= (and b!1500437 res!1021583) b!1500435))

(assert (= (and b!1500435 res!1021579) b!1500430))

(assert (= (and b!1500430 res!1021578) b!1500431))

(declare-fun m!1383681 () Bool)

(assert (=> b!1500437 m!1383681))

(assert (=> b!1500437 m!1383681))

(declare-fun m!1383683 () Bool)

(assert (=> b!1500437 m!1383683))

(assert (=> b!1500431 m!1383681))

(assert (=> b!1500431 m!1383681))

(declare-fun m!1383685 () Bool)

(assert (=> b!1500431 m!1383685))

(declare-fun m!1383687 () Bool)

(assert (=> b!1500433 m!1383687))

(declare-fun m!1383689 () Bool)

(assert (=> b!1500435 m!1383689))

(assert (=> b!1500435 m!1383681))

(declare-fun m!1383691 () Bool)

(assert (=> b!1500439 m!1383691))

(declare-fun m!1383693 () Bool)

(assert (=> b!1500436 m!1383693))

(declare-fun m!1383695 () Bool)

(assert (=> b!1500436 m!1383695))

(declare-fun m!1383697 () Bool)

(assert (=> b!1500436 m!1383697))

(declare-fun m!1383699 () Bool)

(assert (=> b!1500430 m!1383699))

(declare-fun m!1383701 () Bool)

(assert (=> b!1500434 m!1383701))

(assert (=> b!1500434 m!1383701))

(declare-fun m!1383703 () Bool)

(assert (=> b!1500434 m!1383703))

(assert (=> b!1500438 m!1383681))

(assert (=> b!1500438 m!1383681))

(declare-fun m!1383705 () Bool)

(assert (=> b!1500438 m!1383705))

(declare-fun m!1383707 () Bool)

(assert (=> start!127746 m!1383707))

(declare-fun m!1383709 () Bool)

(assert (=> start!127746 m!1383709))

(check-sat (not b!1500430) (not b!1500437) (not b!1500439) (not b!1500438) (not b!1500434) (not b!1500431) (not b!1500433) (not start!127746))
(check-sat)
