; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127820 () Bool)

(assert start!127820)

(declare-fun b!1501602 () Bool)

(declare-fun res!1022758 () Bool)

(declare-fun e!840008 () Bool)

(assert (=> b!1501602 (=> (not res!1022758) (not e!840008))))

(declare-datatypes ((array!100114 0))(
  ( (array!100115 (arr!48312 (Array (_ BitVec 32) (_ BitVec 64))) (size!48863 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100114)

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100114 (_ BitVec 32)) Bool)

(assert (=> b!1501602 (= res!1022758 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun res!1022756 () Bool)

(assert (=> start!127820 (=> (not res!1022756) (not e!840008))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127820 (= res!1022756 (validMask!0 mask!2661))))

(assert (=> start!127820 e!840008))

(assert (=> start!127820 true))

(declare-fun array_inv!37257 (array!100114) Bool)

(assert (=> start!127820 (array_inv!37257 a!2850)))

(declare-fun b!1501603 () Bool)

(declare-fun res!1022757 () Bool)

(declare-fun e!840010 () Bool)

(assert (=> b!1501603 (=> (not res!1022757) (not e!840010))))

(declare-datatypes ((SeekEntryResult!12541 0))(
  ( (MissingZero!12541 (index!52555 (_ BitVec 32))) (Found!12541 (index!52556 (_ BitVec 32))) (Intermediate!12541 (undefined!13353 Bool) (index!52557 (_ BitVec 32)) (x!134228 (_ BitVec 32))) (Undefined!12541) (MissingVacant!12541 (index!52558 (_ BitVec 32))) )
))
(declare-fun lt!653190 () SeekEntryResult!12541)

(declare-fun lt!653189 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100114 (_ BitVec 32)) SeekEntryResult!12541)

(assert (=> b!1501603 (= res!1022757 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!653189 vacantBefore!10 (select (arr!48312 a!2850) j!87) a!2850 mask!2661) lt!653190))))

(declare-fun b!1501604 () Bool)

(declare-fun res!1022754 () Bool)

(assert (=> b!1501604 (=> (not res!1022754) (not e!840008))))

(declare-datatypes ((List!34984 0))(
  ( (Nil!34981) (Cons!34980 (h!36378 (_ BitVec 64)) (t!49685 List!34984)) )
))
(declare-fun arrayNoDuplicates!0 (array!100114 (_ BitVec 32) List!34984) Bool)

(assert (=> b!1501604 (= res!1022754 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34981))))

(declare-fun b!1501605 () Bool)

(assert (=> b!1501605 (= e!840010 (not true))))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1501605 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!653189 vacantAfter!10 (select (store (arr!48312 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) j!87) (array!100115 (store (arr!48312 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48863 a!2850)) mask!2661) lt!653190)))

(declare-datatypes ((Unit!50190 0))(
  ( (Unit!50191) )
))
(declare-fun lt!653191 () Unit!50190)

