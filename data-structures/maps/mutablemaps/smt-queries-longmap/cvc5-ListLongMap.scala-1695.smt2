; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31062 () Bool)

(assert start!31062)

(declare-fun b!312204 () Bool)

(declare-fun e!194692 () Bool)

(declare-fun e!194695 () Bool)

(assert (=> b!312204 (= e!194692 e!194695)))

(declare-fun res!168821 () Bool)

(assert (=> b!312204 (=> (not res!168821) (not e!194695))))

(declare-datatypes ((array!15962 0))(
  ( (array!15963 (arr!7561 (Array (_ BitVec 32) (_ BitVec 64))) (size!7913 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15962)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2712 0))(
  ( (MissingZero!2712 (index!13024 (_ BitVec 32))) (Found!2712 (index!13025 (_ BitVec 32))) (Intermediate!2712 (undefined!3524 Bool) (index!13026 (_ BitVec 32)) (x!31200 (_ BitVec 32))) (Undefined!2712) (MissingVacant!2712 (index!13027 (_ BitVec 32))) )
))
(declare-fun lt!152965 () SeekEntryResult!2712)

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15962 (_ BitVec 32)) SeekEntryResult!2712)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!312204 (= res!168821 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!152965))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!312204 (= lt!152965 (Intermediate!2712 false resIndex!52 resX!52))))

(declare-fun b!312205 () Bool)

(declare-fun res!168824 () Bool)

(assert (=> b!312205 (=> (not res!168824) (not e!194692))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!312205 (= res!168824 (and (= (size!7913 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7913 a!3293))))))

(declare-fun b!312206 () Bool)

(declare-fun res!168825 () Bool)

(assert (=> b!312206 (=> (not res!168825) (not e!194692))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15962 (_ BitVec 32)) SeekEntryResult!2712)

(assert (=> b!312206 (= res!168825 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2712 i!1240)))))

(declare-fun b!312207 () Bool)

(declare-fun res!168816 () Bool)

(assert (=> b!312207 (=> (not res!168816) (not e!194692))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15962 (_ BitVec 32)) Bool)

