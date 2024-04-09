; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!127806 () Bool)

(assert start!127806)

(declare-fun b!1501371 () Bool)

(declare-fun res!1022528 () Bool)

(declare-fun e!839926 () Bool)

(assert (=> b!1501371 (=> (not res!1022528) (not e!839926))))

(declare-datatypes ((array!100100 0))(
  ( (array!100101 (arr!48305 (Array (_ BitVec 32) (_ BitVec 64))) (size!48856 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100100)

(declare-fun i!996 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(declare-fun mask!2661 () (_ BitVec 32))

(assert (=> b!1501371 (= res!1022528 (and (= (size!48856 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48856 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48856 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1501372 () Bool)

(declare-fun res!1022523 () Bool)

(assert (=> b!1501372 (=> (not res!1022523) (not e!839926))))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(assert (=> b!1501372 (= res!1022523 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48856 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48856 a!2850)) (= (select (arr!48305 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48305 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48856 a!2850))))))

(declare-fun b!1501373 () Bool)

(declare-fun e!839925 () Bool)

(declare-fun e!839924 () Bool)

(assert (=> b!1501373 (= e!839925 e!839924)))

(declare-fun res!1022526 () Bool)

(assert (=> b!1501373 (=> (not res!1022526) (not e!839924))))

(declare-fun lt!653127 () (_ BitVec 32))

(assert (=> b!1501373 (= res!1022526 (and (bvsge (bvadd #b00000000000000000000000000000001 x!647) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!647) #b01111111111111111111111111111110) (bvsge lt!653127 #b00000000000000000000000000000000) (bvslt lt!653127 (size!48856 a!2850))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1501373 (= lt!653127 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1501374 () Bool)

(declare-fun res!1022524 () Bool)

(assert (=> b!1501374 (=> (not res!1022524) (not e!839925))))

(assert (=> b!1501374 (= res!1022524 (not (= (select (arr!48305 a!2850) index!625) (select (arr!48305 a!2850) j!87))))))

(declare-fun b!1501375 () Bool)

(assert (=> b!1501375 (= e!839924 (not true))))

(declare-datatypes ((SeekEntryResult!12534 0))(
  ( (MissingZero!12534 (index!52527 (_ BitVec 32))) (Found!12534 (index!52528 (_ BitVec 32))) (Intermediate!12534 (undefined!13346 Bool) (index!52529 (_ BitVec 32)) (x!134205 (_ BitVec 32))) (Undefined!12534) (MissingVacant!12534 (index!52530 (_ BitVec 32))) )
))
(declare-fun lt!653126 () SeekEntryResult!12534)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100100 (_ BitVec 32)) SeekEntryResult!12534)

(assert (=> b!1501375 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!653127 vacantAfter!10 (select (store (arr!48305 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) j!87) (array!100101 (store (arr!48305 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48856 a!2850)) mask!2661) lt!653126)))

(declare-datatypes ((Unit!50176 0))(
  ( (Unit!50177) )
))
(declare-fun lt!653128 () Unit!50176)

(declare-fun lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 (array!100100 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50176)

(assert (=> b!1501375 (= lt!653128 (lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 a!2850 i!996 j!87 (bvadd #b00000000000000000000000000000001 x!647) lt!653127 vacantBefore!10 vacantAfter!10 mask!2661))))

(declare-fun b!1501377 () Bool)

(declare-fun res!1022527 () Bool)

(assert (=> b!1501377 (=> (not res!1022527) (not e!839926))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1501377 (= res!1022527 (validKeyInArray!0 (select (arr!48305 a!2850) i!996)))))

(declare-fun b!1501378 () Bool)

(declare-fun res!1022520 () Bool)

(assert (=> b!1501378 (=> (not res!1022520) (not e!839924))))

(assert (=> b!1501378 (= res!1022520 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!653127 vacantBefore!10 (select (arr!48305 a!2850) j!87) a!2850 mask!2661) lt!653126))))

(declare-fun b!1501379 () Bool)

(declare-fun res!1022522 () Bool)

(assert (=> b!1501379 (=> (not res!1022522) (not e!839926))))

(declare-datatypes ((List!34977 0))(
  ( (Nil!34974) (Cons!34973 (h!36371 (_ BitVec 64)) (t!49678 List!34977)) )
))
(declare-fun arrayNoDuplicates!0 (array!100100 (_ BitVec 32) List!34977) Bool)

(assert (=> b!1501379 (= res!1022522 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34974))))

(declare-fun res!1022525 () Bool)

(assert (=> start!127806 (=> (not res!1022525) (not e!839926))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127806 (= res!1022525 (validMask!0 mask!2661))))

(assert (=> start!127806 e!839926))

(assert (=> start!127806 true))

(declare-fun array_inv!37250 (array!100100) Bool)

(assert (=> start!127806 (array_inv!37250 a!2850)))

(declare-fun b!1501376 () Bool)

(declare-fun res!1022519 () Bool)

(assert (=> b!1501376 (=> (not res!1022519) (not e!839926))))

(assert (=> b!1501376 (= res!1022519 (validKeyInArray!0 (select (arr!48305 a!2850) j!87)))))

(declare-fun b!1501380 () Bool)

(assert (=> b!1501380 (= e!839926 e!839925)))

(declare-fun res!1022529 () Bool)

(assert (=> b!1501380 (=> (not res!1022529) (not e!839925))))

(assert (=> b!1501380 (= res!1022529 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48305 a!2850) j!87) a!2850 mask!2661) lt!653126))))

(assert (=> b!1501380 (= lt!653126 (Found!12534 j!87))))

(declare-fun b!1501381 () Bool)

(declare-fun res!1022521 () Bool)

(assert (=> b!1501381 (=> (not res!1022521) (not e!839926))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100100 (_ BitVec 32)) Bool)

(assert (=> b!1501381 (= res!1022521 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(assert (= (and start!127806 res!1022525) b!1501371))

(assert (= (and b!1501371 res!1022528) b!1501377))

(assert (= (and b!1501377 res!1022527) b!1501376))

(assert (= (and b!1501376 res!1022519) b!1501381))

(assert (= (and b!1501381 res!1022521) b!1501379))

(assert (= (and b!1501379 res!1022522) b!1501372))

(assert (= (and b!1501372 res!1022523) b!1501380))

(assert (= (and b!1501380 res!1022529) b!1501374))

(assert (= (and b!1501374 res!1022524) b!1501373))

(assert (= (and b!1501373 res!1022526) b!1501378))

(assert (= (and b!1501378 res!1022520) b!1501375))

(declare-fun m!1384659 () Bool)

(assert (=> b!1501375 m!1384659))

(declare-fun m!1384661 () Bool)

(assert (=> b!1501375 m!1384661))

(assert (=> b!1501375 m!1384661))

(declare-fun m!1384663 () Bool)

(assert (=> b!1501375 m!1384663))

(declare-fun m!1384665 () Bool)

(assert (=> b!1501375 m!1384665))

(declare-fun m!1384667 () Bool)

(assert (=> b!1501374 m!1384667))

(declare-fun m!1384669 () Bool)

(assert (=> b!1501374 m!1384669))

(assert (=> b!1501380 m!1384669))

(assert (=> b!1501380 m!1384669))

(declare-fun m!1384671 () Bool)

(assert (=> b!1501380 m!1384671))

(declare-fun m!1384673 () Bool)

(assert (=> b!1501373 m!1384673))

(declare-fun m!1384675 () Bool)

(assert (=> start!127806 m!1384675))

(declare-fun m!1384677 () Bool)

(assert (=> start!127806 m!1384677))

(assert (=> b!1501378 m!1384669))

(assert (=> b!1501378 m!1384669))

(declare-fun m!1384679 () Bool)

(assert (=> b!1501378 m!1384679))

(declare-fun m!1384681 () Bool)

(assert (=> b!1501381 m!1384681))

(declare-fun m!1384683 () Bool)

(assert (=> b!1501379 m!1384683))

(declare-fun m!1384685 () Bool)

(assert (=> b!1501377 m!1384685))

(assert (=> b!1501377 m!1384685))

(declare-fun m!1384687 () Bool)

(assert (=> b!1501377 m!1384687))

(declare-fun m!1384689 () Bool)

(assert (=> b!1501372 m!1384689))

(assert (=> b!1501372 m!1384659))

(declare-fun m!1384691 () Bool)

(assert (=> b!1501372 m!1384691))

(assert (=> b!1501376 m!1384669))

(assert (=> b!1501376 m!1384669))

(declare-fun m!1384693 () Bool)

(assert (=> b!1501376 m!1384693))

(check-sat (not b!1501379) (not b!1501376) (not start!127806) (not b!1501378) (not b!1501375) (not b!1501380) (not b!1501373) (not b!1501381) (not b!1501377))
(check-sat)
