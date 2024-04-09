; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48022 () Bool)

(assert start!48022)

(declare-fun b!528475 () Bool)

(declare-datatypes ((Unit!16694 0))(
  ( (Unit!16695) )
))
(declare-fun e!307982 () Unit!16694)

(declare-fun Unit!16696 () Unit!16694)

(assert (=> b!528475 (= e!307982 Unit!16696)))

(declare-fun b!528476 () Bool)

(declare-fun res!324587 () Bool)

(declare-fun e!307981 () Bool)

(assert (=> b!528476 (=> (not res!324587) (not e!307981))))

(declare-datatypes ((array!33475 0))(
  ( (array!33476 (arr!16083 (Array (_ BitVec 32) (_ BitVec 64))) (size!16447 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33475)

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33475 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!528476 (= res!324587 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!528477 () Bool)

(declare-fun e!307986 () Bool)

(assert (=> b!528477 (= e!307986 false)))

(declare-fun res!324585 () Bool)

(assert (=> start!48022 (=> (not res!324585) (not e!307981))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48022 (= res!324585 (validMask!0 mask!3524))))

(assert (=> start!48022 e!307981))

(assert (=> start!48022 true))

(declare-fun array_inv!11857 (array!33475) Bool)

(assert (=> start!48022 (array_inv!11857 a!3235)))

(declare-fun b!528478 () Bool)

(declare-datatypes ((SeekEntryResult!4557 0))(
  ( (MissingZero!4557 (index!20452 (_ BitVec 32))) (Found!4557 (index!20453 (_ BitVec 32))) (Intermediate!4557 (undefined!5369 Bool) (index!20454 (_ BitVec 32)) (x!49456 (_ BitVec 32))) (Undefined!4557) (MissingVacant!4557 (index!20455 (_ BitVec 32))) )
))
(declare-fun lt!243488 () SeekEntryResult!4557)

(declare-fun lt!243490 () SeekEntryResult!4557)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun e!307985 () Bool)

(declare-fun lt!243487 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33475 (_ BitVec 32)) SeekEntryResult!4557)

(assert (=> b!528478 (= e!307985 (not (= (seekKeyOrZeroReturnVacant!0 #b00000000000000000000000000000000 lt!243487 (index!20454 lt!243488) (select (arr!16083 a!3235) j!176) a!3235 mask!3524) lt!243490)))))

(declare-fun b!528479 () Bool)

(declare-fun Unit!16697 () Unit!16694)

(assert (=> b!528479 (= e!307982 Unit!16697)))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun lt!243486 () Unit!16694)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33475 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16694)

(assert (=> b!528479 (= lt!243486 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!243487 #b00000000000000000000000000000000 (index!20454 lt!243488) (x!49456 lt!243488) mask!3524))))

(declare-fun lt!243491 () array!33475)

(declare-fun res!324586 () Bool)

(declare-fun lt!243489 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33475 (_ BitVec 32)) SeekEntryResult!4557)

(assert (=> b!528479 (= res!324586 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!243487 lt!243489 lt!243491 mask!3524) (Intermediate!4557 false (index!20454 lt!243488) (x!49456 lt!243488))))))

(assert (=> b!528479 (=> (not res!324586) (not e!307986))))

(assert (=> b!528479 e!307986))

(declare-fun b!528480 () Bool)

(declare-fun res!324593 () Bool)

(declare-fun e!307984 () Bool)

(assert (=> b!528480 (=> res!324593 e!307984)))

(declare-fun lt!243492 () SeekEntryResult!4557)

(assert (=> b!528480 (= res!324593 (not (= lt!243492 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!243487 lt!243489 lt!243491 mask!3524))))))

(declare-fun b!528481 () Bool)

(declare-fun e!307983 () Bool)

(declare-fun e!307980 () Bool)

(assert (=> b!528481 (= e!307983 (not e!307980))))

(declare-fun res!324596 () Bool)

(assert (=> b!528481 (=> res!324596 e!307980)))

(assert (=> b!528481 (= res!324596 (or (= lt!243488 lt!243492) (undefined!5369 lt!243488) (not (is-Intermediate!4557 lt!243488))))))

(declare-fun lt!243485 () (_ BitVec 32))

(assert (=> b!528481 (= lt!243492 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!243485 lt!243489 lt!243491 mask!3524))))

(assert (=> b!528481 (= lt!243488 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!243487 (select (arr!16083 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!528481 (= lt!243485 (toIndex!0 lt!243489 mask!3524))))

(assert (=> b!528481 (= lt!243489 (select (store (arr!16083 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!528481 (= lt!243487 (toIndex!0 (select (arr!16083 a!3235) j!176) mask!3524))))

(assert (=> b!528481 (= lt!243491 (array!33476 (store (arr!16083 a!3235) i!1204 k!2280) (size!16447 a!3235)))))

(assert (=> b!528481 (= lt!243490 (Found!4557 j!176))))

(declare-fun e!307979 () Bool)

(assert (=> b!528481 e!307979))

(declare-fun res!324591 () Bool)

(assert (=> b!528481 (=> (not res!324591) (not e!307979))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33475 (_ BitVec 32)) Bool)

(assert (=> b!528481 (= res!324591 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!243493 () Unit!16694)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33475 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16694)

(assert (=> b!528481 (= lt!243493 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!528482 () Bool)

(assert (=> b!528482 (= e!307981 e!307983)))

(declare-fun res!324595 () Bool)

(assert (=> b!528482 (=> (not res!324595) (not e!307983))))

(declare-fun lt!243484 () SeekEntryResult!4557)

(assert (=> b!528482 (= res!324595 (or (= lt!243484 (MissingZero!4557 i!1204)) (= lt!243484 (MissingVacant!4557 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33475 (_ BitVec 32)) SeekEntryResult!4557)

(assert (=> b!528482 (= lt!243484 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!528483 () Bool)

(assert (=> b!528483 (= e!307984 true)))

(assert (=> b!528483 (= (seekEntryOrOpen!0 lt!243489 lt!243491 mask!3524) lt!243490)))

(declare-fun lt!243482 () Unit!16694)

(declare-fun lemmaPutValidKeyPreservesVacantIsAtI!0 (array!33475 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16694)

(assert (=> b!528483 (= lt!243482 (lemmaPutValidKeyPreservesVacantIsAtI!0 a!3235 i!1204 k!2280 j!176 lt!243487 #b00000000000000000000000000000000 (index!20454 lt!243488) (x!49456 lt!243488) mask!3524))))

(declare-fun b!528484 () Bool)

(declare-fun res!324584 () Bool)

(assert (=> b!528484 (=> (not res!324584) (not e!307983))))

(declare-datatypes ((List!10294 0))(
  ( (Nil!10291) (Cons!10290 (h!11227 (_ BitVec 64)) (t!16530 List!10294)) )
))
(declare-fun arrayNoDuplicates!0 (array!33475 (_ BitVec 32) List!10294) Bool)

(assert (=> b!528484 (= res!324584 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10291))))

(declare-fun b!528485 () Bool)

(assert (=> b!528485 (= e!307980 e!307984)))

(declare-fun res!324588 () Bool)

(assert (=> b!528485 (=> res!324588 e!307984)))

(assert (=> b!528485 (= res!324588 (or (bvsgt (x!49456 lt!243488) #b01111111111111111111111111111110) (bvslt lt!243487 #b00000000000000000000000000000000) (bvsge lt!243487 (size!16447 a!3235)) (bvslt (index!20454 lt!243488) #b00000000000000000000000000000000) (bvsge (index!20454 lt!243488) (size!16447 a!3235)) (not (= lt!243488 (Intermediate!4557 false (index!20454 lt!243488) (x!49456 lt!243488))))))))

(assert (=> b!528485 (= (index!20454 lt!243488) i!1204)))

(declare-fun lt!243494 () Unit!16694)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!33475 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16694)

(assert (=> b!528485 (= lt!243494 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!243487 #b00000000000000000000000000000000 (index!20454 lt!243488) (x!49456 lt!243488) mask!3524))))

(assert (=> b!528485 (and (or (= (select (arr!16083 a!3235) (index!20454 lt!243488)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16083 a!3235) (index!20454 lt!243488)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16083 a!3235) (index!20454 lt!243488)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!16083 a!3235) (index!20454 lt!243488)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!243483 () Unit!16694)

(assert (=> b!528485 (= lt!243483 e!307982)))

(declare-fun c!62255 () Bool)

(assert (=> b!528485 (= c!62255 (= (select (arr!16083 a!3235) (index!20454 lt!243488)) (select (arr!16083 a!3235) j!176)))))

(assert (=> b!528485 (and (bvslt (x!49456 lt!243488) #b01111111111111111111111111111110) (or (= (select (arr!16083 a!3235) (index!20454 lt!243488)) (select (arr!16083 a!3235) j!176)) (= (select (arr!16083 a!3235) (index!20454 lt!243488)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16083 a!3235) (index!20454 lt!243488)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!528486 () Bool)

(declare-fun res!324592 () Bool)

(assert (=> b!528486 (=> (not res!324592) (not e!307981))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!528486 (= res!324592 (validKeyInArray!0 k!2280))))

(declare-fun b!528487 () Bool)

(declare-fun res!324594 () Bool)

(assert (=> b!528487 (=> (not res!324594) (not e!307981))))

(assert (=> b!528487 (= res!324594 (and (= (size!16447 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16447 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16447 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!528488 () Bool)

(assert (=> b!528488 (= e!307979 (= (seekEntryOrOpen!0 (select (arr!16083 a!3235) j!176) a!3235 mask!3524) (Found!4557 j!176)))))

(declare-fun b!528489 () Bool)

(declare-fun res!324590 () Bool)

(assert (=> b!528489 (=> (not res!324590) (not e!307981))))

(assert (=> b!528489 (= res!324590 (validKeyInArray!0 (select (arr!16083 a!3235) j!176)))))

(declare-fun b!528490 () Bool)

(declare-fun res!324583 () Bool)

(assert (=> b!528490 (=> res!324583 e!307984)))

(assert (=> b!528490 (= res!324583 e!307985)))

(declare-fun res!324582 () Bool)

(assert (=> b!528490 (=> (not res!324582) (not e!307985))))

(assert (=> b!528490 (= res!324582 (bvsgt #b00000000000000000000000000000000 (x!49456 lt!243488)))))

(declare-fun b!528491 () Bool)

(declare-fun res!324589 () Bool)

(assert (=> b!528491 (=> (not res!324589) (not e!307983))))

(assert (=> b!528491 (= res!324589 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(assert (= (and start!48022 res!324585) b!528487))

(assert (= (and b!528487 res!324594) b!528489))

(assert (= (and b!528489 res!324590) b!528486))

(assert (= (and b!528486 res!324592) b!528476))

(assert (= (and b!528476 res!324587) b!528482))

(assert (= (and b!528482 res!324595) b!528491))

(assert (= (and b!528491 res!324589) b!528484))

(assert (= (and b!528484 res!324584) b!528481))

(assert (= (and b!528481 res!324591) b!528488))

(assert (= (and b!528481 (not res!324596)) b!528485))

(assert (= (and b!528485 c!62255) b!528479))

(assert (= (and b!528485 (not c!62255)) b!528475))

(assert (= (and b!528479 res!324586) b!528477))

(assert (= (and b!528485 (not res!324588)) b!528490))

(assert (= (and b!528490 res!324582) b!528478))

(assert (= (and b!528490 (not res!324583)) b!528480))

(assert (= (and b!528480 (not res!324593)) b!528483))

(declare-fun m!509047 () Bool)

(assert (=> b!528483 m!509047))

(declare-fun m!509049 () Bool)

(assert (=> b!528483 m!509049))

(declare-fun m!509051 () Bool)

(assert (=> b!528480 m!509051))

(declare-fun m!509053 () Bool)

(assert (=> b!528478 m!509053))

(assert (=> b!528478 m!509053))

(declare-fun m!509055 () Bool)

(assert (=> b!528478 m!509055))

(declare-fun m!509057 () Bool)

(assert (=> b!528481 m!509057))

(declare-fun m!509059 () Bool)

(assert (=> b!528481 m!509059))

(declare-fun m!509061 () Bool)

(assert (=> b!528481 m!509061))

(declare-fun m!509063 () Bool)

(assert (=> b!528481 m!509063))

(assert (=> b!528481 m!509053))

(declare-fun m!509065 () Bool)

(assert (=> b!528481 m!509065))

(declare-fun m!509067 () Bool)

(assert (=> b!528481 m!509067))

(assert (=> b!528481 m!509053))

(declare-fun m!509069 () Bool)

(assert (=> b!528481 m!509069))

(assert (=> b!528481 m!509053))

(declare-fun m!509071 () Bool)

(assert (=> b!528481 m!509071))

(assert (=> b!528488 m!509053))

(assert (=> b!528488 m!509053))

(declare-fun m!509073 () Bool)

(assert (=> b!528488 m!509073))

(declare-fun m!509075 () Bool)

(assert (=> b!528484 m!509075))

(declare-fun m!509077 () Bool)

(assert (=> b!528486 m!509077))

(assert (=> b!528489 m!509053))

(assert (=> b!528489 m!509053))

(declare-fun m!509079 () Bool)

(assert (=> b!528489 m!509079))

(declare-fun m!509081 () Bool)

(assert (=> b!528482 m!509081))

(declare-fun m!509083 () Bool)

(assert (=> b!528479 m!509083))

(assert (=> b!528479 m!509051))

(declare-fun m!509085 () Bool)

(assert (=> b!528476 m!509085))

(declare-fun m!509087 () Bool)

(assert (=> b!528485 m!509087))

(declare-fun m!509089 () Bool)

(assert (=> b!528485 m!509089))

(assert (=> b!528485 m!509053))

(declare-fun m!509091 () Bool)

(assert (=> b!528491 m!509091))

(declare-fun m!509093 () Bool)

(assert (=> start!48022 m!509093))

(declare-fun m!509095 () Bool)

(assert (=> start!48022 m!509095))

(push 1)

