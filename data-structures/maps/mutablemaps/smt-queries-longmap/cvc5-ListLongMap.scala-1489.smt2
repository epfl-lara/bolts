; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28330 () Bool)

(assert start!28330)

(declare-fun b!290131 () Bool)

(declare-fun res!151651 () Bool)

(declare-fun e!183613 () Bool)

(assert (=> b!290131 (=> (not res!151651) (not e!183613))))

(declare-datatypes ((array!14633 0))(
  ( (array!14634 (arr!6943 (Array (_ BitVec 32) (_ BitVec 64))) (size!7295 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14633)

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14633 (_ BitVec 32)) Bool)

(assert (=> b!290131 (= res!151651 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun res!151650 () Bool)

(declare-fun e!183611 () Bool)

(assert (=> start!28330 (=> (not res!151650) (not e!183611))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28330 (= res!151650 (validMask!0 mask!3809))))

(assert (=> start!28330 e!183611))

(assert (=> start!28330 true))

(declare-fun array_inv!4897 (array!14633) Bool)

(assert (=> start!28330 (array_inv!4897 a!3312)))

(declare-fun b!290132 () Bool)

(declare-fun res!151653 () Bool)

(assert (=> b!290132 (=> (not res!151653) (not e!183611))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!14633 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!290132 (= res!151653 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!290133 () Bool)

(assert (=> b!290133 (= e!183613 false)))

(declare-fun lt!143337 () (_ BitVec 32))

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2103 0))(
  ( (MissingZero!2103 (index!10582 (_ BitVec 32))) (Found!2103 (index!10583 (_ BitVec 32))) (Intermediate!2103 (undefined!2915 Bool) (index!10584 (_ BitVec 32)) (x!28748 (_ BitVec 32))) (Undefined!2103) (MissingVacant!2103 (index!10585 (_ BitVec 32))) )
))
(declare-fun lt!143336 () SeekEntryResult!2103)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14633 (_ BitVec 32)) SeekEntryResult!2103)

(assert (=> b!290133 (= lt!143336 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!143337 k!2524 (array!14634 (store (arr!6943 a!3312) i!1256 k!2524) (size!7295 a!3312)) mask!3809))))

(declare-fun lt!143339 () SeekEntryResult!2103)

(assert (=> b!290133 (= lt!143339 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!143337 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!290133 (= lt!143337 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!290134 () Bool)

(declare-fun res!151652 () Bool)

(assert (=> b!290134 (=> (not res!151652) (not e!183611))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!290134 (= res!151652 (validKeyInArray!0 k!2524))))

(declare-fun b!290135 () Bool)

(assert (=> b!290135 (= e!183611 e!183613)))

(declare-fun res!151649 () Bool)

(assert (=> b!290135 (=> (not res!151649) (not e!183613))))

(declare-fun lt!143338 () SeekEntryResult!2103)

(assert (=> b!290135 (= res!151649 (or (= lt!143338 (MissingZero!2103 i!1256)) (= lt!143338 (MissingVacant!2103 i!1256))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14633 (_ BitVec 32)) SeekEntryResult!2103)

(assert (=> b!290135 (= lt!143338 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!290136 () Bool)

(declare-fun res!151648 () Bool)

(assert (=> b!290136 (=> (not res!151648) (not e!183611))))

(assert (=> b!290136 (= res!151648 (and (= (size!7295 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7295 a!3312))))))

(assert (= (and start!28330 res!151650) b!290136))

(assert (= (and b!290136 res!151648) b!290134))

(assert (= (and b!290134 res!151652) b!290132))

(assert (= (and b!290132 res!151653) b!290135))

(assert (= (and b!290135 res!151649) b!290131))

(assert (= (and b!290131 res!151651) b!290133))

(declare-fun m!304285 () Bool)

(assert (=> start!28330 m!304285))

(declare-fun m!304287 () Bool)

(assert (=> start!28330 m!304287))

(declare-fun m!304289 () Bool)

(assert (=> b!290134 m!304289))

(declare-fun m!304291 () Bool)

(assert (=> b!290132 m!304291))

(declare-fun m!304293 () Bool)

(assert (=> b!290135 m!304293))

(declare-fun m!304295 () Bool)

(assert (=> b!290133 m!304295))

(declare-fun m!304297 () Bool)

(assert (=> b!290133 m!304297))

(declare-fun m!304299 () Bool)

(assert (=> b!290133 m!304299))

(declare-fun m!304301 () Bool)

(assert (=> b!290133 m!304301))

(declare-fun m!304303 () Bool)

(assert (=> b!290131 m!304303))

(push 1)

