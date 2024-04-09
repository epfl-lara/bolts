; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45706 () Bool)

(assert start!45706)

(declare-fun b!504481 () Bool)

(declare-datatypes ((Unit!15338 0))(
  ( (Unit!15339) )
))
(declare-fun e!295372 () Unit!15338)

(declare-fun Unit!15340 () Unit!15338)

(assert (=> b!504481 (= e!295372 Unit!15340)))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!32422 0))(
  ( (array!32423 (arr!15588 (Array (_ BitVec 32) (_ BitVec 64))) (size!15952 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32422)

(declare-fun lt!229795 () Unit!15338)

(declare-datatypes ((SeekEntryResult!4062 0))(
  ( (MissingZero!4062 (index!18436 (_ BitVec 32))) (Found!4062 (index!18437 (_ BitVec 32))) (Intermediate!4062 (undefined!4874 Bool) (index!18438 (_ BitVec 32)) (x!47482 (_ BitVec 32))) (Undefined!4062) (MissingVacant!4062 (index!18439 (_ BitVec 32))) )
))
(declare-fun lt!229787 () SeekEntryResult!4062)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lt!229788 () (_ BitVec 32))

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32422 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15338)

(assert (=> b!504481 (= lt!229795 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!229788 #b00000000000000000000000000000000 (index!18438 lt!229787) (x!47482 lt!229787) mask!3524))))

(declare-fun lt!229791 () array!32422)

(declare-fun lt!229792 () (_ BitVec 64))

(declare-fun res!305789 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32422 (_ BitVec 32)) SeekEntryResult!4062)

(assert (=> b!504481 (= res!305789 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!229788 lt!229792 lt!229791 mask!3524) (Intermediate!4062 false (index!18438 lt!229787) (x!47482 lt!229787))))))

(declare-fun e!295375 () Bool)

(assert (=> b!504481 (=> (not res!305789) (not e!295375))))

(assert (=> b!504481 e!295375))

(declare-fun b!504482 () Bool)

(declare-fun e!295376 () Bool)

(declare-fun e!295374 () Bool)

(assert (=> b!504482 (= e!295376 (not e!295374))))

(declare-fun res!305795 () Bool)

(assert (=> b!504482 (=> res!305795 e!295374)))

(declare-fun lt!229796 () (_ BitVec 32))

(assert (=> b!504482 (= res!305795 (= lt!229787 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!229796 lt!229792 lt!229791 mask!3524)))))

