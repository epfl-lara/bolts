; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!47804 () Bool)

(assert start!47804)

(declare-fun b!526279 () Bool)

(declare-fun res!323047 () Bool)

(declare-fun e!306772 () Bool)

(assert (=> b!526279 (=> (not res!323047) (not e!306772))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!526279 (= res!323047 (validKeyInArray!0 k!2280))))

(declare-fun b!526280 () Bool)

(declare-fun e!306773 () Bool)

(assert (=> b!526280 (= e!306772 e!306773)))

(declare-fun res!323053 () Bool)

(assert (=> b!526280 (=> (not res!323053) (not e!306773))))

(declare-datatypes ((SeekEntryResult!4523 0))(
  ( (MissingZero!4523 (index!20304 (_ BitVec 32))) (Found!4523 (index!20305 (_ BitVec 32))) (Intermediate!4523 (undefined!5335 Bool) (index!20306 (_ BitVec 32)) (x!49299 (_ BitVec 32))) (Undefined!4523) (MissingVacant!4523 (index!20307 (_ BitVec 32))) )
))
(declare-fun lt!242098 () SeekEntryResult!4523)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!526280 (= res!323053 (or (= lt!242098 (MissingZero!4523 i!1204)) (= lt!242098 (MissingVacant!4523 i!1204))))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!33401 0))(
  ( (array!33402 (arr!16049 (Array (_ BitVec 32) (_ BitVec 64))) (size!16413 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33401)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33401 (_ BitVec 32)) SeekEntryResult!4523)

(assert (=> b!526280 (= lt!242098 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!526281 () Bool)

(declare-fun e!306770 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!526281 (= e!306770 (= (seekEntryOrOpen!0 (select (arr!16049 a!3235) j!176) a!3235 mask!3524) (Found!4523 j!176)))))

(declare-fun b!526283 () Bool)

(declare-datatypes ((Unit!16558 0))(
  ( (Unit!16559) )
))
(declare-fun e!306774 () Unit!16558)

(declare-fun Unit!16560 () Unit!16558)

(assert (=> b!526283 (= e!306774 Unit!16560)))

(declare-fun lt!242103 () Unit!16558)

(declare-fun lt!242102 () SeekEntryResult!4523)

(declare-fun lt!242097 () (_ BitVec 32))

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33401 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16558)

(assert (=> b!526283 (= lt!242103 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!242097 #b00000000000000000000000000000000 (index!20306 lt!242102) (x!49299 lt!242102) mask!3524))))

(declare-fun lt!242100 () array!33401)

(declare-fun res!323055 () Bool)

(declare-fun lt!242104 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33401 (_ BitVec 32)) SeekEntryResult!4523)

(assert (=> b!526283 (= res!323055 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!242097 lt!242104 lt!242100 mask!3524) (Intermediate!4523 false (index!20306 lt!242102) (x!49299 lt!242102))))))

(declare-fun e!306775 () Bool)

(assert (=> b!526283 (=> (not res!323055) (not e!306775))))

(assert (=> b!526283 e!306775))

(declare-fun b!526284 () Bool)

(declare-fun Unit!16561 () Unit!16558)

(assert (=> b!526284 (= e!306774 Unit!16561)))

(declare-fun b!526285 () Bool)

(declare-fun res!323056 () Bool)

(assert (=> b!526285 (=> (not res!323056) (not e!306773))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33401 (_ BitVec 32)) Bool)

(assert (=> b!526285 (= res!323056 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!526286 () Bool)

(declare-fun e!306771 () Bool)

(assert (=> b!526286 (= e!306771 true)))

(assert (=> b!526286 (= (index!20306 lt!242102) i!1204)))

(declare-fun lt!242099 () Unit!16558)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!33401 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16558)

(assert (=> b!526286 (= lt!242099 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!242097 #b00000000000000000000000000000000 (index!20306 lt!242102) (x!49299 lt!242102) mask!3524))))

(assert (=> b!526286 (and (or (= (select (arr!16049 a!3235) (index!20306 lt!242102)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16049 a!3235) (index!20306 lt!242102)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16049 a!3235) (index!20306 lt!242102)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!16049 a!3235) (index!20306 lt!242102)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!242105 () Unit!16558)

(assert (=> b!526286 (= lt!242105 e!306774)))

(declare-fun c!61922 () Bool)

(assert (=> b!526286 (= c!61922 (= (select (arr!16049 a!3235) (index!20306 lt!242102)) (select (arr!16049 a!3235) j!176)))))

(assert (=> b!526286 (and (bvslt (x!49299 lt!242102) #b01111111111111111111111111111110) (or (= (select (arr!16049 a!3235) (index!20306 lt!242102)) (select (arr!16049 a!3235) j!176)) (= (select (arr!16049 a!3235) (index!20306 lt!242102)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16049 a!3235) (index!20306 lt!242102)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!526287 () Bool)

(declare-fun res!323049 () Bool)

(assert (=> b!526287 (=> (not res!323049) (not e!306772))))

(assert (=> b!526287 (= res!323049 (and (= (size!16413 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16413 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16413 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!526288 () Bool)

(declare-fun res!323048 () Bool)

(assert (=> b!526288 (=> (not res!323048) (not e!306772))))

(declare-fun arrayContainsKey!0 (array!33401 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!526288 (= res!323048 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!526289 () Bool)

(declare-fun res!323054 () Bool)

(assert (=> b!526289 (=> (not res!323054) (not e!306773))))

(declare-datatypes ((List!10260 0))(
  ( (Nil!10257) (Cons!10256 (h!11187 (_ BitVec 64)) (t!16496 List!10260)) )
))
(declare-fun arrayNoDuplicates!0 (array!33401 (_ BitVec 32) List!10260) Bool)

(assert (=> b!526289 (= res!323054 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10257))))

(declare-fun b!526290 () Bool)

(assert (=> b!526290 (= e!306775 false)))

(declare-fun res!323051 () Bool)

(assert (=> start!47804 (=> (not res!323051) (not e!306772))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47804 (= res!323051 (validMask!0 mask!3524))))

(assert (=> start!47804 e!306772))

(assert (=> start!47804 true))

(declare-fun array_inv!11823 (array!33401) Bool)

(assert (=> start!47804 (array_inv!11823 a!3235)))

(declare-fun b!526282 () Bool)

(declare-fun res!323057 () Bool)

(assert (=> b!526282 (=> (not res!323057) (not e!306772))))

(assert (=> b!526282 (= res!323057 (validKeyInArray!0 (select (arr!16049 a!3235) j!176)))))

(declare-fun b!526291 () Bool)

(declare-fun res!323052 () Bool)

(assert (=> b!526291 (=> res!323052 e!306771)))

(assert (=> b!526291 (= res!323052 (or (undefined!5335 lt!242102) (not (is-Intermediate!4523 lt!242102))))))

(declare-fun b!526292 () Bool)

(assert (=> b!526292 (= e!306773 (not e!306771))))

(declare-fun res!323046 () Bool)

(assert (=> b!526292 (=> res!323046 e!306771)))

(declare-fun lt!242101 () (_ BitVec 32))

(assert (=> b!526292 (= res!323046 (= lt!242102 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!242101 lt!242104 lt!242100 mask!3524)))))

(assert (=> b!526292 (= lt!242102 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!242097 (select (arr!16049 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!526292 (= lt!242101 (toIndex!0 lt!242104 mask!3524))))

(assert (=> b!526292 (= lt!242104 (select (store (arr!16049 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!526292 (= lt!242097 (toIndex!0 (select (arr!16049 a!3235) j!176) mask!3524))))

(assert (=> b!526292 (= lt!242100 (array!33402 (store (arr!16049 a!3235) i!1204 k!2280) (size!16413 a!3235)))))

(assert (=> b!526292 e!306770))

(declare-fun res!323050 () Bool)

(assert (=> b!526292 (=> (not res!323050) (not e!306770))))

(assert (=> b!526292 (= res!323050 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!242096 () Unit!16558)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33401 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16558)

(assert (=> b!526292 (= lt!242096 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (= (and start!47804 res!323051) b!526287))

(assert (= (and b!526287 res!323049) b!526282))

(assert (= (and b!526282 res!323057) b!526279))

(assert (= (and b!526279 res!323047) b!526288))

(assert (= (and b!526288 res!323048) b!526280))

(assert (= (and b!526280 res!323053) b!526285))

(assert (= (and b!526285 res!323056) b!526289))

(assert (= (and b!526289 res!323054) b!526292))

(assert (= (and b!526292 res!323050) b!526281))

(assert (= (and b!526292 (not res!323046)) b!526291))

(assert (= (and b!526291 (not res!323052)) b!526286))

(assert (= (and b!526286 c!61922) b!526283))

(assert (= (and b!526286 (not c!61922)) b!526284))

(assert (= (and b!526283 res!323055) b!526290))

(declare-fun m!507023 () Bool)

(assert (=> b!526282 m!507023))

(assert (=> b!526282 m!507023))

(declare-fun m!507025 () Bool)

(assert (=> b!526282 m!507025))

(assert (=> b!526281 m!507023))

(assert (=> b!526281 m!507023))

(declare-fun m!507027 () Bool)

(assert (=> b!526281 m!507027))

(declare-fun m!507029 () Bool)

(assert (=> b!526280 m!507029))

(declare-fun m!507031 () Bool)

(assert (=> b!526285 m!507031))

(declare-fun m!507033 () Bool)

(assert (=> start!47804 m!507033))

(declare-fun m!507035 () Bool)

(assert (=> start!47804 m!507035))

(declare-fun m!507037 () Bool)

(assert (=> b!526286 m!507037))

(declare-fun m!507039 () Bool)

(assert (=> b!526286 m!507039))

(assert (=> b!526286 m!507023))

(declare-fun m!507041 () Bool)

(assert (=> b!526288 m!507041))

(declare-fun m!507043 () Bool)

(assert (=> b!526279 m!507043))

(declare-fun m!507045 () Bool)

(assert (=> b!526283 m!507045))

(declare-fun m!507047 () Bool)

(assert (=> b!526283 m!507047))

(declare-fun m!507049 () Bool)

(assert (=> b!526292 m!507049))

(declare-fun m!507051 () Bool)

(assert (=> b!526292 m!507051))

(assert (=> b!526292 m!507023))

(declare-fun m!507053 () Bool)

(assert (=> b!526292 m!507053))

(assert (=> b!526292 m!507023))

(declare-fun m!507055 () Bool)

(assert (=> b!526292 m!507055))

(assert (=> b!526292 m!507023))

(declare-fun m!507057 () Bool)

(assert (=> b!526292 m!507057))

(declare-fun m!507059 () Bool)

(assert (=> b!526292 m!507059))

(declare-fun m!507061 () Bool)

(assert (=> b!526292 m!507061))

(declare-fun m!507063 () Bool)

(assert (=> b!526292 m!507063))

(declare-fun m!507065 () Bool)

(assert (=> b!526289 m!507065))

(push 1)

