; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31818 () Bool)

(assert start!31818)

(declare-fun b!317649 () Bool)

(declare-fun res!172388 () Bool)

(declare-fun e!197464 () Bool)

(assert (=> b!317649 (=> (not res!172388) (not e!197464))))

(declare-datatypes ((array!16187 0))(
  ( (array!16188 (arr!7657 (Array (_ BitVec 32) (_ BitVec 64))) (size!8009 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!16187)

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!16187 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!317649 (= res!172388 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!317650 () Bool)

(declare-fun res!172393 () Bool)

(assert (=> b!317650 (=> (not res!172393) (not e!197464))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2808 0))(
  ( (MissingZero!2808 (index!13408 (_ BitVec 32))) (Found!2808 (index!13409 (_ BitVec 32))) (Intermediate!2808 (undefined!3620 Bool) (index!13410 (_ BitVec 32)) (x!31636 (_ BitVec 32))) (Undefined!2808) (MissingVacant!2808 (index!13411 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16187 (_ BitVec 32)) SeekEntryResult!2808)

(assert (=> b!317650 (= res!172393 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2808 i!1240)))))

(declare-fun res!172387 () Bool)

(assert (=> start!31818 (=> (not res!172387) (not e!197464))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31818 (= res!172387 (validMask!0 mask!3709))))

(assert (=> start!31818 e!197464))

(declare-fun array_inv!5611 (array!16187) Bool)

(assert (=> start!31818 (array_inv!5611 a!3293)))

(assert (=> start!31818 true))

(declare-fun b!317651 () Bool)

(declare-fun e!197463 () Bool)

(declare-fun e!197460 () Bool)

(assert (=> b!317651 (= e!197463 e!197460)))

(declare-fun res!172394 () Bool)

(assert (=> b!317651 (=> (not res!172394) (not e!197460))))

(declare-fun lt!155075 () SeekEntryResult!2808)

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun lt!155076 () SeekEntryResult!2808)

(assert (=> b!317651 (= res!172394 (and (= lt!155076 lt!155075) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7657 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16187 (_ BitVec 32)) SeekEntryResult!2808)

(assert (=> b!317651 (= lt!155076 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!317652 () Bool)

(assert (=> b!317652 (= e!197464 e!197463)))

(declare-fun res!172386 () Bool)

(assert (=> b!317652 (=> (not res!172386) (not e!197463))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!317652 (= res!172386 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!155075))))

(declare-fun resIndex!52 () (_ BitVec 32))

(assert (=> b!317652 (= lt!155075 (Intermediate!2808 false resIndex!52 resX!52))))

(declare-fun b!317653 () Bool)

(declare-fun lt!155078 () array!16187)

(declare-fun lt!155077 () (_ BitVec 32))

(declare-fun e!197462 () Bool)

(assert (=> b!317653 (= e!197462 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 lt!155078 mask!3709) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!155077 k!2441 lt!155078 mask!3709)))))

(assert (=> b!317653 (= lt!155078 (array!16188 (store (arr!7657 a!3293) i!1240 k!2441) (size!8009 a!3293)))))

(declare-fun b!317654 () Bool)

(declare-fun res!172391 () Bool)

(assert (=> b!317654 (=> (not res!172391) (not e!197464))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16187 (_ BitVec 32)) Bool)

(assert (=> b!317654 (= res!172391 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!317655 () Bool)

(assert (=> b!317655 (= e!197460 (not true))))

(assert (=> b!317655 e!197462))

(declare-fun res!172392 () Bool)

(assert (=> b!317655 (=> (not res!172392) (not e!197462))))

(assert (=> b!317655 (= res!172392 (= lt!155076 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!155077 k!2441 a!3293 mask!3709)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!317655 (= lt!155077 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!317656 () Bool)

(declare-fun res!172390 () Bool)

(assert (=> b!317656 (=> (not res!172390) (not e!197464))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!317656 (= res!172390 (validKeyInArray!0 k!2441))))

(declare-fun b!317657 () Bool)

(declare-fun res!172395 () Bool)

(assert (=> b!317657 (=> (not res!172395) (not e!197464))))

(assert (=> b!317657 (= res!172395 (and (= (size!8009 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!8009 a!3293))))))

(declare-fun b!317658 () Bool)

(declare-fun res!172389 () Bool)

(assert (=> b!317658 (=> (not res!172389) (not e!197463))))

(assert (=> b!317658 (= res!172389 (and (= (select (arr!7657 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!8009 a!3293))))))

(assert (= (and start!31818 res!172387) b!317657))

(assert (= (and b!317657 res!172395) b!317656))

(assert (= (and b!317656 res!172390) b!317649))

(assert (= (and b!317649 res!172388) b!317650))

(assert (= (and b!317650 res!172393) b!317654))

(assert (= (and b!317654 res!172391) b!317652))

(assert (= (and b!317652 res!172386) b!317658))

(assert (= (and b!317658 res!172389) b!317651))

(assert (= (and b!317651 res!172394) b!317655))

(assert (= (and b!317655 res!172392) b!317653))

(declare-fun m!326353 () Bool)

(assert (=> b!317654 m!326353))

(declare-fun m!326355 () Bool)

(assert (=> b!317658 m!326355))

(declare-fun m!326357 () Bool)

(assert (=> b!317650 m!326357))

(declare-fun m!326359 () Bool)

(assert (=> b!317653 m!326359))

(declare-fun m!326361 () Bool)

(assert (=> b!317653 m!326361))

(declare-fun m!326363 () Bool)

(assert (=> b!317653 m!326363))

(declare-fun m!326365 () Bool)

(assert (=> start!31818 m!326365))

(declare-fun m!326367 () Bool)

(assert (=> start!31818 m!326367))

(declare-fun m!326369 () Bool)

(assert (=> b!317652 m!326369))

(assert (=> b!317652 m!326369))

(declare-fun m!326371 () Bool)

(assert (=> b!317652 m!326371))

(declare-fun m!326373 () Bool)

(assert (=> b!317655 m!326373))

(declare-fun m!326375 () Bool)

(assert (=> b!317655 m!326375))

(declare-fun m!326377 () Bool)

(assert (=> b!317649 m!326377))

(declare-fun m!326379 () Bool)

(assert (=> b!317651 m!326379))

(declare-fun m!326381 () Bool)

(assert (=> b!317651 m!326381))

(declare-fun m!326383 () Bool)

(assert (=> b!317656 m!326383))

(push 1)

