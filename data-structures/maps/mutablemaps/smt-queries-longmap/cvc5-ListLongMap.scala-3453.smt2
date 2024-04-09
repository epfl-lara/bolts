; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!47920 () Bool)

(assert start!47920)

(declare-fun b!527530 () Bool)

(declare-fun e!307445 () Bool)

(declare-fun e!307446 () Bool)

(assert (=> b!527530 (= e!307445 (not e!307446))))

(declare-fun res!323974 () Bool)

(assert (=> b!527530 (=> res!323974 e!307446)))

(declare-fun lt!242915 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun lt!242911 () (_ BitVec 32))

(declare-datatypes ((array!33448 0))(
  ( (array!33449 (arr!16071 (Array (_ BitVec 32) (_ BitVec 64))) (size!16435 (_ BitVec 32))) )
))
(declare-fun lt!242909 () array!33448)

(declare-datatypes ((SeekEntryResult!4545 0))(
  ( (MissingZero!4545 (index!20398 (_ BitVec 32))) (Found!4545 (index!20399 (_ BitVec 32))) (Intermediate!4545 (undefined!5357 Bool) (index!20400 (_ BitVec 32)) (x!49397 (_ BitVec 32))) (Undefined!4545) (MissingVacant!4545 (index!20401 (_ BitVec 32))) )
))
(declare-fun lt!242910 () SeekEntryResult!4545)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33448 (_ BitVec 32)) SeekEntryResult!4545)

(assert (=> b!527530 (= res!323974 (= lt!242910 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!242911 lt!242915 lt!242909 mask!3524)))))

(declare-fun lt!242914 () (_ BitVec 32))

