; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30646 () Bool)

(assert start!30646)

(declare-fun b!307298 () Bool)

(declare-fun res!164212 () Bool)

(declare-fun e!192411 () Bool)

(assert (=> b!307298 (=> (not res!164212) (not e!192411))))

(declare-datatypes ((array!15648 0))(
  ( (array!15649 (arr!7407 (Array (_ BitVec 32) (_ BitVec 64))) (size!7759 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15648)

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!15648 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!307298 (= res!164212 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!307299 () Bool)

(declare-fun res!164216 () Bool)

(assert (=> b!307299 (=> (not res!164216) (not e!192411))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15648 (_ BitVec 32)) Bool)

(assert (=> b!307299 (= res!164216 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!307300 () Bool)

(declare-fun res!164215 () Bool)

(assert (=> b!307300 (=> (not res!164215) (not e!192411))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2558 0))(
  ( (MissingZero!2558 (index!12408 (_ BitVec 32))) (Found!2558 (index!12409 (_ BitVec 32))) (Intermediate!2558 (undefined!3370 Bool) (index!12410 (_ BitVec 32)) (x!30612 (_ BitVec 32))) (Undefined!2558) (MissingVacant!2558 (index!12411 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15648 (_ BitVec 32)) SeekEntryResult!2558)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!307300 (= res!164215 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) (Intermediate!2558 false resIndex!52 resX!52)))))

(declare-fun b!307301 () Bool)

(declare-fun res!164217 () Bool)

(assert (=> b!307301 (=> (not res!164217) (not e!192411))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!307301 (= res!164217 (validKeyInArray!0 k!2441))))

(declare-fun res!164214 () Bool)

(assert (=> start!30646 (=> (not res!164214) (not e!192411))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30646 (= res!164214 (validMask!0 mask!3709))))

(assert (=> start!30646 e!192411))

(declare-fun array_inv!5361 (array!15648) Bool)

(assert (=> start!30646 (array_inv!5361 a!3293)))

(assert (=> start!30646 true))

(declare-fun b!307302 () Bool)

(declare-fun res!164213 () Bool)

(assert (=> b!307302 (=> (not res!164213) (not e!192411))))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15648 (_ BitVec 32)) SeekEntryResult!2558)

(assert (=> b!307302 (= res!164213 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2558 i!1240)))))

(declare-fun b!307303 () Bool)

(declare-fun res!164210 () Bool)

(assert (=> b!307303 (=> (not res!164210) (not e!192411))))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!307303 (= res!164210 (and (= (select (arr!7407 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7759 a!3293))))))

(declare-fun b!307304 () Bool)

(assert (=> b!307304 (= e!192411 false)))

(declare-fun lt!151100 () SeekEntryResult!2558)

(assert (=> b!307304 (= lt!151100 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!307305 () Bool)

(declare-fun res!164211 () Bool)

(assert (=> b!307305 (=> (not res!164211) (not e!192411))))

(assert (=> b!307305 (= res!164211 (and (= (size!7759 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7759 a!3293))))))

(assert (= (and start!30646 res!164214) b!307305))

(assert (= (and b!307305 res!164211) b!307301))

(assert (= (and b!307301 res!164217) b!307298))

(assert (= (and b!307298 res!164212) b!307302))

(assert (= (and b!307302 res!164213) b!307299))

(assert (= (and b!307299 res!164216) b!307300))

(assert (= (and b!307300 res!164215) b!307303))

(assert (= (and b!307303 res!164210) b!307304))

(declare-fun m!317639 () Bool)

(assert (=> b!307300 m!317639))

(assert (=> b!307300 m!317639))

(declare-fun m!317641 () Bool)

(assert (=> b!307300 m!317641))

(declare-fun m!317643 () Bool)

(assert (=> start!30646 m!317643))

(declare-fun m!317645 () Bool)

(assert (=> start!30646 m!317645))

(declare-fun m!317647 () Bool)

(assert (=> b!307298 m!317647))

(declare-fun m!317649 () Bool)

(assert (=> b!307301 m!317649))

(declare-fun m!317651 () Bool)

(assert (=> b!307299 m!317651))

(declare-fun m!317653 () Bool)

(assert (=> b!307302 m!317653))

(declare-fun m!317655 () Bool)

(assert (=> b!307303 m!317655))

(declare-fun m!317657 () Bool)

(assert (=> b!307304 m!317657))

(push 1)

(assert (not b!307298))

(assert (not b!307301))

(assert (not b!307304))

(assert (not b!307302))

(assert (not start!30646))

(assert (not b!307300))

(assert (not b!307299))

(check-sat)

