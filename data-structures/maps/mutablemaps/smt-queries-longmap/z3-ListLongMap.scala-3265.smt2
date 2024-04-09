; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45474 () Bool)

(assert start!45474)

(declare-fun b!500208 () Bool)

(declare-fun res!302201 () Bool)

(declare-fun e!293080 () Bool)

(assert (=> b!500208 (=> (not res!302201) (not e!293080))))

(declare-datatypes ((array!32259 0))(
  ( (array!32260 (arr!15508 (Array (_ BitVec 32) (_ BitVec 64))) (size!15872 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32259)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32259 (_ BitVec 32)) Bool)

(assert (=> b!500208 (= res!302201 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!500209 () Bool)

(declare-fun res!302199 () Bool)

(declare-fun e!293077 () Bool)

(assert (=> b!500209 (=> (not res!302199) (not e!293077))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!32259 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!500209 (= res!302199 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!500210 () Bool)

(declare-fun res!302197 () Bool)

(assert (=> b!500210 (=> (not res!302197) (not e!293080))))

(declare-datatypes ((List!9719 0))(
  ( (Nil!9716) (Cons!9715 (h!10589 (_ BitVec 64)) (t!15955 List!9719)) )
))
(declare-fun arrayNoDuplicates!0 (array!32259 (_ BitVec 32) List!9719) Bool)

(assert (=> b!500210 (= res!302197 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9716))))

(declare-fun b!500211 () Bool)

(declare-fun e!293081 () Bool)

(assert (=> b!500211 (= e!293080 (not e!293081))))

(declare-fun res!302196 () Bool)

(assert (=> b!500211 (=> res!302196 e!293081)))

(declare-fun lt!227059 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3982 0))(
  ( (MissingZero!3982 (index!18110 (_ BitVec 32))) (Found!3982 (index!18111 (_ BitVec 32))) (Intermediate!3982 (undefined!4794 Bool) (index!18112 (_ BitVec 32)) (x!47174 (_ BitVec 32))) (Undefined!3982) (MissingVacant!3982 (index!18113 (_ BitVec 32))) )
))
(declare-fun lt!227057 () SeekEntryResult!3982)

(declare-fun lt!227055 () array!32259)

(declare-fun lt!227053 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32259 (_ BitVec 32)) SeekEntryResult!3982)

(assert (=> b!500211 (= res!302196 (= lt!227057 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!227059 lt!227053 lt!227055 mask!3524)))))

(declare-fun lt!227052 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!500211 (= lt!227057 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!227052 (select (arr!15508 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!500211 (= lt!227059 (toIndex!0 lt!227053 mask!3524))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!500211 (= lt!227053 (select (store (arr!15508 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!500211 (= lt!227052 (toIndex!0 (select (arr!15508 a!3235) j!176) mask!3524))))

(assert (=> b!500211 (= lt!227055 (array!32260 (store (arr!15508 a!3235) i!1204 k0!2280) (size!15872 a!3235)))))

(declare-fun e!293082 () Bool)

(assert (=> b!500211 e!293082))

(declare-fun res!302203 () Bool)

(assert (=> b!500211 (=> (not res!302203) (not e!293082))))

(assert (=> b!500211 (= res!302203 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15018 0))(
  ( (Unit!15019) )
))
(declare-fun lt!227056 () Unit!15018)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32259 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15018)

(assert (=> b!500211 (= lt!227056 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!500212 () Bool)

(declare-fun e!293076 () Bool)

(assert (=> b!500212 (= e!293076 false)))

(declare-fun b!500213 () Bool)

(declare-fun e!293083 () Unit!15018)

(declare-fun Unit!15020 () Unit!15018)

(assert (=> b!500213 (= e!293083 Unit!15020)))

(declare-fun b!500214 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32259 (_ BitVec 32)) SeekEntryResult!3982)

(assert (=> b!500214 (= e!293082 (= (seekEntryOrOpen!0 (select (arr!15508 a!3235) j!176) a!3235 mask!3524) (Found!3982 j!176)))))

(declare-fun b!500215 () Bool)

(assert (=> b!500215 (= e!293077 e!293080)))

(declare-fun res!302204 () Bool)

(assert (=> b!500215 (=> (not res!302204) (not e!293080))))

(declare-fun lt!227051 () SeekEntryResult!3982)

(assert (=> b!500215 (= res!302204 (or (= lt!227051 (MissingZero!3982 i!1204)) (= lt!227051 (MissingVacant!3982 i!1204))))))

(assert (=> b!500215 (= lt!227051 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!500216 () Bool)

(declare-fun Unit!15021 () Unit!15018)

(assert (=> b!500216 (= e!293083 Unit!15021)))

(declare-fun lt!227054 () Unit!15018)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32259 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15018)

(assert (=> b!500216 (= lt!227054 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!227052 #b00000000000000000000000000000000 (index!18112 lt!227057) (x!47174 lt!227057) mask!3524))))

(declare-fun res!302198 () Bool)

(assert (=> b!500216 (= res!302198 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!227052 lt!227053 lt!227055 mask!3524) (Intermediate!3982 false (index!18112 lt!227057) (x!47174 lt!227057))))))

(assert (=> b!500216 (=> (not res!302198) (not e!293076))))

(assert (=> b!500216 e!293076))

(declare-fun res!302200 () Bool)

(assert (=> start!45474 (=> (not res!302200) (not e!293077))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45474 (= res!302200 (validMask!0 mask!3524))))

(assert (=> start!45474 e!293077))

(assert (=> start!45474 true))

(declare-fun array_inv!11282 (array!32259) Bool)

(assert (=> start!45474 (array_inv!11282 a!3235)))

(declare-fun b!500217 () Bool)

(declare-fun res!302192 () Bool)

(assert (=> b!500217 (=> res!302192 e!293081)))

(get-info :version)

(assert (=> b!500217 (= res!302192 (or (undefined!4794 lt!227057) (not ((_ is Intermediate!3982) lt!227057))))))

(declare-fun b!500218 () Bool)

(declare-fun res!302194 () Bool)

(assert (=> b!500218 (=> (not res!302194) (not e!293077))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!500218 (= res!302194 (validKeyInArray!0 k0!2280))))

(declare-fun b!500219 () Bool)

(declare-fun e!293079 () Bool)

(assert (=> b!500219 (= e!293081 e!293079)))

(declare-fun res!302195 () Bool)

(assert (=> b!500219 (=> res!302195 e!293079)))

(assert (=> b!500219 (= res!302195 (or (bvsgt #b00000000000000000000000000000000 (x!47174 lt!227057)) (bvsgt (x!47174 lt!227057) #b01111111111111111111111111111110) (bvslt lt!227052 #b00000000000000000000000000000000) (bvsge lt!227052 (size!15872 a!3235)) (bvslt (index!18112 lt!227057) #b00000000000000000000000000000000) (bvsge (index!18112 lt!227057) (size!15872 a!3235)) (not (= lt!227057 (Intermediate!3982 false (index!18112 lt!227057) (x!47174 lt!227057))))))))

(assert (=> b!500219 (and (or (= (select (arr!15508 a!3235) (index!18112 lt!227057)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15508 a!3235) (index!18112 lt!227057)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15508 a!3235) (index!18112 lt!227057)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15508 a!3235) (index!18112 lt!227057)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!227058 () Unit!15018)

(assert (=> b!500219 (= lt!227058 e!293083)))

(declare-fun c!59285 () Bool)

(assert (=> b!500219 (= c!59285 (= (select (arr!15508 a!3235) (index!18112 lt!227057)) (select (arr!15508 a!3235) j!176)))))

(assert (=> b!500219 (and (bvslt (x!47174 lt!227057) #b01111111111111111111111111111110) (or (= (select (arr!15508 a!3235) (index!18112 lt!227057)) (select (arr!15508 a!3235) j!176)) (= (select (arr!15508 a!3235) (index!18112 lt!227057)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15508 a!3235) (index!18112 lt!227057)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!500220 () Bool)

(declare-fun res!302202 () Bool)

(assert (=> b!500220 (=> (not res!302202) (not e!293077))))

(assert (=> b!500220 (= res!302202 (validKeyInArray!0 (select (arr!15508 a!3235) j!176)))))

(declare-fun b!500221 () Bool)

(declare-fun res!302193 () Bool)

(assert (=> b!500221 (=> (not res!302193) (not e!293077))))

(assert (=> b!500221 (= res!302193 (and (= (size!15872 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15872 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15872 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!500222 () Bool)

(assert (=> b!500222 (= e!293079 true)))

(declare-fun lt!227060 () SeekEntryResult!3982)

(assert (=> b!500222 (= lt!227060 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!227052 lt!227053 lt!227055 mask!3524))))

(assert (= (and start!45474 res!302200) b!500221))

(assert (= (and b!500221 res!302193) b!500220))

(assert (= (and b!500220 res!302202) b!500218))

(assert (= (and b!500218 res!302194) b!500209))

(assert (= (and b!500209 res!302199) b!500215))

(assert (= (and b!500215 res!302204) b!500208))

(assert (= (and b!500208 res!302201) b!500210))

(assert (= (and b!500210 res!302197) b!500211))

(assert (= (and b!500211 res!302203) b!500214))

(assert (= (and b!500211 (not res!302196)) b!500217))

(assert (= (and b!500217 (not res!302192)) b!500219))

(assert (= (and b!500219 c!59285) b!500216))

(assert (= (and b!500219 (not c!59285)) b!500213))

(assert (= (and b!500216 res!302198) b!500212))

(assert (= (and b!500219 (not res!302195)) b!500222))

(declare-fun m!481381 () Bool)

(assert (=> b!500219 m!481381))

(declare-fun m!481383 () Bool)

(assert (=> b!500219 m!481383))

(declare-fun m!481385 () Bool)

(assert (=> b!500209 m!481385))

(declare-fun m!481387 () Bool)

(assert (=> b!500208 m!481387))

(declare-fun m!481389 () Bool)

(assert (=> b!500215 m!481389))

(assert (=> b!500220 m!481383))

(assert (=> b!500220 m!481383))

(declare-fun m!481391 () Bool)

(assert (=> b!500220 m!481391))

(declare-fun m!481393 () Bool)

(assert (=> b!500218 m!481393))

(declare-fun m!481395 () Bool)

(assert (=> start!45474 m!481395))

(declare-fun m!481397 () Bool)

(assert (=> start!45474 m!481397))

(declare-fun m!481399 () Bool)

(assert (=> b!500216 m!481399))

(declare-fun m!481401 () Bool)

(assert (=> b!500216 m!481401))

(declare-fun m!481403 () Bool)

(assert (=> b!500210 m!481403))

(declare-fun m!481405 () Bool)

(assert (=> b!500211 m!481405))

(declare-fun m!481407 () Bool)

(assert (=> b!500211 m!481407))

(assert (=> b!500211 m!481383))

(declare-fun m!481409 () Bool)

(assert (=> b!500211 m!481409))

(declare-fun m!481411 () Bool)

(assert (=> b!500211 m!481411))

(declare-fun m!481413 () Bool)

(assert (=> b!500211 m!481413))

(assert (=> b!500211 m!481383))

(declare-fun m!481415 () Bool)

(assert (=> b!500211 m!481415))

(assert (=> b!500211 m!481383))

(declare-fun m!481417 () Bool)

(assert (=> b!500211 m!481417))

(declare-fun m!481419 () Bool)

(assert (=> b!500211 m!481419))

(assert (=> b!500214 m!481383))

(assert (=> b!500214 m!481383))

(declare-fun m!481421 () Bool)

(assert (=> b!500214 m!481421))

(assert (=> b!500222 m!481401))

(check-sat (not start!45474) (not b!500210) (not b!500208) (not b!500214) (not b!500222) (not b!500211) (not b!500215) (not b!500220) (not b!500216) (not b!500209) (not b!500218))
(check-sat)
