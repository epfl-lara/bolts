; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!127824 () Bool)

(assert start!127824)

(declare-fun b!1501673 () Bool)

(declare-fun res!1022829 () Bool)

(declare-fun e!840037 () Bool)

(assert (=> b!1501673 (=> (not res!1022829) (not e!840037))))

(declare-datatypes ((array!100118 0))(
  ( (array!100119 (arr!48314 (Array (_ BitVec 32) (_ BitVec 64))) (size!48865 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100118)

(declare-fun index!625 () (_ BitVec 32))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1501673 (= res!1022829 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48865 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48865 a!2850)) (= (select (arr!48314 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48314 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48865 a!2850))))))

(declare-fun res!1022828 () Bool)

(assert (=> start!127824 (=> (not res!1022828) (not e!840037))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127824 (= res!1022828 (validMask!0 mask!2661))))

(assert (=> start!127824 e!840037))

(assert (=> start!127824 true))

(declare-fun array_inv!37259 (array!100118) Bool)

(assert (=> start!127824 (array_inv!37259 a!2850)))

(declare-fun b!1501674 () Bool)

(declare-fun res!1022827 () Bool)

(declare-fun e!840040 () Bool)

(assert (=> b!1501674 (=> (not res!1022827) (not e!840040))))

(declare-fun j!87 () (_ BitVec 32))

(assert (=> b!1501674 (= res!1022827 (not (= (select (arr!48314 a!2850) index!625) (select (arr!48314 a!2850) j!87))))))

(declare-fun b!1501675 () Bool)

(declare-fun res!1022824 () Bool)

(assert (=> b!1501675 (=> (not res!1022824) (not e!840037))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1501675 (= res!1022824 (validKeyInArray!0 (select (arr!48314 a!2850) i!996)))))

(declare-fun b!1501676 () Bool)

(declare-fun res!1022831 () Bool)

(declare-fun e!840039 () Bool)

(assert (=> b!1501676 (=> (not res!1022831) (not e!840039))))

(declare-datatypes ((SeekEntryResult!12543 0))(
  ( (MissingZero!12543 (index!52563 (_ BitVec 32))) (Found!12543 (index!52564 (_ BitVec 32))) (Intermediate!12543 (undefined!13355 Bool) (index!52565 (_ BitVec 32)) (x!134238 (_ BitVec 32))) (Undefined!12543) (MissingVacant!12543 (index!52566 (_ BitVec 32))) )
))
(declare-fun lt!653209 () SeekEntryResult!12543)

(declare-fun lt!653208 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100118 (_ BitVec 32)) SeekEntryResult!12543)

(assert (=> b!1501676 (= res!1022831 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!653208 vacantBefore!10 (select (arr!48314 a!2850) j!87) a!2850 mask!2661) lt!653209))))

(declare-fun b!1501677 () Bool)

(declare-fun e!840041 () Bool)

(assert (=> b!1501677 (= e!840039 (not e!840041))))

(declare-fun res!1022823 () Bool)

(assert (=> b!1501677 (=> res!1022823 e!840041)))

