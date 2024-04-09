; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!127758 () Bool)

(assert start!127758)

(declare-fun b!1500610 () Bool)

(declare-fun res!1021760 () Bool)

(declare-fun e!839667 () Bool)

(assert (=> b!1500610 (=> (not res!1021760) (not e!839667))))

(declare-datatypes ((array!100052 0))(
  ( (array!100053 (arr!48281 (Array (_ BitVec 32) (_ BitVec 64))) (size!48832 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100052)

(declare-fun i!996 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1500610 (= res!1021760 (validKeyInArray!0 (select (arr!48281 a!2850) i!996)))))

(declare-fun b!1500611 () Bool)

(declare-fun res!1021766 () Bool)

(assert (=> b!1500611 (=> (not res!1021766) (not e!839667))))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(assert (=> b!1500611 (= res!1021766 (not (= (select (arr!48281 a!2850) index!625) (select (arr!48281 a!2850) j!87))))))

(declare-fun b!1500612 () Bool)

(declare-fun res!1021762 () Bool)

(assert (=> b!1500612 (=> (not res!1021762) (not e!839667))))

(assert (=> b!1500612 (= res!1021762 (validKeyInArray!0 (select (arr!48281 a!2850) j!87)))))

(declare-fun res!1021764 () Bool)

(assert (=> start!127758 (=> (not res!1021764) (not e!839667))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127758 (= res!1021764 (validMask!0 mask!2661))))

(assert (=> start!127758 e!839667))

(assert (=> start!127758 true))

(declare-fun array_inv!37226 (array!100052) Bool)

(assert (=> start!127758 (array_inv!37226 a!2850)))

(declare-fun b!1500613 () Bool)

(declare-fun res!1021765 () Bool)

(assert (=> b!1500613 (=> (not res!1021765) (not e!839667))))

(assert (=> b!1500613 (= res!1021765 (and (= (size!48832 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48832 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48832 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1500614 () Bool)

(declare-fun res!1021763 () Bool)

(assert (=> b!1500614 (=> (not res!1021763) (not e!839667))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100052 (_ BitVec 32)) Bool)

(assert (=> b!1500614 (= res!1021763 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1500615 () Bool)

(declare-fun e!839669 () Bool)

(assert (=> b!1500615 (= e!839667 e!839669)))

(declare-fun res!1021767 () Bool)

(assert (=> b!1500615 (=> (not res!1021767) (not e!839669))))

(declare-fun lt!652941 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(assert (=> b!1500615 (= res!1021767 (and (bvsge (bvadd #b00000000000000000000000000000001 x!647) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!647) #b01111111111111111111111111111110) (bvsge lt!652941 #b00000000000000000000000000000000) (bvslt lt!652941 (size!48832 a!2850))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1500615 (= lt!652941 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1500616 () Bool)

(declare-fun res!1021758 () Bool)

(assert (=> b!1500616 (=> (not res!1021758) (not e!839667))))

(declare-datatypes ((List!34953 0))(
  ( (Nil!34950) (Cons!34949 (h!36347 (_ BitVec 64)) (t!49654 List!34953)) )
))
(declare-fun arrayNoDuplicates!0 (array!100052 (_ BitVec 32) List!34953) Bool)

(assert (=> b!1500616 (= res!1021758 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34950))))

(declare-fun b!1500617 () Bool)

(declare-fun res!1021761 () Bool)

(assert (=> b!1500617 (=> (not res!1021761) (not e!839667))))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12510 0))(
  ( (MissingZero!12510 (index!52431 (_ BitVec 32))) (Found!12510 (index!52432 (_ BitVec 32))) (Intermediate!12510 (undefined!13322 Bool) (index!52433 (_ BitVec 32)) (x!134117 (_ BitVec 32))) (Undefined!12510) (MissingVacant!12510 (index!52434 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100052 (_ BitVec 32)) SeekEntryResult!12510)

(assert (=> b!1500617 (= res!1021761 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48281 a!2850) j!87) a!2850 mask!2661) (Found!12510 j!87)))))

(declare-fun b!1500618 () Bool)

(assert (=> b!1500618 (= e!839669 false)))

(declare-fun lt!652942 () SeekEntryResult!12510)

(assert (=> b!1500618 (= lt!652942 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!652941 vacantBefore!10 (select (arr!48281 a!2850) j!87) a!2850 mask!2661))))

(declare-fun b!1500619 () Bool)

(declare-fun res!1021759 () Bool)

(assert (=> b!1500619 (=> (not res!1021759) (not e!839667))))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1500619 (= res!1021759 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48832 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48832 a!2850)) (= (select (arr!48281 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48281 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48832 a!2850))))))

(assert (= (and start!127758 res!1021764) b!1500613))

(assert (= (and b!1500613 res!1021765) b!1500610))

(assert (= (and b!1500610 res!1021760) b!1500612))

(assert (= (and b!1500612 res!1021762) b!1500614))

(assert (= (and b!1500614 res!1021763) b!1500616))

(assert (= (and b!1500616 res!1021758) b!1500619))

(assert (= (and b!1500619 res!1021759) b!1500617))

(assert (= (and b!1500617 res!1021761) b!1500611))

(assert (= (and b!1500611 res!1021766) b!1500615))

(assert (= (and b!1500615 res!1021767) b!1500618))

(declare-fun m!1383861 () Bool)

(assert (=> start!127758 m!1383861))

(declare-fun m!1383863 () Bool)

(assert (=> start!127758 m!1383863))

(declare-fun m!1383865 () Bool)

(assert (=> b!1500616 m!1383865))

(declare-fun m!1383867 () Bool)

(assert (=> b!1500611 m!1383867))

(declare-fun m!1383869 () Bool)

(assert (=> b!1500611 m!1383869))

(declare-fun m!1383871 () Bool)

(assert (=> b!1500615 m!1383871))

(assert (=> b!1500617 m!1383869))

(assert (=> b!1500617 m!1383869))

(declare-fun m!1383873 () Bool)

(assert (=> b!1500617 m!1383873))

(assert (=> b!1500612 m!1383869))

(assert (=> b!1500612 m!1383869))

(declare-fun m!1383875 () Bool)

(assert (=> b!1500612 m!1383875))

(assert (=> b!1500618 m!1383869))

(assert (=> b!1500618 m!1383869))

(declare-fun m!1383877 () Bool)

(assert (=> b!1500618 m!1383877))

(declare-fun m!1383879 () Bool)

(assert (=> b!1500614 m!1383879))

(declare-fun m!1383881 () Bool)

(assert (=> b!1500619 m!1383881))

(declare-fun m!1383883 () Bool)

(assert (=> b!1500619 m!1383883))

(declare-fun m!1383885 () Bool)

(assert (=> b!1500619 m!1383885))

(declare-fun m!1383887 () Bool)

(assert (=> b!1500610 m!1383887))

(assert (=> b!1500610 m!1383887))

(declare-fun m!1383889 () Bool)

(assert (=> b!1500610 m!1383889))

(check-sat (not b!1500618) (not b!1500616) (not b!1500615) (not b!1500610) (not start!127758) (not b!1500614) (not b!1500617) (not b!1500612))
(check-sat)
