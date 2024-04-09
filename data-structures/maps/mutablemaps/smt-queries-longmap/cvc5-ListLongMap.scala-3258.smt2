; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45430 () Bool)

(assert start!45430)

(declare-fun b!499218 () Bool)

(declare-fun res!301338 () Bool)

(declare-fun e!292548 () Bool)

(assert (=> b!499218 (=> (not res!301338) (not e!292548))))

(declare-datatypes ((array!32215 0))(
  ( (array!32216 (arr!15486 (Array (_ BitVec 32) (_ BitVec 64))) (size!15850 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32215)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!499218 (= res!301338 (validKeyInArray!0 (select (arr!15486 a!3235) j!176)))))

(declare-fun e!292549 () Bool)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun b!499219 () Bool)

(declare-datatypes ((SeekEntryResult!3960 0))(
  ( (MissingZero!3960 (index!18022 (_ BitVec 32))) (Found!3960 (index!18023 (_ BitVec 32))) (Intermediate!3960 (undefined!4772 Bool) (index!18024 (_ BitVec 32)) (x!47096 (_ BitVec 32))) (Undefined!3960) (MissingVacant!3960 (index!18025 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32215 (_ BitVec 32)) SeekEntryResult!3960)

(assert (=> b!499219 (= e!292549 (= (seekEntryOrOpen!0 (select (arr!15486 a!3235) j!176) a!3235 mask!3524) (Found!3960 j!176)))))

(declare-fun b!499220 () Bool)

(declare-fun res!301337 () Bool)

(assert (=> b!499220 (=> (not res!301337) (not e!292548))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!32215 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!499220 (= res!301337 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!499221 () Bool)

(declare-fun res!301335 () Bool)

(assert (=> b!499221 (=> (not res!301335) (not e!292548))))

(assert (=> b!499221 (= res!301335 (validKeyInArray!0 k!2280))))

(declare-fun res!301341 () Bool)

(assert (=> start!45430 (=> (not res!301341) (not e!292548))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45430 (= res!301341 (validMask!0 mask!3524))))

(assert (=> start!45430 e!292548))

(assert (=> start!45430 true))

(declare-fun array_inv!11260 (array!32215) Bool)

(assert (=> start!45430 (array_inv!11260 a!3235)))

(declare-fun b!499222 () Bool)

(declare-fun e!292551 () Bool)

(assert (=> b!499222 (= e!292551 false)))

(declare-fun b!499223 () Bool)

(declare-fun res!301342 () Bool)

(declare-fun e!292550 () Bool)

(assert (=> b!499223 (=> res!301342 e!292550)))

(declare-fun lt!226400 () SeekEntryResult!3960)

(assert (=> b!499223 (= res!301342 (or (undefined!4772 lt!226400) (not (is-Intermediate!3960 lt!226400))))))

(declare-fun b!499224 () Bool)

(declare-fun res!301345 () Bool)

(declare-fun e!292554 () Bool)

(assert (=> b!499224 (=> (not res!301345) (not e!292554))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32215 (_ BitVec 32)) Bool)

(assert (=> b!499224 (= res!301345 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!499225 () Bool)

(assert (=> b!499225 (= e!292554 (not e!292550))))

(declare-fun res!301334 () Bool)

(assert (=> b!499225 (=> res!301334 e!292550)))

(declare-fun lt!226395 () (_ BitVec 32))

(declare-fun lt!226399 () array!32215)

(declare-fun lt!226397 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32215 (_ BitVec 32)) SeekEntryResult!3960)

(assert (=> b!499225 (= res!301334 (= lt!226400 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226395 lt!226397 lt!226399 mask!3524)))))

(declare-fun lt!226391 () (_ BitVec 32))

(assert (=> b!499225 (= lt!226400 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226391 (select (arr!15486 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!499225 (= lt!226395 (toIndex!0 lt!226397 mask!3524))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!499225 (= lt!226397 (select (store (arr!15486 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!499225 (= lt!226391 (toIndex!0 (select (arr!15486 a!3235) j!176) mask!3524))))

(assert (=> b!499225 (= lt!226399 (array!32216 (store (arr!15486 a!3235) i!1204 k!2280) (size!15850 a!3235)))))

(assert (=> b!499225 e!292549))

(declare-fun res!301344 () Bool)

(assert (=> b!499225 (=> (not res!301344) (not e!292549))))

(assert (=> b!499225 (= res!301344 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14930 0))(
  ( (Unit!14931) )
))
(declare-fun lt!226392 () Unit!14930)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32215 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14930)

(assert (=> b!499225 (= lt!226392 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!499226 () Bool)

(declare-fun e!292553 () Bool)

(assert (=> b!499226 (= e!292550 e!292553)))

(declare-fun res!301336 () Bool)

(assert (=> b!499226 (=> res!301336 e!292553)))

(assert (=> b!499226 (= res!301336 (or (bvsgt #b00000000000000000000000000000000 (x!47096 lt!226400)) (bvsgt (x!47096 lt!226400) #b01111111111111111111111111111110) (bvslt lt!226391 #b00000000000000000000000000000000) (bvsge lt!226391 (size!15850 a!3235)) (bvslt (index!18024 lt!226400) #b00000000000000000000000000000000) (bvsge (index!18024 lt!226400) (size!15850 a!3235)) (not (= lt!226400 (Intermediate!3960 false (index!18024 lt!226400) (x!47096 lt!226400))))))))

(assert (=> b!499226 (and (or (= (select (arr!15486 a!3235) (index!18024 lt!226400)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15486 a!3235) (index!18024 lt!226400)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15486 a!3235) (index!18024 lt!226400)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15486 a!3235) (index!18024 lt!226400)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!226398 () Unit!14930)

(declare-fun e!292555 () Unit!14930)

(assert (=> b!499226 (= lt!226398 e!292555)))

(declare-fun c!59219 () Bool)

(assert (=> b!499226 (= c!59219 (= (select (arr!15486 a!3235) (index!18024 lt!226400)) (select (arr!15486 a!3235) j!176)))))

(assert (=> b!499226 (and (bvslt (x!47096 lt!226400) #b01111111111111111111111111111110) (or (= (select (arr!15486 a!3235) (index!18024 lt!226400)) (select (arr!15486 a!3235) j!176)) (= (select (arr!15486 a!3235) (index!18024 lt!226400)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15486 a!3235) (index!18024 lt!226400)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!499227 () Bool)

(declare-fun Unit!14932 () Unit!14930)

(assert (=> b!499227 (= e!292555 Unit!14932)))

(declare-fun lt!226393 () Unit!14930)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32215 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14930)

(assert (=> b!499227 (= lt!226393 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!226391 #b00000000000000000000000000000000 (index!18024 lt!226400) (x!47096 lt!226400) mask!3524))))

(declare-fun res!301346 () Bool)

(assert (=> b!499227 (= res!301346 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226391 lt!226397 lt!226399 mask!3524) (Intermediate!3960 false (index!18024 lt!226400) (x!47096 lt!226400))))))

(assert (=> b!499227 (=> (not res!301346) (not e!292551))))

(assert (=> b!499227 e!292551))

(declare-fun b!499228 () Bool)

(assert (=> b!499228 (= e!292548 e!292554)))

(declare-fun res!301339 () Bool)

(assert (=> b!499228 (=> (not res!301339) (not e!292554))))

(declare-fun lt!226394 () SeekEntryResult!3960)

(assert (=> b!499228 (= res!301339 (or (= lt!226394 (MissingZero!3960 i!1204)) (= lt!226394 (MissingVacant!3960 i!1204))))))

(assert (=> b!499228 (= lt!226394 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!499229 () Bool)

(declare-fun res!301343 () Bool)

(assert (=> b!499229 (=> (not res!301343) (not e!292554))))

(declare-datatypes ((List!9697 0))(
  ( (Nil!9694) (Cons!9693 (h!10567 (_ BitVec 64)) (t!15933 List!9697)) )
))
(declare-fun arrayNoDuplicates!0 (array!32215 (_ BitVec 32) List!9697) Bool)

(assert (=> b!499229 (= res!301343 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9694))))

(declare-fun b!499230 () Bool)

(assert (=> b!499230 (= e!292553 true)))

(declare-fun lt!226396 () SeekEntryResult!3960)

(assert (=> b!499230 (= lt!226396 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226391 lt!226397 lt!226399 mask!3524))))

(declare-fun b!499231 () Bool)

(declare-fun res!301340 () Bool)

(assert (=> b!499231 (=> (not res!301340) (not e!292548))))

(assert (=> b!499231 (= res!301340 (and (= (size!15850 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15850 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15850 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!499232 () Bool)

(declare-fun Unit!14933 () Unit!14930)

(assert (=> b!499232 (= e!292555 Unit!14933)))

(assert (= (and start!45430 res!301341) b!499231))

(assert (= (and b!499231 res!301340) b!499218))

(assert (= (and b!499218 res!301338) b!499221))

(assert (= (and b!499221 res!301335) b!499220))

(assert (= (and b!499220 res!301337) b!499228))

(assert (= (and b!499228 res!301339) b!499224))

(assert (= (and b!499224 res!301345) b!499229))

(assert (= (and b!499229 res!301343) b!499225))

(assert (= (and b!499225 res!301344) b!499219))

(assert (= (and b!499225 (not res!301334)) b!499223))

(assert (= (and b!499223 (not res!301342)) b!499226))

(assert (= (and b!499226 c!59219) b!499227))

(assert (= (and b!499226 (not c!59219)) b!499232))

(assert (= (and b!499227 res!301346) b!499222))

(assert (= (and b!499226 (not res!301336)) b!499230))

(declare-fun m!480457 () Bool)

(assert (=> b!499221 m!480457))

(declare-fun m!480459 () Bool)

(assert (=> start!45430 m!480459))

(declare-fun m!480461 () Bool)

(assert (=> start!45430 m!480461))

(declare-fun m!480463 () Bool)

(assert (=> b!499230 m!480463))

(declare-fun m!480465 () Bool)

(assert (=> b!499226 m!480465))

(declare-fun m!480467 () Bool)

(assert (=> b!499226 m!480467))

(assert (=> b!499219 m!480467))

(assert (=> b!499219 m!480467))

(declare-fun m!480469 () Bool)

(assert (=> b!499219 m!480469))

(declare-fun m!480471 () Bool)

(assert (=> b!499229 m!480471))

(declare-fun m!480473 () Bool)

(assert (=> b!499224 m!480473))

(declare-fun m!480475 () Bool)

(assert (=> b!499220 m!480475))

(declare-fun m!480477 () Bool)

(assert (=> b!499227 m!480477))

(assert (=> b!499227 m!480463))

(declare-fun m!480479 () Bool)

(assert (=> b!499228 m!480479))

(assert (=> b!499218 m!480467))

(assert (=> b!499218 m!480467))

(declare-fun m!480481 () Bool)

(assert (=> b!499218 m!480481))

(declare-fun m!480483 () Bool)

(assert (=> b!499225 m!480483))

(declare-fun m!480485 () Bool)

(assert (=> b!499225 m!480485))

(declare-fun m!480487 () Bool)

(assert (=> b!499225 m!480487))

(assert (=> b!499225 m!480467))

(declare-fun m!480489 () Bool)

(assert (=> b!499225 m!480489))

(assert (=> b!499225 m!480467))

(declare-fun m!480491 () Bool)

(assert (=> b!499225 m!480491))

(declare-fun m!480493 () Bool)

(assert (=> b!499225 m!480493))

(declare-fun m!480495 () Bool)

(assert (=> b!499225 m!480495))

(assert (=> b!499225 m!480467))

(declare-fun m!480497 () Bool)

(assert (=> b!499225 m!480497))

(push 1)

