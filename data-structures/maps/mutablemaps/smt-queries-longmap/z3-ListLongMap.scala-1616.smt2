; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!30428 () Bool)

(assert start!30428)

(declare-fun b!304336 () Bool)

(declare-fun e!191269 () Bool)

(declare-fun mask!3709 () (_ BitVec 32))

(assert (=> b!304336 (= e!191269 (not (bvsge mask!3709 #b00000000000000000000000000000000)))))

(declare-datatypes ((array!15481 0))(
  ( (array!15482 (arr!7325 (Array (_ BitVec 32) (_ BitVec 64))) (size!7677 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15481)

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun x!1427 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2476 0))(
  ( (MissingZero!2476 (index!12080 (_ BitVec 32))) (Found!2476 (index!12081 (_ BitVec 32))) (Intermediate!2476 (undefined!3288 Bool) (index!12082 (_ BitVec 32)) (x!30305 (_ BitVec 32))) (Undefined!2476) (MissingVacant!2476 (index!12083 (_ BitVec 32))) )
))
(declare-fun lt!150434 () SeekEntryResult!2476)

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15481 (_ BitVec 32)) SeekEntryResult!2476)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!304336 (= lt!150434 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k0!2441 a!3293 mask!3709))))

(declare-fun b!304337 () Bool)

(declare-fun res!161842 () Bool)

(declare-fun e!191270 () Bool)

(assert (=> b!304337 (=> (not res!161842) (not e!191270))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15481 (_ BitVec 32)) Bool)

(assert (=> b!304337 (= res!161842 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!304338 () Bool)

(declare-fun res!161840 () Bool)

(assert (=> b!304338 (=> (not res!161840) (not e!191270))))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15481 (_ BitVec 32)) SeekEntryResult!2476)

(assert (=> b!304338 (= res!161840 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2476 i!1240)))))

(declare-fun res!161843 () Bool)

(assert (=> start!30428 (=> (not res!161843) (not e!191270))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30428 (= res!161843 (validMask!0 mask!3709))))

(assert (=> start!30428 e!191270))

(declare-fun array_inv!5279 (array!15481) Bool)

(assert (=> start!30428 (array_inv!5279 a!3293)))

(assert (=> start!30428 true))

(declare-fun b!304339 () Bool)

(declare-fun res!161845 () Bool)

(assert (=> b!304339 (=> (not res!161845) (not e!191270))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!304339 (= res!161845 (validKeyInArray!0 k0!2441))))

(declare-fun b!304340 () Bool)

(declare-fun res!161847 () Bool)

(declare-fun e!191272 () Bool)

(assert (=> b!304340 (=> (not res!161847) (not e!191272))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!304340 (= res!161847 (and (= (select (arr!7325 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7677 a!3293))))))

(declare-fun b!304341 () Bool)

(declare-fun res!161846 () Bool)

(assert (=> b!304341 (=> (not res!161846) (not e!191270))))

(assert (=> b!304341 (= res!161846 (and (= (size!7677 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7677 a!3293))))))

(declare-fun b!304342 () Bool)

(assert (=> b!304342 (= e!191272 e!191269)))

(declare-fun res!161844 () Bool)

(assert (=> b!304342 (=> (not res!161844) (not e!191269))))

(declare-fun lt!150433 () SeekEntryResult!2476)

(assert (=> b!304342 (= res!161844 (and (= lt!150434 lt!150433) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7325 a!3293) index!1781) k0!2441)) (= x!1427 resX!52) (not (= resIndex!52 index!1781)) (not (= (select (arr!7325 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!7325 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!304342 (= lt!150434 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709))))

(declare-fun b!304343 () Bool)

(declare-fun res!161839 () Bool)

(assert (=> b!304343 (=> (not res!161839) (not e!191270))))

(declare-fun arrayContainsKey!0 (array!15481 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!304343 (= res!161839 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!304344 () Bool)

(assert (=> b!304344 (= e!191270 e!191272)))

(declare-fun res!161841 () Bool)

(assert (=> b!304344 (=> (not res!161841) (not e!191272))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!304344 (= res!161841 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!150433))))

(assert (=> b!304344 (= lt!150433 (Intermediate!2476 false resIndex!52 resX!52))))

(assert (= (and start!30428 res!161843) b!304341))

(assert (= (and b!304341 res!161846) b!304339))

(assert (= (and b!304339 res!161845) b!304343))

(assert (= (and b!304343 res!161839) b!304338))

(assert (= (and b!304338 res!161840) b!304337))

(assert (= (and b!304337 res!161842) b!304344))

(assert (= (and b!304344 res!161841) b!304340))

(assert (= (and b!304340 res!161847) b!304342))

(assert (= (and b!304342 res!161844) b!304336))

(declare-fun m!315471 () Bool)

(assert (=> b!304340 m!315471))

(declare-fun m!315473 () Bool)

(assert (=> b!304338 m!315473))

(declare-fun m!315475 () Bool)

(assert (=> start!30428 m!315475))

(declare-fun m!315477 () Bool)

(assert (=> start!30428 m!315477))

(declare-fun m!315479 () Bool)

(assert (=> b!304343 m!315479))

(declare-fun m!315481 () Bool)

(assert (=> b!304344 m!315481))

(assert (=> b!304344 m!315481))

(declare-fun m!315483 () Bool)

(assert (=> b!304344 m!315483))

(declare-fun m!315485 () Bool)

(assert (=> b!304336 m!315485))

(assert (=> b!304336 m!315485))

(declare-fun m!315487 () Bool)

(assert (=> b!304336 m!315487))

(declare-fun m!315489 () Bool)

(assert (=> b!304342 m!315489))

(declare-fun m!315491 () Bool)

(assert (=> b!304342 m!315491))

(declare-fun m!315493 () Bool)

(assert (=> b!304339 m!315493))

(declare-fun m!315495 () Bool)

(assert (=> b!304337 m!315495))

(check-sat (not b!304336) (not b!304337) (not b!304339) (not b!304342) (not start!30428) (not b!304343) (not b!304344) (not b!304338))
(check-sat)
