; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!31070 () Bool)

(assert start!31070)

(declare-fun b!312324 () Bool)

(declare-fun res!168941 () Bool)

(declare-fun e!194754 () Bool)

(assert (=> b!312324 (=> (not res!168941) (not e!194754))))

(declare-datatypes ((array!15970 0))(
  ( (array!15971 (arr!7565 (Array (_ BitVec 32) (_ BitVec 64))) (size!7917 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15970)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15970 (_ BitVec 32)) Bool)

(assert (=> b!312324 (= res!168941 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!312325 () Bool)

(declare-fun e!194751 () Bool)

(assert (=> b!312325 (= e!194754 e!194751)))

(declare-fun res!168937 () Bool)

(assert (=> b!312325 (=> (not res!168937) (not e!194751))))

(declare-datatypes ((SeekEntryResult!2716 0))(
  ( (MissingZero!2716 (index!13040 (_ BitVec 32))) (Found!2716 (index!13041 (_ BitVec 32))) (Intermediate!2716 (undefined!3528 Bool) (index!13042 (_ BitVec 32)) (x!31212 (_ BitVec 32))) (Undefined!2716) (MissingVacant!2716 (index!13043 (_ BitVec 32))) )
))
(declare-fun lt!153058 () SeekEntryResult!2716)

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15970 (_ BitVec 32)) SeekEntryResult!2716)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!312325 (= res!168937 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!153058))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!312325 (= lt!153058 (Intermediate!2716 false resIndex!52 resX!52))))

(declare-fun res!168942 () Bool)

(assert (=> start!31070 (=> (not res!168942) (not e!194754))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31070 (= res!168942 (validMask!0 mask!3709))))

(assert (=> start!31070 e!194754))

(declare-fun array_inv!5519 (array!15970) Bool)

(assert (=> start!31070 (array_inv!5519 a!3293)))

(assert (=> start!31070 true))

(declare-fun b!312326 () Bool)

(declare-fun e!194755 () Bool)

(assert (=> b!312326 (= e!194751 e!194755)))

(declare-fun res!168939 () Bool)

(assert (=> b!312326 (=> (not res!168939) (not e!194755))))

(declare-fun lt!153059 () SeekEntryResult!2716)

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!312326 (= res!168939 (and (= lt!153059 lt!153058) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7565 a!3293) index!1781) k0!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!312326 (= lt!153059 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709))))

(declare-fun b!312327 () Bool)

(declare-fun e!194753 () Bool)

(assert (=> b!312327 (= e!194755 (not e!194753))))

(declare-fun res!168936 () Bool)

(assert (=> b!312327 (=> res!168936 e!194753)))

(declare-fun lt!153062 () (_ BitVec 32))

(declare-fun lt!153063 () SeekEntryResult!2716)

