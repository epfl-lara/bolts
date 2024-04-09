; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51608 () Bool)

(assert start!51608)

(declare-fun b!564343 () Bool)

(declare-fun res!355646 () Bool)

(declare-fun e!325050 () Bool)

(assert (=> b!564343 (=> (not res!355646) (not e!325050))))

(declare-datatypes ((array!35427 0))(
  ( (array!35428 (arr!17010 (Array (_ BitVec 32) (_ BitVec 64))) (size!17374 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35427)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35427 (_ BitVec 32)) Bool)

(assert (=> b!564343 (= res!355646 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!564344 () Bool)

(declare-fun res!355650 () Bool)

(declare-fun e!325051 () Bool)

(assert (=> b!564344 (=> (not res!355650) (not e!325051))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!564344 (= res!355650 (validKeyInArray!0 k!1914))))

(declare-fun b!564345 () Bool)

(assert (=> b!564345 (= e!325050 false)))

(declare-fun j!142 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5466 0))(
  ( (MissingZero!5466 (index!24091 (_ BitVec 32))) (Found!5466 (index!24092 (_ BitVec 32))) (Intermediate!5466 (undefined!6278 Bool) (index!24093 (_ BitVec 32)) (x!52996 (_ BitVec 32))) (Undefined!5466) (MissingVacant!5466 (index!24094 (_ BitVec 32))) )
))
(declare-fun lt!257528 () SeekEntryResult!5466)

(declare-fun i!1132 () (_ BitVec 32))

(declare-fun lt!257527 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35427 (_ BitVec 32)) SeekEntryResult!5466)

(assert (=> b!564345 (= lt!257528 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!257527 (select (store (arr!17010 a!3118) i!1132 k!1914) j!142) (array!35428 (store (arr!17010 a!3118) i!1132 k!1914) (size!17374 a!3118)) mask!3119))))

(declare-fun lt!257526 () (_ BitVec 32))

(declare-fun lt!257524 () SeekEntryResult!5466)

(assert (=> b!564345 (= lt!257524 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!257526 (select (arr!17010 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!564345 (= lt!257527 (toIndex!0 (select (store (arr!17010 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!564345 (= lt!257526 (toIndex!0 (select (arr!17010 a!3118) j!142) mask!3119))))

(declare-fun b!564346 () Bool)

(assert (=> b!564346 (= e!325051 e!325050)))

(declare-fun res!355648 () Bool)

(assert (=> b!564346 (=> (not res!355648) (not e!325050))))

(declare-fun lt!257525 () SeekEntryResult!5466)

(assert (=> b!564346 (= res!355648 (or (= lt!257525 (MissingZero!5466 i!1132)) (= lt!257525 (MissingVacant!5466 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35427 (_ BitVec 32)) SeekEntryResult!5466)

(assert (=> b!564346 (= lt!257525 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!564348 () Bool)

(declare-fun res!355647 () Bool)

(assert (=> b!564348 (=> (not res!355647) (not e!325051))))

(assert (=> b!564348 (= res!355647 (validKeyInArray!0 (select (arr!17010 a!3118) j!142)))))

(declare-fun b!564349 () Bool)

(declare-fun res!355649 () Bool)

(assert (=> b!564349 (=> (not res!355649) (not e!325051))))

(assert (=> b!564349 (= res!355649 (and (= (size!17374 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17374 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17374 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!564350 () Bool)

(declare-fun res!355645 () Bool)

(assert (=> b!564350 (=> (not res!355645) (not e!325051))))

(declare-fun arrayContainsKey!0 (array!35427 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!564350 (= res!355645 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!564347 () Bool)

(declare-fun res!355651 () Bool)

(assert (=> b!564347 (=> (not res!355651) (not e!325050))))

(declare-datatypes ((List!11143 0))(
  ( (Nil!11140) (Cons!11139 (h!12142 (_ BitVec 64)) (t!17379 List!11143)) )
))
(declare-fun arrayNoDuplicates!0 (array!35427 (_ BitVec 32) List!11143) Bool)

(assert (=> b!564347 (= res!355651 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11140))))

(declare-fun res!355652 () Bool)

(assert (=> start!51608 (=> (not res!355652) (not e!325051))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51608 (= res!355652 (validMask!0 mask!3119))))

(assert (=> start!51608 e!325051))

(assert (=> start!51608 true))

(declare-fun array_inv!12784 (array!35427) Bool)

(assert (=> start!51608 (array_inv!12784 a!3118)))

(assert (= (and start!51608 res!355652) b!564349))

(assert (= (and b!564349 res!355649) b!564348))

(assert (= (and b!564348 res!355647) b!564344))

(assert (= (and b!564344 res!355650) b!564350))

(assert (= (and b!564350 res!355645) b!564346))

(assert (= (and b!564346 res!355648) b!564343))

(assert (= (and b!564343 res!355646) b!564347))

(assert (= (and b!564347 res!355651) b!564345))

(declare-fun m!542803 () Bool)

(assert (=> b!564345 m!542803))

(declare-fun m!542805 () Bool)

(assert (=> b!564345 m!542805))

(assert (=> b!564345 m!542803))

(declare-fun m!542807 () Bool)

(assert (=> b!564345 m!542807))

(declare-fun m!542809 () Bool)

(assert (=> b!564345 m!542809))

(assert (=> b!564345 m!542807))

(declare-fun m!542811 () Bool)

(assert (=> b!564345 m!542811))

(assert (=> b!564345 m!542803))

(declare-fun m!542813 () Bool)

(assert (=> b!564345 m!542813))

(assert (=> b!564345 m!542807))

(declare-fun m!542815 () Bool)

(assert (=> b!564345 m!542815))

(declare-fun m!542817 () Bool)

(assert (=> b!564347 m!542817))

(declare-fun m!542819 () Bool)

(assert (=> b!564346 m!542819))

(assert (=> b!564348 m!542803))

(assert (=> b!564348 m!542803))

(declare-fun m!542821 () Bool)

(assert (=> b!564348 m!542821))

(declare-fun m!542823 () Bool)

(assert (=> b!564344 m!542823))

(declare-fun m!542825 () Bool)

(assert (=> b!564343 m!542825))

(declare-fun m!542827 () Bool)

(assert (=> b!564350 m!542827))

(declare-fun m!542829 () Bool)

(assert (=> start!51608 m!542829))

(declare-fun m!542831 () Bool)

(assert (=> start!51608 m!542831))

(push 1)

