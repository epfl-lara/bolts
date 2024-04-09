; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!30596 () Bool)

(assert start!30596)

(declare-fun b!306593 () Bool)

(declare-fun res!163564 () Bool)

(declare-fun e!192198 () Bool)

(assert (=> b!306593 (=> (not res!163564) (not e!192198))))

(declare-datatypes ((array!15598 0))(
  ( (array!15599 (arr!7382 (Array (_ BitVec 32) (_ BitVec 64))) (size!7734 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15598)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun i!1240 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2533 0))(
  ( (MissingZero!2533 (index!12308 (_ BitVec 32))) (Found!2533 (index!12309 (_ BitVec 32))) (Intermediate!2533 (undefined!3345 Bool) (index!12310 (_ BitVec 32)) (x!30523 (_ BitVec 32))) (Undefined!2533) (MissingVacant!2533 (index!12311 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15598 (_ BitVec 32)) SeekEntryResult!2533)

(assert (=> b!306593 (= res!163564 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2533 i!1240)))))

(declare-fun b!306595 () Bool)

(declare-fun res!163566 () Bool)

(assert (=> b!306595 (=> (not res!163566) (not e!192198))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15598 (_ BitVec 32)) Bool)

(assert (=> b!306595 (= res!163566 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!306596 () Bool)

(declare-fun res!163557 () Bool)

(assert (=> b!306596 (=> (not res!163557) (not e!192198))))

(declare-fun arrayContainsKey!0 (array!15598 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!306596 (= res!163557 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!306597 () Bool)

(declare-fun res!163560 () Bool)

(declare-fun e!192196 () Bool)

(assert (=> b!306597 (=> (not res!163560) (not e!192196))))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(assert (=> b!306597 (= res!163560 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7382 a!3293) index!1781) k0!2441)) (= x!1427 resX!52)))))

(declare-fun b!306598 () Bool)

(assert (=> b!306598 (= e!192196 (not (or (not (= (select (arr!7382 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000)) (bvslt mask!3709 #b00000000000000000000000000000000) (bvsge index!1781 (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsle x!1427 #b01111111111111111111111111111110))))))

(declare-fun resIndex!52 () (_ BitVec 32))

(assert (=> b!306598 (= index!1781 resIndex!52)))

(declare-datatypes ((Unit!9543 0))(
  ( (Unit!9544) )
))
(declare-fun lt!151001 () Unit!9543)

(declare-fun e!192199 () Unit!9543)

(assert (=> b!306598 (= lt!151001 e!192199)))

(declare-fun c!49121 () Bool)

(assert (=> b!306598 (= c!49121 (not (= resIndex!52 index!1781)))))

(declare-fun b!306599 () Bool)

(declare-fun e!192197 () Unit!9543)

(assert (=> b!306599 (= e!192199 e!192197)))

(declare-fun c!49120 () Bool)

(assert (=> b!306599 (= c!49120 (or (= (select (arr!7382 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7382 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!306600 () Bool)

(declare-fun res!163559 () Bool)

(assert (=> b!306600 (=> (not res!163559) (not e!192196))))

(declare-fun lt!151000 () SeekEntryResult!2533)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15598 (_ BitVec 32)) SeekEntryResult!2533)

(assert (=> b!306600 (= res!163559 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709) lt!151000))))

(declare-fun b!306601 () Bool)

(assert (=> b!306601 false))

(declare-fun Unit!9545 () Unit!9543)

(assert (=> b!306601 (= e!192197 Unit!9545)))

(declare-fun b!306602 () Bool)

(declare-fun res!163562 () Bool)

(assert (=> b!306602 (=> (not res!163562) (not e!192198))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!306602 (= res!163562 (validKeyInArray!0 k0!2441))))

(declare-fun res!163558 () Bool)

(assert (=> start!30596 (=> (not res!163558) (not e!192198))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30596 (= res!163558 (validMask!0 mask!3709))))

(assert (=> start!30596 e!192198))

(declare-fun array_inv!5336 (array!15598) Bool)

(assert (=> start!30596 (array_inv!5336 a!3293)))

(assert (=> start!30596 true))

(declare-fun b!306594 () Bool)

(declare-fun res!163561 () Bool)

(assert (=> b!306594 (=> (not res!163561) (not e!192198))))

(assert (=> b!306594 (= res!163561 (and (= (size!7734 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7734 a!3293))))))

(declare-fun b!306603 () Bool)

(assert (=> b!306603 false))

(declare-fun lt!150999 () SeekEntryResult!2533)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!306603 (= lt!150999 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k0!2441 a!3293 mask!3709))))

(declare-fun Unit!9546 () Unit!9543)

(assert (=> b!306603 (= e!192197 Unit!9546)))

(declare-fun b!306604 () Bool)

(declare-fun res!163565 () Bool)

(assert (=> b!306604 (=> (not res!163565) (not e!192196))))

(assert (=> b!306604 (= res!163565 (and (= (select (arr!7382 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7734 a!3293))))))

(declare-fun b!306605 () Bool)

(declare-fun Unit!9547 () Unit!9543)

(assert (=> b!306605 (= e!192199 Unit!9547)))

(declare-fun b!306606 () Bool)

(assert (=> b!306606 (= e!192198 e!192196)))

(declare-fun res!163563 () Bool)

(assert (=> b!306606 (=> (not res!163563) (not e!192196))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!306606 (= res!163563 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!151000))))

(assert (=> b!306606 (= lt!151000 (Intermediate!2533 false resIndex!52 resX!52))))

(assert (= (and start!30596 res!163558) b!306594))

(assert (= (and b!306594 res!163561) b!306602))

(assert (= (and b!306602 res!163562) b!306596))

(assert (= (and b!306596 res!163557) b!306593))

(assert (= (and b!306593 res!163564) b!306595))

(assert (= (and b!306595 res!163566) b!306606))

(assert (= (and b!306606 res!163563) b!306604))

(assert (= (and b!306604 res!163565) b!306600))

(assert (= (and b!306600 res!163559) b!306597))

(assert (= (and b!306597 res!163560) b!306598))

(assert (= (and b!306598 c!49121) b!306599))

(assert (= (and b!306598 (not c!49121)) b!306605))

(assert (= (and b!306599 c!49120) b!306601))

(assert (= (and b!306599 (not c!49120)) b!306603))

(declare-fun m!317091 () Bool)

(assert (=> b!306603 m!317091))

(assert (=> b!306603 m!317091))

(declare-fun m!317093 () Bool)

(assert (=> b!306603 m!317093))

(declare-fun m!317095 () Bool)

(assert (=> b!306595 m!317095))

(declare-fun m!317097 () Bool)

(assert (=> b!306606 m!317097))

(assert (=> b!306606 m!317097))

(declare-fun m!317099 () Bool)

(assert (=> b!306606 m!317099))

(declare-fun m!317101 () Bool)

(assert (=> b!306596 m!317101))

(declare-fun m!317103 () Bool)

(assert (=> b!306598 m!317103))

(declare-fun m!317105 () Bool)

(assert (=> b!306593 m!317105))

(declare-fun m!317107 () Bool)

(assert (=> b!306602 m!317107))

(assert (=> b!306599 m!317103))

(declare-fun m!317109 () Bool)

(assert (=> b!306604 m!317109))

(declare-fun m!317111 () Bool)

(assert (=> start!30596 m!317111))

(declare-fun m!317113 () Bool)

(assert (=> start!30596 m!317113))

(assert (=> b!306597 m!317103))

(declare-fun m!317115 () Bool)

(assert (=> b!306600 m!317115))

(check-sat (not b!306600) (not b!306603) (not b!306606) (not start!30596) (not b!306596) (not b!306595) (not b!306602) (not b!306593))
(check-sat)
