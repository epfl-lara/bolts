; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!30770 () Bool)

(assert start!30770)

(declare-fun b!308512 () Bool)

(declare-fun e!192881 () Bool)

(assert (=> b!308512 (= e!192881 (not true))))

(declare-datatypes ((array!15721 0))(
  ( (array!15722 (arr!7442 (Array (_ BitVec 32) (_ BitVec 64))) (size!7794 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15721)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2593 0))(
  ( (MissingZero!2593 (index!12548 (_ BitVec 32))) (Found!2593 (index!12549 (_ BitVec 32))) (Intermediate!2593 (undefined!3405 Bool) (index!12550 (_ BitVec 32)) (x!30752 (_ BitVec 32))) (Undefined!2593) (MissingVacant!2593 (index!12551 (_ BitVec 32))) )
))
(declare-fun lt!151388 () SeekEntryResult!2593)

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15721 (_ BitVec 32)) SeekEntryResult!2593)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!308512 (= lt!151388 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k0!2441 a!3293 mask!3709))))

(declare-fun b!308513 () Bool)

(declare-fun e!192880 () Bool)

(assert (=> b!308513 (= e!192880 e!192881)))

(declare-fun res!165285 () Bool)

(assert (=> b!308513 (=> (not res!165285) (not e!192881))))

(declare-fun lt!151387 () SeekEntryResult!2593)

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!308513 (= res!165285 (and (= lt!151388 lt!151387) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7442 a!3293) index!1781) k0!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!308513 (= lt!151388 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709))))

(declare-fun b!308514 () Bool)

(declare-fun e!192883 () Bool)

(assert (=> b!308514 (= e!192883 e!192880)))

(declare-fun res!165284 () Bool)

(assert (=> b!308514 (=> (not res!165284) (not e!192880))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!308514 (= res!165284 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!151387))))

(declare-fun resIndex!52 () (_ BitVec 32))

(assert (=> b!308514 (= lt!151387 (Intermediate!2593 false resIndex!52 resX!52))))

(declare-fun b!308515 () Bool)

(declare-fun res!165283 () Bool)

(assert (=> b!308515 (=> (not res!165283) (not e!192883))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15721 (_ BitVec 32)) Bool)

(assert (=> b!308515 (= res!165283 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!308516 () Bool)

(declare-fun res!165286 () Bool)

(assert (=> b!308516 (=> (not res!165286) (not e!192883))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!308516 (= res!165286 (validKeyInArray!0 k0!2441))))

(declare-fun b!308517 () Bool)

(declare-fun res!165290 () Bool)

(assert (=> b!308517 (=> (not res!165290) (not e!192883))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!308517 (= res!165290 (and (= (size!7794 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7794 a!3293))))))

(declare-fun res!165291 () Bool)

(assert (=> start!30770 (=> (not res!165291) (not e!192883))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30770 (= res!165291 (validMask!0 mask!3709))))

(assert (=> start!30770 e!192883))

(declare-fun array_inv!5396 (array!15721) Bool)

(assert (=> start!30770 (array_inv!5396 a!3293)))

(assert (=> start!30770 true))

(declare-fun b!308518 () Bool)

(declare-fun res!165287 () Bool)

(assert (=> b!308518 (=> (not res!165287) (not e!192883))))

(declare-fun arrayContainsKey!0 (array!15721 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!308518 (= res!165287 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!308519 () Bool)

(declare-fun res!165289 () Bool)

(assert (=> b!308519 (=> (not res!165289) (not e!192883))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15721 (_ BitVec 32)) SeekEntryResult!2593)

(assert (=> b!308519 (= res!165289 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2593 i!1240)))))

(declare-fun b!308520 () Bool)

(declare-fun res!165288 () Bool)

(assert (=> b!308520 (=> (not res!165288) (not e!192880))))

(assert (=> b!308520 (= res!165288 (and (= (select (arr!7442 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7794 a!3293))))))

(assert (= (and start!30770 res!165291) b!308517))

(assert (= (and b!308517 res!165290) b!308516))

(assert (= (and b!308516 res!165286) b!308518))

(assert (= (and b!308518 res!165287) b!308519))

(assert (= (and b!308519 res!165289) b!308515))

(assert (= (and b!308515 res!165283) b!308514))

(assert (= (and b!308514 res!165284) b!308520))

(assert (= (and b!308520 res!165288) b!308513))

(assert (= (and b!308513 res!165285) b!308512))

(declare-fun m!318585 () Bool)

(assert (=> b!308514 m!318585))

(assert (=> b!308514 m!318585))

(declare-fun m!318587 () Bool)

(assert (=> b!308514 m!318587))

(declare-fun m!318589 () Bool)

(assert (=> b!308519 m!318589))

(declare-fun m!318591 () Bool)

(assert (=> start!30770 m!318591))

(declare-fun m!318593 () Bool)

(assert (=> start!30770 m!318593))

(declare-fun m!318595 () Bool)

(assert (=> b!308516 m!318595))

(declare-fun m!318597 () Bool)

(assert (=> b!308518 m!318597))

(declare-fun m!318599 () Bool)

(assert (=> b!308520 m!318599))

(declare-fun m!318601 () Bool)

(assert (=> b!308512 m!318601))

(assert (=> b!308512 m!318601))

(declare-fun m!318603 () Bool)

(assert (=> b!308512 m!318603))

(declare-fun m!318605 () Bool)

(assert (=> b!308515 m!318605))

(declare-fun m!318607 () Bool)

(assert (=> b!308513 m!318607))

(declare-fun m!318609 () Bool)

(assert (=> b!308513 m!318609))

(check-sat (not b!308519) (not b!308516) (not b!308518) (not b!308515) (not b!308513) (not start!30770) (not b!308512) (not b!308514))
(check-sat)
