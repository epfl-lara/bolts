; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!30296 () Bool)

(assert start!30296)

(declare-fun res!160675 () Bool)

(declare-fun e!190790 () Bool)

(assert (=> start!30296 (=> (not res!160675) (not e!190790))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30296 (= res!160675 (validMask!0 mask!3709))))

(assert (=> start!30296 e!190790))

(declare-datatypes ((array!15400 0))(
  ( (array!15401 (arr!7286 (Array (_ BitVec 32) (_ BitVec 64))) (size!7638 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15400)

(declare-fun array_inv!5240 (array!15400) Bool)

(assert (=> start!30296 (array_inv!5240 a!3293)))

(assert (=> start!30296 true))

(declare-fun b!303031 () Bool)

(declare-fun res!160677 () Bool)

(declare-fun e!190792 () Bool)

(assert (=> b!303031 (=> (not res!160677) (not e!190792))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!303031 (= res!160677 (and (= (select (arr!7286 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7638 a!3293))))))

(declare-fun b!303032 () Bool)

(declare-fun res!160680 () Bool)

(assert (=> b!303032 (=> (not res!160680) (not e!190790))))

(declare-fun k0!2441 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!2437 0))(
  ( (MissingZero!2437 (index!11924 (_ BitVec 32))) (Found!2437 (index!11925 (_ BitVec 32))) (Intermediate!2437 (undefined!3249 Bool) (index!11926 (_ BitVec 32)) (x!30153 (_ BitVec 32))) (Undefined!2437) (MissingVacant!2437 (index!11927 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15400 (_ BitVec 32)) SeekEntryResult!2437)

(assert (=> b!303032 (= res!160680 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2437 i!1240)))))

(declare-fun b!303033 () Bool)

(declare-fun res!160676 () Bool)

(assert (=> b!303033 (=> (not res!160676) (not e!190792))))

(declare-fun lt!150143 () SeekEntryResult!2437)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15400 (_ BitVec 32)) SeekEntryResult!2437)

(assert (=> b!303033 (= res!160676 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709) lt!150143))))

(declare-fun b!303034 () Bool)

(declare-fun res!160683 () Bool)

(assert (=> b!303034 (=> (not res!160683) (not e!190790))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15400 (_ BitVec 32)) Bool)

(assert (=> b!303034 (= res!160683 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!303035 () Bool)

(declare-fun res!160681 () Bool)

(assert (=> b!303035 (=> (not res!160681) (not e!190790))))

(declare-fun arrayContainsKey!0 (array!15400 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!303035 (= res!160681 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!303036 () Bool)

(declare-fun res!160682 () Bool)

(assert (=> b!303036 (=> (not res!160682) (not e!190790))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!303036 (= res!160682 (validKeyInArray!0 k0!2441))))

(declare-fun b!303037 () Bool)

(assert (=> b!303037 (= e!190790 e!190792)))

(declare-fun res!160679 () Bool)

(assert (=> b!303037 (=> (not res!160679) (not e!190792))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!303037 (= res!160679 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!150143))))

(assert (=> b!303037 (= lt!150143 (Intermediate!2437 false resIndex!52 resX!52))))

(declare-fun b!303038 () Bool)

(assert (=> b!303038 (= e!190792 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7286 a!3293) index!1781) k0!2441)) (= x!1427 resX!52) (not (= resIndex!52 index!1781)) (not (= (select (arr!7286 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!7286 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge mask!3709 #b00000000000000000000000000000000) (bvslt index!1781 (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsgt x!1427 #b01111111111111111111111111111110)))))

(declare-fun b!303039 () Bool)

(declare-fun res!160678 () Bool)

(assert (=> b!303039 (=> (not res!160678) (not e!190790))))

(assert (=> b!303039 (= res!160678 (and (= (size!7638 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7638 a!3293))))))

(assert (= (and start!30296 res!160675) b!303039))

(assert (= (and b!303039 res!160678) b!303036))

(assert (= (and b!303036 res!160682) b!303035))

(assert (= (and b!303035 res!160681) b!303032))

(assert (= (and b!303032 res!160680) b!303034))

(assert (= (and b!303034 res!160683) b!303037))

(assert (= (and b!303037 res!160679) b!303031))

(assert (= (and b!303031 res!160677) b!303033))

(assert (= (and b!303033 res!160676) b!303038))

(declare-fun m!314459 () Bool)

(assert (=> start!30296 m!314459))

(declare-fun m!314461 () Bool)

(assert (=> start!30296 m!314461))

(declare-fun m!314463 () Bool)

(assert (=> b!303037 m!314463))

(assert (=> b!303037 m!314463))

(declare-fun m!314465 () Bool)

(assert (=> b!303037 m!314465))

(declare-fun m!314467 () Bool)

(assert (=> b!303038 m!314467))

(declare-fun m!314469 () Bool)

(assert (=> b!303035 m!314469))

(declare-fun m!314471 () Bool)

(assert (=> b!303031 m!314471))

(declare-fun m!314473 () Bool)

(assert (=> b!303032 m!314473))

(declare-fun m!314475 () Bool)

(assert (=> b!303033 m!314475))

(declare-fun m!314477 () Bool)

(assert (=> b!303036 m!314477))

(declare-fun m!314479 () Bool)

(assert (=> b!303034 m!314479))

(check-sat (not b!303033) (not b!303032) (not start!30296) (not b!303036) (not b!303037) (not b!303035) (not b!303034))
(check-sat)
