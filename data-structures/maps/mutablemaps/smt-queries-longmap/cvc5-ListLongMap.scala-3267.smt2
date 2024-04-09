; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45484 () Bool)

(assert start!45484)

(declare-fun b!500433 () Bool)

(declare-fun res!302397 () Bool)

(declare-fun e!293197 () Bool)

(assert (=> b!500433 (=> res!302397 e!293197)))

(declare-datatypes ((SeekEntryResult!3987 0))(
  ( (MissingZero!3987 (index!18130 (_ BitVec 32))) (Found!3987 (index!18131 (_ BitVec 32))) (Intermediate!3987 (undefined!4799 Bool) (index!18132 (_ BitVec 32)) (x!47195 (_ BitVec 32))) (Undefined!3987) (MissingVacant!3987 (index!18133 (_ BitVec 32))) )
))
(declare-fun lt!227203 () SeekEntryResult!3987)

(assert (=> b!500433 (= res!302397 (or (undefined!4799 lt!227203) (not (is-Intermediate!3987 lt!227203))))))

(declare-fun b!500434 () Bool)

(declare-fun e!293199 () Bool)

(assert (=> b!500434 (= e!293199 (not e!293197))))

(declare-fun res!302388 () Bool)

(assert (=> b!500434 (=> res!302388 e!293197)))

(declare-datatypes ((array!32269 0))(
  ( (array!32270 (arr!15513 (Array (_ BitVec 32) (_ BitVec 64))) (size!15877 (_ BitVec 32))) )
))
(declare-fun lt!227210 () array!32269)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun lt!227205 () (_ BitVec 32))

(declare-fun lt!227201 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32269 (_ BitVec 32)) SeekEntryResult!3987)

(assert (=> b!500434 (= res!302388 (= lt!227203 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!227205 lt!227201 lt!227210 mask!3524)))))

(declare-fun a!3235 () array!32269)

