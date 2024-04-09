; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!29160 () Bool)

(assert start!29160)

(declare-fun res!155628 () Bool)

(declare-fun e!186910 () Bool)

(assert (=> start!29160 (=> (not res!155628) (not e!186910))))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29160 (= res!155628 (validMask!0 mask!3809))))

(assert (=> start!29160 e!186910))

(assert (=> start!29160 true))

(declare-datatypes ((array!14960 0))(
  ( (array!14961 (arr!7090 (Array (_ BitVec 32) (_ BitVec 64))) (size!7442 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14960)

(declare-fun array_inv!5044 (array!14960) Bool)

(assert (=> start!29160 (array_inv!5044 a!3312)))

(declare-fun b!295702 () Bool)

(declare-fun e!186912 () Bool)

(declare-fun e!186911 () Bool)

(assert (=> b!295702 (= e!186912 e!186911)))

(declare-fun res!155630 () Bool)

(assert (=> b!295702 (=> (not res!155630) (not e!186911))))

(declare-fun lt!146758 () Bool)

(assert (=> b!295702 (= res!155630 lt!146758)))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun lt!146756 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2250 0))(
  ( (MissingZero!2250 (index!11170 (_ BitVec 32))) (Found!2250 (index!11171 (_ BitVec 32))) (Intermediate!2250 (undefined!3062 Bool) (index!11172 (_ BitVec 32)) (x!29355 (_ BitVec 32))) (Undefined!2250) (MissingVacant!2250 (index!11173 (_ BitVec 32))) )
))
(declare-fun lt!146759 () SeekEntryResult!2250)

(declare-fun i!1256 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14960 (_ BitVec 32)) SeekEntryResult!2250)

(assert (=> b!295702 (= lt!146759 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!146756 k!2524 (array!14961 (store (arr!7090 a!3312) i!1256 k!2524) (size!7442 a!3312)) mask!3809))))

(declare-fun lt!146757 () SeekEntryResult!2250)

(assert (=> b!295702 (= lt!146757 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!146756 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!295702 (= lt!146756 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!295703 () Bool)

(assert (=> b!295703 (= e!186910 e!186912)))

(declare-fun res!155627 () Bool)

(assert (=> b!295703 (=> (not res!155627) (not e!186912))))

(declare-fun lt!146754 () SeekEntryResult!2250)

(assert (=> b!295703 (= res!155627 (or lt!146758 (= lt!146754 (MissingVacant!2250 i!1256))))))

(assert (=> b!295703 (= lt!146758 (= lt!146754 (MissingZero!2250 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14960 (_ BitVec 32)) SeekEntryResult!2250)

(assert (=> b!295703 (= lt!146754 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!295704 () Bool)

(declare-fun e!186913 () Bool)

(assert (=> b!295704 (= e!186913 (not true))))

(assert (=> b!295704 (and (= (select (arr!7090 a!3312) (index!11172 lt!146757)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!11172 lt!146757) i!1256))))

(declare-fun b!295705 () Bool)

(declare-fun res!155626 () Bool)

(assert (=> b!295705 (=> (not res!155626) (not e!186910))))

(declare-fun arrayContainsKey!0 (array!14960 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!295705 (= res!155626 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!295706 () Bool)

(assert (=> b!295706 (= e!186911 e!186913)))

(declare-fun res!155631 () Bool)

(assert (=> b!295706 (=> (not res!155631) (not e!186913))))

(declare-fun lt!146755 () Bool)

(assert (=> b!295706 (= res!155631 (and (or lt!146755 (not (undefined!3062 lt!146757))) (or lt!146755 (not (= (select (arr!7090 a!3312) (index!11172 lt!146757)) #b1000000000000000000000000000000000000000000000000000000000000000))) (or lt!146755 (not (= (select (arr!7090 a!3312) (index!11172 lt!146757)) k!2524))) (not lt!146755)))))

(assert (=> b!295706 (= lt!146755 (not (is-Intermediate!2250 lt!146757)))))

(declare-fun b!295707 () Bool)

(declare-fun res!155624 () Bool)

(assert (=> b!295707 (=> (not res!155624) (not e!186910))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!295707 (= res!155624 (validKeyInArray!0 k!2524))))

(declare-fun b!295708 () Bool)

(declare-fun res!155625 () Bool)

(assert (=> b!295708 (=> (not res!155625) (not e!186910))))

(assert (=> b!295708 (= res!155625 (and (= (size!7442 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7442 a!3312))))))

(declare-fun b!295709 () Bool)

(declare-fun res!155629 () Bool)

(assert (=> b!295709 (=> (not res!155629) (not e!186912))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14960 (_ BitVec 32)) Bool)

(assert (=> b!295709 (= res!155629 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(assert (= (and start!29160 res!155628) b!295708))

(assert (= (and b!295708 res!155625) b!295707))

(assert (= (and b!295707 res!155624) b!295705))

(assert (= (and b!295705 res!155626) b!295703))

(assert (= (and b!295703 res!155627) b!295709))

(assert (= (and b!295709 res!155629) b!295702))

(assert (= (and b!295702 res!155630) b!295706))

(assert (= (and b!295706 res!155631) b!295704))

(declare-fun m!308813 () Bool)

(assert (=> b!295703 m!308813))

(declare-fun m!308815 () Bool)

(assert (=> start!29160 m!308815))

(declare-fun m!308817 () Bool)

(assert (=> start!29160 m!308817))

(declare-fun m!308819 () Bool)

(assert (=> b!295709 m!308819))

(declare-fun m!308821 () Bool)

(assert (=> b!295706 m!308821))

(declare-fun m!308823 () Bool)

(assert (=> b!295702 m!308823))

(declare-fun m!308825 () Bool)

(assert (=> b!295702 m!308825))

(declare-fun m!308827 () Bool)

(assert (=> b!295702 m!308827))

(declare-fun m!308829 () Bool)

(assert (=> b!295702 m!308829))

(declare-fun m!308831 () Bool)

(assert (=> b!295707 m!308831))

(assert (=> b!295704 m!308821))

(declare-fun m!308833 () Bool)

(assert (=> b!295705 m!308833))

(push 1)

