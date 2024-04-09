; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30630 () Bool)

(assert start!30630)

(declare-fun b!307099 () Bool)

(declare-fun res!164017 () Bool)

(declare-fun e!192358 () Bool)

(assert (=> b!307099 (=> (not res!164017) (not e!192358))))

(declare-datatypes ((array!15632 0))(
  ( (array!15633 (arr!7399 (Array (_ BitVec 32) (_ BitVec 64))) (size!7751 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15632)

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!307099 (= res!164017 (and (= (select (arr!7399 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7751 a!3293))))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun b!307100 () Bool)

(declare-fun k!2441 () (_ BitVec 64))

(assert (=> b!307100 (= e!192358 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7399 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52)) (bvsge mask!3709 #b00000000000000000000000000000000) (bvslt index!1781 (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsgt x!1427 #b01111111111111111111111111111110)))))

(declare-fun b!307101 () Bool)

(declare-fun res!164014 () Bool)

(declare-fun e!192357 () Bool)

(assert (=> b!307101 (=> (not res!164014) (not e!192357))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!307101 (= res!164014 (validKeyInArray!0 k!2441))))

(declare-fun b!307102 () Bool)

(assert (=> b!307102 (= e!192357 e!192358)))

(declare-fun res!164018 () Bool)

(assert (=> b!307102 (=> (not res!164018) (not e!192358))))

(declare-datatypes ((SeekEntryResult!2550 0))(
  ( (MissingZero!2550 (index!12376 (_ BitVec 32))) (Found!2550 (index!12377 (_ BitVec 32))) (Intermediate!2550 (undefined!3362 Bool) (index!12378 (_ BitVec 32)) (x!30588 (_ BitVec 32))) (Undefined!2550) (MissingVacant!2550 (index!12379 (_ BitVec 32))) )
))
(declare-fun lt!151076 () SeekEntryResult!2550)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15632 (_ BitVec 32)) SeekEntryResult!2550)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!307102 (= res!164018 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!151076))))

(assert (=> b!307102 (= lt!151076 (Intermediate!2550 false resIndex!52 resX!52))))

(declare-fun b!307103 () Bool)

(declare-fun res!164016 () Bool)

(assert (=> b!307103 (=> (not res!164016) (not e!192357))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15632 (_ BitVec 32)) SeekEntryResult!2550)

(assert (=> b!307103 (= res!164016 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2550 i!1240)))))

(declare-fun b!307104 () Bool)

(declare-fun res!164011 () Bool)

(assert (=> b!307104 (=> (not res!164011) (not e!192357))))

(assert (=> b!307104 (= res!164011 (and (= (size!7751 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7751 a!3293))))))

(declare-fun b!307105 () Bool)

(declare-fun res!164012 () Bool)

(assert (=> b!307105 (=> (not res!164012) (not e!192357))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15632 (_ BitVec 32)) Bool)

(assert (=> b!307105 (= res!164012 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun res!164019 () Bool)

(assert (=> start!30630 (=> (not res!164019) (not e!192357))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30630 (= res!164019 (validMask!0 mask!3709))))

(assert (=> start!30630 e!192357))

(declare-fun array_inv!5353 (array!15632) Bool)

(assert (=> start!30630 (array_inv!5353 a!3293)))

(assert (=> start!30630 true))

(declare-fun b!307106 () Bool)

(declare-fun res!164013 () Bool)

(assert (=> b!307106 (=> (not res!164013) (not e!192358))))

(assert (=> b!307106 (= res!164013 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709) lt!151076))))

(declare-fun b!307107 () Bool)

(declare-fun res!164015 () Bool)

(assert (=> b!307107 (=> (not res!164015) (not e!192357))))

(declare-fun arrayContainsKey!0 (array!15632 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!307107 (= res!164015 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(assert (= (and start!30630 res!164019) b!307104))

(assert (= (and b!307104 res!164011) b!307101))

(assert (= (and b!307101 res!164014) b!307107))

(assert (= (and b!307107 res!164015) b!307103))

(assert (= (and b!307103 res!164016) b!307105))

(assert (= (and b!307105 res!164012) b!307102))

(assert (= (and b!307102 res!164018) b!307099))

(assert (= (and b!307099 res!164017) b!307106))

(assert (= (and b!307106 res!164013) b!307100))

(declare-fun m!317473 () Bool)

(assert (=> b!307107 m!317473))

(declare-fun m!317475 () Bool)

(assert (=> b!307100 m!317475))

(declare-fun m!317477 () Bool)

(assert (=> b!307101 m!317477))

(declare-fun m!317479 () Bool)

(assert (=> start!30630 m!317479))

(declare-fun m!317481 () Bool)

(assert (=> start!30630 m!317481))

(declare-fun m!317483 () Bool)

(assert (=> b!307106 m!317483))

(declare-fun m!317485 () Bool)

(assert (=> b!307099 m!317485))

(declare-fun m!317487 () Bool)

(assert (=> b!307102 m!317487))

(assert (=> b!307102 m!317487))

(declare-fun m!317489 () Bool)

(assert (=> b!307102 m!317489))

(declare-fun m!317491 () Bool)

(assert (=> b!307105 m!317491))

(declare-fun m!317493 () Bool)

(assert (=> b!307103 m!317493))

(push 1)

