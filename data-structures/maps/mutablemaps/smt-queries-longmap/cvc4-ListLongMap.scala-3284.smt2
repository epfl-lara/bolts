; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45662 () Bool)

(assert start!45662)

(declare-fun b!503359 () Bool)

(declare-fun e!294776 () Bool)

(declare-fun e!294780 () Bool)

(assert (=> b!503359 (= e!294776 (not e!294780))))

(declare-fun res!304795 () Bool)

(assert (=> b!503359 (=> res!304795 e!294780)))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4040 0))(
  ( (MissingZero!4040 (index!18348 (_ BitVec 32))) (Found!4040 (index!18349 (_ BitVec 32))) (Intermediate!4040 (undefined!4852 Bool) (index!18350 (_ BitVec 32)) (x!47396 (_ BitVec 32))) (Undefined!4040) (MissingVacant!4040 (index!18351 (_ BitVec 32))) )
))
(declare-fun lt!229067 () SeekEntryResult!4040)

(declare-datatypes ((array!32378 0))(
  ( (array!32379 (arr!15566 (Array (_ BitVec 32) (_ BitVec 64))) (size!15930 (_ BitVec 32))) )
))
(declare-fun lt!229068 () array!32378)

(declare-fun lt!229062 () (_ BitVec 64))

(declare-fun lt!229069 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32378 (_ BitVec 32)) SeekEntryResult!4040)

(assert (=> b!503359 (= res!304795 (= lt!229067 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!229069 lt!229062 lt!229068 mask!3524)))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lt!229060 () (_ BitVec 32))

(declare-fun a!3235 () array!32378)

