; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28216 () Bool)

(assert start!28216)

(declare-fun b!288785 () Bool)

(declare-fun res!150446 () Bool)

(declare-fun e!182853 () Bool)

(assert (=> b!288785 (=> (not res!150446) (not e!182853))))

(declare-datatypes ((array!14519 0))(
  ( (array!14520 (arr!6886 (Array (_ BitVec 32) (_ BitVec 64))) (size!7238 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14519)

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!14519 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!288785 (= res!150446 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!288786 () Bool)

(declare-fun res!150450 () Bool)

(assert (=> b!288786 (=> (not res!150450) (not e!182853))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-fun mask!3809 () (_ BitVec 32))

(assert (=> b!288786 (= res!150450 (and (= (size!7238 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7238 a!3312))))))

(declare-fun b!288787 () Bool)

(declare-fun e!182851 () Bool)

(assert (=> b!288787 (= e!182851 (not true))))

(declare-datatypes ((SeekEntryResult!2046 0))(
  ( (MissingZero!2046 (index!10354 (_ BitVec 32))) (Found!2046 (index!10355 (_ BitVec 32))) (Intermediate!2046 (undefined!2858 Bool) (index!10356 (_ BitVec 32)) (x!28539 (_ BitVec 32))) (Undefined!2046) (MissingVacant!2046 (index!10357 (_ BitVec 32))) )
))
(declare-fun lt!142398 () SeekEntryResult!2046)

(assert (=> b!288787 (and (= (select (arr!6886 a!3312) (index!10356 lt!142398)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!10356 lt!142398) i!1256))))

(declare-fun b!288788 () Bool)

(declare-fun e!182850 () Bool)

(assert (=> b!288788 (= e!182850 e!182851)))

(declare-fun res!150453 () Bool)

(assert (=> b!288788 (=> (not res!150453) (not e!182851))))

(declare-fun lt!142395 () Bool)

(assert (=> b!288788 (= res!150453 (and (or lt!142395 (not (undefined!2858 lt!142398))) (or lt!142395 (not (= (select (arr!6886 a!3312) (index!10356 lt!142398)) #b1000000000000000000000000000000000000000000000000000000000000000))) (or lt!142395 (not (= (select (arr!6886 a!3312) (index!10356 lt!142398)) k!2524))) (not lt!142395)))))

(assert (=> b!288788 (= lt!142395 (not (is-Intermediate!2046 lt!142398)))))

(declare-fun res!150447 () Bool)

(assert (=> start!28216 (=> (not res!150447) (not e!182853))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28216 (= res!150447 (validMask!0 mask!3809))))

(assert (=> start!28216 e!182853))

(assert (=> start!28216 true))

(declare-fun array_inv!4840 (array!14519) Bool)

(assert (=> start!28216 (array_inv!4840 a!3312)))

(declare-fun b!288789 () Bool)

(declare-fun res!150452 () Bool)

(declare-fun e!182854 () Bool)

(assert (=> b!288789 (=> (not res!150452) (not e!182854))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14519 (_ BitVec 32)) Bool)

(assert (=> b!288789 (= res!150452 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!288790 () Bool)

(declare-fun res!150448 () Bool)

(assert (=> b!288790 (=> (not res!150448) (not e!182853))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!288790 (= res!150448 (validKeyInArray!0 k!2524))))

(declare-fun b!288791 () Bool)

(assert (=> b!288791 (= e!182853 e!182854)))

(declare-fun res!150449 () Bool)

(assert (=> b!288791 (=> (not res!150449) (not e!182854))))

(declare-fun lt!142396 () Bool)

(declare-fun lt!142400 () SeekEntryResult!2046)

(assert (=> b!288791 (= res!150449 (or lt!142396 (= lt!142400 (MissingVacant!2046 i!1256))))))

(assert (=> b!288791 (= lt!142396 (= lt!142400 (MissingZero!2046 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14519 (_ BitVec 32)) SeekEntryResult!2046)

(assert (=> b!288791 (= lt!142400 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!288792 () Bool)

(assert (=> b!288792 (= e!182854 e!182850)))

(declare-fun res!150451 () Bool)

(assert (=> b!288792 (=> (not res!150451) (not e!182850))))

(assert (=> b!288792 (= res!150451 lt!142396)))

(declare-fun lt!142399 () SeekEntryResult!2046)

(declare-fun lt!142397 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14519 (_ BitVec 32)) SeekEntryResult!2046)

(assert (=> b!288792 (= lt!142399 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!142397 k!2524 (array!14520 (store (arr!6886 a!3312) i!1256 k!2524) (size!7238 a!3312)) mask!3809))))

(assert (=> b!288792 (= lt!142398 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!142397 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!288792 (= lt!142397 (toIndex!0 k!2524 mask!3809))))

(assert (= (and start!28216 res!150447) b!288786))

(assert (= (and b!288786 res!150450) b!288790))

(assert (= (and b!288790 res!150448) b!288785))

(assert (= (and b!288785 res!150446) b!288791))

(assert (= (and b!288791 res!150449) b!288789))

(assert (= (and b!288789 res!150452) b!288792))

(assert (= (and b!288792 res!150451) b!288788))

(assert (= (and b!288788 res!150453) b!288787))

(declare-fun m!303025 () Bool)

(assert (=> b!288788 m!303025))

(declare-fun m!303027 () Bool)

(assert (=> b!288789 m!303027))

(assert (=> b!288787 m!303025))

(declare-fun m!303029 () Bool)

(assert (=> start!28216 m!303029))

(declare-fun m!303031 () Bool)

(assert (=> start!28216 m!303031))

(declare-fun m!303033 () Bool)

(assert (=> b!288792 m!303033))

(declare-fun m!303035 () Bool)

(assert (=> b!288792 m!303035))

(declare-fun m!303037 () Bool)

(assert (=> b!288792 m!303037))

(declare-fun m!303039 () Bool)

(assert (=> b!288792 m!303039))

(declare-fun m!303041 () Bool)

(assert (=> b!288790 m!303041))

(declare-fun m!303043 () Bool)

(assert (=> b!288785 m!303043))

(declare-fun m!303045 () Bool)

(assert (=> b!288791 m!303045))

(push 1)

