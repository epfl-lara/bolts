; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28646 () Bool)

(assert start!28646)

(declare-fun b!292705 () Bool)

(declare-fun res!153801 () Bool)

(declare-fun e!185161 () Bool)

(assert (=> b!292705 (=> (not res!153801) (not e!185161))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!292705 (= res!153801 (validKeyInArray!0 k!2524))))

(declare-fun b!292706 () Bool)

(declare-fun e!185160 () Bool)

(assert (=> b!292706 (= e!185160 false)))

(declare-fun i!1256 () (_ BitVec 32))

(declare-fun lt!145071 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2189 0))(
  ( (MissingZero!2189 (index!10926 (_ BitVec 32))) (Found!2189 (index!10927 (_ BitVec 32))) (Intermediate!2189 (undefined!3001 Bool) (index!10928 (_ BitVec 32)) (x!29076 (_ BitVec 32))) (Undefined!2189) (MissingVacant!2189 (index!10929 (_ BitVec 32))) )
))
(declare-fun lt!145072 () SeekEntryResult!2189)

(declare-datatypes ((array!14814 0))(
  ( (array!14815 (arr!7029 (Array (_ BitVec 32) (_ BitVec 64))) (size!7381 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14814)

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14814 (_ BitVec 32)) SeekEntryResult!2189)

(assert (=> b!292706 (= lt!145072 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!145071 k!2524 (array!14815 (store (arr!7029 a!3312) i!1256 k!2524) (size!7381 a!3312)) mask!3809))))

(declare-fun lt!145070 () SeekEntryResult!2189)

(assert (=> b!292706 (= lt!145070 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!145071 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!292706 (= lt!145071 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!292707 () Bool)

(declare-fun res!153802 () Bool)

(assert (=> b!292707 (=> (not res!153802) (not e!185161))))

(assert (=> b!292707 (= res!153802 (and (= (size!7381 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7381 a!3312))))))

(declare-fun b!292708 () Bool)

(declare-fun res!153800 () Bool)

(assert (=> b!292708 (=> (not res!153800) (not e!185160))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14814 (_ BitVec 32)) Bool)

(assert (=> b!292708 (= res!153800 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!292709 () Bool)

(assert (=> b!292709 (= e!185161 e!185160)))

(declare-fun res!153803 () Bool)

(assert (=> b!292709 (=> (not res!153803) (not e!185160))))

(declare-fun lt!145073 () SeekEntryResult!2189)

(assert (=> b!292709 (= res!153803 (or (= lt!145073 (MissingZero!2189 i!1256)) (= lt!145073 (MissingVacant!2189 i!1256))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14814 (_ BitVec 32)) SeekEntryResult!2189)

(assert (=> b!292709 (= lt!145073 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun res!153799 () Bool)

(assert (=> start!28646 (=> (not res!153799) (not e!185161))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28646 (= res!153799 (validMask!0 mask!3809))))

(assert (=> start!28646 e!185161))

(assert (=> start!28646 true))

(declare-fun array_inv!4983 (array!14814) Bool)

(assert (=> start!28646 (array_inv!4983 a!3312)))

(declare-fun b!292710 () Bool)

(declare-fun res!153804 () Bool)

(assert (=> b!292710 (=> (not res!153804) (not e!185161))))

(declare-fun arrayContainsKey!0 (array!14814 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!292710 (= res!153804 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(assert (= (and start!28646 res!153799) b!292707))

(assert (= (and b!292707 res!153802) b!292705))

(assert (= (and b!292705 res!153801) b!292710))

(assert (= (and b!292710 res!153804) b!292709))

(assert (= (and b!292709 res!153803) b!292708))

(assert (= (and b!292708 res!153800) b!292706))

(declare-fun m!306515 () Bool)

(assert (=> b!292710 m!306515))

(declare-fun m!306517 () Bool)

(assert (=> b!292709 m!306517))

(declare-fun m!306519 () Bool)

(assert (=> b!292706 m!306519))

(declare-fun m!306521 () Bool)

(assert (=> b!292706 m!306521))

(declare-fun m!306523 () Bool)

(assert (=> b!292706 m!306523))

(declare-fun m!306525 () Bool)

(assert (=> b!292706 m!306525))

(declare-fun m!306527 () Bool)

(assert (=> b!292708 m!306527))

(declare-fun m!306529 () Bool)

(assert (=> b!292705 m!306529))

(declare-fun m!306531 () Bool)

(assert (=> start!28646 m!306531))

(declare-fun m!306533 () Bool)

(assert (=> start!28646 m!306533))

(push 1)

(assert (not b!292709))

(assert (not start!28646))

(assert (not b!292706))

