; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30532 () Bool)

(assert start!30532)

(declare-fun b!305254 () Bool)

(declare-fun res!162598 () Bool)

(declare-fun e!191718 () Bool)

(assert (=> b!305254 (=> (not res!162598) (not e!191718))))

(declare-datatypes ((array!15534 0))(
  ( (array!15535 (arr!7350 (Array (_ BitVec 32) (_ BitVec 64))) (size!7702 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15534)

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!305254 (= res!162598 (and (= (select (arr!7350 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7702 a!3293))))))

(declare-fun b!305255 () Bool)

(declare-fun res!162600 () Bool)

(declare-fun e!191719 () Bool)

(assert (=> b!305255 (=> (not res!162600) (not e!191719))))

(declare-fun mask!3709 () (_ BitVec 32))

(assert (=> b!305255 (= res!162600 (and (= (size!7702 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7702 a!3293))))))

(declare-fun b!305256 () Bool)

(declare-fun res!162604 () Bool)

(assert (=> b!305256 (=> (not res!162604) (not e!191719))))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!15534 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!305256 (= res!162604 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!305257 () Bool)

(assert (=> b!305257 (= e!191719 e!191718)))

(declare-fun res!162605 () Bool)

(assert (=> b!305257 (=> (not res!162605) (not e!191718))))

(declare-datatypes ((SeekEntryResult!2501 0))(
  ( (MissingZero!2501 (index!12180 (_ BitVec 32))) (Found!2501 (index!12181 (_ BitVec 32))) (Intermediate!2501 (undefined!3313 Bool) (index!12182 (_ BitVec 32)) (x!30403 (_ BitVec 32))) (Undefined!2501) (MissingVacant!2501 (index!12183 (_ BitVec 32))) )
))
(declare-fun lt!150713 () SeekEntryResult!2501)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15534 (_ BitVec 32)) SeekEntryResult!2501)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!305257 (= res!162605 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!150713))))

(assert (=> b!305257 (= lt!150713 (Intermediate!2501 false resIndex!52 resX!52))))

(declare-fun b!305258 () Bool)

(declare-fun res!162606 () Bool)

(assert (=> b!305258 (=> (not res!162606) (not e!191719))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15534 (_ BitVec 32)) SeekEntryResult!2501)

(assert (=> b!305258 (= res!162606 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2501 i!1240)))))

(declare-fun res!162602 () Bool)

(assert (=> start!30532 (=> (not res!162602) (not e!191719))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30532 (= res!162602 (validMask!0 mask!3709))))

(assert (=> start!30532 e!191719))

(declare-fun array_inv!5304 (array!15534) Bool)

(assert (=> start!30532 (array_inv!5304 a!3293)))

(assert (=> start!30532 true))

(declare-fun b!305259 () Bool)

(declare-fun res!162603 () Bool)

(assert (=> b!305259 (=> (not res!162603) (not e!191719))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15534 (_ BitVec 32)) Bool)

(assert (=> b!305259 (= res!162603 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!305260 () Bool)

(declare-fun res!162601 () Bool)

(assert (=> b!305260 (=> (not res!162601) (not e!191719))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!305260 (= res!162601 (validKeyInArray!0 k!2441))))

(declare-fun b!305261 () Bool)

(declare-fun e!191717 () Bool)

(assert (=> b!305261 (= e!191718 e!191717)))

(declare-fun res!162599 () Bool)

(assert (=> b!305261 (=> (not res!162599) (not e!191717))))

(declare-fun lt!150712 () SeekEntryResult!2501)

(assert (=> b!305261 (= res!162599 (and (= lt!150712 lt!150713) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7350 a!3293) index!1781) k!2441)) (= x!1427 resX!52) (not (= resIndex!52 index!1781)) (not (= (select (arr!7350 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!7350 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!305261 (= lt!150712 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!305262 () Bool)

(assert (=> b!305262 (= e!191717 (not true))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!305262 (= lt!150712 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709))))

(assert (= (and start!30532 res!162602) b!305255))

(assert (= (and b!305255 res!162600) b!305260))

(assert (= (and b!305260 res!162601) b!305256))

(assert (= (and b!305256 res!162604) b!305258))

(assert (= (and b!305258 res!162606) b!305259))

(assert (= (and b!305259 res!162603) b!305257))

(assert (= (and b!305257 res!162605) b!305254))

(assert (= (and b!305254 res!162598) b!305261))

(assert (= (and b!305261 res!162599) b!305262))

(declare-fun m!316259 () Bool)

(assert (=> b!305260 m!316259))

(declare-fun m!316261 () Bool)

(assert (=> b!305261 m!316261))

(declare-fun m!316263 () Bool)

(assert (=> b!305261 m!316263))

(declare-fun m!316265 () Bool)

(assert (=> b!305254 m!316265))

(declare-fun m!316267 () Bool)

(assert (=> b!305259 m!316267))

(declare-fun m!316269 () Bool)

(assert (=> start!30532 m!316269))

(declare-fun m!316271 () Bool)

(assert (=> start!30532 m!316271))

(declare-fun m!316273 () Bool)

(assert (=> b!305262 m!316273))

(assert (=> b!305262 m!316273))

(declare-fun m!316275 () Bool)

(assert (=> b!305262 m!316275))

(declare-fun m!316277 () Bool)

(assert (=> b!305257 m!316277))

(assert (=> b!305257 m!316277))

(declare-fun m!316279 () Bool)

(assert (=> b!305257 m!316279))

(declare-fun m!316281 () Bool)

(assert (=> b!305258 m!316281))

(declare-fun m!316283 () Bool)

(assert (=> b!305256 m!316283))

(push 1)

(assert (not b!305258))

(assert (not b!305261))

(assert (not b!305259))

(assert (not b!305256))

(assert (not b!305262))

(assert (not b!305257))

