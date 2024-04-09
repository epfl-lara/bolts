; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!30752 () Bool)

(assert start!30752)

(declare-fun b!308265 () Bool)

(declare-fun res!165038 () Bool)

(declare-fun e!192778 () Bool)

(assert (=> b!308265 (=> (not res!165038) (not e!192778))))

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!308265 (= res!165038 (validKeyInArray!0 k0!2441))))

(declare-fun b!308266 () Bool)

(declare-fun res!165043 () Bool)

(declare-fun e!192777 () Bool)

(assert (=> b!308266 (=> (not res!165043) (not e!192777))))

(declare-datatypes ((array!15703 0))(
  ( (array!15704 (arr!7433 (Array (_ BitVec 32) (_ BitVec 64))) (size!7785 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15703)

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!308266 (= res!165043 (and (= (select (arr!7433 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7785 a!3293))))))

(declare-fun b!308267 () Bool)

(assert (=> b!308267 (= e!192777 false)))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun lt!151333 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!308267 (= lt!151333 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun res!165044 () Bool)

(assert (=> start!30752 (=> (not res!165044) (not e!192778))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30752 (= res!165044 (validMask!0 mask!3709))))

(assert (=> start!30752 e!192778))

(declare-fun array_inv!5387 (array!15703) Bool)

(assert (=> start!30752 (array_inv!5387 a!3293)))

(assert (=> start!30752 true))

(declare-fun b!308268 () Bool)

(declare-fun res!165041 () Bool)

(assert (=> b!308268 (=> (not res!165041) (not e!192778))))

(declare-fun arrayContainsKey!0 (array!15703 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!308268 (= res!165041 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!308269 () Bool)

(declare-fun res!165042 () Bool)

(assert (=> b!308269 (=> (not res!165042) (not e!192778))))

(declare-datatypes ((SeekEntryResult!2584 0))(
  ( (MissingZero!2584 (index!12512 (_ BitVec 32))) (Found!2584 (index!12513 (_ BitVec 32))) (Intermediate!2584 (undefined!3396 Bool) (index!12514 (_ BitVec 32)) (x!30719 (_ BitVec 32))) (Undefined!2584) (MissingVacant!2584 (index!12515 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15703 (_ BitVec 32)) SeekEntryResult!2584)

(assert (=> b!308269 (= res!165042 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2584 i!1240)))))

(declare-fun b!308270 () Bool)

(declare-fun res!165036 () Bool)

(assert (=> b!308270 (=> (not res!165036) (not e!192778))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15703 (_ BitVec 32)) Bool)

(assert (=> b!308270 (= res!165036 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!308271 () Bool)

(declare-fun res!165045 () Bool)

(assert (=> b!308271 (=> (not res!165045) (not e!192777))))

(assert (=> b!308271 (= res!165045 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7433 a!3293) index!1781) k0!2441)) (not (= x!1427 resX!52))))))

(declare-fun b!308272 () Bool)

(assert (=> b!308272 (= e!192778 e!192777)))

(declare-fun res!165039 () Bool)

(assert (=> b!308272 (=> (not res!165039) (not e!192777))))

(declare-fun lt!151334 () SeekEntryResult!2584)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15703 (_ BitVec 32)) SeekEntryResult!2584)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!308272 (= res!165039 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!151334))))

(assert (=> b!308272 (= lt!151334 (Intermediate!2584 false resIndex!52 resX!52))))

(declare-fun b!308273 () Bool)

(declare-fun res!165040 () Bool)

(assert (=> b!308273 (=> (not res!165040) (not e!192778))))

(assert (=> b!308273 (= res!165040 (and (= (size!7785 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7785 a!3293))))))

(declare-fun b!308274 () Bool)

(declare-fun res!165037 () Bool)

(assert (=> b!308274 (=> (not res!165037) (not e!192777))))

(assert (=> b!308274 (= res!165037 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709) lt!151334))))

(assert (= (and start!30752 res!165044) b!308273))

(assert (= (and b!308273 res!165040) b!308265))

(assert (= (and b!308265 res!165038) b!308268))

(assert (= (and b!308268 res!165041) b!308269))

(assert (= (and b!308269 res!165042) b!308270))

(assert (= (and b!308270 res!165036) b!308272))

(assert (= (and b!308272 res!165039) b!308266))

(assert (= (and b!308266 res!165043) b!308274))

(assert (= (and b!308274 res!165037) b!308271))

(assert (= (and b!308271 res!165045) b!308267))

(declare-fun m!318355 () Bool)

(assert (=> b!308266 m!318355))

(declare-fun m!318357 () Bool)

(assert (=> b!308274 m!318357))

(declare-fun m!318359 () Bool)

(assert (=> b!308268 m!318359))

(declare-fun m!318361 () Bool)

(assert (=> b!308269 m!318361))

(declare-fun m!318363 () Bool)

(assert (=> start!30752 m!318363))

(declare-fun m!318365 () Bool)

(assert (=> start!30752 m!318365))

(declare-fun m!318367 () Bool)

(assert (=> b!308267 m!318367))

(declare-fun m!318369 () Bool)

(assert (=> b!308272 m!318369))

(assert (=> b!308272 m!318369))

(declare-fun m!318371 () Bool)

(assert (=> b!308272 m!318371))

(declare-fun m!318373 () Bool)

(assert (=> b!308271 m!318373))

(declare-fun m!318375 () Bool)

(assert (=> b!308265 m!318375))

(declare-fun m!318377 () Bool)

(assert (=> b!308270 m!318377))

(check-sat (not b!308274) (not b!308265) (not b!308272) (not b!308267) (not b!308268) (not b!308269) (not start!30752) (not b!308270))
(check-sat)
