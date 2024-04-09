; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127750 () Bool)

(assert start!127750)

(declare-fun b!1500490 () Bool)

(declare-fun res!1021642 () Bool)

(declare-fun e!839633 () Bool)

(assert (=> b!1500490 (=> (not res!1021642) (not e!839633))))

(declare-datatypes ((array!100044 0))(
  ( (array!100045 (arr!48277 (Array (_ BitVec 32) (_ BitVec 64))) (size!48828 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100044)

(declare-datatypes ((List!34949 0))(
  ( (Nil!34946) (Cons!34945 (h!36343 (_ BitVec 64)) (t!49650 List!34949)) )
))
(declare-fun arrayNoDuplicates!0 (array!100044 (_ BitVec 32) List!34949) Bool)

(assert (=> b!1500490 (= res!1021642 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34946))))

(declare-fun b!1500491 () Bool)

(declare-fun res!1021643 () Bool)

(assert (=> b!1500491 (=> (not res!1021643) (not e!839633))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12506 0))(
  ( (MissingZero!12506 (index!52415 (_ BitVec 32))) (Found!12506 (index!52416 (_ BitVec 32))) (Intermediate!12506 (undefined!13318 Bool) (index!52417 (_ BitVec 32)) (x!134105 (_ BitVec 32))) (Undefined!12506) (MissingVacant!12506 (index!52418 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100044 (_ BitVec 32)) SeekEntryResult!12506)

(assert (=> b!1500491 (= res!1021643 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48277 a!2850) j!87) a!2850 mask!2661) (Found!12506 j!87)))))

(declare-fun res!1021645 () Bool)

(assert (=> start!127750 (=> (not res!1021645) (not e!839633))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127750 (= res!1021645 (validMask!0 mask!2661))))

(assert (=> start!127750 e!839633))

(assert (=> start!127750 true))

(declare-fun array_inv!37222 (array!100044) Bool)

(assert (=> start!127750 (array_inv!37222 a!2850)))

(declare-fun b!1500492 () Bool)

(declare-fun res!1021640 () Bool)

(assert (=> b!1500492 (=> (not res!1021640) (not e!839633))))

(declare-fun i!996 () (_ BitVec 32))

(assert (=> b!1500492 (= res!1021640 (and (= (size!48828 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48828 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48828 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1500493 () Bool)

(declare-fun res!1021638 () Bool)

(assert (=> b!1500493 (=> (not res!1021638) (not e!839633))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1500493 (= res!1021638 (validKeyInArray!0 (select (arr!48277 a!2850) j!87)))))

(declare-fun b!1500494 () Bool)

(declare-fun e!839631 () Bool)

(assert (=> b!1500494 (= e!839633 e!839631)))

(declare-fun res!1021647 () Bool)

(assert (=> b!1500494 (=> (not res!1021647) (not e!839631))))

(declare-fun lt!652918 () (_ BitVec 32))

(assert (=> b!1500494 (= res!1021647 (and (bvsge (bvadd #b00000000000000000000000000000001 x!647) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!647) #b01111111111111111111111111111110) (bvsge lt!652918 #b00000000000000000000000000000000) (bvslt lt!652918 (size!48828 a!2850))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1500494 (= lt!652918 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1500495 () Bool)

(assert (=> b!1500495 (= e!839631 false)))

(declare-fun lt!652917 () SeekEntryResult!12506)

(assert (=> b!1500495 (= lt!652917 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!652918 vacantBefore!10 (select (arr!48277 a!2850) j!87) a!2850 mask!2661))))

(declare-fun b!1500496 () Bool)

(declare-fun res!1021644 () Bool)

(assert (=> b!1500496 (=> (not res!1021644) (not e!839633))))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1500496 (= res!1021644 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48828 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48828 a!2850)) (= (select (arr!48277 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48277 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48828 a!2850))))))

(declare-fun b!1500497 () Bool)

(declare-fun res!1021641 () Bool)

(assert (=> b!1500497 (=> (not res!1021641) (not e!839633))))

(assert (=> b!1500497 (= res!1021641 (validKeyInArray!0 (select (arr!48277 a!2850) i!996)))))

(declare-fun b!1500498 () Bool)

(declare-fun res!1021639 () Bool)

(assert (=> b!1500498 (=> (not res!1021639) (not e!839633))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100044 (_ BitVec 32)) Bool)

(assert (=> b!1500498 (= res!1021639 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1500499 () Bool)

(declare-fun res!1021646 () Bool)

(assert (=> b!1500499 (=> (not res!1021646) (not e!839633))))

(assert (=> b!1500499 (= res!1021646 (not (= (select (arr!48277 a!2850) index!625) (select (arr!48277 a!2850) j!87))))))

(assert (= (and start!127750 res!1021645) b!1500492))

(assert (= (and b!1500492 res!1021640) b!1500497))

(assert (= (and b!1500497 res!1021641) b!1500493))

(assert (= (and b!1500493 res!1021638) b!1500498))

(assert (= (and b!1500498 res!1021639) b!1500490))

(assert (= (and b!1500490 res!1021642) b!1500496))

(assert (= (and b!1500496 res!1021644) b!1500491))

(assert (= (and b!1500491 res!1021643) b!1500499))

(assert (= (and b!1500499 res!1021646) b!1500494))

(assert (= (and b!1500494 res!1021647) b!1500495))

(declare-fun m!1383741 () Bool)

(assert (=> b!1500498 m!1383741))

(declare-fun m!1383743 () Bool)

(assert (=> b!1500494 m!1383743))

(declare-fun m!1383745 () Bool)

(assert (=> b!1500497 m!1383745))

(assert (=> b!1500497 m!1383745))

(declare-fun m!1383747 () Bool)

(assert (=> b!1500497 m!1383747))

(declare-fun m!1383749 () Bool)

(assert (=> b!1500499 m!1383749))

(declare-fun m!1383751 () Bool)

(assert (=> b!1500499 m!1383751))

(assert (=> b!1500495 m!1383751))

(assert (=> b!1500495 m!1383751))

(declare-fun m!1383753 () Bool)

(assert (=> b!1500495 m!1383753))

(declare-fun m!1383755 () Bool)

(assert (=> start!127750 m!1383755))

(declare-fun m!1383757 () Bool)

(assert (=> start!127750 m!1383757))

(assert (=> b!1500493 m!1383751))

(assert (=> b!1500493 m!1383751))

(declare-fun m!1383759 () Bool)

(assert (=> b!1500493 m!1383759))

(declare-fun m!1383761 () Bool)

(assert (=> b!1500490 m!1383761))

(assert (=> b!1500491 m!1383751))

(assert (=> b!1500491 m!1383751))

(declare-fun m!1383763 () Bool)

(assert (=> b!1500491 m!1383763))

(declare-fun m!1383765 () Bool)

(assert (=> b!1500496 m!1383765))

(declare-fun m!1383767 () Bool)

(assert (=> b!1500496 m!1383767))

(declare-fun m!1383769 () Bool)

(assert (=> b!1500496 m!1383769))

(push 1)

