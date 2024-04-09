; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!29518 () Bool)

(assert start!29518)

(declare-fun b!298191 () Bool)

(declare-fun res!157286 () Bool)

(declare-fun e!188413 () Bool)

(assert (=> b!298191 (=> (not res!157286) (not e!188413))))

(declare-datatypes ((array!15087 0))(
  ( (array!15088 (arr!7146 (Array (_ BitVec 32) (_ BitVec 64))) (size!7498 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!15087)

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15087 (_ BitVec 32)) Bool)

(assert (=> b!298191 (= res!157286 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!298192 () Bool)

(assert (=> b!298192 (= e!188413 false)))

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2306 0))(
  ( (MissingZero!2306 (index!11397 (_ BitVec 32))) (Found!2306 (index!11398 (_ BitVec 32))) (Intermediate!2306 (undefined!3118 Bool) (index!11399 (_ BitVec 32)) (x!29588 (_ BitVec 32))) (Undefined!2306) (MissingVacant!2306 (index!11400 (_ BitVec 32))) )
))
(declare-fun lt!148289 () SeekEntryResult!2306)

(declare-fun lt!148291 () (_ BitVec 32))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15087 (_ BitVec 32)) SeekEntryResult!2306)

(assert (=> b!298192 (= lt!148289 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!148291 k!2524 (array!15088 (store (arr!7146 a!3312) i!1256 k!2524) (size!7498 a!3312)) mask!3809))))

(declare-fun lt!148292 () SeekEntryResult!2306)

(assert (=> b!298192 (= lt!148292 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!148291 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!298192 (= lt!148291 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!298193 () Bool)

(declare-fun res!157283 () Bool)

(declare-fun e!188414 () Bool)

(assert (=> b!298193 (=> (not res!157283) (not e!188414))))

(declare-fun arrayContainsKey!0 (array!15087 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!298193 (= res!157283 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!298194 () Bool)

(declare-fun res!157284 () Bool)

(assert (=> b!298194 (=> (not res!157284) (not e!188414))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!298194 (= res!157284 (validKeyInArray!0 k!2524))))

(declare-fun b!298195 () Bool)

(assert (=> b!298195 (= e!188414 e!188413)))

(declare-fun res!157285 () Bool)

(assert (=> b!298195 (=> (not res!157285) (not e!188413))))

(declare-fun lt!148290 () SeekEntryResult!2306)

(assert (=> b!298195 (= res!157285 (or (= lt!148290 (MissingZero!2306 i!1256)) (= lt!148290 (MissingVacant!2306 i!1256))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15087 (_ BitVec 32)) SeekEntryResult!2306)

(assert (=> b!298195 (= lt!148290 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!298196 () Bool)

(declare-fun res!157282 () Bool)

(assert (=> b!298196 (=> (not res!157282) (not e!188414))))

(assert (=> b!298196 (= res!157282 (and (= (size!7498 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7498 a!3312))))))

(declare-fun res!157287 () Bool)

(assert (=> start!29518 (=> (not res!157287) (not e!188414))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29518 (= res!157287 (validMask!0 mask!3809))))

(assert (=> start!29518 e!188414))

(assert (=> start!29518 true))

(declare-fun array_inv!5100 (array!15087) Bool)

(assert (=> start!29518 (array_inv!5100 a!3312)))

(assert (= (and start!29518 res!157287) b!298196))

(assert (= (and b!298196 res!157282) b!298194))

(assert (= (and b!298194 res!157284) b!298193))

(assert (= (and b!298193 res!157283) b!298195))

(assert (= (and b!298195 res!157285) b!298191))

(assert (= (and b!298191 res!157286) b!298192))

(declare-fun m!310743 () Bool)

(assert (=> b!298194 m!310743))

(declare-fun m!310745 () Bool)

(assert (=> b!298192 m!310745))

(declare-fun m!310747 () Bool)

(assert (=> b!298192 m!310747))

(declare-fun m!310749 () Bool)

(assert (=> b!298192 m!310749))

(declare-fun m!310751 () Bool)

(assert (=> b!298192 m!310751))

(declare-fun m!310753 () Bool)

(assert (=> b!298191 m!310753))

(declare-fun m!310755 () Bool)

(assert (=> b!298195 m!310755))

(declare-fun m!310757 () Bool)

(assert (=> start!29518 m!310757))

(declare-fun m!310759 () Bool)

(assert (=> start!29518 m!310759))

(declare-fun m!310761 () Bool)

(assert (=> b!298193 m!310761))

(push 1)

