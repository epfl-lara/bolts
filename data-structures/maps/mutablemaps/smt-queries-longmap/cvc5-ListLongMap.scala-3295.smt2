; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45724 () Bool)

(assert start!45724)

(declare-fun b!504940 () Bool)

(declare-fun e!295618 () Bool)

(declare-fun e!295613 () Bool)

(assert (=> b!504940 (= e!295618 (not e!295613))))

(declare-fun res!306194 () Bool)

(assert (=> b!504940 (=> res!306194 e!295613)))

(declare-datatypes ((SeekEntryResult!4071 0))(
  ( (MissingZero!4071 (index!18472 (_ BitVec 32))) (Found!4071 (index!18473 (_ BitVec 32))) (Intermediate!4071 (undefined!4883 Bool) (index!18474 (_ BitVec 32)) (x!47515 (_ BitVec 32))) (Undefined!4071) (MissingVacant!4071 (index!18475 (_ BitVec 32))) )
))
(declare-fun lt!230094 () SeekEntryResult!4071)

(declare-fun lt!230090 () SeekEntryResult!4071)

(assert (=> b!504940 (= res!306194 (or (= lt!230094 lt!230090) (undefined!4883 lt!230094) (not (is-Intermediate!4071 lt!230094))))))

(declare-datatypes ((array!32440 0))(
  ( (array!32441 (arr!15597 (Array (_ BitVec 32) (_ BitVec 64))) (size!15961 (_ BitVec 32))) )
))
(declare-fun lt!230092 () array!32440)

(declare-fun lt!230093 () (_ BitVec 32))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun lt!230098 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32440 (_ BitVec 32)) SeekEntryResult!4071)

(assert (=> b!504940 (= lt!230090 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!230093 lt!230098 lt!230092 mask!3524))))

(declare-fun lt!230099 () (_ BitVec 32))

