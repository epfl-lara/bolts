; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!47910 () Bool)

(assert start!47910)

(declare-fun b!527321 () Bool)

(declare-fun res!323784 () Bool)

(declare-fun e!307339 () Bool)

(assert (=> b!527321 (=> (not res!323784) (not e!307339))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!33438 0))(
  ( (array!33439 (arr!16066 (Array (_ BitVec 32) (_ BitVec 64))) (size!16430 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33438)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!527321 (= res!323784 (and (= (size!16430 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16430 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16430 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!527322 () Bool)

(declare-fun res!323786 () Bool)

(assert (=> b!527322 (=> (not res!323786) (not e!307339))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!527322 (= res!323786 (validKeyInArray!0 k0!2280))))

(declare-fun b!527323 () Bool)

(declare-fun res!323788 () Bool)

(declare-fun e!307340 () Bool)

(assert (=> b!527323 (=> (not res!323788) (not e!307340))))

(declare-datatypes ((List!10277 0))(
  ( (Nil!10274) (Cons!10273 (h!11207 (_ BitVec 64)) (t!16513 List!10277)) )
))
(declare-fun arrayNoDuplicates!0 (array!33438 (_ BitVec 32) List!10277) Bool)

(assert (=> b!527323 (= res!323788 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10274))))

(declare-fun b!527324 () Bool)

(declare-fun res!323787 () Bool)

(assert (=> b!527324 (=> (not res!323787) (not e!307339))))

(assert (=> b!527324 (= res!323787 (validKeyInArray!0 (select (arr!16066 a!3235) j!176)))))

(declare-fun b!527325 () Bool)

(assert (=> b!527325 (= e!307339 e!307340)))

(declare-fun res!323795 () Bool)

(assert (=> b!527325 (=> (not res!323795) (not e!307340))))

(declare-datatypes ((SeekEntryResult!4540 0))(
  ( (MissingZero!4540 (index!20378 (_ BitVec 32))) (Found!4540 (index!20379 (_ BitVec 32))) (Intermediate!4540 (undefined!5352 Bool) (index!20380 (_ BitVec 32)) (x!49376 (_ BitVec 32))) (Undefined!4540) (MissingVacant!4540 (index!20381 (_ BitVec 32))) )
))
(declare-fun lt!242764 () SeekEntryResult!4540)

(assert (=> b!527325 (= res!323795 (or (= lt!242764 (MissingZero!4540 i!1204)) (= lt!242764 (MissingVacant!4540 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33438 (_ BitVec 32)) SeekEntryResult!4540)

(assert (=> b!527325 (= lt!242764 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!527320 () Bool)

(declare-fun res!323785 () Bool)

(assert (=> b!527320 (=> (not res!323785) (not e!307340))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33438 (_ BitVec 32)) Bool)

(assert (=> b!527320 (= res!323785 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun res!323794 () Bool)

(assert (=> start!47910 (=> (not res!323794) (not e!307339))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47910 (= res!323794 (validMask!0 mask!3524))))

(assert (=> start!47910 e!307339))

(assert (=> start!47910 true))

(declare-fun array_inv!11840 (array!33438) Bool)

(assert (=> start!47910 (array_inv!11840 a!3235)))

(declare-fun b!527326 () Bool)

(declare-fun e!307337 () Bool)

(assert (=> b!527326 (= e!307337 (= (seekEntryOrOpen!0 (select (arr!16066 a!3235) j!176) a!3235 mask!3524) (Found!4540 j!176)))))

(declare-fun b!527327 () Bool)

(declare-fun res!323792 () Bool)

(assert (=> b!527327 (=> (not res!323792) (not e!307339))))

(declare-fun arrayContainsKey!0 (array!33438 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!527327 (= res!323792 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!527328 () Bool)

(declare-datatypes ((Unit!16626 0))(
  ( (Unit!16627) )
))
(declare-fun e!307336 () Unit!16626)

(declare-fun Unit!16628 () Unit!16626)

(assert (=> b!527328 (= e!307336 Unit!16628)))

(declare-fun lt!242759 () SeekEntryResult!4540)

(declare-fun lt!242763 () (_ BitVec 32))

(declare-fun lt!242768 () Unit!16626)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33438 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16626)

(assert (=> b!527328 (= lt!242768 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!242763 #b00000000000000000000000000000000 (index!20380 lt!242759) (x!49376 lt!242759) mask!3524))))

(declare-fun lt!242760 () (_ BitVec 64))

(declare-fun res!323791 () Bool)

(declare-fun lt!242761 () array!33438)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33438 (_ BitVec 32)) SeekEntryResult!4540)

(assert (=> b!527328 (= res!323791 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!242763 lt!242760 lt!242761 mask!3524) (Intermediate!4540 false (index!20380 lt!242759) (x!49376 lt!242759))))))

(declare-fun e!307341 () Bool)

(assert (=> b!527328 (=> (not res!323791) (not e!307341))))

(assert (=> b!527328 e!307341))

(declare-fun b!527329 () Bool)

(declare-fun e!307338 () Bool)

(assert (=> b!527329 (= e!307340 (not e!307338))))

(declare-fun res!323789 () Bool)

(assert (=> b!527329 (=> res!323789 e!307338)))

(declare-fun lt!242765 () (_ BitVec 32))

(assert (=> b!527329 (= res!323789 (= lt!242759 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!242765 lt!242760 lt!242761 mask!3524)))))

(assert (=> b!527329 (= lt!242759 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!242763 (select (arr!16066 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!527329 (= lt!242765 (toIndex!0 lt!242760 mask!3524))))

(assert (=> b!527329 (= lt!242760 (select (store (arr!16066 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!527329 (= lt!242763 (toIndex!0 (select (arr!16066 a!3235) j!176) mask!3524))))

(assert (=> b!527329 (= lt!242761 (array!33439 (store (arr!16066 a!3235) i!1204 k0!2280) (size!16430 a!3235)))))

(assert (=> b!527329 e!307337))

(declare-fun res!323790 () Bool)

(assert (=> b!527329 (=> (not res!323790) (not e!307337))))

(assert (=> b!527329 (= res!323790 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!242767 () Unit!16626)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33438 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16626)

(assert (=> b!527329 (= lt!242767 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!527330 () Bool)

(assert (=> b!527330 (= e!307341 false)))

(declare-fun b!527331 () Bool)

(declare-fun res!323793 () Bool)

(assert (=> b!527331 (=> res!323793 e!307338)))

(get-info :version)

(assert (=> b!527331 (= res!323793 (or (undefined!5352 lt!242759) (not ((_ is Intermediate!4540) lt!242759))))))

(declare-fun b!527332 () Bool)

(assert (=> b!527332 (= e!307338 (or (bvsgt (x!49376 lt!242759) #b01111111111111111111111111111110) (bvslt lt!242763 #b00000000000000000000000000000000) (bvsge lt!242763 (size!16430 a!3235)) (bvslt (index!20380 lt!242759) #b00000000000000000000000000000000) (bvsge (index!20380 lt!242759) (size!16430 a!3235)) (= lt!242759 (Intermediate!4540 false (index!20380 lt!242759) (x!49376 lt!242759)))))))

(assert (=> b!527332 (= (index!20380 lt!242759) i!1204)))

(declare-fun lt!242766 () Unit!16626)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!33438 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16626)

(assert (=> b!527332 (= lt!242766 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k0!2280 j!176 lt!242763 #b00000000000000000000000000000000 (index!20380 lt!242759) (x!49376 lt!242759) mask!3524))))

(assert (=> b!527332 (and (or (= (select (arr!16066 a!3235) (index!20380 lt!242759)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16066 a!3235) (index!20380 lt!242759)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16066 a!3235) (index!20380 lt!242759)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!16066 a!3235) (index!20380 lt!242759)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!242762 () Unit!16626)

(assert (=> b!527332 (= lt!242762 e!307336)))

(declare-fun c!62075 () Bool)

(assert (=> b!527332 (= c!62075 (= (select (arr!16066 a!3235) (index!20380 lt!242759)) (select (arr!16066 a!3235) j!176)))))

(assert (=> b!527332 (and (bvslt (x!49376 lt!242759) #b01111111111111111111111111111110) (or (= (select (arr!16066 a!3235) (index!20380 lt!242759)) (select (arr!16066 a!3235) j!176)) (= (select (arr!16066 a!3235) (index!20380 lt!242759)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16066 a!3235) (index!20380 lt!242759)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!527333 () Bool)

(declare-fun Unit!16629 () Unit!16626)

(assert (=> b!527333 (= e!307336 Unit!16629)))

(assert (= (and start!47910 res!323794) b!527321))

(assert (= (and b!527321 res!323784) b!527324))

(assert (= (and b!527324 res!323787) b!527322))

(assert (= (and b!527322 res!323786) b!527327))

(assert (= (and b!527327 res!323792) b!527325))

(assert (= (and b!527325 res!323795) b!527320))

(assert (= (and b!527320 res!323785) b!527323))

(assert (= (and b!527323 res!323788) b!527329))

(assert (= (and b!527329 res!323790) b!527326))

(assert (= (and b!527329 (not res!323789)) b!527331))

(assert (= (and b!527331 (not res!323793)) b!527332))

(assert (= (and b!527332 c!62075) b!527328))

(assert (= (and b!527332 (not c!62075)) b!527333))

(assert (= (and b!527328 res!323791) b!527330))

(declare-fun m!508011 () Bool)

(assert (=> b!527324 m!508011))

(assert (=> b!527324 m!508011))

(declare-fun m!508013 () Bool)

(assert (=> b!527324 m!508013))

(declare-fun m!508015 () Bool)

(assert (=> b!527329 m!508015))

(declare-fun m!508017 () Bool)

(assert (=> b!527329 m!508017))

(declare-fun m!508019 () Bool)

(assert (=> b!527329 m!508019))

(declare-fun m!508021 () Bool)

(assert (=> b!527329 m!508021))

(assert (=> b!527329 m!508011))

(declare-fun m!508023 () Bool)

(assert (=> b!527329 m!508023))

(declare-fun m!508025 () Bool)

(assert (=> b!527329 m!508025))

(assert (=> b!527329 m!508011))

(declare-fun m!508027 () Bool)

(assert (=> b!527329 m!508027))

(declare-fun m!508029 () Bool)

(assert (=> b!527329 m!508029))

(assert (=> b!527329 m!508011))

(declare-fun m!508031 () Bool)

(assert (=> b!527328 m!508031))

(declare-fun m!508033 () Bool)

(assert (=> b!527328 m!508033))

(declare-fun m!508035 () Bool)

(assert (=> b!527325 m!508035))

(declare-fun m!508037 () Bool)

(assert (=> b!527327 m!508037))

(declare-fun m!508039 () Bool)

(assert (=> start!47910 m!508039))

(declare-fun m!508041 () Bool)

(assert (=> start!47910 m!508041))

(assert (=> b!527326 m!508011))

(assert (=> b!527326 m!508011))

(declare-fun m!508043 () Bool)

(assert (=> b!527326 m!508043))

(declare-fun m!508045 () Bool)

(assert (=> b!527323 m!508045))

(declare-fun m!508047 () Bool)

(assert (=> b!527322 m!508047))

(declare-fun m!508049 () Bool)

(assert (=> b!527332 m!508049))

(declare-fun m!508051 () Bool)

(assert (=> b!527332 m!508051))

(assert (=> b!527332 m!508011))

(declare-fun m!508053 () Bool)

(assert (=> b!527320 m!508053))

(check-sat (not b!527328) (not b!527332) (not b!527322) (not b!527326) (not b!527327) (not b!527320) (not b!527329) (not start!47910) (not b!527323) (not b!527325) (not b!527324))
(check-sat)