(declare-fun lt!227208 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!500434 (= lt!227203 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!227208 (select (arr!15513 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!500434 (= lt!227205 (toIndex!0 lt!227201 mask!3524))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!500434 (= lt!227201 (select (store (arr!15513 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!500434 (= lt!227208 (toIndex!0 (select (arr!15513 a!3235) j!176) mask!3524))))

(assert (=> b!500434 (= lt!227210 (array!32270 (store (arr!15513 a!3235) i!1204 k!2280) (size!15877 a!3235)))))

(declare-fun e!293200 () Bool)

(assert (=> b!500434 e!293200))

(declare-fun res!302396 () Bool)

(assert (=> b!500434 (=> (not res!302396) (not e!293200))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32269 (_ BitVec 32)) Bool)

(assert (=> b!500434 (= res!302396 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15038 0))(
  ( (Unit!15039) )
))
(declare-fun lt!227209 () Unit!15038)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32269 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15038)

(assert (=> b!500434 (= lt!227209 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!500436 () Bool)

(declare-fun res!302389 () Bool)

(declare-fun e!293198 () Bool)

(assert (=> b!500436 (=> (not res!302389) (not e!293198))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!500436 (= res!302389 (validKeyInArray!0 (select (arr!15513 a!3235) j!176)))))

(declare-fun b!500437 () Bool)

(declare-fun res!302392 () Bool)

(assert (=> b!500437 (=> (not res!302392) (not e!293198))))

(assert (=> b!500437 (= res!302392 (validKeyInArray!0 k!2280))))

(declare-fun b!500438 () Bool)

(assert (=> b!500438 (= e!293198 e!293199)))

(declare-fun res!302398 () Bool)

(assert (=> b!500438 (=> (not res!302398) (not e!293199))))

(declare-fun lt!227204 () SeekEntryResult!3987)

(assert (=> b!500438 (= res!302398 (or (= lt!227204 (MissingZero!3987 i!1204)) (= lt!227204 (MissingVacant!3987 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32269 (_ BitVec 32)) SeekEntryResult!3987)

(assert (=> b!500438 (= lt!227204 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!500439 () Bool)

(declare-fun e!293203 () Unit!15038)

(declare-fun Unit!15040 () Unit!15038)

(assert (=> b!500439 (= e!293203 Unit!15040)))

(declare-fun b!500440 () Bool)

(declare-fun e!293196 () Bool)

(assert (=> b!500440 (= e!293196 false)))

(declare-fun b!500441 () Bool)

(declare-fun e!293202 () Bool)

(assert (=> b!500441 (= e!293197 e!293202)))

(declare-fun res!302387 () Bool)

(assert (=> b!500441 (=> res!302387 e!293202)))

(assert (=> b!500441 (= res!302387 (or (bvsgt #b00000000000000000000000000000000 (x!47195 lt!227203)) (bvsgt (x!47195 lt!227203) #b01111111111111111111111111111110) (bvslt lt!227208 #b00000000000000000000000000000000) (bvsge lt!227208 (size!15877 a!3235)) (bvslt (index!18132 lt!227203) #b00000000000000000000000000000000) (bvsge (index!18132 lt!227203) (size!15877 a!3235)) (not (= lt!227203 (Intermediate!3987 false (index!18132 lt!227203) (x!47195 lt!227203))))))))

(assert (=> b!500441 (and (or (= (select (arr!15513 a!3235) (index!18132 lt!227203)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15513 a!3235) (index!18132 lt!227203)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15513 a!3235) (index!18132 lt!227203)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15513 a!3235) (index!18132 lt!227203)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!227207 () Unit!15038)

(assert (=> b!500441 (= lt!227207 e!293203)))

(declare-fun c!59300 () Bool)

(assert (=> b!500441 (= c!59300 (= (select (arr!15513 a!3235) (index!18132 lt!227203)) (select (arr!15513 a!3235) j!176)))))

(assert (=> b!500441 (and (bvslt (x!47195 lt!227203) #b01111111111111111111111111111110) (or (= (select (arr!15513 a!3235) (index!18132 lt!227203)) (select (arr!15513 a!3235) j!176)) (= (select (arr!15513 a!3235) (index!18132 lt!227203)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15513 a!3235) (index!18132 lt!227203)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!500442 () Bool)

(declare-fun res!302391 () Bool)

(assert (=> b!500442 (=> (not res!302391) (not e!293198))))

(declare-fun arrayContainsKey!0 (array!32269 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!500442 (= res!302391 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!500443 () Bool)

(declare-fun res!302394 () Bool)

(assert (=> b!500443 (=> (not res!302394) (not e!293199))))

(assert (=> b!500443 (= res!302394 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!500444 () Bool)

(assert (=> b!500444 (= e!293200 (= (seekEntryOrOpen!0 (select (arr!15513 a!3235) j!176) a!3235 mask!3524) (Found!3987 j!176)))))

(declare-fun b!500445 () Bool)

(assert (=> b!500445 (= e!293202 true)))

(declare-fun lt!227202 () SeekEntryResult!3987)

(assert (=> b!500445 (= lt!227202 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!227208 lt!227201 lt!227210 mask!3524))))

(declare-fun res!302393 () Bool)

(assert (=> start!45484 (=> (not res!302393) (not e!293198))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45484 (= res!302393 (validMask!0 mask!3524))))

(assert (=> start!45484 e!293198))

(assert (=> start!45484 true))

(declare-fun array_inv!11287 (array!32269) Bool)

(assert (=> start!45484 (array_inv!11287 a!3235)))

(declare-fun b!500435 () Bool)

(declare-fun Unit!15041 () Unit!15038)

(assert (=> b!500435 (= e!293203 Unit!15041)))

(declare-fun lt!227206 () Unit!15038)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32269 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15038)

(assert (=> b!500435 (= lt!227206 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!227208 #b00000000000000000000000000000000 (index!18132 lt!227203) (x!47195 lt!227203) mask!3524))))

(declare-fun res!302390 () Bool)

(assert (=> b!500435 (= res!302390 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!227208 lt!227201 lt!227210 mask!3524) (Intermediate!3987 false (index!18132 lt!227203) (x!47195 lt!227203))))))

(assert (=> b!500435 (=> (not res!302390) (not e!293196))))

(assert (=> b!500435 e!293196))

(declare-fun b!500446 () Bool)

(declare-fun res!302395 () Bool)

(assert (=> b!500446 (=> (not res!302395) (not e!293198))))

(assert (=> b!500446 (= res!302395 (and (= (size!15877 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15877 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15877 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!500447 () Bool)

(declare-fun res!302399 () Bool)

(assert (=> b!500447 (=> (not res!302399) (not e!293199))))

(declare-datatypes ((List!9724 0))(
  ( (Nil!9721) (Cons!9720 (h!10594 (_ BitVec 64)) (t!15960 List!9724)) )
))
(declare-fun arrayNoDuplicates!0 (array!32269 (_ BitVec 32) List!9724) Bool)

(assert (=> b!500447 (= res!302399 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9721))))

(assert (= (and start!45484 res!302393) b!500446))

(assert (= (and b!500446 res!302395) b!500436))

(assert (= (and b!500436 res!302389) b!500437))

(assert (= (and b!500437 res!302392) b!500442))

(assert (= (and b!500442 res!302391) b!500438))

(assert (= (and b!500438 res!302398) b!500443))

(assert (= (and b!500443 res!302394) b!500447))

(assert (= (and b!500447 res!302399) b!500434))

(assert (= (and b!500434 res!302396) b!500444))

(assert (= (and b!500434 (not res!302388)) b!500433))

(assert (= (and b!500433 (not res!302397)) b!500441))

(assert (= (and b!500441 c!59300) b!500435))

(assert (= (and b!500441 (not c!59300)) b!500439))

(assert (= (and b!500435 res!302390) b!500440))

(assert (= (and b!500441 (not res!302387)) b!500445))

(declare-fun m!481591 () Bool)

(assert (=> b!500436 m!481591))

(assert (=> b!500436 m!481591))

(declare-fun m!481593 () Bool)

(assert (=> b!500436 m!481593))

(declare-fun m!481595 () Bool)

(assert (=> b!500434 m!481595))

(declare-fun m!481597 () Bool)

(assert (=> b!500434 m!481597))

(declare-fun m!481599 () Bool)

(assert (=> b!500434 m!481599))

(declare-fun m!481601 () Bool)

(assert (=> b!500434 m!481601))

(assert (=> b!500434 m!481591))

(assert (=> b!500434 m!481591))

(declare-fun m!481603 () Bool)

(assert (=> b!500434 m!481603))

(declare-fun m!481605 () Bool)

(assert (=> b!500434 m!481605))

(assert (=> b!500434 m!481591))

(declare-fun m!481607 () Bool)

(assert (=> b!500434 m!481607))

(declare-fun m!481609 () Bool)

(assert (=> b!500434 m!481609))

(declare-fun m!481611 () Bool)

(assert (=> b!500441 m!481611))

(assert (=> b!500441 m!481591))

(declare-fun m!481613 () Bool)

(assert (=> b!500447 m!481613))

(declare-fun m!481615 () Bool)

(assert (=> start!45484 m!481615))

(declare-fun m!481617 () Bool)

(assert (=> start!45484 m!481617))

(declare-fun m!481619 () Bool)

(assert (=> b!500443 m!481619))

(declare-fun m!481621 () Bool)

(assert (=> b!500437 m!481621))

(assert (=> b!500444 m!481591))

(assert (=> b!500444 m!481591))

(declare-fun m!481623 () Bool)

(assert (=> b!500444 m!481623))

(declare-fun m!481625 () Bool)

(assert (=> b!500438 m!481625))

(declare-fun m!481627 () Bool)

(assert (=> b!500445 m!481627))

(declare-fun m!481629 () Bool)

(assert (=> b!500442 m!481629))

(declare-fun m!481631 () Bool)

(assert (=> b!500435 m!481631))

(assert (=> b!500435 m!481627))

(push 1)

