; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!30590 () Bool)

(assert start!30590)

(declare-fun b!306467 () Bool)

(declare-datatypes ((Unit!9528 0))(
  ( (Unit!9529) )
))
(declare-fun e!192154 () Unit!9528)

(declare-fun Unit!9530 () Unit!9528)

(assert (=> b!306467 (= e!192154 Unit!9530)))

(declare-fun b!306468 () Bool)

(declare-fun e!192151 () Unit!9528)

(assert (=> b!306468 (= e!192154 e!192151)))

(declare-fun c!49102 () Bool)

(declare-datatypes ((array!15592 0))(
  ( (array!15593 (arr!7379 (Array (_ BitVec 32) (_ BitVec 64))) (size!7731 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15592)

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!306468 (= c!49102 (or (= (select (arr!7379 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7379 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!306469 () Bool)

(declare-fun res!163468 () Bool)

(declare-fun e!192153 () Bool)

(assert (=> b!306469 (=> (not res!163468) (not e!192153))))

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(assert (=> b!306469 (= res!163468 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7379 a!3293) index!1781) k0!2441)) (= x!1427 resX!52)))))

(declare-fun b!306471 () Bool)

(assert (=> b!306471 false))

(declare-datatypes ((SeekEntryResult!2530 0))(
  ( (MissingZero!2530 (index!12296 (_ BitVec 32))) (Found!2530 (index!12297 (_ BitVec 32))) (Intermediate!2530 (undefined!3342 Bool) (index!12298 (_ BitVec 32)) (x!30512 (_ BitVec 32))) (Undefined!2530) (MissingVacant!2530 (index!12299 (_ BitVec 32))) )
))
(declare-fun lt!150972 () SeekEntryResult!2530)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15592 (_ BitVec 32)) SeekEntryResult!2530)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!306471 (= lt!150972 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k0!2441 a!3293 mask!3709))))

(declare-fun Unit!9531 () Unit!9528)

(assert (=> b!306471 (= e!192151 Unit!9531)))

(declare-fun b!306472 () Bool)

(declare-fun res!163474 () Bool)

(declare-fun e!192152 () Bool)

(assert (=> b!306472 (=> (not res!163474) (not e!192152))))

(declare-fun arrayContainsKey!0 (array!15592 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!306472 (= res!163474 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!306473 () Bool)

(assert (=> b!306473 (= e!192152 e!192153)))

(declare-fun res!163476 () Bool)

(assert (=> b!306473 (=> (not res!163476) (not e!192153))))

(declare-fun lt!150974 () SeekEntryResult!2530)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!306473 (= res!163476 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!150974))))

(declare-fun resIndex!52 () (_ BitVec 32))

(assert (=> b!306473 (= lt!150974 (Intermediate!2530 false resIndex!52 resX!52))))

(declare-fun b!306474 () Bool)

(declare-fun res!163471 () Bool)

(assert (=> b!306474 (=> (not res!163471) (not e!192152))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15592 (_ BitVec 32)) Bool)

(assert (=> b!306474 (= res!163471 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!306475 () Bool)

(declare-fun res!163472 () Bool)

(assert (=> b!306475 (=> (not res!163472) (not e!192153))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!306475 (= res!163472 (and (= (select (arr!7379 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7731 a!3293))))))

(declare-fun b!306476 () Bool)

(declare-fun res!163470 () Bool)

(assert (=> b!306476 (=> (not res!163470) (not e!192152))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15592 (_ BitVec 32)) SeekEntryResult!2530)

(assert (=> b!306476 (= res!163470 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2530 i!1240)))))

(declare-fun res!163467 () Bool)

(assert (=> start!30590 (=> (not res!163467) (not e!192152))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30590 (= res!163467 (validMask!0 mask!3709))))

(assert (=> start!30590 e!192152))

(declare-fun array_inv!5333 (array!15592) Bool)

(assert (=> start!30590 (array_inv!5333 a!3293)))

(assert (=> start!30590 true))

(declare-fun b!306470 () Bool)

(declare-fun res!163475 () Bool)

(assert (=> b!306470 (=> (not res!163475) (not e!192153))))

(assert (=> b!306470 (= res!163475 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709) lt!150974))))

