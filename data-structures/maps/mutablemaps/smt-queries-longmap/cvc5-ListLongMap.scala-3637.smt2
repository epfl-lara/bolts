; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50216 () Bool)

(assert start!50216)

(declare-fun b!549238 () Bool)

(declare-fun res!342535 () Bool)

(declare-fun e!317231 () Bool)

(assert (=> b!549238 (=> (not res!342535) (not e!317231))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!34623 0))(
  ( (array!34624 (arr!16623 (Array (_ BitVec 32) (_ BitVec 64))) (size!16987 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34623)

(assert (=> b!549238 (= res!342535 (and (= (size!16987 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!16987 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!16987 a!3118)) (not (= i!1132 j!142))))))

(declare-fun res!342538 () Bool)

(assert (=> start!50216 (=> (not res!342538) (not e!317231))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50216 (= res!342538 (validMask!0 mask!3119))))

(assert (=> start!50216 e!317231))

(assert (=> start!50216 true))

(declare-fun array_inv!12397 (array!34623) Bool)

(assert (=> start!50216 (array_inv!12397 a!3118)))

(declare-fun b!549239 () Bool)

(declare-fun res!342534 () Bool)

(assert (=> b!549239 (=> (not res!342534) (not e!317231))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!549239 (= res!342534 (validKeyInArray!0 (select (arr!16623 a!3118) j!142)))))

(declare-fun b!549240 () Bool)

(declare-fun e!317232 () Bool)

(assert (=> b!549240 (= e!317232 false)))

(declare-fun lt!250089 () (_ BitVec 32))

(declare-fun k!1914 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!5079 0))(
  ( (MissingZero!5079 (index!22543 (_ BitVec 32))) (Found!5079 (index!22544 (_ BitVec 32))) (Intermediate!5079 (undefined!5891 Bool) (index!22545 (_ BitVec 32)) (x!51508 (_ BitVec 32))) (Undefined!5079) (MissingVacant!5079 (index!22546 (_ BitVec 32))) )
))
(declare-fun lt!250088 () SeekEntryResult!5079)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34623 (_ BitVec 32)) SeekEntryResult!5079)

(assert (=> b!549240 (= lt!250088 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!250089 (select (store (arr!16623 a!3118) i!1132 k!1914) j!142) (array!34624 (store (arr!16623 a!3118) i!1132 k!1914) (size!16987 a!3118)) mask!3119))))

(declare-fun lt!250087 () (_ BitVec 32))

(declare-fun lt!250090 () SeekEntryResult!5079)

(assert (=> b!549240 (= lt!250090 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!250087 (select (arr!16623 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!549240 (= lt!250089 (toIndex!0 (select (store (arr!16623 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!549240 (= lt!250087 (toIndex!0 (select (arr!16623 a!3118) j!142) mask!3119))))

(declare-fun b!549241 () Bool)

(assert (=> b!549241 (= e!317231 e!317232)))

(declare-fun res!342532 () Bool)

(assert (=> b!549241 (=> (not res!342532) (not e!317232))))

(declare-fun lt!250091 () SeekEntryResult!5079)

(assert (=> b!549241 (= res!342532 (or (= lt!250091 (MissingZero!5079 i!1132)) (= lt!250091 (MissingVacant!5079 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34623 (_ BitVec 32)) SeekEntryResult!5079)

(assert (=> b!549241 (= lt!250091 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!549242 () Bool)

(declare-fun res!342533 () Bool)

(assert (=> b!549242 (=> (not res!342533) (not e!317231))))

(assert (=> b!549242 (= res!342533 (validKeyInArray!0 k!1914))))

(declare-fun b!549243 () Bool)

(declare-fun res!342539 () Bool)

(assert (=> b!549243 (=> (not res!342539) (not e!317231))))

(declare-fun arrayContainsKey!0 (array!34623 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!549243 (= res!342539 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!549244 () Bool)

(declare-fun res!342537 () Bool)

(assert (=> b!549244 (=> (not res!342537) (not e!317232))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34623 (_ BitVec 32)) Bool)

(assert (=> b!549244 (= res!342537 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!549245 () Bool)

(declare-fun res!342536 () Bool)

(assert (=> b!549245 (=> (not res!342536) (not e!317232))))

(declare-datatypes ((List!10756 0))(
  ( (Nil!10753) (Cons!10752 (h!11725 (_ BitVec 64)) (t!16992 List!10756)) )
))
(declare-fun arrayNoDuplicates!0 (array!34623 (_ BitVec 32) List!10756) Bool)

(assert (=> b!549245 (= res!342536 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10753))))

(assert (= (and start!50216 res!342538) b!549238))

(assert (= (and b!549238 res!342535) b!549239))

(assert (= (and b!549239 res!342534) b!549242))

(assert (= (and b!549242 res!342533) b!549243))

(assert (= (and b!549243 res!342539) b!549241))

(assert (= (and b!549241 res!342532) b!549244))

(assert (= (and b!549244 res!342537) b!549245))

(assert (= (and b!549245 res!342536) b!549240))

(declare-fun m!526123 () Bool)

(assert (=> b!549244 m!526123))

(declare-fun m!526125 () Bool)

(assert (=> b!549245 m!526125))

(declare-fun m!526127 () Bool)

(assert (=> b!549243 m!526127))

(declare-fun m!526129 () Bool)

(assert (=> b!549241 m!526129))

(declare-fun m!526131 () Bool)

(assert (=> b!549239 m!526131))

(assert (=> b!549239 m!526131))

(declare-fun m!526133 () Bool)

(assert (=> b!549239 m!526133))

(assert (=> b!549240 m!526131))

(declare-fun m!526135 () Bool)

(assert (=> b!549240 m!526135))

(declare-fun m!526137 () Bool)

(assert (=> b!549240 m!526137))

(declare-fun m!526139 () Bool)

(assert (=> b!549240 m!526139))

(assert (=> b!549240 m!526131))

(assert (=> b!549240 m!526137))

(declare-fun m!526141 () Bool)

(assert (=> b!549240 m!526141))

(assert (=> b!549240 m!526131))

(declare-fun m!526143 () Bool)

(assert (=> b!549240 m!526143))

(assert (=> b!549240 m!526137))

(declare-fun m!526145 () Bool)

(assert (=> b!549240 m!526145))

(declare-fun m!526147 () Bool)

(assert (=> start!50216 m!526147))

(declare-fun m!526149 () Bool)

(assert (=> start!50216 m!526149))

(declare-fun m!526151 () Bool)

(assert (=> b!549242 m!526151))

(push 1)

