; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28286 () Bool)

(assert start!28286)

(declare-fun b!289730 () Bool)

(declare-datatypes ((Unit!9128 0))(
  ( (Unit!9129) )
))
(declare-fun e!183411 () Unit!9128)

(declare-fun Unit!9130 () Unit!9128)

(assert (=> b!289730 (= e!183411 Unit!9130)))

(assert (=> b!289730 false))

(declare-fun b!289731 () Bool)

(declare-fun e!183410 () Bool)

(assert (=> b!289731 (= e!183410 false)))

(declare-fun lt!143066 () Unit!9128)

(assert (=> b!289731 (= lt!143066 e!183411)))

(declare-datatypes ((SeekEntryResult!2081 0))(
  ( (MissingZero!2081 (index!10494 (_ BitVec 32))) (Found!2081 (index!10495 (_ BitVec 32))) (Intermediate!2081 (undefined!2893 Bool) (index!10496 (_ BitVec 32)) (x!28662 (_ BitVec 32))) (Undefined!2081) (MissingVacant!2081 (index!10497 (_ BitVec 32))) )
))
(declare-fun lt!143060 () SeekEntryResult!2081)

(declare-datatypes ((array!14589 0))(
  ( (array!14590 (arr!6921 (Array (_ BitVec 32) (_ BitVec 64))) (size!7273 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14589)

(declare-fun c!46801 () Bool)

(declare-fun k!2524 () (_ BitVec 64))

(assert (=> b!289731 (= c!46801 (or (and (is-Intermediate!2081 lt!143060) (undefined!2893 lt!143060)) (and (is-Intermediate!2081 lt!143060) (= (select (arr!6921 a!3312) (index!10496 lt!143060)) #b1000000000000000000000000000000000000000000000000000000000000000)) (and (is-Intermediate!2081 lt!143060) (= (select (arr!6921 a!3312) (index!10496 lt!143060)) k!2524))))))

(declare-fun b!289732 () Bool)

(declare-fun res!151255 () Bool)

(declare-fun e!183412 () Bool)

(assert (=> b!289732 (=> (not res!151255) (not e!183412))))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14589 (_ BitVec 32)) Bool)

(assert (=> b!289732 (= res!151255 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!289733 () Bool)

(declare-fun res!151251 () Bool)

(declare-fun e!183413 () Bool)

(assert (=> b!289733 (=> (not res!151251) (not e!183413))))

(declare-fun arrayContainsKey!0 (array!14589 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!289733 (= res!151251 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!289735 () Bool)

(declare-fun res!151252 () Bool)

(assert (=> b!289735 (=> (not res!151252) (not e!183413))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!289735 (= res!151252 (validKeyInArray!0 k!2524))))

(declare-fun b!289736 () Bool)

(declare-fun e!183415 () Unit!9128)

(assert (=> b!289736 (= e!183411 e!183415)))

(declare-fun c!46802 () Bool)

(assert (=> b!289736 (= c!46802 (is-Intermediate!2081 lt!143060))))

(declare-fun b!289737 () Bool)

(assert (=> b!289737 (= e!183413 e!183412)))

(declare-fun res!151254 () Bool)

(assert (=> b!289737 (=> (not res!151254) (not e!183412))))

(declare-fun lt!143063 () Bool)

(declare-fun i!1256 () (_ BitVec 32))

(declare-fun lt!143062 () SeekEntryResult!2081)

(assert (=> b!289737 (= res!151254 (or lt!143063 (= lt!143062 (MissingVacant!2081 i!1256))))))

(assert (=> b!289737 (= lt!143063 (= lt!143062 (MissingZero!2081 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14589 (_ BitVec 32)) SeekEntryResult!2081)

(assert (=> b!289737 (= lt!143062 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!289738 () Bool)

(assert (=> b!289738 false))

(declare-fun Unit!9131 () Unit!9128)

(assert (=> b!289738 (= e!183415 Unit!9131)))

(declare-fun b!289739 () Bool)

(declare-fun lt!143061 () SeekEntryResult!2081)

(assert (=> b!289739 (and (= lt!143061 lt!143060) (= (select (store (arr!6921 a!3312) i!1256 k!2524) (index!10496 lt!143060)) k!2524))))

(declare-fun lt!143065 () Unit!9128)

(declare-fun lt!143064 () (_ BitVec 32))

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 (array!14589 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!9128)

(assert (=> b!289739 (= lt!143065 (lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 a!3312 i!1256 k!2524 #b00000000000000000000000000000000 lt!143064 (index!10496 lt!143060) (x!28662 lt!143060) mask!3809))))

(assert (=> b!289739 (and (= (select (arr!6921 a!3312) (index!10496 lt!143060)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!10496 lt!143060) i!1256))))

(declare-fun Unit!9132 () Unit!9128)

(assert (=> b!289739 (= e!183415 Unit!9132)))

(declare-fun b!289740 () Bool)

(declare-fun res!151256 () Bool)

(assert (=> b!289740 (=> (not res!151256) (not e!183413))))

(assert (=> b!289740 (= res!151256 (and (= (size!7273 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7273 a!3312))))))

(declare-fun res!151253 () Bool)

(assert (=> start!28286 (=> (not res!151253) (not e!183413))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28286 (= res!151253 (validMask!0 mask!3809))))

(assert (=> start!28286 e!183413))

(assert (=> start!28286 true))

(declare-fun array_inv!4875 (array!14589) Bool)

(assert (=> start!28286 (array_inv!4875 a!3312)))

(declare-fun b!289734 () Bool)

(assert (=> b!289734 (= e!183412 e!183410)))

(declare-fun res!151257 () Bool)

(assert (=> b!289734 (=> (not res!151257) (not e!183410))))

(assert (=> b!289734 (= res!151257 lt!143063)))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14589 (_ BitVec 32)) SeekEntryResult!2081)

(assert (=> b!289734 (= lt!143061 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!143064 k!2524 (array!14590 (store (arr!6921 a!3312) i!1256 k!2524) (size!7273 a!3312)) mask!3809))))

(assert (=> b!289734 (= lt!143060 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!143064 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!289734 (= lt!143064 (toIndex!0 k!2524 mask!3809))))

(assert (= (and start!28286 res!151253) b!289740))

(assert (= (and b!289740 res!151256) b!289735))

(assert (= (and b!289735 res!151252) b!289733))

(assert (= (and b!289733 res!151251) b!289737))

(assert (= (and b!289737 res!151254) b!289732))

(assert (= (and b!289732 res!151255) b!289734))

(assert (= (and b!289734 res!151257) b!289731))

(assert (= (and b!289731 c!46801) b!289730))

(assert (= (and b!289731 (not c!46801)) b!289736))

(assert (= (and b!289736 c!46802) b!289739))

(assert (= (and b!289736 (not c!46802)) b!289738))

(declare-fun m!303839 () Bool)

(assert (=> b!289735 m!303839))

(declare-fun m!303841 () Bool)

(assert (=> b!289734 m!303841))

(declare-fun m!303843 () Bool)

(assert (=> b!289734 m!303843))

(declare-fun m!303845 () Bool)

(assert (=> b!289734 m!303845))

(declare-fun m!303847 () Bool)

(assert (=> b!289734 m!303847))

(declare-fun m!303849 () Bool)

(assert (=> b!289731 m!303849))

(declare-fun m!303851 () Bool)

(assert (=> b!289733 m!303851))

(declare-fun m!303853 () Bool)

(assert (=> b!289737 m!303853))

(declare-fun m!303855 () Bool)

(assert (=> b!289732 m!303855))

(assert (=> b!289739 m!303841))

(declare-fun m!303857 () Bool)

(assert (=> b!289739 m!303857))

(declare-fun m!303859 () Bool)

(assert (=> b!289739 m!303859))

(assert (=> b!289739 m!303849))

(declare-fun m!303861 () Bool)

(assert (=> start!28286 m!303861))

(declare-fun m!303863 () Bool)

(assert (=> start!28286 m!303863))

(push 1)

