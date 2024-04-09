; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127756 () Bool)

(assert start!127756)

(declare-fun res!1021734 () Bool)

(declare-fun e!839659 () Bool)

(assert (=> start!127756 (=> (not res!1021734) (not e!839659))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127756 (= res!1021734 (validMask!0 mask!2661))))

(assert (=> start!127756 e!839659))

(assert (=> start!127756 true))

(declare-datatypes ((array!100050 0))(
  ( (array!100051 (arr!48280 (Array (_ BitVec 32) (_ BitVec 64))) (size!48831 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100050)

(declare-fun array_inv!37225 (array!100050) Bool)

(assert (=> start!127756 (array_inv!37225 a!2850)))

(declare-fun b!1500580 () Bool)

(declare-fun res!1021732 () Bool)

(assert (=> b!1500580 (=> (not res!1021732) (not e!839659))))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1500580 (= res!1021732 (validKeyInArray!0 (select (arr!48280 a!2850) i!996)))))

(declare-fun b!1500581 () Bool)

(declare-fun res!1021733 () Bool)

(assert (=> b!1500581 (=> (not res!1021733) (not e!839659))))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1500581 (= res!1021733 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48831 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48831 a!2850)) (= (select (arr!48280 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48280 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48831 a!2850))))))

(declare-fun b!1500582 () Bool)

(declare-fun res!1021736 () Bool)

(assert (=> b!1500582 (=> (not res!1021736) (not e!839659))))

(declare-fun j!87 () (_ BitVec 32))

(assert (=> b!1500582 (= res!1021736 (validKeyInArray!0 (select (arr!48280 a!2850) j!87)))))

(declare-fun b!1500583 () Bool)

(declare-fun res!1021729 () Bool)

(assert (=> b!1500583 (=> (not res!1021729) (not e!839659))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100050 (_ BitVec 32)) Bool)

(assert (=> b!1500583 (= res!1021729 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1500584 () Bool)

(declare-fun e!839658 () Bool)

(assert (=> b!1500584 (= e!839659 e!839658)))

(declare-fun res!1021735 () Bool)

(assert (=> b!1500584 (=> (not res!1021735) (not e!839658))))

(declare-fun lt!652936 () (_ BitVec 32))

(assert (=> b!1500584 (= res!1021735 (and (bvsge (bvadd #b00000000000000000000000000000001 x!647) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!647) #b01111111111111111111111111111110) (bvsge lt!652936 #b00000000000000000000000000000000) (bvslt lt!652936 (size!48831 a!2850))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1500584 (= lt!652936 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1500585 () Bool)

(declare-fun res!1021737 () Bool)

(assert (=> b!1500585 (=> (not res!1021737) (not e!839659))))

(assert (=> b!1500585 (= res!1021737 (not (= (select (arr!48280 a!2850) index!625) (select (arr!48280 a!2850) j!87))))))

(declare-fun b!1500586 () Bool)

(declare-fun res!1021728 () Bool)

(assert (=> b!1500586 (=> (not res!1021728) (not e!839659))))

(declare-datatypes ((SeekEntryResult!12509 0))(
  ( (MissingZero!12509 (index!52427 (_ BitVec 32))) (Found!12509 (index!52428 (_ BitVec 32))) (Intermediate!12509 (undefined!13321 Bool) (index!52429 (_ BitVec 32)) (x!134116 (_ BitVec 32))) (Undefined!12509) (MissingVacant!12509 (index!52430 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100050 (_ BitVec 32)) SeekEntryResult!12509)

(assert (=> b!1500586 (= res!1021728 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48280 a!2850) j!87) a!2850 mask!2661) (Found!12509 j!87)))))

(declare-fun b!1500587 () Bool)

(assert (=> b!1500587 (= e!839658 false)))

(declare-fun lt!652935 () SeekEntryResult!12509)

(assert (=> b!1500587 (= lt!652935 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!652936 vacantBefore!10 (select (arr!48280 a!2850) j!87) a!2850 mask!2661))))

(declare-fun b!1500588 () Bool)

(declare-fun res!1021731 () Bool)

(assert (=> b!1500588 (=> (not res!1021731) (not e!839659))))

(declare-datatypes ((List!34952 0))(
  ( (Nil!34949) (Cons!34948 (h!36346 (_ BitVec 64)) (t!49653 List!34952)) )
))
(declare-fun arrayNoDuplicates!0 (array!100050 (_ BitVec 32) List!34952) Bool)

(assert (=> b!1500588 (= res!1021731 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34949))))

(declare-fun b!1500589 () Bool)

(declare-fun res!1021730 () Bool)

(assert (=> b!1500589 (=> (not res!1021730) (not e!839659))))

(assert (=> b!1500589 (= res!1021730 (and (= (size!48831 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48831 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48831 a!2850)) (not (= i!996 j!87))))))

(assert (= (and start!127756 res!1021734) b!1500589))

(assert (= (and b!1500589 res!1021730) b!1500580))

(assert (= (and b!1500580 res!1021732) b!1500582))

(assert (= (and b!1500582 res!1021736) b!1500583))

(assert (= (and b!1500583 res!1021729) b!1500588))

(assert (= (and b!1500588 res!1021731) b!1500581))

(assert (= (and b!1500581 res!1021733) b!1500586))

(assert (= (and b!1500586 res!1021728) b!1500585))

(assert (= (and b!1500585 res!1021737) b!1500584))

(assert (= (and b!1500584 res!1021735) b!1500587))

(declare-fun m!1383831 () Bool)

(assert (=> b!1500585 m!1383831))

(declare-fun m!1383833 () Bool)

(assert (=> b!1500585 m!1383833))

(declare-fun m!1383835 () Bool)

(assert (=> b!1500583 m!1383835))

(declare-fun m!1383837 () Bool)

(assert (=> b!1500584 m!1383837))

(declare-fun m!1383839 () Bool)

(assert (=> b!1500580 m!1383839))

(assert (=> b!1500580 m!1383839))

(declare-fun m!1383841 () Bool)

(assert (=> b!1500580 m!1383841))

(declare-fun m!1383843 () Bool)

(assert (=> b!1500581 m!1383843))

(declare-fun m!1383845 () Bool)

(assert (=> b!1500581 m!1383845))

(declare-fun m!1383847 () Bool)

(assert (=> b!1500581 m!1383847))

(declare-fun m!1383849 () Bool)

(assert (=> start!127756 m!1383849))

(declare-fun m!1383851 () Bool)

(assert (=> start!127756 m!1383851))

(assert (=> b!1500582 m!1383833))

(assert (=> b!1500582 m!1383833))

(declare-fun m!1383853 () Bool)

(assert (=> b!1500582 m!1383853))

(assert (=> b!1500586 m!1383833))

(assert (=> b!1500586 m!1383833))

(declare-fun m!1383855 () Bool)

(assert (=> b!1500586 m!1383855))

(assert (=> b!1500587 m!1383833))

(assert (=> b!1500587 m!1383833))

(declare-fun m!1383857 () Bool)

(assert (=> b!1500587 m!1383857))

(declare-fun m!1383859 () Bool)

(assert (=> b!1500588 m!1383859))

(push 1)

