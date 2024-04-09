; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127754 () Bool)

(assert start!127754)

(declare-fun b!1500550 () Bool)

(declare-fun res!1021706 () Bool)

(declare-fun e!839651 () Bool)

(assert (=> b!1500550 (=> (not res!1021706) (not e!839651))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-datatypes ((array!100048 0))(
  ( (array!100049 (arr!48279 (Array (_ BitVec 32) (_ BitVec 64))) (size!48830 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100048)

(declare-fun index!625 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12508 0))(
  ( (MissingZero!12508 (index!52423 (_ BitVec 32))) (Found!12508 (index!52424 (_ BitVec 32))) (Intermediate!12508 (undefined!13320 Bool) (index!52425 (_ BitVec 32)) (x!134107 (_ BitVec 32))) (Undefined!12508) (MissingVacant!12508 (index!52426 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100048 (_ BitVec 32)) SeekEntryResult!12508)

(assert (=> b!1500550 (= res!1021706 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48279 a!2850) j!87) a!2850 mask!2661) (Found!12508 j!87)))))

(declare-fun b!1500551 () Bool)

(declare-fun res!1021698 () Bool)

(assert (=> b!1500551 (=> (not res!1021698) (not e!839651))))

(declare-fun i!996 () (_ BitVec 32))

(assert (=> b!1500551 (= res!1021698 (and (= (size!48830 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48830 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48830 a!2850)) (not (= i!996 j!87))))))

(declare-fun res!1021704 () Bool)

(assert (=> start!127754 (=> (not res!1021704) (not e!839651))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127754 (= res!1021704 (validMask!0 mask!2661))))

(assert (=> start!127754 e!839651))

(assert (=> start!127754 true))

(declare-fun array_inv!37224 (array!100048) Bool)

(assert (=> start!127754 (array_inv!37224 a!2850)))

(declare-fun b!1500552 () Bool)

(declare-fun e!839649 () Bool)

(assert (=> b!1500552 (= e!839649 false)))

(declare-fun lt!652929 () (_ BitVec 32))

(declare-fun lt!652930 () SeekEntryResult!12508)

(assert (=> b!1500552 (= lt!652930 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!652929 vacantBefore!10 (select (arr!48279 a!2850) j!87) a!2850 mask!2661))))

(declare-fun b!1500553 () Bool)

(declare-fun res!1021705 () Bool)

(assert (=> b!1500553 (=> (not res!1021705) (not e!839651))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1500553 (= res!1021705 (validKeyInArray!0 (select (arr!48279 a!2850) i!996)))))

(declare-fun b!1500554 () Bool)

(assert (=> b!1500554 (= e!839651 e!839649)))

(declare-fun res!1021699 () Bool)

(assert (=> b!1500554 (=> (not res!1021699) (not e!839649))))

(assert (=> b!1500554 (= res!1021699 (and (bvsge (bvadd #b00000000000000000000000000000001 x!647) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!647) #b01111111111111111111111111111110) (bvsge lt!652929 #b00000000000000000000000000000000) (bvslt lt!652929 (size!48830 a!2850))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1500554 (= lt!652929 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1500555 () Bool)

(declare-fun res!1021707 () Bool)

(assert (=> b!1500555 (=> (not res!1021707) (not e!839651))))

(declare-datatypes ((List!34951 0))(
  ( (Nil!34948) (Cons!34947 (h!36345 (_ BitVec 64)) (t!49652 List!34951)) )
))
(declare-fun arrayNoDuplicates!0 (array!100048 (_ BitVec 32) List!34951) Bool)

(assert (=> b!1500555 (= res!1021707 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34948))))

(declare-fun b!1500556 () Bool)

(declare-fun res!1021702 () Bool)

(assert (=> b!1500556 (=> (not res!1021702) (not e!839651))))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1500556 (= res!1021702 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48830 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48830 a!2850)) (= (select (arr!48279 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48279 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48830 a!2850))))))

(declare-fun b!1500557 () Bool)

(declare-fun res!1021701 () Bool)

(assert (=> b!1500557 (=> (not res!1021701) (not e!839651))))

(assert (=> b!1500557 (= res!1021701 (not (= (select (arr!48279 a!2850) index!625) (select (arr!48279 a!2850) j!87))))))

(declare-fun b!1500558 () Bool)

(declare-fun res!1021703 () Bool)

(assert (=> b!1500558 (=> (not res!1021703) (not e!839651))))

(assert (=> b!1500558 (= res!1021703 (validKeyInArray!0 (select (arr!48279 a!2850) j!87)))))

(declare-fun b!1500559 () Bool)

(declare-fun res!1021700 () Bool)

(assert (=> b!1500559 (=> (not res!1021700) (not e!839651))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100048 (_ BitVec 32)) Bool)

(assert (=> b!1500559 (= res!1021700 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(assert (= (and start!127754 res!1021704) b!1500551))

(assert (= (and b!1500551 res!1021698) b!1500553))

(assert (= (and b!1500553 res!1021705) b!1500558))

(assert (= (and b!1500558 res!1021703) b!1500559))

(assert (= (and b!1500559 res!1021700) b!1500555))

(assert (= (and b!1500555 res!1021707) b!1500556))

(assert (= (and b!1500556 res!1021702) b!1500550))

(assert (= (and b!1500550 res!1021706) b!1500557))

(assert (= (and b!1500557 res!1021701) b!1500554))

(assert (= (and b!1500554 res!1021699) b!1500552))

(declare-fun m!1383801 () Bool)

(assert (=> b!1500550 m!1383801))

(assert (=> b!1500550 m!1383801))

(declare-fun m!1383803 () Bool)

(assert (=> b!1500550 m!1383803))

(declare-fun m!1383805 () Bool)

(assert (=> b!1500557 m!1383805))

(assert (=> b!1500557 m!1383801))

(declare-fun m!1383807 () Bool)

(assert (=> b!1500553 m!1383807))

(assert (=> b!1500553 m!1383807))

(declare-fun m!1383809 () Bool)

(assert (=> b!1500553 m!1383809))

(declare-fun m!1383811 () Bool)

(assert (=> b!1500554 m!1383811))

(declare-fun m!1383813 () Bool)

(assert (=> b!1500559 m!1383813))

(declare-fun m!1383815 () Bool)

(assert (=> b!1500555 m!1383815))

(assert (=> b!1500552 m!1383801))

(assert (=> b!1500552 m!1383801))

(declare-fun m!1383817 () Bool)

(assert (=> b!1500552 m!1383817))

(declare-fun m!1383819 () Bool)

(assert (=> b!1500556 m!1383819))

(declare-fun m!1383821 () Bool)

(assert (=> b!1500556 m!1383821))

(declare-fun m!1383823 () Bool)

(assert (=> b!1500556 m!1383823))

(declare-fun m!1383825 () Bool)

(assert (=> start!127754 m!1383825))

(declare-fun m!1383827 () Bool)

(assert (=> start!127754 m!1383827))

(assert (=> b!1500558 m!1383801))

(assert (=> b!1500558 m!1383801))

(declare-fun m!1383829 () Bool)

(assert (=> b!1500558 m!1383829))

(push 1)

(assert (not b!1500550))

(assert (not b!1500554))

(assert (not start!127754))

(assert (not b!1500559))

(assert (not b!1500552))

(assert (not b!1500558))

(assert (not b!1500553))

(assert (not b!1500555))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

