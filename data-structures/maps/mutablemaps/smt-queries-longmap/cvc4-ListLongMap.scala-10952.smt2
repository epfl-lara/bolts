; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128222 () Bool)

(assert start!128222)

(declare-fun b!1504878 () Bool)

(declare-fun res!1025544 () Bool)

(declare-fun e!841181 () Bool)

(assert (=> b!1504878 (=> (not res!1025544) (not e!841181))))

(declare-datatypes ((array!100333 0))(
  ( (array!100334 (arr!48414 (Array (_ BitVec 32) (_ BitVec 64))) (size!48965 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100333)

(declare-fun i!996 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1504878 (= res!1025544 (validKeyInArray!0 (select (arr!48414 a!2850) i!996)))))

(declare-fun b!1504879 () Bool)

(declare-fun e!841179 () Bool)

(assert (=> b!1504879 (= e!841181 e!841179)))

(declare-fun res!1025545 () Bool)

(assert (=> b!1504879 (=> (not res!1025545) (not e!841179))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12631 0))(
  ( (MissingZero!12631 (index!52915 (_ BitVec 32))) (Found!12631 (index!52916 (_ BitVec 32))) (Intermediate!12631 (undefined!13443 Bool) (index!52917 (_ BitVec 32)) (x!134614 (_ BitVec 32))) (Undefined!12631) (MissingVacant!12631 (index!52918 (_ BitVec 32))) )
))
(declare-fun lt!653804 () SeekEntryResult!12631)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100333 (_ BitVec 32)) SeekEntryResult!12631)

(assert (=> b!1504879 (= res!1025545 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48414 a!2850) j!87) a!2850 mask!2661) lt!653804))))

(assert (=> b!1504879 (= lt!653804 (Found!12631 j!87))))

(declare-fun b!1504881 () Bool)

(declare-fun res!1025549 () Bool)

(assert (=> b!1504881 (=> (not res!1025549) (not e!841181))))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1504881 (= res!1025549 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48965 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48965 a!2850)) (= (select (arr!48414 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48414 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48965 a!2850))))))

(declare-fun b!1504882 () Bool)

(declare-fun res!1025550 () Bool)

(assert (=> b!1504882 (=> (not res!1025550) (not e!841181))))

(assert (=> b!1504882 (= res!1025550 (validKeyInArray!0 (select (arr!48414 a!2850) j!87)))))

(declare-fun b!1504883 () Bool)

(declare-fun res!1025543 () Bool)

(assert (=> b!1504883 (=> (not res!1025543) (not e!841179))))

(assert (=> b!1504883 (= res!1025543 (not (= (select (arr!48414 a!2850) index!625) (select (arr!48414 a!2850) j!87))))))

(declare-fun b!1504884 () Bool)

(declare-fun res!1025548 () Bool)

(assert (=> b!1504884 (=> (not res!1025548) (not e!841181))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100333 (_ BitVec 32)) Bool)

(assert (=> b!1504884 (= res!1025548 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1504885 () Bool)

(declare-fun res!1025542 () Bool)

(declare-fun e!841178 () Bool)

(assert (=> b!1504885 (=> (not res!1025542) (not e!841178))))

(declare-fun lt!653805 () (_ BitVec 32))

(assert (=> b!1504885 (= res!1025542 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!653805 vacantBefore!10 (select (arr!48414 a!2850) j!87) a!2850 mask!2661) lt!653804))))

(declare-fun b!1504886 () Bool)

(assert (=> b!1504886 (= e!841179 e!841178)))

(declare-fun res!1025547 () Bool)

(assert (=> b!1504886 (=> (not res!1025547) (not e!841178))))

