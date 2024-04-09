; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128218 () Bool)

(assert start!128218)

(declare-fun b!1504812 () Bool)

(declare-fun e!841156 () Bool)

(assert (=> b!1504812 (= e!841156 (not true))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-datatypes ((array!100329 0))(
  ( (array!100330 (arr!48412 (Array (_ BitVec 32) (_ BitVec 64))) (size!48963 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100329)

(declare-fun lt!653787 () (_ BitVec 32))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12629 0))(
  ( (MissingZero!12629 (index!52907 (_ BitVec 32))) (Found!12629 (index!52908 (_ BitVec 32))) (Intermediate!12629 (undefined!13441 Bool) (index!52909 (_ BitVec 32)) (x!134612 (_ BitVec 32))) (Undefined!12629) (MissingVacant!12629 (index!52910 (_ BitVec 32))) )
))
(declare-fun lt!653788 () SeekEntryResult!12629)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100329 (_ BitVec 32)) SeekEntryResult!12629)

(assert (=> b!1504812 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!653787 vacantAfter!10 (select (store (arr!48412 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) j!87) (array!100330 (store (arr!48412 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48963 a!2850)) mask!2661) lt!653788)))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-datatypes ((Unit!50220 0))(
  ( (Unit!50221) )
))
(declare-fun lt!653786 () Unit!50220)

