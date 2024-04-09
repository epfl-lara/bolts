; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51774 () Bool)

(assert start!51774)

(declare-fun b!566138 () Bool)

(declare-fun res!357261 () Bool)

(declare-fun e!325813 () Bool)

(assert (=> b!566138 (=> (not res!357261) (not e!325813))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!566138 (= res!357261 (validKeyInArray!0 k!1914))))

(declare-fun b!566139 () Bool)

(declare-fun res!357263 () Bool)

(assert (=> b!566139 (=> (not res!357263) (not e!325813))))

(declare-datatypes ((array!35536 0))(
  ( (array!35537 (arr!17063 (Array (_ BitVec 32) (_ BitVec 64))) (size!17427 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35536)

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!566139 (= res!357263 (validKeyInArray!0 (select (arr!17063 a!3118) j!142)))))

(declare-fun b!566140 () Bool)

(declare-fun e!325812 () Bool)

(assert (=> b!566140 (= e!325812 (not true))))

(declare-fun e!325810 () Bool)

(assert (=> b!566140 e!325810))

(declare-fun res!357265 () Bool)

(assert (=> b!566140 (=> (not res!357265) (not e!325810))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35536 (_ BitVec 32)) Bool)

(assert (=> b!566140 (= res!357265 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17740 0))(
  ( (Unit!17741) )
))
(declare-fun lt!258029 () Unit!17740)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35536 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17740)

(assert (=> b!566140 (= lt!258029 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!566141 () Bool)

(declare-fun res!357258 () Bool)

(assert (=> b!566141 (=> (not res!357258) (not e!325813))))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!566141 (= res!357258 (and (= (size!17427 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17427 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17427 a!3118)) (not (= i!1132 j!142))))))

(declare-fun res!357260 () Bool)

(assert (=> start!51774 (=> (not res!357260) (not e!325813))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51774 (= res!357260 (validMask!0 mask!3119))))

(assert (=> start!51774 e!325813))

(assert (=> start!51774 true))

(declare-fun array_inv!12837 (array!35536) Bool)

(assert (=> start!51774 (array_inv!12837 a!3118)))

(declare-fun b!566142 () Bool)

(declare-fun res!357266 () Bool)

(assert (=> b!566142 (=> (not res!357266) (not e!325812))))

(assert (=> b!566142 (= res!357266 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!566143 () Bool)

(declare-datatypes ((SeekEntryResult!5519 0))(
  ( (MissingZero!5519 (index!24303 (_ BitVec 32))) (Found!5519 (index!24304 (_ BitVec 32))) (Intermediate!5519 (undefined!6331 Bool) (index!24305 (_ BitVec 32)) (x!53191 (_ BitVec 32))) (Undefined!5519) (MissingVacant!5519 (index!24306 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35536 (_ BitVec 32)) SeekEntryResult!5519)

(assert (=> b!566143 (= e!325810 (= (seekEntryOrOpen!0 (select (arr!17063 a!3118) j!142) a!3118 mask!3119) (Found!5519 j!142)))))

(declare-fun b!566144 () Bool)

(declare-fun res!357259 () Bool)

(assert (=> b!566144 (=> (not res!357259) (not e!325813))))

(declare-fun arrayContainsKey!0 (array!35536 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!566144 (= res!357259 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!566145 () Bool)

(declare-fun res!357257 () Bool)

(assert (=> b!566145 (=> (not res!357257) (not e!325812))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35536 (_ BitVec 32)) SeekEntryResult!5519)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!566145 (= res!357257 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17063 a!3118) j!142) mask!3119) (select (arr!17063 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!17063 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!17063 a!3118) i!1132 k!1914) j!142) (array!35537 (store (arr!17063 a!3118) i!1132 k!1914) (size!17427 a!3118)) mask!3119)))))

(declare-fun b!566146 () Bool)

(declare-fun res!357262 () Bool)

(assert (=> b!566146 (=> (not res!357262) (not e!325812))))

(declare-datatypes ((List!11196 0))(
  ( (Nil!11193) (Cons!11192 (h!12198 (_ BitVec 64)) (t!17432 List!11196)) )
))
(declare-fun arrayNoDuplicates!0 (array!35536 (_ BitVec 32) List!11196) Bool)

(assert (=> b!566146 (= res!357262 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11193))))

(declare-fun b!566147 () Bool)

(assert (=> b!566147 (= e!325813 e!325812)))

(declare-fun res!357264 () Bool)

(assert (=> b!566147 (=> (not res!357264) (not e!325812))))

(declare-fun lt!258028 () SeekEntryResult!5519)

(assert (=> b!566147 (= res!357264 (or (= lt!258028 (MissingZero!5519 i!1132)) (= lt!258028 (MissingVacant!5519 i!1132))))))

(assert (=> b!566147 (= lt!258028 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(assert (= (and start!51774 res!357260) b!566141))

(assert (= (and b!566141 res!357258) b!566139))

(assert (= (and b!566139 res!357263) b!566138))

(assert (= (and b!566138 res!357261) b!566144))

(assert (= (and b!566144 res!357259) b!566147))

(assert (= (and b!566147 res!357264) b!566142))

(assert (= (and b!566142 res!357266) b!566146))

(assert (= (and b!566146 res!357262) b!566145))

(assert (= (and b!566145 res!357257) b!566140))

(assert (= (and b!566140 res!357265) b!566143))

(declare-fun m!544813 () Bool)

(assert (=> b!566142 m!544813))

(declare-fun m!544815 () Bool)

(assert (=> b!566143 m!544815))

(assert (=> b!566143 m!544815))

(declare-fun m!544817 () Bool)

(assert (=> b!566143 m!544817))

(assert (=> b!566145 m!544815))

(declare-fun m!544819 () Bool)

(assert (=> b!566145 m!544819))

(assert (=> b!566145 m!544815))

(declare-fun m!544821 () Bool)

(assert (=> b!566145 m!544821))

(declare-fun m!544823 () Bool)

(assert (=> b!566145 m!544823))

(assert (=> b!566145 m!544821))

(declare-fun m!544825 () Bool)

(assert (=> b!566145 m!544825))

(assert (=> b!566145 m!544819))

(assert (=> b!566145 m!544815))

(declare-fun m!544827 () Bool)

(assert (=> b!566145 m!544827))

(declare-fun m!544829 () Bool)

(assert (=> b!566145 m!544829))

(assert (=> b!566145 m!544821))

(assert (=> b!566145 m!544823))

(declare-fun m!544831 () Bool)

(assert (=> b!566144 m!544831))

(declare-fun m!544833 () Bool)

(assert (=> b!566146 m!544833))

(declare-fun m!544835 () Bool)

(assert (=> b!566138 m!544835))

(assert (=> b!566139 m!544815))

(assert (=> b!566139 m!544815))

(declare-fun m!544837 () Bool)

(assert (=> b!566139 m!544837))

(declare-fun m!544839 () Bool)

(assert (=> b!566147 m!544839))

(declare-fun m!544841 () Bool)

(assert (=> b!566140 m!544841))

(declare-fun m!544843 () Bool)

(assert (=> b!566140 m!544843))

(declare-fun m!544845 () Bool)

(assert (=> start!51774 m!544845))

(declare-fun m!544847 () Bool)

(assert (=> start!51774 m!544847))

(push 1)

(assert (not b!566144))

(assert (not b!566140))

(assert (not b!566147))

(assert (not b!566145))

(assert (not b!566143))

(assert (not b!566142))

(assert (not b!566138))

(assert (not b!566139))

(assert (not b!566146))

(assert (not start!51774))

(check-sat)

