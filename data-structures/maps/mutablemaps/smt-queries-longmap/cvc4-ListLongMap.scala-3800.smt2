; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!52176 () Bool)

(assert start!52176)

(declare-fun b!569097 () Bool)

(declare-fun res!359266 () Bool)

(declare-fun e!327409 () Bool)

(assert (=> b!569097 (=> (not res!359266) (not e!327409))))

(declare-datatypes ((array!35653 0))(
  ( (array!35654 (arr!17114 (Array (_ BitVec 32) (_ BitVec 64))) (size!17478 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35653)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!569097 (= res!359266 (validKeyInArray!0 (select (arr!17114 a!3118) j!142)))))

(declare-fun b!569098 () Bool)

(declare-fun res!359270 () Bool)

(declare-fun e!327407 () Bool)

(assert (=> b!569098 (=> (not res!359270) (not e!327407))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35653 (_ BitVec 32)) Bool)

(assert (=> b!569098 (= res!359270 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun res!359273 () Bool)

(assert (=> start!52176 (=> (not res!359273) (not e!327409))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52176 (= res!359273 (validMask!0 mask!3119))))

(assert (=> start!52176 e!327409))

(assert (=> start!52176 true))

(declare-fun array_inv!12888 (array!35653) Bool)

(assert (=> start!52176 (array_inv!12888 a!3118)))

(declare-fun b!569099 () Bool)

(assert (=> b!569099 (= e!327409 e!327407)))

(declare-fun res!359272 () Bool)

(assert (=> b!569099 (=> (not res!359272) (not e!327407))))

(declare-datatypes ((SeekEntryResult!5570 0))(
  ( (MissingZero!5570 (index!24507 (_ BitVec 32))) (Found!5570 (index!24508 (_ BitVec 32))) (Intermediate!5570 (undefined!6382 Bool) (index!24509 (_ BitVec 32)) (x!53408 (_ BitVec 32))) (Undefined!5570) (MissingVacant!5570 (index!24510 (_ BitVec 32))) )
))
(declare-fun lt!259407 () SeekEntryResult!5570)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!569099 (= res!359272 (or (= lt!259407 (MissingZero!5570 i!1132)) (= lt!259407 (MissingVacant!5570 i!1132))))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35653 (_ BitVec 32)) SeekEntryResult!5570)

(assert (=> b!569099 (= lt!259407 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!569100 () Bool)

(declare-fun res!359265 () Bool)

(assert (=> b!569100 (=> (not res!359265) (not e!327407))))

(declare-datatypes ((List!11247 0))(
  ( (Nil!11244) (Cons!11243 (h!12264 (_ BitVec 64)) (t!17483 List!11247)) )
))
(declare-fun arrayNoDuplicates!0 (array!35653 (_ BitVec 32) List!11247) Bool)

(assert (=> b!569100 (= res!359265 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11244))))

(declare-fun b!569101 () Bool)

(declare-fun e!327406 () Bool)

(assert (=> b!569101 (= e!327407 e!327406)))

(declare-fun res!359269 () Bool)

(assert (=> b!569101 (=> (not res!359269) (not e!327406))))

(declare-fun lt!259408 () (_ BitVec 32))

(declare-fun lt!259411 () SeekEntryResult!5570)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35653 (_ BitVec 32)) SeekEntryResult!5570)

(assert (=> b!569101 (= res!359269 (= lt!259411 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!259408 (select (store (arr!17114 a!3118) i!1132 k!1914) j!142) (array!35654 (store (arr!17114 a!3118) i!1132 k!1914) (size!17478 a!3118)) mask!3119)))))

(declare-fun lt!259410 () (_ BitVec 32))

