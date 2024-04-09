; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127742 () Bool)

(assert start!127742)

(declare-fun b!1500370 () Bool)

(declare-fun res!1021527 () Bool)

(declare-fun e!839597 () Bool)

(assert (=> b!1500370 (=> (not res!1021527) (not e!839597))))

(declare-datatypes ((array!100036 0))(
  ( (array!100037 (arr!48273 (Array (_ BitVec 32) (_ BitVec 64))) (size!48824 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100036)

(declare-fun j!87 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1500370 (= res!1021527 (validKeyInArray!0 (select (arr!48273 a!2850) j!87)))))

(declare-fun b!1500371 () Bool)

(declare-fun res!1021519 () Bool)

(assert (=> b!1500371 (=> (not res!1021519) (not e!839597))))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1500371 (= res!1021519 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48824 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48824 a!2850)) (= (select (arr!48273 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48273 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48824 a!2850))))))

(declare-fun b!1500372 () Bool)

(declare-fun res!1021518 () Bool)

(assert (=> b!1500372 (=> (not res!1021518) (not e!839597))))

(declare-datatypes ((List!34945 0))(
  ( (Nil!34942) (Cons!34941 (h!36339 (_ BitVec 64)) (t!49646 List!34945)) )
))
(declare-fun arrayNoDuplicates!0 (array!100036 (_ BitVec 32) List!34945) Bool)

(assert (=> b!1500372 (= res!1021518 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34942))))

(declare-fun b!1500373 () Bool)

(declare-fun res!1021521 () Bool)

(assert (=> b!1500373 (=> (not res!1021521) (not e!839597))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12502 0))(
  ( (MissingZero!12502 (index!52399 (_ BitVec 32))) (Found!12502 (index!52400 (_ BitVec 32))) (Intermediate!12502 (undefined!13314 Bool) (index!52401 (_ BitVec 32)) (x!134085 (_ BitVec 32))) (Undefined!12502) (MissingVacant!12502 (index!52402 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100036 (_ BitVec 32)) SeekEntryResult!12502)

(assert (=> b!1500373 (= res!1021521 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48273 a!2850) j!87) a!2850 mask!2661) (Found!12502 j!87)))))

(declare-fun b!1500374 () Bool)

(declare-fun res!1021524 () Bool)

(assert (=> b!1500374 (=> (not res!1021524) (not e!839597))))

(assert (=> b!1500374 (= res!1021524 (validKeyInArray!0 (select (arr!48273 a!2850) i!996)))))

(declare-fun b!1500375 () Bool)

(declare-fun e!839596 () Bool)

(assert (=> b!1500375 (= e!839597 e!839596)))

(declare-fun res!1021523 () Bool)

(assert (=> b!1500375 (=> (not res!1021523) (not e!839596))))

(declare-fun lt!652894 () (_ BitVec 32))

(assert (=> b!1500375 (= res!1021523 (and (bvsge (bvadd #b00000000000000000000000000000001 x!647) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!647) #b01111111111111111111111111111110) (bvsge lt!652894 #b00000000000000000000000000000000) (bvslt lt!652894 (size!48824 a!2850))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1500375 (= lt!652894 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1500377 () Bool)

(assert (=> b!1500377 (= e!839596 false)))

(declare-fun lt!652893 () SeekEntryResult!12502)

(assert (=> b!1500377 (= lt!652893 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!652894 vacantBefore!10 (select (arr!48273 a!2850) j!87) a!2850 mask!2661))))

(declare-fun b!1500378 () Bool)

(declare-fun res!1021525 () Bool)

(assert (=> b!1500378 (=> (not res!1021525) (not e!839597))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100036 (_ BitVec 32)) Bool)

(assert (=> b!1500378 (= res!1021525 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1500379 () Bool)

(declare-fun res!1021526 () Bool)

(assert (=> b!1500379 (=> (not res!1021526) (not e!839597))))

(assert (=> b!1500379 (= res!1021526 (and (= (size!48824 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48824 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48824 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1500376 () Bool)

(declare-fun res!1021522 () Bool)

(assert (=> b!1500376 (=> (not res!1021522) (not e!839597))))

(assert (=> b!1500376 (= res!1021522 (not (= (select (arr!48273 a!2850) index!625) (select (arr!48273 a!2850) j!87))))))

(declare-fun res!1021520 () Bool)

(assert (=> start!127742 (=> (not res!1021520) (not e!839597))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127742 (= res!1021520 (validMask!0 mask!2661))))

(assert (=> start!127742 e!839597))

(assert (=> start!127742 true))

(declare-fun array_inv!37218 (array!100036) Bool)

(assert (=> start!127742 (array_inv!37218 a!2850)))

(assert (= (and start!127742 res!1021520) b!1500379))

(assert (= (and b!1500379 res!1021526) b!1500374))

(assert (= (and b!1500374 res!1021524) b!1500370))

(assert (= (and b!1500370 res!1021527) b!1500378))

(assert (= (and b!1500378 res!1021525) b!1500372))

(assert (= (and b!1500372 res!1021518) b!1500371))

(assert (= (and b!1500371 res!1021519) b!1500373))

(assert (= (and b!1500373 res!1021521) b!1500376))

(assert (= (and b!1500376 res!1021522) b!1500375))

(assert (= (and b!1500375 res!1021523) b!1500377))

(declare-fun m!1383621 () Bool)

(assert (=> b!1500371 m!1383621))

(declare-fun m!1383623 () Bool)

(assert (=> b!1500371 m!1383623))

(declare-fun m!1383625 () Bool)

(assert (=> b!1500371 m!1383625))

(declare-fun m!1383627 () Bool)

(assert (=> b!1500374 m!1383627))

(assert (=> b!1500374 m!1383627))

(declare-fun m!1383629 () Bool)

(assert (=> b!1500374 m!1383629))

(declare-fun m!1383631 () Bool)

(assert (=> start!127742 m!1383631))

(declare-fun m!1383633 () Bool)

(assert (=> start!127742 m!1383633))

(declare-fun m!1383635 () Bool)

(assert (=> b!1500378 m!1383635))

(declare-fun m!1383637 () Bool)

(assert (=> b!1500373 m!1383637))

(assert (=> b!1500373 m!1383637))

(declare-fun m!1383639 () Bool)

(assert (=> b!1500373 m!1383639))

(assert (=> b!1500377 m!1383637))

(assert (=> b!1500377 m!1383637))

(declare-fun m!1383641 () Bool)

(assert (=> b!1500377 m!1383641))

(assert (=> b!1500370 m!1383637))

(assert (=> b!1500370 m!1383637))

(declare-fun m!1383643 () Bool)

(assert (=> b!1500370 m!1383643))

(declare-fun m!1383645 () Bool)

(assert (=> b!1500376 m!1383645))

(assert (=> b!1500376 m!1383637))

(declare-fun m!1383647 () Bool)

(assert (=> b!1500375 m!1383647))

(declare-fun m!1383649 () Bool)

(assert (=> b!1500372 m!1383649))

(push 1)

(assert (not b!1500375))

(assert (not start!127742))

(assert (not b!1500370))

(assert (not b!1500372))

(assert (not b!1500373))

(assert (not b!1500378))

(assert (not b!1500374))

(assert (not b!1500377))

(check-sat)

