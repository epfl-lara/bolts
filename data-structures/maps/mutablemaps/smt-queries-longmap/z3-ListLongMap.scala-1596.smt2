; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!30254 () Bool)

(assert start!30254)

(declare-fun b!302491 () Bool)

(declare-fun res!160143 () Bool)

(declare-fun e!190629 () Bool)

(assert (=> b!302491 (=> (not res!160143) (not e!190629))))

(declare-datatypes ((array!15358 0))(
  ( (array!15359 (arr!7265 (Array (_ BitVec 32) (_ BitVec 64))) (size!7617 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15358)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15358 (_ BitVec 32)) Bool)

(assert (=> b!302491 (= res!160143 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun res!160137 () Bool)

(assert (=> start!30254 (=> (not res!160137) (not e!190629))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30254 (= res!160137 (validMask!0 mask!3709))))

(assert (=> start!30254 e!190629))

(declare-fun array_inv!5219 (array!15358) Bool)

(assert (=> start!30254 (array_inv!5219 a!3293)))

(assert (=> start!30254 true))

(declare-fun b!302492 () Bool)

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun e!190630 () Bool)

(declare-fun x!1427 () (_ BitVec 32))

(assert (=> b!302492 (= e!190630 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7265 a!3293) index!1781) k0!2441)) (= x!1427 resX!52) (not (= resIndex!52 index!1781)) (or (= (select (arr!7265 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7265 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge mask!3709 #b00000000000000000000000000000000) (bvsge index!1781 (bvadd #b00000000000000000000000000000001 mask!3709))))))

(declare-fun b!302493 () Bool)

(assert (=> b!302493 (= e!190629 e!190630)))

(declare-fun res!160142 () Bool)

(assert (=> b!302493 (=> (not res!160142) (not e!190630))))

(declare-datatypes ((SeekEntryResult!2416 0))(
  ( (MissingZero!2416 (index!11840 (_ BitVec 32))) (Found!2416 (index!11841 (_ BitVec 32))) (Intermediate!2416 (undefined!3228 Bool) (index!11842 (_ BitVec 32)) (x!30076 (_ BitVec 32))) (Undefined!2416) (MissingVacant!2416 (index!11843 (_ BitVec 32))) )
))
(declare-fun lt!150080 () SeekEntryResult!2416)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15358 (_ BitVec 32)) SeekEntryResult!2416)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!302493 (= res!160142 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!150080))))

(assert (=> b!302493 (= lt!150080 (Intermediate!2416 false resIndex!52 resX!52))))

(declare-fun b!302494 () Bool)

(declare-fun res!160136 () Bool)

(assert (=> b!302494 (=> (not res!160136) (not e!190629))))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15358 (_ BitVec 32)) SeekEntryResult!2416)

(assert (=> b!302494 (= res!160136 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2416 i!1240)))))

(declare-fun b!302495 () Bool)

(declare-fun res!160135 () Bool)

(assert (=> b!302495 (=> (not res!160135) (not e!190630))))

(assert (=> b!302495 (= res!160135 (and (= (select (arr!7265 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7617 a!3293))))))

(declare-fun b!302496 () Bool)

(declare-fun res!160138 () Bool)

(assert (=> b!302496 (=> (not res!160138) (not e!190630))))

(assert (=> b!302496 (= res!160138 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709) lt!150080))))

(declare-fun b!302497 () Bool)

(declare-fun res!160141 () Bool)

(assert (=> b!302497 (=> (not res!160141) (not e!190629))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!302497 (= res!160141 (validKeyInArray!0 k0!2441))))

(declare-fun b!302498 () Bool)

(declare-fun res!160139 () Bool)

(assert (=> b!302498 (=> (not res!160139) (not e!190629))))

(assert (=> b!302498 (= res!160139 (and (= (size!7617 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7617 a!3293))))))

(declare-fun b!302499 () Bool)

(declare-fun res!160140 () Bool)

(assert (=> b!302499 (=> (not res!160140) (not e!190629))))

(declare-fun arrayContainsKey!0 (array!15358 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!302499 (= res!160140 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(assert (= (and start!30254 res!160137) b!302498))

(assert (= (and b!302498 res!160139) b!302497))

(assert (= (and b!302497 res!160141) b!302499))

(assert (= (and b!302499 res!160140) b!302494))

(assert (= (and b!302494 res!160136) b!302491))

(assert (= (and b!302491 res!160143) b!302493))

(assert (= (and b!302493 res!160142) b!302495))

(assert (= (and b!302495 res!160135) b!302496))

(assert (= (and b!302496 res!160138) b!302492))

(declare-fun m!314015 () Bool)

(assert (=> b!302493 m!314015))

(assert (=> b!302493 m!314015))

(declare-fun m!314017 () Bool)

(assert (=> b!302493 m!314017))

(declare-fun m!314019 () Bool)

(assert (=> b!302495 m!314019))

(declare-fun m!314021 () Bool)

(assert (=> start!30254 m!314021))

(declare-fun m!314023 () Bool)

(assert (=> start!30254 m!314023))

(declare-fun m!314025 () Bool)

(assert (=> b!302499 m!314025))

(declare-fun m!314027 () Bool)

(assert (=> b!302492 m!314027))

(declare-fun m!314029 () Bool)

(assert (=> b!302497 m!314029))

(declare-fun m!314031 () Bool)

(assert (=> b!302494 m!314031))

(declare-fun m!314033 () Bool)

(assert (=> b!302496 m!314033))

(declare-fun m!314035 () Bool)

(assert (=> b!302491 m!314035))

(check-sat (not b!302491) (not b!302499) (not b!302496) (not b!302494) (not start!30254) (not b!302493) (not b!302497))
(check-sat)
