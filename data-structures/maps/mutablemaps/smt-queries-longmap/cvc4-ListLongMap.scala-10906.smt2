; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127748 () Bool)

(assert start!127748)

(declare-fun b!1500460 () Bool)

(declare-fun res!1021611 () Bool)

(declare-fun e!839622 () Bool)

(assert (=> b!1500460 (=> (not res!1021611) (not e!839622))))

(declare-datatypes ((array!100042 0))(
  ( (array!100043 (arr!48276 (Array (_ BitVec 32) (_ BitVec 64))) (size!48827 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100042)

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100042 (_ BitVec 32)) Bool)

(assert (=> b!1500460 (= res!1021611 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1500461 () Bool)

(declare-fun res!1021614 () Bool)

(assert (=> b!1500461 (=> (not res!1021614) (not e!839622))))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1500461 (= res!1021614 (validKeyInArray!0 (select (arr!48276 a!2850) i!996)))))

(declare-fun b!1500462 () Bool)

(declare-fun res!1021616 () Bool)

(assert (=> b!1500462 (=> (not res!1021616) (not e!839622))))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(assert (=> b!1500462 (= res!1021616 (not (= (select (arr!48276 a!2850) index!625) (select (arr!48276 a!2850) j!87))))))

(declare-fun b!1500463 () Bool)

(declare-fun res!1021612 () Bool)

(assert (=> b!1500463 (=> (not res!1021612) (not e!839622))))

(assert (=> b!1500463 (= res!1021612 (validKeyInArray!0 (select (arr!48276 a!2850) j!87)))))

(declare-fun b!1500464 () Bool)

(declare-fun e!839623 () Bool)

(assert (=> b!1500464 (= e!839623 false)))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12505 0))(
  ( (MissingZero!12505 (index!52411 (_ BitVec 32))) (Found!12505 (index!52412 (_ BitVec 32))) (Intermediate!12505 (undefined!13317 Bool) (index!52413 (_ BitVec 32)) (x!134096 (_ BitVec 32))) (Undefined!12505) (MissingVacant!12505 (index!52414 (_ BitVec 32))) )
))
(declare-fun lt!652911 () SeekEntryResult!12505)

(declare-fun lt!652912 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100042 (_ BitVec 32)) SeekEntryResult!12505)

(assert (=> b!1500464 (= lt!652911 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!652912 vacantBefore!10 (select (arr!48276 a!2850) j!87) a!2850 mask!2661))))

(declare-fun b!1500465 () Bool)

(declare-fun res!1021610 () Bool)

(assert (=> b!1500465 (=> (not res!1021610) (not e!839622))))

(assert (=> b!1500465 (= res!1021610 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48276 a!2850) j!87) a!2850 mask!2661) (Found!12505 j!87)))))

(declare-fun res!1021608 () Bool)

(assert (=> start!127748 (=> (not res!1021608) (not e!839622))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127748 (= res!1021608 (validMask!0 mask!2661))))

(assert (=> start!127748 e!839622))

(assert (=> start!127748 true))

(declare-fun array_inv!37221 (array!100042) Bool)

(assert (=> start!127748 (array_inv!37221 a!2850)))

(declare-fun b!1500466 () Bool)

(declare-fun res!1021609 () Bool)

(assert (=> b!1500466 (=> (not res!1021609) (not e!839622))))

(assert (=> b!1500466 (= res!1021609 (and (= (size!48827 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48827 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48827 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1500467 () Bool)

(declare-fun res!1021613 () Bool)

(assert (=> b!1500467 (=> (not res!1021613) (not e!839622))))

(declare-datatypes ((List!34948 0))(
  ( (Nil!34945) (Cons!34944 (h!36342 (_ BitVec 64)) (t!49649 List!34948)) )
))
(declare-fun arrayNoDuplicates!0 (array!100042 (_ BitVec 32) List!34948) Bool)

(assert (=> b!1500467 (= res!1021613 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34945))))

(declare-fun b!1500468 () Bool)

(assert (=> b!1500468 (= e!839622 e!839623)))

(declare-fun res!1021615 () Bool)

(assert (=> b!1500468 (=> (not res!1021615) (not e!839623))))

(assert (=> b!1500468 (= res!1021615 (and (bvsge (bvadd #b00000000000000000000000000000001 x!647) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!647) #b01111111111111111111111111111110) (bvsge lt!652912 #b00000000000000000000000000000000) (bvslt lt!652912 (size!48827 a!2850))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1500468 (= lt!652912 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1500469 () Bool)

(declare-fun res!1021617 () Bool)

(assert (=> b!1500469 (=> (not res!1021617) (not e!839622))))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1500469 (= res!1021617 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48827 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48827 a!2850)) (= (select (arr!48276 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48276 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48827 a!2850))))))

(assert (= (and start!127748 res!1021608) b!1500466))

(assert (= (and b!1500466 res!1021609) b!1500461))

(assert (= (and b!1500461 res!1021614) b!1500463))

(assert (= (and b!1500463 res!1021612) b!1500460))

(assert (= (and b!1500460 res!1021611) b!1500467))

(assert (= (and b!1500467 res!1021613) b!1500469))

(assert (= (and b!1500469 res!1021617) b!1500465))

(assert (= (and b!1500465 res!1021610) b!1500462))

(assert (= (and b!1500462 res!1021616) b!1500468))

(assert (= (and b!1500468 res!1021615) b!1500464))

(declare-fun m!1383711 () Bool)

(assert (=> b!1500463 m!1383711))

(assert (=> b!1500463 m!1383711))

(declare-fun m!1383713 () Bool)

(assert (=> b!1500463 m!1383713))

(declare-fun m!1383715 () Bool)

(assert (=> b!1500469 m!1383715))

(declare-fun m!1383717 () Bool)

(assert (=> b!1500469 m!1383717))

(declare-fun m!1383719 () Bool)

(assert (=> b!1500469 m!1383719))

(declare-fun m!1383721 () Bool)

(assert (=> b!1500460 m!1383721))

(declare-fun m!1383723 () Bool)

(assert (=> b!1500468 m!1383723))

(assert (=> b!1500464 m!1383711))

(assert (=> b!1500464 m!1383711))

(declare-fun m!1383725 () Bool)

(assert (=> b!1500464 m!1383725))

(assert (=> b!1500465 m!1383711))

(assert (=> b!1500465 m!1383711))

(declare-fun m!1383727 () Bool)

(assert (=> b!1500465 m!1383727))

(declare-fun m!1383729 () Bool)

(assert (=> start!127748 m!1383729))

(declare-fun m!1383731 () Bool)

(assert (=> start!127748 m!1383731))

(declare-fun m!1383733 () Bool)

(assert (=> b!1500461 m!1383733))

(assert (=> b!1500461 m!1383733))

(declare-fun m!1383735 () Bool)

(assert (=> b!1500461 m!1383735))

(declare-fun m!1383737 () Bool)

(assert (=> b!1500462 m!1383737))

(assert (=> b!1500462 m!1383711))

(declare-fun m!1383739 () Bool)

(assert (=> b!1500467 m!1383739))

(push 1)

(assert (not b!1500464))

(assert (not b!1500461))

(assert (not start!127748))

(assert (not b!1500468))

(assert (not b!1500463))

(assert (not b!1500465))

(assert (not b!1500467))

(assert (not b!1500460))

(check-sat)

