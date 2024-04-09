; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45014 () Bool)

(assert start!45014)

(declare-fun b!493511 () Bool)

(declare-fun res!296234 () Bool)

(declare-fun e!289786 () Bool)

(assert (=> b!493511 (=> (not res!296234) (not e!289786))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!31919 0))(
  ( (array!31920 (arr!15341 (Array (_ BitVec 32) (_ BitVec 64))) (size!15705 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31919)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!493511 (= res!296234 (and (= (size!15705 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15705 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15705 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!493512 () Bool)

(declare-fun e!289785 () Bool)

(declare-fun e!289783 () Bool)

(assert (=> b!493512 (= e!289785 (not e!289783))))

(declare-fun res!296231 () Bool)

(assert (=> b!493512 (=> res!296231 e!289783)))

(declare-fun k!2280 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!3815 0))(
  ( (MissingZero!3815 (index!17439 (_ BitVec 32))) (Found!3815 (index!17440 (_ BitVec 32))) (Intermediate!3815 (undefined!4627 Bool) (index!17441 (_ BitVec 32)) (x!46544 (_ BitVec 32))) (Undefined!3815) (MissingVacant!3815 (index!17442 (_ BitVec 32))) )
))
(declare-fun lt!223297 () SeekEntryResult!3815)

(declare-fun lt!223295 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31919 (_ BitVec 32)) SeekEntryResult!3815)

(assert (=> b!493512 (= res!296231 (= lt!223297 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!223295 (select (store (arr!15341 a!3235) i!1204 k!2280) j!176) (array!31920 (store (arr!15341 a!3235) i!1204 k!2280) (size!15705 a!3235)) mask!3524)))))

(declare-fun lt!223296 () (_ BitVec 32))

(assert (=> b!493512 (= lt!223297 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!223296 (select (arr!15341 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!493512 (= lt!223295 (toIndex!0 (select (store (arr!15341 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!493512 (= lt!223296 (toIndex!0 (select (arr!15341 a!3235) j!176) mask!3524))))

(declare-fun lt!223298 () SeekEntryResult!3815)

(assert (=> b!493512 (= lt!223298 (Found!3815 j!176))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31919 (_ BitVec 32)) SeekEntryResult!3815)

(assert (=> b!493512 (= lt!223298 (seekEntryOrOpen!0 (select (arr!15341 a!3235) j!176) a!3235 mask!3524))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31919 (_ BitVec 32)) Bool)

(assert (=> b!493512 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!14568 0))(
  ( (Unit!14569) )
))
(declare-fun lt!223293 () Unit!14568)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31919 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14568)

(assert (=> b!493512 (= lt!223293 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!493513 () Bool)

(declare-fun res!296240 () Bool)

(assert (=> b!493513 (=> (not res!296240) (not e!289786))))

(declare-fun arrayContainsKey!0 (array!31919 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!493513 (= res!296240 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!493514 () Bool)

(declare-fun res!296233 () Bool)

(assert (=> b!493514 (=> (not res!296233) (not e!289785))))

(assert (=> b!493514 (= res!296233 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!493515 () Bool)

(declare-fun res!296236 () Bool)

(assert (=> b!493515 (=> (not res!296236) (not e!289786))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!493515 (= res!296236 (validKeyInArray!0 k!2280))))

(declare-fun res!296237 () Bool)

(assert (=> start!45014 (=> (not res!296237) (not e!289786))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45014 (= res!296237 (validMask!0 mask!3524))))

(assert (=> start!45014 e!289786))

(assert (=> start!45014 true))

(declare-fun array_inv!11115 (array!31919) Bool)

(assert (=> start!45014 (array_inv!11115 a!3235)))

(declare-fun b!493516 () Bool)

(assert (=> b!493516 (= e!289783 true)))

(assert (=> b!493516 (= lt!223298 Undefined!3815)))

(declare-fun b!493517 () Bool)

(declare-fun res!296232 () Bool)

(assert (=> b!493517 (=> (not res!296232) (not e!289786))))

(assert (=> b!493517 (= res!296232 (validKeyInArray!0 (select (arr!15341 a!3235) j!176)))))

(declare-fun b!493518 () Bool)

(declare-fun res!296239 () Bool)

(assert (=> b!493518 (=> res!296239 e!289783)))

(assert (=> b!493518 (= res!296239 (or (not (is-Intermediate!3815 lt!223297)) (not (undefined!4627 lt!223297))))))

(declare-fun b!493519 () Bool)

(assert (=> b!493519 (= e!289786 e!289785)))

(declare-fun res!296238 () Bool)

(assert (=> b!493519 (=> (not res!296238) (not e!289785))))

(declare-fun lt!223294 () SeekEntryResult!3815)

(assert (=> b!493519 (= res!296238 (or (= lt!223294 (MissingZero!3815 i!1204)) (= lt!223294 (MissingVacant!3815 i!1204))))))

(assert (=> b!493519 (= lt!223294 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!493520 () Bool)

(declare-fun res!296235 () Bool)

(assert (=> b!493520 (=> (not res!296235) (not e!289785))))

(declare-datatypes ((List!9552 0))(
  ( (Nil!9549) (Cons!9548 (h!10416 (_ BitVec 64)) (t!15788 List!9552)) )
))
(declare-fun arrayNoDuplicates!0 (array!31919 (_ BitVec 32) List!9552) Bool)

(assert (=> b!493520 (= res!296235 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9549))))

(assert (= (and start!45014 res!296237) b!493511))

(assert (= (and b!493511 res!296234) b!493517))

(assert (= (and b!493517 res!296232) b!493515))

(assert (= (and b!493515 res!296236) b!493513))

(assert (= (and b!493513 res!296240) b!493519))

(assert (= (and b!493519 res!296238) b!493514))

(assert (= (and b!493514 res!296233) b!493520))

(assert (= (and b!493520 res!296235) b!493512))

(assert (= (and b!493512 (not res!296231)) b!493518))

(assert (= (and b!493518 (not res!296239)) b!493516))

(declare-fun m!474445 () Bool)

(assert (=> b!493520 m!474445))

(declare-fun m!474447 () Bool)

(assert (=> b!493519 m!474447))

(declare-fun m!474449 () Bool)

(assert (=> start!45014 m!474449))

(declare-fun m!474451 () Bool)

(assert (=> start!45014 m!474451))

(declare-fun m!474453 () Bool)

(assert (=> b!493517 m!474453))

(assert (=> b!493517 m!474453))

(declare-fun m!474455 () Bool)

(assert (=> b!493517 m!474455))

(declare-fun m!474457 () Bool)

(assert (=> b!493514 m!474457))

(declare-fun m!474459 () Bool)

(assert (=> b!493515 m!474459))

(declare-fun m!474461 () Bool)

(assert (=> b!493513 m!474461))

(declare-fun m!474463 () Bool)

(assert (=> b!493512 m!474463))

(declare-fun m!474465 () Bool)

(assert (=> b!493512 m!474465))

(declare-fun m!474467 () Bool)

(assert (=> b!493512 m!474467))

(assert (=> b!493512 m!474453))

(declare-fun m!474469 () Bool)

(assert (=> b!493512 m!474469))

(declare-fun m!474471 () Bool)

(assert (=> b!493512 m!474471))

(assert (=> b!493512 m!474467))

(declare-fun m!474473 () Bool)

(assert (=> b!493512 m!474473))

(assert (=> b!493512 m!474467))

(declare-fun m!474475 () Bool)

(assert (=> b!493512 m!474475))

(assert (=> b!493512 m!474453))

(assert (=> b!493512 m!474453))

(declare-fun m!474477 () Bool)

(assert (=> b!493512 m!474477))

(assert (=> b!493512 m!474453))

(declare-fun m!474479 () Bool)

(assert (=> b!493512 m!474479))

(push 1)

