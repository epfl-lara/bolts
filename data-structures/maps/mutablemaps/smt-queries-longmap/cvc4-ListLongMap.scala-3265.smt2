; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45476 () Bool)

(assert start!45476)

(declare-fun res!302241 () Bool)

(declare-fun e!293105 () Bool)

(assert (=> start!45476 (=> (not res!302241) (not e!293105))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45476 (= res!302241 (validMask!0 mask!3524))))

(assert (=> start!45476 e!293105))

(assert (=> start!45476 true))

(declare-datatypes ((array!32261 0))(
  ( (array!32262 (arr!15509 (Array (_ BitVec 32) (_ BitVec 64))) (size!15873 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32261)

(declare-fun array_inv!11283 (array!32261) Bool)

(assert (=> start!45476 (array_inv!11283 a!3235)))

(declare-fun b!500253 () Bool)

(declare-fun res!302242 () Bool)

(declare-fun e!293101 () Bool)

(assert (=> b!500253 (=> (not res!302242) (not e!293101))))

(declare-datatypes ((List!9720 0))(
  ( (Nil!9717) (Cons!9716 (h!10590 (_ BitVec 64)) (t!15956 List!9720)) )
))
(declare-fun arrayNoDuplicates!0 (array!32261 (_ BitVec 32) List!9720) Bool)

(assert (=> b!500253 (= res!302242 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9717))))

(declare-fun b!500254 () Bool)

(assert (=> b!500254 (= e!293105 e!293101)))

(declare-fun res!302236 () Bool)

(assert (=> b!500254 (=> (not res!302236) (not e!293101))))

(declare-datatypes ((SeekEntryResult!3983 0))(
  ( (MissingZero!3983 (index!18114 (_ BitVec 32))) (Found!3983 (index!18115 (_ BitVec 32))) (Intermediate!3983 (undefined!4795 Bool) (index!18116 (_ BitVec 32)) (x!47175 (_ BitVec 32))) (Undefined!3983) (MissingVacant!3983 (index!18117 (_ BitVec 32))) )
))
(declare-fun lt!227085 () SeekEntryResult!3983)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!500254 (= res!302236 (or (= lt!227085 (MissingZero!3983 i!1204)) (= lt!227085 (MissingVacant!3983 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32261 (_ BitVec 32)) SeekEntryResult!3983)

(assert (=> b!500254 (= lt!227085 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!500255 () Bool)

(declare-fun e!293102 () Bool)

(assert (=> b!500255 (= e!293102 false)))

(declare-fun b!500256 () Bool)

(declare-datatypes ((Unit!15022 0))(
  ( (Unit!15023) )
))
(declare-fun e!293107 () Unit!15022)

(declare-fun Unit!15024 () Unit!15022)

(assert (=> b!500256 (= e!293107 Unit!15024)))

(declare-fun lt!227086 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lt!227089 () Unit!15022)

(declare-fun lt!227081 () SeekEntryResult!3983)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32261 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15022)

(assert (=> b!500256 (= lt!227089 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!227086 #b00000000000000000000000000000000 (index!18116 lt!227081) (x!47175 lt!227081) mask!3524))))

(declare-fun res!302235 () Bool)

(declare-fun lt!227084 () (_ BitVec 64))

(declare-fun lt!227090 () array!32261)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32261 (_ BitVec 32)) SeekEntryResult!3983)

(assert (=> b!500256 (= res!302235 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!227086 lt!227084 lt!227090 mask!3524) (Intermediate!3983 false (index!18116 lt!227081) (x!47175 lt!227081))))))

(assert (=> b!500256 (=> (not res!302235) (not e!293102))))

(assert (=> b!500256 e!293102))

(declare-fun b!500257 () Bool)

(declare-fun e!293100 () Bool)

(assert (=> b!500257 (= e!293100 (= (seekEntryOrOpen!0 (select (arr!15509 a!3235) j!176) a!3235 mask!3524) (Found!3983 j!176)))))

(declare-fun b!500258 () Bool)

(declare-fun e!293103 () Bool)

(assert (=> b!500258 (= e!293103 true)))

(declare-fun lt!227082 () SeekEntryResult!3983)

(assert (=> b!500258 (= lt!227082 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!227086 lt!227084 lt!227090 mask!3524))))

(declare-fun b!500259 () Bool)

(declare-fun e!293106 () Bool)

(assert (=> b!500259 (= e!293106 e!293103)))

(declare-fun res!302238 () Bool)

(assert (=> b!500259 (=> res!302238 e!293103)))

(assert (=> b!500259 (= res!302238 (or (bvsgt #b00000000000000000000000000000000 (x!47175 lt!227081)) (bvsgt (x!47175 lt!227081) #b01111111111111111111111111111110) (bvslt lt!227086 #b00000000000000000000000000000000) (bvsge lt!227086 (size!15873 a!3235)) (bvslt (index!18116 lt!227081) #b00000000000000000000000000000000) (bvsge (index!18116 lt!227081) (size!15873 a!3235)) (not (= lt!227081 (Intermediate!3983 false (index!18116 lt!227081) (x!47175 lt!227081))))))))

(assert (=> b!500259 (and (or (= (select (arr!15509 a!3235) (index!18116 lt!227081)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15509 a!3235) (index!18116 lt!227081)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15509 a!3235) (index!18116 lt!227081)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15509 a!3235) (index!18116 lt!227081)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!227083 () Unit!15022)

(assert (=> b!500259 (= lt!227083 e!293107)))

(declare-fun c!59288 () Bool)

(assert (=> b!500259 (= c!59288 (= (select (arr!15509 a!3235) (index!18116 lt!227081)) (select (arr!15509 a!3235) j!176)))))

(assert (=> b!500259 (and (bvslt (x!47175 lt!227081) #b01111111111111111111111111111110) (or (= (select (arr!15509 a!3235) (index!18116 lt!227081)) (select (arr!15509 a!3235) j!176)) (= (select (arr!15509 a!3235) (index!18116 lt!227081)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15509 a!3235) (index!18116 lt!227081)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!500260 () Bool)

(declare-fun res!302231 () Bool)

(assert (=> b!500260 (=> (not res!302231) (not e!293105))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!500260 (= res!302231 (validKeyInArray!0 (select (arr!15509 a!3235) j!176)))))

(declare-fun b!500261 () Bool)

(declare-fun res!302233 () Bool)

(assert (=> b!500261 (=> (not res!302233) (not e!293105))))

(assert (=> b!500261 (= res!302233 (and (= (size!15873 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15873 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15873 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!500262 () Bool)

(declare-fun res!302243 () Bool)

(assert (=> b!500262 (=> res!302243 e!293106)))

(assert (=> b!500262 (= res!302243 (or (undefined!4795 lt!227081) (not (is-Intermediate!3983 lt!227081))))))

(declare-fun b!500263 () Bool)

(declare-fun Unit!15025 () Unit!15022)

(assert (=> b!500263 (= e!293107 Unit!15025)))

(declare-fun b!500264 () Bool)

(declare-fun res!302232 () Bool)

(assert (=> b!500264 (=> (not res!302232) (not e!293105))))

(assert (=> b!500264 (= res!302232 (validKeyInArray!0 k!2280))))

(declare-fun b!500265 () Bool)

(declare-fun res!302237 () Bool)

(assert (=> b!500265 (=> (not res!302237) (not e!293101))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32261 (_ BitVec 32)) Bool)

(assert (=> b!500265 (= res!302237 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!500266 () Bool)

(declare-fun res!302240 () Bool)

(assert (=> b!500266 (=> (not res!302240) (not e!293105))))

(declare-fun arrayContainsKey!0 (array!32261 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!500266 (= res!302240 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!500267 () Bool)

(assert (=> b!500267 (= e!293101 (not e!293106))))

(declare-fun res!302239 () Bool)

(assert (=> b!500267 (=> res!302239 e!293106)))

(declare-fun lt!227088 () (_ BitVec 32))

(assert (=> b!500267 (= res!302239 (= lt!227081 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!227088 lt!227084 lt!227090 mask!3524)))))

(assert (=> b!500267 (= lt!227081 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!227086 (select (arr!15509 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!500267 (= lt!227088 (toIndex!0 lt!227084 mask!3524))))

(assert (=> b!500267 (= lt!227084 (select (store (arr!15509 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!500267 (= lt!227086 (toIndex!0 (select (arr!15509 a!3235) j!176) mask!3524))))

(assert (=> b!500267 (= lt!227090 (array!32262 (store (arr!15509 a!3235) i!1204 k!2280) (size!15873 a!3235)))))

(assert (=> b!500267 e!293100))

(declare-fun res!302234 () Bool)

(assert (=> b!500267 (=> (not res!302234) (not e!293100))))

(assert (=> b!500267 (= res!302234 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!227087 () Unit!15022)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32261 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15022)

(assert (=> b!500267 (= lt!227087 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (= (and start!45476 res!302241) b!500261))

(assert (= (and b!500261 res!302233) b!500260))

(assert (= (and b!500260 res!302231) b!500264))

(assert (= (and b!500264 res!302232) b!500266))

(assert (= (and b!500266 res!302240) b!500254))

(assert (= (and b!500254 res!302236) b!500265))

(assert (= (and b!500265 res!302237) b!500253))

(assert (= (and b!500253 res!302242) b!500267))

(assert (= (and b!500267 res!302234) b!500257))

(assert (= (and b!500267 (not res!302239)) b!500262))

(assert (= (and b!500262 (not res!302243)) b!500259))

(assert (= (and b!500259 c!59288) b!500256))

(assert (= (and b!500259 (not c!59288)) b!500263))

(assert (= (and b!500256 res!302235) b!500255))

(assert (= (and b!500259 (not res!302238)) b!500258))

(declare-fun m!481423 () Bool)

(assert (=> b!500266 m!481423))

(declare-fun m!481425 () Bool)

(assert (=> b!500254 m!481425))

(declare-fun m!481427 () Bool)

(assert (=> b!500253 m!481427))

(declare-fun m!481429 () Bool)

(assert (=> b!500259 m!481429))

(declare-fun m!481431 () Bool)

(assert (=> b!500259 m!481431))

(assert (=> b!500260 m!481431))

(assert (=> b!500260 m!481431))

(declare-fun m!481433 () Bool)

(assert (=> b!500260 m!481433))

(declare-fun m!481435 () Bool)

(assert (=> start!45476 m!481435))

(declare-fun m!481437 () Bool)

(assert (=> start!45476 m!481437))

(declare-fun m!481439 () Bool)

(assert (=> b!500264 m!481439))

(declare-fun m!481441 () Bool)

(assert (=> b!500267 m!481441))

(declare-fun m!481443 () Bool)

(assert (=> b!500267 m!481443))

(assert (=> b!500267 m!481431))

(declare-fun m!481445 () Bool)

(assert (=> b!500267 m!481445))

(assert (=> b!500267 m!481431))

(declare-fun m!481447 () Bool)

(assert (=> b!500267 m!481447))

(assert (=> b!500267 m!481431))

(declare-fun m!481449 () Bool)

(assert (=> b!500267 m!481449))

(declare-fun m!481451 () Bool)

(assert (=> b!500267 m!481451))

(declare-fun m!481453 () Bool)

(assert (=> b!500267 m!481453))

(declare-fun m!481455 () Bool)

(assert (=> b!500267 m!481455))

(assert (=> b!500257 m!481431))

(assert (=> b!500257 m!481431))

(declare-fun m!481457 () Bool)

(assert (=> b!500257 m!481457))

(declare-fun m!481459 () Bool)

(assert (=> b!500256 m!481459))

(declare-fun m!481461 () Bool)

(assert (=> b!500256 m!481461))

(assert (=> b!500258 m!481461))

(declare-fun m!481463 () Bool)

(assert (=> b!500265 m!481463))

(push 1)