(assert (=> b!569101 (= lt!259411 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!259410 (select (arr!17114 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!569101 (= lt!259408 (toIndex!0 (select (store (arr!17114 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!569101 (= lt!259410 (toIndex!0 (select (arr!17114 a!3118) j!142) mask!3119))))

(declare-fun b!569102 () Bool)

(declare-fun res!359271 () Bool)

(assert (=> b!569102 (=> (not res!359271) (not e!327409))))

(declare-fun arrayContainsKey!0 (array!35653 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!569102 (= res!359271 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!569103 () Bool)

(assert (=> b!569103 (= e!327406 (not true))))

(declare-fun lt!259412 () SeekEntryResult!5570)

(assert (=> b!569103 (and (= lt!259412 (Found!5570 j!142)) (or (undefined!6382 lt!259411) (not (is-Intermediate!5570 lt!259411)) (= (select (arr!17114 a!3118) (index!24509 lt!259411)) (select (arr!17114 a!3118) j!142)) (not (= (select (arr!17114 a!3118) (index!24509 lt!259411)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= lt!259412 (MissingZero!5570 (index!24509 lt!259411)))))))

(assert (=> b!569103 (= lt!259412 (seekEntryOrOpen!0 (select (arr!17114 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!569103 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17842 0))(
  ( (Unit!17843) )
))
(declare-fun lt!259409 () Unit!17842)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35653 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17842)

(assert (=> b!569103 (= lt!259409 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!569104 () Bool)

(declare-fun res!359268 () Bool)

(assert (=> b!569104 (=> (not res!359268) (not e!327409))))

(assert (=> b!569104 (= res!359268 (validKeyInArray!0 k!1914))))

(declare-fun b!569105 () Bool)

(declare-fun res!359267 () Bool)

(assert (=> b!569105 (=> (not res!359267) (not e!327409))))

(assert (=> b!569105 (= res!359267 (and (= (size!17478 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17478 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17478 a!3118)) (not (= i!1132 j!142))))))

(assert (= (and start!52176 res!359273) b!569105))

(assert (= (and b!569105 res!359267) b!569097))

(assert (= (and b!569097 res!359266) b!569104))

(assert (= (and b!569104 res!359268) b!569102))

(assert (= (and b!569102 res!359271) b!569099))

(assert (= (and b!569099 res!359272) b!569098))

(assert (= (and b!569098 res!359270) b!569100))

(assert (= (and b!569100 res!359265) b!569101))

(assert (= (and b!569101 res!359269) b!569103))

(declare-fun m!547805 () Bool)

(assert (=> b!569101 m!547805))

(declare-fun m!547807 () Bool)

(assert (=> b!569101 m!547807))

(assert (=> b!569101 m!547805))

(declare-fun m!547809 () Bool)

(assert (=> b!569101 m!547809))

(declare-fun m!547811 () Bool)

(assert (=> b!569101 m!547811))

(declare-fun m!547813 () Bool)

(assert (=> b!569101 m!547813))

(assert (=> b!569101 m!547809))

(declare-fun m!547815 () Bool)

(assert (=> b!569101 m!547815))

(assert (=> b!569101 m!547805))

(declare-fun m!547817 () Bool)

(assert (=> b!569101 m!547817))

(assert (=> b!569101 m!547809))

(declare-fun m!547819 () Bool)

(assert (=> b!569098 m!547819))

(declare-fun m!547821 () Bool)

(assert (=> b!569102 m!547821))

(assert (=> b!569097 m!547805))

(assert (=> b!569097 m!547805))

(declare-fun m!547823 () Bool)

(assert (=> b!569097 m!547823))

(declare-fun m!547825 () Bool)

(assert (=> b!569104 m!547825))

(declare-fun m!547827 () Bool)

(assert (=> start!52176 m!547827))

(declare-fun m!547829 () Bool)

(assert (=> start!52176 m!547829))

(assert (=> b!569103 m!547805))

(declare-fun m!547831 () Bool)

(assert (=> b!569103 m!547831))

(declare-fun m!547833 () Bool)

(assert (=> b!569103 m!547833))

(declare-fun m!547835 () Bool)

(assert (=> b!569103 m!547835))

(assert (=> b!569103 m!547805))

(declare-fun m!547837 () Bool)

(assert (=> b!569103 m!547837))

(declare-fun m!547839 () Bool)

(assert (=> b!569100 m!547839))

(declare-fun m!547841 () Bool)

(assert (=> b!569099 m!547841))

(push 1)

