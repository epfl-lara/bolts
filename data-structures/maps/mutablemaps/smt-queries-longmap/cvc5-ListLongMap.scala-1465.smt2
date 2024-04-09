; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28186 () Bool)

(assert start!28186)

(declare-fun b!288425 () Bool)

(declare-fun e!182625 () Bool)

(assert (=> b!288425 (= e!182625 (not true))))

(declare-datatypes ((array!14489 0))(
  ( (array!14490 (arr!6871 (Array (_ BitVec 32) (_ BitVec 64))) (size!7223 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14489)

(declare-datatypes ((SeekEntryResult!2031 0))(
  ( (MissingZero!2031 (index!10294 (_ BitVec 32))) (Found!2031 (index!10295 (_ BitVec 32))) (Intermediate!2031 (undefined!2843 Bool) (index!10296 (_ BitVec 32)) (x!28484 (_ BitVec 32))) (Undefined!2031) (MissingVacant!2031 (index!10297 (_ BitVec 32))) )
))
(declare-fun lt!142125 () SeekEntryResult!2031)

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!288425 (and (= (select (arr!6871 a!3312) (index!10296 lt!142125)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!10296 lt!142125) i!1256))))

(declare-fun b!288426 () Bool)

(declare-fun res!150087 () Bool)

(declare-fun e!182627 () Bool)

(assert (=> b!288426 (=> (not res!150087) (not e!182627))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!288426 (= res!150087 (validKeyInArray!0 k!2524))))

(declare-fun b!288427 () Bool)

(declare-fun e!182629 () Bool)

(declare-fun e!182626 () Bool)

(assert (=> b!288427 (= e!182629 e!182626)))

(declare-fun res!150093 () Bool)

(assert (=> b!288427 (=> (not res!150093) (not e!182626))))

(declare-fun lt!142129 () Bool)

(assert (=> b!288427 (= res!150093 lt!142129)))

(declare-fun lt!142126 () (_ BitVec 32))

(declare-fun lt!142130 () SeekEntryResult!2031)

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14489 (_ BitVec 32)) SeekEntryResult!2031)

(assert (=> b!288427 (= lt!142130 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!142126 k!2524 (array!14490 (store (arr!6871 a!3312) i!1256 k!2524) (size!7223 a!3312)) mask!3809))))

(assert (=> b!288427 (= lt!142125 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!142126 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!288427 (= lt!142126 (toIndex!0 k!2524 mask!3809))))

(declare-fun res!150091 () Bool)

(assert (=> start!28186 (=> (not res!150091) (not e!182627))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28186 (= res!150091 (validMask!0 mask!3809))))

(assert (=> start!28186 e!182627))

(assert (=> start!28186 true))

(declare-fun array_inv!4825 (array!14489) Bool)

(assert (=> start!28186 (array_inv!4825 a!3312)))

(declare-fun b!288428 () Bool)

(assert (=> b!288428 (= e!182626 e!182625)))

(declare-fun res!150086 () Bool)

(assert (=> b!288428 (=> (not res!150086) (not e!182625))))

(declare-fun lt!142127 () Bool)

(assert (=> b!288428 (= res!150086 (and (or lt!142127 (not (undefined!2843 lt!142125))) (or lt!142127 (not (= (select (arr!6871 a!3312) (index!10296 lt!142125)) #b1000000000000000000000000000000000000000000000000000000000000000))) (or lt!142127 (not (= (select (arr!6871 a!3312) (index!10296 lt!142125)) k!2524))) (not lt!142127)))))

(assert (=> b!288428 (= lt!142127 (not (is-Intermediate!2031 lt!142125)))))

(declare-fun b!288429 () Bool)

(declare-fun res!150090 () Bool)

(assert (=> b!288429 (=> (not res!150090) (not e!182627))))

(declare-fun arrayContainsKey!0 (array!14489 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!288429 (= res!150090 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!288430 () Bool)

(declare-fun res!150089 () Bool)

(assert (=> b!288430 (=> (not res!150089) (not e!182627))))

(assert (=> b!288430 (= res!150089 (and (= (size!7223 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7223 a!3312))))))

(declare-fun b!288431 () Bool)

(declare-fun res!150092 () Bool)

(assert (=> b!288431 (=> (not res!150092) (not e!182629))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14489 (_ BitVec 32)) Bool)

(assert (=> b!288431 (= res!150092 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!288432 () Bool)

(assert (=> b!288432 (= e!182627 e!182629)))

(declare-fun res!150088 () Bool)

(assert (=> b!288432 (=> (not res!150088) (not e!182629))))

(declare-fun lt!142128 () SeekEntryResult!2031)

(assert (=> b!288432 (= res!150088 (or lt!142129 (= lt!142128 (MissingVacant!2031 i!1256))))))

(assert (=> b!288432 (= lt!142129 (= lt!142128 (MissingZero!2031 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14489 (_ BitVec 32)) SeekEntryResult!2031)

(assert (=> b!288432 (= lt!142128 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(assert (= (and start!28186 res!150091) b!288430))

(assert (= (and b!288430 res!150089) b!288426))

(assert (= (and b!288426 res!150087) b!288429))

(assert (= (and b!288429 res!150090) b!288432))

(assert (= (and b!288432 res!150088) b!288431))

(assert (= (and b!288431 res!150092) b!288427))

(assert (= (and b!288427 res!150093) b!288428))

(assert (= (and b!288428 res!150086) b!288425))

(declare-fun m!302695 () Bool)

(assert (=> b!288428 m!302695))

(declare-fun m!302697 () Bool)

(assert (=> b!288426 m!302697))

(declare-fun m!302699 () Bool)

(assert (=> b!288431 m!302699))

(declare-fun m!302701 () Bool)

(assert (=> b!288432 m!302701))

(declare-fun m!302703 () Bool)

(assert (=> b!288429 m!302703))

(declare-fun m!302705 () Bool)

(assert (=> b!288427 m!302705))

(declare-fun m!302707 () Bool)

(assert (=> b!288427 m!302707))

(declare-fun m!302709 () Bool)

(assert (=> b!288427 m!302709))

(declare-fun m!302711 () Bool)

(assert (=> b!288427 m!302711))

(assert (=> b!288425 m!302695))

(declare-fun m!302713 () Bool)

(assert (=> start!28186 m!302713))

(declare-fun m!302715 () Bool)

(assert (=> start!28186 m!302715))

(push 1)

