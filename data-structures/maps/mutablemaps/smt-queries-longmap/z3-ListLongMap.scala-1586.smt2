; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!30146 () Bool)

(assert start!30146)

(declare-fun b!301657 () Bool)

(declare-fun res!159425 () Bool)

(declare-fun e!190318 () Bool)

(assert (=> b!301657 (=> (not res!159425) (not e!190318))))

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!301657 (= res!159425 (validKeyInArray!0 k0!2441))))

(declare-fun b!301658 () Bool)

(assert (=> b!301658 (= e!190318 false)))

(declare-fun lt!149927 () (_ BitVec 32))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!301658 (= lt!149927 (toIndex!0 k0!2441 mask!3709))))

(declare-fun b!301659 () Bool)

(declare-fun res!159424 () Bool)

(assert (=> b!301659 (=> (not res!159424) (not e!190318))))

(declare-datatypes ((array!15295 0))(
  ( (array!15296 (arr!7235 (Array (_ BitVec 32) (_ BitVec 64))) (size!7587 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15295)

(declare-fun i!1240 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2386 0))(
  ( (MissingZero!2386 (index!11720 (_ BitVec 32))) (Found!2386 (index!11721 (_ BitVec 32))) (Intermediate!2386 (undefined!3198 Bool) (index!11722 (_ BitVec 32)) (x!29960 (_ BitVec 32))) (Undefined!2386) (MissingVacant!2386 (index!11723 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15295 (_ BitVec 32)) SeekEntryResult!2386)

(assert (=> b!301659 (= res!159424 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2386 i!1240)))))

(declare-fun b!301660 () Bool)

(declare-fun res!159429 () Bool)

(assert (=> b!301660 (=> (not res!159429) (not e!190318))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15295 (_ BitVec 32)) Bool)

(assert (=> b!301660 (= res!159429 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!301661 () Bool)

(declare-fun res!159428 () Bool)

(assert (=> b!301661 (=> (not res!159428) (not e!190318))))

(assert (=> b!301661 (= res!159428 (and (= (size!7587 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7587 a!3293))))))

(declare-fun b!301662 () Bool)

(declare-fun res!159427 () Bool)

(assert (=> b!301662 (=> (not res!159427) (not e!190318))))

(declare-fun arrayContainsKey!0 (array!15295 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!301662 (= res!159427 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun res!159426 () Bool)

(assert (=> start!30146 (=> (not res!159426) (not e!190318))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30146 (= res!159426 (validMask!0 mask!3709))))

(assert (=> start!30146 e!190318))

(assert (=> start!30146 true))

(declare-fun array_inv!5189 (array!15295) Bool)

(assert (=> start!30146 (array_inv!5189 a!3293)))

(assert (= (and start!30146 res!159426) b!301661))

(assert (= (and b!301661 res!159428) b!301657))

(assert (= (and b!301657 res!159425) b!301662))

(assert (= (and b!301662 res!159427) b!301659))

(assert (= (and b!301659 res!159424) b!301660))

(assert (= (and b!301660 res!159429) b!301658))

(declare-fun m!313377 () Bool)

(assert (=> b!301659 m!313377))

(declare-fun m!313379 () Bool)

(assert (=> b!301658 m!313379))

(declare-fun m!313381 () Bool)

(assert (=> b!301660 m!313381))

(declare-fun m!313383 () Bool)

(assert (=> b!301657 m!313383))

(declare-fun m!313385 () Bool)

(assert (=> start!30146 m!313385))

(declare-fun m!313387 () Bool)

(assert (=> start!30146 m!313387))

(declare-fun m!313389 () Bool)

(assert (=> b!301662 m!313389))

(check-sat (not b!301662) (not b!301660) (not b!301657) (not b!301658) (not b!301659) (not start!30146))
(check-sat)
