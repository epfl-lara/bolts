; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28250 () Bool)

(assert start!28250)

(declare-fun b!289193 () Bool)

(declare-fun e!183109 () Bool)

(assert (=> b!289193 (= e!183109 (not true))))

(declare-datatypes ((array!14553 0))(
  ( (array!14554 (arr!6903 (Array (_ BitVec 32) (_ BitVec 64))) (size!7255 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14553)

(declare-datatypes ((SeekEntryResult!2063 0))(
  ( (MissingZero!2063 (index!10422 (_ BitVec 32))) (Found!2063 (index!10423 (_ BitVec 32))) (Intermediate!2063 (undefined!2875 Bool) (index!10424 (_ BitVec 32)) (x!28596 (_ BitVec 32))) (Undefined!2063) (MissingVacant!2063 (index!10425 (_ BitVec 32))) )
))
(declare-fun lt!142703 () SeekEntryResult!2063)

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!289193 (and (= (select (arr!6903 a!3312) (index!10424 lt!142703)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!10424 lt!142703) i!1256))))

(declare-fun b!289194 () Bool)

(declare-fun res!150860 () Bool)

(declare-fun e!183108 () Bool)

(assert (=> b!289194 (=> (not res!150860) (not e!183108))))

(declare-fun mask!3809 () (_ BitVec 32))

(assert (=> b!289194 (= res!150860 (and (= (size!7255 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7255 a!3312))))))

(declare-fun b!289195 () Bool)

(declare-fun res!150861 () Bool)

(declare-fun e!183107 () Bool)

(assert (=> b!289195 (=> (not res!150861) (not e!183107))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14553 (_ BitVec 32)) Bool)

(assert (=> b!289195 (= res!150861 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!289196 () Bool)

(declare-fun e!183106 () Bool)

(assert (=> b!289196 (= e!183107 e!183106)))

(declare-fun res!150857 () Bool)

(assert (=> b!289196 (=> (not res!150857) (not e!183106))))

(declare-fun lt!142706 () Bool)

(assert (=> b!289196 (= res!150857 lt!142706)))

(declare-fun lt!142701 () SeekEntryResult!2063)

(declare-fun lt!142705 () (_ BitVec 32))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14553 (_ BitVec 32)) SeekEntryResult!2063)

(assert (=> b!289196 (= lt!142701 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!142705 k!2524 (array!14554 (store (arr!6903 a!3312) i!1256 k!2524) (size!7255 a!3312)) mask!3809))))

(assert (=> b!289196 (= lt!142703 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!142705 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!289196 (= lt!142705 (toIndex!0 k!2524 mask!3809))))

(declare-fun res!150854 () Bool)

(assert (=> start!28250 (=> (not res!150854) (not e!183108))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28250 (= res!150854 (validMask!0 mask!3809))))

(assert (=> start!28250 e!183108))

(assert (=> start!28250 true))

(declare-fun array_inv!4857 (array!14553) Bool)

(assert (=> start!28250 (array_inv!4857 a!3312)))

(declare-fun b!289197 () Bool)

(declare-fun res!150859 () Bool)

(assert (=> b!289197 (=> (not res!150859) (not e!183108))))

(declare-fun arrayContainsKey!0 (array!14553 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!289197 (= res!150859 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!289198 () Bool)

(assert (=> b!289198 (= e!183108 e!183107)))

(declare-fun res!150855 () Bool)

(assert (=> b!289198 (=> (not res!150855) (not e!183107))))

(declare-fun lt!142702 () SeekEntryResult!2063)

(assert (=> b!289198 (= res!150855 (or lt!142706 (= lt!142702 (MissingVacant!2063 i!1256))))))

(assert (=> b!289198 (= lt!142706 (= lt!142702 (MissingZero!2063 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14553 (_ BitVec 32)) SeekEntryResult!2063)

(assert (=> b!289198 (= lt!142702 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!289199 () Bool)

(assert (=> b!289199 (= e!183106 e!183109)))

(declare-fun res!150856 () Bool)

(assert (=> b!289199 (=> (not res!150856) (not e!183109))))

(declare-fun lt!142704 () Bool)

(assert (=> b!289199 (= res!150856 (and (or lt!142704 (not (undefined!2875 lt!142703))) (or lt!142704 (not (= (select (arr!6903 a!3312) (index!10424 lt!142703)) #b1000000000000000000000000000000000000000000000000000000000000000))) (or lt!142704 (not (= (select (arr!6903 a!3312) (index!10424 lt!142703)) k!2524))) (not lt!142704)))))

(assert (=> b!289199 (= lt!142704 (not (is-Intermediate!2063 lt!142703)))))

(declare-fun b!289200 () Bool)

(declare-fun res!150858 () Bool)

(assert (=> b!289200 (=> (not res!150858) (not e!183108))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!289200 (= res!150858 (validKeyInArray!0 k!2524))))

(assert (= (and start!28250 res!150854) b!289194))

(assert (= (and b!289194 res!150860) b!289200))

(assert (= (and b!289200 res!150858) b!289197))

(assert (= (and b!289197 res!150859) b!289198))

(assert (= (and b!289198 res!150855) b!289195))

(assert (= (and b!289195 res!150861) b!289196))

(assert (= (and b!289196 res!150857) b!289199))

(assert (= (and b!289199 res!150856) b!289193))

(declare-fun m!303399 () Bool)

(assert (=> b!289195 m!303399))

(declare-fun m!303401 () Bool)

(assert (=> b!289197 m!303401))

(declare-fun m!303403 () Bool)

(assert (=> start!28250 m!303403))

(declare-fun m!303405 () Bool)

(assert (=> start!28250 m!303405))

(declare-fun m!303407 () Bool)

(assert (=> b!289196 m!303407))

(declare-fun m!303409 () Bool)

(assert (=> b!289196 m!303409))

(declare-fun m!303411 () Bool)

(assert (=> b!289196 m!303411))

(declare-fun m!303413 () Bool)

(assert (=> b!289196 m!303413))

(declare-fun m!303415 () Bool)

(assert (=> b!289200 m!303415))

(declare-fun m!303417 () Bool)

(assert (=> b!289193 m!303417))

(assert (=> b!289199 m!303417))

(declare-fun m!303419 () Bool)

(assert (=> b!289198 m!303419))

(push 1)

