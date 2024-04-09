; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!127752 () Bool)

(assert start!127752)

(declare-fun b!1500520 () Bool)

(declare-fun res!1021673 () Bool)

(declare-fun e!839640 () Bool)

(assert (=> b!1500520 (=> (not res!1021673) (not e!839640))))

(declare-datatypes ((array!100046 0))(
  ( (array!100047 (arr!48278 (Array (_ BitVec 32) (_ BitVec 64))) (size!48829 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100046)

(declare-datatypes ((List!34950 0))(
  ( (Nil!34947) (Cons!34946 (h!36344 (_ BitVec 64)) (t!49651 List!34950)) )
))
(declare-fun arrayNoDuplicates!0 (array!100046 (_ BitVec 32) List!34950) Bool)

(assert (=> b!1500520 (= res!1021673 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34947))))

(declare-fun b!1500521 () Bool)

(declare-fun res!1021675 () Bool)

(assert (=> b!1500521 (=> (not res!1021675) (not e!839640))))

(declare-fun j!87 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1500521 (= res!1021675 (validKeyInArray!0 (select (arr!48278 a!2850) j!87)))))

(declare-fun b!1500522 () Bool)

(declare-fun res!1021674 () Bool)

(assert (=> b!1500522 (=> (not res!1021674) (not e!839640))))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1500522 (= res!1021674 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48829 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48829 a!2850)) (= (select (arr!48278 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48278 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48829 a!2850))))))

(declare-fun b!1500523 () Bool)

(declare-fun res!1021677 () Bool)

(assert (=> b!1500523 (=> (not res!1021677) (not e!839640))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100046 (_ BitVec 32)) Bool)

(assert (=> b!1500523 (= res!1021677 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1500524 () Bool)

(declare-fun res!1021676 () Bool)

(assert (=> b!1500524 (=> (not res!1021676) (not e!839640))))

(assert (=> b!1500524 (= res!1021676 (and (= (size!48829 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48829 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48829 a!2850)) (not (= i!996 j!87))))))

(declare-fun res!1021671 () Bool)

(assert (=> start!127752 (=> (not res!1021671) (not e!839640))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127752 (= res!1021671 (validMask!0 mask!2661))))

(assert (=> start!127752 e!839640))

(assert (=> start!127752 true))

(declare-fun array_inv!37223 (array!100046) Bool)

(assert (=> start!127752 (array_inv!37223 a!2850)))

(declare-fun b!1500525 () Bool)

(declare-fun e!839642 () Bool)

(assert (=> b!1500525 (= e!839640 e!839642)))

(declare-fun res!1021670 () Bool)

(assert (=> b!1500525 (=> (not res!1021670) (not e!839642))))

(declare-fun lt!652923 () (_ BitVec 32))

(assert (=> b!1500525 (= res!1021670 (and (bvsge (bvadd #b00000000000000000000000000000001 x!647) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!647) #b01111111111111111111111111111110) (bvsge lt!652923 #b00000000000000000000000000000000) (bvslt lt!652923 (size!48829 a!2850))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1500525 (= lt!652923 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1500526 () Bool)

(declare-fun res!1021668 () Bool)

(assert (=> b!1500526 (=> (not res!1021668) (not e!839640))))

(assert (=> b!1500526 (= res!1021668 (validKeyInArray!0 (select (arr!48278 a!2850) i!996)))))

(declare-fun b!1500527 () Bool)

(declare-fun res!1021669 () Bool)

(assert (=> b!1500527 (=> (not res!1021669) (not e!839640))))

(declare-datatypes ((SeekEntryResult!12507 0))(
  ( (MissingZero!12507 (index!52419 (_ BitVec 32))) (Found!12507 (index!52420 (_ BitVec 32))) (Intermediate!12507 (undefined!13319 Bool) (index!52421 (_ BitVec 32)) (x!134106 (_ BitVec 32))) (Undefined!12507) (MissingVacant!12507 (index!52422 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100046 (_ BitVec 32)) SeekEntryResult!12507)

(assert (=> b!1500527 (= res!1021669 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48278 a!2850) j!87) a!2850 mask!2661) (Found!12507 j!87)))))

(declare-fun b!1500528 () Bool)

(assert (=> b!1500528 (= e!839642 false)))

(declare-fun lt!652924 () SeekEntryResult!12507)

(assert (=> b!1500528 (= lt!652924 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!652923 vacantBefore!10 (select (arr!48278 a!2850) j!87) a!2850 mask!2661))))

(declare-fun b!1500529 () Bool)

(declare-fun res!1021672 () Bool)

(assert (=> b!1500529 (=> (not res!1021672) (not e!839640))))

(assert (=> b!1500529 (= res!1021672 (not (= (select (arr!48278 a!2850) index!625) (select (arr!48278 a!2850) j!87))))))

(assert (= (and start!127752 res!1021671) b!1500524))

(assert (= (and b!1500524 res!1021676) b!1500526))

(assert (= (and b!1500526 res!1021668) b!1500521))

(assert (= (and b!1500521 res!1021675) b!1500523))

(assert (= (and b!1500523 res!1021677) b!1500520))

(assert (= (and b!1500520 res!1021673) b!1500522))

(assert (= (and b!1500522 res!1021674) b!1500527))

(assert (= (and b!1500527 res!1021669) b!1500529))

(assert (= (and b!1500529 res!1021672) b!1500525))

(assert (= (and b!1500525 res!1021670) b!1500528))

(declare-fun m!1383771 () Bool)

(assert (=> b!1500528 m!1383771))

(assert (=> b!1500528 m!1383771))

(declare-fun m!1383773 () Bool)

(assert (=> b!1500528 m!1383773))

(declare-fun m!1383775 () Bool)

(assert (=> b!1500529 m!1383775))

(assert (=> b!1500529 m!1383771))

(declare-fun m!1383777 () Bool)

(assert (=> b!1500525 m!1383777))

(declare-fun m!1383779 () Bool)

(assert (=> b!1500520 m!1383779))

(assert (=> b!1500521 m!1383771))

(assert (=> b!1500521 m!1383771))

(declare-fun m!1383781 () Bool)

(assert (=> b!1500521 m!1383781))

(declare-fun m!1383783 () Bool)

(assert (=> start!127752 m!1383783))

(declare-fun m!1383785 () Bool)

(assert (=> start!127752 m!1383785))

(declare-fun m!1383787 () Bool)

(assert (=> b!1500523 m!1383787))

(declare-fun m!1383789 () Bool)

(assert (=> b!1500522 m!1383789))

(declare-fun m!1383791 () Bool)

(assert (=> b!1500522 m!1383791))

(declare-fun m!1383793 () Bool)

(assert (=> b!1500522 m!1383793))

(assert (=> b!1500527 m!1383771))

(assert (=> b!1500527 m!1383771))

(declare-fun m!1383795 () Bool)

(assert (=> b!1500527 m!1383795))

(declare-fun m!1383797 () Bool)

(assert (=> b!1500526 m!1383797))

(assert (=> b!1500526 m!1383797))

(declare-fun m!1383799 () Bool)

(assert (=> b!1500526 m!1383799))

(check-sat (not b!1500523) (not b!1500528) (not b!1500527) (not b!1500520) (not start!127752) (not b!1500526) (not b!1500521) (not b!1500525))
(check-sat)
