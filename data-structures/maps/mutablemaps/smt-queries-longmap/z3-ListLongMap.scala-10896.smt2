; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!127686 () Bool)

(assert start!127686)

(declare-fun b!1499530 () Bool)

(declare-fun res!1020685 () Bool)

(declare-fun e!839345 () Bool)

(assert (=> b!1499530 (=> (not res!1020685) (not e!839345))))

(declare-datatypes ((array!99980 0))(
  ( (array!99981 (arr!48245 (Array (_ BitVec 32) (_ BitVec 64))) (size!48796 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!99980)

(declare-fun index!625 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(assert (=> b!1499530 (= res!1020685 (not (= (select (arr!48245 a!2850) index!625) (select (arr!48245 a!2850) j!87))))))

(declare-fun b!1499531 () Bool)

(declare-fun res!1020684 () Bool)

(assert (=> b!1499531 (=> (not res!1020684) (not e!839345))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99980 (_ BitVec 32)) Bool)

(assert (=> b!1499531 (= res!1020684 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1499532 () Bool)

(declare-fun e!839344 () Bool)

(assert (=> b!1499532 (= e!839344 false)))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun lt!652725 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12474 0))(
  ( (MissingZero!12474 (index!52287 (_ BitVec 32))) (Found!12474 (index!52288 (_ BitVec 32))) (Intermediate!12474 (undefined!13286 Bool) (index!52289 (_ BitVec 32)) (x!133985 (_ BitVec 32))) (Undefined!12474) (MissingVacant!12474 (index!52290 (_ BitVec 32))) )
))
(declare-fun lt!652726 () SeekEntryResult!12474)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99980 (_ BitVec 32)) SeekEntryResult!12474)

(assert (=> b!1499532 (= lt!652726 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!652725 vacantBefore!10 (select (arr!48245 a!2850) j!87) a!2850 mask!2661))))

(declare-fun b!1499533 () Bool)

(declare-fun res!1020679 () Bool)

(assert (=> b!1499533 (=> (not res!1020679) (not e!839345))))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1499533 (= res!1020679 (validKeyInArray!0 (select (arr!48245 a!2850) i!996)))))

(declare-fun res!1020687 () Bool)

(assert (=> start!127686 (=> (not res!1020687) (not e!839345))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127686 (= res!1020687 (validMask!0 mask!2661))))

(assert (=> start!127686 e!839345))

(assert (=> start!127686 true))

(declare-fun array_inv!37190 (array!99980) Bool)

(assert (=> start!127686 (array_inv!37190 a!2850)))

(declare-fun b!1499534 () Bool)

(declare-fun res!1020683 () Bool)

(assert (=> b!1499534 (=> (not res!1020683) (not e!839345))))

(declare-datatypes ((List!34917 0))(
  ( (Nil!34914) (Cons!34913 (h!36311 (_ BitVec 64)) (t!49618 List!34917)) )
))
(declare-fun arrayNoDuplicates!0 (array!99980 (_ BitVec 32) List!34917) Bool)

(assert (=> b!1499534 (= res!1020683 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34914))))

(declare-fun b!1499535 () Bool)

(declare-fun res!1020686 () Bool)

(assert (=> b!1499535 (=> (not res!1020686) (not e!839345))))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1499535 (= res!1020686 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48796 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48796 a!2850)) (= (select (arr!48245 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48245 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48796 a!2850))))))

(declare-fun b!1499536 () Bool)

(declare-fun res!1020681 () Bool)

(assert (=> b!1499536 (=> (not res!1020681) (not e!839345))))

(assert (=> b!1499536 (= res!1020681 (and (= (size!48796 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48796 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48796 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1499537 () Bool)

(assert (=> b!1499537 (= e!839345 e!839344)))

(declare-fun res!1020678 () Bool)

(assert (=> b!1499537 (=> (not res!1020678) (not e!839344))))

(assert (=> b!1499537 (= res!1020678 (and (bvsge (bvadd #b00000000000000000000000000000001 x!647) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!647) #b01111111111111111111111111111110) (bvsge lt!652725 #b00000000000000000000000000000000) (bvslt lt!652725 (size!48796 a!2850))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1499537 (= lt!652725 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1499538 () Bool)

(declare-fun res!1020680 () Bool)

(assert (=> b!1499538 (=> (not res!1020680) (not e!839345))))

(assert (=> b!1499538 (= res!1020680 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48245 a!2850) j!87) a!2850 mask!2661) (Found!12474 j!87)))))

(declare-fun b!1499539 () Bool)

(declare-fun res!1020682 () Bool)

(assert (=> b!1499539 (=> (not res!1020682) (not e!839345))))

(assert (=> b!1499539 (= res!1020682 (validKeyInArray!0 (select (arr!48245 a!2850) j!87)))))

(assert (= (and start!127686 res!1020687) b!1499536))

(assert (= (and b!1499536 res!1020681) b!1499533))

(assert (= (and b!1499533 res!1020679) b!1499539))

(assert (= (and b!1499539 res!1020682) b!1499531))

(assert (= (and b!1499531 res!1020684) b!1499534))

(assert (= (and b!1499534 res!1020683) b!1499535))

(assert (= (and b!1499535 res!1020686) b!1499538))

(assert (= (and b!1499538 res!1020680) b!1499530))

(assert (= (and b!1499530 res!1020685) b!1499537))

(assert (= (and b!1499537 res!1020678) b!1499532))

(declare-fun m!1382781 () Bool)

(assert (=> b!1499531 m!1382781))

(declare-fun m!1382783 () Bool)

(assert (=> start!127686 m!1382783))

(declare-fun m!1382785 () Bool)

(assert (=> start!127686 m!1382785))

(declare-fun m!1382787 () Bool)

(assert (=> b!1499530 m!1382787))

(declare-fun m!1382789 () Bool)

(assert (=> b!1499530 m!1382789))

(declare-fun m!1382791 () Bool)

(assert (=> b!1499534 m!1382791))

(assert (=> b!1499539 m!1382789))

(assert (=> b!1499539 m!1382789))

(declare-fun m!1382793 () Bool)

(assert (=> b!1499539 m!1382793))

(declare-fun m!1382795 () Bool)

(assert (=> b!1499533 m!1382795))

(assert (=> b!1499533 m!1382795))

(declare-fun m!1382797 () Bool)

(assert (=> b!1499533 m!1382797))

(assert (=> b!1499538 m!1382789))

(assert (=> b!1499538 m!1382789))

(declare-fun m!1382799 () Bool)

(assert (=> b!1499538 m!1382799))

(declare-fun m!1382801 () Bool)

(assert (=> b!1499537 m!1382801))

(declare-fun m!1382803 () Bool)

(assert (=> b!1499535 m!1382803))

(declare-fun m!1382805 () Bool)

(assert (=> b!1499535 m!1382805))

(declare-fun m!1382807 () Bool)

(assert (=> b!1499535 m!1382807))

(assert (=> b!1499532 m!1382789))

(assert (=> b!1499532 m!1382789))

(declare-fun m!1382809 () Bool)

(assert (=> b!1499532 m!1382809))

(check-sat (not b!1499534) (not b!1499538) (not b!1499539) (not b!1499531) (not b!1499532) (not start!127686) (not b!1499537) (not b!1499533))
(check-sat)
