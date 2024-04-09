; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127684 () Bool)

(assert start!127684)

(declare-fun b!1499500 () Bool)

(declare-fun res!1020651 () Bool)

(declare-fun e!839336 () Bool)

(assert (=> b!1499500 (=> (not res!1020651) (not e!839336))))

(declare-datatypes ((array!99978 0))(
  ( (array!99979 (arr!48244 (Array (_ BitVec 32) (_ BitVec 64))) (size!48795 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!99978)

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99978 (_ BitVec 32)) Bool)

(assert (=> b!1499500 (= res!1020651 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1499501 () Bool)

(declare-fun res!1020650 () Bool)

(assert (=> b!1499501 (=> (not res!1020650) (not e!839336))))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1499501 (= res!1020650 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48795 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48795 a!2850)) (= (select (arr!48244 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48244 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48795 a!2850))))))

(declare-fun b!1499502 () Bool)

(declare-fun res!1020648 () Bool)

(assert (=> b!1499502 (=> (not res!1020648) (not e!839336))))

(declare-fun j!87 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1499502 (= res!1020648 (validKeyInArray!0 (select (arr!48244 a!2850) j!87)))))

(declare-fun b!1499503 () Bool)

(declare-fun e!839334 () Bool)

(assert (=> b!1499503 (= e!839334 false)))

(declare-fun lt!652719 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12473 0))(
  ( (MissingZero!12473 (index!52283 (_ BitVec 32))) (Found!12473 (index!52284 (_ BitVec 32))) (Intermediate!12473 (undefined!13285 Bool) (index!52285 (_ BitVec 32)) (x!133984 (_ BitVec 32))) (Undefined!12473) (MissingVacant!12473 (index!52286 (_ BitVec 32))) )
))
(declare-fun lt!652720 () SeekEntryResult!12473)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99978 (_ BitVec 32)) SeekEntryResult!12473)

(assert (=> b!1499503 (= lt!652720 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!652719 vacantBefore!10 (select (arr!48244 a!2850) j!87) a!2850 mask!2661))))

(declare-fun b!1499504 () Bool)

(declare-fun res!1020652 () Bool)

(assert (=> b!1499504 (=> (not res!1020652) (not e!839336))))

(assert (=> b!1499504 (= res!1020652 (not (= (select (arr!48244 a!2850) index!625) (select (arr!48244 a!2850) j!87))))))

(declare-fun b!1499505 () Bool)

(assert (=> b!1499505 (= e!839336 e!839334)))

(declare-fun res!1020653 () Bool)

(assert (=> b!1499505 (=> (not res!1020653) (not e!839334))))

(assert (=> b!1499505 (= res!1020653 (and (bvsge (bvadd #b00000000000000000000000000000001 x!647) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!647) #b01111111111111111111111111111110) (bvsge lt!652719 #b00000000000000000000000000000000) (bvslt lt!652719 (size!48795 a!2850))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1499505 (= lt!652719 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1499506 () Bool)

(declare-fun res!1020655 () Bool)

(assert (=> b!1499506 (=> (not res!1020655) (not e!839336))))

(declare-datatypes ((List!34916 0))(
  ( (Nil!34913) (Cons!34912 (h!36310 (_ BitVec 64)) (t!49617 List!34916)) )
))
(declare-fun arrayNoDuplicates!0 (array!99978 (_ BitVec 32) List!34916) Bool)

(assert (=> b!1499506 (= res!1020655 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34913))))

(declare-fun b!1499507 () Bool)

(declare-fun res!1020656 () Bool)

(assert (=> b!1499507 (=> (not res!1020656) (not e!839336))))

(assert (=> b!1499507 (= res!1020656 (validKeyInArray!0 (select (arr!48244 a!2850) i!996)))))

(declare-fun b!1499508 () Bool)

(declare-fun res!1020649 () Bool)

(assert (=> b!1499508 (=> (not res!1020649) (not e!839336))))

(assert (=> b!1499508 (= res!1020649 (and (= (size!48795 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48795 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48795 a!2850)) (not (= i!996 j!87))))))

(declare-fun res!1020654 () Bool)

(assert (=> start!127684 (=> (not res!1020654) (not e!839336))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127684 (= res!1020654 (validMask!0 mask!2661))))

(assert (=> start!127684 e!839336))

(assert (=> start!127684 true))

(declare-fun array_inv!37189 (array!99978) Bool)

(assert (=> start!127684 (array_inv!37189 a!2850)))

(declare-fun b!1499509 () Bool)

(declare-fun res!1020657 () Bool)

(assert (=> b!1499509 (=> (not res!1020657) (not e!839336))))

(assert (=> b!1499509 (= res!1020657 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48244 a!2850) j!87) a!2850 mask!2661) (Found!12473 j!87)))))

(assert (= (and start!127684 res!1020654) b!1499508))

(assert (= (and b!1499508 res!1020649) b!1499507))

(assert (= (and b!1499507 res!1020656) b!1499502))

(assert (= (and b!1499502 res!1020648) b!1499500))

(assert (= (and b!1499500 res!1020651) b!1499506))

(assert (= (and b!1499506 res!1020655) b!1499501))

(assert (= (and b!1499501 res!1020650) b!1499509))

(assert (= (and b!1499509 res!1020657) b!1499504))

(assert (= (and b!1499504 res!1020652) b!1499505))

(assert (= (and b!1499505 res!1020653) b!1499503))

(declare-fun m!1382751 () Bool)

(assert (=> b!1499506 m!1382751))

(declare-fun m!1382753 () Bool)

(assert (=> b!1499509 m!1382753))

(assert (=> b!1499509 m!1382753))

(declare-fun m!1382755 () Bool)

(assert (=> b!1499509 m!1382755))

(assert (=> b!1499503 m!1382753))

(assert (=> b!1499503 m!1382753))

(declare-fun m!1382757 () Bool)

(assert (=> b!1499503 m!1382757))

(declare-fun m!1382759 () Bool)

(assert (=> b!1499500 m!1382759))

(assert (=> b!1499502 m!1382753))

(assert (=> b!1499502 m!1382753))

(declare-fun m!1382761 () Bool)

(assert (=> b!1499502 m!1382761))

(declare-fun m!1382763 () Bool)

(assert (=> start!127684 m!1382763))

(declare-fun m!1382765 () Bool)

(assert (=> start!127684 m!1382765))

(declare-fun m!1382767 () Bool)

(assert (=> b!1499504 m!1382767))

(assert (=> b!1499504 m!1382753))

(declare-fun m!1382769 () Bool)

(assert (=> b!1499505 m!1382769))

(declare-fun m!1382771 () Bool)

(assert (=> b!1499507 m!1382771))

(assert (=> b!1499507 m!1382771))

(declare-fun m!1382773 () Bool)

(assert (=> b!1499507 m!1382773))

(declare-fun m!1382775 () Bool)

(assert (=> b!1499501 m!1382775))

(declare-fun m!1382777 () Bool)

(assert (=> b!1499501 m!1382777))

(declare-fun m!1382779 () Bool)

(assert (=> b!1499501 m!1382779))

(push 1)