(assert (=> b!503359 (= lt!229067 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!229060 (select (arr!15566 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!503359 (= lt!229069 (toIndex!0 lt!229062 mask!3524))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!503359 (= lt!229062 (select (store (arr!15566 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!503359 (= lt!229060 (toIndex!0 (select (arr!15566 a!3235) j!176) mask!3524))))

(assert (=> b!503359 (= lt!229068 (array!32379 (store (arr!15566 a!3235) i!1204 k!2280) (size!15930 a!3235)))))

(declare-fun e!294784 () Bool)

(assert (=> b!503359 e!294784))

(declare-fun res!304806 () Bool)

(assert (=> b!503359 (=> (not res!304806) (not e!294784))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32378 (_ BitVec 32)) Bool)

(assert (=> b!503359 (= res!304806 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15250 0))(
  ( (Unit!15251) )
))
(declare-fun lt!229066 () Unit!15250)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32378 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15250)

(assert (=> b!503359 (= lt!229066 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!503360 () Bool)

(declare-fun res!304804 () Bool)

(assert (=> b!503360 (=> (not res!304804) (not e!294776))))

(assert (=> b!503360 (= res!304804 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!503361 () Bool)

(declare-fun e!294782 () Bool)

(assert (=> b!503361 (= e!294782 e!294776)))

(declare-fun res!304794 () Bool)

(assert (=> b!503361 (=> (not res!304794) (not e!294776))))

(declare-fun lt!229061 () SeekEntryResult!4040)

(assert (=> b!503361 (= res!304794 (or (= lt!229061 (MissingZero!4040 i!1204)) (= lt!229061 (MissingVacant!4040 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32378 (_ BitVec 32)) SeekEntryResult!4040)

(assert (=> b!503361 (= lt!229061 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!503362 () Bool)

(declare-fun res!304808 () Bool)

(assert (=> b!503362 (=> (not res!304808) (not e!294782))))

(declare-fun arrayContainsKey!0 (array!32378 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!503362 (= res!304808 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!503363 () Bool)

(declare-fun res!304799 () Bool)

(assert (=> b!503363 (=> (not res!304799) (not e!294776))))

(declare-datatypes ((List!9777 0))(
  ( (Nil!9774) (Cons!9773 (h!10650 (_ BitVec 64)) (t!16013 List!9777)) )
))
(declare-fun arrayNoDuplicates!0 (array!32378 (_ BitVec 32) List!9777) Bool)

(assert (=> b!503363 (= res!304799 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9774))))

(declare-fun b!503364 () Bool)

(declare-fun res!304797 () Bool)

(declare-fun e!294779 () Bool)

(assert (=> b!503364 (=> res!304797 e!294779)))

(declare-fun e!294778 () Bool)

(assert (=> b!503364 (= res!304797 e!294778)))

(declare-fun res!304801 () Bool)

(assert (=> b!503364 (=> (not res!304801) (not e!294778))))

(assert (=> b!503364 (= res!304801 (bvsgt #b00000000000000000000000000000000 (x!47396 lt!229067)))))

(declare-fun b!503365 () Bool)

(assert (=> b!503365 (= e!294780 e!294779)))

(declare-fun res!304796 () Bool)

(assert (=> b!503365 (=> res!304796 e!294779)))

(assert (=> b!503365 (= res!304796 (or (bvsgt (x!47396 lt!229067) #b01111111111111111111111111111110) (bvslt lt!229060 #b00000000000000000000000000000000) (bvsge lt!229060 (size!15930 a!3235)) (bvslt (index!18350 lt!229067) #b00000000000000000000000000000000) (bvsge (index!18350 lt!229067) (size!15930 a!3235)) (not (= lt!229067 (Intermediate!4040 false (index!18350 lt!229067) (x!47396 lt!229067))))))))

(assert (=> b!503365 (= (index!18350 lt!229067) i!1204)))

(declare-fun lt!229065 () Unit!15250)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!32378 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15250)

(assert (=> b!503365 (= lt!229065 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!229060 #b00000000000000000000000000000000 (index!18350 lt!229067) (x!47396 lt!229067) mask!3524))))

(assert (=> b!503365 (and (or (= (select (arr!15566 a!3235) (index!18350 lt!229067)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15566 a!3235) (index!18350 lt!229067)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15566 a!3235) (index!18350 lt!229067)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15566 a!3235) (index!18350 lt!229067)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!229063 () Unit!15250)

(declare-fun e!294783 () Unit!15250)

(assert (=> b!503365 (= lt!229063 e!294783)))

(declare-fun c!59561 () Bool)

(assert (=> b!503365 (= c!59561 (= (select (arr!15566 a!3235) (index!18350 lt!229067)) (select (arr!15566 a!3235) j!176)))))

(assert (=> b!503365 (and (bvslt (x!47396 lt!229067) #b01111111111111111111111111111110) (or (= (select (arr!15566 a!3235) (index!18350 lt!229067)) (select (arr!15566 a!3235) j!176)) (= (select (arr!15566 a!3235) (index!18350 lt!229067)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15566 a!3235) (index!18350 lt!229067)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!304798 () Bool)

(assert (=> start!45662 (=> (not res!304798) (not e!294782))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45662 (= res!304798 (validMask!0 mask!3524))))

(assert (=> start!45662 e!294782))

(assert (=> start!45662 true))

(declare-fun array_inv!11340 (array!32378) Bool)

(assert (=> start!45662 (array_inv!11340 a!3235)))

(declare-fun b!503366 () Bool)

(assert (=> b!503366 (= e!294779 true)))

(declare-fun lt!229064 () SeekEntryResult!4040)

(assert (=> b!503366 (= lt!229064 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!229060 lt!229062 lt!229068 mask!3524))))

(declare-fun b!503367 () Bool)

(declare-fun res!304805 () Bool)

(assert (=> b!503367 (=> (not res!304805) (not e!294782))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!503367 (= res!304805 (validKeyInArray!0 (select (arr!15566 a!3235) j!176)))))

(declare-fun b!503368 () Bool)

(declare-fun res!304800 () Bool)

(assert (=> b!503368 (=> (not res!304800) (not e!294782))))

(assert (=> b!503368 (= res!304800 (and (= (size!15930 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15930 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15930 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!503369 () Bool)

(declare-fun e!294781 () Bool)

(assert (=> b!503369 (= e!294781 false)))

(declare-fun b!503370 () Bool)

(declare-fun res!304803 () Bool)

(assert (=> b!503370 (=> res!304803 e!294780)))

(assert (=> b!503370 (= res!304803 (or (undefined!4852 lt!229067) (not (is-Intermediate!4040 lt!229067))))))

(declare-fun b!503371 () Bool)

(assert (=> b!503371 (= e!294784 (= (seekEntryOrOpen!0 (select (arr!15566 a!3235) j!176) a!3235 mask!3524) (Found!4040 j!176)))))

(declare-fun b!503372 () Bool)

(declare-fun Unit!15252 () Unit!15250)

(assert (=> b!503372 (= e!294783 Unit!15252)))

(declare-fun b!503373 () Bool)

(declare-fun Unit!15253 () Unit!15250)

(assert (=> b!503373 (= e!294783 Unit!15253)))

(declare-fun lt!229070 () Unit!15250)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32378 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15250)

(assert (=> b!503373 (= lt!229070 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!229060 #b00000000000000000000000000000000 (index!18350 lt!229067) (x!47396 lt!229067) mask!3524))))

(declare-fun res!304802 () Bool)

(assert (=> b!503373 (= res!304802 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!229060 lt!229062 lt!229068 mask!3524) (Intermediate!4040 false (index!18350 lt!229067) (x!47396 lt!229067))))))

(assert (=> b!503373 (=> (not res!304802) (not e!294781))))

(assert (=> b!503373 e!294781))

(declare-fun b!503374 () Bool)

(declare-fun res!304807 () Bool)

(assert (=> b!503374 (=> (not res!304807) (not e!294782))))

(assert (=> b!503374 (= res!304807 (validKeyInArray!0 k!2280))))

(declare-fun b!503375 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32378 (_ BitVec 32)) SeekEntryResult!4040)

(assert (=> b!503375 (= e!294778 (not (= (seekKeyOrZeroReturnVacant!0 #b00000000000000000000000000000000 lt!229060 (index!18350 lt!229067) (select (arr!15566 a!3235) j!176) a!3235 mask!3524) (Found!4040 j!176))))))

(assert (= (and start!45662 res!304798) b!503368))

(assert (= (and b!503368 res!304800) b!503367))

(assert (= (and b!503367 res!304805) b!503374))

(assert (= (and b!503374 res!304807) b!503362))

(assert (= (and b!503362 res!304808) b!503361))

(assert (= (and b!503361 res!304794) b!503360))

(assert (= (and b!503360 res!304804) b!503363))

(assert (= (and b!503363 res!304799) b!503359))

(assert (= (and b!503359 res!304806) b!503371))

(assert (= (and b!503359 (not res!304795)) b!503370))

(assert (= (and b!503370 (not res!304803)) b!503365))

(assert (= (and b!503365 c!59561) b!503373))

(assert (= (and b!503365 (not c!59561)) b!503372))

(assert (= (and b!503373 res!304802) b!503369))

(assert (= (and b!503365 (not res!304796)) b!503364))

(assert (= (and b!503364 res!304801) b!503375))

(assert (= (and b!503364 (not res!304797)) b!503366))

(declare-fun m!484221 () Bool)

(assert (=> b!503365 m!484221))

(declare-fun m!484223 () Bool)

(assert (=> b!503365 m!484223))

(declare-fun m!484225 () Bool)

(assert (=> b!503365 m!484225))

(assert (=> b!503367 m!484225))

(assert (=> b!503367 m!484225))

(declare-fun m!484227 () Bool)

(assert (=> b!503367 m!484227))

(declare-fun m!484229 () Bool)

(assert (=> b!503360 m!484229))

(declare-fun m!484231 () Bool)

(assert (=> start!45662 m!484231))

(declare-fun m!484233 () Bool)

(assert (=> start!45662 m!484233))

(assert (=> b!503371 m!484225))

(assert (=> b!503371 m!484225))

(declare-fun m!484235 () Bool)

(assert (=> b!503371 m!484235))

(declare-fun m!484237 () Bool)

(assert (=> b!503359 m!484237))

(declare-fun m!484239 () Bool)

(assert (=> b!503359 m!484239))

(declare-fun m!484241 () Bool)

(assert (=> b!503359 m!484241))

(assert (=> b!503359 m!484225))

(declare-fun m!484243 () Bool)

(assert (=> b!503359 m!484243))

(assert (=> b!503359 m!484225))

(declare-fun m!484245 () Bool)

(assert (=> b!503359 m!484245))

(declare-fun m!484247 () Bool)

(assert (=> b!503359 m!484247))

(declare-fun m!484249 () Bool)

(assert (=> b!503359 m!484249))

(assert (=> b!503359 m!484225))

(declare-fun m!484251 () Bool)

(assert (=> b!503359 m!484251))

(assert (=> b!503375 m!484225))

(assert (=> b!503375 m!484225))

(declare-fun m!484253 () Bool)

(assert (=> b!503375 m!484253))

(declare-fun m!484255 () Bool)

(assert (=> b!503361 m!484255))

(declare-fun m!484257 () Bool)

(assert (=> b!503363 m!484257))

(declare-fun m!484259 () Bool)

(assert (=> b!503362 m!484259))

(declare-fun m!484261 () Bool)

(assert (=> b!503373 m!484261))

(declare-fun m!484263 () Bool)

(assert (=> b!503373 m!484263))

(assert (=> b!503366 m!484263))

(declare-fun m!484265 () Bool)

(assert (=> b!503374 m!484265))

(push 1)

