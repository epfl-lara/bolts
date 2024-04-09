; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30424 () Bool)

(assert start!30424)

(declare-fun b!304282 () Bool)

(declare-fun e!191247 () Bool)

(declare-fun e!191246 () Bool)

(assert (=> b!304282 (= e!191247 e!191246)))

(declare-fun res!161786 () Bool)

(assert (=> b!304282 (=> (not res!161786) (not e!191246))))

(declare-datatypes ((array!15477 0))(
  ( (array!15478 (arr!7323 (Array (_ BitVec 32) (_ BitVec 64))) (size!7675 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15477)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun k!2441 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!2474 0))(
  ( (MissingZero!2474 (index!12072 (_ BitVec 32))) (Found!2474 (index!12073 (_ BitVec 32))) (Intermediate!2474 (undefined!3286 Bool) (index!12074 (_ BitVec 32)) (x!30295 (_ BitVec 32))) (Undefined!2474) (MissingVacant!2474 (index!12075 (_ BitVec 32))) )
))
(declare-fun lt!150421 () SeekEntryResult!2474)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15477 (_ BitVec 32)) SeekEntryResult!2474)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!304282 (= res!161786 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!150421))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!304282 (= lt!150421 (Intermediate!2474 false resIndex!52 resX!52))))

(declare-fun b!304283 () Bool)

(declare-fun res!161785 () Bool)

(assert (=> b!304283 (=> (not res!161785) (not e!191247))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15477 (_ BitVec 32)) Bool)

(assert (=> b!304283 (= res!161785 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!304284 () Bool)

(declare-fun res!161793 () Bool)

(assert (=> b!304284 (=> (not res!161793) (not e!191247))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!304284 (= res!161793 (validKeyInArray!0 k!2441))))

(declare-fun b!304285 () Bool)

(declare-fun e!191245 () Bool)

(assert (=> b!304285 (= e!191246 e!191245)))

(declare-fun res!161787 () Bool)

(assert (=> b!304285 (=> (not res!161787) (not e!191245))))

(declare-fun lt!150422 () SeekEntryResult!2474)

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!304285 (= res!161787 (and (= lt!150422 lt!150421) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7323 a!3293) index!1781) k!2441)) (= x!1427 resX!52) (not (= resIndex!52 index!1781)) (not (= (select (arr!7323 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!7323 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!304285 (= lt!150422 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!304286 () Bool)

(assert (=> b!304286 (= e!191245 (not true))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!304286 (= lt!150422 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun b!304287 () Bool)

(declare-fun res!161788 () Bool)

(assert (=> b!304287 (=> (not res!161788) (not e!191247))))

(declare-fun arrayContainsKey!0 (array!15477 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!304287 (= res!161788 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!304288 () Bool)

(declare-fun res!161789 () Bool)

(assert (=> b!304288 (=> (not res!161789) (not e!191247))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!304288 (= res!161789 (and (= (size!7675 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7675 a!3293))))))

(declare-fun res!161790 () Bool)

(assert (=> start!30424 (=> (not res!161790) (not e!191247))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30424 (= res!161790 (validMask!0 mask!3709))))

(assert (=> start!30424 e!191247))

(declare-fun array_inv!5277 (array!15477) Bool)

(assert (=> start!30424 (array_inv!5277 a!3293)))

(assert (=> start!30424 true))

(declare-fun b!304289 () Bool)

(declare-fun res!161792 () Bool)

(assert (=> b!304289 (=> (not res!161792) (not e!191246))))

(assert (=> b!304289 (= res!161792 (and (= (select (arr!7323 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7675 a!3293))))))

(declare-fun b!304290 () Bool)

(declare-fun res!161791 () Bool)

(assert (=> b!304290 (=> (not res!161791) (not e!191247))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15477 (_ BitVec 32)) SeekEntryResult!2474)

(assert (=> b!304290 (= res!161791 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2474 i!1240)))))

(assert (= (and start!30424 res!161790) b!304288))

(assert (= (and b!304288 res!161789) b!304284))

(assert (= (and b!304284 res!161793) b!304287))

(assert (= (and b!304287 res!161788) b!304290))

(assert (= (and b!304290 res!161791) b!304283))

(assert (= (and b!304283 res!161785) b!304282))

(assert (= (and b!304282 res!161786) b!304289))

(assert (= (and b!304289 res!161792) b!304285))

(assert (= (and b!304285 res!161787) b!304286))

(declare-fun m!315419 () Bool)

(assert (=> start!30424 m!315419))

(declare-fun m!315421 () Bool)

(assert (=> start!30424 m!315421))

(declare-fun m!315423 () Bool)

(assert (=> b!304289 m!315423))

(declare-fun m!315425 () Bool)

(assert (=> b!304285 m!315425))

(declare-fun m!315427 () Bool)

(assert (=> b!304285 m!315427))

(declare-fun m!315429 () Bool)

(assert (=> b!304283 m!315429))

(declare-fun m!315431 () Bool)

(assert (=> b!304286 m!315431))

(assert (=> b!304286 m!315431))

(declare-fun m!315433 () Bool)

(assert (=> b!304286 m!315433))

(declare-fun m!315435 () Bool)

(assert (=> b!304284 m!315435))

(declare-fun m!315437 () Bool)

(assert (=> b!304287 m!315437))

(declare-fun m!315439 () Bool)

(assert (=> b!304290 m!315439))

(declare-fun m!315441 () Bool)

(assert (=> b!304282 m!315441))

(assert (=> b!304282 m!315441))

(declare-fun m!315443 () Bool)

(assert (=> b!304282 m!315443))

(push 1)

(assert (not b!304284))

(assert (not start!30424))

(assert (not b!304286))

(assert (not b!304290))

