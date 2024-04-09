; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!29956 () Bool)

(assert start!29956)

(declare-fun b!300730 () Bool)

(declare-fun e!189881 () Bool)

(assert (=> b!300730 (= e!189881 false)))

(declare-datatypes ((SeekEntryResult!2348 0))(
  ( (MissingZero!2348 (index!11568 (_ BitVec 32))) (Found!2348 (index!11569 (_ BitVec 32))) (Intermediate!2348 (undefined!3160 Bool) (index!11570 (_ BitVec 32)) (x!29791 (_ BitVec 32))) (Undefined!2348) (MissingVacant!2348 (index!11571 (_ BitVec 32))) )
))
(declare-fun lt!149686 () SeekEntryResult!2348)

(declare-fun i!1256 () (_ BitVec 32))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun lt!149684 () (_ BitVec 32))

(declare-datatypes ((array!15192 0))(
  ( (array!15193 (arr!7188 (Array (_ BitVec 32) (_ BitVec 64))) (size!7540 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!15192)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15192 (_ BitVec 32)) SeekEntryResult!2348)

(assert (=> b!300730 (= lt!149686 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!149684 k!2524 (array!15193 (store (arr!7188 a!3312) i!1256 k!2524) (size!7540 a!3312)) mask!3809))))

(declare-fun lt!149685 () SeekEntryResult!2348)

(assert (=> b!300730 (= lt!149685 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!149684 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!300730 (= lt!149684 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!300731 () Bool)

(declare-fun res!158643 () Bool)

(declare-fun e!189882 () Bool)

(assert (=> b!300731 (=> (not res!158643) (not e!189882))))

(declare-fun arrayContainsKey!0 (array!15192 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!300731 (= res!158643 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!300732 () Bool)

(declare-fun res!158642 () Bool)

(assert (=> b!300732 (=> (not res!158642) (not e!189882))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!300732 (= res!158642 (validKeyInArray!0 k!2524))))

(declare-fun b!300733 () Bool)

(assert (=> b!300733 (= e!189882 e!189881)))

(declare-fun res!158640 () Bool)

(assert (=> b!300733 (=> (not res!158640) (not e!189881))))

(declare-fun lt!149687 () SeekEntryResult!2348)

(assert (=> b!300733 (= res!158640 (or (= lt!149687 (MissingZero!2348 i!1256)) (= lt!149687 (MissingVacant!2348 i!1256))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15192 (_ BitVec 32)) SeekEntryResult!2348)

(assert (=> b!300733 (= lt!149687 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun res!158638 () Bool)

(assert (=> start!29956 (=> (not res!158638) (not e!189882))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29956 (= res!158638 (validMask!0 mask!3809))))

(assert (=> start!29956 e!189882))

(assert (=> start!29956 true))

(declare-fun array_inv!5142 (array!15192) Bool)

(assert (=> start!29956 (array_inv!5142 a!3312)))

(declare-fun b!300734 () Bool)

(declare-fun res!158639 () Bool)

(assert (=> b!300734 (=> (not res!158639) (not e!189882))))

(assert (=> b!300734 (= res!158639 (and (= (size!7540 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7540 a!3312))))))

(declare-fun b!300735 () Bool)

(declare-fun res!158641 () Bool)

(assert (=> b!300735 (=> (not res!158641) (not e!189881))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15192 (_ BitVec 32)) Bool)

(assert (=> b!300735 (= res!158641 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(assert (= (and start!29956 res!158638) b!300734))

(assert (= (and b!300734 res!158639) b!300732))

(assert (= (and b!300732 res!158642) b!300731))

(assert (= (and b!300731 res!158643) b!300733))

(assert (= (and b!300733 res!158640) b!300735))

(assert (= (and b!300735 res!158641) b!300730))

(declare-fun m!312659 () Bool)

(assert (=> b!300733 m!312659))

(declare-fun m!312661 () Bool)

(assert (=> b!300735 m!312661))

(declare-fun m!312663 () Bool)

(assert (=> b!300731 m!312663))

(declare-fun m!312665 () Bool)

(assert (=> start!29956 m!312665))

(declare-fun m!312667 () Bool)

(assert (=> start!29956 m!312667))

(declare-fun m!312669 () Bool)

(assert (=> b!300732 m!312669))

(declare-fun m!312671 () Bool)

(assert (=> b!300730 m!312671))

(declare-fun m!312673 () Bool)

(assert (=> b!300730 m!312673))

(declare-fun m!312675 () Bool)

(assert (=> b!300730 m!312675))

(declare-fun m!312677 () Bool)

(assert (=> b!300730 m!312677))

(push 1)

(assert (not b!300732))

(assert (not b!300730))

(assert (not b!300731))

