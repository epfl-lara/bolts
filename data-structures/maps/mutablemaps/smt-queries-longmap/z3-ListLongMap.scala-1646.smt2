; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!30662 () Bool)

(assert start!30662)

(declare-fun b!307513 () Bool)

(declare-fun res!164431 () Bool)

(declare-fun e!192483 () Bool)

(assert (=> b!307513 (=> (not res!164431) (not e!192483))))

(declare-datatypes ((array!15664 0))(
  ( (array!15665 (arr!7415 (Array (_ BitVec 32) (_ BitVec 64))) (size!7767 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15664)

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!307513 (= res!164431 (and (= (select (arr!7415 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7767 a!3293))))))

(declare-fun b!307514 () Bool)

(declare-fun res!164428 () Bool)

(declare-fun e!192482 () Bool)

(assert (=> b!307514 (=> (not res!164428) (not e!192482))))

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!307514 (= res!164428 (validKeyInArray!0 k0!2441))))

(declare-fun b!307515 () Bool)

(declare-fun res!164425 () Bool)

(assert (=> b!307515 (=> (not res!164425) (not e!192482))))

(declare-fun mask!3709 () (_ BitVec 32))

(assert (=> b!307515 (= res!164425 (and (= (size!7767 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7767 a!3293))))))

(declare-fun b!307516 () Bool)

(declare-fun res!164429 () Bool)

(assert (=> b!307516 (=> (not res!164429) (not e!192482))))

(declare-fun arrayContainsKey!0 (array!15664 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!307516 (= res!164429 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!307517 () Bool)

(declare-fun res!164426 () Bool)

(assert (=> b!307517 (=> (not res!164426) (not e!192482))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15664 (_ BitVec 32)) Bool)

(assert (=> b!307517 (= res!164426 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!307518 () Bool)

(declare-fun res!164432 () Bool)

(assert (=> b!307518 (=> (not res!164432) (not e!192483))))

(declare-datatypes ((SeekEntryResult!2566 0))(
  ( (MissingZero!2566 (index!12440 (_ BitVec 32))) (Found!2566 (index!12441 (_ BitVec 32))) (Intermediate!2566 (undefined!3378 Bool) (index!12442 (_ BitVec 32)) (x!30644 (_ BitVec 32))) (Undefined!2566) (MissingVacant!2566 (index!12443 (_ BitVec 32))) )
))
(declare-fun lt!151124 () SeekEntryResult!2566)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15664 (_ BitVec 32)) SeekEntryResult!2566)

(assert (=> b!307518 (= res!164432 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709) lt!151124))))

(declare-fun b!307519 () Bool)

(assert (=> b!307519 (= e!192483 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7415 a!3293) index!1781) k0!2441)) (not (= x!1427 resX!52)) (bvsge mask!3709 #b00000000000000000000000000000000) (bvslt index!1781 (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsgt x!1427 #b01111111111111111111111111111110)))))

(declare-fun b!307520 () Bool)

(assert (=> b!307520 (= e!192482 e!192483)))

(declare-fun res!164430 () Bool)

(assert (=> b!307520 (=> (not res!164430) (not e!192483))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!307520 (= res!164430 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!151124))))

(assert (=> b!307520 (= lt!151124 (Intermediate!2566 false resIndex!52 resX!52))))

(declare-fun res!164433 () Bool)

(assert (=> start!30662 (=> (not res!164433) (not e!192482))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30662 (= res!164433 (validMask!0 mask!3709))))

(assert (=> start!30662 e!192482))

(declare-fun array_inv!5369 (array!15664) Bool)

(assert (=> start!30662 (array_inv!5369 a!3293)))

(assert (=> start!30662 true))

(declare-fun b!307521 () Bool)

(declare-fun res!164427 () Bool)

(assert (=> b!307521 (=> (not res!164427) (not e!192482))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15664 (_ BitVec 32)) SeekEntryResult!2566)

(assert (=> b!307521 (= res!164427 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2566 i!1240)))))

(assert (= (and start!30662 res!164433) b!307515))

(assert (= (and b!307515 res!164425) b!307514))

(assert (= (and b!307514 res!164428) b!307516))

(assert (= (and b!307516 res!164429) b!307521))

(assert (= (and b!307521 res!164427) b!307517))

(assert (= (and b!307517 res!164426) b!307520))

(assert (= (and b!307520 res!164430) b!307513))

(assert (= (and b!307513 res!164431) b!307518))

(assert (= (and b!307518 res!164432) b!307519))

(declare-fun m!317813 () Bool)

(assert (=> b!307520 m!317813))

(assert (=> b!307520 m!317813))

(declare-fun m!317815 () Bool)

(assert (=> b!307520 m!317815))

(declare-fun m!317817 () Bool)

(assert (=> b!307517 m!317817))

(declare-fun m!317819 () Bool)

(assert (=> b!307514 m!317819))

(declare-fun m!317821 () Bool)

(assert (=> b!307513 m!317821))

(declare-fun m!317823 () Bool)

(assert (=> start!30662 m!317823))

(declare-fun m!317825 () Bool)

(assert (=> start!30662 m!317825))

(declare-fun m!317827 () Bool)

(assert (=> b!307516 m!317827))

(declare-fun m!317829 () Bool)

(assert (=> b!307521 m!317829))

(declare-fun m!317831 () Bool)

(assert (=> b!307519 m!317831))

(declare-fun m!317833 () Bool)

(assert (=> b!307518 m!317833))

(check-sat (not b!307521) (not b!307520) (not start!30662) (not b!307518) (not b!307517) (not b!307514) (not b!307516))
(check-sat)
