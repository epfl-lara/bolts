; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48112 () Bool)

(assert start!48112)

(declare-fun b!529447 () Bool)

(declare-fun e!308522 () Bool)

(assert (=> b!529447 (= e!308522 true)))

(assert (=> b!529447 false))

(declare-fun b!529448 () Bool)

(declare-fun res!325309 () Bool)

(declare-fun e!308524 () Bool)

(assert (=> b!529448 (=> (not res!325309) (not e!308524))))

(declare-datatypes ((array!33508 0))(
  ( (array!33509 (arr!16098 (Array (_ BitVec 32) (_ BitVec 64))) (size!16462 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33508)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!529448 (= res!325309 (validKeyInArray!0 (select (arr!16098 a!3235) j!176)))))

(declare-fun b!529449 () Bool)

(declare-fun e!308519 () Bool)

(declare-fun e!308520 () Bool)

(assert (=> b!529449 (= e!308519 (not e!308520))))

(declare-fun res!325310 () Bool)

(assert (=> b!529449 (=> res!325310 e!308520)))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun lt!244138 () (_ BitVec 32))

(declare-fun k!2280 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!4572 0))(
  ( (MissingZero!4572 (index!20512 (_ BitVec 32))) (Found!4572 (index!20513 (_ BitVec 32))) (Intermediate!4572 (undefined!5384 Bool) (index!20514 (_ BitVec 32)) (x!49517 (_ BitVec 32))) (Undefined!4572) (MissingVacant!4572 (index!20515 (_ BitVec 32))) )
))
(declare-fun lt!244142 () SeekEntryResult!4572)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33508 (_ BitVec 32)) SeekEntryResult!4572)

(assert (=> b!529449 (= res!325310 (= lt!244142 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!244138 (select (store (arr!16098 a!3235) i!1204 k!2280) j!176) (array!33509 (store (arr!16098 a!3235) i!1204 k!2280) (size!16462 a!3235)) mask!3524)))))

(declare-fun lt!244140 () (_ BitVec 32))

