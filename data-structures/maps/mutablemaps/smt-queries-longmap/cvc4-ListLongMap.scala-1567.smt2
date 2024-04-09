; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!29890 () Bool)

(assert start!29890)

(declare-fun b!300352 () Bool)

(declare-fun res!158403 () Bool)

(declare-fun e!189670 () Bool)

(assert (=> b!300352 (=> (not res!158403) (not e!189670))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((array!15171 0))(
  ( (array!15172 (arr!7179 (Array (_ BitVec 32) (_ BitVec 64))) (size!7531 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!15171)

(declare-fun mask!3809 () (_ BitVec 32))

(assert (=> b!300352 (= res!158403 (and (= (size!7531 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7531 a!3312))))))

(declare-fun b!300353 () Bool)

(declare-fun res!158401 () Bool)

(declare-fun e!189669 () Bool)

(assert (=> b!300353 (=> (not res!158401) (not e!189669))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15171 (_ BitVec 32)) Bool)

(assert (=> b!300353 (= res!158401 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!300354 () Bool)

(assert (=> b!300354 (= e!189669 false)))

(declare-fun lt!149473 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2339 0))(
  ( (MissingZero!2339 (index!11532 (_ BitVec 32))) (Found!2339 (index!11533 (_ BitVec 32))) (Intermediate!2339 (undefined!3151 Bool) (index!11534 (_ BitVec 32)) (x!29752 (_ BitVec 32))) (Undefined!2339) (MissingVacant!2339 (index!11535 (_ BitVec 32))) )
))
(declare-fun lt!149471 () SeekEntryResult!2339)

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15171 (_ BitVec 32)) SeekEntryResult!2339)

(assert (=> b!300354 (= lt!149471 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!149473 k!2524 (array!15172 (store (arr!7179 a!3312) i!1256 k!2524) (size!7531 a!3312)) mask!3809))))

(declare-fun lt!149472 () SeekEntryResult!2339)

(assert (=> b!300354 (= lt!149472 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!149473 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!300354 (= lt!149473 (toIndex!0 k!2524 mask!3809))))

(declare-fun res!158405 () Bool)

(assert (=> start!29890 (=> (not res!158405) (not e!189670))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29890 (= res!158405 (validMask!0 mask!3809))))

(assert (=> start!29890 e!189670))

(assert (=> start!29890 true))

(declare-fun array_inv!5133 (array!15171) Bool)

(assert (=> start!29890 (array_inv!5133 a!3312)))

(declare-fun b!300355 () Bool)

(assert (=> b!300355 (= e!189670 e!189669)))

(declare-fun res!158406 () Bool)

(assert (=> b!300355 (=> (not res!158406) (not e!189669))))

(declare-fun lt!149474 () SeekEntryResult!2339)

(assert (=> b!300355 (= res!158406 (or (= lt!149474 (MissingZero!2339 i!1256)) (= lt!149474 (MissingVacant!2339 i!1256))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15171 (_ BitVec 32)) SeekEntryResult!2339)

(assert (=> b!300355 (= lt!149474 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!300356 () Bool)

(declare-fun res!158402 () Bool)

(assert (=> b!300356 (=> (not res!158402) (not e!189670))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!300356 (= res!158402 (validKeyInArray!0 k!2524))))

(declare-fun b!300357 () Bool)

(declare-fun res!158404 () Bool)

(assert (=> b!300357 (=> (not res!158404) (not e!189670))))

(declare-fun arrayContainsKey!0 (array!15171 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!300357 (= res!158404 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(assert (= (and start!29890 res!158405) b!300352))

(assert (= (and b!300352 res!158403) b!300356))

(assert (= (and b!300356 res!158402) b!300357))

(assert (= (and b!300357 res!158404) b!300355))

(assert (= (and b!300355 res!158406) b!300353))

(assert (= (and b!300353 res!158401) b!300354))

(declare-fun m!312359 () Bool)

(assert (=> b!300357 m!312359))

(declare-fun m!312361 () Bool)

(assert (=> b!300356 m!312361))

(declare-fun m!312363 () Bool)

(assert (=> b!300355 m!312363))

(declare-fun m!312365 () Bool)

(assert (=> b!300354 m!312365))

(declare-fun m!312367 () Bool)

(assert (=> b!300354 m!312367))

(declare-fun m!312369 () Bool)

(assert (=> b!300354 m!312369))

(declare-fun m!312371 () Bool)

(assert (=> b!300354 m!312371))

(declare-fun m!312373 () Bool)

(assert (=> start!29890 m!312373))

(declare-fun m!312375 () Bool)

(assert (=> start!29890 m!312375))

(declare-fun m!312377 () Bool)

(assert (=> b!300353 m!312377))

(push 1)

(assert (not start!29890))

(assert (not b!300355))

(assert (not b!300356))

(assert (not b!300353))

(assert (not b!300357))

(assert (not b!300354))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

