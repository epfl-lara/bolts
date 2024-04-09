; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!47426 () Bool)

(assert start!47426)

(declare-fun b!521510 () Bool)

(declare-fun res!319429 () Bool)

(declare-fun e!304245 () Bool)

(assert (=> b!521510 (=> (not res!319429) (not e!304245))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!521510 (= res!319429 (validKeyInArray!0 k!2280))))

(declare-fun b!521511 () Bool)

(declare-fun res!319430 () Bool)

(declare-fun e!304246 () Bool)

(assert (=> b!521511 (=> (not res!319430) (not e!304246))))

(declare-datatypes ((array!33212 0))(
  ( (array!33213 (arr!15959 (Array (_ BitVec 32) (_ BitVec 64))) (size!16323 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33212)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33212 (_ BitVec 32)) Bool)

(assert (=> b!521511 (= res!319430 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!521512 () Bool)

(declare-fun res!319421 () Bool)

(assert (=> b!521512 (=> (not res!319421) (not e!304245))))

(declare-fun arrayContainsKey!0 (array!33212 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!521512 (= res!319421 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!521513 () Bool)

(declare-fun e!304240 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4433 0))(
  ( (MissingZero!4433 (index!19935 (_ BitVec 32))) (Found!4433 (index!19936 (_ BitVec 32))) (Intermediate!4433 (undefined!5245 Bool) (index!19937 (_ BitVec 32)) (x!48942 (_ BitVec 32))) (Undefined!4433) (MissingVacant!4433 (index!19938 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33212 (_ BitVec 32)) SeekEntryResult!4433)

(assert (=> b!521513 (= e!304240 (= (seekEntryOrOpen!0 (select (arr!15959 a!3235) j!176) a!3235 mask!3524) (Found!4433 j!176)))))

(declare-fun b!521514 () Bool)

(declare-fun e!304243 () Bool)

(assert (=> b!521514 (= e!304243 false)))

(declare-fun b!521515 () Bool)

(declare-fun res!319423 () Bool)

(declare-fun e!304241 () Bool)

(assert (=> b!521515 (=> res!319423 e!304241)))

(declare-fun lt!239099 () SeekEntryResult!4433)

(assert (=> b!521515 (= res!319423 (or (undefined!5245 lt!239099) (not (is-Intermediate!4433 lt!239099))))))

(declare-fun b!521516 () Bool)

(declare-datatypes ((Unit!16198 0))(
  ( (Unit!16199) )
))
(declare-fun e!304244 () Unit!16198)

(declare-fun Unit!16200 () Unit!16198)

(assert (=> b!521516 (= e!304244 Unit!16200)))

(declare-fun b!521517 () Bool)

(declare-fun Unit!16201 () Unit!16198)

(assert (=> b!521517 (= e!304244 Unit!16201)))

(declare-fun lt!239095 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun lt!239096 () Unit!16198)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33212 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16198)

(assert (=> b!521517 (= lt!239096 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!239095 #b00000000000000000000000000000000 (index!19937 lt!239099) (x!48942 lt!239099) mask!3524))))

(declare-fun lt!239098 () (_ BitVec 64))

(declare-fun lt!239094 () array!33212)

(declare-fun res!319424 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33212 (_ BitVec 32)) SeekEntryResult!4433)

(assert (=> b!521517 (= res!319424 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!239095 lt!239098 lt!239094 mask!3524) (Intermediate!4433 false (index!19937 lt!239099) (x!48942 lt!239099))))))

(assert (=> b!521517 (=> (not res!319424) (not e!304243))))

(assert (=> b!521517 e!304243))

(declare-fun b!521518 () Bool)

(assert (=> b!521518 (= e!304245 e!304246)))

(declare-fun res!319428 () Bool)

(assert (=> b!521518 (=> (not res!319428) (not e!304246))))

(declare-fun lt!239093 () SeekEntryResult!4433)

(assert (=> b!521518 (= res!319428 (or (= lt!239093 (MissingZero!4433 i!1204)) (= lt!239093 (MissingVacant!4433 i!1204))))))

(assert (=> b!521518 (= lt!239093 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!521519 () Bool)

(declare-fun res!319425 () Bool)

(assert (=> b!521519 (=> (not res!319425) (not e!304246))))

(declare-datatypes ((List!10170 0))(
  ( (Nil!10167) (Cons!10166 (h!11088 (_ BitVec 64)) (t!16406 List!10170)) )
))
(declare-fun arrayNoDuplicates!0 (array!33212 (_ BitVec 32) List!10170) Bool)

(assert (=> b!521519 (= res!319425 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10167))))

(declare-fun b!521520 () Bool)

(declare-fun res!319419 () Bool)

(assert (=> b!521520 (=> (not res!319419) (not e!304245))))

(assert (=> b!521520 (= res!319419 (validKeyInArray!0 (select (arr!15959 a!3235) j!176)))))

(declare-fun res!319426 () Bool)

(assert (=> start!47426 (=> (not res!319426) (not e!304245))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47426 (= res!319426 (validMask!0 mask!3524))))

(assert (=> start!47426 e!304245))

(assert (=> start!47426 true))

(declare-fun array_inv!11733 (array!33212) Bool)

(assert (=> start!47426 (array_inv!11733 a!3235)))

(declare-fun b!521509 () Bool)

(declare-fun res!319422 () Bool)

(assert (=> b!521509 (=> (not res!319422) (not e!304245))))

(assert (=> b!521509 (= res!319422 (and (= (size!16323 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16323 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16323 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!521521 () Bool)

(assert (=> b!521521 (= e!304246 (not e!304241))))

(declare-fun res!319427 () Bool)

(assert (=> b!521521 (=> res!319427 e!304241)))

(declare-fun lt!239097 () (_ BitVec 32))

(assert (=> b!521521 (= res!319427 (= lt!239099 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!239097 lt!239098 lt!239094 mask!3524)))))

(assert (=> b!521521 (= lt!239099 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!239095 (select (arr!15959 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!521521 (= lt!239097 (toIndex!0 lt!239098 mask!3524))))

(assert (=> b!521521 (= lt!239098 (select (store (arr!15959 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!521521 (= lt!239095 (toIndex!0 (select (arr!15959 a!3235) j!176) mask!3524))))

(assert (=> b!521521 (= lt!239094 (array!33213 (store (arr!15959 a!3235) i!1204 k!2280) (size!16323 a!3235)))))

(assert (=> b!521521 e!304240))

(declare-fun res!319420 () Bool)

(assert (=> b!521521 (=> (not res!319420) (not e!304240))))

(assert (=> b!521521 (= res!319420 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!239092 () Unit!16198)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33212 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16198)

(assert (=> b!521521 (= lt!239092 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!521522 () Bool)

(assert (=> b!521522 (= e!304241 true)))

(assert (=> b!521522 (and (or (= (select (arr!15959 a!3235) (index!19937 lt!239099)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15959 a!3235) (index!19937 lt!239099)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15959 a!3235) (index!19937 lt!239099)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15959 a!3235) (index!19937 lt!239099)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!239091 () Unit!16198)

(assert (=> b!521522 (= lt!239091 e!304244)))

(declare-fun c!61346 () Bool)

(assert (=> b!521522 (= c!61346 (= (select (arr!15959 a!3235) (index!19937 lt!239099)) (select (arr!15959 a!3235) j!176)))))

(assert (=> b!521522 (and (bvslt (x!48942 lt!239099) #b01111111111111111111111111111110) (or (= (select (arr!15959 a!3235) (index!19937 lt!239099)) (select (arr!15959 a!3235) j!176)) (= (select (arr!15959 a!3235) (index!19937 lt!239099)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15959 a!3235) (index!19937 lt!239099)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!47426 res!319426) b!521509))

(assert (= (and b!521509 res!319422) b!521520))

(assert (= (and b!521520 res!319419) b!521510))

(assert (= (and b!521510 res!319429) b!521512))

(assert (= (and b!521512 res!319421) b!521518))

(assert (= (and b!521518 res!319428) b!521511))

(assert (= (and b!521511 res!319430) b!521519))

(assert (= (and b!521519 res!319425) b!521521))

(assert (= (and b!521521 res!319420) b!521513))

(assert (= (and b!521521 (not res!319427)) b!521515))

(assert (= (and b!521515 (not res!319423)) b!521522))

(assert (= (and b!521522 c!61346) b!521517))

(assert (= (and b!521522 (not c!61346)) b!521516))

(assert (= (and b!521517 res!319424) b!521514))

(declare-fun m!502459 () Bool)

(assert (=> b!521511 m!502459))

(declare-fun m!502461 () Bool)

(assert (=> b!521513 m!502461))

(assert (=> b!521513 m!502461))

(declare-fun m!502463 () Bool)

(assert (=> b!521513 m!502463))

(declare-fun m!502465 () Bool)

(assert (=> b!521517 m!502465))

(declare-fun m!502467 () Bool)

(assert (=> b!521517 m!502467))

(declare-fun m!502469 () Bool)

(assert (=> b!521519 m!502469))

(declare-fun m!502471 () Bool)

(assert (=> b!521521 m!502471))

(declare-fun m!502473 () Bool)

(assert (=> b!521521 m!502473))

(declare-fun m!502475 () Bool)

(assert (=> b!521521 m!502475))

(declare-fun m!502477 () Bool)

(assert (=> b!521521 m!502477))

(assert (=> b!521521 m!502461))

(declare-fun m!502479 () Bool)

(assert (=> b!521521 m!502479))

(assert (=> b!521521 m!502461))

(declare-fun m!502481 () Bool)

(assert (=> b!521521 m!502481))

(assert (=> b!521521 m!502461))

(declare-fun m!502483 () Bool)

(assert (=> b!521521 m!502483))

(declare-fun m!502485 () Bool)

(assert (=> b!521521 m!502485))

(declare-fun m!502487 () Bool)

(assert (=> b!521512 m!502487))

(declare-fun m!502489 () Bool)

(assert (=> b!521518 m!502489))

(declare-fun m!502491 () Bool)

(assert (=> start!47426 m!502491))

(declare-fun m!502493 () Bool)

(assert (=> start!47426 m!502493))

(declare-fun m!502495 () Bool)

(assert (=> b!521510 m!502495))

(declare-fun m!502497 () Bool)

(assert (=> b!521522 m!502497))

(assert (=> b!521522 m!502461))

(assert (=> b!521520 m!502461))

(assert (=> b!521520 m!502461))

(declare-fun m!502499 () Bool)

(assert (=> b!521520 m!502499))

(push 1)