(declare-fun a!3235 () array!33448)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!527530 (= lt!242910 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!242914 (select (arr!16071 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!527530 (= lt!242911 (toIndex!0 lt!242915 mask!3524))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!527530 (= lt!242915 (select (store (arr!16071 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!527530 (= lt!242914 (toIndex!0 (select (arr!16071 a!3235) j!176) mask!3524))))

(assert (=> b!527530 (= lt!242909 (array!33449 (store (arr!16071 a!3235) i!1204 k!2280) (size!16435 a!3235)))))

(declare-fun e!307447 () Bool)

(assert (=> b!527530 e!307447))

(declare-fun res!323970 () Bool)

(assert (=> b!527530 (=> (not res!323970) (not e!307447))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33448 (_ BitVec 32)) Bool)

(assert (=> b!527530 (= res!323970 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!16646 0))(
  ( (Unit!16647) )
))
(declare-fun lt!242912 () Unit!16646)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33448 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16646)

(assert (=> b!527530 (= lt!242912 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun res!323964 () Bool)

(declare-fun e!307441 () Bool)

(assert (=> start!47920 (=> (not res!323964) (not e!307441))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47920 (= res!323964 (validMask!0 mask!3524))))

(assert (=> start!47920 e!307441))

(assert (=> start!47920 true))

(declare-fun array_inv!11845 (array!33448) Bool)

(assert (=> start!47920 (array_inv!11845 a!3235)))

(declare-fun b!527531 () Bool)

(declare-fun e!307442 () Unit!16646)

(declare-fun Unit!16648 () Unit!16646)

(assert (=> b!527531 (= e!307442 Unit!16648)))

(declare-fun lt!242916 () Unit!16646)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33448 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16646)

(assert (=> b!527531 (= lt!242916 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!242914 #b00000000000000000000000000000000 (index!20400 lt!242910) (x!49397 lt!242910) mask!3524))))

(declare-fun res!323975 () Bool)

(assert (=> b!527531 (= res!323975 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!242914 lt!242915 lt!242909 mask!3524) (Intermediate!4545 false (index!20400 lt!242910) (x!49397 lt!242910))))))

(declare-fun e!307444 () Bool)

(assert (=> b!527531 (=> (not res!323975) (not e!307444))))

(assert (=> b!527531 e!307444))

(declare-fun b!527532 () Bool)

(assert (=> b!527532 (= e!307441 e!307445)))

(declare-fun res!323972 () Bool)

(assert (=> b!527532 (=> (not res!323972) (not e!307445))))

(declare-fun lt!242918 () SeekEntryResult!4545)

(assert (=> b!527532 (= res!323972 (or (= lt!242918 (MissingZero!4545 i!1204)) (= lt!242918 (MissingVacant!4545 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33448 (_ BitVec 32)) SeekEntryResult!4545)

(assert (=> b!527532 (= lt!242918 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!527533 () Bool)

(declare-fun res!323967 () Bool)

(assert (=> b!527533 (=> (not res!323967) (not e!307441))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!527533 (= res!323967 (validKeyInArray!0 k!2280))))

(declare-fun b!527534 () Bool)

(assert (=> b!527534 (= e!307444 false)))

(declare-fun b!527535 () Bool)

(declare-fun res!323965 () Bool)

(assert (=> b!527535 (=> (not res!323965) (not e!307445))))

(declare-datatypes ((List!10282 0))(
  ( (Nil!10279) (Cons!10278 (h!11212 (_ BitVec 64)) (t!16518 List!10282)) )
))
(declare-fun arrayNoDuplicates!0 (array!33448 (_ BitVec 32) List!10282) Bool)

(assert (=> b!527535 (= res!323965 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10279))))

(declare-fun b!527536 () Bool)

(declare-fun Unit!16649 () Unit!16646)

(assert (=> b!527536 (= e!307442 Unit!16649)))

(declare-fun b!527537 () Bool)

(assert (=> b!527537 (= e!307446 true)))

(assert (=> b!527537 (= (index!20400 lt!242910) i!1204)))

(declare-fun lt!242913 () Unit!16646)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!33448 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16646)

(assert (=> b!527537 (= lt!242913 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!242914 #b00000000000000000000000000000000 (index!20400 lt!242910) (x!49397 lt!242910) mask!3524))))

(assert (=> b!527537 (and (or (= (select (arr!16071 a!3235) (index!20400 lt!242910)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16071 a!3235) (index!20400 lt!242910)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16071 a!3235) (index!20400 lt!242910)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!16071 a!3235) (index!20400 lt!242910)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!242917 () Unit!16646)

(assert (=> b!527537 (= lt!242917 e!307442)))

(declare-fun c!62090 () Bool)

(assert (=> b!527537 (= c!62090 (= (select (arr!16071 a!3235) (index!20400 lt!242910)) (select (arr!16071 a!3235) j!176)))))

(assert (=> b!527537 (and (bvslt (x!49397 lt!242910) #b01111111111111111111111111111110) (or (= (select (arr!16071 a!3235) (index!20400 lt!242910)) (select (arr!16071 a!3235) j!176)) (= (select (arr!16071 a!3235) (index!20400 lt!242910)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16071 a!3235) (index!20400 lt!242910)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!527538 () Bool)

(declare-fun res!323973 () Bool)

(assert (=> b!527538 (=> (not res!323973) (not e!307441))))

(assert (=> b!527538 (= res!323973 (validKeyInArray!0 (select (arr!16071 a!3235) j!176)))))

(declare-fun b!527539 () Bool)

(declare-fun res!323968 () Bool)

(assert (=> b!527539 (=> (not res!323968) (not e!307441))))

(declare-fun arrayContainsKey!0 (array!33448 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!527539 (= res!323968 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!527540 () Bool)

(declare-fun res!323966 () Bool)

(assert (=> b!527540 (=> (not res!323966) (not e!307445))))

(assert (=> b!527540 (= res!323966 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!527541 () Bool)

(declare-fun res!323971 () Bool)

(assert (=> b!527541 (=> res!323971 e!307446)))

(assert (=> b!527541 (= res!323971 (or (undefined!5357 lt!242910) (not (is-Intermediate!4545 lt!242910))))))

(declare-fun b!527542 () Bool)

(declare-fun res!323969 () Bool)

(assert (=> b!527542 (=> (not res!323969) (not e!307441))))

(assert (=> b!527542 (= res!323969 (and (= (size!16435 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16435 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16435 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!527543 () Bool)

(assert (=> b!527543 (= e!307447 (= (seekEntryOrOpen!0 (select (arr!16071 a!3235) j!176) a!3235 mask!3524) (Found!4545 j!176)))))

(assert (= (and start!47920 res!323964) b!527542))

(assert (= (and b!527542 res!323969) b!527538))

(assert (= (and b!527538 res!323973) b!527533))

(assert (= (and b!527533 res!323967) b!527539))

(assert (= (and b!527539 res!323968) b!527532))

(assert (= (and b!527532 res!323972) b!527540))

(assert (= (and b!527540 res!323966) b!527535))

(assert (= (and b!527535 res!323965) b!527530))

(assert (= (and b!527530 res!323970) b!527543))

(assert (= (and b!527530 (not res!323974)) b!527541))

(assert (= (and b!527541 (not res!323971)) b!527537))

(assert (= (and b!527537 c!62090) b!527531))

(assert (= (and b!527537 (not c!62090)) b!527536))

(assert (= (and b!527531 res!323975) b!527534))

(declare-fun m!508231 () Bool)

(assert (=> b!527531 m!508231))

(declare-fun m!508233 () Bool)

(assert (=> b!527531 m!508233))

(declare-fun m!508235 () Bool)

(assert (=> start!47920 m!508235))

(declare-fun m!508237 () Bool)

(assert (=> start!47920 m!508237))

(declare-fun m!508239 () Bool)

(assert (=> b!527532 m!508239))

(declare-fun m!508241 () Bool)

(assert (=> b!527537 m!508241))

(declare-fun m!508243 () Bool)

(assert (=> b!527537 m!508243))

(declare-fun m!508245 () Bool)

(assert (=> b!527537 m!508245))

(declare-fun m!508247 () Bool)

(assert (=> b!527535 m!508247))

(declare-fun m!508249 () Bool)

(assert (=> b!527540 m!508249))

(assert (=> b!527538 m!508245))

(assert (=> b!527538 m!508245))

(declare-fun m!508251 () Bool)

(assert (=> b!527538 m!508251))

(declare-fun m!508253 () Bool)

(assert (=> b!527530 m!508253))

(declare-fun m!508255 () Bool)

(assert (=> b!527530 m!508255))

(declare-fun m!508257 () Bool)

(assert (=> b!527530 m!508257))

(declare-fun m!508259 () Bool)

(assert (=> b!527530 m!508259))

(assert (=> b!527530 m!508245))

(declare-fun m!508261 () Bool)

(assert (=> b!527530 m!508261))

(assert (=> b!527530 m!508245))

(assert (=> b!527530 m!508245))

(declare-fun m!508263 () Bool)

(assert (=> b!527530 m!508263))

(declare-fun m!508265 () Bool)

(assert (=> b!527530 m!508265))

(declare-fun m!508267 () Bool)

(assert (=> b!527530 m!508267))

(assert (=> b!527543 m!508245))

(assert (=> b!527543 m!508245))

(declare-fun m!508269 () Bool)

(assert (=> b!527543 m!508269))

(declare-fun m!508271 () Bool)

(assert (=> b!527539 m!508271))

(declare-fun m!508273 () Bool)

(assert (=> b!527533 m!508273))

(push 1)