(assert (=> b!1504886 (= res!1025547 (and (bvsge (bvadd #b00000000000000000000000000000001 x!647) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!647) #b01111111111111111111111111111110) (bvsge lt!653805 #b00000000000000000000000000000000) (bvslt lt!653805 (size!48965 a!2850))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1504886 (= lt!653805 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1504887 () Bool)

(assert (=> b!1504887 (= e!841178 (not true))))

(assert (=> b!1504887 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!653805 vacantAfter!10 (select (store (arr!48414 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) j!87) (array!100334 (store (arr!48414 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48965 a!2850)) mask!2661) lt!653804)))

(declare-datatypes ((Unit!50224 0))(
  ( (Unit!50225) )
))
(declare-fun lt!653806 () Unit!50224)

(declare-fun lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 (array!100333 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50224)

(assert (=> b!1504887 (= lt!653806 (lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 a!2850 i!996 j!87 (bvadd #b00000000000000000000000000000001 x!647) lt!653805 vacantBefore!10 vacantAfter!10 mask!2661))))

(declare-fun b!1504888 () Bool)

(declare-fun res!1025546 () Bool)

(assert (=> b!1504888 (=> (not res!1025546) (not e!841181))))

(declare-datatypes ((List!35086 0))(
  ( (Nil!35083) (Cons!35082 (h!36480 (_ BitVec 64)) (t!49787 List!35086)) )
))
(declare-fun arrayNoDuplicates!0 (array!100333 (_ BitVec 32) List!35086) Bool)

(assert (=> b!1504888 (= res!1025546 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!35083))))

(declare-fun res!1025540 () Bool)

(assert (=> start!128222 (=> (not res!1025540) (not e!841181))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128222 (= res!1025540 (validMask!0 mask!2661))))

(assert (=> start!128222 e!841181))

(assert (=> start!128222 true))

(declare-fun array_inv!37359 (array!100333) Bool)

(assert (=> start!128222 (array_inv!37359 a!2850)))

(declare-fun b!1504880 () Bool)

(declare-fun res!1025541 () Bool)

(assert (=> b!1504880 (=> (not res!1025541) (not e!841181))))

(assert (=> b!1504880 (= res!1025541 (and (= (size!48965 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48965 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48965 a!2850)) (not (= i!996 j!87))))))

(assert (= (and start!128222 res!1025540) b!1504880))

(assert (= (and b!1504880 res!1025541) b!1504878))

(assert (= (and b!1504878 res!1025544) b!1504882))

(assert (= (and b!1504882 res!1025550) b!1504884))

(assert (= (and b!1504884 res!1025548) b!1504888))

(assert (= (and b!1504888 res!1025546) b!1504881))

(assert (= (and b!1504881 res!1025549) b!1504879))

(assert (= (and b!1504879 res!1025545) b!1504883))

(assert (= (and b!1504883 res!1025543) b!1504886))

(assert (= (and b!1504886 res!1025547) b!1504885))

(assert (= (and b!1504885 res!1025542) b!1504887))

(declare-fun m!1388031 () Bool)

(assert (=> b!1504884 m!1388031))

(declare-fun m!1388033 () Bool)

(assert (=> b!1504881 m!1388033))

(declare-fun m!1388035 () Bool)

(assert (=> b!1504881 m!1388035))

(declare-fun m!1388037 () Bool)

(assert (=> b!1504881 m!1388037))

(declare-fun m!1388039 () Bool)

(assert (=> b!1504886 m!1388039))

(declare-fun m!1388041 () Bool)

(assert (=> b!1504883 m!1388041))

(declare-fun m!1388043 () Bool)

(assert (=> b!1504883 m!1388043))

(assert (=> b!1504885 m!1388043))

(assert (=> b!1504885 m!1388043))

(declare-fun m!1388045 () Bool)

(assert (=> b!1504885 m!1388045))

(declare-fun m!1388047 () Bool)

(assert (=> b!1504878 m!1388047))

(assert (=> b!1504878 m!1388047))

(declare-fun m!1388049 () Bool)

(assert (=> b!1504878 m!1388049))

(declare-fun m!1388051 () Bool)

(assert (=> start!128222 m!1388051))

(declare-fun m!1388053 () Bool)

(assert (=> start!128222 m!1388053))

(assert (=> b!1504879 m!1388043))

(assert (=> b!1504879 m!1388043))

(declare-fun m!1388055 () Bool)

(assert (=> b!1504879 m!1388055))

(assert (=> b!1504887 m!1388035))

(declare-fun m!1388057 () Bool)

(assert (=> b!1504887 m!1388057))

(assert (=> b!1504887 m!1388057))

(declare-fun m!1388059 () Bool)

(assert (=> b!1504887 m!1388059))

(declare-fun m!1388061 () Bool)

(assert (=> b!1504887 m!1388061))

(declare-fun m!1388063 () Bool)

(assert (=> b!1504888 m!1388063))

(assert (=> b!1504882 m!1388043))

(assert (=> b!1504882 m!1388043))

(declare-fun m!1388065 () Bool)

(assert (=> b!1504882 m!1388065))

(push 1)

(assert (not b!1504884))

(assert (not b!1504886))

(assert (not b!1504882))

(assert (not b!1504879))

