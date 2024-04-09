; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!30608 () Bool)

(assert start!30608)

(declare-fun b!306815 () Bool)

(declare-fun res!163730 () Bool)

(declare-fun e!192271 () Bool)

(assert (=> b!306815 (=> (not res!163730) (not e!192271))))

(declare-datatypes ((array!15610 0))(
  ( (array!15611 (arr!7388 (Array (_ BitVec 32) (_ BitVec 64))) (size!7740 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15610)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun i!1240 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2539 0))(
  ( (MissingZero!2539 (index!12332 (_ BitVec 32))) (Found!2539 (index!12333 (_ BitVec 32))) (Intermediate!2539 (undefined!3351 Bool) (index!12334 (_ BitVec 32)) (x!30545 (_ BitVec 32))) (Undefined!2539) (MissingVacant!2539 (index!12335 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15610 (_ BitVec 32)) SeekEntryResult!2539)

(assert (=> b!306815 (= res!163730 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2539 i!1240)))))

(declare-fun res!163732 () Bool)

(assert (=> start!30608 (=> (not res!163732) (not e!192271))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30608 (= res!163732 (validMask!0 mask!3709))))

(assert (=> start!30608 e!192271))

(declare-fun array_inv!5342 (array!15610) Bool)

(assert (=> start!30608 (array_inv!5342 a!3293)))

(assert (=> start!30608 true))

(declare-fun b!306816 () Bool)

(declare-fun res!163733 () Bool)

(assert (=> b!306816 (=> (not res!163733) (not e!192271))))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15610 (_ BitVec 32)) SeekEntryResult!2539)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!306816 (= res!163733 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) (Intermediate!2539 false resIndex!52 resX!52)))))

(declare-fun b!306817 () Bool)

(assert (=> b!306817 (= e!192271 false)))

(declare-fun lt!151043 () SeekEntryResult!2539)

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!306817 (= lt!151043 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709))))

(declare-fun b!306818 () Bool)

(declare-fun res!163731 () Bool)

(assert (=> b!306818 (=> (not res!163731) (not e!192271))))

(assert (=> b!306818 (= res!163731 (and (= (select (arr!7388 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7740 a!3293))))))

(declare-fun b!306819 () Bool)

(declare-fun res!163728 () Bool)

(assert (=> b!306819 (=> (not res!163728) (not e!192271))))

(assert (=> b!306819 (= res!163728 (and (= (size!7740 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7740 a!3293))))))

(declare-fun b!306820 () Bool)

(declare-fun res!163729 () Bool)

(assert (=> b!306820 (=> (not res!163729) (not e!192271))))

(declare-fun arrayContainsKey!0 (array!15610 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!306820 (= res!163729 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!306821 () Bool)

(declare-fun res!163727 () Bool)

(assert (=> b!306821 (=> (not res!163727) (not e!192271))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!306821 (= res!163727 (validKeyInArray!0 k0!2441))))

(declare-fun b!306822 () Bool)

(declare-fun res!163734 () Bool)

(assert (=> b!306822 (=> (not res!163734) (not e!192271))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15610 (_ BitVec 32)) Bool)

(assert (=> b!306822 (= res!163734 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(assert (= (and start!30608 res!163732) b!306819))

(assert (= (and b!306819 res!163728) b!306821))

(assert (= (and b!306821 res!163727) b!306820))

(assert (= (and b!306820 res!163729) b!306815))

(assert (= (and b!306815 res!163730) b!306822))

(assert (= (and b!306822 res!163734) b!306816))

(assert (= (and b!306816 res!163733) b!306818))

(assert (= (and b!306818 res!163731) b!306817))

(declare-fun m!317241 () Bool)

(assert (=> b!306822 m!317241))

(declare-fun m!317243 () Bool)

(assert (=> b!306815 m!317243))

(declare-fun m!317245 () Bool)

(assert (=> b!306821 m!317245))

(declare-fun m!317247 () Bool)

(assert (=> b!306820 m!317247))

(declare-fun m!317249 () Bool)

(assert (=> b!306818 m!317249))

(declare-fun m!317251 () Bool)

(assert (=> start!30608 m!317251))

(declare-fun m!317253 () Bool)

(assert (=> start!30608 m!317253))

(declare-fun m!317255 () Bool)

(assert (=> b!306816 m!317255))

(assert (=> b!306816 m!317255))

(declare-fun m!317257 () Bool)

(assert (=> b!306816 m!317257))

(declare-fun m!317259 () Bool)

(assert (=> b!306817 m!317259))

(check-sat (not b!306822) (not b!306820) (not b!306815) (not b!306821) (not b!306816) (not start!30608) (not b!306817))
