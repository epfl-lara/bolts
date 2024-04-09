; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!29892 () Bool)

(assert start!29892)

(declare-fun b!300370 () Bool)

(declare-fun e!189679 () Bool)

(assert (=> b!300370 (= e!189679 false)))

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((array!15173 0))(
  ( (array!15174 (arr!7180 (Array (_ BitVec 32) (_ BitVec 64))) (size!7532 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!15173)

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2340 0))(
  ( (MissingZero!2340 (index!11536 (_ BitVec 32))) (Found!2340 (index!11537 (_ BitVec 32))) (Intermediate!2340 (undefined!3152 Bool) (index!11538 (_ BitVec 32)) (x!29761 (_ BitVec 32))) (Undefined!2340) (MissingVacant!2340 (index!11539 (_ BitVec 32))) )
))
(declare-fun lt!149483 () SeekEntryResult!2340)

(declare-fun lt!149485 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15173 (_ BitVec 32)) SeekEntryResult!2340)

(assert (=> b!300370 (= lt!149483 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!149485 k!2524 (array!15174 (store (arr!7180 a!3312) i!1256 k!2524) (size!7532 a!3312)) mask!3809))))

(declare-fun lt!149484 () SeekEntryResult!2340)

(assert (=> b!300370 (= lt!149484 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!149485 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!300370 (= lt!149485 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!300372 () Bool)

(declare-fun res!158421 () Bool)

(declare-fun e!189677 () Bool)

(assert (=> b!300372 (=> (not res!158421) (not e!189677))))

(declare-fun arrayContainsKey!0 (array!15173 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!300372 (= res!158421 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!300373 () Bool)

(assert (=> b!300373 (= e!189677 e!189679)))

(declare-fun res!158424 () Bool)

(assert (=> b!300373 (=> (not res!158424) (not e!189679))))

(declare-fun lt!149486 () SeekEntryResult!2340)

(assert (=> b!300373 (= res!158424 (or (= lt!149486 (MissingZero!2340 i!1256)) (= lt!149486 (MissingVacant!2340 i!1256))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15173 (_ BitVec 32)) SeekEntryResult!2340)

(assert (=> b!300373 (= lt!149486 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!300374 () Bool)

(declare-fun res!158420 () Bool)

(assert (=> b!300374 (=> (not res!158420) (not e!189679))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15173 (_ BitVec 32)) Bool)

(assert (=> b!300374 (= res!158420 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!300375 () Bool)

(declare-fun res!158423 () Bool)

(assert (=> b!300375 (=> (not res!158423) (not e!189677))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!300375 (= res!158423 (validKeyInArray!0 k!2524))))

(declare-fun b!300371 () Bool)

(declare-fun res!158419 () Bool)

(assert (=> b!300371 (=> (not res!158419) (not e!189677))))

(assert (=> b!300371 (= res!158419 (and (= (size!7532 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7532 a!3312))))))

(declare-fun res!158422 () Bool)

(assert (=> start!29892 (=> (not res!158422) (not e!189677))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29892 (= res!158422 (validMask!0 mask!3809))))

(assert (=> start!29892 e!189677))

(assert (=> start!29892 true))

(declare-fun array_inv!5134 (array!15173) Bool)

(assert (=> start!29892 (array_inv!5134 a!3312)))

(assert (= (and start!29892 res!158422) b!300371))

(assert (= (and b!300371 res!158419) b!300375))

(assert (= (and b!300375 res!158423) b!300372))

(assert (= (and b!300372 res!158421) b!300373))

(assert (= (and b!300373 res!158424) b!300374))

(assert (= (and b!300374 res!158420) b!300370))

(declare-fun m!312379 () Bool)

(assert (=> start!29892 m!312379))

(declare-fun m!312381 () Bool)

(assert (=> start!29892 m!312381))

(declare-fun m!312383 () Bool)

(assert (=> b!300373 m!312383))

(declare-fun m!312385 () Bool)

(assert (=> b!300374 m!312385))

(declare-fun m!312387 () Bool)

(assert (=> b!300372 m!312387))

(declare-fun m!312389 () Bool)

(assert (=> b!300370 m!312389))

(declare-fun m!312391 () Bool)

(assert (=> b!300370 m!312391))

(declare-fun m!312393 () Bool)

(assert (=> b!300370 m!312393))

(declare-fun m!312395 () Bool)

(assert (=> b!300370 m!312395))

(declare-fun m!312397 () Bool)

(assert (=> b!300375 m!312397))

(push 1)

