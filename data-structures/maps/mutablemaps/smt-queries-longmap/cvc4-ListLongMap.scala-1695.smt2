; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31066 () Bool)

(assert start!31066)

(declare-fun b!312264 () Bool)

(declare-fun e!194725 () Bool)

(declare-fun e!194723 () Bool)

(assert (=> b!312264 (= e!194725 (not e!194723))))

(declare-fun res!168879 () Bool)

(assert (=> b!312264 (=> res!168879 e!194723)))

(declare-datatypes ((array!15966 0))(
  ( (array!15967 (arr!7563 (Array (_ BitVec 32) (_ BitVec 64))) (size!7915 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15966)

(declare-datatypes ((SeekEntryResult!2714 0))(
  ( (MissingZero!2714 (index!13032 (_ BitVec 32))) (Found!2714 (index!13033 (_ BitVec 32))) (Intermediate!2714 (undefined!3526 Bool) (index!13034 (_ BitVec 32)) (x!31202 (_ BitVec 32))) (Undefined!2714) (MissingVacant!2714 (index!13035 (_ BitVec 32))) )
))
(declare-fun lt!153011 () SeekEntryResult!2714)

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun lt!153014 () SeekEntryResult!2714)

(declare-fun lt!153017 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!312264 (= res!168879 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1427) resX!52) (bvslt (bvadd #b00000000000000000000000000000001 x!1427) #b00000000000000000000000000000000) (bvslt lt!153017 #b00000000000000000000000000000000) (bvsge lt!153017 (size!7915 a!3293)) (not (= lt!153011 lt!153014))))))

(declare-fun lt!153016 () SeekEntryResult!2714)

(declare-fun lt!153010 () SeekEntryResult!2714)

(assert (=> b!312264 (= lt!153016 lt!153010)))

(declare-fun lt!153013 () array!15966)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15966 (_ BitVec 32)) SeekEntryResult!2714)

(assert (=> b!312264 (= lt!153010 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!153017 k!2441 lt!153013 mask!3709))))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!312264 (= lt!153016 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 lt!153013 mask!3709))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!312264 (= lt!153013 (array!15967 (store (arr!7563 a!3293) i!1240 k!2441) (size!7915 a!3293)))))

(declare-fun lt!153015 () SeekEntryResult!2714)

(assert (=> b!312264 (= lt!153015 lt!153011)))

(assert (=> b!312264 (= lt!153011 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!153017 k!2441 a!3293 mask!3709))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!312264 (= lt!153017 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!312265 () Bool)

(declare-fun res!168883 () Bool)

(declare-fun e!194721 () Bool)

(assert (=> b!312265 (=> (not res!168883) (not e!194721))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15966 (_ BitVec 32)) SeekEntryResult!2714)

(assert (=> b!312265 (= res!168883 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2714 i!1240)))))

(declare-fun b!312266 () Bool)

(declare-fun res!168880 () Bool)

(assert (=> b!312266 (=> (not res!168880) (not e!194721))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15966 (_ BitVec 32)) Bool)