(declare-fun lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 (array!100114 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50190)

(assert (=> b!1501605 (= lt!653191 (lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 a!2850 i!996 j!87 (bvadd #b00000000000000000000000000000001 x!647) lt!653189 vacantBefore!10 vacantAfter!10 mask!2661))))

(declare-fun b!1501606 () Bool)

(declare-fun res!1022755 () Bool)

(assert (=> b!1501606 (=> (not res!1022755) (not e!840008))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1501606 (= res!1022755 (validKeyInArray!0 (select (arr!48312 a!2850) j!87)))))

(declare-fun b!1501607 () Bool)

(declare-fun e!840009 () Bool)

(assert (=> b!1501607 (= e!840008 e!840009)))

(declare-fun res!1022750 () Bool)

(assert (=> b!1501607 (=> (not res!1022750) (not e!840009))))

(declare-fun index!625 () (_ BitVec 32))

(assert (=> b!1501607 (= res!1022750 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48312 a!2850) j!87) a!2850 mask!2661) lt!653190))))

(assert (=> b!1501607 (= lt!653190 (Found!12541 j!87))))

(declare-fun b!1501608 () Bool)

(declare-fun res!1022760 () Bool)

(assert (=> b!1501608 (=> (not res!1022760) (not e!840008))))

(assert (=> b!1501608 (= res!1022760 (and (= (size!48863 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48863 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48863 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1501609 () Bool)

(declare-fun res!1022759 () Bool)

(assert (=> b!1501609 (=> (not res!1022759) (not e!840008))))

(assert (=> b!1501609 (= res!1022759 (validKeyInArray!0 (select (arr!48312 a!2850) i!996)))))

(declare-fun b!1501610 () Bool)

(assert (=> b!1501610 (= e!840009 e!840010)))

(declare-fun res!1022753 () Bool)

(assert (=> b!1501610 (=> (not res!1022753) (not e!840010))))

(assert (=> b!1501610 (= res!1022753 (and (bvsge (bvadd #b00000000000000000000000000000001 x!647) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!647) #b01111111111111111111111111111110) (bvsge lt!653189 #b00000000000000000000000000000000) (bvslt lt!653189 (size!48863 a!2850))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1501610 (= lt!653189 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1501611 () Bool)

(declare-fun res!1022751 () Bool)

(assert (=> b!1501611 (=> (not res!1022751) (not e!840009))))

(assert (=> b!1501611 (= res!1022751 (not (= (select (arr!48312 a!2850) index!625) (select (arr!48312 a!2850) j!87))))))

(declare-fun b!1501612 () Bool)

(declare-fun res!1022752 () Bool)

(assert (=> b!1501612 (=> (not res!1022752) (not e!840008))))

(assert (=> b!1501612 (= res!1022752 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48863 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48863 a!2850)) (= (select (arr!48312 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48312 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48863 a!2850))))))

(assert (= (and start!127820 res!1022756) b!1501608))

(assert (= (and b!1501608 res!1022760) b!1501609))

(assert (= (and b!1501609 res!1022759) b!1501606))

(assert (= (and b!1501606 res!1022755) b!1501602))

(assert (= (and b!1501602 res!1022758) b!1501604))

(assert (= (and b!1501604 res!1022754) b!1501612))

(assert (= (and b!1501612 res!1022752) b!1501607))

(assert (= (and b!1501607 res!1022750) b!1501611))

(assert (= (and b!1501611 res!1022751) b!1501610))

(assert (= (and b!1501610 res!1022753) b!1501603))

(assert (= (and b!1501603 res!1022757) b!1501605))

(declare-fun m!1384911 () Bool)

(assert (=> b!1501605 m!1384911))

(declare-fun m!1384913 () Bool)

(assert (=> b!1501605 m!1384913))

(assert (=> b!1501605 m!1384913))

(declare-fun m!1384915 () Bool)

(assert (=> b!1501605 m!1384915))

(declare-fun m!1384917 () Bool)

(assert (=> b!1501605 m!1384917))

(declare-fun m!1384919 () Bool)

(assert (=> b!1501603 m!1384919))

(assert (=> b!1501603 m!1384919))

(declare-fun m!1384921 () Bool)

(assert (=> b!1501603 m!1384921))

(declare-fun m!1384923 () Bool)

(assert (=> b!1501604 m!1384923))

(declare-fun m!1384925 () Bool)

(assert (=> b!1501612 m!1384925))

(assert (=> b!1501612 m!1384911))

(declare-fun m!1384927 () Bool)

(assert (=> b!1501612 m!1384927))

(declare-fun m!1384929 () Bool)

(assert (=> b!1501602 m!1384929))

(declare-fun m!1384931 () Bool)

(assert (=> b!1501610 m!1384931))

(declare-fun m!1384933 () Bool)

(assert (=> start!127820 m!1384933))

(declare-fun m!1384935 () Bool)

(assert (=> start!127820 m!1384935))

(assert (=> b!1501607 m!1384919))

(assert (=> b!1501607 m!1384919))

(declare-fun m!1384937 () Bool)

(assert (=> b!1501607 m!1384937))

(declare-fun m!1384939 () Bool)

(assert (=> b!1501609 m!1384939))

(assert (=> b!1501609 m!1384939))

(declare-fun m!1384941 () Bool)

(assert (=> b!1501609 m!1384941))

(assert (=> b!1501606 m!1384919))

(assert (=> b!1501606 m!1384919))

(declare-fun m!1384943 () Bool)

(assert (=> b!1501606 m!1384943))

(declare-fun m!1384945 () Bool)

(assert (=> b!1501611 m!1384945))

(assert (=> b!1501611 m!1384919))

(push 1)

(assert (not b!1501610))

(assert (not b!1501607))

(assert (not b!1501603))

(assert (not b!1501605))

(assert (not start!127820))

(assert (not b!1501606))