(assert (=> b!312327 (= res!168936 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1427) resX!52) (bvslt (bvadd #b00000000000000000000000000000001 x!1427) #b00000000000000000000000000000000) (bvslt lt!153062 #b00000000000000000000000000000000) (bvsge lt!153062 (size!7917 a!3293)) (not (= lt!153063 lt!153058))))))

(declare-fun lt!153060 () SeekEntryResult!2716)

(declare-fun lt!153065 () SeekEntryResult!2716)

(assert (=> b!312327 (= lt!153060 lt!153065)))

(declare-fun lt!153064 () array!15970)

(assert (=> b!312327 (= lt!153065 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!153062 k0!2441 lt!153064 mask!3709))))

(assert (=> b!312327 (= lt!153060 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 lt!153064 mask!3709))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!312327 (= lt!153064 (array!15971 (store (arr!7565 a!3293) i!1240 k0!2441) (size!7917 a!3293)))))

(assert (=> b!312327 (= lt!153059 lt!153063)))

(assert (=> b!312327 (= lt!153063 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!153062 k0!2441 a!3293 mask!3709))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!312327 (= lt!153062 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!312328 () Bool)

(declare-fun res!168938 () Bool)

(assert (=> b!312328 (=> (not res!168938) (not e!194754))))

(assert (=> b!312328 (= res!168938 (and (= (size!7917 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7917 a!3293))))))

(declare-fun b!312329 () Bool)

(declare-fun res!168940 () Bool)

(assert (=> b!312329 (=> (not res!168940) (not e!194751))))

(assert (=> b!312329 (= res!168940 (and (= (select (arr!7565 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7917 a!3293))))))

(declare-fun b!312330 () Bool)

(assert (=> b!312330 (= e!194753 true)))

(assert (=> b!312330 (= lt!153065 lt!153063)))

(declare-datatypes ((Unit!9630 0))(
  ( (Unit!9631) )
))
(declare-fun lt!153061 () Unit!9630)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 (array!15970 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!9630)

(assert (=> b!312330 (= lt!153061 (lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 a!3293 i!1240 k0!2441 (bvadd #b00000000000000000000000000000001 x!1427) lt!153062 resIndex!52 resX!52 mask!3709))))

(declare-fun b!312331 () Bool)

(declare-fun res!168945 () Bool)

(assert (=> b!312331 (=> (not res!168945) (not e!194754))))

(declare-fun arrayContainsKey!0 (array!15970 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!312331 (= res!168945 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!312332 () Bool)

(declare-fun res!168943 () Bool)

(assert (=> b!312332 (=> (not res!168943) (not e!194754))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!312332 (= res!168943 (validKeyInArray!0 k0!2441))))

(declare-fun b!312333 () Bool)

(declare-fun res!168944 () Bool)

(assert (=> b!312333 (=> (not res!168944) (not e!194754))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15970 (_ BitVec 32)) SeekEntryResult!2716)

(assert (=> b!312333 (= res!168944 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2716 i!1240)))))

(assert (= (and start!31070 res!168942) b!312328))

(assert (= (and b!312328 res!168938) b!312332))

(assert (= (and b!312332 res!168943) b!312331))

(assert (= (and b!312331 res!168945) b!312333))

(assert (= (and b!312333 res!168944) b!312324))

(assert (= (and b!312324 res!168941) b!312325))

(assert (= (and b!312325 res!168937) b!312329))

(assert (= (and b!312329 res!168940) b!312326))

(assert (= (and b!312326 res!168939) b!312327))

(assert (= (and b!312327 (not res!168936)) b!312330))

(declare-fun m!322463 () Bool)

(assert (=> b!312329 m!322463))

(declare-fun m!322465 () Bool)

(assert (=> b!312331 m!322465))

(declare-fun m!322467 () Bool)

(assert (=> b!312333 m!322467))

(declare-fun m!322469 () Bool)

(assert (=> b!312327 m!322469))

(declare-fun m!322471 () Bool)

(assert (=> b!312327 m!322471))

(declare-fun m!322473 () Bool)

(assert (=> b!312327 m!322473))

(declare-fun m!322475 () Bool)

(assert (=> b!312327 m!322475))

(declare-fun m!322477 () Bool)

(assert (=> b!312327 m!322477))

(declare-fun m!322479 () Bool)

(assert (=> start!31070 m!322479))

(declare-fun m!322481 () Bool)

(assert (=> start!31070 m!322481))

(declare-fun m!322483 () Bool)

(assert (=> b!312332 m!322483))

(declare-fun m!322485 () Bool)

(assert (=> b!312325 m!322485))

(assert (=> b!312325 m!322485))

(declare-fun m!322487 () Bool)

(assert (=> b!312325 m!322487))

(declare-fun m!322489 () Bool)

(assert (=> b!312326 m!322489))

(declare-fun m!322491 () Bool)

(assert (=> b!312326 m!322491))

(declare-fun m!322493 () Bool)

(assert (=> b!312324 m!322493))

(declare-fun m!322495 () Bool)

(assert (=> b!312330 m!322495))

(check-sat (not b!312326) (not b!312331) (not b!312327) (not b!312333) (not b!312332) (not b!312325) (not b!312330) (not start!31070) (not b!312324))
