; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31072 () Bool)

(assert start!31072)

(declare-fun b!312354 () Bool)

(declare-fun res!168967 () Bool)

(declare-fun e!194767 () Bool)

(assert (=> b!312354 (=> (not res!168967) (not e!194767))))

(declare-datatypes ((array!15972 0))(
  ( (array!15973 (arr!7566 (Array (_ BitVec 32) (_ BitVec 64))) (size!7918 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15972)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun i!1240 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2717 0))(
  ( (MissingZero!2717 (index!13044 (_ BitVec 32))) (Found!2717 (index!13045 (_ BitVec 32))) (Intermediate!2717 (undefined!3529 Bool) (index!13046 (_ BitVec 32)) (x!31213 (_ BitVec 32))) (Undefined!2717) (MissingVacant!2717 (index!13047 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15972 (_ BitVec 32)) SeekEntryResult!2717)

(assert (=> b!312354 (= res!168967 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2717 i!1240)))))

(declare-fun b!312355 () Bool)

(declare-fun e!194768 () Bool)

(assert (=> b!312355 (= e!194768 true)))

(declare-fun lt!153089 () SeekEntryResult!2717)

(declare-fun lt!153085 () SeekEntryResult!2717)

(assert (=> b!312355 (= lt!153089 lt!153085)))

(declare-datatypes ((Unit!9632 0))(
  ( (Unit!9633) )
))
(declare-fun lt!153086 () Unit!9632)

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun lt!153087 () (_ BitVec 32))

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 (array!15972 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!9632)

(assert (=> b!312355 (= lt!153086 (lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 a!3293 i!1240 k!2441 (bvadd #b00000000000000000000000000000001 x!1427) lt!153087 resIndex!52 resX!52 mask!3709))))

(declare-fun b!312356 () Bool)

(declare-fun res!168972 () Bool)

(assert (=> b!312356 (=> (not res!168972) (not e!194767))))

(declare-fun arrayContainsKey!0 (array!15972 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!312356 (= res!168972 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!312357 () Bool)

(declare-fun e!194766 () Bool)

(declare-fun e!194770 () Bool)

(assert (=> b!312357 (= e!194766 e!194770)))

(declare-fun res!168971 () Bool)

(assert (=> b!312357 (=> (not res!168971) (not e!194770))))

(declare-fun lt!153088 () SeekEntryResult!2717)

(declare-fun lt!153082 () SeekEntryResult!2717)

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!312357 (= res!168971 (and (= lt!153082 lt!153088) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7566 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15972 (_ BitVec 32)) SeekEntryResult!2717)

(assert (=> b!312357 (= lt!153082 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!312358 () Bool)

(declare-fun res!168968 () Bool)

(assert (=> b!312358 (=> (not res!168968) (not e!194767))))

(assert (=> b!312358 (= res!168968 (and (= (size!7918 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7918 a!3293))))))

(declare-fun b!312359 () Bool)

(declare-fun res!168974 () Bool)

(assert (=> b!312359 (=> (not res!168974) (not e!194767))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15972 (_ BitVec 32)) Bool)

(assert (=> b!312359 (= res!168974 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!312360 () Bool)

(declare-fun res!168973 () Bool)

(assert (=> b!312360 (=> (not res!168973) (not e!194766))))

(assert (=> b!312360 (= res!168973 (and (= (select (arr!7566 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7918 a!3293))))))

(declare-fun b!312361 () Bool)

(declare-fun res!168975 () Bool)

(assert (=> b!312361 (=> (not res!168975) (not e!194767))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!312361 (= res!168975 (validKeyInArray!0 k!2441))))

(declare-fun res!168969 () Bool)

(assert (=> start!31072 (=> (not res!168969) (not e!194767))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31072 (= res!168969 (validMask!0 mask!3709))))

(assert (=> start!31072 e!194767))

(declare-fun array_inv!5520 (array!15972) Bool)

(assert (=> start!31072 (array_inv!5520 a!3293)))

(assert (=> start!31072 true))

(declare-fun b!312362 () Bool)

(assert (=> b!312362 (= e!194767 e!194766)))

(declare-fun res!168970 () Bool)

(assert (=> b!312362 (=> (not res!168970) (not e!194766))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!312362 (= res!168970 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!153088))))

(assert (=> b!312362 (= lt!153088 (Intermediate!2717 false resIndex!52 resX!52))))

(declare-fun b!312363 () Bool)

(assert (=> b!312363 (= e!194770 (not e!194768))))

(declare-fun res!168966 () Bool)

(assert (=> b!312363 (=> res!168966 e!194768)))

(assert (=> b!312363 (= res!168966 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1427) resX!52) (bvslt (bvadd #b00000000000000000000000000000001 x!1427) #b00000000000000000000000000000000) (bvslt lt!153087 #b00000000000000000000000000000000) (bvsge lt!153087 (size!7918 a!3293)) (not (= lt!153085 lt!153088))))))

(declare-fun lt!153084 () SeekEntryResult!2717)

(assert (=> b!312363 (= lt!153084 lt!153089)))

(declare-fun lt!153083 () array!15972)

(assert (=> b!312363 (= lt!153089 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!153087 k!2441 lt!153083 mask!3709))))

(assert (=> b!312363 (= lt!153084 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 lt!153083 mask!3709))))

(assert (=> b!312363 (= lt!153083 (array!15973 (store (arr!7566 a!3293) i!1240 k!2441) (size!7918 a!3293)))))

(assert (=> b!312363 (= lt!153082 lt!153085)))

(assert (=> b!312363 (= lt!153085 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!153087 k!2441 a!3293 mask!3709))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!312363 (= lt!153087 (nextIndex!0 index!1781 x!1427 mask!3709))))

(assert (= (and start!31072 res!168969) b!312358))

(assert (= (and b!312358 res!168968) b!312361))

(assert (= (and b!312361 res!168975) b!312356))

(assert (= (and b!312356 res!168972) b!312354))

(assert (= (and b!312354 res!168967) b!312359))

(assert (= (and b!312359 res!168974) b!312362))

(assert (= (and b!312362 res!168970) b!312360))

(assert (= (and b!312360 res!168973) b!312357))

(assert (= (and b!312357 res!168971) b!312363))

(assert (= (and b!312363 (not res!168966)) b!312355))

(declare-fun m!322497 () Bool)

(assert (=> b!312363 m!322497))

(declare-fun m!322499 () Bool)

(assert (=> b!312363 m!322499))

(declare-fun m!322501 () Bool)

(assert (=> b!312363 m!322501))

(declare-fun m!322503 () Bool)

(assert (=> b!312363 m!322503))

(declare-fun m!322505 () Bool)

(assert (=> b!312363 m!322505))

(declare-fun m!322507 () Bool)

(assert (=> start!31072 m!322507))

(declare-fun m!322509 () Bool)

(assert (=> start!31072 m!322509))

(declare-fun m!322511 () Bool)

(assert (=> b!312359 m!322511))

(declare-fun m!322513 () Bool)

(assert (=> b!312360 m!322513))

(declare-fun m!322515 () Bool)

(assert (=> b!312354 m!322515))

(declare-fun m!322517 () Bool)

(assert (=> b!312357 m!322517))

(declare-fun m!322519 () Bool)

(assert (=> b!312357 m!322519))

(declare-fun m!322521 () Bool)

(assert (=> b!312355 m!322521))

(declare-fun m!322523 () Bool)

(assert (=> b!312362 m!322523))

(assert (=> b!312362 m!322523))

(declare-fun m!322525 () Bool)

(assert (=> b!312362 m!322525))

(declare-fun m!322527 () Bool)

(assert (=> b!312356 m!322527))

(declare-fun m!322529 () Bool)

(assert (=> b!312361 m!322529))

(push 1)

(assert (not b!312362))

(assert (not b!312356))

(assert (not start!31072))

(assert (not b!312354))

(assert (not b!312359))

(assert (not b!312363))

(assert (not b!312361))

(assert (not b!312357))

(assert (not b!312355))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

