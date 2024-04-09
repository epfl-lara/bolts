; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!30650 () Bool)

(assert start!30650)

(declare-datatypes ((array!15652 0))(
  ( (array!15653 (arr!7409 (Array (_ BitVec 32) (_ BitVec 64))) (size!7761 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15652)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun e!192428 () Bool)

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun b!307351 () Bool)

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!307351 (= e!192428 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7409 a!3293) index!1781) k0!2441)) (not (= x!1427 resX!52)) (bvslt mask!3709 #b00000000000000000000000000000000)))))

(declare-fun b!307352 () Bool)

(declare-fun res!164270 () Bool)

(declare-fun e!192429 () Bool)

(assert (=> b!307352 (=> (not res!164270) (not e!192429))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!307352 (= res!164270 (and (= (size!7761 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7761 a!3293))))))

(declare-fun b!307353 () Bool)

(declare-fun res!164264 () Bool)

(assert (=> b!307353 (=> (not res!164264) (not e!192428))))

(declare-fun resIndex!52 () (_ BitVec 32))

(assert (=> b!307353 (= res!164264 (and (= (select (arr!7409 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7761 a!3293))))))

(declare-fun res!164263 () Bool)

(assert (=> start!30650 (=> (not res!164263) (not e!192429))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30650 (= res!164263 (validMask!0 mask!3709))))

(assert (=> start!30650 e!192429))

(declare-fun array_inv!5363 (array!15652) Bool)

(assert (=> start!30650 (array_inv!5363 a!3293)))

(assert (=> start!30650 true))

(declare-fun b!307354 () Bool)

(declare-fun res!164269 () Bool)

(assert (=> b!307354 (=> (not res!164269) (not e!192429))))

(declare-fun arrayContainsKey!0 (array!15652 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!307354 (= res!164269 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!307355 () Bool)

(assert (=> b!307355 (= e!192429 e!192428)))

(declare-fun res!164267 () Bool)

(assert (=> b!307355 (=> (not res!164267) (not e!192428))))

(declare-datatypes ((SeekEntryResult!2560 0))(
  ( (MissingZero!2560 (index!12416 (_ BitVec 32))) (Found!2560 (index!12417 (_ BitVec 32))) (Intermediate!2560 (undefined!3372 Bool) (index!12418 (_ BitVec 32)) (x!30622 (_ BitVec 32))) (Undefined!2560) (MissingVacant!2560 (index!12419 (_ BitVec 32))) )
))
(declare-fun lt!151106 () SeekEntryResult!2560)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15652 (_ BitVec 32)) SeekEntryResult!2560)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!307355 (= res!164267 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!151106))))

(assert (=> b!307355 (= lt!151106 (Intermediate!2560 false resIndex!52 resX!52))))

(declare-fun b!307356 () Bool)

(declare-fun res!164271 () Bool)

(assert (=> b!307356 (=> (not res!164271) (not e!192428))))

(assert (=> b!307356 (= res!164271 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709) lt!151106))))

(declare-fun b!307357 () Bool)

(declare-fun res!164266 () Bool)

(assert (=> b!307357 (=> (not res!164266) (not e!192429))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!307357 (= res!164266 (validKeyInArray!0 k0!2441))))

(declare-fun b!307358 () Bool)

(declare-fun res!164265 () Bool)

(assert (=> b!307358 (=> (not res!164265) (not e!192429))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15652 (_ BitVec 32)) SeekEntryResult!2560)

(assert (=> b!307358 (= res!164265 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2560 i!1240)))))

(declare-fun b!307359 () Bool)

(declare-fun res!164268 () Bool)

(assert (=> b!307359 (=> (not res!164268) (not e!192429))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15652 (_ BitVec 32)) Bool)

(assert (=> b!307359 (= res!164268 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(assert (= (and start!30650 res!164263) b!307352))

(assert (= (and b!307352 res!164270) b!307357))

(assert (= (and b!307357 res!164266) b!307354))

(assert (= (and b!307354 res!164269) b!307358))

(assert (= (and b!307358 res!164265) b!307359))

(assert (= (and b!307359 res!164268) b!307355))

(assert (= (and b!307355 res!164267) b!307353))

(assert (= (and b!307353 res!164264) b!307356))

(assert (= (and b!307356 res!164271) b!307351))

(declare-fun m!317681 () Bool)

(assert (=> b!307356 m!317681))

(declare-fun m!317683 () Bool)

(assert (=> b!307357 m!317683))

(declare-fun m!317685 () Bool)

(assert (=> b!307353 m!317685))

(declare-fun m!317687 () Bool)

(assert (=> b!307359 m!317687))

(declare-fun m!317689 () Bool)

(assert (=> start!30650 m!317689))

(declare-fun m!317691 () Bool)

(assert (=> start!30650 m!317691))

(declare-fun m!317693 () Bool)

(assert (=> b!307358 m!317693))

(declare-fun m!317695 () Bool)

(assert (=> b!307354 m!317695))

(declare-fun m!317697 () Bool)

(assert (=> b!307351 m!317697))

(declare-fun m!317699 () Bool)

(assert (=> b!307355 m!317699))

(assert (=> b!307355 m!317699))

(declare-fun m!317701 () Bool)

(assert (=> b!307355 m!317701))

(check-sat (not b!307355) (not start!30650) (not b!307357) (not b!307354) (not b!307358) (not b!307356) (not b!307359))
(check-sat)
