; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!52072 () Bool)

(assert start!52072)

(declare-fun b!568208 () Bool)

(declare-fun res!358559 () Bool)

(declare-fun e!326956 () Bool)

(assert (=> b!568208 (=> (not res!358559) (not e!326956))))

(declare-datatypes ((array!35606 0))(
  ( (array!35607 (arr!17092 (Array (_ BitVec 32) (_ BitVec 64))) (size!17456 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35606)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35606 (_ BitVec 32)) Bool)

(assert (=> b!568208 (= res!358559 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!568209 () Bool)

(declare-fun res!358567 () Bool)

(declare-fun e!326959 () Bool)

(assert (=> b!568209 (=> (not res!358567) (not e!326959))))

(declare-fun i!1132 () (_ BitVec 32))

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!568209 (= res!358567 (and (= (size!17456 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17456 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17456 a!3118)) (not (= i!1132 j!142))))))

(declare-fun res!358560 () Bool)

(assert (=> start!52072 (=> (not res!358560) (not e!326959))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52072 (= res!358560 (validMask!0 mask!3119))))

(assert (=> start!52072 e!326959))

(assert (=> start!52072 true))

(declare-fun array_inv!12866 (array!35606) Bool)

(assert (=> start!52072 (array_inv!12866 a!3118)))

(declare-fun b!568210 () Bool)

(declare-fun res!358564 () Bool)

(assert (=> b!568210 (=> (not res!358564) (not e!326959))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!568210 (= res!358564 (validKeyInArray!0 (select (arr!17092 a!3118) j!142)))))

(declare-fun e!326958 () Bool)

(declare-fun b!568211 () Bool)

(declare-datatypes ((SeekEntryResult!5548 0))(
  ( (MissingZero!5548 (index!24419 (_ BitVec 32))) (Found!5548 (index!24420 (_ BitVec 32))) (Intermediate!5548 (undefined!6360 Bool) (index!24421 (_ BitVec 32)) (x!53324 (_ BitVec 32))) (Undefined!5548) (MissingVacant!5548 (index!24422 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35606 (_ BitVec 32)) SeekEntryResult!5548)

(assert (=> b!568211 (= e!326958 (= (seekEntryOrOpen!0 (select (arr!17092 a!3118) j!142) a!3118 mask!3119) (Found!5548 j!142)))))

(declare-fun b!568212 () Bool)

(declare-fun res!358561 () Bool)

(assert (=> b!568212 (=> (not res!358561) (not e!326959))))

(declare-fun k0!1914 () (_ BitVec 64))

(assert (=> b!568212 (= res!358561 (validKeyInArray!0 k0!1914))))

(declare-fun b!568213 () Bool)

(assert (=> b!568213 (= e!326959 e!326956)))

(declare-fun res!358566 () Bool)

(assert (=> b!568213 (=> (not res!358566) (not e!326956))))

(declare-fun lt!258899 () SeekEntryResult!5548)

(assert (=> b!568213 (= res!358566 (or (= lt!258899 (MissingZero!5548 i!1132)) (= lt!258899 (MissingVacant!5548 i!1132))))))

(assert (=> b!568213 (= lt!258899 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!568214 () Bool)

(declare-fun res!358562 () Bool)

(assert (=> b!568214 (=> (not res!358562) (not e!326959))))

(declare-fun arrayContainsKey!0 (array!35606 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!568214 (= res!358562 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!568215 () Bool)

(declare-fun res!358568 () Bool)

(assert (=> b!568215 (=> (not res!358568) (not e!326956))))

(declare-datatypes ((List!11225 0))(
  ( (Nil!11222) (Cons!11221 (h!12239 (_ BitVec 64)) (t!17461 List!11225)) )
))
(declare-fun arrayNoDuplicates!0 (array!35606 (_ BitVec 32) List!11225) Bool)

(assert (=> b!568215 (= res!358568 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11222))))

(declare-fun b!568216 () Bool)

(declare-fun res!358563 () Bool)

(assert (=> b!568216 (=> (not res!358563) (not e!326956))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35606 (_ BitVec 32)) SeekEntryResult!5548)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!568216 (= res!358563 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17092 a!3118) j!142) mask!3119) (select (arr!17092 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!17092 a!3118) i!1132 k0!1914) j!142) mask!3119) (select (store (arr!17092 a!3118) i!1132 k0!1914) j!142) (array!35607 (store (arr!17092 a!3118) i!1132 k0!1914) (size!17456 a!3118)) mask!3119)))))

