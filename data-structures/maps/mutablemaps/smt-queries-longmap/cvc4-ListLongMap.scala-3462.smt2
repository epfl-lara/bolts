; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48116 () Bool)

(assert start!48116)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!33512 0))(
  ( (array!33513 (arr!16100 (Array (_ BitVec 32) (_ BitVec 64))) (size!16464 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33512)

(declare-fun e!308556 () Bool)

(declare-fun b!529513 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4574 0))(
  ( (MissingZero!4574 (index!20520 (_ BitVec 32))) (Found!4574 (index!20521 (_ BitVec 32))) (Intermediate!4574 (undefined!5386 Bool) (index!20522 (_ BitVec 32)) (x!49519 (_ BitVec 32))) (Undefined!4574) (MissingVacant!4574 (index!20523 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33512 (_ BitVec 32)) SeekEntryResult!4574)

(assert (=> b!529513 (= e!308556 (= (seekEntryOrOpen!0 (select (arr!16100 a!3235) j!176) a!3235 mask!3524) (Found!4574 j!176)))))

(declare-fun b!529514 () Bool)

(declare-fun res!325372 () Bool)

(declare-fun e!308555 () Bool)

(assert (=> b!529514 (=> (not res!325372) (not e!308555))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!529514 (= res!325372 (and (= (size!16464 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16464 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16464 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!529515 () Bool)

(declare-fun e!308559 () Bool)

(assert (=> b!529515 (= e!308559 true)))

(assert (=> b!529515 false))

(declare-fun res!325378 () Bool)

(assert (=> start!48116 (=> (not res!325378) (not e!308555))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48116 (= res!325378 (validMask!0 mask!3524))))

(assert (=> start!48116 e!308555))

(assert (=> start!48116 true))

(declare-fun array_inv!11874 (array!33512) Bool)

(assert (=> start!48116 (array_inv!11874 a!3235)))

(declare-fun b!529516 () Bool)

(declare-fun res!325369 () Bool)

(declare-fun e!308560 () Bool)

(assert (=> b!529516 (=> (not res!325369) (not e!308560))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33512 (_ BitVec 32)) Bool)

(assert (=> b!529516 (= res!325369 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!529517 () Bool)

(declare-fun res!325375 () Bool)

(assert (=> b!529517 (=> (not res!325375) (not e!308560))))

(declare-datatypes ((List!10311 0))(
  ( (Nil!10308) (Cons!10307 (h!11247 (_ BitVec 64)) (t!16547 List!10311)) )
))
(declare-fun arrayNoDuplicates!0 (array!33512 (_ BitVec 32) List!10311) Bool)

(assert (=> b!529517 (= res!325375 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10308))))

(declare-fun b!529518 () Bool)

(declare-fun res!325377 () Bool)

(assert (=> b!529518 (=> (not res!325377) (not e!308555))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!529518 (= res!325377 (validKeyInArray!0 (select (arr!16100 a!3235) j!176)))))

(declare-fun b!529519 () Bool)

(declare-fun res!325373 () Bool)

(assert (=> b!529519 (=> (not res!325373) (not e!308555))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33512 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!529519 (= res!325373 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!529520 () Bool)

(declare-fun e!308557 () Bool)

(assert (=> b!529520 (= e!308560 (not e!308557))))

(declare-fun res!325370 () Bool)

(assert (=> b!529520 (=> res!325370 e!308557)))

(declare-fun lt!244177 () SeekEntryResult!4574)

(declare-fun lt!244178 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33512 (_ BitVec 32)) SeekEntryResult!4574)

(assert (=> b!529520 (= res!325370 (= lt!244177 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!244178 (select (store (arr!16100 a!3235) i!1204 k!2280) j!176) (array!33513 (store (arr!16100 a!3235) i!1204 k!2280) (size!16464 a!3235)) mask!3524)))))

(declare-fun lt!244173 () (_ BitVec 32))

(assert (=> b!529520 (= lt!244177 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!244173 (select (arr!16100 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!529520 (= lt!244178 (toIndex!0 (select (store (arr!16100 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!529520 (= lt!244173 (toIndex!0 (select (arr!16100 a!3235) j!176) mask!3524))))

(assert (=> b!529520 e!308556))

(declare-fun res!325374 () Bool)

(assert (=> b!529520 (=> (not res!325374) (not e!308556))))

(assert (=> b!529520 (= res!325374 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!16752 0))(
  ( (Unit!16753) )
))
(declare-fun lt!244175 () Unit!16752)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33512 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16752)

(assert (=> b!529520 (= lt!244175 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!529521 () Bool)

(assert (=> b!529521 (= e!308557 e!308559)))

(declare-fun res!325371 () Bool)

(assert (=> b!529521 (=> res!325371 e!308559)))

(declare-fun lt!244174 () Bool)

(assert (=> b!529521 (= res!325371 (or (and (not lt!244174) (undefined!5386 lt!244177)) (and (not lt!244174) (not (undefined!5386 lt!244177)))))))

(assert (=> b!529521 (= lt!244174 (not (is-Intermediate!4574 lt!244177)))))

(declare-fun b!529522 () Bool)

(declare-fun res!325376 () Bool)

(assert (=> b!529522 (=> (not res!325376) (not e!308555))))

(assert (=> b!529522 (= res!325376 (validKeyInArray!0 k!2280))))

(declare-fun b!529523 () Bool)

(assert (=> b!529523 (= e!308555 e!308560)))

(declare-fun res!325379 () Bool)

(assert (=> b!529523 (=> (not res!325379) (not e!308560))))

(declare-fun lt!244176 () SeekEntryResult!4574)

(assert (=> b!529523 (= res!325379 (or (= lt!244176 (MissingZero!4574 i!1204)) (= lt!244176 (MissingVacant!4574 i!1204))))))

(assert (=> b!529523 (= lt!244176 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(assert (= (and start!48116 res!325378) b!529514))

(assert (= (and b!529514 res!325372) b!529518))

(assert (= (and b!529518 res!325377) b!529522))

(assert (= (and b!529522 res!325376) b!529519))

(assert (= (and b!529519 res!325373) b!529523))

(assert (= (and b!529523 res!325379) b!529516))

(assert (= (and b!529516 res!325369) b!529517))

(assert (= (and b!529517 res!325375) b!529520))

(assert (= (and b!529520 res!325374) b!529513))

(assert (= (and b!529520 (not res!325370)) b!529521))

(assert (= (and b!529521 (not res!325371)) b!529515))

(declare-fun m!510031 () Bool)

(assert (=> b!529523 m!510031))

(declare-fun m!510033 () Bool)

(assert (=> b!529522 m!510033))

(declare-fun m!510035 () Bool)

(assert (=> b!529516 m!510035))

(declare-fun m!510037 () Bool)

(assert (=> b!529520 m!510037))

(declare-fun m!510039 () Bool)

(assert (=> b!529520 m!510039))

(declare-fun m!510041 () Bool)

(assert (=> b!529520 m!510041))

(assert (=> b!529520 m!510041))

(declare-fun m!510043 () Bool)

(assert (=> b!529520 m!510043))

(declare-fun m!510045 () Bool)

(assert (=> b!529520 m!510045))

(declare-fun m!510047 () Bool)

(assert (=> b!529520 m!510047))

(assert (=> b!529520 m!510045))

(declare-fun m!510049 () Bool)

(assert (=> b!529520 m!510049))

(assert (=> b!529520 m!510045))

(declare-fun m!510051 () Bool)

(assert (=> b!529520 m!510051))

(assert (=> b!529520 m!510041))

(declare-fun m!510053 () Bool)

(assert (=> b!529520 m!510053))

(declare-fun m!510055 () Bool)

(assert (=> start!48116 m!510055))

(declare-fun m!510057 () Bool)

(assert (=> start!48116 m!510057))

(assert (=> b!529518 m!510045))

(assert (=> b!529518 m!510045))

(declare-fun m!510059 () Bool)

(assert (=> b!529518 m!510059))

(declare-fun m!510061 () Bool)

(assert (=> b!529517 m!510061))

(declare-fun m!510063 () Bool)

(assert (=> b!529519 m!510063))

(assert (=> b!529513 m!510045))

(assert (=> b!529513 m!510045))

(declare-fun m!510065 () Bool)

(assert (=> b!529513 m!510065))

(push 1)

