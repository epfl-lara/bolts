; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50240 () Bool)

(assert start!50240)

(declare-fun b!549526 () Bool)

(declare-fun res!342822 () Bool)

(declare-fun e!317341 () Bool)

(assert (=> b!549526 (=> (not res!342822) (not e!317341))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!549526 (= res!342822 (validKeyInArray!0 k!1914))))

(declare-fun b!549527 () Bool)

(declare-fun e!317340 () Bool)

(assert (=> b!549527 (= e!317341 e!317340)))

(declare-fun res!342824 () Bool)

(assert (=> b!549527 (=> (not res!342824) (not e!317340))))

(declare-datatypes ((SeekEntryResult!5091 0))(
  ( (MissingZero!5091 (index!22591 (_ BitVec 32))) (Found!5091 (index!22592 (_ BitVec 32))) (Intermediate!5091 (undefined!5903 Bool) (index!22593 (_ BitVec 32)) (x!51552 (_ BitVec 32))) (Undefined!5091) (MissingVacant!5091 (index!22594 (_ BitVec 32))) )
))
(declare-fun lt!250271 () SeekEntryResult!5091)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!549527 (= res!342824 (or (= lt!250271 (MissingZero!5091 i!1132)) (= lt!250271 (MissingVacant!5091 i!1132))))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-datatypes ((array!34647 0))(
  ( (array!34648 (arr!16635 (Array (_ BitVec 32) (_ BitVec 64))) (size!16999 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34647)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34647 (_ BitVec 32)) SeekEntryResult!5091)

(assert (=> b!549527 (= lt!250271 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!549528 () Bool)

(declare-fun res!342825 () Bool)

(assert (=> b!549528 (=> (not res!342825) (not e!317341))))

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!549528 (= res!342825 (and (= (size!16999 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!16999 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!16999 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!549529 () Bool)

(assert (=> b!549529 (= e!317340 false)))

(declare-fun lt!250268 () (_ BitVec 32))

(declare-fun lt!250270 () SeekEntryResult!5091)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34647 (_ BitVec 32)) SeekEntryResult!5091)

(assert (=> b!549529 (= lt!250270 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!250268 (select (store (arr!16635 a!3118) i!1132 k!1914) j!142) (array!34648 (store (arr!16635 a!3118) i!1132 k!1914) (size!16999 a!3118)) mask!3119))))

(declare-fun lt!250269 () SeekEntryResult!5091)

(declare-fun lt!250267 () (_ BitVec 32))

(assert (=> b!549529 (= lt!250269 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!250267 (select (arr!16635 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!549529 (= lt!250268 (toIndex!0 (select (store (arr!16635 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!549529 (= lt!250267 (toIndex!0 (select (arr!16635 a!3118) j!142) mask!3119))))

(declare-fun b!549530 () Bool)

(declare-fun res!342820 () Bool)

(assert (=> b!549530 (=> (not res!342820) (not e!317340))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34647 (_ BitVec 32)) Bool)

(assert (=> b!549530 (= res!342820 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!549531 () Bool)

(declare-fun res!342827 () Bool)

(assert (=> b!549531 (=> (not res!342827) (not e!317340))))

(declare-datatypes ((List!10768 0))(
  ( (Nil!10765) (Cons!10764 (h!11737 (_ BitVec 64)) (t!17004 List!10768)) )
))
(declare-fun arrayNoDuplicates!0 (array!34647 (_ BitVec 32) List!10768) Bool)

(assert (=> b!549531 (= res!342827 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10765))))

(declare-fun b!549533 () Bool)

(declare-fun res!342823 () Bool)

(assert (=> b!549533 (=> (not res!342823) (not e!317341))))

(assert (=> b!549533 (= res!342823 (validKeyInArray!0 (select (arr!16635 a!3118) j!142)))))

(declare-fun b!549532 () Bool)

(declare-fun res!342821 () Bool)

(assert (=> b!549532 (=> (not res!342821) (not e!317341))))

(declare-fun arrayContainsKey!0 (array!34647 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!549532 (= res!342821 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun res!342826 () Bool)

(assert (=> start!50240 (=> (not res!342826) (not e!317341))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50240 (= res!342826 (validMask!0 mask!3119))))

(assert (=> start!50240 e!317341))

(assert (=> start!50240 true))

(declare-fun array_inv!12409 (array!34647) Bool)

(assert (=> start!50240 (array_inv!12409 a!3118)))

(assert (= (and start!50240 res!342826) b!549528))

(assert (= (and b!549528 res!342825) b!549533))

(assert (= (and b!549533 res!342823) b!549526))

(assert (= (and b!549526 res!342822) b!549532))

(assert (= (and b!549532 res!342821) b!549527))

(assert (= (and b!549527 res!342824) b!549530))

(assert (= (and b!549530 res!342820) b!549531))

(assert (= (and b!549531 res!342827) b!549529))

(declare-fun m!526483 () Bool)

(assert (=> b!549526 m!526483))

(declare-fun m!526485 () Bool)

(assert (=> b!549533 m!526485))

(assert (=> b!549533 m!526485))

(declare-fun m!526487 () Bool)

(assert (=> b!549533 m!526487))

(declare-fun m!526489 () Bool)

(assert (=> b!549531 m!526489))

(declare-fun m!526491 () Bool)

(assert (=> b!549532 m!526491))

(declare-fun m!526493 () Bool)

(assert (=> b!549527 m!526493))

(assert (=> b!549529 m!526485))

(declare-fun m!526495 () Bool)

(assert (=> b!549529 m!526495))

(assert (=> b!549529 m!526485))

(assert (=> b!549529 m!526485))

(declare-fun m!526497 () Bool)

(assert (=> b!549529 m!526497))

(declare-fun m!526499 () Bool)

(assert (=> b!549529 m!526499))

(declare-fun m!526501 () Bool)

(assert (=> b!549529 m!526501))

(assert (=> b!549529 m!526499))

(declare-fun m!526503 () Bool)

(assert (=> b!549529 m!526503))

(assert (=> b!549529 m!526499))

(declare-fun m!526505 () Bool)

(assert (=> b!549529 m!526505))

(declare-fun m!526507 () Bool)

(assert (=> b!549530 m!526507))

(declare-fun m!526509 () Bool)

(assert (=> start!50240 m!526509))

(declare-fun m!526511 () Bool)

(assert (=> start!50240 m!526511))

(push 1)

