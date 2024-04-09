; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28210 () Bool)

(assert start!28210)

(declare-fun b!288713 () Bool)

(declare-fun e!182807 () Bool)

(declare-fun e!182806 () Bool)

(assert (=> b!288713 (= e!182807 e!182806)))

(declare-fun res!150376 () Bool)

(assert (=> b!288713 (=> (not res!150376) (not e!182806))))

(declare-fun lt!142341 () Bool)

(assert (=> b!288713 (= res!150376 lt!142341)))

(declare-fun i!1256 () (_ BitVec 32))

(declare-fun lt!142346 () (_ BitVec 32))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2043 0))(
  ( (MissingZero!2043 (index!10342 (_ BitVec 32))) (Found!2043 (index!10343 (_ BitVec 32))) (Intermediate!2043 (undefined!2855 Bool) (index!10344 (_ BitVec 32)) (x!28528 (_ BitVec 32))) (Undefined!2043) (MissingVacant!2043 (index!10345 (_ BitVec 32))) )
))
(declare-fun lt!142342 () SeekEntryResult!2043)

(declare-datatypes ((array!14513 0))(
  ( (array!14514 (arr!6883 (Array (_ BitVec 32) (_ BitVec 64))) (size!7235 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14513)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14513 (_ BitVec 32)) SeekEntryResult!2043)

(assert (=> b!288713 (= lt!142342 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!142346 k!2524 (array!14514 (store (arr!6883 a!3312) i!1256 k!2524) (size!7235 a!3312)) mask!3809))))

(declare-fun lt!142344 () SeekEntryResult!2043)

(assert (=> b!288713 (= lt!142344 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!142346 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!288713 (= lt!142346 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!288714 () Bool)

(declare-fun res!150381 () Bool)

(declare-fun e!182809 () Bool)

(assert (=> b!288714 (=> (not res!150381) (not e!182809))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!288714 (= res!150381 (validKeyInArray!0 k!2524))))

(declare-fun b!288715 () Bool)

(declare-fun e!182805 () Bool)

(assert (=> b!288715 (= e!182805 (not true))))

(assert (=> b!288715 (and (= (select (arr!6883 a!3312) (index!10344 lt!142344)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!10344 lt!142344) i!1256))))

(declare-fun b!288716 () Bool)

(assert (=> b!288716 (= e!182809 e!182807)))

(declare-fun res!150378 () Bool)

(assert (=> b!288716 (=> (not res!150378) (not e!182807))))

(declare-fun lt!142345 () SeekEntryResult!2043)

(assert (=> b!288716 (= res!150378 (or lt!142341 (= lt!142345 (MissingVacant!2043 i!1256))))))

(assert (=> b!288716 (= lt!142341 (= lt!142345 (MissingZero!2043 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14513 (_ BitVec 32)) SeekEntryResult!2043)

(assert (=> b!288716 (= lt!142345 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!288717 () Bool)

(declare-fun res!150374 () Bool)

(assert (=> b!288717 (=> (not res!150374) (not e!182809))))

(assert (=> b!288717 (= res!150374 (and (= (size!7235 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7235 a!3312))))))

(declare-fun b!288718 () Bool)

(declare-fun res!150377 () Bool)

(assert (=> b!288718 (=> (not res!150377) (not e!182809))))

(declare-fun arrayContainsKey!0 (array!14513 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!288718 (= res!150377 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun res!150380 () Bool)

(assert (=> start!28210 (=> (not res!150380) (not e!182809))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28210 (= res!150380 (validMask!0 mask!3809))))

(assert (=> start!28210 e!182809))

(assert (=> start!28210 true))

(declare-fun array_inv!4837 (array!14513) Bool)

(assert (=> start!28210 (array_inv!4837 a!3312)))

(declare-fun b!288719 () Bool)

(declare-fun res!150375 () Bool)

(assert (=> b!288719 (=> (not res!150375) (not e!182807))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14513 (_ BitVec 32)) Bool)

(assert (=> b!288719 (= res!150375 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!288720 () Bool)

(assert (=> b!288720 (= e!182806 e!182805)))

(declare-fun res!150379 () Bool)

(assert (=> b!288720 (=> (not res!150379) (not e!182805))))

(declare-fun lt!142343 () Bool)

(assert (=> b!288720 (= res!150379 (and (or lt!142343 (not (undefined!2855 lt!142344))) (or lt!142343 (not (= (select (arr!6883 a!3312) (index!10344 lt!142344)) #b1000000000000000000000000000000000000000000000000000000000000000))) (or lt!142343 (not (= (select (arr!6883 a!3312) (index!10344 lt!142344)) k!2524))) (not lt!142343)))))

(assert (=> b!288720 (= lt!142343 (not (is-Intermediate!2043 lt!142344)))))

(assert (= (and start!28210 res!150380) b!288717))

(assert (= (and b!288717 res!150374) b!288714))

(assert (= (and b!288714 res!150381) b!288718))

(assert (= (and b!288718 res!150377) b!288716))

(assert (= (and b!288716 res!150378) b!288719))

(assert (= (and b!288719 res!150375) b!288713))

(assert (= (and b!288713 res!150376) b!288720))

(assert (= (and b!288720 res!150379) b!288715))

(declare-fun m!302959 () Bool)

(assert (=> b!288714 m!302959))

(declare-fun m!302961 () Bool)

(assert (=> start!28210 m!302961))

(declare-fun m!302963 () Bool)

(assert (=> start!28210 m!302963))

(declare-fun m!302965 () Bool)

(assert (=> b!288720 m!302965))

(declare-fun m!302967 () Bool)

(assert (=> b!288718 m!302967))

(declare-fun m!302969 () Bool)

(assert (=> b!288713 m!302969))

(declare-fun m!302971 () Bool)

(assert (=> b!288713 m!302971))

(declare-fun m!302973 () Bool)

(assert (=> b!288713 m!302973))

(declare-fun m!302975 () Bool)

(assert (=> b!288713 m!302975))

(assert (=> b!288715 m!302965))

(declare-fun m!302977 () Bool)

(assert (=> b!288719 m!302977))

(declare-fun m!302979 () Bool)

(assert (=> b!288716 m!302979))

(push 1)

