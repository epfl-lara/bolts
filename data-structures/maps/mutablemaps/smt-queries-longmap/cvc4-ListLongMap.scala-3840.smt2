; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!52812 () Bool)

(assert start!52812)

(declare-fun b!575574 () Bool)

(declare-fun res!364150 () Bool)

(declare-fun e!331183 () Bool)

(assert (=> b!575574 (=> (not res!364150) (not e!331183))))

(declare-datatypes ((array!35911 0))(
  ( (array!35912 (arr!17234 (Array (_ BitVec 32) (_ BitVec 64))) (size!17598 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35911)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!575574 (= res!364150 (validKeyInArray!0 (select (arr!17234 a!3118) j!142)))))

(declare-fun b!575575 () Bool)

(declare-fun res!364143 () Bool)

(assert (=> b!575575 (=> (not res!364143) (not e!331183))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!575575 (= res!364143 (and (= (size!17598 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17598 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17598 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!575576 () Bool)

(declare-fun res!364140 () Bool)

(declare-fun e!331185 () Bool)

(assert (=> b!575576 (=> (not res!364140) (not e!331185))))

(declare-datatypes ((List!11367 0))(
  ( (Nil!11364) (Cons!11363 (h!12402 (_ BitVec 64)) (t!17603 List!11367)) )
))
(declare-fun arrayNoDuplicates!0 (array!35911 (_ BitVec 32) List!11367) Bool)

(assert (=> b!575576 (= res!364140 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11364))))

(declare-fun b!575577 () Bool)

(declare-fun res!364149 () Bool)

(assert (=> b!575577 (=> (not res!364149) (not e!331183))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!35911 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!575577 (= res!364149 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!575578 () Bool)

(declare-fun res!364151 () Bool)

(assert (=> b!575578 (=> (not res!364151) (not e!331185))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35911 (_ BitVec 32)) Bool)

(assert (=> b!575578 (= res!364151 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun res!364144 () Bool)

(assert (=> start!52812 (=> (not res!364144) (not e!331183))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52812 (= res!364144 (validMask!0 mask!3119))))

(assert (=> start!52812 e!331183))

(assert (=> start!52812 true))

(declare-fun array_inv!13008 (array!35911) Bool)

(assert (=> start!52812 (array_inv!13008 a!3118)))

(declare-fun b!575579 () Bool)

(declare-fun e!331188 () Bool)

(declare-datatypes ((SeekEntryResult!5690 0))(
  ( (MissingZero!5690 (index!24987 (_ BitVec 32))) (Found!5690 (index!24988 (_ BitVec 32))) (Intermediate!5690 (undefined!6502 Bool) (index!24989 (_ BitVec 32)) (x!53902 (_ BitVec 32))) (Undefined!5690) (MissingVacant!5690 (index!24990 (_ BitVec 32))) )
))
(declare-fun lt!263377 () SeekEntryResult!5690)

(declare-fun lt!263381 () SeekEntryResult!5690)

(assert (=> b!575579 (= e!331188 (= lt!263377 lt!263381))))

(declare-fun lt!263376 () SeekEntryResult!5690)

(declare-fun lt!263382 () SeekEntryResult!5690)

(assert (=> b!575579 (= lt!263376 lt!263382)))

(declare-fun lt!263383 () SeekEntryResult!5690)

(declare-datatypes ((Unit!18082 0))(
  ( (Unit!18083) )
))
(declare-fun lt!263384 () Unit!18082)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!35911 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18082)

(assert (=> b!575579 (= lt!263384 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!3118 i!1132 k!1914 j!142 (x!53902 lt!263383) (index!24989 lt!263383) (index!24989 lt!263383) mask!3119))))

(declare-fun b!575580 () Bool)

(declare-fun e!331189 () Bool)

(declare-fun e!331187 () Bool)

(assert (=> b!575580 (= e!331189 e!331187)))

(declare-fun res!364147 () Bool)

(assert (=> b!575580 (=> res!364147 e!331187)))

(declare-fun lt!263371 () (_ BitVec 64))

(assert (=> b!575580 (= res!364147 (or (= lt!263371 (select (arr!17234 a!3118) j!142)) (= lt!263371 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!575580 (= lt!263371 (select (arr!17234 a!3118) (index!24989 lt!263383)))))

(declare-fun b!575581 () Bool)

(declare-fun e!331186 () Bool)

(assert (=> b!575581 (= e!331185 e!331186)))

(declare-fun res!364148 () Bool)

(assert (=> b!575581 (=> (not res!364148) (not e!331186))))

(declare-fun lt!263380 () (_ BitVec 64))

(declare-fun lt!263375 () array!35911)

(declare-fun lt!263372 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35911 (_ BitVec 32)) SeekEntryResult!5690)

(assert (=> b!575581 (= res!364148 (= lt!263383 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!263372 lt!263380 lt!263375 mask!3119)))))

(declare-fun lt!263378 () (_ BitVec 32))

(assert (=> b!575581 (= lt!263383 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!263378 (select (arr!17234 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!575581 (= lt!263372 (toIndex!0 lt!263380 mask!3119))))

(assert (=> b!575581 (= lt!263380 (select (store (arr!17234 a!3118) i!1132 k!1914) j!142))))

(assert (=> b!575581 (= lt!263378 (toIndex!0 (select (arr!17234 a!3118) j!142) mask!3119))))

(assert (=> b!575581 (= lt!263375 (array!35912 (store (arr!17234 a!3118) i!1132 k!1914) (size!17598 a!3118)))))

(declare-fun b!575582 () Bool)

(assert (=> b!575582 (= e!331187 e!331188)))

(declare-fun res!364145 () Bool)

(assert (=> b!575582 (=> res!364145 e!331188)))

(declare-fun lt!263373 () SeekEntryResult!5690)

(assert (=> b!575582 (= res!364145 (or (bvslt (index!24989 lt!263383) #b00000000000000000000000000000000) (bvsge (index!24989 lt!263383) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsgt (x!53902 lt!263383) #b01111111111111111111111111111110) (bvslt (x!53902 lt!263383) #b00000000000000000000000000000000) (not (= lt!263371 #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (store (arr!17234 a!3118) i!1132 k!1914) (index!24989 lt!263383)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= lt!263376 lt!263373))))))

(assert (=> b!575582 (= lt!263381 lt!263382)))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35911 (_ BitVec 32)) SeekEntryResult!5690)

(assert (=> b!575582 (= lt!263382 (seekKeyOrZeroReturnVacant!0 (x!53902 lt!263383) (index!24989 lt!263383) (index!24989 lt!263383) lt!263380 lt!263375 mask!3119))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35911 (_ BitVec 32)) SeekEntryResult!5690)

(assert (=> b!575582 (= lt!263381 (seekEntryOrOpen!0 lt!263380 lt!263375 mask!3119))))

(assert (=> b!575582 (= lt!263377 lt!263376)))

(assert (=> b!575582 (= lt!263376 (seekKeyOrZeroReturnVacant!0 (x!53902 lt!263383) (index!24989 lt!263383) (index!24989 lt!263383) (select (arr!17234 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!575583 () Bool)

(declare-fun res!364142 () Bool)

(assert (=> b!575583 (=> (not res!364142) (not e!331183))))

(assert (=> b!575583 (= res!364142 (validKeyInArray!0 k!1914))))

(declare-fun b!575584 () Bool)

(assert (=> b!575584 (= e!331183 e!331185)))

(declare-fun res!364141 () Bool)

(assert (=> b!575584 (=> (not res!364141) (not e!331185))))

(declare-fun lt!263374 () SeekEntryResult!5690)

(assert (=> b!575584 (= res!364141 (or (= lt!263374 (MissingZero!5690 i!1132)) (= lt!263374 (MissingVacant!5690 i!1132))))))

(assert (=> b!575584 (= lt!263374 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!575585 () Bool)

(assert (=> b!575585 (= e!331186 (not e!331189))))

(declare-fun res!364146 () Bool)

(assert (=> b!575585 (=> res!364146 e!331189)))

(assert (=> b!575585 (= res!364146 (or (undefined!6502 lt!263383) (not (is-Intermediate!5690 lt!263383))))))

(assert (=> b!575585 (= lt!263377 lt!263373)))

(assert (=> b!575585 (= lt!263373 (Found!5690 j!142))))

(assert (=> b!575585 (= lt!263377 (seekEntryOrOpen!0 (select (arr!17234 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!575585 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-fun lt!263379 () Unit!18082)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35911 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18082)

(assert (=> b!575585 (= lt!263379 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(assert (= (and start!52812 res!364144) b!575575))

(assert (= (and b!575575 res!364143) b!575574))

(assert (= (and b!575574 res!364150) b!575583))

(assert (= (and b!575583 res!364142) b!575577))

(assert (= (and b!575577 res!364149) b!575584))

(assert (= (and b!575584 res!364141) b!575578))

(assert (= (and b!575578 res!364151) b!575576))

(assert (= (and b!575576 res!364140) b!575581))

(assert (= (and b!575581 res!364148) b!575585))

(assert (= (and b!575585 (not res!364146)) b!575580))

(assert (= (and b!575580 (not res!364147)) b!575582))

(assert (= (and b!575582 (not res!364145)) b!575579))

(declare-fun m!554575 () Bool)

(assert (=> b!575582 m!554575))

(declare-fun m!554577 () Bool)

(assert (=> b!575582 m!554577))

(assert (=> b!575582 m!554577))

(declare-fun m!554579 () Bool)

(assert (=> b!575582 m!554579))

(declare-fun m!554581 () Bool)

(assert (=> b!575582 m!554581))

(declare-fun m!554583 () Bool)

(assert (=> b!575582 m!554583))

(declare-fun m!554585 () Bool)

(assert (=> b!575582 m!554585))

(assert (=> b!575574 m!554577))

(assert (=> b!575574 m!554577))

(declare-fun m!554587 () Bool)

(assert (=> b!575574 m!554587))

(declare-fun m!554589 () Bool)

(assert (=> b!575583 m!554589))

(assert (=> b!575581 m!554577))

(declare-fun m!554591 () Bool)

(assert (=> b!575581 m!554591))

(assert (=> b!575581 m!554577))

(declare-fun m!554593 () Bool)

(assert (=> b!575581 m!554593))

(declare-fun m!554595 () Bool)

(assert (=> b!575581 m!554595))

(assert (=> b!575581 m!554577))

(declare-fun m!554597 () Bool)

(assert (=> b!575581 m!554597))

(declare-fun m!554599 () Bool)

(assert (=> b!575581 m!554599))

(assert (=> b!575581 m!554585))

(assert (=> b!575585 m!554577))

(assert (=> b!575585 m!554577))

(declare-fun m!554601 () Bool)

(assert (=> b!575585 m!554601))

(declare-fun m!554603 () Bool)

(assert (=> b!575585 m!554603))

(declare-fun m!554605 () Bool)

(assert (=> b!575585 m!554605))

(declare-fun m!554607 () Bool)

(assert (=> b!575578 m!554607))

(declare-fun m!554609 () Bool)

(assert (=> b!575576 m!554609))

(declare-fun m!554611 () Bool)

(assert (=> b!575584 m!554611))

(assert (=> b!575580 m!554577))

(declare-fun m!554613 () Bool)

(assert (=> b!575580 m!554613))

(declare-fun m!554615 () Bool)

(assert (=> start!52812 m!554615))

(declare-fun m!554617 () Bool)

(assert (=> start!52812 m!554617))

(declare-fun m!554619 () Bool)

(assert (=> b!575579 m!554619))

(declare-fun m!554621 () Bool)

(assert (=> b!575577 m!554621))

(push 1)

