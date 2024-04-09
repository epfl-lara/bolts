; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!30530 () Bool)

(assert start!30530)

(declare-fun b!305227 () Bool)

(declare-fun res!162573 () Bool)

(declare-fun e!191707 () Bool)

(assert (=> b!305227 (=> (not res!162573) (not e!191707))))

(declare-datatypes ((array!15532 0))(
  ( (array!15533 (arr!7349 (Array (_ BitVec 32) (_ BitVec 64))) (size!7701 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15532)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!305227 (= res!162573 (and (= (size!7701 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7701 a!3293))))))

(declare-fun b!305228 () Bool)

(declare-fun e!191706 () Bool)

(declare-fun e!191704 () Bool)

(assert (=> b!305228 (= e!191706 e!191704)))

(declare-fun res!162576 () Bool)

(assert (=> b!305228 (=> (not res!162576) (not e!191704))))

(declare-datatypes ((SeekEntryResult!2500 0))(
  ( (MissingZero!2500 (index!12176 (_ BitVec 32))) (Found!2500 (index!12177 (_ BitVec 32))) (Intermediate!2500 (undefined!3312 Bool) (index!12178 (_ BitVec 32)) (x!30402 (_ BitVec 32))) (Undefined!2500) (MissingVacant!2500 (index!12179 (_ BitVec 32))) )
))
(declare-fun lt!150707 () SeekEntryResult!2500)

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun lt!150706 () SeekEntryResult!2500)

(assert (=> b!305228 (= res!162576 (and (= lt!150706 lt!150707) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7349 a!3293) index!1781) k0!2441)) (= x!1427 resX!52) (not (= resIndex!52 index!1781)) (not (= (select (arr!7349 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!7349 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15532 (_ BitVec 32)) SeekEntryResult!2500)

(assert (=> b!305228 (= lt!150706 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709))))

(declare-fun b!305229 () Bool)

(declare-fun res!162571 () Bool)

(assert (=> b!305229 (=> (not res!162571) (not e!191707))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15532 (_ BitVec 32)) SeekEntryResult!2500)

(assert (=> b!305229 (= res!162571 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2500 i!1240)))))

(declare-fun b!305230 () Bool)

(declare-fun res!162577 () Bool)

(assert (=> b!305230 (=> (not res!162577) (not e!191707))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!305230 (= res!162577 (validKeyInArray!0 k0!2441))))

(declare-fun b!305231 () Bool)

(declare-fun res!162578 () Bool)

(assert (=> b!305231 (=> (not res!162578) (not e!191706))))

(assert (=> b!305231 (= res!162578 (and (= (select (arr!7349 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7701 a!3293))))))

(declare-fun b!305232 () Bool)

(assert (=> b!305232 (= e!191707 e!191706)))

(declare-fun res!162572 () Bool)

(assert (=> b!305232 (=> (not res!162572) (not e!191706))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!305232 (= res!162572 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!150707))))

(assert (=> b!305232 (= lt!150707 (Intermediate!2500 false resIndex!52 resX!52))))

(declare-fun b!305234 () Bool)

(declare-fun res!162579 () Bool)

(assert (=> b!305234 (=> (not res!162579) (not e!191707))))

(declare-fun arrayContainsKey!0 (array!15532 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!305234 (= res!162579 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!305235 () Bool)

(assert (=> b!305235 (= e!191704 (not true))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!305235 (= lt!150706 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k0!2441 a!3293 mask!3709))))

(declare-fun b!305233 () Bool)

(declare-fun res!162574 () Bool)

(assert (=> b!305233 (=> (not res!162574) (not e!191707))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15532 (_ BitVec 32)) Bool)

(assert (=> b!305233 (= res!162574 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun res!162575 () Bool)

(assert (=> start!30530 (=> (not res!162575) (not e!191707))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30530 (= res!162575 (validMask!0 mask!3709))))

(assert (=> start!30530 e!191707))

(declare-fun array_inv!5303 (array!15532) Bool)

(assert (=> start!30530 (array_inv!5303 a!3293)))

(assert (=> start!30530 true))

(assert (= (and start!30530 res!162575) b!305227))

(assert (= (and b!305227 res!162573) b!305230))

(assert (= (and b!305230 res!162577) b!305234))

(assert (= (and b!305234 res!162579) b!305229))

(assert (= (and b!305229 res!162571) b!305233))

(assert (= (and b!305233 res!162574) b!305232))

(assert (= (and b!305232 res!162572) b!305231))

(assert (= (and b!305231 res!162578) b!305228))

(assert (= (and b!305228 res!162576) b!305235))

(declare-fun m!316233 () Bool)

(assert (=> b!305230 m!316233))

(declare-fun m!316235 () Bool)

(assert (=> b!305228 m!316235))

(declare-fun m!316237 () Bool)

(assert (=> b!305228 m!316237))

(declare-fun m!316239 () Bool)

(assert (=> b!305231 m!316239))

(declare-fun m!316241 () Bool)

(assert (=> b!305229 m!316241))

(declare-fun m!316243 () Bool)

(assert (=> start!30530 m!316243))

(declare-fun m!316245 () Bool)

(assert (=> start!30530 m!316245))

(declare-fun m!316247 () Bool)

(assert (=> b!305232 m!316247))

(assert (=> b!305232 m!316247))

(declare-fun m!316249 () Bool)

(assert (=> b!305232 m!316249))

(declare-fun m!316251 () Bool)

(assert (=> b!305234 m!316251))

(declare-fun m!316253 () Bool)

(assert (=> b!305233 m!316253))

(declare-fun m!316255 () Bool)

(assert (=> b!305235 m!316255))

(assert (=> b!305235 m!316255))

(declare-fun m!316257 () Bool)

(assert (=> b!305235 m!316257))

(check-sat (not b!305233) (not b!305229) (not b!305234) (not b!305232) (not b!305235) (not start!30530) (not b!305228) (not b!305230))
(check-sat)