(assert (=> b!1501677 (= res!1022823 (or (bvslt mask!2661 #b00000000000000000000000000000000) (bvsge index!625 (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge vacantAfter!10 (bvadd #b00000000000000000000000000000001 mask!2661))))))

(assert (=> b!1501677 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!653208 vacantAfter!10 (select (store (arr!48314 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) j!87) (array!100119 (store (arr!48314 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48865 a!2850)) mask!2661) lt!653209)))

(declare-datatypes ((Unit!50194 0))(
  ( (Unit!50195) )
))
(declare-fun lt!653207 () Unit!50194)

(declare-fun lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 (array!100118 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50194)

(assert (=> b!1501677 (= lt!653207 (lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 a!2850 i!996 j!87 (bvadd #b00000000000000000000000000000001 x!647) lt!653208 vacantBefore!10 vacantAfter!10 mask!2661))))

(declare-fun b!1501678 () Bool)

(assert (=> b!1501678 (= e!840037 e!840040)))

(declare-fun res!1022822 () Bool)

(assert (=> b!1501678 (=> (not res!1022822) (not e!840040))))

(assert (=> b!1501678 (= res!1022822 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48314 a!2850) j!87) a!2850 mask!2661) lt!653209))))

(assert (=> b!1501678 (= lt!653209 (Found!12543 j!87))))

(declare-fun b!1501679 () Bool)

(declare-fun res!1022821 () Bool)

(assert (=> b!1501679 (=> (not res!1022821) (not e!840037))))

(assert (=> b!1501679 (= res!1022821 (and (= (size!48865 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48865 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48865 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1501680 () Bool)

(declare-fun res!1022832 () Bool)

(assert (=> b!1501680 (=> (not res!1022832) (not e!840037))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100118 (_ BitVec 32)) Bool)

(assert (=> b!1501680 (= res!1022832 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1501681 () Bool)

(assert (=> b!1501681 (= e!840040 e!840039)))

(declare-fun res!1022830 () Bool)

(assert (=> b!1501681 (=> (not res!1022830) (not e!840039))))

(assert (=> b!1501681 (= res!1022830 (and (bvsge (bvadd #b00000000000000000000000000000001 x!647) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!647) #b01111111111111111111111111111110) (bvsge lt!653208 #b00000000000000000000000000000000) (bvslt lt!653208 (size!48865 a!2850))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1501681 (= lt!653208 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1501682 () Bool)

(declare-fun res!1022825 () Bool)

(assert (=> b!1501682 (=> (not res!1022825) (not e!840037))))

(declare-datatypes ((List!34986 0))(
  ( (Nil!34983) (Cons!34982 (h!36380 (_ BitVec 64)) (t!49687 List!34986)) )
))
(declare-fun arrayNoDuplicates!0 (array!100118 (_ BitVec 32) List!34986) Bool)

(assert (=> b!1501682 (= res!1022825 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34983))))

(declare-fun b!1501683 () Bool)

(assert (=> b!1501683 (= e!840041 (validKeyInArray!0 (select (store (arr!48314 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) j!87)))))

(declare-fun b!1501684 () Bool)

(declare-fun res!1022826 () Bool)

(assert (=> b!1501684 (=> (not res!1022826) (not e!840037))))

(assert (=> b!1501684 (= res!1022826 (validKeyInArray!0 (select (arr!48314 a!2850) j!87)))))

(assert (= (and start!127824 res!1022828) b!1501679))

(assert (= (and b!1501679 res!1022821) b!1501675))

(assert (= (and b!1501675 res!1022824) b!1501684))

(assert (= (and b!1501684 res!1022826) b!1501680))

(assert (= (and b!1501680 res!1022832) b!1501682))

(assert (= (and b!1501682 res!1022825) b!1501673))

(assert (= (and b!1501673 res!1022829) b!1501678))

(assert (= (and b!1501678 res!1022822) b!1501674))

(assert (= (and b!1501674 res!1022827) b!1501681))

(assert (= (and b!1501681 res!1022830) b!1501676))

(assert (= (and b!1501676 res!1022831) b!1501677))

(assert (= (and b!1501677 (not res!1022823)) b!1501683))

(declare-fun m!1384985 () Bool)

(assert (=> b!1501682 m!1384985))

(declare-fun m!1384987 () Bool)

(assert (=> b!1501681 m!1384987))

(declare-fun m!1384989 () Bool)

(assert (=> b!1501675 m!1384989))

(assert (=> b!1501675 m!1384989))

(declare-fun m!1384991 () Bool)

(assert (=> b!1501675 m!1384991))

(declare-fun m!1384993 () Bool)

(assert (=> b!1501677 m!1384993))

(declare-fun m!1384995 () Bool)

(assert (=> b!1501677 m!1384995))

(assert (=> b!1501677 m!1384995))

(declare-fun m!1384997 () Bool)

(assert (=> b!1501677 m!1384997))

(declare-fun m!1384999 () Bool)

(assert (=> b!1501677 m!1384999))

(declare-fun m!1385001 () Bool)

(assert (=> b!1501684 m!1385001))

(assert (=> b!1501684 m!1385001))

(declare-fun m!1385003 () Bool)

(assert (=> b!1501684 m!1385003))

(assert (=> b!1501683 m!1384993))

(assert (=> b!1501683 m!1384995))

(assert (=> b!1501683 m!1384995))

(declare-fun m!1385005 () Bool)

(assert (=> b!1501683 m!1385005))

(declare-fun m!1385007 () Bool)

(assert (=> start!127824 m!1385007))

(declare-fun m!1385009 () Bool)

(assert (=> start!127824 m!1385009))

(declare-fun m!1385011 () Bool)

(assert (=> b!1501680 m!1385011))

(declare-fun m!1385013 () Bool)

(assert (=> b!1501673 m!1385013))

(assert (=> b!1501673 m!1384993))

(declare-fun m!1385015 () Bool)

(assert (=> b!1501673 m!1385015))

(assert (=> b!1501676 m!1385001))

(assert (=> b!1501676 m!1385001))

(declare-fun m!1385017 () Bool)

(assert (=> b!1501676 m!1385017))

(assert (=> b!1501678 m!1385001))

(assert (=> b!1501678 m!1385001))

(declare-fun m!1385019 () Bool)

(assert (=> b!1501678 m!1385019))

(declare-fun m!1385021 () Bool)

(assert (=> b!1501674 m!1385021))

(assert (=> b!1501674 m!1385001))

(check-sat (not b!1501682) (not b!1501677) (not b!1501683) (not b!1501684) (not b!1501681) (not b!1501678) (not b!1501680) (not start!127824) (not b!1501675) (not b!1501676))
(check-sat)
