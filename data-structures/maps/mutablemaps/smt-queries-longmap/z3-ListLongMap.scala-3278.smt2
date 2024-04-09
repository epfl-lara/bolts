; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45624 () Bool)

(assert start!45624)

(declare-fun b!502390 () Bool)

(declare-fun res!303939 () Bool)

(declare-fun e!294264 () Bool)

(assert (=> b!502390 (=> (not res!303939) (not e!294264))))

(declare-datatypes ((array!32340 0))(
  ( (array!32341 (arr!15547 (Array (_ BitVec 32) (_ BitVec 64))) (size!15911 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32340)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!502390 (= res!303939 (validKeyInArray!0 (select (arr!15547 a!3235) j!176)))))

(declare-fun b!502391 () Bool)

(declare-fun res!303942 () Bool)

(assert (=> b!502391 (=> (not res!303942) (not e!294264))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!502391 (= res!303942 (and (= (size!15911 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15911 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15911 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!502392 () Bool)

(declare-fun e!294271 () Bool)

(declare-fun e!294266 () Bool)

(assert (=> b!502392 (= e!294271 e!294266)))

(declare-fun res!303952 () Bool)

(assert (=> b!502392 (=> res!303952 e!294266)))

(declare-fun lt!228440 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4021 0))(
  ( (MissingZero!4021 (index!18272 (_ BitVec 32))) (Found!4021 (index!18273 (_ BitVec 32))) (Intermediate!4021 (undefined!4833 Bool) (index!18274 (_ BitVec 32)) (x!47329 (_ BitVec 32))) (Undefined!4021) (MissingVacant!4021 (index!18275 (_ BitVec 32))) )
))
(declare-fun lt!228437 () SeekEntryResult!4021)

(assert (=> b!502392 (= res!303952 (or (bvsgt (x!47329 lt!228437) #b01111111111111111111111111111110) (bvslt lt!228440 #b00000000000000000000000000000000) (bvsge lt!228440 (size!15911 a!3235)) (bvslt (index!18274 lt!228437) #b00000000000000000000000000000000) (bvsge (index!18274 lt!228437) (size!15911 a!3235)) (not (= lt!228437 (Intermediate!4021 false (index!18274 lt!228437) (x!47329 lt!228437))))))))

(assert (=> b!502392 (= (index!18274 lt!228437) i!1204)))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-datatypes ((Unit!15174 0))(
  ( (Unit!15175) )
))
(declare-fun lt!228439 () Unit!15174)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!32340 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15174)

(assert (=> b!502392 (= lt!228439 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k0!2280 j!176 lt!228440 #b00000000000000000000000000000000 (index!18274 lt!228437) (x!47329 lt!228437) mask!3524))))

(assert (=> b!502392 (and (or (= (select (arr!15547 a!3235) (index!18274 lt!228437)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15547 a!3235) (index!18274 lt!228437)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15547 a!3235) (index!18274 lt!228437)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15547 a!3235) (index!18274 lt!228437)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!228433 () Unit!15174)

(declare-fun e!294267 () Unit!15174)

(assert (=> b!502392 (= lt!228433 e!294267)))

(declare-fun c!59504 () Bool)

(assert (=> b!502392 (= c!59504 (= (select (arr!15547 a!3235) (index!18274 lt!228437)) (select (arr!15547 a!3235) j!176)))))

(assert (=> b!502392 (and (bvslt (x!47329 lt!228437) #b01111111111111111111111111111110) (or (= (select (arr!15547 a!3235) (index!18274 lt!228437)) (select (arr!15547 a!3235) j!176)) (= (select (arr!15547 a!3235) (index!18274 lt!228437)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15547 a!3235) (index!18274 lt!228437)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!502393 () Bool)

(declare-fun res!303949 () Bool)

(declare-fun e!294265 () Bool)

(assert (=> b!502393 (=> (not res!303949) (not e!294265))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32340 (_ BitVec 32)) Bool)

(assert (=> b!502393 (= res!303949 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!502394 () Bool)

(declare-fun res!303950 () Bool)

(assert (=> b!502394 (=> res!303950 e!294271)))

(get-info :version)

(assert (=> b!502394 (= res!303950 (or (undefined!4833 lt!228437) (not ((_ is Intermediate!4021) lt!228437))))))

(declare-fun b!502395 () Bool)

(declare-fun e!294268 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32340 (_ BitVec 32)) SeekEntryResult!4021)

(assert (=> b!502395 (= e!294268 (not (= (seekKeyOrZeroReturnVacant!0 #b00000000000000000000000000000000 lt!228440 (index!18274 lt!228437) (select (arr!15547 a!3235) j!176) a!3235 mask!3524) (Found!4021 j!176))))))

(declare-fun b!502396 () Bool)

(assert (=> b!502396 (= e!294266 true)))

(declare-fun lt!228443 () array!32340)

(declare-fun lt!228438 () SeekEntryResult!4021)

(declare-fun lt!228434 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32340 (_ BitVec 32)) SeekEntryResult!4021)

(assert (=> b!502396 (= lt!228438 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228440 lt!228434 lt!228443 mask!3524))))

(declare-fun b!502397 () Bool)

(assert (=> b!502397 (= e!294264 e!294265)))

(declare-fun res!303945 () Bool)

(assert (=> b!502397 (=> (not res!303945) (not e!294265))))

(declare-fun lt!228441 () SeekEntryResult!4021)

(assert (=> b!502397 (= res!303945 (or (= lt!228441 (MissingZero!4021 i!1204)) (= lt!228441 (MissingVacant!4021 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32340 (_ BitVec 32)) SeekEntryResult!4021)

(assert (=> b!502397 (= lt!228441 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!502399 () Bool)

(declare-fun res!303953 () Bool)

(assert (=> b!502399 (=> res!303953 e!294266)))

(assert (=> b!502399 (= res!303953 e!294268)))

(declare-fun res!303944 () Bool)

(assert (=> b!502399 (=> (not res!303944) (not e!294268))))

(assert (=> b!502399 (= res!303944 (bvsgt #b00000000000000000000000000000000 (x!47329 lt!228437)))))

(declare-fun b!502400 () Bool)

(assert (=> b!502400 (= e!294265 (not e!294271))))

(declare-fun res!303947 () Bool)

(assert (=> b!502400 (=> res!303947 e!294271)))

(declare-fun lt!228436 () (_ BitVec 32))

(assert (=> b!502400 (= res!303947 (= lt!228437 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228436 lt!228434 lt!228443 mask!3524)))))

(assert (=> b!502400 (= lt!228437 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228440 (select (arr!15547 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!502400 (= lt!228436 (toIndex!0 lt!228434 mask!3524))))

(assert (=> b!502400 (= lt!228434 (select (store (arr!15547 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!502400 (= lt!228440 (toIndex!0 (select (arr!15547 a!3235) j!176) mask!3524))))

(assert (=> b!502400 (= lt!228443 (array!32341 (store (arr!15547 a!3235) i!1204 k0!2280) (size!15911 a!3235)))))

(declare-fun e!294263 () Bool)

(assert (=> b!502400 e!294263))

(declare-fun res!303946 () Bool)

(assert (=> b!502400 (=> (not res!303946) (not e!294263))))

(assert (=> b!502400 (= res!303946 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!228442 () Unit!15174)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32340 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15174)

(assert (=> b!502400 (= lt!228442 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!502401 () Bool)

(declare-fun e!294270 () Bool)

(assert (=> b!502401 (= e!294270 false)))

(declare-fun b!502402 () Bool)

(declare-fun Unit!15176 () Unit!15174)

(assert (=> b!502402 (= e!294267 Unit!15176)))

(declare-fun lt!228435 () Unit!15174)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32340 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15174)

(assert (=> b!502402 (= lt!228435 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!228440 #b00000000000000000000000000000000 (index!18274 lt!228437) (x!47329 lt!228437) mask!3524))))

(declare-fun res!303943 () Bool)

(assert (=> b!502402 (= res!303943 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228440 lt!228434 lt!228443 mask!3524) (Intermediate!4021 false (index!18274 lt!228437) (x!47329 lt!228437))))))

(assert (=> b!502402 (=> (not res!303943) (not e!294270))))

(assert (=> b!502402 e!294270))

(declare-fun b!502403 () Bool)

(declare-fun res!303941 () Bool)

(assert (=> b!502403 (=> (not res!303941) (not e!294265))))

(declare-datatypes ((List!9758 0))(
  ( (Nil!9755) (Cons!9754 (h!10631 (_ BitVec 64)) (t!15994 List!9758)) )
))
(declare-fun arrayNoDuplicates!0 (array!32340 (_ BitVec 32) List!9758) Bool)

(assert (=> b!502403 (= res!303941 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9755))))

(declare-fun b!502404 () Bool)

(declare-fun Unit!15177 () Unit!15174)

(assert (=> b!502404 (= e!294267 Unit!15177)))

(declare-fun b!502405 () Bool)

(declare-fun res!303940 () Bool)

(assert (=> b!502405 (=> (not res!303940) (not e!294264))))

(declare-fun arrayContainsKey!0 (array!32340 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!502405 (= res!303940 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!502406 () Bool)

(declare-fun res!303948 () Bool)

(assert (=> b!502406 (=> (not res!303948) (not e!294264))))

(assert (=> b!502406 (= res!303948 (validKeyInArray!0 k0!2280))))

(declare-fun res!303951 () Bool)

(assert (=> start!45624 (=> (not res!303951) (not e!294264))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45624 (= res!303951 (validMask!0 mask!3524))))

(assert (=> start!45624 e!294264))

(assert (=> start!45624 true))

(declare-fun array_inv!11321 (array!32340) Bool)

(assert (=> start!45624 (array_inv!11321 a!3235)))

(declare-fun b!502398 () Bool)

(assert (=> b!502398 (= e!294263 (= (seekEntryOrOpen!0 (select (arr!15547 a!3235) j!176) a!3235 mask!3524) (Found!4021 j!176)))))

(assert (= (and start!45624 res!303951) b!502391))

(assert (= (and b!502391 res!303942) b!502390))

(assert (= (and b!502390 res!303939) b!502406))

(assert (= (and b!502406 res!303948) b!502405))

(assert (= (and b!502405 res!303940) b!502397))

(assert (= (and b!502397 res!303945) b!502393))

(assert (= (and b!502393 res!303949) b!502403))

(assert (= (and b!502403 res!303941) b!502400))

(assert (= (and b!502400 res!303946) b!502398))

(assert (= (and b!502400 (not res!303947)) b!502394))

(assert (= (and b!502394 (not res!303950)) b!502392))

(assert (= (and b!502392 c!59504) b!502402))

(assert (= (and b!502392 (not c!59504)) b!502404))

(assert (= (and b!502402 res!303943) b!502401))

(assert (= (and b!502392 (not res!303952)) b!502399))

(assert (= (and b!502399 res!303944) b!502395))

(assert (= (and b!502399 (not res!303953)) b!502396))

(declare-fun m!483347 () Bool)

(assert (=> b!502406 m!483347))

(declare-fun m!483349 () Bool)

(assert (=> b!502392 m!483349))

(declare-fun m!483351 () Bool)

(assert (=> b!502392 m!483351))

(declare-fun m!483353 () Bool)

(assert (=> b!502392 m!483353))

(assert (=> b!502395 m!483353))

(assert (=> b!502395 m!483353))

(declare-fun m!483355 () Bool)

(assert (=> b!502395 m!483355))

(declare-fun m!483357 () Bool)

(assert (=> b!502396 m!483357))

(declare-fun m!483359 () Bool)

(assert (=> b!502405 m!483359))

(assert (=> b!502398 m!483353))

(assert (=> b!502398 m!483353))

(declare-fun m!483361 () Bool)

(assert (=> b!502398 m!483361))

(declare-fun m!483363 () Bool)

(assert (=> b!502397 m!483363))

(declare-fun m!483365 () Bool)

(assert (=> b!502402 m!483365))

(assert (=> b!502402 m!483357))

(declare-fun m!483367 () Bool)

(assert (=> b!502393 m!483367))

(declare-fun m!483369 () Bool)

(assert (=> start!45624 m!483369))

(declare-fun m!483371 () Bool)

(assert (=> start!45624 m!483371))

(assert (=> b!502390 m!483353))

(assert (=> b!502390 m!483353))

(declare-fun m!483373 () Bool)

(assert (=> b!502390 m!483373))

(declare-fun m!483375 () Bool)

(assert (=> b!502403 m!483375))

(declare-fun m!483377 () Bool)

(assert (=> b!502400 m!483377))

(declare-fun m!483379 () Bool)

(assert (=> b!502400 m!483379))

(declare-fun m!483381 () Bool)

(assert (=> b!502400 m!483381))

(declare-fun m!483383 () Bool)

(assert (=> b!502400 m!483383))

(assert (=> b!502400 m!483353))

(declare-fun m!483385 () Bool)

(assert (=> b!502400 m!483385))

(assert (=> b!502400 m!483353))

(declare-fun m!483387 () Bool)

(assert (=> b!502400 m!483387))

(assert (=> b!502400 m!483353))

(declare-fun m!483389 () Bool)

(assert (=> b!502400 m!483389))

(declare-fun m!483391 () Bool)

(assert (=> b!502400 m!483391))

(check-sat (not b!502403) (not b!502398) (not b!502405) (not b!502392) (not b!502400) (not b!502396) (not b!502395) (not start!45624) (not b!502390) (not b!502402) (not b!502397) (not b!502393) (not b!502406))
(check-sat)
