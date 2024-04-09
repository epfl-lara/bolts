; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!50230 () Bool)

(assert start!50230)

(declare-fun b!549406 () Bool)

(declare-fun res!342702 () Bool)

(declare-fun e!317294 () Bool)

(assert (=> b!549406 (=> (not res!342702) (not e!317294))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!549406 (= res!342702 (validKeyInArray!0 k0!1914))))

(declare-fun b!549407 () Bool)

(declare-fun e!317296 () Bool)

(assert (=> b!549407 (= e!317294 e!317296)))

(declare-fun res!342705 () Bool)

(assert (=> b!549407 (=> (not res!342705) (not e!317296))))

(declare-datatypes ((SeekEntryResult!5086 0))(
  ( (MissingZero!5086 (index!22571 (_ BitVec 32))) (Found!5086 (index!22572 (_ BitVec 32))) (Intermediate!5086 (undefined!5898 Bool) (index!22573 (_ BitVec 32)) (x!51531 (_ BitVec 32))) (Undefined!5086) (MissingVacant!5086 (index!22574 (_ BitVec 32))) )
))
(declare-fun lt!250195 () SeekEntryResult!5086)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!549407 (= res!342705 (or (= lt!250195 (MissingZero!5086 i!1132)) (= lt!250195 (MissingVacant!5086 i!1132))))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-datatypes ((array!34637 0))(
  ( (array!34638 (arr!16630 (Array (_ BitVec 32) (_ BitVec 64))) (size!16994 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34637)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34637 (_ BitVec 32)) SeekEntryResult!5086)

(assert (=> b!549407 (= lt!250195 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!549408 () Bool)

(declare-fun res!342706 () Bool)

(assert (=> b!549408 (=> (not res!342706) (not e!317294))))

(declare-fun arrayContainsKey!0 (array!34637 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!549408 (= res!342706 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!549409 () Bool)

(declare-fun res!342707 () Bool)

(assert (=> b!549409 (=> (not res!342707) (not e!317294))))

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!549409 (= res!342707 (validKeyInArray!0 (select (arr!16630 a!3118) j!142)))))

(declare-fun b!549410 () Bool)

(declare-fun res!342704 () Bool)

(assert (=> b!549410 (=> (not res!342704) (not e!317296))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34637 (_ BitVec 32)) Bool)

(assert (=> b!549410 (= res!342704 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun res!342701 () Bool)

(assert (=> start!50230 (=> (not res!342701) (not e!317294))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50230 (= res!342701 (validMask!0 mask!3119))))

(assert (=> start!50230 e!317294))

(assert (=> start!50230 true))

(declare-fun array_inv!12404 (array!34637) Bool)

(assert (=> start!50230 (array_inv!12404 a!3118)))

(declare-fun b!549411 () Bool)

(declare-fun res!342700 () Bool)

(assert (=> b!549411 (=> (not res!342700) (not e!317294))))

(assert (=> b!549411 (= res!342700 (and (= (size!16994 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!16994 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!16994 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!549412 () Bool)

(declare-fun res!342703 () Bool)

(assert (=> b!549412 (=> (not res!342703) (not e!317296))))

(declare-datatypes ((List!10763 0))(
  ( (Nil!10760) (Cons!10759 (h!11732 (_ BitVec 64)) (t!16999 List!10763)) )
))
(declare-fun arrayNoDuplicates!0 (array!34637 (_ BitVec 32) List!10763) Bool)

(assert (=> b!549412 (= res!342703 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10760))))

(declare-fun b!549413 () Bool)

(assert (=> b!549413 (= e!317296 false)))

(declare-fun lt!250193 () SeekEntryResult!5086)

(declare-fun lt!250192 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34637 (_ BitVec 32)) SeekEntryResult!5086)

(assert (=> b!549413 (= lt!250193 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!250192 (select (store (arr!16630 a!3118) i!1132 k0!1914) j!142) (array!34638 (store (arr!16630 a!3118) i!1132 k0!1914) (size!16994 a!3118)) mask!3119))))

(declare-fun lt!250194 () SeekEntryResult!5086)

(declare-fun lt!250196 () (_ BitVec 32))

(assert (=> b!549413 (= lt!250194 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!250196 (select (arr!16630 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!549413 (= lt!250192 (toIndex!0 (select (store (arr!16630 a!3118) i!1132 k0!1914) j!142) mask!3119))))

(assert (=> b!549413 (= lt!250196 (toIndex!0 (select (arr!16630 a!3118) j!142) mask!3119))))

(assert (= (and start!50230 res!342701) b!549411))

(assert (= (and b!549411 res!342700) b!549409))

(assert (= (and b!549409 res!342707) b!549406))

(assert (= (and b!549406 res!342702) b!549408))

(assert (= (and b!549408 res!342706) b!549407))

(assert (= (and b!549407 res!342705) b!549410))

(assert (= (and b!549410 res!342704) b!549412))

(assert (= (and b!549412 res!342703) b!549413))

(declare-fun m!526333 () Bool)

(assert (=> start!50230 m!526333))

(declare-fun m!526335 () Bool)

(assert (=> start!50230 m!526335))

(declare-fun m!526337 () Bool)

(assert (=> b!549409 m!526337))

(assert (=> b!549409 m!526337))

(declare-fun m!526339 () Bool)

(assert (=> b!549409 m!526339))

(declare-fun m!526341 () Bool)

(assert (=> b!549410 m!526341))

(declare-fun m!526343 () Bool)

(assert (=> b!549408 m!526343))

(declare-fun m!526345 () Bool)

(assert (=> b!549407 m!526345))

(assert (=> b!549413 m!526337))

(declare-fun m!526347 () Bool)

(assert (=> b!549413 m!526347))

(declare-fun m!526349 () Bool)

(assert (=> b!549413 m!526349))

(declare-fun m!526351 () Bool)

(assert (=> b!549413 m!526351))

(assert (=> b!549413 m!526337))

(assert (=> b!549413 m!526349))

(declare-fun m!526353 () Bool)

(assert (=> b!549413 m!526353))

(assert (=> b!549413 m!526337))

(declare-fun m!526355 () Bool)

(assert (=> b!549413 m!526355))

(assert (=> b!549413 m!526349))

(declare-fun m!526357 () Bool)

(assert (=> b!549413 m!526357))

(declare-fun m!526359 () Bool)

(assert (=> b!549406 m!526359))

(declare-fun m!526361 () Bool)

(assert (=> b!549412 m!526361))

(check-sat (not b!549410) (not b!549406) (not b!549408) (not b!549409) (not b!549407) (not b!549413) (not b!549412) (not start!50230))
(check-sat)
