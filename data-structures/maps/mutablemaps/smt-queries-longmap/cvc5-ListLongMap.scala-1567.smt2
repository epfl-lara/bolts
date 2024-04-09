; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!29886 () Bool)

(assert start!29886)

(declare-fun b!300316 () Bool)

(declare-fun res!158368 () Bool)

(declare-fun e!189651 () Bool)

(assert (=> b!300316 (=> (not res!158368) (not e!189651))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((array!15167 0))(
  ( (array!15168 (arr!7177 (Array (_ BitVec 32) (_ BitVec 64))) (size!7529 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!15167)

(declare-fun mask!3809 () (_ BitVec 32))

(assert (=> b!300316 (= res!158368 (and (= (size!7529 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7529 a!3312))))))

(declare-fun b!300317 () Bool)

(declare-fun res!158370 () Bool)

(assert (=> b!300317 (=> (not res!158370) (not e!189651))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!300317 (= res!158370 (validKeyInArray!0 k!2524))))

(declare-fun b!300318 () Bool)

(declare-fun e!189652 () Bool)

(assert (=> b!300318 (= e!189651 e!189652)))

(declare-fun res!158365 () Bool)

(assert (=> b!300318 (=> (not res!158365) (not e!189652))))

(declare-datatypes ((SeekEntryResult!2337 0))(
  ( (MissingZero!2337 (index!11524 (_ BitVec 32))) (Found!2337 (index!11525 (_ BitVec 32))) (Intermediate!2337 (undefined!3149 Bool) (index!11526 (_ BitVec 32)) (x!29750 (_ BitVec 32))) (Undefined!2337) (MissingVacant!2337 (index!11527 (_ BitVec 32))) )
))
(declare-fun lt!149447 () SeekEntryResult!2337)

(assert (=> b!300318 (= res!158365 (or (= lt!149447 (MissingZero!2337 i!1256)) (= lt!149447 (MissingVacant!2337 i!1256))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15167 (_ BitVec 32)) SeekEntryResult!2337)

(assert (=> b!300318 (= lt!149447 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!300319 () Bool)

(assert (=> b!300319 (= e!189652 false)))

(declare-fun lt!149448 () SeekEntryResult!2337)

(declare-fun lt!149449 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15167 (_ BitVec 32)) SeekEntryResult!2337)

(assert (=> b!300319 (= lt!149448 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!149449 k!2524 (array!15168 (store (arr!7177 a!3312) i!1256 k!2524) (size!7529 a!3312)) mask!3809))))

(declare-fun lt!149450 () SeekEntryResult!2337)

(assert (=> b!300319 (= lt!149450 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!149449 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!300319 (= lt!149449 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!300320 () Bool)

(declare-fun res!158367 () Bool)

(assert (=> b!300320 (=> (not res!158367) (not e!189651))))

(declare-fun arrayContainsKey!0 (array!15167 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!300320 (= res!158367 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!300321 () Bool)

(declare-fun res!158369 () Bool)

(assert (=> b!300321 (=> (not res!158369) (not e!189652))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15167 (_ BitVec 32)) Bool)

(assert (=> b!300321 (= res!158369 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun res!158366 () Bool)

(assert (=> start!29886 (=> (not res!158366) (not e!189651))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29886 (= res!158366 (validMask!0 mask!3809))))

(assert (=> start!29886 e!189651))

(assert (=> start!29886 true))

(declare-fun array_inv!5131 (array!15167) Bool)

(assert (=> start!29886 (array_inv!5131 a!3312)))

(assert (= (and start!29886 res!158366) b!300316))

(assert (= (and b!300316 res!158368) b!300317))

(assert (= (and b!300317 res!158370) b!300320))

(assert (= (and b!300320 res!158367) b!300318))

(assert (= (and b!300318 res!158365) b!300321))

(assert (= (and b!300321 res!158369) b!300319))

(declare-fun m!312319 () Bool)

(assert (=> b!300319 m!312319))

(declare-fun m!312321 () Bool)

(assert (=> b!300319 m!312321))

(declare-fun m!312323 () Bool)

(assert (=> b!300319 m!312323))

(declare-fun m!312325 () Bool)

(assert (=> b!300319 m!312325))

(declare-fun m!312327 () Bool)

(assert (=> b!300321 m!312327))

(declare-fun m!312329 () Bool)

(assert (=> b!300318 m!312329))

(declare-fun m!312331 () Bool)

(assert (=> b!300317 m!312331))

(declare-fun m!312333 () Bool)

(assert (=> b!300320 m!312333))

(declare-fun m!312335 () Bool)

(assert (=> start!29886 m!312335))

(declare-fun m!312337 () Bool)

(assert (=> start!29886 m!312337))

(push 1)