(declare-fun lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 (array!100329 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50220)

(assert (=> b!1504812 (= lt!653786 (lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 a!2850 i!996 j!87 (bvadd #b00000000000000000000000000000001 x!647) lt!653787 vacantBefore!10 vacantAfter!10 mask!2661))))

(declare-fun b!1504813 () Bool)

(declare-fun e!841157 () Bool)

(assert (=> b!1504813 (= e!841157 e!841156)))

(declare-fun res!1025478 () Bool)

(assert (=> b!1504813 (=> (not res!1025478) (not e!841156))))

(assert (=> b!1504813 (= res!1025478 (and (bvsge (bvadd #b00000000000000000000000000000001 x!647) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!647) #b01111111111111111111111111111110) (bvsge lt!653787 #b00000000000000000000000000000000) (bvslt lt!653787 (size!48963 a!2850))))))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1504813 (= lt!653787 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1504814 () Bool)

(declare-fun res!1025482 () Bool)

(assert (=> b!1504814 (=> (not res!1025482) (not e!841157))))

(assert (=> b!1504814 (= res!1025482 (not (= (select (arr!48412 a!2850) index!625) (select (arr!48412 a!2850) j!87))))))

(declare-fun b!1504815 () Bool)

(declare-fun res!1025481 () Bool)

(declare-fun e!841155 () Bool)

(assert (=> b!1504815 (=> (not res!1025481) (not e!841155))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1504815 (= res!1025481 (validKeyInArray!0 (select (arr!48412 a!2850) i!996)))))

(declare-fun b!1504816 () Bool)

(declare-fun res!1025483 () Bool)

(assert (=> b!1504816 (=> (not res!1025483) (not e!841155))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100329 (_ BitVec 32)) Bool)

(assert (=> b!1504816 (= res!1025483 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1504817 () Bool)

(declare-fun res!1025479 () Bool)

(assert (=> b!1504817 (=> (not res!1025479) (not e!841155))))

(assert (=> b!1504817 (= res!1025479 (and (= (size!48963 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48963 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48963 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1504819 () Bool)

(declare-fun res!1025475 () Bool)

(assert (=> b!1504819 (=> (not res!1025475) (not e!841155))))

(assert (=> b!1504819 (= res!1025475 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48963 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48963 a!2850)) (= (select (arr!48412 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48412 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48963 a!2850))))))

(declare-fun b!1504820 () Bool)

(declare-fun res!1025476 () Bool)

(assert (=> b!1504820 (=> (not res!1025476) (not e!841156))))

(assert (=> b!1504820 (= res!1025476 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!653787 vacantBefore!10 (select (arr!48412 a!2850) j!87) a!2850 mask!2661) lt!653788))))

(declare-fun b!1504821 () Bool)

(declare-fun res!1025480 () Bool)

(assert (=> b!1504821 (=> (not res!1025480) (not e!841155))))

(assert (=> b!1504821 (= res!1025480 (validKeyInArray!0 (select (arr!48412 a!2850) j!87)))))

(declare-fun b!1504822 () Bool)

(assert (=> b!1504822 (= e!841155 e!841157)))

(declare-fun res!1025474 () Bool)

(assert (=> b!1504822 (=> (not res!1025474) (not e!841157))))

(assert (=> b!1504822 (= res!1025474 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48412 a!2850) j!87) a!2850 mask!2661) lt!653788))))

(assert (=> b!1504822 (= lt!653788 (Found!12629 j!87))))

(declare-fun b!1504818 () Bool)

(declare-fun res!1025477 () Bool)

(assert (=> b!1504818 (=> (not res!1025477) (not e!841155))))

(declare-datatypes ((List!35084 0))(
  ( (Nil!35081) (Cons!35080 (h!36478 (_ BitVec 64)) (t!49785 List!35084)) )
))
(declare-fun arrayNoDuplicates!0 (array!100329 (_ BitVec 32) List!35084) Bool)

(assert (=> b!1504818 (= res!1025477 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!35081))))

(declare-fun res!1025484 () Bool)

(assert (=> start!128218 (=> (not res!1025484) (not e!841155))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128218 (= res!1025484 (validMask!0 mask!2661))))

(assert (=> start!128218 e!841155))

(assert (=> start!128218 true))

(declare-fun array_inv!37357 (array!100329) Bool)

(assert (=> start!128218 (array_inv!37357 a!2850)))

(assert (= (and start!128218 res!1025484) b!1504817))

(assert (= (and b!1504817 res!1025479) b!1504815))

(assert (= (and b!1504815 res!1025481) b!1504821))

(assert (= (and b!1504821 res!1025480) b!1504816))

(assert (= (and b!1504816 res!1025483) b!1504818))

(assert (= (and b!1504818 res!1025477) b!1504819))

(assert (= (and b!1504819 res!1025475) b!1504822))

(assert (= (and b!1504822 res!1025474) b!1504814))

(assert (= (and b!1504814 res!1025482) b!1504813))

(assert (= (and b!1504813 res!1025478) b!1504820))

(assert (= (and b!1504820 res!1025476) b!1504812))

(declare-fun m!1387959 () Bool)

(assert (=> b!1504820 m!1387959))

(assert (=> b!1504820 m!1387959))

(declare-fun m!1387961 () Bool)

(assert (=> b!1504820 m!1387961))

(declare-fun m!1387963 () Bool)

(assert (=> b!1504819 m!1387963))

(declare-fun m!1387965 () Bool)

(assert (=> b!1504819 m!1387965))

(declare-fun m!1387967 () Bool)

(assert (=> b!1504819 m!1387967))

(assert (=> b!1504821 m!1387959))

(assert (=> b!1504821 m!1387959))

(declare-fun m!1387969 () Bool)

(assert (=> b!1504821 m!1387969))

(declare-fun m!1387971 () Bool)

(assert (=> start!128218 m!1387971))

(declare-fun m!1387973 () Bool)

(assert (=> start!128218 m!1387973))

(declare-fun m!1387975 () Bool)

(assert (=> b!1504818 m!1387975))

(declare-fun m!1387977 () Bool)

(assert (=> b!1504814 m!1387977))

(assert (=> b!1504814 m!1387959))

(assert (=> b!1504822 m!1387959))

(assert (=> b!1504822 m!1387959))

(declare-fun m!1387979 () Bool)

(assert (=> b!1504822 m!1387979))

(declare-fun m!1387981 () Bool)

(assert (=> b!1504816 m!1387981))

(declare-fun m!1387983 () Bool)

(assert (=> b!1504813 m!1387983))

(declare-fun m!1387985 () Bool)

(assert (=> b!1504815 m!1387985))

(assert (=> b!1504815 m!1387985))

(declare-fun m!1387987 () Bool)

(assert (=> b!1504815 m!1387987))

(assert (=> b!1504812 m!1387965))

(declare-fun m!1387989 () Bool)

(assert (=> b!1504812 m!1387989))

(assert (=> b!1504812 m!1387989))

(declare-fun m!1387991 () Bool)

(assert (=> b!1504812 m!1387991))

(declare-fun m!1387993 () Bool)

(assert (=> b!1504812 m!1387993))

(push 1)