(declare-fun b!568217 () Bool)

(assert (=> b!568217 (= e!326956 (not true))))

(assert (=> b!568217 e!326958))

(declare-fun res!358565 () Bool)

(assert (=> b!568217 (=> (not res!358565) (not e!326958))))

(assert (=> b!568217 (= res!358565 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17798 0))(
  ( (Unit!17799) )
))
(declare-fun lt!258898 () Unit!17798)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35606 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17798)

(assert (=> b!568217 (= lt!258898 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(assert (= (and start!52072 res!358560) b!568209))

(assert (= (and b!568209 res!358567) b!568210))

(assert (= (and b!568210 res!358564) b!568212))

(assert (= (and b!568212 res!358561) b!568214))

(assert (= (and b!568214 res!358562) b!568213))

(assert (= (and b!568213 res!358566) b!568208))

(assert (= (and b!568208 res!358559) b!568215))

(assert (= (and b!568215 res!358568) b!568216))

(assert (= (and b!568216 res!358563) b!568217))

(assert (= (and b!568217 res!358565) b!568211))

(declare-fun m!546769 () Bool)

(assert (=> b!568210 m!546769))

(assert (=> b!568210 m!546769))

(declare-fun m!546771 () Bool)

(assert (=> b!568210 m!546771))

(declare-fun m!546773 () Bool)

(assert (=> b!568208 m!546773))

(declare-fun m!546775 () Bool)

(assert (=> b!568217 m!546775))

(declare-fun m!546777 () Bool)

(assert (=> b!568217 m!546777))

(assert (=> b!568211 m!546769))

(assert (=> b!568211 m!546769))

(declare-fun m!546779 () Bool)

(assert (=> b!568211 m!546779))

(declare-fun m!546781 () Bool)

(assert (=> b!568215 m!546781))

(assert (=> b!568216 m!546769))

(declare-fun m!546783 () Bool)

(assert (=> b!568216 m!546783))

(assert (=> b!568216 m!546769))

(declare-fun m!546785 () Bool)

(assert (=> b!568216 m!546785))

(declare-fun m!546787 () Bool)

(assert (=> b!568216 m!546787))

(assert (=> b!568216 m!546785))

(declare-fun m!546789 () Bool)

(assert (=> b!568216 m!546789))

(assert (=> b!568216 m!546783))

(assert (=> b!568216 m!546769))

(declare-fun m!546791 () Bool)

(assert (=> b!568216 m!546791))

(declare-fun m!546793 () Bool)

(assert (=> b!568216 m!546793))

(assert (=> b!568216 m!546785))

(assert (=> b!568216 m!546787))

(declare-fun m!546795 () Bool)

(assert (=> b!568213 m!546795))

(declare-fun m!546797 () Bool)

(assert (=> b!568212 m!546797))

(declare-fun m!546799 () Bool)

(assert (=> start!52072 m!546799))

(declare-fun m!546801 () Bool)

(assert (=> start!52072 m!546801))

(declare-fun m!546803 () Bool)

(assert (=> b!568214 m!546803))

(check-sat (not start!52072) (not b!568216) (not b!568210) (not b!568212) (not b!568214) (not b!568211) (not b!568213) (not b!568217) (not b!568215) (not b!568208))
(check-sat)
