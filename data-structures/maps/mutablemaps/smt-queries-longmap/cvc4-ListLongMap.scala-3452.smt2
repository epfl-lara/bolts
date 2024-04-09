; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!47918 () Bool)

(assert start!47918)

(declare-fun b!527488 () Bool)

(declare-datatypes ((Unit!16642 0))(
  ( (Unit!16643) )
))
(declare-fun e!307426 () Unit!16642)

(declare-fun Unit!16644 () Unit!16642)

(assert (=> b!527488 (= e!307426 Unit!16644)))

(declare-fun b!527489 () Bool)

(declare-fun res!323936 () Bool)

(declare-fun e!307422 () Bool)

(assert (=> b!527489 (=> (not res!323936) (not e!307422))))

(declare-datatypes ((array!33446 0))(
  ( (array!33447 (arr!16070 (Array (_ BitVec 32) (_ BitVec 64))) (size!16434 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33446)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33446 (_ BitVec 32)) Bool)

(assert (=> b!527489 (= res!323936 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!527490 () Bool)

(declare-fun res!323935 () Bool)

(declare-fun e!307421 () Bool)

(assert (=> b!527490 (=> (not res!323935) (not e!307421))))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!527490 (= res!323935 (and (= (size!16434 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16434 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16434 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!527491 () Bool)

(declare-fun res!323929 () Bool)

(assert (=> b!527491 (=> (not res!323929) (not e!307421))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!527491 (= res!323929 (validKeyInArray!0 (select (arr!16070 a!3235) j!176)))))

(declare-fun b!527492 () Bool)

(declare-fun res!323937 () Bool)

(assert (=> b!527492 (=> (not res!323937) (not e!307421))))

(declare-fun k!2280 () (_ BitVec 64))

(assert (=> b!527492 (= res!323937 (validKeyInArray!0 k!2280))))

(declare-fun res!323933 () Bool)

(assert (=> start!47918 (=> (not res!323933) (not e!307421))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47918 (= res!323933 (validMask!0 mask!3524))))

(assert (=> start!47918 e!307421))

(assert (=> start!47918 true))

(declare-fun array_inv!11844 (array!33446) Bool)

(assert (=> start!47918 (array_inv!11844 a!3235)))

(declare-fun b!527493 () Bool)

(declare-fun e!307423 () Bool)

(assert (=> b!527493 (= e!307423 false)))

(declare-fun b!527494 () Bool)

(declare-fun res!323939 () Bool)

(assert (=> b!527494 (=> (not res!323939) (not e!307422))))

(declare-datatypes ((List!10281 0))(
  ( (Nil!10278) (Cons!10277 (h!11211 (_ BitVec 64)) (t!16517 List!10281)) )
))
(declare-fun arrayNoDuplicates!0 (array!33446 (_ BitVec 32) List!10281) Bool)

(assert (=> b!527494 (= res!323939 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10278))))

(declare-fun b!527495 () Bool)

(declare-fun e!307424 () Bool)

(assert (=> b!527495 (= e!307422 (not e!307424))))

(declare-fun res!323931 () Bool)

(assert (=> b!527495 (=> res!323931 e!307424)))

(declare-datatypes ((SeekEntryResult!4544 0))(
  ( (MissingZero!4544 (index!20394 (_ BitVec 32))) (Found!4544 (index!20395 (_ BitVec 32))) (Intermediate!4544 (undefined!5356 Bool) (index!20396 (_ BitVec 32)) (x!49388 (_ BitVec 32))) (Undefined!4544) (MissingVacant!4544 (index!20397 (_ BitVec 32))) )
))
(declare-fun lt!242880 () SeekEntryResult!4544)

(declare-fun lt!242885 () (_ BitVec 64))

(declare-fun lt!242882 () array!33446)

(declare-fun lt!242888 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33446 (_ BitVec 32)) SeekEntryResult!4544)

(assert (=> b!527495 (= res!323931 (= lt!242880 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!242888 lt!242885 lt!242882 mask!3524)))))

(declare-fun lt!242881 () (_ BitVec 32))

(assert (=> b!527495 (= lt!242880 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!242881 (select (arr!16070 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!527495 (= lt!242888 (toIndex!0 lt!242885 mask!3524))))

(assert (=> b!527495 (= lt!242885 (select (store (arr!16070 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!527495 (= lt!242881 (toIndex!0 (select (arr!16070 a!3235) j!176) mask!3524))))

(assert (=> b!527495 (= lt!242882 (array!33447 (store (arr!16070 a!3235) i!1204 k!2280) (size!16434 a!3235)))))

(declare-fun e!307425 () Bool)

(assert (=> b!527495 e!307425))

(declare-fun res!323938 () Bool)

(assert (=> b!527495 (=> (not res!323938) (not e!307425))))

(assert (=> b!527495 (= res!323938 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!242884 () Unit!16642)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33446 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16642)

(assert (=> b!527495 (= lt!242884 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!527496 () Bool)

(assert (=> b!527496 (= e!307424 true)))

(assert (=> b!527496 (= (index!20396 lt!242880) i!1204)))

(declare-fun lt!242886 () Unit!16642)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!33446 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16642)

(assert (=> b!527496 (= lt!242886 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!242881 #b00000000000000000000000000000000 (index!20396 lt!242880) (x!49388 lt!242880) mask!3524))))

(assert (=> b!527496 (and (or (= (select (arr!16070 a!3235) (index!20396 lt!242880)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16070 a!3235) (index!20396 lt!242880)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16070 a!3235) (index!20396 lt!242880)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!16070 a!3235) (index!20396 lt!242880)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!242879 () Unit!16642)

(assert (=> b!527496 (= lt!242879 e!307426)))

(declare-fun c!62087 () Bool)

(assert (=> b!527496 (= c!62087 (= (select (arr!16070 a!3235) (index!20396 lt!242880)) (select (arr!16070 a!3235) j!176)))))

(assert (=> b!527496 (and (bvslt (x!49388 lt!242880) #b01111111111111111111111111111110) (or (= (select (arr!16070 a!3235) (index!20396 lt!242880)) (select (arr!16070 a!3235) j!176)) (= (select (arr!16070 a!3235) (index!20396 lt!242880)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16070 a!3235) (index!20396 lt!242880)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!527497 () Bool)

(declare-fun Unit!16645 () Unit!16642)

(assert (=> b!527497 (= e!307426 Unit!16645)))

(declare-fun lt!242883 () Unit!16642)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33446 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16642)

(assert (=> b!527497 (= lt!242883 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!242881 #b00000000000000000000000000000000 (index!20396 lt!242880) (x!49388 lt!242880) mask!3524))))

(declare-fun res!323930 () Bool)

(assert (=> b!527497 (= res!323930 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!242881 lt!242885 lt!242882 mask!3524) (Intermediate!4544 false (index!20396 lt!242880) (x!49388 lt!242880))))))

(assert (=> b!527497 (=> (not res!323930) (not e!307423))))

(assert (=> b!527497 e!307423))

(declare-fun b!527498 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33446 (_ BitVec 32)) SeekEntryResult!4544)

(assert (=> b!527498 (= e!307425 (= (seekEntryOrOpen!0 (select (arr!16070 a!3235) j!176) a!3235 mask!3524) (Found!4544 j!176)))))

(declare-fun b!527499 () Bool)

(declare-fun res!323932 () Bool)

(assert (=> b!527499 (=> (not res!323932) (not e!307421))))

(declare-fun arrayContainsKey!0 (array!33446 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!527499 (= res!323932 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!527500 () Bool)

(assert (=> b!527500 (= e!307421 e!307422)))

(declare-fun res!323928 () Bool)

(assert (=> b!527500 (=> (not res!323928) (not e!307422))))

(declare-fun lt!242887 () SeekEntryResult!4544)

(assert (=> b!527500 (= res!323928 (or (= lt!242887 (MissingZero!4544 i!1204)) (= lt!242887 (MissingVacant!4544 i!1204))))))

(assert (=> b!527500 (= lt!242887 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!527501 () Bool)

(declare-fun res!323934 () Bool)

(assert (=> b!527501 (=> res!323934 e!307424)))

(assert (=> b!527501 (= res!323934 (or (undefined!5356 lt!242880) (not (is-Intermediate!4544 lt!242880))))))

(assert (= (and start!47918 res!323933) b!527490))

(assert (= (and b!527490 res!323935) b!527491))

(assert (= (and b!527491 res!323929) b!527492))

(assert (= (and b!527492 res!323937) b!527499))

(assert (= (and b!527499 res!323932) b!527500))

(assert (= (and b!527500 res!323928) b!527489))

(assert (= (and b!527489 res!323936) b!527494))

(assert (= (and b!527494 res!323939) b!527495))

(assert (= (and b!527495 res!323938) b!527498))

(assert (= (and b!527495 (not res!323931)) b!527501))

(assert (= (and b!527501 (not res!323934)) b!527496))

(assert (= (and b!527496 c!62087) b!527497))

(assert (= (and b!527496 (not c!62087)) b!527488))

(assert (= (and b!527497 res!323930) b!527493))

(declare-fun m!508187 () Bool)

(assert (=> start!47918 m!508187))

(declare-fun m!508189 () Bool)

(assert (=> start!47918 m!508189))

(declare-fun m!508191 () Bool)

(assert (=> b!527495 m!508191))

(declare-fun m!508193 () Bool)

(assert (=> b!527495 m!508193))

(declare-fun m!508195 () Bool)

(assert (=> b!527495 m!508195))

(declare-fun m!508197 () Bool)

(assert (=> b!527495 m!508197))

(declare-fun m!508199 () Bool)

(assert (=> b!527495 m!508199))

(assert (=> b!527495 m!508197))

(declare-fun m!508201 () Bool)

(assert (=> b!527495 m!508201))

(declare-fun m!508203 () Bool)

(assert (=> b!527495 m!508203))

(declare-fun m!508205 () Bool)

(assert (=> b!527495 m!508205))

(assert (=> b!527495 m!508197))

(declare-fun m!508207 () Bool)

(assert (=> b!527495 m!508207))

(declare-fun m!508209 () Bool)

(assert (=> b!527492 m!508209))

(declare-fun m!508211 () Bool)

(assert (=> b!527499 m!508211))

(assert (=> b!527491 m!508197))

(assert (=> b!527491 m!508197))

(declare-fun m!508213 () Bool)

(assert (=> b!527491 m!508213))

(declare-fun m!508215 () Bool)

(assert (=> b!527496 m!508215))

(declare-fun m!508217 () Bool)

(assert (=> b!527496 m!508217))

(assert (=> b!527496 m!508197))

(declare-fun m!508219 () Bool)

(assert (=> b!527494 m!508219))

(declare-fun m!508221 () Bool)

(assert (=> b!527500 m!508221))

(assert (=> b!527498 m!508197))

(assert (=> b!527498 m!508197))

(declare-fun m!508223 () Bool)

(assert (=> b!527498 m!508223))

(declare-fun m!508225 () Bool)

(assert (=> b!527489 m!508225))

(declare-fun m!508227 () Bool)

(assert (=> b!527497 m!508227))

(declare-fun m!508229 () Bool)

(assert (=> b!527497 m!508229))

(push 1)

