; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31068 () Bool)

(assert start!31068)

(declare-fun b!312294 () Bool)

(declare-fun res!168911 () Bool)

(declare-fun e!194736 () Bool)

(assert (=> b!312294 (=> (not res!168911) (not e!194736))))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!312294 (= res!168911 (validKeyInArray!0 k!2441))))

(declare-fun b!312295 () Bool)

(declare-fun e!194737 () Bool)

(declare-fun e!194738 () Bool)

(assert (=> b!312295 (= e!194737 (not e!194738))))

(declare-fun res!168912 () Bool)

(assert (=> b!312295 (=> res!168912 e!194738)))

(declare-datatypes ((array!15968 0))(
  ( (array!15969 (arr!7564 (Array (_ BitVec 32) (_ BitVec 64))) (size!7916 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15968)

(declare-datatypes ((SeekEntryResult!2715 0))(
  ( (MissingZero!2715 (index!13036 (_ BitVec 32))) (Found!2715 (index!13037 (_ BitVec 32))) (Intermediate!2715 (undefined!3527 Bool) (index!13038 (_ BitVec 32)) (x!31211 (_ BitVec 32))) (Undefined!2715) (MissingVacant!2715 (index!13039 (_ BitVec 32))) )
))
(declare-fun lt!153040 () SeekEntryResult!2715)

(declare-fun lt!153035 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun lt!153039 () SeekEntryResult!2715)

(declare-fun x!1427 () (_ BitVec 32))

(assert (=> b!312295 (= res!168912 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1427) resX!52) (bvslt (bvadd #b00000000000000000000000000000001 x!1427) #b00000000000000000000000000000000) (bvslt lt!153035 #b00000000000000000000000000000000) (bvsge lt!153035 (size!7916 a!3293)) (not (= lt!153040 lt!153039))))))

(declare-fun lt!153034 () SeekEntryResult!2715)

(declare-fun lt!153041 () SeekEntryResult!2715)

(assert (=> b!312295 (= lt!153034 lt!153041)))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun lt!153036 () array!15968)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15968 (_ BitVec 32)) SeekEntryResult!2715)

(assert (=> b!312295 (= lt!153041 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!153035 k!2441 lt!153036 mask!3709))))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!312295 (= lt!153034 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 lt!153036 mask!3709))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!312295 (= lt!153036 (array!15969 (store (arr!7564 a!3293) i!1240 k!2441) (size!7916 a!3293)))))

(declare-fun lt!153037 () SeekEntryResult!2715)

(assert (=> b!312295 (= lt!153037 lt!153040)))

