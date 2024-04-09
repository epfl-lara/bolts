; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28642 () Bool)

(assert start!28642)

(declare-fun b!292669 () Bool)

(declare-fun e!185141 () Bool)

(declare-fun e!185142 () Bool)

(assert (=> b!292669 (= e!185141 e!185142)))

(declare-fun res!153767 () Bool)

(assert (=> b!292669 (=> (not res!153767) (not e!185142))))

(declare-datatypes ((SeekEntryResult!2187 0))(
  ( (MissingZero!2187 (index!10918 (_ BitVec 32))) (Found!2187 (index!10919 (_ BitVec 32))) (Intermediate!2187 (undefined!2999 Bool) (index!10920 (_ BitVec 32)) (x!29074 (_ BitVec 32))) (Undefined!2187) (MissingVacant!2187 (index!10921 (_ BitVec 32))) )
))
(declare-fun lt!145047 () SeekEntryResult!2187)

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!292669 (= res!153767 (or (= lt!145047 (MissingZero!2187 i!1256)) (= lt!145047 (MissingVacant!2187 i!1256))))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-datatypes ((array!14810 0))(
  ( (array!14811 (arr!7027 (Array (_ BitVec 32) (_ BitVec 64))) (size!7379 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14810)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14810 (_ BitVec 32)) SeekEntryResult!2187)

(assert (=> b!292669 (= lt!145047 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!292670 () Bool)

(assert (=> b!292670 (= e!185142 false)))

(declare-fun lt!145049 () SeekEntryResult!2187)

(declare-fun lt!145048 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14810 (_ BitVec 32)) SeekEntryResult!2187)

(assert (=> b!292670 (= lt!145049 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!145048 k!2524 (array!14811 (store (arr!7027 a!3312) i!1256 k!2524) (size!7379 a!3312)) mask!3809))))

(declare-fun lt!145046 () SeekEntryResult!2187)

(assert (=> b!292670 (= lt!145046 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!145048 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!292670 (= lt!145048 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!292671 () Bool)

(declare-fun res!153768 () Bool)

(assert (=> b!292671 (=> (not res!153768) (not e!185141))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!292671 (= res!153768 (validKeyInArray!0 k!2524))))

(declare-fun res!153766 () Bool)

(assert (=> start!28642 (=> (not res!153766) (not e!185141))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28642 (= res!153766 (validMask!0 mask!3809))))

(assert (=> start!28642 e!185141))

(assert (=> start!28642 true))

(declare-fun array_inv!4981 (array!14810) Bool)

(assert (=> start!28642 (array_inv!4981 a!3312)))

(declare-fun b!292672 () Bool)

(declare-fun res!153765 () Bool)

(assert (=> b!292672 (=> (not res!153765) (not e!185141))))

(declare-fun arrayContainsKey!0 (array!14810 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!292672 (= res!153765 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!292673 () Bool)

(declare-fun res!153763 () Bool)

(assert (=> b!292673 (=> (not res!153763) (not e!185141))))

(assert (=> b!292673 (= res!153763 (and (= (size!7379 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7379 a!3312))))))

(declare-fun b!292674 () Bool)

(declare-fun res!153764 () Bool)

(assert (=> b!292674 (=> (not res!153764) (not e!185142))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14810 (_ BitVec 32)) Bool)

(assert (=> b!292674 (= res!153764 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(assert (= (and start!28642 res!153766) b!292673))

(assert (= (and b!292673 res!153763) b!292671))

(assert (= (and b!292671 res!153768) b!292672))

(assert (= (and b!292672 res!153765) b!292669))

(assert (= (and b!292669 res!153767) b!292674))

(assert (= (and b!292674 res!153764) b!292670))

(declare-fun m!306475 () Bool)

(assert (=> start!28642 m!306475))

(declare-fun m!306477 () Bool)

(assert (=> start!28642 m!306477))

(declare-fun m!306479 () Bool)

(assert (=> b!292669 m!306479))

(declare-fun m!306481 () Bool)

(assert (=> b!292672 m!306481))

(declare-fun m!306483 () Bool)

(assert (=> b!292671 m!306483))

(declare-fun m!306485 () Bool)

(assert (=> b!292670 m!306485))

(declare-fun m!306487 () Bool)

(assert (=> b!292670 m!306487))

(declare-fun m!306489 () Bool)

(assert (=> b!292670 m!306489))

(declare-fun m!306491 () Bool)

(assert (=> b!292670 m!306491))

(declare-fun m!306493 () Bool)

(assert (=> b!292674 m!306493))

(push 1)

