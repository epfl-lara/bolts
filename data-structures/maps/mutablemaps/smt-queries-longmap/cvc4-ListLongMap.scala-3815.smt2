; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!52332 () Bool)

(assert start!52332)

(declare-fun b!570790 () Bool)

(declare-fun res!360721 () Bool)

(declare-fun e!328277 () Bool)

(assert (=> b!570790 (=> (not res!360721) (not e!328277))))

(declare-datatypes ((array!35746 0))(
  ( (array!35747 (arr!17159 (Array (_ BitVec 32) (_ BitVec 64))) (size!17523 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35746)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35746 (_ BitVec 32)) Bool)

(assert (=> b!570790 (= res!360721 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!570791 () Bool)

(declare-fun res!360726 () Bool)

(declare-fun e!328279 () Bool)

(assert (=> b!570791 (=> (not res!360726) (not e!328279))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!570791 (= res!360726 (validKeyInArray!0 (select (arr!17159 a!3118) j!142)))))

(declare-fun b!570792 () Bool)

(declare-fun res!360731 () Bool)

(assert (=> b!570792 (=> (not res!360731) (not e!328279))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!35746 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!570792 (= res!360731 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!570793 () Bool)

(declare-fun res!360728 () Bool)

(assert (=> b!570793 (=> (not res!360728) (not e!328279))))

(assert (=> b!570793 (= res!360728 (validKeyInArray!0 k!1914))))

(declare-fun b!570794 () Bool)

(declare-fun res!360724 () Bool)

(assert (=> b!570794 (=> (not res!360724) (not e!328279))))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!570794 (= res!360724 (and (= (size!17523 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17523 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17523 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!570795 () Bool)

(declare-fun res!360727 () Bool)

(assert (=> b!570795 (=> (not res!360727) (not e!328277))))

(declare-datatypes ((List!11292 0))(
  ( (Nil!11289) (Cons!11288 (h!12312 (_ BitVec 64)) (t!17528 List!11292)) )
))
(declare-fun arrayNoDuplicates!0 (array!35746 (_ BitVec 32) List!11292) Bool)

(assert (=> b!570795 (= res!360727 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11289))))

(declare-fun b!570797 () Bool)

(assert (=> b!570797 (= e!328279 e!328277)))

(declare-fun res!360730 () Bool)

(assert (=> b!570797 (=> (not res!360730) (not e!328277))))

(declare-datatypes ((SeekEntryResult!5615 0))(
  ( (MissingZero!5615 (index!24687 (_ BitVec 32))) (Found!5615 (index!24688 (_ BitVec 32))) (Intermediate!5615 (undefined!6427 Bool) (index!24689 (_ BitVec 32)) (x!53582 (_ BitVec 32))) (Undefined!5615) (MissingVacant!5615 (index!24690 (_ BitVec 32))) )
))
(declare-fun lt!260292 () SeekEntryResult!5615)

(assert (=> b!570797 (= res!360730 (or (= lt!260292 (MissingZero!5615 i!1132)) (= lt!260292 (MissingVacant!5615 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35746 (_ BitVec 32)) SeekEntryResult!5615)

(assert (=> b!570797 (= lt!260292 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!570798 () Bool)

(declare-fun e!328274 () Bool)

(assert (=> b!570798 (= e!328274 (not true))))

(declare-fun e!328276 () Bool)

(assert (=> b!570798 e!328276))

(declare-fun res!360722 () Bool)

(assert (=> b!570798 (=> (not res!360722) (not e!328276))))

(declare-fun lt!260293 () SeekEntryResult!5615)

(assert (=> b!570798 (= res!360722 (= lt!260293 (Found!5615 j!142)))))

(assert (=> b!570798 (= lt!260293 (seekEntryOrOpen!0 (select (arr!17159 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!570798 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17932 0))(
  ( (Unit!17933) )
))
(declare-fun lt!260297 () Unit!17932)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35746 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17932)

(assert (=> b!570798 (= lt!260297 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!570796 () Bool)

(declare-fun lt!260295 () SeekEntryResult!5615)

(declare-fun e!328275 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35746 (_ BitVec 32)) SeekEntryResult!5615)

(assert (=> b!570796 (= e!328275 (= lt!260293 (seekKeyOrZeroReturnVacant!0 (x!53582 lt!260295) (index!24689 lt!260295) (index!24689 lt!260295) (select (arr!17159 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun res!360723 () Bool)

(assert (=> start!52332 (=> (not res!360723) (not e!328279))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52332 (= res!360723 (validMask!0 mask!3119))))

(assert (=> start!52332 e!328279))

(assert (=> start!52332 true))

(declare-fun array_inv!12933 (array!35746) Bool)

(assert (=> start!52332 (array_inv!12933 a!3118)))

(declare-fun b!570799 () Bool)

(assert (=> b!570799 (= e!328277 e!328274)))

(declare-fun res!360725 () Bool)

(assert (=> b!570799 (=> (not res!360725) (not e!328274))))

(declare-fun lt!260294 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35746 (_ BitVec 32)) SeekEntryResult!5615)

(assert (=> b!570799 (= res!360725 (= lt!260295 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!260294 (select (store (arr!17159 a!3118) i!1132 k!1914) j!142) (array!35747 (store (arr!17159 a!3118) i!1132 k!1914) (size!17523 a!3118)) mask!3119)))))

(declare-fun lt!260296 () (_ BitVec 32))

(assert (=> b!570799 (= lt!260295 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!260296 (select (arr!17159 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!570799 (= lt!260294 (toIndex!0 (select (store (arr!17159 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!570799 (= lt!260296 (toIndex!0 (select (arr!17159 a!3118) j!142) mask!3119))))

(declare-fun b!570800 () Bool)

(assert (=> b!570800 (= e!328276 e!328275)))

(declare-fun res!360729 () Bool)

(assert (=> b!570800 (=> res!360729 e!328275)))

(assert (=> b!570800 (= res!360729 (or (undefined!6427 lt!260295) (not (is-Intermediate!5615 lt!260295)) (= (select (arr!17159 a!3118) (index!24689 lt!260295)) (select (arr!17159 a!3118) j!142)) (= (select (arr!17159 a!3118) (index!24689 lt!260295)) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!52332 res!360723) b!570794))

(assert (= (and b!570794 res!360724) b!570791))

(assert (= (and b!570791 res!360726) b!570793))

(assert (= (and b!570793 res!360728) b!570792))

(assert (= (and b!570792 res!360731) b!570797))

(assert (= (and b!570797 res!360730) b!570790))

(assert (= (and b!570790 res!360721) b!570795))

(assert (= (and b!570795 res!360727) b!570799))

(assert (= (and b!570799 res!360725) b!570798))

(assert (= (and b!570798 res!360722) b!570800))

(assert (= (and b!570800 (not res!360729)) b!570796))

(declare-fun m!549771 () Bool)

(assert (=> b!570798 m!549771))

(assert (=> b!570798 m!549771))

(declare-fun m!549773 () Bool)

(assert (=> b!570798 m!549773))

(declare-fun m!549775 () Bool)

(assert (=> b!570798 m!549775))

(declare-fun m!549777 () Bool)

(assert (=> b!570798 m!549777))

(declare-fun m!549779 () Bool)

(assert (=> b!570797 m!549779))

(assert (=> b!570799 m!549771))

(declare-fun m!549781 () Bool)

(assert (=> b!570799 m!549781))

(declare-fun m!549783 () Bool)

(assert (=> b!570799 m!549783))

(declare-fun m!549785 () Bool)

(assert (=> b!570799 m!549785))

(assert (=> b!570799 m!549783))

(declare-fun m!549787 () Bool)

(assert (=> b!570799 m!549787))

(assert (=> b!570799 m!549783))

(declare-fun m!549789 () Bool)

(assert (=> b!570799 m!549789))

(assert (=> b!570799 m!549771))

(declare-fun m!549791 () Bool)

(assert (=> b!570799 m!549791))

(assert (=> b!570799 m!549771))

(declare-fun m!549793 () Bool)

(assert (=> start!52332 m!549793))

(declare-fun m!549795 () Bool)

(assert (=> start!52332 m!549795))

(declare-fun m!549797 () Bool)

(assert (=> b!570800 m!549797))

(assert (=> b!570800 m!549771))

(assert (=> b!570796 m!549771))

(assert (=> b!570796 m!549771))

(declare-fun m!549799 () Bool)

(assert (=> b!570796 m!549799))

(declare-fun m!549801 () Bool)

(assert (=> b!570795 m!549801))

(assert (=> b!570791 m!549771))

(assert (=> b!570791 m!549771))

(declare-fun m!549803 () Bool)

(assert (=> b!570791 m!549803))

(declare-fun m!549805 () Bool)

(assert (=> b!570790 m!549805))

(declare-fun m!549807 () Bool)

(assert (=> b!570792 m!549807))

(declare-fun m!549809 () Bool)

(assert (=> b!570793 m!549809))

(push 1)

