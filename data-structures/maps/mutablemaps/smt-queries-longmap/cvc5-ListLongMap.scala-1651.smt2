; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30744 () Bool)

(assert start!30744)

(declare-fun b!308145 () Bool)

(declare-fun res!164920 () Bool)

(declare-fun e!192742 () Bool)

(assert (=> b!308145 (=> (not res!164920) (not e!192742))))

(declare-datatypes ((array!15695 0))(
  ( (array!15696 (arr!7429 (Array (_ BitVec 32) (_ BitVec 64))) (size!7781 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15695)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2580 0))(
  ( (MissingZero!2580 (index!12496 (_ BitVec 32))) (Found!2580 (index!12497 (_ BitVec 32))) (Intermediate!2580 (undefined!3392 Bool) (index!12498 (_ BitVec 32)) (x!30707 (_ BitVec 32))) (Undefined!2580) (MissingVacant!2580 (index!12499 (_ BitVec 32))) )
))
(declare-fun lt!151310 () SeekEntryResult!2580)

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15695 (_ BitVec 32)) SeekEntryResult!2580)

(assert (=> b!308145 (= res!164920 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709) lt!151310))))

(declare-fun res!164916 () Bool)

(declare-fun e!192741 () Bool)

(assert (=> start!30744 (=> (not res!164916) (not e!192741))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30744 (= res!164916 (validMask!0 mask!3709))))

(assert (=> start!30744 e!192741))

(declare-fun array_inv!5383 (array!15695) Bool)

(assert (=> start!30744 (array_inv!5383 a!3293)))

(assert (=> start!30744 true))

(declare-fun b!308146 () Bool)

(declare-fun res!164921 () Bool)

(assert (=> b!308146 (=> (not res!164921) (not e!192741))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!308146 (= res!164921 (validKeyInArray!0 k!2441))))

(declare-fun b!308147 () Bool)

(declare-fun res!164919 () Bool)

(assert (=> b!308147 (=> (not res!164919) (not e!192741))))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15695 (_ BitVec 32)) SeekEntryResult!2580)

(assert (=> b!308147 (= res!164919 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2580 i!1240)))))

(declare-fun b!308148 () Bool)

(declare-fun res!164918 () Bool)

(assert (=> b!308148 (=> (not res!164918) (not e!192741))))

(declare-fun arrayContainsKey!0 (array!15695 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!308148 (= res!164918 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!308149 () Bool)

(assert (=> b!308149 (= e!192741 e!192742)))

(declare-fun res!164923 () Bool)

(assert (=> b!308149 (=> (not res!164923) (not e!192742))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!308149 (= res!164923 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!151310))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!308149 (= lt!151310 (Intermediate!2580 false resIndex!52 resX!52))))

(declare-fun b!308150 () Bool)

(declare-fun res!164922 () Bool)

(assert (=> b!308150 (=> (not res!164922) (not e!192742))))

(assert (=> b!308150 (= res!164922 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7429 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(declare-fun b!308151 () Bool)

(declare-fun lt!151309 () (_ BitVec 32))

(assert (=> b!308151 (= e!192742 (and (bvsge mask!3709 #b00000000000000000000000000000000) (bvsge lt!151309 #b00000000000000000000000000000000) (bvslt lt!151309 (bvadd #b00000000000000000000000000000001 mask!3709)) (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1427) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1427) #b00000000000000000000000000000000))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!308151 (= lt!151309 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!308152 () Bool)

(declare-fun res!164925 () Bool)

(assert (=> b!308152 (=> (not res!164925) (not e!192741))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15695 (_ BitVec 32)) Bool)

(assert (=> b!308152 (= res!164925 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!308153 () Bool)

(declare-fun res!164924 () Bool)

(assert (=> b!308153 (=> (not res!164924) (not e!192742))))

(assert (=> b!308153 (= res!164924 (and (= (select (arr!7429 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7781 a!3293))))))

(declare-fun b!308154 () Bool)

(declare-fun res!164917 () Bool)

(assert (=> b!308154 (=> (not res!164917) (not e!192741))))

(assert (=> b!308154 (= res!164917 (and (= (size!7781 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7781 a!3293))))))

(assert (= (and start!30744 res!164916) b!308154))

(assert (= (and b!308154 res!164917) b!308146))

(assert (= (and b!308146 res!164921) b!308148))

(assert (= (and b!308148 res!164918) b!308147))

(assert (= (and b!308147 res!164919) b!308152))

(assert (= (and b!308152 res!164925) b!308149))

(assert (= (and b!308149 res!164923) b!308153))

(assert (= (and b!308153 res!164924) b!308145))

(assert (= (and b!308145 res!164920) b!308150))

(assert (= (and b!308150 res!164922) b!308151))

(declare-fun m!318259 () Bool)

(assert (=> b!308147 m!318259))

(declare-fun m!318261 () Bool)

(assert (=> b!308152 m!318261))

(declare-fun m!318263 () Bool)

(assert (=> b!308149 m!318263))

(assert (=> b!308149 m!318263))

(declare-fun m!318265 () Bool)

(assert (=> b!308149 m!318265))

(declare-fun m!318267 () Bool)

(assert (=> start!30744 m!318267))

(declare-fun m!318269 () Bool)

(assert (=> start!30744 m!318269))

(declare-fun m!318271 () Bool)

(assert (=> b!308150 m!318271))

(declare-fun m!318273 () Bool)

(assert (=> b!308146 m!318273))

(declare-fun m!318275 () Bool)

(assert (=> b!308148 m!318275))

(declare-fun m!318277 () Bool)

(assert (=> b!308145 m!318277))

(declare-fun m!318279 () Bool)

(assert (=> b!308151 m!318279))

(declare-fun m!318281 () Bool)

(assert (=> b!308153 m!318281))

(push 1)

(assert (not start!30744))

(assert (not b!308145))

(assert (not b!308146))

(assert (not b!308147))

(assert (not b!308149))

(assert (not b!308151))

(assert (not b!308152))

(assert (not b!308148))

(check-sat)

