; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127816 () Bool)

(assert start!127816)

(declare-fun b!1501536 () Bool)

(declare-fun res!1022692 () Bool)

(declare-fun e!839984 () Bool)

(assert (=> b!1501536 (=> (not res!1022692) (not e!839984))))

(declare-datatypes ((array!100110 0))(
  ( (array!100111 (arr!48310 (Array (_ BitVec 32) (_ BitVec 64))) (size!48861 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100110)

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100110 (_ BitVec 32)) Bool)

(assert (=> b!1501536 (= res!1022692 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun res!1022689 () Bool)

(assert (=> start!127816 (=> (not res!1022689) (not e!839984))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127816 (= res!1022689 (validMask!0 mask!2661))))

(assert (=> start!127816 e!839984))

(assert (=> start!127816 true))

(declare-fun array_inv!37255 (array!100110) Bool)

(assert (=> start!127816 (array_inv!37255 a!2850)))

(declare-fun b!1501537 () Bool)

(declare-fun e!839985 () Bool)

(assert (=> b!1501537 (= e!839984 e!839985)))

(declare-fun res!1022688 () Bool)

(assert (=> b!1501537 (=> (not res!1022688) (not e!839985))))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12539 0))(
  ( (MissingZero!12539 (index!52547 (_ BitVec 32))) (Found!12539 (index!52548 (_ BitVec 32))) (Intermediate!12539 (undefined!13351 Bool) (index!52549 (_ BitVec 32)) (x!134226 (_ BitVec 32))) (Undefined!12539) (MissingVacant!12539 (index!52550 (_ BitVec 32))) )
))
(declare-fun lt!653173 () SeekEntryResult!12539)

(declare-fun j!87 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100110 (_ BitVec 32)) SeekEntryResult!12539)

(assert (=> b!1501537 (= res!1022688 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48310 a!2850) j!87) a!2850 mask!2661) lt!653173))))

(assert (=> b!1501537 (= lt!653173 (Found!12539 j!87))))

(declare-fun b!1501538 () Bool)

(declare-fun res!1022686 () Bool)

(assert (=> b!1501538 (=> (not res!1022686) (not e!839984))))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1501538 (= res!1022686 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48861 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48861 a!2850)) (= (select (arr!48310 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48310 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48861 a!2850))))))

(declare-fun b!1501539 () Bool)

(declare-fun res!1022684 () Bool)

(assert (=> b!1501539 (=> (not res!1022684) (not e!839984))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1501539 (= res!1022684 (validKeyInArray!0 (select (arr!48310 a!2850) i!996)))))

(declare-fun b!1501540 () Bool)

(declare-fun e!839987 () Bool)

(assert (=> b!1501540 (= e!839987 (not true))))

(declare-fun lt!653172 () (_ BitVec 32))

(assert (=> b!1501540 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!653172 vacantAfter!10 (select (store (arr!48310 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) j!87) (array!100111 (store (arr!48310 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48861 a!2850)) mask!2661) lt!653173)))

(declare-datatypes ((Unit!50186 0))(
  ( (Unit!50187) )
))
(declare-fun lt!653171 () Unit!50186)

