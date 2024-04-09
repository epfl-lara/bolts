; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127814 () Bool)

(assert start!127814)

(declare-fun b!1501503 () Bool)

(declare-fun res!1022659 () Bool)

(declare-fun e!839975 () Bool)

(assert (=> b!1501503 (=> (not res!1022659) (not e!839975))))

(declare-datatypes ((array!100108 0))(
  ( (array!100109 (arr!48309 (Array (_ BitVec 32) (_ BitVec 64))) (size!48860 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100108)

(declare-fun index!625 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(assert (=> b!1501503 (= res!1022659 (not (= (select (arr!48309 a!2850) index!625) (select (arr!48309 a!2850) j!87))))))

(declare-fun b!1501504 () Bool)

(declare-fun res!1022653 () Bool)

(declare-fun e!839972 () Bool)

(assert (=> b!1501504 (=> (not res!1022653) (not e!839972))))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1501504 (= res!1022653 (validKeyInArray!0 (select (arr!48309 a!2850) i!996)))))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(declare-fun e!839973 () Bool)

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun b!1501505 () Bool)

(assert (=> b!1501505 (= e!839973 (not (or (bvslt mask!2661 #b00000000000000000000000000000000) (bvsge index!625 (bvadd #b00000000000000000000000000000001 mask!2661)) (bvslt vacantAfter!10 (bvadd #b00000000000000000000000000000001 mask!2661)))))))

(declare-datatypes ((SeekEntryResult!12538 0))(
  ( (MissingZero!12538 (index!52543 (_ BitVec 32))) (Found!12538 (index!52544 (_ BitVec 32))) (Intermediate!12538 (undefined!13350 Bool) (index!52545 (_ BitVec 32)) (x!134217 (_ BitVec 32))) (Undefined!12538) (MissingVacant!12538 (index!52546 (_ BitVec 32))) )
))
(declare-fun lt!653164 () SeekEntryResult!12538)

(declare-fun lt!653162 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100108 (_ BitVec 32)) SeekEntryResult!12538)

(assert (=> b!1501505 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!653162 vacantAfter!10 (select (store (arr!48309 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) j!87) (array!100109 (store (arr!48309 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48860 a!2850)) mask!2661) lt!653164)))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-datatypes ((Unit!50184 0))(
  ( (Unit!50185) )
))
(declare-fun lt!653163 () Unit!50184)

(declare-fun lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 (array!100108 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50184)

(assert (=> b!1501505 (= lt!653163 (lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 a!2850 i!996 j!87 (bvadd #b00000000000000000000000000000001 x!647) lt!653162 vacantBefore!10 vacantAfter!10 mask!2661))))

(declare-fun b!1501506 () Bool)

(declare-fun res!1022658 () Bool)

(assert (=> b!1501506 (=> (not res!1022658) (not e!839972))))

(assert (=> b!1501506 (= res!1022658 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48860 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48860 a!2850)) (= (select (arr!48309 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48309 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48860 a!2850))))))

(declare-fun b!1501507 () Bool)

(declare-fun res!1022654 () Bool)

(assert (=> b!1501507 (=> (not res!1022654) (not e!839972))))

(assert (=> b!1501507 (= res!1022654 (and (= (size!48860 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48860 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48860 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1501508 () Bool)

(declare-fun res!1022651 () Bool)

(assert (=> b!1501508 (=> (not res!1022651) (not e!839972))))

(declare-datatypes ((List!34981 0))(
  ( (Nil!34978) (Cons!34977 (h!36375 (_ BitVec 64)) (t!49682 List!34981)) )
))
(declare-fun arrayNoDuplicates!0 (array!100108 (_ BitVec 32) List!34981) Bool)

(assert (=> b!1501508 (= res!1022651 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34978))))

(declare-fun b!1501509 () Bool)

(assert (=> b!1501509 (= e!839972 e!839975)))

(declare-fun res!1022661 () Bool)

(assert (=> b!1501509 (=> (not res!1022661) (not e!839975))))

(assert (=> b!1501509 (= res!1022661 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48309 a!2850) j!87) a!2850 mask!2661) lt!653164))))

(assert (=> b!1501509 (= lt!653164 (Found!12538 j!87))))

(declare-fun b!1501510 () Bool)

(declare-fun res!1022652 () Bool)

(assert (=> b!1501510 (=> (not res!1022652) (not e!839973))))

(assert (=> b!1501510 (= res!1022652 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!653162 vacantBefore!10 (select (arr!48309 a!2850) j!87) a!2850 mask!2661) lt!653164))))

(declare-fun b!1501512 () Bool)

(assert (=> b!1501512 (= e!839975 e!839973)))

(declare-fun res!1022656 () Bool)

(assert (=> b!1501512 (=> (not res!1022656) (not e!839973))))

(assert (=> b!1501512 (= res!1022656 (and (bvsge (bvadd #b00000000000000000000000000000001 x!647) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!647) #b01111111111111111111111111111110) (bvsge lt!653162 #b00000000000000000000000000000000) (bvslt lt!653162 (size!48860 a!2850))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1501512 (= lt!653162 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1501513 () Bool)

(declare-fun res!1022657 () Bool)

(assert (=> b!1501513 (=> (not res!1022657) (not e!839972))))

(assert (=> b!1501513 (= res!1022657 (validKeyInArray!0 (select (arr!48309 a!2850) j!87)))))

(declare-fun res!1022655 () Bool)

(assert (=> start!127814 (=> (not res!1022655) (not e!839972))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127814 (= res!1022655 (validMask!0 mask!2661))))

(assert (=> start!127814 e!839972))

(assert (=> start!127814 true))

(declare-fun array_inv!37254 (array!100108) Bool)

(assert (=> start!127814 (array_inv!37254 a!2850)))

(declare-fun b!1501511 () Bool)

(declare-fun res!1022660 () Bool)

(assert (=> b!1501511 (=> (not res!1022660) (not e!839972))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100108 (_ BitVec 32)) Bool)

(assert (=> b!1501511 (= res!1022660 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(assert (= (and start!127814 res!1022655) b!1501507))

(assert (= (and b!1501507 res!1022654) b!1501504))

(assert (= (and b!1501504 res!1022653) b!1501513))

(assert (= (and b!1501513 res!1022657) b!1501511))

(assert (= (and b!1501511 res!1022660) b!1501508))

(assert (= (and b!1501508 res!1022651) b!1501506))

(assert (= (and b!1501506 res!1022658) b!1501509))

(assert (= (and b!1501509 res!1022661) b!1501503))

(assert (= (and b!1501503 res!1022659) b!1501512))

(assert (= (and b!1501512 res!1022656) b!1501510))

(assert (= (and b!1501510 res!1022652) b!1501505))

(declare-fun m!1384803 () Bool)

(assert (=> b!1501509 m!1384803))

(assert (=> b!1501509 m!1384803))

(declare-fun m!1384805 () Bool)

(assert (=> b!1501509 m!1384805))

(declare-fun m!1384807 () Bool)

(assert (=> b!1501504 m!1384807))

(assert (=> b!1501504 m!1384807))

(declare-fun m!1384809 () Bool)

(assert (=> b!1501504 m!1384809))

(declare-fun m!1384811 () Bool)

(assert (=> start!127814 m!1384811))

(declare-fun m!1384813 () Bool)

(assert (=> start!127814 m!1384813))

(declare-fun m!1384815 () Bool)

(assert (=> b!1501512 m!1384815))

(assert (=> b!1501510 m!1384803))

(assert (=> b!1501510 m!1384803))

(declare-fun m!1384817 () Bool)

(assert (=> b!1501510 m!1384817))

(assert (=> b!1501513 m!1384803))

(assert (=> b!1501513 m!1384803))

(declare-fun m!1384819 () Bool)

(assert (=> b!1501513 m!1384819))

(declare-fun m!1384821 () Bool)

(assert (=> b!1501505 m!1384821))

(declare-fun m!1384823 () Bool)

(assert (=> b!1501505 m!1384823))

(assert (=> b!1501505 m!1384823))

(declare-fun m!1384825 () Bool)

(assert (=> b!1501505 m!1384825))

(declare-fun m!1384827 () Bool)

(assert (=> b!1501505 m!1384827))

(declare-fun m!1384829 () Bool)

(assert (=> b!1501508 m!1384829))

(declare-fun m!1384831 () Bool)

(assert (=> b!1501506 m!1384831))

(assert (=> b!1501506 m!1384821))

(declare-fun m!1384833 () Bool)

(assert (=> b!1501506 m!1384833))

(declare-fun m!1384835 () Bool)

(assert (=> b!1501511 m!1384835))

(declare-fun m!1384837 () Bool)

(assert (=> b!1501503 m!1384837))

(assert (=> b!1501503 m!1384803))

(push 1)

(assert (not start!127814))

(assert (not b!1501512))

(assert (not b!1501504))

(assert (not b!1501513))

(assert (not b!1501508))

(assert (not b!1501509))

(assert (not b!1501505))

(assert (not b!1501510))

(assert (not b!1501511))

(check-sat)

(pop 1)

(push 1)

(check-sat)