(assert (=> b!312266 (= res!168880 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!312267 () Bool)

(declare-fun e!194722 () Bool)

(assert (=> b!312267 (= e!194722 e!194725)))

(declare-fun res!168876 () Bool)

(assert (=> b!312267 (=> (not res!168876) (not e!194725))))

(assert (=> b!312267 (= res!168876 (and (= lt!153015 lt!153014) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7563 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!312267 (= lt!153015 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!312268 () Bool)

(declare-fun res!168885 () Bool)

(assert (=> b!312268 (=> (not res!168885) (not e!194721))))

(assert (=> b!312268 (= res!168885 (and (= (size!7915 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7915 a!3293))))))

(declare-fun b!312269 () Bool)

(declare-fun res!168878 () Bool)

(assert (=> b!312269 (=> (not res!168878) (not e!194721))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!312269 (= res!168878 (validKeyInArray!0 k!2441))))

(declare-fun b!312271 () Bool)

(assert (=> b!312271 (= e!194721 e!194722)))

(declare-fun res!168882 () Bool)

(assert (=> b!312271 (=> (not res!168882) (not e!194722))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!312271 (= res!168882 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!153014))))

(declare-fun resIndex!52 () (_ BitVec 32))

(assert (=> b!312271 (= lt!153014 (Intermediate!2714 false resIndex!52 resX!52))))

(declare-fun b!312272 () Bool)

(assert (=> b!312272 (= e!194723 (bvsge mask!3709 #b00000000000000000000000000000000))))

(assert (=> b!312272 (= lt!153010 lt!153011)))

(declare-datatypes ((Unit!9626 0))(
  ( (Unit!9627) )
))
(declare-fun lt!153012 () Unit!9626)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 (array!15966 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!9626)

(assert (=> b!312272 (= lt!153012 (lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 a!3293 i!1240 k!2441 (bvadd #b00000000000000000000000000000001 x!1427) lt!153017 resIndex!52 resX!52 mask!3709))))

(declare-fun b!312273 () Bool)

(declare-fun res!168881 () Bool)

(assert (=> b!312273 (=> (not res!168881) (not e!194722))))

(assert (=> b!312273 (= res!168881 (and (= (select (arr!7563 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7915 a!3293))))))

(declare-fun b!312270 () Bool)

(declare-fun res!168877 () Bool)

(assert (=> b!312270 (=> (not res!168877) (not e!194721))))

(declare-fun arrayContainsKey!0 (array!15966 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!312270 (= res!168877 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun res!168884 () Bool)

(assert (=> start!31066 (=> (not res!168884) (not e!194721))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31066 (= res!168884 (validMask!0 mask!3709))))

(assert (=> start!31066 e!194721))

(declare-fun array_inv!5517 (array!15966) Bool)

(assert (=> start!31066 (array_inv!5517 a!3293)))

(assert (=> start!31066 true))

(assert (= (and start!31066 res!168884) b!312268))

(assert (= (and b!312268 res!168885) b!312269))

(assert (= (and b!312269 res!168878) b!312270))

(assert (= (and b!312270 res!168877) b!312265))

(assert (= (and b!312265 res!168883) b!312266))

(assert (= (and b!312266 res!168880) b!312271))

(assert (= (and b!312271 res!168882) b!312273))

(assert (= (and b!312273 res!168881) b!312267))

(assert (= (and b!312267 res!168876) b!312264))

(assert (= (and b!312264 (not res!168879)) b!312272))

(declare-fun m!322395 () Bool)

(assert (=> b!312270 m!322395))

(declare-fun m!322397 () Bool)

(assert (=> b!312266 m!322397))

(declare-fun m!322399 () Bool)

(assert (=> b!312265 m!322399))

(declare-fun m!322401 () Bool)

(assert (=> b!312271 m!322401))

(assert (=> b!312271 m!322401))

(declare-fun m!322403 () Bool)

(assert (=> b!312271 m!322403))

(declare-fun m!322405 () Bool)

(assert (=> b!312267 m!322405))

(declare-fun m!322407 () Bool)

(assert (=> b!312267 m!322407))

(declare-fun m!322409 () Bool)

(assert (=> start!31066 m!322409))

(declare-fun m!322411 () Bool)

(assert (=> start!31066 m!322411))

(declare-fun m!322413 () Bool)

(assert (=> b!312273 m!322413))

(declare-fun m!322415 () Bool)

(assert (=> b!312269 m!322415))

(declare-fun m!322417 () Bool)

(assert (=> b!312264 m!322417))

(declare-fun m!322419 () Bool)

(assert (=> b!312264 m!322419))

(declare-fun m!322421 () Bool)

(assert (=> b!312264 m!322421))

(declare-fun m!322423 () Bool)

(assert (=> b!312264 m!322423))

(declare-fun m!322425 () Bool)

(assert (=> b!312264 m!322425))

(declare-fun m!322427 () Bool)

(assert (=> b!312272 m!322427))

(push 1)

(assert (not start!31066))

(assert (not b!312272))

(assert (not b!312266))

(assert (not b!312264))

(assert (not b!312271))

(assert (not b!312270))

(assert (not b!312265))

(assert (not b!312269))

(assert (not b!312267))

