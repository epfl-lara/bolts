; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28178 () Bool)

(assert start!28178)

(declare-fun b!288329 () Bool)

(declare-fun e!182565 () Bool)

(declare-fun e!182569 () Bool)

(assert (=> b!288329 (= e!182565 e!182569)))

(declare-fun res!149993 () Bool)

(assert (=> b!288329 (=> (not res!149993) (not e!182569))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-fun lt!142057 () Bool)

(declare-datatypes ((SeekEntryResult!2027 0))(
  ( (MissingZero!2027 (index!10278 (_ BitVec 32))) (Found!2027 (index!10279 (_ BitVec 32))) (Intermediate!2027 (undefined!2839 Bool) (index!10280 (_ BitVec 32)) (x!28464 (_ BitVec 32))) (Undefined!2027) (MissingVacant!2027 (index!10281 (_ BitVec 32))) )
))
(declare-fun lt!142054 () SeekEntryResult!2027)

(assert (=> b!288329 (= res!149993 (or lt!142057 (= lt!142054 (MissingVacant!2027 i!1256))))))

(assert (=> b!288329 (= lt!142057 (= lt!142054 (MissingZero!2027 i!1256)))))

(declare-datatypes ((array!14481 0))(
  ( (array!14482 (arr!6867 (Array (_ BitVec 32) (_ BitVec 64))) (size!7219 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14481)

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14481 (_ BitVec 32)) SeekEntryResult!2027)

(assert (=> b!288329 (= lt!142054 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!288330 () Bool)

(declare-fun res!149996 () Bool)

(assert (=> b!288330 (=> (not res!149996) (not e!182565))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!288330 (= res!149996 (validKeyInArray!0 k!2524))))

(declare-fun res!149995 () Bool)

(assert (=> start!28178 (=> (not res!149995) (not e!182565))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28178 (= res!149995 (validMask!0 mask!3809))))

(assert (=> start!28178 e!182565))

(assert (=> start!28178 true))

(declare-fun array_inv!4821 (array!14481) Bool)

(assert (=> start!28178 (array_inv!4821 a!3312)))

(declare-fun b!288331 () Bool)

(declare-fun res!149991 () Bool)

(assert (=> b!288331 (=> (not res!149991) (not e!182565))))

(declare-fun arrayContainsKey!0 (array!14481 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!288331 (= res!149991 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!288332 () Bool)

(declare-fun e!182568 () Bool)

(assert (=> b!288332 (= e!182568 (not true))))

(declare-fun lt!142058 () SeekEntryResult!2027)

(assert (=> b!288332 (and (= (select (arr!6867 a!3312) (index!10280 lt!142058)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!10280 lt!142058) i!1256))))

(declare-fun b!288333 () Bool)

(declare-fun res!149997 () Bool)

(assert (=> b!288333 (=> (not res!149997) (not e!182569))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14481 (_ BitVec 32)) Bool)

(assert (=> b!288333 (= res!149997 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!288334 () Bool)

(declare-fun e!182566 () Bool)

(assert (=> b!288334 (= e!182566 e!182568)))

(declare-fun res!149994 () Bool)

(assert (=> b!288334 (=> (not res!149994) (not e!182568))))

(declare-fun lt!142055 () Bool)

(assert (=> b!288334 (= res!149994 (and (or lt!142055 (not (undefined!2839 lt!142058))) (or lt!142055 (not (= (select (arr!6867 a!3312) (index!10280 lt!142058)) #b1000000000000000000000000000000000000000000000000000000000000000))) (or lt!142055 (not (= (select (arr!6867 a!3312) (index!10280 lt!142058)) k!2524))) (not lt!142055)))))

(assert (=> b!288334 (= lt!142055 (not (is-Intermediate!2027 lt!142058)))))

(declare-fun b!288335 () Bool)

(declare-fun res!149990 () Bool)

(assert (=> b!288335 (=> (not res!149990) (not e!182565))))

(assert (=> b!288335 (= res!149990 (and (= (size!7219 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7219 a!3312))))))

(declare-fun b!288336 () Bool)

(assert (=> b!288336 (= e!182569 e!182566)))

(declare-fun res!149992 () Bool)

(assert (=> b!288336 (=> (not res!149992) (not e!182566))))

(assert (=> b!288336 (= res!149992 lt!142057)))

(declare-fun lt!142056 () (_ BitVec 32))

(declare-fun lt!142053 () SeekEntryResult!2027)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14481 (_ BitVec 32)) SeekEntryResult!2027)

(assert (=> b!288336 (= lt!142053 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!142056 k!2524 (array!14482 (store (arr!6867 a!3312) i!1256 k!2524) (size!7219 a!3312)) mask!3809))))

(assert (=> b!288336 (= lt!142058 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!142056 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!288336 (= lt!142056 (toIndex!0 k!2524 mask!3809))))

(assert (= (and start!28178 res!149995) b!288335))

(assert (= (and b!288335 res!149990) b!288330))

(assert (= (and b!288330 res!149996) b!288331))

(assert (= (and b!288331 res!149991) b!288329))

(assert (= (and b!288329 res!149993) b!288333))

(assert (= (and b!288333 res!149997) b!288336))

(assert (= (and b!288336 res!149992) b!288334))

(assert (= (and b!288334 res!149994) b!288332))

(declare-fun m!302607 () Bool)

(assert (=> b!288332 m!302607))

(declare-fun m!302609 () Bool)

(assert (=> start!28178 m!302609))

(declare-fun m!302611 () Bool)

(assert (=> start!28178 m!302611))

(declare-fun m!302613 () Bool)

(assert (=> b!288336 m!302613))

(declare-fun m!302615 () Bool)

(assert (=> b!288336 m!302615))

(declare-fun m!302617 () Bool)

(assert (=> b!288336 m!302617))

(declare-fun m!302619 () Bool)

(assert (=> b!288336 m!302619))

(declare-fun m!302621 () Bool)

(assert (=> b!288330 m!302621))

(declare-fun m!302623 () Bool)

(assert (=> b!288331 m!302623))

(declare-fun m!302625 () Bool)

(assert (=> b!288329 m!302625))

(declare-fun m!302627 () Bool)

(assert (=> b!288333 m!302627))

(assert (=> b!288334 m!302607))

(push 1)

(assert (not b!288336))

(assert (not b!288329))

(assert (not start!28178))

(assert (not b!288330))

(assert (not b!288333))

(assert (not b!288331))

(check-sat)