(assert (=> b!529449 (= lt!244142 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!244140 (select (arr!16098 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!529449 (= lt!244138 (toIndex!0 (select (store (arr!16098 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!529449 (= lt!244140 (toIndex!0 (select (arr!16098 a!3235) j!176) mask!3524))))

(declare-fun e!308523 () Bool)

(assert (=> b!529449 e!308523))

(declare-fun res!325313 () Bool)

(assert (=> b!529449 (=> (not res!325313) (not e!308523))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33508 (_ BitVec 32)) Bool)

(assert (=> b!529449 (= res!325313 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!16748 0))(
  ( (Unit!16749) )
))
(declare-fun lt!244139 () Unit!16748)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33508 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16748)

(assert (=> b!529449 (= lt!244139 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!529450 () Bool)

(assert (=> b!529450 (= e!308520 e!308522)))

(declare-fun res!325303 () Bool)

(assert (=> b!529450 (=> res!325303 e!308522)))

(declare-fun lt!244137 () Bool)

(assert (=> b!529450 (= res!325303 (or (and (not lt!244137) (undefined!5384 lt!244142)) (and (not lt!244137) (not (undefined!5384 lt!244142)))))))

(assert (=> b!529450 (= lt!244137 (not (is-Intermediate!4572 lt!244142)))))

(declare-fun b!529451 () Bool)

(declare-fun res!325305 () Bool)

(assert (=> b!529451 (=> (not res!325305) (not e!308519))))

(assert (=> b!529451 (= res!325305 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!529452 () Bool)

(declare-fun res!325307 () Bool)

(assert (=> b!529452 (=> (not res!325307) (not e!308524))))

(declare-fun arrayContainsKey!0 (array!33508 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!529452 (= res!325307 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!529453 () Bool)

(declare-fun res!325304 () Bool)

(assert (=> b!529453 (=> (not res!325304) (not e!308524))))

(assert (=> b!529453 (= res!325304 (validKeyInArray!0 k!2280))))

(declare-fun b!529454 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33508 (_ BitVec 32)) SeekEntryResult!4572)

(assert (=> b!529454 (= e!308523 (= (seekEntryOrOpen!0 (select (arr!16098 a!3235) j!176) a!3235 mask!3524) (Found!4572 j!176)))))

(declare-fun b!529455 () Bool)

(assert (=> b!529455 (= e!308524 e!308519)))

(declare-fun res!325306 () Bool)

(assert (=> b!529455 (=> (not res!325306) (not e!308519))))

(declare-fun lt!244141 () SeekEntryResult!4572)

(assert (=> b!529455 (= res!325306 (or (= lt!244141 (MissingZero!4572 i!1204)) (= lt!244141 (MissingVacant!4572 i!1204))))))

(assert (=> b!529455 (= lt!244141 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!529456 () Bool)

(declare-fun res!325311 () Bool)

(assert (=> b!529456 (=> (not res!325311) (not e!308519))))

(declare-datatypes ((List!10309 0))(
  ( (Nil!10306) (Cons!10305 (h!11245 (_ BitVec 64)) (t!16545 List!10309)) )
))
(declare-fun arrayNoDuplicates!0 (array!33508 (_ BitVec 32) List!10309) Bool)

(assert (=> b!529456 (= res!325311 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10306))))

(declare-fun res!325312 () Bool)

(assert (=> start!48112 (=> (not res!325312) (not e!308524))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48112 (= res!325312 (validMask!0 mask!3524))))

(assert (=> start!48112 e!308524))

(assert (=> start!48112 true))

(declare-fun array_inv!11872 (array!33508) Bool)

(assert (=> start!48112 (array_inv!11872 a!3235)))

(declare-fun b!529457 () Bool)

(declare-fun res!325308 () Bool)

(assert (=> b!529457 (=> (not res!325308) (not e!308524))))

(assert (=> b!529457 (= res!325308 (and (= (size!16462 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16462 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16462 a!3235)) (not (= i!1204 j!176))))))

(assert (= (and start!48112 res!325312) b!529457))

(assert (= (and b!529457 res!325308) b!529448))

(assert (= (and b!529448 res!325309) b!529453))

(assert (= (and b!529453 res!325304) b!529452))

(assert (= (and b!529452 res!325307) b!529455))

(assert (= (and b!529455 res!325306) b!529451))

(assert (= (and b!529451 res!325305) b!529456))

(assert (= (and b!529456 res!325311) b!529449))

(assert (= (and b!529449 res!325313) b!529454))

(assert (= (and b!529449 (not res!325310)) b!529450))

(assert (= (and b!529450 (not res!325303)) b!529447))

(declare-fun m!509959 () Bool)

(assert (=> b!529454 m!509959))

(assert (=> b!529454 m!509959))

(declare-fun m!509961 () Bool)

(assert (=> b!529454 m!509961))

(declare-fun m!509963 () Bool)

(assert (=> b!529455 m!509963))

(declare-fun m!509965 () Bool)

(assert (=> start!48112 m!509965))

(declare-fun m!509967 () Bool)

(assert (=> start!48112 m!509967))

(declare-fun m!509969 () Bool)

(assert (=> b!529452 m!509969))

(assert (=> b!529448 m!509959))

(assert (=> b!529448 m!509959))

(declare-fun m!509971 () Bool)

(assert (=> b!529448 m!509971))

(declare-fun m!509973 () Bool)

(assert (=> b!529456 m!509973))

(declare-fun m!509975 () Bool)

(assert (=> b!529451 m!509975))

(declare-fun m!509977 () Bool)

(assert (=> b!529453 m!509977))

(declare-fun m!509979 () Bool)

(assert (=> b!529449 m!509979))

(declare-fun m!509981 () Bool)

(assert (=> b!529449 m!509981))

(assert (=> b!529449 m!509959))

(declare-fun m!509983 () Bool)

(assert (=> b!529449 m!509983))

(assert (=> b!529449 m!509959))

(declare-fun m!509985 () Bool)

(assert (=> b!529449 m!509985))

(assert (=> b!529449 m!509959))

(declare-fun m!509987 () Bool)

(assert (=> b!529449 m!509987))

(assert (=> b!529449 m!509981))

(declare-fun m!509989 () Bool)

(assert (=> b!529449 m!509989))

(assert (=> b!529449 m!509981))

(declare-fun m!509991 () Bool)

(assert (=> b!529449 m!509991))

(declare-fun m!509993 () Bool)

(assert (=> b!529449 m!509993))

(push 1)

