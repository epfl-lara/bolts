; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50228 () Bool)

(assert start!50228)

(declare-fun b!549382 () Bool)

(declare-fun e!317285 () Bool)

(assert (=> b!549382 (= e!317285 false)))

(declare-fun lt!250179 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun k!1914 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!5085 0))(
  ( (MissingZero!5085 (index!22567 (_ BitVec 32))) (Found!5085 (index!22568 (_ BitVec 32))) (Intermediate!5085 (undefined!5897 Bool) (index!22569 (_ BitVec 32)) (x!51530 (_ BitVec 32))) (Undefined!5085) (MissingVacant!5085 (index!22570 (_ BitVec 32))) )
))
(declare-fun lt!250180 () SeekEntryResult!5085)

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!34635 0))(
  ( (array!34636 (arr!16629 (Array (_ BitVec 32) (_ BitVec 64))) (size!16993 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34635)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34635 (_ BitVec 32)) SeekEntryResult!5085)

(assert (=> b!549382 (= lt!250180 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!250179 (select (store (arr!16629 a!3118) i!1132 k!1914) j!142) (array!34636 (store (arr!16629 a!3118) i!1132 k!1914) (size!16993 a!3118)) mask!3119))))

(declare-fun lt!250177 () (_ BitVec 32))

(declare-fun lt!250178 () SeekEntryResult!5085)

(assert (=> b!549382 (= lt!250178 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!250177 (select (arr!16629 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!549382 (= lt!250179 (toIndex!0 (select (store (arr!16629 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!549382 (= lt!250177 (toIndex!0 (select (arr!16629 a!3118) j!142) mask!3119))))

(declare-fun res!342681 () Bool)

(declare-fun e!317287 () Bool)

(assert (=> start!50228 (=> (not res!342681) (not e!317287))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50228 (= res!342681 (validMask!0 mask!3119))))

(assert (=> start!50228 e!317287))

(assert (=> start!50228 true))

(declare-fun array_inv!12403 (array!34635) Bool)

(assert (=> start!50228 (array_inv!12403 a!3118)))

(declare-fun b!549383 () Bool)

(declare-fun res!342678 () Bool)

(assert (=> b!549383 (=> (not res!342678) (not e!317285))))

(declare-datatypes ((List!10762 0))(
  ( (Nil!10759) (Cons!10758 (h!11731 (_ BitVec 64)) (t!16998 List!10762)) )
))
(declare-fun arrayNoDuplicates!0 (array!34635 (_ BitVec 32) List!10762) Bool)

(assert (=> b!549383 (= res!342678 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10759))))

(declare-fun b!549384 () Bool)

(declare-fun res!342677 () Bool)

(assert (=> b!549384 (=> (not res!342677) (not e!317287))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!549384 (= res!342677 (validKeyInArray!0 (select (arr!16629 a!3118) j!142)))))

(declare-fun b!549385 () Bool)

(declare-fun res!342683 () Bool)

(assert (=> b!549385 (=> (not res!342683) (not e!317287))))

(assert (=> b!549385 (= res!342683 (validKeyInArray!0 k!1914))))

(declare-fun b!549386 () Bool)

(declare-fun res!342680 () Bool)

(assert (=> b!549386 (=> (not res!342680) (not e!317287))))

(declare-fun arrayContainsKey!0 (array!34635 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!549386 (= res!342680 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!549387 () Bool)

(assert (=> b!549387 (= e!317287 e!317285)))

(declare-fun res!342682 () Bool)

(assert (=> b!549387 (=> (not res!342682) (not e!317285))))

(declare-fun lt!250181 () SeekEntryResult!5085)

(assert (=> b!549387 (= res!342682 (or (= lt!250181 (MissingZero!5085 i!1132)) (= lt!250181 (MissingVacant!5085 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34635 (_ BitVec 32)) SeekEntryResult!5085)

(assert (=> b!549387 (= lt!250181 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!549388 () Bool)

(declare-fun res!342676 () Bool)

(assert (=> b!549388 (=> (not res!342676) (not e!317285))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34635 (_ BitVec 32)) Bool)

(assert (=> b!549388 (= res!342676 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!549389 () Bool)

(declare-fun res!342679 () Bool)

(assert (=> b!549389 (=> (not res!342679) (not e!317287))))

(assert (=> b!549389 (= res!342679 (and (= (size!16993 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!16993 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!16993 a!3118)) (not (= i!1132 j!142))))))

(assert (= (and start!50228 res!342681) b!549389))

(assert (= (and b!549389 res!342679) b!549384))

(assert (= (and b!549384 res!342677) b!549385))

(assert (= (and b!549385 res!342683) b!549386))

(assert (= (and b!549386 res!342680) b!549387))

(assert (= (and b!549387 res!342682) b!549388))

(assert (= (and b!549388 res!342676) b!549383))

(assert (= (and b!549383 res!342678) b!549382))

(declare-fun m!526303 () Bool)

(assert (=> b!549387 m!526303))

(declare-fun m!526305 () Bool)

(assert (=> start!50228 m!526305))

(declare-fun m!526307 () Bool)

(assert (=> start!50228 m!526307))

(declare-fun m!526309 () Bool)

(assert (=> b!549384 m!526309))

(assert (=> b!549384 m!526309))

(declare-fun m!526311 () Bool)

(assert (=> b!549384 m!526311))

(declare-fun m!526313 () Bool)

(assert (=> b!549386 m!526313))

(declare-fun m!526315 () Bool)

(assert (=> b!549385 m!526315))

(assert (=> b!549382 m!526309))

(declare-fun m!526317 () Bool)

(assert (=> b!549382 m!526317))

(assert (=> b!549382 m!526309))

(declare-fun m!526319 () Bool)

(assert (=> b!549382 m!526319))

(declare-fun m!526321 () Bool)

(assert (=> b!549382 m!526321))

(assert (=> b!549382 m!526309))

(declare-fun m!526323 () Bool)

(assert (=> b!549382 m!526323))

(assert (=> b!549382 m!526319))

(declare-fun m!526325 () Bool)

(assert (=> b!549382 m!526325))

(assert (=> b!549382 m!526319))

(declare-fun m!526327 () Bool)

(assert (=> b!549382 m!526327))

(declare-fun m!526329 () Bool)

(assert (=> b!549388 m!526329))

(declare-fun m!526331 () Bool)

(assert (=> b!549383 m!526331))

(push 1)