(assert (=> b!312207 (= res!168816 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!312208 () Bool)

(declare-fun res!168820 () Bool)

(assert (=> b!312208 (=> (not res!168820) (not e!194692))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!312208 (= res!168820 (validKeyInArray!0 k!2441))))

(declare-fun b!312209 () Bool)

(declare-fun e!194693 () Bool)

(assert (=> b!312209 (= e!194695 e!194693)))

(declare-fun res!168823 () Bool)

(assert (=> b!312209 (=> (not res!168823) (not e!194693))))

(declare-fun lt!152963 () SeekEntryResult!2712)

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!312209 (= res!168823 (and (= lt!152963 lt!152965) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7561 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!312209 (= lt!152963 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!312210 () Bool)

(declare-fun e!194694 () Bool)

(assert (=> b!312210 (= e!194694 (bvsge mask!3709 #b00000000000000000000000000000000))))

(declare-fun lt!152969 () SeekEntryResult!2712)

(declare-fun lt!152968 () SeekEntryResult!2712)

(assert (=> b!312210 (= lt!152969 lt!152968)))

(declare-fun lt!152962 () (_ BitVec 32))

(declare-datatypes ((Unit!9622 0))(
  ( (Unit!9623) )
))
(declare-fun lt!152967 () Unit!9622)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 (array!15962 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!9622)

(assert (=> b!312210 (= lt!152967 (lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 a!3293 i!1240 k!2441 (bvadd #b00000000000000000000000000000001 x!1427) lt!152962 resIndex!52 resX!52 mask!3709))))

(declare-fun b!312211 () Bool)

(declare-fun res!168819 () Bool)

(assert (=> b!312211 (=> (not res!168819) (not e!194695))))

(assert (=> b!312211 (= res!168819 (and (= (select (arr!7561 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7913 a!3293))))))

(declare-fun res!168817 () Bool)

(assert (=> start!31062 (=> (not res!168817) (not e!194692))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31062 (= res!168817 (validMask!0 mask!3709))))

(assert (=> start!31062 e!194692))

(declare-fun array_inv!5515 (array!15962) Bool)

(assert (=> start!31062 (array_inv!5515 a!3293)))

(assert (=> start!31062 true))

(declare-fun b!312212 () Bool)

(assert (=> b!312212 (= e!194693 (not e!194694))))

(declare-fun res!168822 () Bool)

(assert (=> b!312212 (=> res!168822 e!194694)))

(assert (=> b!312212 (= res!168822 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1427) resX!52) (bvslt (bvadd #b00000000000000000000000000000001 x!1427) #b00000000000000000000000000000000) (bvslt lt!152962 #b00000000000000000000000000000000) (bvsge lt!152962 (size!7913 a!3293)) (not (= lt!152968 lt!152965))))))

(declare-fun lt!152966 () SeekEntryResult!2712)

(assert (=> b!312212 (= lt!152966 lt!152969)))

(declare-fun lt!152964 () array!15962)

(assert (=> b!312212 (= lt!152969 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!152962 k!2441 lt!152964 mask!3709))))

(assert (=> b!312212 (= lt!152966 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 lt!152964 mask!3709))))

(assert (=> b!312212 (= lt!152964 (array!15963 (store (arr!7561 a!3293) i!1240 k!2441) (size!7913 a!3293)))))

(assert (=> b!312212 (= lt!152963 lt!152968)))

(assert (=> b!312212 (= lt!152968 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!152962 k!2441 a!3293 mask!3709))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!312212 (= lt!152962 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!312213 () Bool)

(declare-fun res!168818 () Bool)

(assert (=> b!312213 (=> (not res!168818) (not e!194692))))

(declare-fun arrayContainsKey!0 (array!15962 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!312213 (= res!168818 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(assert (= (and start!31062 res!168817) b!312205))

(assert (= (and b!312205 res!168824) b!312208))

(assert (= (and b!312208 res!168820) b!312213))

(assert (= (and b!312213 res!168818) b!312206))

(assert (= (and b!312206 res!168825) b!312207))

(assert (= (and b!312207 res!168816) b!312204))

(assert (= (and b!312204 res!168821) b!312211))

(assert (= (and b!312211 res!168819) b!312209))

(assert (= (and b!312209 res!168823) b!312212))

(assert (= (and b!312212 (not res!168822)) b!312210))

(declare-fun m!322327 () Bool)

(assert (=> b!312211 m!322327))

(declare-fun m!322329 () Bool)

(assert (=> b!312209 m!322329))

(declare-fun m!322331 () Bool)

(assert (=> b!312209 m!322331))

(declare-fun m!322333 () Bool)

(assert (=> b!312212 m!322333))

(declare-fun m!322335 () Bool)

(assert (=> b!312212 m!322335))

(declare-fun m!322337 () Bool)

(assert (=> b!312212 m!322337))

(declare-fun m!322339 () Bool)

(assert (=> b!312212 m!322339))

(declare-fun m!322341 () Bool)

(assert (=> b!312212 m!322341))

(declare-fun m!322343 () Bool)

(assert (=> b!312206 m!322343))

(declare-fun m!322345 () Bool)

(assert (=> b!312210 m!322345))

(declare-fun m!322347 () Bool)

(assert (=> b!312213 m!322347))

(declare-fun m!322349 () Bool)

(assert (=> b!312204 m!322349))

(assert (=> b!312204 m!322349))

(declare-fun m!322351 () Bool)

(assert (=> b!312204 m!322351))

(declare-fun m!322353 () Bool)

(assert (=> b!312208 m!322353))

(declare-fun m!322355 () Bool)

(assert (=> start!31062 m!322355))

(declare-fun m!322357 () Bool)

(assert (=> start!31062 m!322357))

(declare-fun m!322359 () Bool)

(assert (=> b!312207 m!322359))

(push 1)

