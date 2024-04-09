; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!127704 () Bool)

(assert start!127704)

(declare-fun b!1499800 () Bool)

(declare-fun res!1020953 () Bool)

(declare-fun e!839426 () Bool)

(assert (=> b!1499800 (=> (not res!1020953) (not e!839426))))

(declare-datatypes ((array!99998 0))(
  ( (array!99999 (arr!48254 (Array (_ BitVec 32) (_ BitVec 64))) (size!48805 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!99998)

(declare-fun j!87 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1499800 (= res!1020953 (validKeyInArray!0 (select (arr!48254 a!2850) j!87)))))

(declare-fun b!1499801 () Bool)

(declare-fun res!1020950 () Bool)

(assert (=> b!1499801 (=> (not res!1020950) (not e!839426))))

(declare-fun index!625 () (_ BitVec 32))

(assert (=> b!1499801 (= res!1020950 (not (= (select (arr!48254 a!2850) index!625) (select (arr!48254 a!2850) j!87))))))

(declare-fun b!1499803 () Bool)

(declare-fun res!1020954 () Bool)

(assert (=> b!1499803 (=> (not res!1020954) (not e!839426))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12483 0))(
  ( (MissingZero!12483 (index!52323 (_ BitVec 32))) (Found!12483 (index!52324 (_ BitVec 32))) (Intermediate!12483 (undefined!13295 Bool) (index!52325 (_ BitVec 32)) (x!134018 (_ BitVec 32))) (Undefined!12483) (MissingVacant!12483 (index!52326 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99998 (_ BitVec 32)) SeekEntryResult!12483)

(assert (=> b!1499803 (= res!1020954 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48254 a!2850) j!87) a!2850 mask!2661) (Found!12483 j!87)))))

(declare-fun b!1499804 () Bool)

(declare-fun e!839425 () Bool)

(assert (=> b!1499804 (= e!839426 e!839425)))

(declare-fun res!1020956 () Bool)

(assert (=> b!1499804 (=> (not res!1020956) (not e!839425))))

(declare-fun lt!652779 () (_ BitVec 32))

(assert (=> b!1499804 (= res!1020956 (and (bvsge (bvadd #b00000000000000000000000000000001 x!647) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!647) #b01111111111111111111111111111110) (bvsge lt!652779 #b00000000000000000000000000000000) (bvslt lt!652779 (size!48805 a!2850))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1499804 (= lt!652779 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1499805 () Bool)

(declare-fun res!1020949 () Bool)

(assert (=> b!1499805 (=> (not res!1020949) (not e!839426))))

(declare-fun i!996 () (_ BitVec 32))

(assert (=> b!1499805 (= res!1020949 (and (= (size!48805 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48805 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48805 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1499806 () Bool)

(declare-fun res!1020948 () Bool)

(assert (=> b!1499806 (=> (not res!1020948) (not e!839426))))

(assert (=> b!1499806 (= res!1020948 (validKeyInArray!0 (select (arr!48254 a!2850) i!996)))))

(declare-fun b!1499807 () Bool)

(declare-fun res!1020957 () Bool)

(assert (=> b!1499807 (=> (not res!1020957) (not e!839426))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99998 (_ BitVec 32)) Bool)

(assert (=> b!1499807 (= res!1020957 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1499808 () Bool)

(declare-fun res!1020952 () Bool)

(assert (=> b!1499808 (=> (not res!1020952) (not e!839426))))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1499808 (= res!1020952 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48805 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48805 a!2850)) (= (select (arr!48254 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48254 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48805 a!2850))))))

(declare-fun b!1499809 () Bool)

(declare-fun res!1020951 () Bool)

(assert (=> b!1499809 (=> (not res!1020951) (not e!839426))))

(declare-datatypes ((List!34926 0))(
  ( (Nil!34923) (Cons!34922 (h!36320 (_ BitVec 64)) (t!49627 List!34926)) )
))
(declare-fun arrayNoDuplicates!0 (array!99998 (_ BitVec 32) List!34926) Bool)

(assert (=> b!1499809 (= res!1020951 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34923))))

(declare-fun res!1020955 () Bool)

(assert (=> start!127704 (=> (not res!1020955) (not e!839426))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127704 (= res!1020955 (validMask!0 mask!2661))))

(assert (=> start!127704 e!839426))

(assert (=> start!127704 true))

(declare-fun array_inv!37199 (array!99998) Bool)

(assert (=> start!127704 (array_inv!37199 a!2850)))

(declare-fun b!1499802 () Bool)

(assert (=> b!1499802 (= e!839425 false)))

(declare-fun lt!652780 () SeekEntryResult!12483)

(assert (=> b!1499802 (= lt!652780 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!652779 vacantBefore!10 (select (arr!48254 a!2850) j!87) a!2850 mask!2661))))

(assert (= (and start!127704 res!1020955) b!1499805))

(assert (= (and b!1499805 res!1020949) b!1499806))

(assert (= (and b!1499806 res!1020948) b!1499800))

(assert (= (and b!1499800 res!1020953) b!1499807))

(assert (= (and b!1499807 res!1020957) b!1499809))

(assert (= (and b!1499809 res!1020951) b!1499808))

(assert (= (and b!1499808 res!1020952) b!1499803))

(assert (= (and b!1499803 res!1020954) b!1499801))

(assert (= (and b!1499801 res!1020950) b!1499804))

(assert (= (and b!1499804 res!1020956) b!1499802))

(declare-fun m!1383051 () Bool)

(assert (=> b!1499801 m!1383051))

(declare-fun m!1383053 () Bool)

(assert (=> b!1499801 m!1383053))

(declare-fun m!1383055 () Bool)

(assert (=> b!1499804 m!1383055))

(declare-fun m!1383057 () Bool)

(assert (=> b!1499807 m!1383057))

(assert (=> b!1499803 m!1383053))

(assert (=> b!1499803 m!1383053))

(declare-fun m!1383059 () Bool)

(assert (=> b!1499803 m!1383059))

(declare-fun m!1383061 () Bool)

(assert (=> b!1499808 m!1383061))

(declare-fun m!1383063 () Bool)

(assert (=> b!1499808 m!1383063))

(declare-fun m!1383065 () Bool)

(assert (=> b!1499808 m!1383065))

(declare-fun m!1383067 () Bool)

(assert (=> b!1499806 m!1383067))

(assert (=> b!1499806 m!1383067))

(declare-fun m!1383069 () Bool)

(assert (=> b!1499806 m!1383069))

(declare-fun m!1383071 () Bool)

(assert (=> b!1499809 m!1383071))

(assert (=> b!1499800 m!1383053))

(assert (=> b!1499800 m!1383053))

(declare-fun m!1383073 () Bool)

(assert (=> b!1499800 m!1383073))

(declare-fun m!1383075 () Bool)

(assert (=> start!127704 m!1383075))

(declare-fun m!1383077 () Bool)

(assert (=> start!127704 m!1383077))

(assert (=> b!1499802 m!1383053))

(assert (=> b!1499802 m!1383053))

(declare-fun m!1383079 () Bool)

(assert (=> b!1499802 m!1383079))

(check-sat (not b!1499807) (not b!1499806) (not start!127704) (not b!1499800) (not b!1499803) (not b!1499809) (not b!1499804) (not b!1499802))
(check-sat)