(assert (=> b!312295 (= lt!153040 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!153035 k!2441 a!3293 mask!3709))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!312295 (= lt!153035 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!312296 () Bool)

(declare-fun res!168906 () Bool)

(declare-fun e!194739 () Bool)

(assert (=> b!312296 (=> (not res!168906) (not e!194739))))

(declare-fun resIndex!52 () (_ BitVec 32))

(assert (=> b!312296 (= res!168906 (and (= (select (arr!7564 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7916 a!3293))))))

(declare-fun b!312297 () Bool)

(declare-fun res!168908 () Bool)

(assert (=> b!312297 (=> (not res!168908) (not e!194736))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15968 (_ BitVec 32)) Bool)

(assert (=> b!312297 (= res!168908 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!312298 () Bool)

(assert (=> b!312298 (= e!194738 true)))

(assert (=> b!312298 (= lt!153041 lt!153040)))

(declare-datatypes ((Unit!9628 0))(
  ( (Unit!9629) )
))
(declare-fun lt!153038 () Unit!9628)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 (array!15968 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!9628)

(assert (=> b!312298 (= lt!153038 (lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 a!3293 i!1240 k!2441 (bvadd #b00000000000000000000000000000001 x!1427) lt!153035 resIndex!52 resX!52 mask!3709))))

(declare-fun b!312299 () Bool)

(declare-fun res!168914 () Bool)

(assert (=> b!312299 (=> (not res!168914) (not e!194736))))

(assert (=> b!312299 (= res!168914 (and (= (size!7916 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7916 a!3293))))))

(declare-fun b!312300 () Bool)

(declare-fun res!168913 () Bool)

(assert (=> b!312300 (=> (not res!168913) (not e!194736))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15968 (_ BitVec 32)) SeekEntryResult!2715)

(assert (=> b!312300 (= res!168913 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2715 i!1240)))))

(declare-fun b!312301 () Bool)

(assert (=> b!312301 (= e!194739 e!194737)))

(declare-fun res!168915 () Bool)

(assert (=> b!312301 (=> (not res!168915) (not e!194737))))

(assert (=> b!312301 (= res!168915 (and (= lt!153037 lt!153039) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7564 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!312301 (= lt!153037 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun res!168910 () Bool)

(assert (=> start!31068 (=> (not res!168910) (not e!194736))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31068 (= res!168910 (validMask!0 mask!3709))))

(assert (=> start!31068 e!194736))

(declare-fun array_inv!5518 (array!15968) Bool)

(assert (=> start!31068 (array_inv!5518 a!3293)))

(assert (=> start!31068 true))

(declare-fun b!312302 () Bool)

(assert (=> b!312302 (= e!194736 e!194739)))

(declare-fun res!168909 () Bool)

(assert (=> b!312302 (=> (not res!168909) (not e!194739))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!312302 (= res!168909 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!153039))))

(assert (=> b!312302 (= lt!153039 (Intermediate!2715 false resIndex!52 resX!52))))

(declare-fun b!312303 () Bool)

(declare-fun res!168907 () Bool)

(assert (=> b!312303 (=> (not res!168907) (not e!194736))))

(declare-fun arrayContainsKey!0 (array!15968 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!312303 (= res!168907 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(assert (= (and start!31068 res!168910) b!312299))

(assert (= (and b!312299 res!168914) b!312294))

(assert (= (and b!312294 res!168911) b!312303))

(assert (= (and b!312303 res!168907) b!312300))

(assert (= (and b!312300 res!168913) b!312297))

(assert (= (and b!312297 res!168908) b!312302))

(assert (= (and b!312302 res!168909) b!312296))

(assert (= (and b!312296 res!168906) b!312301))

(assert (= (and b!312301 res!168915) b!312295))

(assert (= (and b!312295 (not res!168912)) b!312298))

(declare-fun m!322429 () Bool)

(assert (=> start!31068 m!322429))

(declare-fun m!322431 () Bool)

(assert (=> start!31068 m!322431))

(declare-fun m!322433 () Bool)

(assert (=> b!312297 m!322433))

(declare-fun m!322435 () Bool)

(assert (=> b!312296 m!322435))

(declare-fun m!322437 () Bool)

(assert (=> b!312294 m!322437))

(declare-fun m!322439 () Bool)

(assert (=> b!312301 m!322439))

(declare-fun m!322441 () Bool)

(assert (=> b!312301 m!322441))

(declare-fun m!322443 () Bool)

(assert (=> b!312303 m!322443))

(declare-fun m!322445 () Bool)

(assert (=> b!312302 m!322445))

(assert (=> b!312302 m!322445))

(declare-fun m!322447 () Bool)

(assert (=> b!312302 m!322447))

(declare-fun m!322449 () Bool)

(assert (=> b!312295 m!322449))

(declare-fun m!322451 () Bool)

(assert (=> b!312295 m!322451))

(declare-fun m!322453 () Bool)

(assert (=> b!312295 m!322453))

(declare-fun m!322455 () Bool)

(assert (=> b!312295 m!322455))

(declare-fun m!322457 () Bool)

(assert (=> b!312295 m!322457))

(declare-fun m!322459 () Bool)

(assert (=> b!312300 m!322459))

(declare-fun m!322461 () Bool)

(assert (=> b!312298 m!322461))

(push 1)