(assert (=> b!504482 (= lt!229787 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!229788 (select (arr!15588 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!504482 (= lt!229796 (toIndex!0 lt!229792 mask!3524))))

(assert (=> b!504482 (= lt!229792 (select (store (arr!15588 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!504482 (= lt!229788 (toIndex!0 (select (arr!15588 a!3235) j!176) mask!3524))))

(assert (=> b!504482 (= lt!229791 (array!32423 (store (arr!15588 a!3235) i!1204 k!2280) (size!15952 a!3235)))))

(declare-fun e!295373 () Bool)

(assert (=> b!504482 e!295373))

(declare-fun res!305786 () Bool)

(assert (=> b!504482 (=> (not res!305786) (not e!295373))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32422 (_ BitVec 32)) Bool)

(assert (=> b!504482 (= res!305786 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!229790 () Unit!15338)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32422 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15338)

(assert (=> b!504482 (= lt!229790 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!504483 () Bool)

(declare-fun res!305785 () Bool)

(assert (=> b!504483 (=> (not res!305785) (not e!295376))))

(assert (=> b!504483 (= res!305785 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!504484 () Bool)

(declare-fun res!305794 () Bool)

(declare-fun e!295370 () Bool)

(assert (=> b!504484 (=> (not res!305794) (not e!295370))))

(declare-fun arrayContainsKey!0 (array!32422 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!504484 (= res!305794 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!504485 () Bool)

(declare-fun res!305796 () Bool)

(assert (=> b!504485 (=> (not res!305796) (not e!295370))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!504485 (= res!305796 (validKeyInArray!0 (select (arr!15588 a!3235) j!176)))))

(declare-fun b!504486 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32422 (_ BitVec 32)) SeekEntryResult!4062)

(assert (=> b!504486 (= e!295373 (= (seekEntryOrOpen!0 (select (arr!15588 a!3235) j!176) a!3235 mask!3524) (Found!4062 j!176)))))

(declare-fun b!504487 () Bool)

(declare-fun e!295378 () Bool)

(assert (=> b!504487 (= e!295378 true)))

(declare-fun lt!229794 () SeekEntryResult!4062)

(assert (=> b!504487 (= lt!229794 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!229788 lt!229792 lt!229791 mask!3524))))

(declare-fun b!504488 () Bool)

(declare-fun res!305798 () Bool)

(assert (=> b!504488 (=> (not res!305798) (not e!295376))))

(declare-datatypes ((List!9799 0))(
  ( (Nil!9796) (Cons!9795 (h!10672 (_ BitVec 64)) (t!16035 List!9799)) )
))
(declare-fun arrayNoDuplicates!0 (array!32422 (_ BitVec 32) List!9799) Bool)

(assert (=> b!504488 (= res!305798 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9796))))

(declare-fun b!504489 () Bool)

(assert (=> b!504489 (= e!295374 e!295378)))

(declare-fun res!305797 () Bool)

(assert (=> b!504489 (=> res!305797 e!295378)))

(assert (=> b!504489 (= res!305797 (or (bvsgt (x!47482 lt!229787) #b01111111111111111111111111111110) (bvslt lt!229788 #b00000000000000000000000000000000) (bvsge lt!229788 (size!15952 a!3235)) (bvslt (index!18438 lt!229787) #b00000000000000000000000000000000) (bvsge (index!18438 lt!229787) (size!15952 a!3235)) (not (= lt!229787 (Intermediate!4062 false (index!18438 lt!229787) (x!47482 lt!229787))))))))

(assert (=> b!504489 (= (index!18438 lt!229787) i!1204)))

(declare-fun lt!229789 () Unit!15338)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!32422 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15338)

(assert (=> b!504489 (= lt!229789 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!229788 #b00000000000000000000000000000000 (index!18438 lt!229787) (x!47482 lt!229787) mask!3524))))

(assert (=> b!504489 (and (or (= (select (arr!15588 a!3235) (index!18438 lt!229787)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15588 a!3235) (index!18438 lt!229787)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15588 a!3235) (index!18438 lt!229787)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15588 a!3235) (index!18438 lt!229787)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!229793 () Unit!15338)

(assert (=> b!504489 (= lt!229793 e!295372)))

(declare-fun c!59627 () Bool)

(assert (=> b!504489 (= c!59627 (= (select (arr!15588 a!3235) (index!18438 lt!229787)) (select (arr!15588 a!3235) j!176)))))

(assert (=> b!504489 (and (bvslt (x!47482 lt!229787) #b01111111111111111111111111111110) (or (= (select (arr!15588 a!3235) (index!18438 lt!229787)) (select (arr!15588 a!3235) j!176)) (= (select (arr!15588 a!3235) (index!18438 lt!229787)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15588 a!3235) (index!18438 lt!229787)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!305791 () Bool)

(assert (=> start!45706 (=> (not res!305791) (not e!295370))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45706 (= res!305791 (validMask!0 mask!3524))))

(assert (=> start!45706 e!295370))

(assert (=> start!45706 true))

(declare-fun array_inv!11362 (array!32422) Bool)

(assert (=> start!45706 (array_inv!11362 a!3235)))

(declare-fun b!504490 () Bool)

(assert (=> b!504490 (= e!295370 e!295376)))

(declare-fun res!305792 () Bool)

(assert (=> b!504490 (=> (not res!305792) (not e!295376))))

(declare-fun lt!229786 () SeekEntryResult!4062)

(assert (=> b!504490 (= res!305792 (or (= lt!229786 (MissingZero!4062 i!1204)) (= lt!229786 (MissingVacant!4062 i!1204))))))

(assert (=> b!504490 (= lt!229786 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!504491 () Bool)

(declare-fun res!305790 () Bool)

(assert (=> b!504491 (=> res!305790 e!295374)))

(assert (=> b!504491 (= res!305790 (or (undefined!4874 lt!229787) (not (is-Intermediate!4062 lt!229787))))))

(declare-fun b!504492 () Bool)

(assert (=> b!504492 (= e!295375 false)))

(declare-fun b!504493 () Bool)

(declare-fun res!305788 () Bool)

(assert (=> b!504493 (=> res!305788 e!295378)))

(declare-fun e!295371 () Bool)

(assert (=> b!504493 (= res!305788 e!295371)))

(declare-fun res!305784 () Bool)

(assert (=> b!504493 (=> (not res!305784) (not e!295371))))

(assert (=> b!504493 (= res!305784 (bvsgt #b00000000000000000000000000000000 (x!47482 lt!229787)))))

(declare-fun b!504494 () Bool)

(declare-fun res!305793 () Bool)

(assert (=> b!504494 (=> (not res!305793) (not e!295370))))

(assert (=> b!504494 (= res!305793 (and (= (size!15952 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15952 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15952 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!504495 () Bool)

(declare-fun Unit!15341 () Unit!15338)

(assert (=> b!504495 (= e!295372 Unit!15341)))

(declare-fun b!504496 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32422 (_ BitVec 32)) SeekEntryResult!4062)

(assert (=> b!504496 (= e!295371 (not (= (seekKeyOrZeroReturnVacant!0 #b00000000000000000000000000000000 lt!229788 (index!18438 lt!229787) (select (arr!15588 a!3235) j!176) a!3235 mask!3524) (Found!4062 j!176))))))

(declare-fun b!504497 () Bool)

(declare-fun res!305787 () Bool)

(assert (=> b!504497 (=> (not res!305787) (not e!295370))))

(assert (=> b!504497 (= res!305787 (validKeyInArray!0 k!2280))))

(assert (= (and start!45706 res!305791) b!504494))

(assert (= (and b!504494 res!305793) b!504485))

(assert (= (and b!504485 res!305796) b!504497))

(assert (= (and b!504497 res!305787) b!504484))

(assert (= (and b!504484 res!305794) b!504490))

(assert (= (and b!504490 res!305792) b!504483))

(assert (= (and b!504483 res!305785) b!504488))

(assert (= (and b!504488 res!305798) b!504482))

(assert (= (and b!504482 res!305786) b!504486))

(assert (= (and b!504482 (not res!305795)) b!504491))

(assert (= (and b!504491 (not res!305790)) b!504489))

(assert (= (and b!504489 c!59627) b!504481))

(assert (= (and b!504489 (not c!59627)) b!504495))

(assert (= (and b!504481 res!305789) b!504492))

(assert (= (and b!504489 (not res!305797)) b!504493))

(assert (= (and b!504493 res!305784) b!504496))

(assert (= (and b!504493 (not res!305788)) b!504487))

(declare-fun m!485233 () Bool)

(assert (=> b!504484 m!485233))

(declare-fun m!485235 () Bool)

(assert (=> start!45706 m!485235))

(declare-fun m!485237 () Bool)

(assert (=> start!45706 m!485237))

(declare-fun m!485239 () Bool)

(assert (=> b!504486 m!485239))

(assert (=> b!504486 m!485239))

(declare-fun m!485241 () Bool)

(assert (=> b!504486 m!485241))

(declare-fun m!485243 () Bool)

(assert (=> b!504490 m!485243))

(declare-fun m!485245 () Bool)

(assert (=> b!504487 m!485245))

(declare-fun m!485247 () Bool)

(assert (=> b!504483 m!485247))

(assert (=> b!504496 m!485239))

(assert (=> b!504496 m!485239))

(declare-fun m!485249 () Bool)

(assert (=> b!504496 m!485249))

(assert (=> b!504485 m!485239))

(assert (=> b!504485 m!485239))

(declare-fun m!485251 () Bool)

(assert (=> b!504485 m!485251))

(declare-fun m!485253 () Bool)

(assert (=> b!504489 m!485253))

(declare-fun m!485255 () Bool)

(assert (=> b!504489 m!485255))

(assert (=> b!504489 m!485239))

(declare-fun m!485257 () Bool)

(assert (=> b!504481 m!485257))

(assert (=> b!504481 m!485245))

(declare-fun m!485259 () Bool)

(assert (=> b!504482 m!485259))

(declare-fun m!485261 () Bool)

(assert (=> b!504482 m!485261))

(declare-fun m!485263 () Bool)

(assert (=> b!504482 m!485263))

(declare-fun m!485265 () Bool)

(assert (=> b!504482 m!485265))

(declare-fun m!485267 () Bool)

(assert (=> b!504482 m!485267))

(declare-fun m!485269 () Bool)

(assert (=> b!504482 m!485269))

(assert (=> b!504482 m!485239))

(declare-fun m!485271 () Bool)

(assert (=> b!504482 m!485271))

(assert (=> b!504482 m!485239))

(declare-fun m!485273 () Bool)

(assert (=> b!504482 m!485273))

(assert (=> b!504482 m!485239))

(declare-fun m!485275 () Bool)

(assert (=> b!504488 m!485275))

(declare-fun m!485277 () Bool)

(assert (=> b!504497 m!485277))

(push 1)

