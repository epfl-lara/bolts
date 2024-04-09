; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31032 () Bool)

(assert start!31032)

(declare-fun b!311754 () Bool)

(declare-fun e!194467 () Bool)

(declare-fun e!194470 () Bool)

(assert (=> b!311754 (= e!194467 (not e!194470))))

(declare-fun res!168368 () Bool)

(assert (=> b!311754 (=> res!168368 e!194470)))

(declare-datatypes ((array!15932 0))(
  ( (array!15933 (arr!7546 (Array (_ BitVec 32) (_ BitVec 64))) (size!7898 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15932)

(declare-datatypes ((SeekEntryResult!2697 0))(
  ( (MissingZero!2697 (index!12964 (_ BitVec 32))) (Found!2697 (index!12965 (_ BitVec 32))) (Intermediate!2697 (undefined!3509 Bool) (index!12966 (_ BitVec 32)) (x!31145 (_ BitVec 32))) (Undefined!2697) (MissingVacant!2697 (index!12967 (_ BitVec 32))) )
))
(declare-fun lt!152602 () SeekEntryResult!2697)

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun lt!152604 () (_ BitVec 32))

(declare-fun lt!152606 () SeekEntryResult!2697)

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!311754 (= res!168368 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1427) resX!52) (bvslt (bvadd #b00000000000000000000000000000001 x!1427) #b00000000000000000000000000000000) (bvslt lt!152604 #b00000000000000000000000000000000) (bvsge lt!152604 (size!7898 a!3293)) (not (= lt!152602 lt!152606))))))

(declare-fun lt!152608 () SeekEntryResult!2697)

(declare-fun lt!152607 () SeekEntryResult!2697)

(assert (=> b!311754 (= lt!152608 lt!152607)))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun lt!152603 () array!15932)

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15932 (_ BitVec 32)) SeekEntryResult!2697)

(assert (=> b!311754 (= lt!152607 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!152604 k!2441 lt!152603 mask!3709))))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!311754 (= lt!152608 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 lt!152603 mask!3709))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!311754 (= lt!152603 (array!15933 (store (arr!7546 a!3293) i!1240 k!2441) (size!7898 a!3293)))))

(declare-fun lt!152605 () SeekEntryResult!2697)

(assert (=> b!311754 (= lt!152605 lt!152602)))

