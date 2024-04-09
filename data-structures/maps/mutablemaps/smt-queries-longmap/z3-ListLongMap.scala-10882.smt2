; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!127602 () Bool)

(assert start!127602)

(declare-fun b!1498495 () Bool)

(declare-fun res!1019643 () Bool)

(declare-fun e!839059 () Bool)

(assert (=> b!1498495 (=> (not res!1019643) (not e!839059))))

(declare-datatypes ((array!99896 0))(
  ( (array!99897 (arr!48203 (Array (_ BitVec 32) (_ BitVec 64))) (size!48754 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!99896)

(declare-datatypes ((List!34875 0))(
  ( (Nil!34872) (Cons!34871 (h!36269 (_ BitVec 64)) (t!49576 List!34875)) )
))
(declare-fun arrayNoDuplicates!0 (array!99896 (_ BitVec 32) List!34875) Bool)

(assert (=> b!1498495 (= res!1019643 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34872))))

(declare-fun b!1498496 () Bool)

(declare-fun res!1019644 () Bool)

(assert (=> b!1498496 (=> (not res!1019644) (not e!839059))))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1498496 (= res!1019644 (validKeyInArray!0 (select (arr!48203 a!2850) i!996)))))

(declare-fun b!1498497 () Bool)

(declare-fun res!1019642 () Bool)

(assert (=> b!1498497 (=> (not res!1019642) (not e!839059))))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1498497 (= res!1019642 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48754 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48754 a!2850)) (= (select (arr!48203 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48203 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48754 a!2850))))))

(declare-fun b!1498498 () Bool)

(declare-fun res!1019649 () Bool)

(assert (=> b!1498498 (=> (not res!1019649) (not e!839059))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12432 0))(
  ( (MissingZero!12432 (index!52119 (_ BitVec 32))) (Found!12432 (index!52120 (_ BitVec 32))) (Intermediate!12432 (undefined!13244 Bool) (index!52121 (_ BitVec 32)) (x!133831 (_ BitVec 32))) (Undefined!12432) (MissingVacant!12432 (index!52122 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99896 (_ BitVec 32)) SeekEntryResult!12432)

(assert (=> b!1498498 (= res!1019649 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48203 a!2850) j!87) a!2850 mask!2661) (Found!12432 j!87)))))

(declare-fun b!1498499 () Bool)

(declare-fun res!1019647 () Bool)

(assert (=> b!1498499 (=> (not res!1019647) (not e!839059))))

(assert (=> b!1498499 (= res!1019647 (and (= (size!48754 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48754 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48754 a!2850)) (not (= i!996 j!87))))))

(declare-fun res!1019645 () Bool)

(assert (=> start!127602 (=> (not res!1019645) (not e!839059))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127602 (= res!1019645 (validMask!0 mask!2661))))

(assert (=> start!127602 e!839059))

(assert (=> start!127602 true))

(declare-fun array_inv!37148 (array!99896) Bool)

(assert (=> start!127602 (array_inv!37148 a!2850)))

(declare-fun b!1498494 () Bool)

(assert (=> b!1498494 (= e!839059 (and (= (select (arr!48203 a!2850) index!625) (select (arr!48203 a!2850) j!87)) (= j!87 index!625) (bvslt mask!2661 #b00000000000000000000000000000000)))))

(declare-fun b!1498500 () Bool)

(declare-fun res!1019646 () Bool)

(assert (=> b!1498500 (=> (not res!1019646) (not e!839059))))

(assert (=> b!1498500 (= res!1019646 (validKeyInArray!0 (select (arr!48203 a!2850) j!87)))))

(declare-fun b!1498501 () Bool)

(declare-fun res!1019648 () Bool)

(assert (=> b!1498501 (=> (not res!1019648) (not e!839059))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99896 (_ BitVec 32)) Bool)

(assert (=> b!1498501 (= res!1019648 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(assert (= (and start!127602 res!1019645) b!1498499))

(assert (= (and b!1498499 res!1019647) b!1498496))

(assert (= (and b!1498496 res!1019644) b!1498500))

(assert (= (and b!1498500 res!1019646) b!1498501))

(assert (= (and b!1498501 res!1019648) b!1498495))

(assert (= (and b!1498495 res!1019643) b!1498497))

(assert (= (and b!1498497 res!1019642) b!1498498))

(assert (= (and b!1498498 res!1019649) b!1498494))

(declare-fun m!1381667 () Bool)

(assert (=> b!1498501 m!1381667))

(declare-fun m!1381669 () Bool)

(assert (=> start!127602 m!1381669))

(declare-fun m!1381671 () Bool)

(assert (=> start!127602 m!1381671))

(declare-fun m!1381673 () Bool)

(assert (=> b!1498495 m!1381673))

(declare-fun m!1381675 () Bool)

(assert (=> b!1498496 m!1381675))

(assert (=> b!1498496 m!1381675))

(declare-fun m!1381677 () Bool)

(assert (=> b!1498496 m!1381677))

(declare-fun m!1381679 () Bool)

(assert (=> b!1498498 m!1381679))

(assert (=> b!1498498 m!1381679))

(declare-fun m!1381681 () Bool)

(assert (=> b!1498498 m!1381681))

(assert (=> b!1498500 m!1381679))

(assert (=> b!1498500 m!1381679))

(declare-fun m!1381683 () Bool)

(assert (=> b!1498500 m!1381683))

(declare-fun m!1381685 () Bool)

(assert (=> b!1498497 m!1381685))

(declare-fun m!1381687 () Bool)

(assert (=> b!1498497 m!1381687))

(declare-fun m!1381689 () Bool)

(assert (=> b!1498497 m!1381689))

(declare-fun m!1381691 () Bool)

(assert (=> b!1498494 m!1381691))

(assert (=> b!1498494 m!1381679))

(check-sat (not b!1498498) (not b!1498495) (not b!1498496) (not b!1498500) (not start!127602) (not b!1498501))
(check-sat)
