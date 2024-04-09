; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50676 () Bool)

(assert start!50676)

(declare-fun res!346162 () Bool)

(declare-fun e!319300 () Bool)

(assert (=> start!50676 (=> (not res!346162) (not e!319300))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50676 (= res!346162 (validMask!0 mask!3119))))

(assert (=> start!50676 e!319300))

(assert (=> start!50676 true))

(declare-datatypes ((array!34855 0))(
  ( (array!34856 (arr!16733 (Array (_ BitVec 32) (_ BitVec 64))) (size!17097 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34855)

(declare-fun array_inv!12507 (array!34855) Bool)

(assert (=> start!50676 (array_inv!12507 a!3118)))

(declare-fun b!553598 () Bool)

(declare-fun e!319297 () Bool)

(assert (=> b!553598 (= e!319297 (not true))))

(declare-fun e!319298 () Bool)

(assert (=> b!553598 e!319298))

(declare-fun res!346168 () Bool)

(assert (=> b!553598 (=> (not res!346168) (not e!319298))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34855 (_ BitVec 32)) Bool)

(assert (=> b!553598 (= res!346168 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17152 0))(
  ( (Unit!17153) )
))
(declare-fun lt!251546 () Unit!17152)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34855 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17152)

(assert (=> b!553598 (= lt!251546 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!553599 () Bool)

(declare-fun res!346165 () Bool)

(assert (=> b!553599 (=> (not res!346165) (not e!319300))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!553599 (= res!346165 (validKeyInArray!0 (select (arr!16733 a!3118) j!142)))))

(declare-fun b!553600 () Bool)

(declare-fun res!346166 () Bool)

(assert (=> b!553600 (=> (not res!346166) (not e!319300))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!34855 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!553600 (= res!346166 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!553601 () Bool)

(declare-fun res!346161 () Bool)

(assert (=> b!553601 (=> (not res!346161) (not e!319300))))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!553601 (= res!346161 (and (= (size!17097 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17097 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17097 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!553602 () Bool)

(declare-fun res!346164 () Bool)

(assert (=> b!553602 (=> (not res!346164) (not e!319300))))

(assert (=> b!553602 (= res!346164 (validKeyInArray!0 k!1914))))

(declare-fun b!553603 () Bool)

(declare-fun res!346163 () Bool)

(assert (=> b!553603 (=> (not res!346163) (not e!319297))))

(assert (=> b!553603 (= res!346163 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!553604 () Bool)

(declare-fun res!346167 () Bool)

(assert (=> b!553604 (=> (not res!346167) (not e!319297))))

(declare-datatypes ((SeekEntryResult!5189 0))(
  ( (MissingZero!5189 (index!22983 (_ BitVec 32))) (Found!5189 (index!22984 (_ BitVec 32))) (Intermediate!5189 (undefined!6001 Bool) (index!22985 (_ BitVec 32)) (x!51930 (_ BitVec 32))) (Undefined!5189) (MissingVacant!5189 (index!22986 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34855 (_ BitVec 32)) SeekEntryResult!5189)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!553604 (= res!346167 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16733 a!3118) j!142) mask!3119) (select (arr!16733 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16733 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!16733 a!3118) i!1132 k!1914) j!142) (array!34856 (store (arr!16733 a!3118) i!1132 k!1914) (size!17097 a!3118)) mask!3119)))))

(declare-fun b!553605 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34855 (_ BitVec 32)) SeekEntryResult!5189)

(assert (=> b!553605 (= e!319298 (= (seekEntryOrOpen!0 (select (arr!16733 a!3118) j!142) a!3118 mask!3119) (Found!5189 j!142)))))

(declare-fun b!553606 () Bool)

(declare-fun res!346160 () Bool)

(assert (=> b!553606 (=> (not res!346160) (not e!319297))))

(declare-datatypes ((List!10866 0))(
  ( (Nil!10863) (Cons!10862 (h!11847 (_ BitVec 64)) (t!17102 List!10866)) )
))
(declare-fun arrayNoDuplicates!0 (array!34855 (_ BitVec 32) List!10866) Bool)

(assert (=> b!553606 (= res!346160 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10863))))

(declare-fun b!553607 () Bool)

(assert (=> b!553607 (= e!319300 e!319297)))

(declare-fun res!346169 () Bool)

(assert (=> b!553607 (=> (not res!346169) (not e!319297))))

(declare-fun lt!251545 () SeekEntryResult!5189)

(assert (=> b!553607 (= res!346169 (or (= lt!251545 (MissingZero!5189 i!1132)) (= lt!251545 (MissingVacant!5189 i!1132))))))

(assert (=> b!553607 (= lt!251545 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(assert (= (and start!50676 res!346162) b!553601))

(assert (= (and b!553601 res!346161) b!553599))

(assert (= (and b!553599 res!346165) b!553602))

(assert (= (and b!553602 res!346164) b!553600))

(assert (= (and b!553600 res!346166) b!553607))

(assert (= (and b!553607 res!346169) b!553603))

(assert (= (and b!553603 res!346163) b!553606))

(assert (= (and b!553606 res!346160) b!553604))

(assert (= (and b!553604 res!346167) b!553598))

(assert (= (and b!553598 res!346168) b!553605))

(declare-fun m!530791 () Bool)

(assert (=> b!553604 m!530791))

(declare-fun m!530793 () Bool)

(assert (=> b!553604 m!530793))

(assert (=> b!553604 m!530791))

(declare-fun m!530795 () Bool)

(assert (=> b!553604 m!530795))

(declare-fun m!530797 () Bool)

(assert (=> b!553604 m!530797))

(assert (=> b!553604 m!530795))

(declare-fun m!530799 () Bool)

(assert (=> b!553604 m!530799))

(assert (=> b!553604 m!530793))

(assert (=> b!553604 m!530791))

(declare-fun m!530801 () Bool)

(assert (=> b!553604 m!530801))

(declare-fun m!530803 () Bool)

(assert (=> b!553604 m!530803))

(assert (=> b!553604 m!530795))

(assert (=> b!553604 m!530797))

(declare-fun m!530805 () Bool)

(assert (=> b!553603 m!530805))

(assert (=> b!553599 m!530791))

(assert (=> b!553599 m!530791))

(declare-fun m!530807 () Bool)

(assert (=> b!553599 m!530807))

(declare-fun m!530809 () Bool)

(assert (=> b!553606 m!530809))

(declare-fun m!530811 () Bool)

(assert (=> b!553598 m!530811))

(declare-fun m!530813 () Bool)

(assert (=> b!553598 m!530813))

(declare-fun m!530815 () Bool)

(assert (=> b!553607 m!530815))

(declare-fun m!530817 () Bool)

(assert (=> b!553602 m!530817))

(declare-fun m!530819 () Bool)

(assert (=> start!50676 m!530819))

(declare-fun m!530821 () Bool)

(assert (=> start!50676 m!530821))

(declare-fun m!530823 () Bool)

(assert (=> b!553600 m!530823))

(assert (=> b!553605 m!530791))

(assert (=> b!553605 m!530791))

(declare-fun m!530825 () Bool)

(assert (=> b!553605 m!530825))

(push 1)

