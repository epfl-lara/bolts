; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!127818 () Bool)

(assert start!127818)

(declare-fun b!1501569 () Bool)

(declare-fun res!1022723 () Bool)

(declare-fun e!839999 () Bool)

(assert (=> b!1501569 (=> (not res!1022723) (not e!839999))))

(declare-datatypes ((array!100112 0))(
  ( (array!100113 (arr!48311 (Array (_ BitVec 32) (_ BitVec 64))) (size!48862 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100112)

(declare-fun index!625 () (_ BitVec 32))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1501569 (= res!1022723 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48862 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48862 a!2850)) (= (select (arr!48311 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48311 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48862 a!2850))))))

(declare-fun b!1501570 () Bool)

(declare-fun res!1022727 () Bool)

(assert (=> b!1501570 (=> (not res!1022727) (not e!839999))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(assert (=> b!1501570 (= res!1022727 (and (= (size!48862 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48862 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48862 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1501571 () Bool)

(declare-fun res!1022724 () Bool)

(declare-fun e!839996 () Bool)

(assert (=> b!1501571 (=> (not res!1022724) (not e!839996))))

(assert (=> b!1501571 (= res!1022724 (not (= (select (arr!48311 a!2850) index!625) (select (arr!48311 a!2850) j!87))))))

(declare-fun b!1501572 () Bool)

(assert (=> b!1501572 (= e!839999 e!839996)))

(declare-fun res!1022718 () Bool)

(assert (=> b!1501572 (=> (not res!1022718) (not e!839996))))

(declare-datatypes ((SeekEntryResult!12540 0))(
  ( (MissingZero!12540 (index!52551 (_ BitVec 32))) (Found!12540 (index!52552 (_ BitVec 32))) (Intermediate!12540 (undefined!13352 Bool) (index!52553 (_ BitVec 32)) (x!134227 (_ BitVec 32))) (Undefined!12540) (MissingVacant!12540 (index!52554 (_ BitVec 32))) )
))
(declare-fun lt!653180 () SeekEntryResult!12540)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100112 (_ BitVec 32)) SeekEntryResult!12540)

(assert (=> b!1501572 (= res!1022718 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48311 a!2850) j!87) a!2850 mask!2661) lt!653180))))

(assert (=> b!1501572 (= lt!653180 (Found!12540 j!87))))

(declare-fun res!1022719 () Bool)

(assert (=> start!127818 (=> (not res!1022719) (not e!839999))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127818 (= res!1022719 (validMask!0 mask!2661))))

(assert (=> start!127818 e!839999))

(assert (=> start!127818 true))

(declare-fun array_inv!37256 (array!100112) Bool)

(assert (=> start!127818 (array_inv!37256 a!2850)))

(declare-fun b!1501573 () Bool)

(declare-fun res!1022717 () Bool)

(assert (=> b!1501573 (=> (not res!1022717) (not e!839999))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1501573 (= res!1022717 (validKeyInArray!0 (select (arr!48311 a!2850) j!87)))))

(declare-fun b!1501574 () Bool)

(declare-fun res!1022720 () Bool)

(assert (=> b!1501574 (=> (not res!1022720) (not e!839999))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100112 (_ BitVec 32)) Bool)

(assert (=> b!1501574 (= res!1022720 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1501575 () Bool)

(declare-fun e!839998 () Bool)

(assert (=> b!1501575 (= e!839996 e!839998)))

(declare-fun res!1022725 () Bool)

(assert (=> b!1501575 (=> (not res!1022725) (not e!839998))))

(declare-fun lt!653181 () (_ BitVec 32))

(assert (=> b!1501575 (= res!1022725 (and (bvsge (bvadd #b00000000000000000000000000000001 x!647) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!647) #b01111111111111111111111111111110) (bvsge lt!653181 #b00000000000000000000000000000000) (bvslt lt!653181 (size!48862 a!2850))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1501575 (= lt!653181 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1501576 () Bool)

(assert (=> b!1501576 (= e!839998 (not true))))

(assert (=> b!1501576 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!653181 vacantAfter!10 (select (store (arr!48311 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) j!87) (array!100113 (store (arr!48311 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48862 a!2850)) mask!2661) lt!653180)))

(declare-datatypes ((Unit!50188 0))(
  ( (Unit!50189) )
))
(declare-fun lt!653182 () Unit!50188)

(declare-fun lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 (array!100112 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50188)

(assert (=> b!1501576 (= lt!653182 (lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 a!2850 i!996 j!87 (bvadd #b00000000000000000000000000000001 x!647) lt!653181 vacantBefore!10 vacantAfter!10 mask!2661))))

(declare-fun b!1501577 () Bool)

(declare-fun res!1022722 () Bool)

(assert (=> b!1501577 (=> (not res!1022722) (not e!839999))))

(declare-datatypes ((List!34983 0))(
  ( (Nil!34980) (Cons!34979 (h!36377 (_ BitVec 64)) (t!49684 List!34983)) )
))
(declare-fun arrayNoDuplicates!0 (array!100112 (_ BitVec 32) List!34983) Bool)

(assert (=> b!1501577 (= res!1022722 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34980))))

(declare-fun b!1501578 () Bool)

(declare-fun res!1022726 () Bool)

(assert (=> b!1501578 (=> (not res!1022726) (not e!839999))))

(assert (=> b!1501578 (= res!1022726 (validKeyInArray!0 (select (arr!48311 a!2850) i!996)))))

(declare-fun b!1501579 () Bool)

(declare-fun res!1022721 () Bool)

(assert (=> b!1501579 (=> (not res!1022721) (not e!839998))))

(assert (=> b!1501579 (= res!1022721 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!653181 vacantBefore!10 (select (arr!48311 a!2850) j!87) a!2850 mask!2661) lt!653180))))

(assert (= (and start!127818 res!1022719) b!1501570))

(assert (= (and b!1501570 res!1022727) b!1501578))

(assert (= (and b!1501578 res!1022726) b!1501573))

(assert (= (and b!1501573 res!1022717) b!1501574))

(assert (= (and b!1501574 res!1022720) b!1501577))

(assert (= (and b!1501577 res!1022722) b!1501569))

(assert (= (and b!1501569 res!1022723) b!1501572))

(assert (= (and b!1501572 res!1022718) b!1501571))

(assert (= (and b!1501571 res!1022724) b!1501575))

(assert (= (and b!1501575 res!1022725) b!1501579))

(assert (= (and b!1501579 res!1022721) b!1501576))

(declare-fun m!1384875 () Bool)

(assert (=> b!1501576 m!1384875))

(declare-fun m!1384877 () Bool)

(assert (=> b!1501576 m!1384877))

(assert (=> b!1501576 m!1384877))

(declare-fun m!1384879 () Bool)

(assert (=> b!1501576 m!1384879))

(declare-fun m!1384881 () Bool)

(assert (=> b!1501576 m!1384881))

(declare-fun m!1384883 () Bool)

(assert (=> b!1501571 m!1384883))

(declare-fun m!1384885 () Bool)

(assert (=> b!1501571 m!1384885))

(declare-fun m!1384887 () Bool)

(assert (=> b!1501575 m!1384887))

(declare-fun m!1384889 () Bool)

(assert (=> b!1501578 m!1384889))

(assert (=> b!1501578 m!1384889))

(declare-fun m!1384891 () Bool)

(assert (=> b!1501578 m!1384891))

(assert (=> b!1501572 m!1384885))

(assert (=> b!1501572 m!1384885))

(declare-fun m!1384893 () Bool)

(assert (=> b!1501572 m!1384893))

(declare-fun m!1384895 () Bool)

(assert (=> start!127818 m!1384895))

(declare-fun m!1384897 () Bool)

(assert (=> start!127818 m!1384897))

(declare-fun m!1384899 () Bool)

(assert (=> b!1501569 m!1384899))

(assert (=> b!1501569 m!1384875))

(declare-fun m!1384901 () Bool)

(assert (=> b!1501569 m!1384901))

(assert (=> b!1501573 m!1384885))

(assert (=> b!1501573 m!1384885))

(declare-fun m!1384903 () Bool)

(assert (=> b!1501573 m!1384903))

(declare-fun m!1384905 () Bool)

(assert (=> b!1501577 m!1384905))

(assert (=> b!1501579 m!1384885))

(assert (=> b!1501579 m!1384885))

(declare-fun m!1384907 () Bool)

(assert (=> b!1501579 m!1384907))

(declare-fun m!1384909 () Bool)

(assert (=> b!1501574 m!1384909))

(check-sat (not b!1501578) (not b!1501572) (not b!1501577) (not b!1501574) (not b!1501576) (not b!1501579) (not start!127818) (not b!1501573) (not b!1501575))
(check-sat)
