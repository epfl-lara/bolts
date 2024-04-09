; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50244 () Bool)

(assert start!50244)

(declare-fun b!549574 () Bool)

(declare-fun res!342868 () Bool)

(declare-fun e!317359 () Bool)

(assert (=> b!549574 (=> (not res!342868) (not e!317359))))

(declare-datatypes ((array!34651 0))(
  ( (array!34652 (arr!16637 (Array (_ BitVec 32) (_ BitVec 64))) (size!17001 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34651)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34651 (_ BitVec 32)) Bool)

(assert (=> b!549574 (= res!342868 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!549575 () Bool)

(declare-fun res!342869 () Bool)

(declare-fun e!317357 () Bool)

(assert (=> b!549575 (=> (not res!342869) (not e!317357))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!549575 (= res!342869 (validKeyInArray!0 (select (arr!16637 a!3118) j!142)))))

(declare-fun res!342871 () Bool)

(assert (=> start!50244 (=> (not res!342871) (not e!317357))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50244 (= res!342871 (validMask!0 mask!3119))))

(assert (=> start!50244 e!317357))

(assert (=> start!50244 true))

(declare-fun array_inv!12411 (array!34651) Bool)

(assert (=> start!50244 (array_inv!12411 a!3118)))

(declare-fun b!549576 () Bool)

(assert (=> b!549576 (= e!317357 e!317359)))

(declare-fun res!342874 () Bool)

(assert (=> b!549576 (=> (not res!342874) (not e!317359))))

(declare-datatypes ((SeekEntryResult!5093 0))(
  ( (MissingZero!5093 (index!22599 (_ BitVec 32))) (Found!5093 (index!22600 (_ BitVec 32))) (Intermediate!5093 (undefined!5905 Bool) (index!22601 (_ BitVec 32)) (x!51554 (_ BitVec 32))) (Undefined!5093) (MissingVacant!5093 (index!22602 (_ BitVec 32))) )
))
(declare-fun lt!250298 () SeekEntryResult!5093)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!549576 (= res!342874 (or (= lt!250298 (MissingZero!5093 i!1132)) (= lt!250298 (MissingVacant!5093 i!1132))))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34651 (_ BitVec 32)) SeekEntryResult!5093)

(assert (=> b!549576 (= lt!250298 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!549577 () Bool)

(declare-fun res!342870 () Bool)

(assert (=> b!549577 (=> (not res!342870) (not e!317357))))

(assert (=> b!549577 (= res!342870 (and (= (size!17001 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17001 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17001 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!549578 () Bool)

(declare-fun res!342873 () Bool)

(assert (=> b!549578 (=> (not res!342873) (not e!317357))))

(assert (=> b!549578 (= res!342873 (validKeyInArray!0 k!1914))))

(declare-fun b!549579 () Bool)

(assert (=> b!549579 (= e!317359 false)))

(declare-fun lt!250299 () SeekEntryResult!5093)

(declare-fun lt!250301 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34651 (_ BitVec 32)) SeekEntryResult!5093)

(assert (=> b!549579 (= lt!250299 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!250301 (select (store (arr!16637 a!3118) i!1132 k!1914) j!142) (array!34652 (store (arr!16637 a!3118) i!1132 k!1914) (size!17001 a!3118)) mask!3119))))

(declare-fun lt!250297 () (_ BitVec 32))

(declare-fun lt!250300 () SeekEntryResult!5093)

(assert (=> b!549579 (= lt!250300 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!250297 (select (arr!16637 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!549579 (= lt!250301 (toIndex!0 (select (store (arr!16637 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!549579 (= lt!250297 (toIndex!0 (select (arr!16637 a!3118) j!142) mask!3119))))

(declare-fun b!549580 () Bool)

(declare-fun res!342872 () Bool)

(assert (=> b!549580 (=> (not res!342872) (not e!317359))))

(declare-datatypes ((List!10770 0))(
  ( (Nil!10767) (Cons!10766 (h!11739 (_ BitVec 64)) (t!17006 List!10770)) )
))
(declare-fun arrayNoDuplicates!0 (array!34651 (_ BitVec 32) List!10770) Bool)

(assert (=> b!549580 (= res!342872 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10767))))

(declare-fun b!549581 () Bool)

(declare-fun res!342875 () Bool)

(assert (=> b!549581 (=> (not res!342875) (not e!317357))))

(declare-fun arrayContainsKey!0 (array!34651 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!549581 (= res!342875 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(assert (= (and start!50244 res!342871) b!549577))

(assert (= (and b!549577 res!342870) b!549575))

(assert (= (and b!549575 res!342869) b!549578))

(assert (= (and b!549578 res!342873) b!549581))

(assert (= (and b!549581 res!342875) b!549576))

(assert (= (and b!549576 res!342874) b!549574))

(assert (= (and b!549574 res!342868) b!549580))

(assert (= (and b!549580 res!342872) b!549579))

(declare-fun m!526543 () Bool)

(assert (=> b!549578 m!526543))

(declare-fun m!526545 () Bool)

(assert (=> b!549581 m!526545))

(declare-fun m!526547 () Bool)

(assert (=> start!50244 m!526547))

(declare-fun m!526549 () Bool)

(assert (=> start!50244 m!526549))

(declare-fun m!526551 () Bool)

(assert (=> b!549579 m!526551))

(declare-fun m!526553 () Bool)

(assert (=> b!549579 m!526553))

(assert (=> b!549579 m!526551))

(declare-fun m!526555 () Bool)

(assert (=> b!549579 m!526555))

(declare-fun m!526557 () Bool)

(assert (=> b!549579 m!526557))

(declare-fun m!526559 () Bool)

(assert (=> b!549579 m!526559))

(assert (=> b!549579 m!526557))

(declare-fun m!526561 () Bool)

(assert (=> b!549579 m!526561))

(assert (=> b!549579 m!526557))

(assert (=> b!549579 m!526551))

(declare-fun m!526563 () Bool)

(assert (=> b!549579 m!526563))

(declare-fun m!526565 () Bool)

(assert (=> b!549576 m!526565))

(assert (=> b!549575 m!526551))

(assert (=> b!549575 m!526551))

(declare-fun m!526567 () Bool)

(assert (=> b!549575 m!526567))

(declare-fun m!526569 () Bool)

(assert (=> b!549580 m!526569))

(declare-fun m!526571 () Bool)

(assert (=> b!549574 m!526571))

(push 1)

(assert (not start!50244))

(assert (not b!549580))

(assert (not b!549576))

(assert (not b!549579))

