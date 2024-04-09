; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50234 () Bool)

(assert start!50234)

(declare-fun b!549454 () Bool)

(declare-fun res!342755 () Bool)

(declare-fun e!317314 () Bool)

(assert (=> b!549454 (=> (not res!342755) (not e!317314))))

(declare-datatypes ((array!34641 0))(
  ( (array!34642 (arr!16632 (Array (_ BitVec 32) (_ BitVec 64))) (size!16996 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34641)

(declare-datatypes ((List!10765 0))(
  ( (Nil!10762) (Cons!10761 (h!11734 (_ BitVec 64)) (t!17001 List!10765)) )
))
(declare-fun arrayNoDuplicates!0 (array!34641 (_ BitVec 32) List!10765) Bool)

(assert (=> b!549454 (= res!342755 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10762))))

(declare-fun b!549455 () Bool)

(declare-fun res!342749 () Bool)

(declare-fun e!317312 () Bool)

(assert (=> b!549455 (=> (not res!342749) (not e!317312))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!549455 (= res!342749 (and (= (size!16996 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!16996 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!16996 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!549456 () Bool)

(declare-fun res!342751 () Bool)

(assert (=> b!549456 (=> (not res!342751) (not e!317312))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!549456 (= res!342751 (validKeyInArray!0 (select (arr!16632 a!3118) j!142)))))

(declare-fun b!549457 () Bool)

(assert (=> b!549457 (= e!317312 e!317314)))

(declare-fun res!342748 () Bool)

(assert (=> b!549457 (=> (not res!342748) (not e!317314))))

(declare-datatypes ((SeekEntryResult!5088 0))(
  ( (MissingZero!5088 (index!22579 (_ BitVec 32))) (Found!5088 (index!22580 (_ BitVec 32))) (Intermediate!5088 (undefined!5900 Bool) (index!22581 (_ BitVec 32)) (x!51541 (_ BitVec 32))) (Undefined!5088) (MissingVacant!5088 (index!22582 (_ BitVec 32))) )
))
(declare-fun lt!250226 () SeekEntryResult!5088)

(assert (=> b!549457 (= res!342748 (or (= lt!250226 (MissingZero!5088 i!1132)) (= lt!250226 (MissingVacant!5088 i!1132))))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34641 (_ BitVec 32)) SeekEntryResult!5088)

(assert (=> b!549457 (= lt!250226 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun res!342754 () Bool)

(assert (=> start!50234 (=> (not res!342754) (not e!317312))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50234 (= res!342754 (validMask!0 mask!3119))))

(assert (=> start!50234 e!317312))

(assert (=> start!50234 true))

(declare-fun array_inv!12406 (array!34641) Bool)

(assert (=> start!50234 (array_inv!12406 a!3118)))

(declare-fun b!549458 () Bool)

(declare-fun res!342750 () Bool)

(assert (=> b!549458 (=> (not res!342750) (not e!317312))))

(assert (=> b!549458 (= res!342750 (validKeyInArray!0 k!1914))))

(declare-fun b!549459 () Bool)

(declare-fun res!342752 () Bool)

(assert (=> b!549459 (=> (not res!342752) (not e!317312))))

(declare-fun arrayContainsKey!0 (array!34641 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!549459 (= res!342752 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!549460 () Bool)

(declare-fun res!342753 () Bool)

(assert (=> b!549460 (=> (not res!342753) (not e!317314))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34641 (_ BitVec 32)) Bool)

(assert (=> b!549460 (= res!342753 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!549461 () Bool)

(assert (=> b!549461 (= e!317314 false)))

(declare-fun lt!250223 () (_ BitVec 32))

(declare-fun lt!250222 () SeekEntryResult!5088)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34641 (_ BitVec 32)) SeekEntryResult!5088)

(assert (=> b!549461 (= lt!250222 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!250223 (select (store (arr!16632 a!3118) i!1132 k!1914) j!142) (array!34642 (store (arr!16632 a!3118) i!1132 k!1914) (size!16996 a!3118)) mask!3119))))

(declare-fun lt!250225 () SeekEntryResult!5088)

(declare-fun lt!250224 () (_ BitVec 32))

(assert (=> b!549461 (= lt!250225 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!250224 (select (arr!16632 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!549461 (= lt!250223 (toIndex!0 (select (store (arr!16632 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!549461 (= lt!250224 (toIndex!0 (select (arr!16632 a!3118) j!142) mask!3119))))

(assert (= (and start!50234 res!342754) b!549455))

(assert (= (and b!549455 res!342749) b!549456))

(assert (= (and b!549456 res!342751) b!549458))

(assert (= (and b!549458 res!342750) b!549459))

(assert (= (and b!549459 res!342752) b!549457))

(assert (= (and b!549457 res!342748) b!549460))

(assert (= (and b!549460 res!342753) b!549454))

(assert (= (and b!549454 res!342755) b!549461))

(declare-fun m!526393 () Bool)

(assert (=> b!549459 m!526393))

(declare-fun m!526395 () Bool)

(assert (=> b!549458 m!526395))

(declare-fun m!526397 () Bool)

(assert (=> b!549461 m!526397))

(declare-fun m!526399 () Bool)

(assert (=> b!549461 m!526399))

(assert (=> b!549461 m!526397))

(declare-fun m!526401 () Bool)

(assert (=> b!549461 m!526401))

(declare-fun m!526403 () Bool)

(assert (=> b!549461 m!526403))

(assert (=> b!549461 m!526401))

(declare-fun m!526405 () Bool)

(assert (=> b!549461 m!526405))

(assert (=> b!549461 m!526397))

(declare-fun m!526407 () Bool)

(assert (=> b!549461 m!526407))

(assert (=> b!549461 m!526401))

(declare-fun m!526409 () Bool)

(assert (=> b!549461 m!526409))

(declare-fun m!526411 () Bool)

(assert (=> b!549460 m!526411))

(declare-fun m!526413 () Bool)

(assert (=> b!549457 m!526413))

(declare-fun m!526415 () Bool)

(assert (=> start!50234 m!526415))

(declare-fun m!526417 () Bool)

(assert (=> start!50234 m!526417))

(declare-fun m!526419 () Bool)

(assert (=> b!549454 m!526419))

(assert (=> b!549456 m!526397))

(assert (=> b!549456 m!526397))

(declare-fun m!526421 () Bool)

(assert (=> b!549456 m!526421))

(push 1)