(declare-fun a!3235 () array!32440)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!504940 (= lt!230094 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!230099 (select (arr!15597 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!504940 (= lt!230093 (toIndex!0 lt!230098 mask!3524))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!504940 (= lt!230098 (select (store (arr!15597 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!504940 (= lt!230099 (toIndex!0 (select (arr!15597 a!3235) j!176) mask!3524))))

(assert (=> b!504940 (= lt!230092 (array!32441 (store (arr!15597 a!3235) i!1204 k!2280) (size!15961 a!3235)))))

(declare-fun lt!230087 () SeekEntryResult!4071)

(assert (=> b!504940 (= lt!230087 (Found!4071 j!176))))

(declare-fun e!295616 () Bool)

(assert (=> b!504940 e!295616))

(declare-fun res!306190 () Bool)

(assert (=> b!504940 (=> (not res!306190) (not e!295616))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32440 (_ BitVec 32)) Bool)

(assert (=> b!504940 (= res!306190 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15374 0))(
  ( (Unit!15375) )
))
(declare-fun lt!230088 () Unit!15374)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32440 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15374)

(assert (=> b!504940 (= lt!230088 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!504941 () Bool)

(declare-fun res!306202 () Bool)

(declare-fun e!295621 () Bool)

(assert (=> b!504941 (=> res!306202 e!295621)))

(declare-fun e!295620 () Bool)

(assert (=> b!504941 (= res!306202 e!295620)))

(declare-fun res!306193 () Bool)

(assert (=> b!504941 (=> (not res!306193) (not e!295620))))

(assert (=> b!504941 (= res!306193 (bvsgt #b00000000000000000000000000000000 (x!47515 lt!230094)))))

(declare-fun b!504942 () Bool)

(declare-fun res!306196 () Bool)

(assert (=> b!504942 (=> res!306196 e!295621)))

(assert (=> b!504942 (= res!306196 (not (= lt!230090 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!230099 lt!230098 lt!230092 mask!3524))))))

(declare-fun b!504943 () Bool)

(declare-fun e!295617 () Unit!15374)

(declare-fun Unit!15376 () Unit!15374)

(assert (=> b!504943 (= e!295617 Unit!15376)))

(declare-fun lt!230091 () Unit!15374)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32440 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15374)

(assert (=> b!504943 (= lt!230091 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!230099 #b00000000000000000000000000000000 (index!18474 lt!230094) (x!47515 lt!230094) mask!3524))))

(declare-fun res!306200 () Bool)

(assert (=> b!504943 (= res!306200 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!230099 lt!230098 lt!230092 mask!3524) (Intermediate!4071 false (index!18474 lt!230094) (x!47515 lt!230094))))))

(declare-fun e!295614 () Bool)

(assert (=> b!504943 (=> (not res!306200) (not e!295614))))

(assert (=> b!504943 e!295614))

(declare-fun b!504944 () Bool)

(declare-fun res!306203 () Bool)

(declare-fun e!295619 () Bool)

(assert (=> b!504944 (=> (not res!306203) (not e!295619))))

(declare-fun arrayContainsKey!0 (array!32440 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!504944 (= res!306203 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun res!306201 () Bool)

(assert (=> start!45724 (=> (not res!306201) (not e!295619))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45724 (= res!306201 (validMask!0 mask!3524))))

(assert (=> start!45724 e!295619))

(assert (=> start!45724 true))

(declare-fun array_inv!11371 (array!32440) Bool)

(assert (=> start!45724 (array_inv!11371 a!3235)))

(declare-fun b!504945 () Bool)

(declare-fun res!306198 () Bool)

(assert (=> b!504945 (=> (not res!306198) (not e!295619))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!504945 (= res!306198 (validKeyInArray!0 (select (arr!15597 a!3235) j!176)))))

(declare-fun b!504946 () Bool)

(declare-fun res!306195 () Bool)

(assert (=> b!504946 (=> (not res!306195) (not e!295618))))

(assert (=> b!504946 (= res!306195 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!504947 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32440 (_ BitVec 32)) SeekEntryResult!4071)

(assert (=> b!504947 (= e!295620 (not (= (seekKeyOrZeroReturnVacant!0 #b00000000000000000000000000000000 lt!230099 (index!18474 lt!230094) (select (arr!15597 a!3235) j!176) a!3235 mask!3524) lt!230087)))))

(declare-fun b!504948 () Bool)

(assert (=> b!504948 (= e!295613 e!295621)))

(declare-fun res!306199 () Bool)

(assert (=> b!504948 (=> res!306199 e!295621)))

(assert (=> b!504948 (= res!306199 (or (bvsgt (x!47515 lt!230094) #b01111111111111111111111111111110) (bvslt lt!230099 #b00000000000000000000000000000000) (bvsge lt!230099 (size!15961 a!3235)) (bvslt (index!18474 lt!230094) #b00000000000000000000000000000000) (bvsge (index!18474 lt!230094) (size!15961 a!3235)) (not (= lt!230094 (Intermediate!4071 false (index!18474 lt!230094) (x!47515 lt!230094))))))))

(assert (=> b!504948 (= (index!18474 lt!230094) i!1204)))

(declare-fun lt!230089 () Unit!15374)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!32440 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15374)

(assert (=> b!504948 (= lt!230089 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!230099 #b00000000000000000000000000000000 (index!18474 lt!230094) (x!47515 lt!230094) mask!3524))))

(assert (=> b!504948 (and (or (= (select (arr!15597 a!3235) (index!18474 lt!230094)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15597 a!3235) (index!18474 lt!230094)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15597 a!3235) (index!18474 lt!230094)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15597 a!3235) (index!18474 lt!230094)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!230096 () Unit!15374)

(assert (=> b!504948 (= lt!230096 e!295617)))

(declare-fun c!59654 () Bool)

(assert (=> b!504948 (= c!59654 (= (select (arr!15597 a!3235) (index!18474 lt!230094)) (select (arr!15597 a!3235) j!176)))))

(assert (=> b!504948 (and (bvslt (x!47515 lt!230094) #b01111111111111111111111111111110) (or (= (select (arr!15597 a!3235) (index!18474 lt!230094)) (select (arr!15597 a!3235) j!176)) (= (select (arr!15597 a!3235) (index!18474 lt!230094)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15597 a!3235) (index!18474 lt!230094)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!504949 () Bool)

(assert (=> b!504949 (= e!295621 true)))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32440 (_ BitVec 32)) SeekEntryResult!4071)

(assert (=> b!504949 (= (seekEntryOrOpen!0 lt!230098 lt!230092 mask!3524) lt!230087)))

(declare-fun lt!230095 () Unit!15374)

(declare-fun lemmaPutValidKeyPreservesVacantIsAtI!0 (array!32440 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15374)

(assert (=> b!504949 (= lt!230095 (lemmaPutValidKeyPreservesVacantIsAtI!0 a!3235 i!1204 k!2280 j!176 lt!230099 #b00000000000000000000000000000000 (index!18474 lt!230094) (x!47515 lt!230094) mask!3524))))

(declare-fun b!504950 () Bool)

(declare-fun res!306197 () Bool)

(assert (=> b!504950 (=> (not res!306197) (not e!295619))))

(assert (=> b!504950 (= res!306197 (and (= (size!15961 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15961 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15961 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!504951 () Bool)

(declare-fun Unit!15377 () Unit!15374)

(assert (=> b!504951 (= e!295617 Unit!15377)))

(declare-fun b!504952 () Bool)

(assert (=> b!504952 (= e!295616 (= (seekEntryOrOpen!0 (select (arr!15597 a!3235) j!176) a!3235 mask!3524) (Found!4071 j!176)))))

(declare-fun b!504953 () Bool)

(declare-fun res!306191 () Bool)

(assert (=> b!504953 (=> (not res!306191) (not e!295619))))

(assert (=> b!504953 (= res!306191 (validKeyInArray!0 k!2280))))

(declare-fun b!504954 () Bool)

(assert (=> b!504954 (= e!295614 false)))

(declare-fun b!504955 () Bool)

(declare-fun res!306189 () Bool)

(assert (=> b!504955 (=> (not res!306189) (not e!295618))))

(declare-datatypes ((List!9808 0))(
  ( (Nil!9805) (Cons!9804 (h!10681 (_ BitVec 64)) (t!16044 List!9808)) )
))
(declare-fun arrayNoDuplicates!0 (array!32440 (_ BitVec 32) List!9808) Bool)

(assert (=> b!504955 (= res!306189 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9805))))

(declare-fun b!504956 () Bool)

(assert (=> b!504956 (= e!295619 e!295618)))

(declare-fun res!306192 () Bool)

(assert (=> b!504956 (=> (not res!306192) (not e!295618))))

(declare-fun lt!230097 () SeekEntryResult!4071)

(assert (=> b!504956 (= res!306192 (or (= lt!230097 (MissingZero!4071 i!1204)) (= lt!230097 (MissingVacant!4071 i!1204))))))

(assert (=> b!504956 (= lt!230097 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(assert (= (and start!45724 res!306201) b!504950))

(assert (= (and b!504950 res!306197) b!504945))

(assert (= (and b!504945 res!306198) b!504953))

(assert (= (and b!504953 res!306191) b!504944))

(assert (= (and b!504944 res!306203) b!504956))

(assert (= (and b!504956 res!306192) b!504946))

(assert (= (and b!504946 res!306195) b!504955))

(assert (= (and b!504955 res!306189) b!504940))

(assert (= (and b!504940 res!306190) b!504952))

(assert (= (and b!504940 (not res!306194)) b!504948))

(assert (= (and b!504948 c!59654) b!504943))

(assert (= (and b!504948 (not c!59654)) b!504951))

(assert (= (and b!504943 res!306200) b!504954))

(assert (= (and b!504948 (not res!306199)) b!504941))

(assert (= (and b!504941 res!306193) b!504947))

(assert (= (and b!504941 (not res!306202)) b!504942))

(assert (= (and b!504942 (not res!306196)) b!504949))

(declare-fun m!485647 () Bool)

(assert (=> b!504949 m!485647))

(declare-fun m!485649 () Bool)

(assert (=> b!504949 m!485649))

(declare-fun m!485651 () Bool)

(assert (=> b!504953 m!485651))

(declare-fun m!485653 () Bool)

(assert (=> b!504947 m!485653))

(assert (=> b!504947 m!485653))

(declare-fun m!485655 () Bool)

(assert (=> b!504947 m!485655))

(declare-fun m!485657 () Bool)

(assert (=> start!45724 m!485657))

(declare-fun m!485659 () Bool)

(assert (=> start!45724 m!485659))

(declare-fun m!485661 () Bool)

(assert (=> b!504944 m!485661))

(declare-fun m!485663 () Bool)

(assert (=> b!504956 m!485663))

(declare-fun m!485665 () Bool)

(assert (=> b!504942 m!485665))

(declare-fun m!485667 () Bool)

(assert (=> b!504943 m!485667))

(assert (=> b!504943 m!485665))

(declare-fun m!485669 () Bool)

(assert (=> b!504955 m!485669))

(declare-fun m!485671 () Bool)

(assert (=> b!504940 m!485671))

(declare-fun m!485673 () Bool)

(assert (=> b!504940 m!485673))

(assert (=> b!504940 m!485653))

(declare-fun m!485675 () Bool)

(assert (=> b!504940 m!485675))

(declare-fun m!485677 () Bool)

(assert (=> b!504940 m!485677))

(assert (=> b!504940 m!485653))

(declare-fun m!485679 () Bool)

(assert (=> b!504940 m!485679))

(assert (=> b!504940 m!485653))

(declare-fun m!485681 () Bool)

(assert (=> b!504940 m!485681))

(declare-fun m!485683 () Bool)

(assert (=> b!504940 m!485683))

(declare-fun m!485685 () Bool)

(assert (=> b!504940 m!485685))

(declare-fun m!485687 () Bool)

(assert (=> b!504948 m!485687))

(declare-fun m!485689 () Bool)

(assert (=> b!504948 m!485689))

(assert (=> b!504948 m!485653))

(assert (=> b!504945 m!485653))

(assert (=> b!504945 m!485653))

(declare-fun m!485691 () Bool)

(assert (=> b!504945 m!485691))

(declare-fun m!485693 () Bool)

(assert (=> b!504946 m!485693))

(assert (=> b!504952 m!485653))

(assert (=> b!504952 m!485653))

(declare-fun m!485695 () Bool)

(assert (=> b!504952 m!485695))

(push 1)

