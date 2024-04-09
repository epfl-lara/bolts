; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!31004 () Bool)

(assert start!31004)

(declare-fun b!311335 () Bool)

(declare-fun e!194256 () Bool)

(declare-fun e!194260 () Bool)

(assert (=> b!311335 (= e!194256 e!194260)))

(declare-fun res!167946 () Bool)

(assert (=> b!311335 (=> (not res!167946) (not e!194260))))

(declare-datatypes ((array!15904 0))(
  ( (array!15905 (arr!7532 (Array (_ BitVec 32) (_ BitVec 64))) (size!7884 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15904)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2683 0))(
  ( (MissingZero!2683 (index!12908 (_ BitVec 32))) (Found!2683 (index!12909 (_ BitVec 32))) (Intermediate!2683 (undefined!3495 Bool) (index!12910 (_ BitVec 32)) (x!31091 (_ BitVec 32))) (Undefined!2683) (MissingVacant!2683 (index!12911 (_ BitVec 32))) )
))
(declare-fun lt!152357 () SeekEntryResult!2683)

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15904 (_ BitVec 32)) SeekEntryResult!2683)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!311335 (= res!167946 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!152357))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!311335 (= lt!152357 (Intermediate!2683 false resIndex!52 resX!52))))

(declare-fun b!311336 () Bool)

(declare-fun res!167947 () Bool)

(assert (=> b!311336 (=> (not res!167947) (not e!194256))))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15904 (_ BitVec 32)) SeekEntryResult!2683)

(assert (=> b!311336 (= res!167947 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2683 i!1240)))))

(declare-fun b!311337 () Bool)

(declare-fun e!194259 () Bool)

(assert (=> b!311337 (= e!194259 (not true))))

(declare-fun e!194258 () Bool)

(assert (=> b!311337 e!194258))

(declare-fun res!167950 () Bool)

(assert (=> b!311337 (=> (not res!167950) (not e!194258))))

(declare-fun lt!152355 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun lt!152356 () SeekEntryResult!2683)

(assert (=> b!311337 (= res!167950 (= lt!152356 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!152355 k0!2441 a!3293 mask!3709)))))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!311337 (= lt!152355 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!311338 () Bool)

(declare-fun res!167953 () Bool)

(assert (=> b!311338 (=> (not res!167953) (not e!194256))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15904 (_ BitVec 32)) Bool)

(assert (=> b!311338 (= res!167953 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!311339 () Bool)

(declare-fun res!167949 () Bool)

(assert (=> b!311339 (=> (not res!167949) (not e!194260))))

(assert (=> b!311339 (= res!167949 (and (= (select (arr!7532 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7884 a!3293))))))

(declare-fun res!167952 () Bool)

(assert (=> start!31004 (=> (not res!167952) (not e!194256))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31004 (= res!167952 (validMask!0 mask!3709))))

(assert (=> start!31004 e!194256))

(declare-fun array_inv!5486 (array!15904) Bool)

(assert (=> start!31004 (array_inv!5486 a!3293)))

(assert (=> start!31004 true))

(declare-fun b!311334 () Bool)

(declare-fun res!167948 () Bool)

(assert (=> b!311334 (=> (not res!167948) (not e!194256))))

(assert (=> b!311334 (= res!167948 (and (= (size!7884 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7884 a!3293))))))

(declare-fun lt!152354 () array!15904)

(declare-fun b!311340 () Bool)

(assert (=> b!311340 (= e!194258 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 lt!152354 mask!3709) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!152355 k0!2441 lt!152354 mask!3709)))))

(assert (=> b!311340 (= lt!152354 (array!15905 (store (arr!7532 a!3293) i!1240 k0!2441) (size!7884 a!3293)))))

(declare-fun b!311341 () Bool)

(declare-fun res!167954 () Bool)

(assert (=> b!311341 (=> (not res!167954) (not e!194256))))

(declare-fun arrayContainsKey!0 (array!15904 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!311341 (= res!167954 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!311342 () Bool)

(assert (=> b!311342 (= e!194260 e!194259)))

(declare-fun res!167951 () Bool)

(assert (=> b!311342 (=> (not res!167951) (not e!194259))))

(assert (=> b!311342 (= res!167951 (and (= lt!152356 lt!152357) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7532 a!3293) index!1781) k0!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!311342 (= lt!152356 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709))))

(declare-fun b!311343 () Bool)

(declare-fun res!167955 () Bool)

(assert (=> b!311343 (=> (not res!167955) (not e!194256))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!311343 (= res!167955 (validKeyInArray!0 k0!2441))))

(assert (= (and start!31004 res!167952) b!311334))

(assert (= (and b!311334 res!167948) b!311343))

(assert (= (and b!311343 res!167955) b!311341))

(assert (= (and b!311341 res!167954) b!311336))

(assert (= (and b!311336 res!167947) b!311338))

(assert (= (and b!311338 res!167953) b!311335))

(assert (= (and b!311335 res!167946) b!311339))

(assert (= (and b!311339 res!167949) b!311342))

(assert (= (and b!311342 res!167951) b!311337))

(assert (= (and b!311337 res!167950) b!311340))

(declare-fun m!321357 () Bool)

(assert (=> b!311338 m!321357))

(declare-fun m!321359 () Bool)

(assert (=> b!311336 m!321359))

(declare-fun m!321361 () Bool)

(assert (=> b!311335 m!321361))

(assert (=> b!311335 m!321361))

(declare-fun m!321363 () Bool)

(assert (=> b!311335 m!321363))

(declare-fun m!321365 () Bool)

(assert (=> b!311340 m!321365))

(declare-fun m!321367 () Bool)

(assert (=> b!311340 m!321367))

(declare-fun m!321369 () Bool)

(assert (=> b!311340 m!321369))

(declare-fun m!321371 () Bool)

(assert (=> b!311339 m!321371))

(declare-fun m!321373 () Bool)

(assert (=> b!311343 m!321373))

(declare-fun m!321375 () Bool)

(assert (=> b!311337 m!321375))

(declare-fun m!321377 () Bool)

(assert (=> b!311337 m!321377))

(declare-fun m!321379 () Bool)

(assert (=> b!311341 m!321379))

(declare-fun m!321381 () Bool)

(assert (=> b!311342 m!321381))

(declare-fun m!321383 () Bool)

(assert (=> b!311342 m!321383))

(declare-fun m!321385 () Bool)

(assert (=> start!31004 m!321385))

(declare-fun m!321387 () Bool)

(assert (=> start!31004 m!321387))

(check-sat (not b!311336) (not b!311337) (not b!311338) (not start!31004) (not b!311335) (not b!311343) (not b!311340) (not b!311341) (not b!311342))
(check-sat)