(assert (=> b!311754 (= lt!152602 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!152604 k!2441 a!3293 mask!3709))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!311754 (= lt!152604 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!311755 () Bool)

(declare-fun res!168369 () Bool)

(declare-fun e!194466 () Bool)

(assert (=> b!311755 (=> (not res!168369) (not e!194466))))

(declare-fun resIndex!52 () (_ BitVec 32))

(assert (=> b!311755 (= res!168369 (and (= (select (arr!7546 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7898 a!3293))))))

(declare-fun b!311756 () Bool)

(declare-fun res!168370 () Bool)

(declare-fun e!194468 () Bool)

(assert (=> b!311756 (=> (not res!168370) (not e!194468))))

(declare-fun arrayContainsKey!0 (array!15932 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!311756 (= res!168370 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!311757 () Bool)

(declare-fun res!168367 () Bool)

(assert (=> b!311757 (=> (not res!168367) (not e!194468))))

(assert (=> b!311757 (= res!168367 (and (= (size!7898 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7898 a!3293))))))

(declare-fun b!311758 () Bool)

(declare-fun res!168373 () Bool)

(assert (=> b!311758 (=> (not res!168373) (not e!194468))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15932 (_ BitVec 32)) Bool)

(assert (=> b!311758 (= res!168373 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun res!168366 () Bool)

(assert (=> start!31032 (=> (not res!168366) (not e!194468))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31032 (= res!168366 (validMask!0 mask!3709))))

(assert (=> start!31032 e!194468))

(declare-fun array_inv!5500 (array!15932) Bool)

(assert (=> start!31032 (array_inv!5500 a!3293)))

(assert (=> start!31032 true))

(declare-fun b!311759 () Bool)

(declare-fun res!168371 () Bool)

(assert (=> b!311759 (=> (not res!168371) (not e!194468))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15932 (_ BitVec 32)) SeekEntryResult!2697)

(assert (=> b!311759 (= res!168371 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2697 i!1240)))))

(declare-fun b!311760 () Bool)

(assert (=> b!311760 (= e!194470 true)))

(assert (=> b!311760 (= lt!152607 lt!152602)))

(declare-datatypes ((Unit!9592 0))(
  ( (Unit!9593) )
))
(declare-fun lt!152609 () Unit!9592)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 (array!15932 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!9592)

(assert (=> b!311760 (= lt!152609 (lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 a!3293 i!1240 k!2441 (bvadd #b00000000000000000000000000000001 x!1427) lt!152604 resIndex!52 resX!52 mask!3709))))

(declare-fun b!311761 () Bool)

(assert (=> b!311761 (= e!194468 e!194466)))

(declare-fun res!168375 () Bool)

(assert (=> b!311761 (=> (not res!168375) (not e!194466))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!311761 (= res!168375 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!152606))))

(assert (=> b!311761 (= lt!152606 (Intermediate!2697 false resIndex!52 resX!52))))

(declare-fun b!311762 () Bool)

(declare-fun res!168374 () Bool)

(assert (=> b!311762 (=> (not res!168374) (not e!194468))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!311762 (= res!168374 (validKeyInArray!0 k!2441))))

(declare-fun b!311763 () Bool)

(assert (=> b!311763 (= e!194466 e!194467)))

(declare-fun res!168372 () Bool)

(assert (=> b!311763 (=> (not res!168372) (not e!194467))))

(assert (=> b!311763 (= res!168372 (and (= lt!152605 lt!152606) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7546 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!311763 (= lt!152605 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(assert (= (and start!31032 res!168366) b!311757))

(assert (= (and b!311757 res!168367) b!311762))

(assert (= (and b!311762 res!168374) b!311756))

(assert (= (and b!311756 res!168370) b!311759))

(assert (= (and b!311759 res!168371) b!311758))

(assert (= (and b!311758 res!168373) b!311761))

(assert (= (and b!311761 res!168375) b!311755))

(assert (= (and b!311755 res!168369) b!311763))

(assert (= (and b!311763 res!168372) b!311754))

(assert (= (and b!311754 (not res!168368)) b!311760))

(declare-fun m!321817 () Bool)

(assert (=> b!311754 m!321817))

(declare-fun m!321819 () Bool)

(assert (=> b!311754 m!321819))

(declare-fun m!321821 () Bool)

(assert (=> b!311754 m!321821))

(declare-fun m!321823 () Bool)

(assert (=> b!311754 m!321823))

(declare-fun m!321825 () Bool)

(assert (=> b!311754 m!321825))

(declare-fun m!321827 () Bool)

(assert (=> b!311762 m!321827))

(declare-fun m!321829 () Bool)

(assert (=> b!311758 m!321829))

(declare-fun m!321831 () Bool)

(assert (=> b!311763 m!321831))

(declare-fun m!321833 () Bool)

(assert (=> b!311763 m!321833))

(declare-fun m!321835 () Bool)

(assert (=> b!311756 m!321835))

(declare-fun m!321837 () Bool)

(assert (=> b!311760 m!321837))

(declare-fun m!321839 () Bool)

(assert (=> b!311759 m!321839))

(declare-fun m!321841 () Bool)

(assert (=> b!311755 m!321841))

(declare-fun m!321843 () Bool)

(assert (=> start!31032 m!321843))

(declare-fun m!321845 () Bool)

(assert (=> start!31032 m!321845))

(declare-fun m!321847 () Bool)

(assert (=> b!311761 m!321847))

(assert (=> b!311761 m!321847))

(declare-fun m!321849 () Bool)

(assert (=> b!311761 m!321849))

(push 1)

