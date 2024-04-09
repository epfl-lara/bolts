; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!30260 () Bool)

(assert start!30260)

(declare-fun b!302572 () Bool)

(declare-fun res!160222 () Bool)

(declare-fun e!190655 () Bool)

(assert (=> b!302572 (=> (not res!160222) (not e!190655))))

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!302572 (= res!160222 (validKeyInArray!0 k0!2441))))

(declare-fun res!160218 () Bool)

(assert (=> start!30260 (=> (not res!160218) (not e!190655))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30260 (= res!160218 (validMask!0 mask!3709))))

(assert (=> start!30260 e!190655))

(declare-datatypes ((array!15364 0))(
  ( (array!15365 (arr!7268 (Array (_ BitVec 32) (_ BitVec 64))) (size!7620 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15364)

(declare-fun array_inv!5222 (array!15364) Bool)

(assert (=> start!30260 (array_inv!5222 a!3293)))

(assert (=> start!30260 true))

(declare-fun b!302573 () Bool)

(declare-fun e!190657 () Bool)

(assert (=> b!302573 (= e!190655 e!190657)))

(declare-fun res!160224 () Bool)

(assert (=> b!302573 (=> (not res!160224) (not e!190657))))

(declare-datatypes ((SeekEntryResult!2419 0))(
  ( (MissingZero!2419 (index!11852 (_ BitVec 32))) (Found!2419 (index!11853 (_ BitVec 32))) (Intermediate!2419 (undefined!3231 Bool) (index!11854 (_ BitVec 32)) (x!30087 (_ BitVec 32))) (Undefined!2419) (MissingVacant!2419 (index!11855 (_ BitVec 32))) )
))
(declare-fun lt!150089 () SeekEntryResult!2419)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15364 (_ BitVec 32)) SeekEntryResult!2419)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!302573 (= res!160224 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!150089))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!302573 (= lt!150089 (Intermediate!2419 false resIndex!52 resX!52))))

(declare-fun b!302574 () Bool)

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!302574 (= e!190657 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7268 a!3293) index!1781) k0!2441)) (= x!1427 resX!52) (not (= resIndex!52 index!1781)) (or (= (select (arr!7268 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7268 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge mask!3709 #b00000000000000000000000000000000) (bvslt index!1781 (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsgt x!1427 #b01111111111111111111111111111110)))))

(declare-fun b!302575 () Bool)

(declare-fun res!160220 () Bool)

(assert (=> b!302575 (=> (not res!160220) (not e!190655))))

(declare-fun arrayContainsKey!0 (array!15364 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!302575 (= res!160220 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!302576 () Bool)

(declare-fun res!160219 () Bool)

(assert (=> b!302576 (=> (not res!160219) (not e!190655))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!302576 (= res!160219 (and (= (size!7620 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7620 a!3293))))))

(declare-fun b!302577 () Bool)

(declare-fun res!160217 () Bool)

(assert (=> b!302577 (=> (not res!160217) (not e!190655))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15364 (_ BitVec 32)) SeekEntryResult!2419)

(assert (=> b!302577 (= res!160217 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2419 i!1240)))))

(declare-fun b!302578 () Bool)

(declare-fun res!160223 () Bool)

(assert (=> b!302578 (=> (not res!160223) (not e!190657))))

(assert (=> b!302578 (= res!160223 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709) lt!150089))))

(declare-fun b!302579 () Bool)

(declare-fun res!160221 () Bool)

(assert (=> b!302579 (=> (not res!160221) (not e!190655))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15364 (_ BitVec 32)) Bool)

(assert (=> b!302579 (= res!160221 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!302580 () Bool)

(declare-fun res!160216 () Bool)

(assert (=> b!302580 (=> (not res!160216) (not e!190657))))

(assert (=> b!302580 (= res!160216 (and (= (select (arr!7268 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7620 a!3293))))))

(assert (= (and start!30260 res!160218) b!302576))

(assert (= (and b!302576 res!160219) b!302572))

(assert (= (and b!302572 res!160222) b!302575))

(assert (= (and b!302575 res!160220) b!302577))

(assert (= (and b!302577 res!160217) b!302579))

(assert (= (and b!302579 res!160221) b!302573))

(assert (= (and b!302573 res!160224) b!302580))

(assert (= (and b!302580 res!160216) b!302578))

(assert (= (and b!302578 res!160223) b!302574))

(declare-fun m!314081 () Bool)

(assert (=> b!302573 m!314081))

(assert (=> b!302573 m!314081))

(declare-fun m!314083 () Bool)

(assert (=> b!302573 m!314083))

(declare-fun m!314085 () Bool)

(assert (=> b!302574 m!314085))

(declare-fun m!314087 () Bool)

(assert (=> b!302579 m!314087))

(declare-fun m!314089 () Bool)

(assert (=> b!302578 m!314089))

(declare-fun m!314091 () Bool)

(assert (=> b!302575 m!314091))

(declare-fun m!314093 () Bool)

(assert (=> b!302572 m!314093))

(declare-fun m!314095 () Bool)

(assert (=> b!302577 m!314095))

(declare-fun m!314097 () Bool)

(assert (=> b!302580 m!314097))

(declare-fun m!314099 () Bool)

(assert (=> start!30260 m!314099))

(declare-fun m!314101 () Bool)

(assert (=> start!30260 m!314101))

(check-sat (not b!302579) (not b!302575) (not b!302578) (not start!30260) (not b!302577) (not b!302572) (not b!302573))
(check-sat)
