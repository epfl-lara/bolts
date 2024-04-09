; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51596 () Bool)

(assert start!51596)

(declare-fun b!564199 () Bool)

(declare-fun res!355501 () Bool)

(declare-fun e!324995 () Bool)

(assert (=> b!564199 (=> (not res!355501) (not e!324995))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!564199 (= res!355501 (validKeyInArray!0 k!1914))))

(declare-fun b!564200 () Bool)

(declare-fun res!355507 () Bool)

(declare-fun e!324997 () Bool)

(assert (=> b!564200 (=> (not res!355507) (not e!324997))))

(declare-datatypes ((array!35415 0))(
  ( (array!35416 (arr!17004 (Array (_ BitVec 32) (_ BitVec 64))) (size!17368 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35415)

(declare-datatypes ((List!11137 0))(
  ( (Nil!11134) (Cons!11133 (h!12136 (_ BitVec 64)) (t!17373 List!11137)) )
))
(declare-fun arrayNoDuplicates!0 (array!35415 (_ BitVec 32) List!11137) Bool)

(assert (=> b!564200 (= res!355507 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11134))))

(declare-fun b!564201 () Bool)

(declare-fun res!355505 () Bool)

(assert (=> b!564201 (=> (not res!355505) (not e!324997))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35415 (_ BitVec 32)) Bool)

(assert (=> b!564201 (= res!355505 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun res!355502 () Bool)

(assert (=> start!51596 (=> (not res!355502) (not e!324995))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51596 (= res!355502 (validMask!0 mask!3119))))

(assert (=> start!51596 e!324995))

(assert (=> start!51596 true))

(declare-fun array_inv!12778 (array!35415) Bool)

(assert (=> start!51596 (array_inv!12778 a!3118)))

(declare-fun b!564202 () Bool)

(declare-fun res!355506 () Bool)

(assert (=> b!564202 (=> (not res!355506) (not e!324995))))

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!564202 (= res!355506 (validKeyInArray!0 (select (arr!17004 a!3118) j!142)))))

(declare-fun b!564203 () Bool)

(declare-fun res!355503 () Bool)

(assert (=> b!564203 (=> (not res!355503) (not e!324995))))

(declare-fun arrayContainsKey!0 (array!35415 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!564203 (= res!355503 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!564204 () Bool)

(declare-fun res!355508 () Bool)

(assert (=> b!564204 (=> (not res!355508) (not e!324995))))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!564204 (= res!355508 (and (= (size!17368 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17368 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17368 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!564205 () Bool)

(assert (=> b!564205 (= e!324997 false)))

(declare-fun lt!257483 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!564205 (= lt!257483 (toIndex!0 (select (store (arr!17004 a!3118) i!1132 k!1914) j!142) mask!3119))))

(declare-fun b!564206 () Bool)

(assert (=> b!564206 (= e!324995 e!324997)))

(declare-fun res!355504 () Bool)

(assert (=> b!564206 (=> (not res!355504) (not e!324997))))

(declare-datatypes ((SeekEntryResult!5460 0))(
  ( (MissingZero!5460 (index!24067 (_ BitVec 32))) (Found!5460 (index!24068 (_ BitVec 32))) (Intermediate!5460 (undefined!6272 Bool) (index!24069 (_ BitVec 32)) (x!52974 (_ BitVec 32))) (Undefined!5460) (MissingVacant!5460 (index!24070 (_ BitVec 32))) )
))
(declare-fun lt!257482 () SeekEntryResult!5460)

(assert (=> b!564206 (= res!355504 (or (= lt!257482 (MissingZero!5460 i!1132)) (= lt!257482 (MissingVacant!5460 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35415 (_ BitVec 32)) SeekEntryResult!5460)

(assert (=> b!564206 (= lt!257482 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(assert (= (and start!51596 res!355502) b!564204))

(assert (= (and b!564204 res!355508) b!564202))

(assert (= (and b!564202 res!355506) b!564199))

(assert (= (and b!564199 res!355501) b!564203))

(assert (= (and b!564203 res!355503) b!564206))

(assert (= (and b!564206 res!355504) b!564201))

(assert (= (and b!564201 res!355505) b!564200))

(assert (= (and b!564200 res!355507) b!564205))

(declare-fun m!542659 () Bool)

(assert (=> start!51596 m!542659))

(declare-fun m!542661 () Bool)

(assert (=> start!51596 m!542661))

(declare-fun m!542663 () Bool)

(assert (=> b!564202 m!542663))

(assert (=> b!564202 m!542663))

(declare-fun m!542665 () Bool)

(assert (=> b!564202 m!542665))

(declare-fun m!542667 () Bool)

(assert (=> b!564205 m!542667))

(declare-fun m!542669 () Bool)

(assert (=> b!564205 m!542669))

(assert (=> b!564205 m!542669))

(declare-fun m!542671 () Bool)

(assert (=> b!564205 m!542671))

(declare-fun m!542673 () Bool)

(assert (=> b!564203 m!542673))

(declare-fun m!542675 () Bool)

(assert (=> b!564199 m!542675))

(declare-fun m!542677 () Bool)

(assert (=> b!564206 m!542677))

(declare-fun m!542679 () Bool)

(assert (=> b!564200 m!542679))

(declare-fun m!542681 () Bool)

(assert (=> b!564201 m!542681))

(push 1)

