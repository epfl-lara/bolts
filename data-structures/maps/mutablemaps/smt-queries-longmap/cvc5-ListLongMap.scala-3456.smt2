; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48016 () Bool)

(assert start!48016)

(declare-fun b!528322 () Bool)

(declare-fun res!324450 () Bool)

(declare-fun e!307898 () Bool)

(assert (=> b!528322 (=> (not res!324450) (not e!307898))))

(declare-datatypes ((array!33469 0))(
  ( (array!33470 (arr!16080 (Array (_ BitVec 32) (_ BitVec 64))) (size!16444 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33469)

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33469 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!528322 (= res!324450 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!528323 () Bool)

(declare-fun e!307905 () Bool)

(declare-fun e!307901 () Bool)

(assert (=> b!528323 (= e!307905 e!307901)))

(declare-fun res!324457 () Bool)

(assert (=> b!528323 (=> res!324457 e!307901)))

(declare-fun lt!243365 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4554 0))(
  ( (MissingZero!4554 (index!20440 (_ BitVec 32))) (Found!4554 (index!20441 (_ BitVec 32))) (Intermediate!4554 (undefined!5366 Bool) (index!20442 (_ BitVec 32)) (x!49445 (_ BitVec 32))) (Undefined!4554) (MissingVacant!4554 (index!20443 (_ BitVec 32))) )
))
(declare-fun lt!243369 () SeekEntryResult!4554)

(assert (=> b!528323 (= res!324457 (or (bvsgt (x!49445 lt!243369) #b01111111111111111111111111111110) (bvslt lt!243365 #b00000000000000000000000000000000) (bvsge lt!243365 (size!16444 a!3235)) (bvslt (index!20442 lt!243369) #b00000000000000000000000000000000) (bvsge (index!20442 lt!243369) (size!16444 a!3235)) (not (= lt!243369 (Intermediate!4554 false (index!20442 lt!243369) (x!49445 lt!243369))))))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!528323 (= (index!20442 lt!243369) i!1204)))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((Unit!16682 0))(
  ( (Unit!16683) )
))
(declare-fun lt!243368 () Unit!16682)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!33469 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16682)

(assert (=> b!528323 (= lt!243368 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!243365 #b00000000000000000000000000000000 (index!20442 lt!243369) (x!49445 lt!243369) mask!3524))))

(assert (=> b!528323 (and (or (= (select (arr!16080 a!3235) (index!20442 lt!243369)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16080 a!3235) (index!20442 lt!243369)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16080 a!3235) (index!20442 lt!243369)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!16080 a!3235) (index!20442 lt!243369)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!243370 () Unit!16682)

(declare-fun e!307900 () Unit!16682)

(assert (=> b!528323 (= lt!243370 e!307900)))

(declare-fun c!62246 () Bool)

(assert (=> b!528323 (= c!62246 (= (select (arr!16080 a!3235) (index!20442 lt!243369)) (select (arr!16080 a!3235) j!176)))))

(assert (=> b!528323 (and (bvslt (x!49445 lt!243369) #b01111111111111111111111111111110) (or (= (select (arr!16080 a!3235) (index!20442 lt!243369)) (select (arr!16080 a!3235) j!176)) (= (select (arr!16080 a!3235) (index!20442 lt!243369)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16080 a!3235) (index!20442 lt!243369)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!528324 () Bool)

(declare-fun res!324448 () Bool)

(declare-fun e!307904 () Bool)

(assert (=> b!528324 (=> (not res!324448) (not e!307904))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33469 (_ BitVec 32)) Bool)

(assert (=> b!528324 (= res!324448 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!528325 () Bool)

(assert (=> b!528325 (= e!307901 true)))

(declare-fun lt!243371 () SeekEntryResult!4554)

(declare-fun lt!243375 () (_ BitVec 64))

(declare-fun lt!243366 () array!33469)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33469 (_ BitVec 32)) SeekEntryResult!4554)

(assert (=> b!528325 (= (seekEntryOrOpen!0 lt!243375 lt!243366 mask!3524) lt!243371)))

(declare-fun lt!243376 () Unit!16682)

(declare-fun lemmaPutValidKeyPreservesVacantIsAtI!0 (array!33469 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16682)

(assert (=> b!528325 (= lt!243376 (lemmaPutValidKeyPreservesVacantIsAtI!0 a!3235 i!1204 k!2280 j!176 lt!243365 #b00000000000000000000000000000000 (index!20442 lt!243369) (x!49445 lt!243369) mask!3524))))

(declare-fun b!528326 () Bool)

(declare-fun res!324451 () Bool)

(assert (=> b!528326 (=> res!324451 e!307901)))

(declare-fun e!307899 () Bool)

(assert (=> b!528326 (= res!324451 e!307899)))

(declare-fun res!324461 () Bool)

(assert (=> b!528326 (=> (not res!324461) (not e!307899))))

(assert (=> b!528326 (= res!324461 (bvsgt #b00000000000000000000000000000000 (x!49445 lt!243369)))))

(declare-fun b!528327 () Bool)

(declare-fun Unit!16684 () Unit!16682)

(assert (=> b!528327 (= e!307900 Unit!16684)))

(declare-fun lt!243373 () Unit!16682)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33469 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16682)

(assert (=> b!528327 (= lt!243373 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!243365 #b00000000000000000000000000000000 (index!20442 lt!243369) (x!49445 lt!243369) mask!3524))))

(declare-fun res!324452 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33469 (_ BitVec 32)) SeekEntryResult!4554)

(assert (=> b!528327 (= res!324452 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!243365 lt!243375 lt!243366 mask!3524) (Intermediate!4554 false (index!20442 lt!243369) (x!49445 lt!243369))))))

(declare-fun e!307903 () Bool)

(assert (=> b!528327 (=> (not res!324452) (not e!307903))))

(assert (=> b!528327 e!307903))

(declare-fun b!528328 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33469 (_ BitVec 32)) SeekEntryResult!4554)

(assert (=> b!528328 (= e!307899 (not (= (seekKeyOrZeroReturnVacant!0 #b00000000000000000000000000000000 lt!243365 (index!20442 lt!243369) (select (arr!16080 a!3235) j!176) a!3235 mask!3524) lt!243371)))))

(declare-fun b!528329 () Bool)

(declare-fun res!324455 () Bool)

(assert (=> b!528329 (=> (not res!324455) (not e!307898))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!528329 (= res!324455 (validKeyInArray!0 (select (arr!16080 a!3235) j!176)))))

(declare-fun b!528330 () Bool)

(declare-fun e!307902 () Bool)

(assert (=> b!528330 (= e!307902 (= (seekEntryOrOpen!0 (select (arr!16080 a!3235) j!176) a!3235 mask!3524) (Found!4554 j!176)))))

(declare-fun res!324447 () Bool)

(assert (=> start!48016 (=> (not res!324447) (not e!307898))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48016 (= res!324447 (validMask!0 mask!3524))))

(assert (=> start!48016 e!307898))

(assert (=> start!48016 true))

(declare-fun array_inv!11854 (array!33469) Bool)

(assert (=> start!48016 (array_inv!11854 a!3235)))

(declare-fun b!528331 () Bool)

(assert (=> b!528331 (= e!307903 false)))

(declare-fun b!528332 () Bool)

(assert (=> b!528332 (= e!307904 (not e!307905))))

(declare-fun res!324458 () Bool)

(assert (=> b!528332 (=> res!324458 e!307905)))

(declare-fun lt!243367 () SeekEntryResult!4554)

(assert (=> b!528332 (= res!324458 (or (= lt!243369 lt!243367) (undefined!5366 lt!243369) (not (is-Intermediate!4554 lt!243369))))))

(declare-fun lt!243377 () (_ BitVec 32))

(assert (=> b!528332 (= lt!243367 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!243377 lt!243375 lt!243366 mask!3524))))

(assert (=> b!528332 (= lt!243369 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!243365 (select (arr!16080 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!528332 (= lt!243377 (toIndex!0 lt!243375 mask!3524))))

(assert (=> b!528332 (= lt!243375 (select (store (arr!16080 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!528332 (= lt!243365 (toIndex!0 (select (arr!16080 a!3235) j!176) mask!3524))))

(assert (=> b!528332 (= lt!243366 (array!33470 (store (arr!16080 a!3235) i!1204 k!2280) (size!16444 a!3235)))))

(assert (=> b!528332 (= lt!243371 (Found!4554 j!176))))

(assert (=> b!528332 e!307902))

(declare-fun res!324453 () Bool)

(assert (=> b!528332 (=> (not res!324453) (not e!307902))))

(assert (=> b!528332 (= res!324453 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!243374 () Unit!16682)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33469 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16682)

(assert (=> b!528332 (= lt!243374 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!528333 () Bool)

(declare-fun res!324460 () Bool)

(assert (=> b!528333 (=> (not res!324460) (not e!307904))))

(declare-datatypes ((List!10291 0))(
  ( (Nil!10288) (Cons!10287 (h!11224 (_ BitVec 64)) (t!16527 List!10291)) )
))
(declare-fun arrayNoDuplicates!0 (array!33469 (_ BitVec 32) List!10291) Bool)

(assert (=> b!528333 (= res!324460 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10288))))

(declare-fun b!528334 () Bool)

(assert (=> b!528334 (= e!307898 e!307904)))

(declare-fun res!324456 () Bool)

(assert (=> b!528334 (=> (not res!324456) (not e!307904))))

(declare-fun lt!243372 () SeekEntryResult!4554)

(assert (=> b!528334 (= res!324456 (or (= lt!243372 (MissingZero!4554 i!1204)) (= lt!243372 (MissingVacant!4554 i!1204))))))

(assert (=> b!528334 (= lt!243372 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!528335 () Bool)

(declare-fun res!324449 () Bool)

(assert (=> b!528335 (=> (not res!324449) (not e!307898))))

(assert (=> b!528335 (= res!324449 (validKeyInArray!0 k!2280))))

(declare-fun b!528336 () Bool)

(declare-fun Unit!16685 () Unit!16682)

(assert (=> b!528336 (= e!307900 Unit!16685)))

(declare-fun b!528337 () Bool)

(declare-fun res!324459 () Bool)

(assert (=> b!528337 (=> (not res!324459) (not e!307898))))

(assert (=> b!528337 (= res!324459 (and (= (size!16444 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16444 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16444 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!528338 () Bool)

(declare-fun res!324454 () Bool)

(assert (=> b!528338 (=> res!324454 e!307901)))

(assert (=> b!528338 (= res!324454 (not (= lt!243367 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!243365 lt!243375 lt!243366 mask!3524))))))

(assert (= (and start!48016 res!324447) b!528337))

(assert (= (and b!528337 res!324459) b!528329))

(assert (= (and b!528329 res!324455) b!528335))

(assert (= (and b!528335 res!324449) b!528322))

(assert (= (and b!528322 res!324450) b!528334))

(assert (= (and b!528334 res!324456) b!528324))

(assert (= (and b!528324 res!324448) b!528333))

(assert (= (and b!528333 res!324460) b!528332))

(assert (= (and b!528332 res!324453) b!528330))

(assert (= (and b!528332 (not res!324458)) b!528323))

(assert (= (and b!528323 c!62246) b!528327))

(assert (= (and b!528323 (not c!62246)) b!528336))

(assert (= (and b!528327 res!324452) b!528331))

(assert (= (and b!528323 (not res!324457)) b!528326))

(assert (= (and b!528326 res!324461) b!528328))

(assert (= (and b!528326 (not res!324451)) b!528338))

(assert (= (and b!528338 (not res!324454)) b!528325))

(declare-fun m!508897 () Bool)

(assert (=> b!528338 m!508897))

(declare-fun m!508899 () Bool)

(assert (=> b!528322 m!508899))

(declare-fun m!508901 () Bool)

(assert (=> b!528328 m!508901))

(assert (=> b!528328 m!508901))

(declare-fun m!508903 () Bool)

(assert (=> b!528328 m!508903))

(assert (=> b!528330 m!508901))

(assert (=> b!528330 m!508901))

(declare-fun m!508905 () Bool)

(assert (=> b!528330 m!508905))

(declare-fun m!508907 () Bool)

(assert (=> b!528324 m!508907))

(declare-fun m!508909 () Bool)

(assert (=> b!528323 m!508909))

(declare-fun m!508911 () Bool)

(assert (=> b!528323 m!508911))

(assert (=> b!528323 m!508901))

(assert (=> b!528329 m!508901))

(assert (=> b!528329 m!508901))

(declare-fun m!508913 () Bool)

(assert (=> b!528329 m!508913))

(declare-fun m!508915 () Bool)

(assert (=> start!48016 m!508915))

(declare-fun m!508917 () Bool)

(assert (=> start!48016 m!508917))

(declare-fun m!508919 () Bool)

(assert (=> b!528335 m!508919))

(declare-fun m!508921 () Bool)

(assert (=> b!528327 m!508921))

(assert (=> b!528327 m!508897))

(declare-fun m!508923 () Bool)

(assert (=> b!528334 m!508923))

(declare-fun m!508925 () Bool)

(assert (=> b!528325 m!508925))

(declare-fun m!508927 () Bool)

(assert (=> b!528325 m!508927))

(declare-fun m!508929 () Bool)

(assert (=> b!528333 m!508929))

(declare-fun m!508931 () Bool)

(assert (=> b!528332 m!508931))

(assert (=> b!528332 m!508901))

(declare-fun m!508933 () Bool)

(assert (=> b!528332 m!508933))

(declare-fun m!508935 () Bool)

(assert (=> b!528332 m!508935))

(declare-fun m!508937 () Bool)

(assert (=> b!528332 m!508937))

(assert (=> b!528332 m!508901))

(declare-fun m!508939 () Bool)

(assert (=> b!528332 m!508939))

(declare-fun m!508941 () Bool)

(assert (=> b!528332 m!508941))

(declare-fun m!508943 () Bool)

(assert (=> b!528332 m!508943))

(declare-fun m!508945 () Bool)

(assert (=> b!528332 m!508945))

(assert (=> b!528332 m!508901))

(push 1)

