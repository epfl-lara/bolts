; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28220 () Bool)

(assert start!28220)

(declare-fun b!288833 () Bool)

(declare-fun res!150501 () Bool)

(declare-fun e!182882 () Bool)

(assert (=> b!288833 (=> (not res!150501) (not e!182882))))

(declare-datatypes ((array!14523 0))(
  ( (array!14524 (arr!6888 (Array (_ BitVec 32) (_ BitVec 64))) (size!7240 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14523)

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!14523 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!288833 (= res!150501 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!288834 () Bool)

(declare-fun e!182884 () Bool)

(assert (=> b!288834 (= e!182882 e!182884)))

(declare-fun res!150495 () Bool)

(assert (=> b!288834 (=> (not res!150495) (not e!182884))))

(declare-datatypes ((SeekEntryResult!2048 0))(
  ( (MissingZero!2048 (index!10362 (_ BitVec 32))) (Found!2048 (index!10363 (_ BitVec 32))) (Intermediate!2048 (undefined!2860 Bool) (index!10364 (_ BitVec 32)) (x!28541 (_ BitVec 32))) (Undefined!2048) (MissingVacant!2048 (index!10365 (_ BitVec 32))) )
))
(declare-fun lt!142433 () SeekEntryResult!2048)

(declare-fun i!1256 () (_ BitVec 32))

(declare-fun lt!142436 () Bool)

(assert (=> b!288834 (= res!150495 (or lt!142436 (= lt!142433 (MissingVacant!2048 i!1256))))))

(assert (=> b!288834 (= lt!142436 (= lt!142433 (MissingZero!2048 i!1256)))))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14523 (_ BitVec 32)) SeekEntryResult!2048)

(assert (=> b!288834 (= lt!142433 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!288835 () Bool)

(declare-fun e!182880 () Bool)

(assert (=> b!288835 (= e!182880 (not true))))

(declare-fun lt!142434 () SeekEntryResult!2048)

(assert (=> b!288835 (and (= (select (arr!6888 a!3312) (index!10364 lt!142434)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!10364 lt!142434) i!1256))))

(declare-fun b!288836 () Bool)

(declare-fun e!182881 () Bool)

(assert (=> b!288836 (= e!182884 e!182881)))

(declare-fun res!150498 () Bool)

(assert (=> b!288836 (=> (not res!150498) (not e!182881))))

(assert (=> b!288836 (= res!150498 lt!142436)))

(declare-fun lt!142431 () SeekEntryResult!2048)

(declare-fun lt!142435 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14523 (_ BitVec 32)) SeekEntryResult!2048)

(assert (=> b!288836 (= lt!142431 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!142435 k!2524 (array!14524 (store (arr!6888 a!3312) i!1256 k!2524) (size!7240 a!3312)) mask!3809))))

(assert (=> b!288836 (= lt!142434 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!142435 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!288836 (= lt!142435 (toIndex!0 k!2524 mask!3809))))

(declare-fun res!150496 () Bool)

(assert (=> start!28220 (=> (not res!150496) (not e!182882))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28220 (= res!150496 (validMask!0 mask!3809))))

(assert (=> start!28220 e!182882))

(assert (=> start!28220 true))

(declare-fun array_inv!4842 (array!14523) Bool)

(assert (=> start!28220 (array_inv!4842 a!3312)))

(declare-fun b!288837 () Bool)

(declare-fun res!150500 () Bool)

(assert (=> b!288837 (=> (not res!150500) (not e!182884))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14523 (_ BitVec 32)) Bool)

(assert (=> b!288837 (= res!150500 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!288838 () Bool)

(declare-fun res!150499 () Bool)

(assert (=> b!288838 (=> (not res!150499) (not e!182882))))

(assert (=> b!288838 (= res!150499 (and (= (size!7240 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7240 a!3312))))))

(declare-fun b!288839 () Bool)

(assert (=> b!288839 (= e!182881 e!182880)))

(declare-fun res!150494 () Bool)

(assert (=> b!288839 (=> (not res!150494) (not e!182880))))

(declare-fun lt!142432 () Bool)

(assert (=> b!288839 (= res!150494 (and (or lt!142432 (not (undefined!2860 lt!142434))) (or lt!142432 (not (= (select (arr!6888 a!3312) (index!10364 lt!142434)) #b1000000000000000000000000000000000000000000000000000000000000000))) (or lt!142432 (not (= (select (arr!6888 a!3312) (index!10364 lt!142434)) k!2524))) (not lt!142432)))))

(assert (=> b!288839 (= lt!142432 (not (is-Intermediate!2048 lt!142434)))))

(declare-fun b!288840 () Bool)

(declare-fun res!150497 () Bool)

(assert (=> b!288840 (=> (not res!150497) (not e!182882))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!288840 (= res!150497 (validKeyInArray!0 k!2524))))

(assert (= (and start!28220 res!150496) b!288838))

(assert (= (and b!288838 res!150499) b!288840))

(assert (= (and b!288840 res!150497) b!288833))

(assert (= (and b!288833 res!150501) b!288834))

(assert (= (and b!288834 res!150495) b!288837))

(assert (= (and b!288837 res!150500) b!288836))

(assert (= (and b!288836 res!150498) b!288839))

(assert (= (and b!288839 res!150494) b!288835))

(declare-fun m!303069 () Bool)

(assert (=> b!288837 m!303069))

(declare-fun m!303071 () Bool)

(assert (=> b!288836 m!303071))

(declare-fun m!303073 () Bool)

(assert (=> b!288836 m!303073))

(declare-fun m!303075 () Bool)

(assert (=> b!288836 m!303075))

(declare-fun m!303077 () Bool)

(assert (=> b!288836 m!303077))

(declare-fun m!303079 () Bool)

(assert (=> b!288833 m!303079))

(declare-fun m!303081 () Bool)

(assert (=> b!288834 m!303081))

(declare-fun m!303083 () Bool)

(assert (=> b!288840 m!303083))

(declare-fun m!303085 () Bool)

(assert (=> b!288835 m!303085))

(assert (=> b!288839 m!303085))

(declare-fun m!303087 () Bool)

(assert (=> start!28220 m!303087))

(declare-fun m!303089 () Bool)

(assert (=> start!28220 m!303089))

(push 1)

