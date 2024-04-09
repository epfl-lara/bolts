; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127612 () Bool)

(assert start!127612)

(declare-fun b!1498605 () Bool)

(declare-fun res!1019760 () Bool)

(declare-fun e!839090 () Bool)

(assert (=> b!1498605 (=> (not res!1019760) (not e!839090))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-datatypes ((array!99906 0))(
  ( (array!99907 (arr!48208 (Array (_ BitVec 32) (_ BitVec 64))) (size!48759 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!99906)

(declare-fun i!996 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(assert (=> b!1498605 (= res!1019760 (and (= (size!48759 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48759 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48759 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1498606 () Bool)

(declare-fun res!1019754 () Bool)

(assert (=> b!1498606 (=> (not res!1019754) (not e!839090))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99906 (_ BitVec 32)) Bool)

(assert (=> b!1498606 (= res!1019754 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun res!1019757 () Bool)

(assert (=> start!127612 (=> (not res!1019757) (not e!839090))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127612 (= res!1019757 (validMask!0 mask!2661))))

(assert (=> start!127612 e!839090))

(assert (=> start!127612 true))

(declare-fun array_inv!37153 (array!99906) Bool)

(assert (=> start!127612 (array_inv!37153 a!2850)))

(declare-fun b!1498607 () Bool)

(declare-fun res!1019756 () Bool)

(assert (=> b!1498607 (=> (not res!1019756) (not e!839090))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1498607 (= res!1019756 (validKeyInArray!0 (select (arr!48208 a!2850) i!996)))))

(declare-fun b!1498608 () Bool)

(declare-fun res!1019758 () Bool)

(assert (=> b!1498608 (=> (not res!1019758) (not e!839090))))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12437 0))(
  ( (MissingZero!12437 (index!52139 (_ BitVec 32))) (Found!12437 (index!52140 (_ BitVec 32))) (Intermediate!12437 (undefined!13249 Bool) (index!52141 (_ BitVec 32)) (x!133852 (_ BitVec 32))) (Undefined!12437) (MissingVacant!12437 (index!52142 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99906 (_ BitVec 32)) SeekEntryResult!12437)

(assert (=> b!1498608 (= res!1019758 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48208 a!2850) j!87) a!2850 mask!2661) (Found!12437 j!87)))))

(declare-fun b!1498609 () Bool)

(declare-fun res!1019759 () Bool)

(assert (=> b!1498609 (=> (not res!1019759) (not e!839090))))

(assert (=> b!1498609 (= res!1019759 (validKeyInArray!0 (select (arr!48208 a!2850) j!87)))))

(declare-fun b!1498610 () Bool)

(declare-fun res!1019753 () Bool)

(assert (=> b!1498610 (=> (not res!1019753) (not e!839090))))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1498610 (= res!1019753 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48759 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48759 a!2850)) (= (select (arr!48208 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48208 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48759 a!2850))))))

(declare-fun b!1498611 () Bool)

(assert (=> b!1498611 (= e!839090 (and (= (select (arr!48208 a!2850) index!625) (select (arr!48208 a!2850) j!87)) (= j!87 index!625) (bvsge mask!2661 #b00000000000000000000000000000000) (bvsge index!625 (bvadd #b00000000000000000000000000000001 mask!2661))))))

(declare-fun b!1498612 () Bool)

(declare-fun res!1019755 () Bool)

(assert (=> b!1498612 (=> (not res!1019755) (not e!839090))))

(declare-datatypes ((List!34880 0))(
  ( (Nil!34877) (Cons!34876 (h!36274 (_ BitVec 64)) (t!49581 List!34880)) )
))
(declare-fun arrayNoDuplicates!0 (array!99906 (_ BitVec 32) List!34880) Bool)

(assert (=> b!1498612 (= res!1019755 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34877))))

(assert (= (and start!127612 res!1019757) b!1498605))

(assert (= (and b!1498605 res!1019760) b!1498607))

(assert (= (and b!1498607 res!1019756) b!1498609))

(assert (= (and b!1498609 res!1019759) b!1498606))

(assert (= (and b!1498606 res!1019754) b!1498612))

(assert (= (and b!1498612 res!1019755) b!1498610))

(assert (= (and b!1498610 res!1019753) b!1498608))

(assert (= (and b!1498608 res!1019758) b!1498611))

(declare-fun m!1381791 () Bool)

(assert (=> b!1498611 m!1381791))

(declare-fun m!1381793 () Bool)

(assert (=> b!1498611 m!1381793))

(declare-fun m!1381795 () Bool)

(assert (=> b!1498610 m!1381795))

(declare-fun m!1381797 () Bool)

(assert (=> b!1498610 m!1381797))

(declare-fun m!1381799 () Bool)

(assert (=> b!1498610 m!1381799))

(declare-fun m!1381801 () Bool)

(assert (=> b!1498606 m!1381801))

(assert (=> b!1498608 m!1381793))

(assert (=> b!1498608 m!1381793))

(declare-fun m!1381803 () Bool)

(assert (=> b!1498608 m!1381803))

(declare-fun m!1381805 () Bool)

(assert (=> b!1498607 m!1381805))

(assert (=> b!1498607 m!1381805))

(declare-fun m!1381807 () Bool)

(assert (=> b!1498607 m!1381807))

(assert (=> b!1498609 m!1381793))

(assert (=> b!1498609 m!1381793))

(declare-fun m!1381809 () Bool)

(assert (=> b!1498609 m!1381809))

(declare-fun m!1381811 () Bool)

(assert (=> b!1498612 m!1381811))

(declare-fun m!1381813 () Bool)

(assert (=> start!127612 m!1381813))

(declare-fun m!1381815 () Bool)

(assert (=> start!127612 m!1381815))

(push 1)

(assert (not start!127612))

(assert (not b!1498607))

(assert (not b!1498612))

(assert (not b!1498609))

(assert (not b!1498608))

(assert (not b!1498606))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

