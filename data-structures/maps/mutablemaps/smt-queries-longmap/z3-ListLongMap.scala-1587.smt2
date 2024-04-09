; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!30152 () Bool)

(assert start!30152)

(declare-fun res!159479 () Bool)

(declare-fun e!190335 () Bool)

(assert (=> start!30152 (=> (not res!159479) (not e!190335))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30152 (= res!159479 (validMask!0 mask!3709))))

(assert (=> start!30152 e!190335))

(assert (=> start!30152 true))

(declare-datatypes ((array!15301 0))(
  ( (array!15302 (arr!7238 (Array (_ BitVec 32) (_ BitVec 64))) (size!7590 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15301)

(declare-fun array_inv!5192 (array!15301) Bool)

(assert (=> start!30152 (array_inv!5192 a!3293)))

(declare-fun b!301711 () Bool)

(declare-fun res!159482 () Bool)

(assert (=> b!301711 (=> (not res!159482) (not e!190335))))

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun i!1240 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2389 0))(
  ( (MissingZero!2389 (index!11732 (_ BitVec 32))) (Found!2389 (index!11733 (_ BitVec 32))) (Intermediate!2389 (undefined!3201 Bool) (index!11734 (_ BitVec 32)) (x!29971 (_ BitVec 32))) (Undefined!2389) (MissingVacant!2389 (index!11735 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15301 (_ BitVec 32)) SeekEntryResult!2389)

(assert (=> b!301711 (= res!159482 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2389 i!1240)))))

(declare-fun b!301712 () Bool)

(declare-fun res!159481 () Bool)

(assert (=> b!301712 (=> (not res!159481) (not e!190335))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!301712 (= res!159481 (validKeyInArray!0 k0!2441))))

(declare-fun b!301713 () Bool)

(declare-fun res!159483 () Bool)

(assert (=> b!301713 (=> (not res!159483) (not e!190335))))

(assert (=> b!301713 (= res!159483 (and (= (size!7590 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7590 a!3293))))))

(declare-fun b!301714 () Bool)

(declare-fun res!159480 () Bool)

(assert (=> b!301714 (=> (not res!159480) (not e!190335))))

(declare-fun arrayContainsKey!0 (array!15301 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!301714 (= res!159480 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!301715 () Bool)

(declare-fun res!159478 () Bool)

(assert (=> b!301715 (=> (not res!159478) (not e!190335))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15301 (_ BitVec 32)) Bool)

(assert (=> b!301715 (= res!159478 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!301716 () Bool)

(assert (=> b!301716 (= e!190335 false)))

(declare-fun lt!149936 () SeekEntryResult!2389)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15301 (_ BitVec 32)) SeekEntryResult!2389)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!301716 (= lt!149936 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709))))

(assert (= (and start!30152 res!159479) b!301713))

(assert (= (and b!301713 res!159483) b!301712))

(assert (= (and b!301712 res!159481) b!301714))

(assert (= (and b!301714 res!159480) b!301711))

(assert (= (and b!301711 res!159482) b!301715))

(assert (= (and b!301715 res!159478) b!301716))

(declare-fun m!313421 () Bool)

(assert (=> b!301715 m!313421))

(declare-fun m!313423 () Bool)

(assert (=> b!301711 m!313423))

(declare-fun m!313425 () Bool)

(assert (=> b!301712 m!313425))

(declare-fun m!313427 () Bool)

(assert (=> b!301716 m!313427))

(assert (=> b!301716 m!313427))

(declare-fun m!313429 () Bool)

(assert (=> b!301716 m!313429))

(declare-fun m!313431 () Bool)

(assert (=> b!301714 m!313431))

(declare-fun m!313433 () Bool)

(assert (=> start!30152 m!313433))

(declare-fun m!313435 () Bool)

(assert (=> start!30152 m!313435))

(check-sat (not start!30152) (not b!301714) (not b!301711) (not b!301716) (not b!301715) (not b!301712))
