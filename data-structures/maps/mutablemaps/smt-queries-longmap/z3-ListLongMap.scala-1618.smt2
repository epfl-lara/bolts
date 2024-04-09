; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!30440 () Bool)

(assert start!30440)

(declare-fun b!304498 () Bool)

(declare-fun res!162006 () Bool)

(declare-fun e!191344 () Bool)

(assert (=> b!304498 (=> (not res!162006) (not e!191344))))

(declare-datatypes ((array!15493 0))(
  ( (array!15494 (arr!7331 (Array (_ BitVec 32) (_ BitVec 64))) (size!7683 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15493)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun i!1240 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2482 0))(
  ( (MissingZero!2482 (index!12104 (_ BitVec 32))) (Found!2482 (index!12105 (_ BitVec 32))) (Intermediate!2482 (undefined!3294 Bool) (index!12106 (_ BitVec 32)) (x!30327 (_ BitVec 32))) (Undefined!2482) (MissingVacant!2482 (index!12107 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15493 (_ BitVec 32)) SeekEntryResult!2482)

(assert (=> b!304498 (= res!162006 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2482 i!1240)))))

(declare-fun b!304499 () Bool)

(declare-fun res!162003 () Bool)

(assert (=> b!304499 (=> (not res!162003) (not e!191344))))

(assert (=> b!304499 (= res!162003 (and (= (size!7683 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7683 a!3293))))))

(declare-fun b!304500 () Bool)

(declare-fun res!162001 () Bool)

(assert (=> b!304500 (=> (not res!162001) (not e!191344))))

(declare-fun arrayContainsKey!0 (array!15493 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!304500 (= res!162001 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!304501 () Bool)

(declare-fun res!162005 () Bool)

(declare-fun e!191341 () Bool)

(assert (=> b!304501 (=> (not res!162005) (not e!191341))))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun resIndex!52 () (_ BitVec 32))

(assert (=> b!304501 (= res!162005 (and (= (select (arr!7331 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7683 a!3293))))))

(declare-fun b!304502 () Bool)

(declare-fun e!191342 () Bool)

(assert (=> b!304502 (= e!191341 e!191342)))

(declare-fun res!162004 () Bool)

(assert (=> b!304502 (=> (not res!162004) (not e!191342))))

(declare-fun lt!150469 () SeekEntryResult!2482)

(declare-fun lt!150470 () SeekEntryResult!2482)

(assert (=> b!304502 (= res!162004 (and (= lt!150469 lt!150470) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7331 a!3293) index!1781) k0!2441)) (= x!1427 resX!52) (not (= resIndex!52 index!1781)) (not (= (select (arr!7331 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!7331 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15493 (_ BitVec 32)) SeekEntryResult!2482)

(assert (=> b!304502 (= lt!150469 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709))))

(declare-fun res!162009 () Bool)

(assert (=> start!30440 (=> (not res!162009) (not e!191344))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30440 (= res!162009 (validMask!0 mask!3709))))

(assert (=> start!30440 e!191344))

(declare-fun array_inv!5285 (array!15493) Bool)

(assert (=> start!30440 (array_inv!5285 a!3293)))

(assert (=> start!30440 true))

(declare-fun b!304503 () Bool)

(declare-fun res!162007 () Bool)

(assert (=> b!304503 (=> (not res!162007) (not e!191344))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15493 (_ BitVec 32)) Bool)

(assert (=> b!304503 (= res!162007 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!304504 () Bool)

(declare-fun res!162008 () Bool)

(assert (=> b!304504 (=> (not res!162008) (not e!191344))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!304504 (= res!162008 (validKeyInArray!0 k0!2441))))

(declare-fun b!304505 () Bool)

(assert (=> b!304505 (= e!191344 e!191341)))

(declare-fun res!162002 () Bool)

(assert (=> b!304505 (=> (not res!162002) (not e!191341))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!304505 (= res!162002 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!150470))))

(assert (=> b!304505 (= lt!150470 (Intermediate!2482 false resIndex!52 resX!52))))

(declare-fun b!304506 () Bool)

(assert (=> b!304506 (= e!191342 (not (or (bvslt mask!3709 #b00000000000000000000000000000000) (bvsge index!1781 (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsle x!1427 #b01111111111111111111111111111110))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!304506 (= lt!150469 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k0!2441 a!3293 mask!3709))))

(assert (= (and start!30440 res!162009) b!304499))

(assert (= (and b!304499 res!162003) b!304504))

(assert (= (and b!304504 res!162008) b!304500))

(assert (= (and b!304500 res!162001) b!304498))

(assert (= (and b!304498 res!162006) b!304503))

(assert (= (and b!304503 res!162007) b!304505))

(assert (= (and b!304505 res!162002) b!304501))

(assert (= (and b!304501 res!162005) b!304502))

(assert (= (and b!304502 res!162004) b!304506))

(declare-fun m!315627 () Bool)

(assert (=> start!30440 m!315627))

(declare-fun m!315629 () Bool)

(assert (=> start!30440 m!315629))

(declare-fun m!315631 () Bool)

(assert (=> b!304502 m!315631))

(declare-fun m!315633 () Bool)

(assert (=> b!304502 m!315633))

(declare-fun m!315635 () Bool)

(assert (=> b!304505 m!315635))

(assert (=> b!304505 m!315635))

(declare-fun m!315637 () Bool)

(assert (=> b!304505 m!315637))

(declare-fun m!315639 () Bool)

(assert (=> b!304500 m!315639))

(declare-fun m!315641 () Bool)

(assert (=> b!304506 m!315641))

(assert (=> b!304506 m!315641))

(declare-fun m!315643 () Bool)

(assert (=> b!304506 m!315643))

(declare-fun m!315645 () Bool)

(assert (=> b!304503 m!315645))

(declare-fun m!315647 () Bool)

(assert (=> b!304498 m!315647))

(declare-fun m!315649 () Bool)

(assert (=> b!304501 m!315649))

(declare-fun m!315651 () Bool)

(assert (=> b!304504 m!315651))

(check-sat (not b!304503) (not b!304498) (not b!304502) (not b!304504) (not b!304500) (not start!30440) (not b!304506) (not b!304505))
(check-sat)
