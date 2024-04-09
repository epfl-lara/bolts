; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50846 () Bool)

(assert start!50846)

(declare-fun b!556004 () Bool)

(declare-fun res!348568 () Bool)

(declare-fun e!320365 () Bool)

(assert (=> b!556004 (=> (not res!348568) (not e!320365))))

(declare-datatypes ((array!35025 0))(
  ( (array!35026 (arr!16818 (Array (_ BitVec 32) (_ BitVec 64))) (size!17182 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35025)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35025 (_ BitVec 32)) Bool)

(assert (=> b!556004 (= res!348568 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!556005 () Bool)

(declare-fun res!348572 () Bool)

(declare-fun e!320363 () Bool)

(assert (=> b!556005 (=> (not res!348572) (not e!320363))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!556005 (= res!348572 (validKeyInArray!0 k!1914))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun b!556006 () Bool)

(declare-fun e!320362 () Bool)

(declare-datatypes ((SeekEntryResult!5274 0))(
  ( (MissingZero!5274 (index!23323 (_ BitVec 32))) (Found!5274 (index!23324 (_ BitVec 32))) (Intermediate!5274 (undefined!6086 Bool) (index!23325 (_ BitVec 32)) (x!52247 (_ BitVec 32))) (Undefined!5274) (MissingVacant!5274 (index!23326 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35025 (_ BitVec 32)) SeekEntryResult!5274)

(assert (=> b!556006 (= e!320362 (= (seekEntryOrOpen!0 (select (arr!16818 a!3118) j!142) a!3118 mask!3119) (Found!5274 j!142)))))

(declare-fun b!556007 () Bool)

(assert (=> b!556007 (= e!320365 (not true))))

(assert (=> b!556007 e!320362))

(declare-fun res!348574 () Bool)

(assert (=> b!556007 (=> (not res!348574) (not e!320362))))

(assert (=> b!556007 (= res!348574 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17322 0))(
  ( (Unit!17323) )
))
(declare-fun lt!252775 () Unit!17322)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35025 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17322)

(assert (=> b!556007 (= lt!252775 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!556008 () Bool)

(declare-fun res!348567 () Bool)

(assert (=> b!556008 (=> (not res!348567) (not e!320363))))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!556008 (= res!348567 (and (= (size!17182 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17182 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17182 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!556009 () Bool)

(declare-fun res!348575 () Bool)

(assert (=> b!556009 (=> (not res!348575) (not e!320363))))

(declare-fun arrayContainsKey!0 (array!35025 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!556009 (= res!348575 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!556010 () Bool)

(declare-fun res!348573 () Bool)

(assert (=> b!556010 (=> (not res!348573) (not e!320363))))

(assert (=> b!556010 (= res!348573 (validKeyInArray!0 (select (arr!16818 a!3118) j!142)))))

(declare-fun b!556011 () Bool)

(declare-fun res!348566 () Bool)

(assert (=> b!556011 (=> (not res!348566) (not e!320365))))

(declare-datatypes ((List!10951 0))(
  ( (Nil!10948) (Cons!10947 (h!11932 (_ BitVec 64)) (t!17187 List!10951)) )
))
(declare-fun arrayNoDuplicates!0 (array!35025 (_ BitVec 32) List!10951) Bool)

(assert (=> b!556011 (= res!348566 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10948))))

(declare-fun b!556012 () Bool)

(assert (=> b!556012 (= e!320363 e!320365)))

(declare-fun res!348569 () Bool)

(assert (=> b!556012 (=> (not res!348569) (not e!320365))))

(declare-fun lt!252776 () SeekEntryResult!5274)

(assert (=> b!556012 (= res!348569 (or (= lt!252776 (MissingZero!5274 i!1132)) (= lt!252776 (MissingVacant!5274 i!1132))))))

(assert (=> b!556012 (= lt!252776 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!556013 () Bool)

(declare-fun res!348570 () Bool)

(assert (=> b!556013 (=> (not res!348570) (not e!320365))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35025 (_ BitVec 32)) SeekEntryResult!5274)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!556013 (= res!348570 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16818 a!3118) j!142) mask!3119) (select (arr!16818 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16818 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!16818 a!3118) i!1132 k!1914) j!142) (array!35026 (store (arr!16818 a!3118) i!1132 k!1914) (size!17182 a!3118)) mask!3119)))))

(declare-fun res!348571 () Bool)

(assert (=> start!50846 (=> (not res!348571) (not e!320363))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50846 (= res!348571 (validMask!0 mask!3119))))

(assert (=> start!50846 e!320363))

(assert (=> start!50846 true))

(declare-fun array_inv!12592 (array!35025) Bool)

(assert (=> start!50846 (array_inv!12592 a!3118)))

(assert (= (and start!50846 res!348571) b!556008))

(assert (= (and b!556008 res!348567) b!556010))

(assert (= (and b!556010 res!348573) b!556005))

(assert (= (and b!556005 res!348572) b!556009))

(assert (= (and b!556009 res!348575) b!556012))

(assert (= (and b!556012 res!348569) b!556004))

(assert (= (and b!556004 res!348568) b!556011))

(assert (= (and b!556011 res!348566) b!556013))

(assert (= (and b!556013 res!348570) b!556007))

(assert (= (and b!556007 res!348574) b!556006))

(declare-fun m!533983 () Bool)

(assert (=> b!556009 m!533983))

(declare-fun m!533985 () Bool)

(assert (=> start!50846 m!533985))

(declare-fun m!533987 () Bool)

(assert (=> start!50846 m!533987))

(declare-fun m!533989 () Bool)

(assert (=> b!556012 m!533989))

(declare-fun m!533991 () Bool)

(assert (=> b!556007 m!533991))

(declare-fun m!533993 () Bool)

(assert (=> b!556007 m!533993))

(declare-fun m!533995 () Bool)

(assert (=> b!556006 m!533995))

(assert (=> b!556006 m!533995))

(declare-fun m!533997 () Bool)

(assert (=> b!556006 m!533997))

(assert (=> b!556013 m!533995))

(declare-fun m!533999 () Bool)

(assert (=> b!556013 m!533999))

(assert (=> b!556013 m!533995))

(declare-fun m!534001 () Bool)

(assert (=> b!556013 m!534001))

(declare-fun m!534003 () Bool)

(assert (=> b!556013 m!534003))

(assert (=> b!556013 m!534001))

(declare-fun m!534005 () Bool)

(assert (=> b!556013 m!534005))

(assert (=> b!556013 m!533999))

(assert (=> b!556013 m!533995))

(declare-fun m!534007 () Bool)

(assert (=> b!556013 m!534007))

(declare-fun m!534009 () Bool)

(assert (=> b!556013 m!534009))

(assert (=> b!556013 m!534001))

(assert (=> b!556013 m!534003))

(declare-fun m!534011 () Bool)

(assert (=> b!556004 m!534011))

(assert (=> b!556010 m!533995))

(assert (=> b!556010 m!533995))

(declare-fun m!534013 () Bool)

(assert (=> b!556010 m!534013))

(declare-fun m!534015 () Bool)

(assert (=> b!556005 m!534015))

(declare-fun m!534017 () Bool)

(assert (=> b!556011 m!534017))

(push 1)

