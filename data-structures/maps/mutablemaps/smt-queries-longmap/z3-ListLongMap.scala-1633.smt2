; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!30584 () Bool)

(assert start!30584)

(declare-fun b!306341 () Bool)

(declare-fun res!163383 () Bool)

(declare-fun e!192105 () Bool)

(assert (=> b!306341 (=> (not res!163383) (not e!192105))))

(declare-datatypes ((array!15586 0))(
  ( (array!15587 (arr!7376 (Array (_ BitVec 32) (_ BitVec 64))) (size!7728 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15586)

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun resIndex!52 () (_ BitVec 32))

(assert (=> b!306341 (= res!163383 (and (= (select (arr!7376 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7728 a!3293))))))

(declare-fun b!306342 () Bool)

(declare-datatypes ((Unit!9513 0))(
  ( (Unit!9514) )
))
(declare-fun e!192106 () Unit!9513)

(declare-fun Unit!9515 () Unit!9513)

(assert (=> b!306342 (= e!192106 Unit!9515)))

(declare-fun res!163386 () Bool)

(declare-fun e!192109 () Bool)

(assert (=> start!30584 (=> (not res!163386) (not e!192109))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30584 (= res!163386 (validMask!0 mask!3709))))

(assert (=> start!30584 e!192109))

(declare-fun array_inv!5330 (array!15586) Bool)

(assert (=> start!30584 (array_inv!5330 a!3293)))

(assert (=> start!30584 true))

(declare-fun b!306343 () Bool)

(declare-fun res!163380 () Bool)

(assert (=> b!306343 (=> (not res!163380) (not e!192109))))

(declare-fun k0!2441 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!2527 0))(
  ( (MissingZero!2527 (index!12284 (_ BitVec 32))) (Found!2527 (index!12285 (_ BitVec 32))) (Intermediate!2527 (undefined!3339 Bool) (index!12286 (_ BitVec 32)) (x!30501 (_ BitVec 32))) (Undefined!2527) (MissingVacant!2527 (index!12287 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15586 (_ BitVec 32)) SeekEntryResult!2527)

(assert (=> b!306343 (= res!163380 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2527 i!1240)))))

(declare-fun b!306344 () Bool)

(declare-fun e!192107 () Unit!9513)

(assert (=> b!306344 (= e!192106 e!192107)))

(declare-fun c!49084 () Bool)

(assert (=> b!306344 (= c!49084 (or (= (select (arr!7376 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7376 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!306345 () Bool)

(assert (=> b!306345 (= e!192105 (not true))))

(assert (=> b!306345 (= index!1781 resIndex!52)))

(declare-fun lt!150946 () Unit!9513)

(assert (=> b!306345 (= lt!150946 e!192106)))

(declare-fun c!49085 () Bool)

(assert (=> b!306345 (= c!49085 (not (= resIndex!52 index!1781)))))

(declare-fun b!306346 () Bool)

(assert (=> b!306346 false))

(declare-fun Unit!9516 () Unit!9513)

(assert (=> b!306346 (= e!192107 Unit!9516)))

(declare-fun b!306347 () Bool)

(assert (=> b!306347 (= e!192109 e!192105)))

(declare-fun res!163382 () Bool)

(assert (=> b!306347 (=> (not res!163382) (not e!192105))))

(declare-fun lt!150945 () SeekEntryResult!2527)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15586 (_ BitVec 32)) SeekEntryResult!2527)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!306347 (= res!163382 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!150945))))

(assert (=> b!306347 (= lt!150945 (Intermediate!2527 false resIndex!52 resX!52))))

(declare-fun b!306348 () Bool)

(assert (=> b!306348 false))

(declare-fun lt!150947 () SeekEntryResult!2527)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!306348 (= lt!150947 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k0!2441 a!3293 mask!3709))))

(declare-fun Unit!9517 () Unit!9513)

(assert (=> b!306348 (= e!192107 Unit!9517)))

(declare-fun b!306349 () Bool)

(declare-fun res!163384 () Bool)

(assert (=> b!306349 (=> (not res!163384) (not e!192109))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!306349 (= res!163384 (validKeyInArray!0 k0!2441))))

(declare-fun b!306350 () Bool)

(declare-fun res!163377 () Bool)

(assert (=> b!306350 (=> (not res!163377) (not e!192105))))

(assert (=> b!306350 (= res!163377 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7376 a!3293) index!1781) k0!2441)) (= x!1427 resX!52)))))

(declare-fun b!306351 () Bool)

(declare-fun res!163381 () Bool)

(assert (=> b!306351 (=> (not res!163381) (not e!192109))))

(assert (=> b!306351 (= res!163381 (and (= (size!7728 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7728 a!3293))))))

(declare-fun b!306352 () Bool)

(declare-fun res!163379 () Bool)

(assert (=> b!306352 (=> (not res!163379) (not e!192105))))

(assert (=> b!306352 (= res!163379 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709) lt!150945))))

(declare-fun b!306353 () Bool)

(declare-fun res!163378 () Bool)

(assert (=> b!306353 (=> (not res!163378) (not e!192109))))

(declare-fun arrayContainsKey!0 (array!15586 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!306353 (= res!163378 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!306354 () Bool)

(declare-fun res!163385 () Bool)

(assert (=> b!306354 (=> (not res!163385) (not e!192109))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15586 (_ BitVec 32)) Bool)

(assert (=> b!306354 (= res!163385 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(assert (= (and start!30584 res!163386) b!306351))

(assert (= (and b!306351 res!163381) b!306349))

(assert (= (and b!306349 res!163384) b!306353))

(assert (= (and b!306353 res!163378) b!306343))

(assert (= (and b!306343 res!163380) b!306354))

(assert (= (and b!306354 res!163385) b!306347))

(assert (= (and b!306347 res!163382) b!306341))

(assert (= (and b!306341 res!163383) b!306352))

(assert (= (and b!306352 res!163379) b!306350))

(assert (= (and b!306350 res!163377) b!306345))

(assert (= (and b!306345 c!49085) b!306344))

(assert (= (and b!306345 (not c!49085)) b!306342))

(assert (= (and b!306344 c!49084) b!306346))

(assert (= (and b!306344 (not c!49084)) b!306348))

(declare-fun m!316935 () Bool)

(assert (=> b!306353 m!316935))

(declare-fun m!316937 () Bool)

(assert (=> b!306348 m!316937))

(assert (=> b!306348 m!316937))

(declare-fun m!316939 () Bool)

(assert (=> b!306348 m!316939))

(declare-fun m!316941 () Bool)

(assert (=> b!306350 m!316941))

(declare-fun m!316943 () Bool)

(assert (=> b!306341 m!316943))

(declare-fun m!316945 () Bool)

(assert (=> b!306354 m!316945))

(declare-fun m!316947 () Bool)

(assert (=> b!306349 m!316947))

(declare-fun m!316949 () Bool)

(assert (=> b!306347 m!316949))

(assert (=> b!306347 m!316949))

(declare-fun m!316951 () Bool)

(assert (=> b!306347 m!316951))

(declare-fun m!316953 () Bool)

(assert (=> start!30584 m!316953))

(declare-fun m!316955 () Bool)

(assert (=> start!30584 m!316955))

(assert (=> b!306344 m!316941))

(declare-fun m!316957 () Bool)

(assert (=> b!306343 m!316957))

(declare-fun m!316959 () Bool)

(assert (=> b!306352 m!316959))

(check-sat (not b!306352) (not b!306348) (not b!306347) (not b!306349) (not b!306354) (not b!306343) (not b!306353) (not start!30584))
(check-sat)
