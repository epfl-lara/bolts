; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127822 () Bool)

(assert start!127822)

(declare-fun b!1501637 () Bool)

(declare-fun e!840024 () Bool)

(declare-fun e!840022 () Bool)

(assert (=> b!1501637 (= e!840024 (not e!840022))))

(declare-fun res!1022794 () Bool)

(assert (=> b!1501637 (=> res!1022794 e!840022)))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1501637 (= res!1022794 (or (bvslt mask!2661 #b00000000000000000000000000000000) (bvsge index!625 (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge vacantAfter!10 (bvadd #b00000000000000000000000000000001 mask!2661))))))

(declare-fun lt!653200 () (_ BitVec 32))

(declare-datatypes ((array!100116 0))(
  ( (array!100117 (arr!48313 (Array (_ BitVec 32) (_ BitVec 64))) (size!48864 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100116)

(declare-fun i!996 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12542 0))(
  ( (MissingZero!12542 (index!52559 (_ BitVec 32))) (Found!12542 (index!52560 (_ BitVec 32))) (Intermediate!12542 (undefined!13354 Bool) (index!52561 (_ BitVec 32)) (x!134237 (_ BitVec 32))) (Undefined!12542) (MissingVacant!12542 (index!52562 (_ BitVec 32))) )
))
(declare-fun lt!653199 () SeekEntryResult!12542)

(declare-fun j!87 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100116 (_ BitVec 32)) SeekEntryResult!12542)

(assert (=> b!1501637 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!653200 vacantAfter!10 (select (store (arr!48313 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) j!87) (array!100117 (store (arr!48313 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48864 a!2850)) mask!2661) lt!653199)))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-datatypes ((Unit!50192 0))(
  ( (Unit!50193) )
))
(declare-fun lt!653198 () Unit!50192)

(declare-fun lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 (array!100116 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50192)

(assert (=> b!1501637 (= lt!653198 (lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 a!2850 i!996 j!87 (bvadd #b00000000000000000000000000000001 x!647) lt!653200 vacantBefore!10 vacantAfter!10 mask!2661))))

(declare-fun b!1501638 () Bool)

(declare-fun res!1022786 () Bool)

(declare-fun e!840025 () Bool)

(assert (=> b!1501638 (=> (not res!1022786) (not e!840025))))

(assert (=> b!1501638 (= res!1022786 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48864 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48864 a!2850)) (= (select (arr!48313 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48313 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48864 a!2850))))))

(declare-fun b!1501639 () Bool)

(declare-fun res!1022791 () Bool)

(assert (=> b!1501639 (=> (not res!1022791) (not e!840025))))

(assert (=> b!1501639 (= res!1022791 (and (= (size!48864 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48864 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48864 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1501640 () Bool)

(declare-fun e!840023 () Bool)

(assert (=> b!1501640 (= e!840023 e!840024)))

(declare-fun res!1022795 () Bool)

(assert (=> b!1501640 (=> (not res!1022795) (not e!840024))))

(assert (=> b!1501640 (= res!1022795 (and (bvsge (bvadd #b00000000000000000000000000000001 x!647) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!647) #b01111111111111111111111111111110) (bvsge lt!653200 #b00000000000000000000000000000000) (bvslt lt!653200 (size!48864 a!2850))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1501640 (= lt!653200 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1501641 () Bool)

(declare-fun res!1022785 () Bool)

(assert (=> b!1501641 (=> (not res!1022785) (not e!840023))))

(assert (=> b!1501641 (= res!1022785 (not (= (select (arr!48313 a!2850) index!625) (select (arr!48313 a!2850) j!87))))))

(declare-fun b!1501642 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1501642 (= e!840022 (validKeyInArray!0 (select (store (arr!48313 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) j!87)))))

(declare-fun b!1501643 () Bool)

(assert (=> b!1501643 (= e!840025 e!840023)))

(declare-fun res!1022789 () Bool)

(assert (=> b!1501643 (=> (not res!1022789) (not e!840023))))

(assert (=> b!1501643 (= res!1022789 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48313 a!2850) j!87) a!2850 mask!2661) lt!653199))))

(assert (=> b!1501643 (= lt!653199 (Found!12542 j!87))))

(declare-fun b!1501644 () Bool)

(declare-fun res!1022790 () Bool)

(assert (=> b!1501644 (=> (not res!1022790) (not e!840025))))

(assert (=> b!1501644 (= res!1022790 (validKeyInArray!0 (select (arr!48313 a!2850) j!87)))))

(declare-fun b!1501646 () Bool)

(declare-fun res!1022796 () Bool)

(assert (=> b!1501646 (=> (not res!1022796) (not e!840025))))

(declare-datatypes ((List!34985 0))(
  ( (Nil!34982) (Cons!34981 (h!36379 (_ BitVec 64)) (t!49686 List!34985)) )
))
(declare-fun arrayNoDuplicates!0 (array!100116 (_ BitVec 32) List!34985) Bool)

(assert (=> b!1501646 (= res!1022796 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34982))))

(declare-fun res!1022788 () Bool)

(assert (=> start!127822 (=> (not res!1022788) (not e!840025))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127822 (= res!1022788 (validMask!0 mask!2661))))

(assert (=> start!127822 e!840025))

(assert (=> start!127822 true))

(declare-fun array_inv!37258 (array!100116) Bool)

(assert (=> start!127822 (array_inv!37258 a!2850)))

(declare-fun b!1501645 () Bool)

(declare-fun res!1022792 () Bool)

(assert (=> b!1501645 (=> (not res!1022792) (not e!840025))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100116 (_ BitVec 32)) Bool)

(assert (=> b!1501645 (= res!1022792 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1501647 () Bool)

(declare-fun res!1022787 () Bool)

(assert (=> b!1501647 (=> (not res!1022787) (not e!840024))))

(assert (=> b!1501647 (= res!1022787 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!653200 vacantBefore!10 (select (arr!48313 a!2850) j!87) a!2850 mask!2661) lt!653199))))

(declare-fun b!1501648 () Bool)

(declare-fun res!1022793 () Bool)

(assert (=> b!1501648 (=> (not res!1022793) (not e!840025))))

(assert (=> b!1501648 (= res!1022793 (validKeyInArray!0 (select (arr!48313 a!2850) i!996)))))

(assert (= (and start!127822 res!1022788) b!1501639))

(assert (= (and b!1501639 res!1022791) b!1501648))

(assert (= (and b!1501648 res!1022793) b!1501644))

(assert (= (and b!1501644 res!1022790) b!1501645))

(assert (= (and b!1501645 res!1022792) b!1501646))

(assert (= (and b!1501646 res!1022796) b!1501638))

(assert (= (and b!1501638 res!1022786) b!1501643))

(assert (= (and b!1501643 res!1022789) b!1501641))

(assert (= (and b!1501641 res!1022785) b!1501640))

(assert (= (and b!1501640 res!1022795) b!1501647))

(assert (= (and b!1501647 res!1022787) b!1501637))

(assert (= (and b!1501637 (not res!1022794)) b!1501642))

(declare-fun m!1384947 () Bool)

(assert (=> b!1501645 m!1384947))

(declare-fun m!1384949 () Bool)

(assert (=> b!1501640 m!1384949))

(declare-fun m!1384951 () Bool)

(assert (=> b!1501647 m!1384951))

(assert (=> b!1501647 m!1384951))

(declare-fun m!1384953 () Bool)

(assert (=> b!1501647 m!1384953))

(declare-fun m!1384955 () Bool)

(assert (=> b!1501638 m!1384955))

(declare-fun m!1384957 () Bool)

(assert (=> b!1501638 m!1384957))

(declare-fun m!1384959 () Bool)

(assert (=> b!1501638 m!1384959))

(assert (=> b!1501643 m!1384951))

(assert (=> b!1501643 m!1384951))

(declare-fun m!1384961 () Bool)

(assert (=> b!1501643 m!1384961))

(assert (=> b!1501642 m!1384957))

(declare-fun m!1384963 () Bool)

(assert (=> b!1501642 m!1384963))

(assert (=> b!1501642 m!1384963))

(declare-fun m!1384965 () Bool)

(assert (=> b!1501642 m!1384965))

(assert (=> b!1501637 m!1384957))

(assert (=> b!1501637 m!1384963))

(assert (=> b!1501637 m!1384963))

(declare-fun m!1384967 () Bool)

(assert (=> b!1501637 m!1384967))

(declare-fun m!1384969 () Bool)

(assert (=> b!1501637 m!1384969))

(declare-fun m!1384971 () Bool)

(assert (=> start!127822 m!1384971))

(declare-fun m!1384973 () Bool)

(assert (=> start!127822 m!1384973))

(declare-fun m!1384975 () Bool)

(assert (=> b!1501648 m!1384975))

(assert (=> b!1501648 m!1384975))

(declare-fun m!1384977 () Bool)

(assert (=> b!1501648 m!1384977))

(assert (=> b!1501644 m!1384951))

(assert (=> b!1501644 m!1384951))

(declare-fun m!1384979 () Bool)

(assert (=> b!1501644 m!1384979))

(declare-fun m!1384981 () Bool)

(assert (=> b!1501646 m!1384981))

(declare-fun m!1384983 () Bool)

(assert (=> b!1501641 m!1384983))

(assert (=> b!1501641 m!1384951))

(push 1)