(declare-fun b!306477 () Bool)

(declare-fun res!163469 () Bool)

(assert (=> b!306477 (=> (not res!163469) (not e!192152))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!306477 (= res!163469 (validKeyInArray!0 k0!2441))))

(declare-fun b!306478 () Bool)

(declare-fun res!163473 () Bool)

(assert (=> b!306478 (=> (not res!163473) (not e!192152))))

(assert (=> b!306478 (= res!163473 (and (= (size!7731 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7731 a!3293))))))

(declare-fun b!306479 () Bool)

(assert (=> b!306479 false))

(declare-fun Unit!9532 () Unit!9528)

(assert (=> b!306479 (= e!192151 Unit!9532)))

(declare-fun b!306480 () Bool)

(assert (=> b!306480 (= e!192153 (not (or (not (= (select (arr!7379 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000)) (bvslt mask!3709 #b00000000000000000000000000000000) (bvslt index!1781 (bvadd #b00000000000000000000000000000001 mask!3709)))))))

(assert (=> b!306480 (= index!1781 resIndex!52)))

(declare-fun lt!150973 () Unit!9528)

(assert (=> b!306480 (= lt!150973 e!192154)))

(declare-fun c!49103 () Bool)

(assert (=> b!306480 (= c!49103 (not (= resIndex!52 index!1781)))))

(assert (= (and start!30590 res!163467) b!306478))

(assert (= (and b!306478 res!163473) b!306477))

(assert (= (and b!306477 res!163469) b!306472))

(assert (= (and b!306472 res!163474) b!306476))

(assert (= (and b!306476 res!163470) b!306474))

(assert (= (and b!306474 res!163471) b!306473))

(assert (= (and b!306473 res!163476) b!306475))

(assert (= (and b!306475 res!163472) b!306470))

(assert (= (and b!306470 res!163475) b!306469))

(assert (= (and b!306469 res!163468) b!306480))

(assert (= (and b!306480 c!49103) b!306468))

(assert (= (and b!306480 (not c!49103)) b!306467))

(assert (= (and b!306468 c!49102) b!306479))

(assert (= (and b!306468 (not c!49102)) b!306471))

(declare-fun m!317013 () Bool)

(assert (=> b!306477 m!317013))

(declare-fun m!317015 () Bool)

(assert (=> b!306469 m!317015))

(declare-fun m!317017 () Bool)

(assert (=> b!306470 m!317017))

(declare-fun m!317019 () Bool)

(assert (=> b!306472 m!317019))

(declare-fun m!317021 () Bool)

(assert (=> start!30590 m!317021))

(declare-fun m!317023 () Bool)

(assert (=> start!30590 m!317023))

(declare-fun m!317025 () Bool)

(assert (=> b!306476 m!317025))

(assert (=> b!306468 m!317015))

(declare-fun m!317027 () Bool)

(assert (=> b!306474 m!317027))

(assert (=> b!306480 m!317015))

(declare-fun m!317029 () Bool)

(assert (=> b!306471 m!317029))

(assert (=> b!306471 m!317029))

(declare-fun m!317031 () Bool)

(assert (=> b!306471 m!317031))

(declare-fun m!317033 () Bool)

(assert (=> b!306473 m!317033))

(assert (=> b!306473 m!317033))

(declare-fun m!317035 () Bool)

(assert (=> b!306473 m!317035))

(declare-fun m!317037 () Bool)

(assert (=> b!306475 m!317037))

(check-sat (not b!306476) (not b!306470) (not b!306472) (not start!30590) (not b!306474) (not b!306471) (not b!306473) (not b!306477))
(check-sat)