(declare-fun lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 (array!100110 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50186)

(assert (=> b!1501540 (= lt!653171 (lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 a!2850 i!996 j!87 (bvadd #b00000000000000000000000000000001 x!647) lt!653172 vacantBefore!10 vacantAfter!10 mask!2661))))

(declare-fun b!1501541 () Bool)

(declare-fun res!1022687 () Bool)

(assert (=> b!1501541 (=> (not res!1022687) (not e!839984))))

(declare-datatypes ((List!34982 0))(
  ( (Nil!34979) (Cons!34978 (h!36376 (_ BitVec 64)) (t!49683 List!34982)) )
))
(declare-fun arrayNoDuplicates!0 (array!100110 (_ BitVec 32) List!34982) Bool)

(assert (=> b!1501541 (= res!1022687 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34979))))

(declare-fun b!1501542 () Bool)

(declare-fun res!1022693 () Bool)

(assert (=> b!1501542 (=> (not res!1022693) (not e!839987))))

(assert (=> b!1501542 (= res!1022693 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!653172 vacantBefore!10 (select (arr!48310 a!2850) j!87) a!2850 mask!2661) lt!653173))))

(declare-fun b!1501543 () Bool)

(assert (=> b!1501543 (= e!839985 e!839987)))

(declare-fun res!1022690 () Bool)

(assert (=> b!1501543 (=> (not res!1022690) (not e!839987))))

(assert (=> b!1501543 (= res!1022690 (and (bvsge (bvadd #b00000000000000000000000000000001 x!647) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!647) #b01111111111111111111111111111110) (bvsge lt!653172 #b00000000000000000000000000000000) (bvslt lt!653172 (size!48861 a!2850))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1501543 (= lt!653172 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1501544 () Bool)

(declare-fun res!1022685 () Bool)

(assert (=> b!1501544 (=> (not res!1022685) (not e!839985))))

(assert (=> b!1501544 (= res!1022685 (not (= (select (arr!48310 a!2850) index!625) (select (arr!48310 a!2850) j!87))))))

(declare-fun b!1501545 () Bool)

(declare-fun res!1022691 () Bool)

(assert (=> b!1501545 (=> (not res!1022691) (not e!839984))))

(assert (=> b!1501545 (= res!1022691 (and (= (size!48861 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48861 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48861 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1501546 () Bool)

(declare-fun res!1022694 () Bool)

(assert (=> b!1501546 (=> (not res!1022694) (not e!839984))))

(assert (=> b!1501546 (= res!1022694 (validKeyInArray!0 (select (arr!48310 a!2850) j!87)))))

(assert (= (and start!127816 res!1022689) b!1501545))

(assert (= (and b!1501545 res!1022691) b!1501539))

(assert (= (and b!1501539 res!1022684) b!1501546))

(assert (= (and b!1501546 res!1022694) b!1501536))

(assert (= (and b!1501536 res!1022692) b!1501541))

(assert (= (and b!1501541 res!1022687) b!1501538))

(assert (= (and b!1501538 res!1022686) b!1501537))

(assert (= (and b!1501537 res!1022688) b!1501544))

(assert (= (and b!1501544 res!1022685) b!1501543))

(assert (= (and b!1501543 res!1022690) b!1501542))

(assert (= (and b!1501542 res!1022693) b!1501540))

(declare-fun m!1384839 () Bool)

(assert (=> b!1501537 m!1384839))

(assert (=> b!1501537 m!1384839))

(declare-fun m!1384841 () Bool)

(assert (=> b!1501537 m!1384841))

(assert (=> b!1501542 m!1384839))

(assert (=> b!1501542 m!1384839))

(declare-fun m!1384843 () Bool)

(assert (=> b!1501542 m!1384843))

(declare-fun m!1384845 () Bool)

(assert (=> b!1501540 m!1384845))

(declare-fun m!1384847 () Bool)

(assert (=> b!1501540 m!1384847))

(assert (=> b!1501540 m!1384847))

(declare-fun m!1384849 () Bool)

(assert (=> b!1501540 m!1384849))

(declare-fun m!1384851 () Bool)

(assert (=> b!1501540 m!1384851))

(declare-fun m!1384853 () Bool)

(assert (=> b!1501541 m!1384853))

(declare-fun m!1384855 () Bool)

(assert (=> b!1501539 m!1384855))

(assert (=> b!1501539 m!1384855))

(declare-fun m!1384857 () Bool)

(assert (=> b!1501539 m!1384857))

(assert (=> b!1501546 m!1384839))

(assert (=> b!1501546 m!1384839))

(declare-fun m!1384859 () Bool)

(assert (=> b!1501546 m!1384859))

(declare-fun m!1384861 () Bool)

(assert (=> b!1501544 m!1384861))

(assert (=> b!1501544 m!1384839))

(declare-fun m!1384863 () Bool)

(assert (=> b!1501536 m!1384863))

(declare-fun m!1384865 () Bool)

(assert (=> start!127816 m!1384865))

(declare-fun m!1384867 () Bool)

(assert (=> start!127816 m!1384867))

(declare-fun m!1384869 () Bool)

(assert (=> b!1501543 m!1384869))

(declare-fun m!1384871 () Bool)

(assert (=> b!1501538 m!1384871))

(assert (=> b!1501538 m!1384845))

(declare-fun m!1384873 () Bool)

(assert (=> b!1501538 m!1384873))

(push 1)

