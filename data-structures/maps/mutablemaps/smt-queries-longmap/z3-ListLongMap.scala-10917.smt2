; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!127812 () Bool)

(assert start!127812)

(declare-fun b!1501470 () Bool)

(declare-fun e!839960 () Bool)

(declare-fun e!839962 () Bool)

(assert (=> b!1501470 (= e!839960 e!839962)))

(declare-fun res!1022618 () Bool)

(assert (=> b!1501470 (=> (not res!1022618) (not e!839962))))

(declare-datatypes ((array!100106 0))(
  ( (array!100107 (arr!48308 (Array (_ BitVec 32) (_ BitVec 64))) (size!48859 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100106)

(declare-fun lt!653153 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(assert (=> b!1501470 (= res!1022618 (and (bvsge (bvadd #b00000000000000000000000000000001 x!647) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!647) #b01111111111111111111111111111110) (bvsge lt!653153 #b00000000000000000000000000000000) (bvslt lt!653153 (size!48859 a!2850))))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1501470 (= lt!653153 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1501471 () Bool)

(declare-fun res!1022626 () Bool)

(declare-fun e!839963 () Bool)

(assert (=> b!1501471 (=> (not res!1022626) (not e!839963))))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(assert (=> b!1501471 (= res!1022626 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48859 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48859 a!2850)) (= (select (arr!48308 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48308 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48859 a!2850))))))

(declare-fun b!1501472 () Bool)

(declare-fun res!1022624 () Bool)

(assert (=> b!1501472 (=> (not res!1022624) (not e!839963))))

(declare-fun j!87 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1501472 (= res!1022624 (validKeyInArray!0 (select (arr!48308 a!2850) j!87)))))

(declare-fun b!1501473 () Bool)

(declare-fun res!1022625 () Bool)

(assert (=> b!1501473 (=> (not res!1022625) (not e!839963))))

(declare-datatypes ((List!34980 0))(
  ( (Nil!34977) (Cons!34976 (h!36374 (_ BitVec 64)) (t!49681 List!34980)) )
))
(declare-fun arrayNoDuplicates!0 (array!100106 (_ BitVec 32) List!34980) Bool)

(assert (=> b!1501473 (= res!1022625 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34977))))

(declare-fun b!1501474 () Bool)

(assert (=> b!1501474 (= e!839962 (not (or (bvslt mask!2661 #b00000000000000000000000000000000) (bvsge index!625 (bvadd #b00000000000000000000000000000001 mask!2661)) (bvslt vacantAfter!10 (bvadd #b00000000000000000000000000000001 mask!2661)))))))

(declare-datatypes ((SeekEntryResult!12537 0))(
  ( (MissingZero!12537 (index!52539 (_ BitVec 32))) (Found!12537 (index!52540 (_ BitVec 32))) (Intermediate!12537 (undefined!13349 Bool) (index!52541 (_ BitVec 32)) (x!134216 (_ BitVec 32))) (Undefined!12537) (MissingVacant!12537 (index!52542 (_ BitVec 32))) )
))
(declare-fun lt!653155 () SeekEntryResult!12537)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100106 (_ BitVec 32)) SeekEntryResult!12537)

(assert (=> b!1501474 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!653153 vacantAfter!10 (select (store (arr!48308 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) j!87) (array!100107 (store (arr!48308 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48859 a!2850)) mask!2661) lt!653155)))

(declare-datatypes ((Unit!50182 0))(
  ( (Unit!50183) )
))
(declare-fun lt!653154 () Unit!50182)

(declare-fun lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 (array!100106 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50182)

(assert (=> b!1501474 (= lt!653154 (lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 a!2850 i!996 j!87 (bvadd #b00000000000000000000000000000001 x!647) lt!653153 vacantBefore!10 vacantAfter!10 mask!2661))))

(declare-fun res!1022628 () Bool)

(assert (=> start!127812 (=> (not res!1022628) (not e!839963))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127812 (= res!1022628 (validMask!0 mask!2661))))

(assert (=> start!127812 e!839963))

(assert (=> start!127812 true))

(declare-fun array_inv!37253 (array!100106) Bool)

(assert (=> start!127812 (array_inv!37253 a!2850)))

(declare-fun b!1501475 () Bool)

(declare-fun res!1022623 () Bool)

(assert (=> b!1501475 (=> (not res!1022623) (not e!839960))))

(assert (=> b!1501475 (= res!1022623 (not (= (select (arr!48308 a!2850) index!625) (select (arr!48308 a!2850) j!87))))))

(declare-fun b!1501476 () Bool)

(declare-fun res!1022621 () Bool)

(assert (=> b!1501476 (=> (not res!1022621) (not e!839963))))

(assert (=> b!1501476 (= res!1022621 (and (= (size!48859 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48859 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48859 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1501477 () Bool)

(assert (=> b!1501477 (= e!839963 e!839960)))

(declare-fun res!1022622 () Bool)

(assert (=> b!1501477 (=> (not res!1022622) (not e!839960))))

(assert (=> b!1501477 (= res!1022622 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48308 a!2850) j!87) a!2850 mask!2661) lt!653155))))

(assert (=> b!1501477 (= lt!653155 (Found!12537 j!87))))

(declare-fun b!1501478 () Bool)

(declare-fun res!1022620 () Bool)

(assert (=> b!1501478 (=> (not res!1022620) (not e!839962))))

(assert (=> b!1501478 (= res!1022620 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!653153 vacantBefore!10 (select (arr!48308 a!2850) j!87) a!2850 mask!2661) lt!653155))))

(declare-fun b!1501479 () Bool)

(declare-fun res!1022627 () Bool)

(assert (=> b!1501479 (=> (not res!1022627) (not e!839963))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100106 (_ BitVec 32)) Bool)

(assert (=> b!1501479 (= res!1022627 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1501480 () Bool)

(declare-fun res!1022619 () Bool)

(assert (=> b!1501480 (=> (not res!1022619) (not e!839963))))

(assert (=> b!1501480 (= res!1022619 (validKeyInArray!0 (select (arr!48308 a!2850) i!996)))))

(assert (= (and start!127812 res!1022628) b!1501476))

(assert (= (and b!1501476 res!1022621) b!1501480))

(assert (= (and b!1501480 res!1022619) b!1501472))

(assert (= (and b!1501472 res!1022624) b!1501479))

(assert (= (and b!1501479 res!1022627) b!1501473))

(assert (= (and b!1501473 res!1022625) b!1501471))

(assert (= (and b!1501471 res!1022626) b!1501477))

(assert (= (and b!1501477 res!1022622) b!1501475))

(assert (= (and b!1501475 res!1022623) b!1501470))

(assert (= (and b!1501470 res!1022618) b!1501478))

(assert (= (and b!1501478 res!1022620) b!1501474))

(declare-fun m!1384767 () Bool)

(assert (=> b!1501478 m!1384767))

(assert (=> b!1501478 m!1384767))

(declare-fun m!1384769 () Bool)

(assert (=> b!1501478 m!1384769))

(assert (=> b!1501477 m!1384767))

(assert (=> b!1501477 m!1384767))

(declare-fun m!1384771 () Bool)

(assert (=> b!1501477 m!1384771))

(declare-fun m!1384773 () Bool)

(assert (=> b!1501475 m!1384773))

(assert (=> b!1501475 m!1384767))

(declare-fun m!1384775 () Bool)

(assert (=> start!127812 m!1384775))

(declare-fun m!1384777 () Bool)

(assert (=> start!127812 m!1384777))

(declare-fun m!1384779 () Bool)

(assert (=> b!1501474 m!1384779))

(declare-fun m!1384781 () Bool)

(assert (=> b!1501474 m!1384781))

(assert (=> b!1501474 m!1384781))

(declare-fun m!1384783 () Bool)

(assert (=> b!1501474 m!1384783))

(declare-fun m!1384785 () Bool)

(assert (=> b!1501474 m!1384785))

(declare-fun m!1384787 () Bool)

(assert (=> b!1501473 m!1384787))

(declare-fun m!1384789 () Bool)

(assert (=> b!1501470 m!1384789))

(declare-fun m!1384791 () Bool)

(assert (=> b!1501471 m!1384791))

(assert (=> b!1501471 m!1384779))

(declare-fun m!1384793 () Bool)

(assert (=> b!1501471 m!1384793))

(declare-fun m!1384795 () Bool)

(assert (=> b!1501479 m!1384795))

(assert (=> b!1501472 m!1384767))

(assert (=> b!1501472 m!1384767))

(declare-fun m!1384797 () Bool)

(assert (=> b!1501472 m!1384797))

(declare-fun m!1384799 () Bool)

(assert (=> b!1501480 m!1384799))

(assert (=> b!1501480 m!1384799))

(declare-fun m!1384801 () Bool)

(assert (=> b!1501480 m!1384801))

(check-sat (not b!1501480) (not b!1501473) (not b!1501472) (not start!127812) (not b!1501479) (not b!1501470) (not b!1501477) (not b!1501474) (not b!1501478))
(check-sat)
