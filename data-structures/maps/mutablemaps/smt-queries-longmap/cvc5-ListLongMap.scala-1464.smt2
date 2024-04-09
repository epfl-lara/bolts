; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28180 () Bool)

(assert start!28180)

(declare-fun b!288353 () Bool)

(declare-fun res!150017 () Bool)

(declare-fun e!182580 () Bool)

(assert (=> b!288353 (=> (not res!150017) (not e!182580))))

(declare-datatypes ((array!14483 0))(
  ( (array!14484 (arr!6868 (Array (_ BitVec 32) (_ BitVec 64))) (size!7220 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14483)

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!14483 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!288353 (= res!150017 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!288354 () Bool)

(declare-fun res!150014 () Bool)

(assert (=> b!288354 (=> (not res!150014) (not e!182580))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!288354 (= res!150014 (validKeyInArray!0 k!2524))))

(declare-fun b!288355 () Bool)

(declare-fun e!182581 () Bool)

(assert (=> b!288355 (= e!182581 (not true))))

(declare-datatypes ((SeekEntryResult!2028 0))(
  ( (MissingZero!2028 (index!10282 (_ BitVec 32))) (Found!2028 (index!10283 (_ BitVec 32))) (Intermediate!2028 (undefined!2840 Bool) (index!10284 (_ BitVec 32)) (x!28473 (_ BitVec 32))) (Undefined!2028) (MissingVacant!2028 (index!10285 (_ BitVec 32))) )
))
(declare-fun lt!142074 () SeekEntryResult!2028)

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!288355 (and (= (select (arr!6868 a!3312) (index!10284 lt!142074)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!10284 lt!142074) i!1256))))

(declare-fun res!150021 () Bool)

(assert (=> start!28180 (=> (not res!150021) (not e!182580))))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28180 (= res!150021 (validMask!0 mask!3809))))

(assert (=> start!28180 e!182580))

(assert (=> start!28180 true))

(declare-fun array_inv!4822 (array!14483) Bool)

(assert (=> start!28180 (array_inv!4822 a!3312)))

(declare-fun b!288356 () Bool)

(declare-fun res!150015 () Bool)

(assert (=> b!288356 (=> (not res!150015) (not e!182580))))

(assert (=> b!288356 (= res!150015 (and (= (size!7220 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7220 a!3312))))))

(declare-fun b!288357 () Bool)

(declare-fun e!182583 () Bool)

(assert (=> b!288357 (= e!182583 e!182581)))

(declare-fun res!150020 () Bool)

(assert (=> b!288357 (=> (not res!150020) (not e!182581))))

(declare-fun lt!142072 () Bool)

(assert (=> b!288357 (= res!150020 (and (or lt!142072 (not (undefined!2840 lt!142074))) (or lt!142072 (not (= (select (arr!6868 a!3312) (index!10284 lt!142074)) #b1000000000000000000000000000000000000000000000000000000000000000))) (or lt!142072 (not (= (select (arr!6868 a!3312) (index!10284 lt!142074)) k!2524))) (not lt!142072)))))

(assert (=> b!288357 (= lt!142072 (not (is-Intermediate!2028 lt!142074)))))

(declare-fun b!288358 () Bool)

(declare-fun res!150019 () Bool)

(declare-fun e!182584 () Bool)

(assert (=> b!288358 (=> (not res!150019) (not e!182584))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14483 (_ BitVec 32)) Bool)

(assert (=> b!288358 (= res!150019 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!288359 () Bool)

(assert (=> b!288359 (= e!182580 e!182584)))

(declare-fun res!150018 () Bool)

(assert (=> b!288359 (=> (not res!150018) (not e!182584))))

(declare-fun lt!142073 () Bool)

(declare-fun lt!142071 () SeekEntryResult!2028)

(assert (=> b!288359 (= res!150018 (or lt!142073 (= lt!142071 (MissingVacant!2028 i!1256))))))

(assert (=> b!288359 (= lt!142073 (= lt!142071 (MissingZero!2028 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14483 (_ BitVec 32)) SeekEntryResult!2028)

(assert (=> b!288359 (= lt!142071 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!288360 () Bool)

(assert (=> b!288360 (= e!182584 e!182583)))

(declare-fun res!150016 () Bool)

(assert (=> b!288360 (=> (not res!150016) (not e!182583))))

(assert (=> b!288360 (= res!150016 lt!142073)))

(declare-fun lt!142075 () SeekEntryResult!2028)

(declare-fun lt!142076 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14483 (_ BitVec 32)) SeekEntryResult!2028)

(assert (=> b!288360 (= lt!142075 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!142076 k!2524 (array!14484 (store (arr!6868 a!3312) i!1256 k!2524) (size!7220 a!3312)) mask!3809))))

(assert (=> b!288360 (= lt!142074 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!142076 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!288360 (= lt!142076 (toIndex!0 k!2524 mask!3809))))

(assert (= (and start!28180 res!150021) b!288356))

(assert (= (and b!288356 res!150015) b!288354))

(assert (= (and b!288354 res!150014) b!288353))

(assert (= (and b!288353 res!150017) b!288359))

(assert (= (and b!288359 res!150018) b!288358))

(assert (= (and b!288358 res!150019) b!288360))

(assert (= (and b!288360 res!150016) b!288357))

(assert (= (and b!288357 res!150020) b!288355))

(declare-fun m!302629 () Bool)

(assert (=> b!288358 m!302629))

(declare-fun m!302631 () Bool)

(assert (=> b!288354 m!302631))

(declare-fun m!302633 () Bool)

(assert (=> b!288360 m!302633))

(declare-fun m!302635 () Bool)

(assert (=> b!288360 m!302635))

(declare-fun m!302637 () Bool)

(assert (=> b!288360 m!302637))

(declare-fun m!302639 () Bool)

(assert (=> b!288360 m!302639))

(declare-fun m!302641 () Bool)

(assert (=> b!288353 m!302641))

(declare-fun m!302643 () Bool)

(assert (=> b!288355 m!302643))

(declare-fun m!302645 () Bool)

(assert (=> b!288359 m!302645))

(assert (=> b!288357 m!302643))

(declare-fun m!302647 () Bool)

(assert (=> start!28180 m!302647))

(declare-fun m!302649 () Bool)

(assert (=> start!28180 m!302649))

(push 1)

