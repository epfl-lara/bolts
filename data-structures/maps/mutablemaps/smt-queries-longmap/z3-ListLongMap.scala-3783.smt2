; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!51772 () Bool)

(assert start!51772)

(declare-fun b!566108 () Bool)

(declare-fun res!357232 () Bool)

(declare-fun e!325800 () Bool)

(assert (=> b!566108 (=> (not res!357232) (not e!325800))))

(declare-datatypes ((array!35534 0))(
  ( (array!35535 (arr!17062 (Array (_ BitVec 32) (_ BitVec 64))) (size!17426 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35534)

(declare-datatypes ((List!11195 0))(
  ( (Nil!11192) (Cons!11191 (h!12197 (_ BitVec 64)) (t!17431 List!11195)) )
))
(declare-fun arrayNoDuplicates!0 (array!35534 (_ BitVec 32) List!11195) Bool)

(assert (=> b!566108 (= res!357232 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11192))))

(declare-fun b!566110 () Bool)

(declare-fun res!357227 () Bool)

(declare-fun e!325798 () Bool)

(assert (=> b!566110 (=> (not res!357227) (not e!325798))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!35534 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!566110 (= res!357227 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!566111 () Bool)

(assert (=> b!566111 (= e!325800 (not true))))

(declare-fun e!325799 () Bool)

(assert (=> b!566111 e!325799))

(declare-fun res!357234 () Bool)

(assert (=> b!566111 (=> (not res!357234) (not e!325799))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35534 (_ BitVec 32)) Bool)

(assert (=> b!566111 (= res!357234 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17738 0))(
  ( (Unit!17739) )
))
(declare-fun lt!258023 () Unit!17738)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35534 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17738)

(assert (=> b!566111 (= lt!258023 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!566112 () Bool)

(declare-datatypes ((SeekEntryResult!5518 0))(
  ( (MissingZero!5518 (index!24299 (_ BitVec 32))) (Found!5518 (index!24300 (_ BitVec 32))) (Intermediate!5518 (undefined!6330 Bool) (index!24301 (_ BitVec 32)) (x!53190 (_ BitVec 32))) (Undefined!5518) (MissingVacant!5518 (index!24302 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35534 (_ BitVec 32)) SeekEntryResult!5518)

(assert (=> b!566112 (= e!325799 (= (seekEntryOrOpen!0 (select (arr!17062 a!3118) j!142) a!3118 mask!3119) (Found!5518 j!142)))))

(declare-fun b!566113 () Bool)

(assert (=> b!566113 (= e!325798 e!325800)))

(declare-fun res!357235 () Bool)

(assert (=> b!566113 (=> (not res!357235) (not e!325800))))

(declare-fun lt!258022 () SeekEntryResult!5518)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!566113 (= res!357235 (or (= lt!258022 (MissingZero!5518 i!1132)) (= lt!258022 (MissingVacant!5518 i!1132))))))

(assert (=> b!566113 (= lt!258022 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!566114 () Bool)

(declare-fun res!357231 () Bool)

(assert (=> b!566114 (=> (not res!357231) (not e!325798))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!566114 (= res!357231 (validKeyInArray!0 k0!1914))))

(declare-fun b!566115 () Bool)

(declare-fun res!357230 () Bool)

(assert (=> b!566115 (=> (not res!357230) (not e!325798))))

(assert (=> b!566115 (= res!357230 (and (= (size!17426 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17426 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17426 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!566116 () Bool)

(declare-fun res!357228 () Bool)

(assert (=> b!566116 (=> (not res!357228) (not e!325800))))

(assert (=> b!566116 (= res!357228 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!566117 () Bool)

(declare-fun res!357236 () Bool)

(assert (=> b!566117 (=> (not res!357236) (not e!325800))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35534 (_ BitVec 32)) SeekEntryResult!5518)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!566117 (= res!357236 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17062 a!3118) j!142) mask!3119) (select (arr!17062 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!17062 a!3118) i!1132 k0!1914) j!142) mask!3119) (select (store (arr!17062 a!3118) i!1132 k0!1914) j!142) (array!35535 (store (arr!17062 a!3118) i!1132 k0!1914) (size!17426 a!3118)) mask!3119)))))

(declare-fun b!566109 () Bool)

(declare-fun res!357229 () Bool)

(assert (=> b!566109 (=> (not res!357229) (not e!325798))))

(assert (=> b!566109 (= res!357229 (validKeyInArray!0 (select (arr!17062 a!3118) j!142)))))

(declare-fun res!357233 () Bool)

(assert (=> start!51772 (=> (not res!357233) (not e!325798))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51772 (= res!357233 (validMask!0 mask!3119))))

(assert (=> start!51772 e!325798))

(assert (=> start!51772 true))

(declare-fun array_inv!12836 (array!35534) Bool)

(assert (=> start!51772 (array_inv!12836 a!3118)))

(assert (= (and start!51772 res!357233) b!566115))

(assert (= (and b!566115 res!357230) b!566109))

(assert (= (and b!566109 res!357229) b!566114))

(assert (= (and b!566114 res!357231) b!566110))

(assert (= (and b!566110 res!357227) b!566113))

(assert (= (and b!566113 res!357235) b!566116))

(assert (= (and b!566116 res!357228) b!566108))

(assert (= (and b!566108 res!357232) b!566117))

(assert (= (and b!566117 res!357236) b!566111))

(assert (= (and b!566111 res!357234) b!566112))

(declare-fun m!544777 () Bool)

(assert (=> b!566117 m!544777))

(declare-fun m!544779 () Bool)

(assert (=> b!566117 m!544779))

(assert (=> b!566117 m!544777))

(declare-fun m!544781 () Bool)

(assert (=> b!566117 m!544781))

(declare-fun m!544783 () Bool)

(assert (=> b!566117 m!544783))

(assert (=> b!566117 m!544781))

(declare-fun m!544785 () Bool)

(assert (=> b!566117 m!544785))

(assert (=> b!566117 m!544779))

(assert (=> b!566117 m!544777))

(declare-fun m!544787 () Bool)

(assert (=> b!566117 m!544787))

(declare-fun m!544789 () Bool)

(assert (=> b!566117 m!544789))

(assert (=> b!566117 m!544781))

(assert (=> b!566117 m!544783))

(declare-fun m!544791 () Bool)

(assert (=> b!566113 m!544791))

(declare-fun m!544793 () Bool)

(assert (=> b!566108 m!544793))

(declare-fun m!544795 () Bool)

(assert (=> b!566114 m!544795))

(declare-fun m!544797 () Bool)

(assert (=> b!566116 m!544797))

(assert (=> b!566109 m!544777))

(assert (=> b!566109 m!544777))

(declare-fun m!544799 () Bool)

(assert (=> b!566109 m!544799))

(declare-fun m!544801 () Bool)

(assert (=> start!51772 m!544801))

(declare-fun m!544803 () Bool)

(assert (=> start!51772 m!544803))

(declare-fun m!544805 () Bool)

(assert (=> b!566111 m!544805))

(declare-fun m!544807 () Bool)

(assert (=> b!566111 m!544807))

(assert (=> b!566112 m!544777))

(assert (=> b!566112 m!544777))

(declare-fun m!544809 () Bool)

(assert (=> b!566112 m!544809))

(declare-fun m!544811 () Bool)

(assert (=> b!566110 m!544811))

(check-sat (not start!51772) (not b!566116) (not b!566111) (not b!566114) (not b!566108) (not b!566113) (not b!566109) (not b!566117) (not b!566110) (not b!566112))
(check-sat)
