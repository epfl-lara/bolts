; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45508 () Bool)

(assert start!45508)

(declare-fun b!500962 () Bool)

(declare-fun e!293474 () Bool)

(declare-fun e!293478 () Bool)

(assert (=> b!500962 (= e!293474 (not e!293478))))

(declare-fun res!302845 () Bool)

(assert (=> b!500962 (=> res!302845 e!293478)))

(declare-datatypes ((array!32293 0))(
  ( (array!32294 (arr!15525 (Array (_ BitVec 32) (_ BitVec 64))) (size!15889 (_ BitVec 32))) )
))
(declare-fun lt!227566 () array!32293)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3999 0))(
  ( (MissingZero!3999 (index!18178 (_ BitVec 32))) (Found!3999 (index!18179 (_ BitVec 32))) (Intermediate!3999 (undefined!4811 Bool) (index!18180 (_ BitVec 32)) (x!47239 (_ BitVec 32))) (Undefined!3999) (MissingVacant!3999 (index!18181 (_ BitVec 32))) )
))
(declare-fun lt!227563 () SeekEntryResult!3999)

(declare-fun lt!227569 () (_ BitVec 32))

(declare-fun lt!227570 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32293 (_ BitVec 32)) SeekEntryResult!3999)

(assert (=> b!500962 (= res!302845 (= lt!227563 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!227569 lt!227570 lt!227566 mask!3524)))))

(declare-fun lt!227568 () (_ BitVec 32))

(declare-fun a!3235 () array!32293)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!500962 (= lt!227563 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!227568 (select (arr!15525 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!500962 (= lt!227569 (toIndex!0 lt!227570 mask!3524))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!500962 (= lt!227570 (select (store (arr!15525 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!500962 (= lt!227568 (toIndex!0 (select (arr!15525 a!3235) j!176) mask!3524))))

(assert (=> b!500962 (= lt!227566 (array!32294 (store (arr!15525 a!3235) i!1204 k!2280) (size!15889 a!3235)))))

(declare-fun e!293476 () Bool)

(assert (=> b!500962 e!293476))

(declare-fun res!302844 () Bool)

(assert (=> b!500962 (=> (not res!302844) (not e!293476))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32293 (_ BitVec 32)) Bool)

(assert (=> b!500962 (= res!302844 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15086 0))(
  ( (Unit!15087) )
))
(declare-fun lt!227567 () Unit!15086)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32293 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15086)

(assert (=> b!500962 (= lt!227567 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!500963 () Bool)

(declare-fun res!302849 () Bool)

(assert (=> b!500963 (=> (not res!302849) (not e!293474))))

(declare-datatypes ((List!9736 0))(
  ( (Nil!9733) (Cons!9732 (h!10606 (_ BitVec 64)) (t!15972 List!9736)) )
))
(declare-fun arrayNoDuplicates!0 (array!32293 (_ BitVec 32) List!9736) Bool)

(assert (=> b!500963 (= res!302849 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9733))))

(declare-fun b!500964 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32293 (_ BitVec 32)) SeekEntryResult!3999)

(assert (=> b!500964 (= e!293476 (= (seekEntryOrOpen!0 (select (arr!15525 a!3235) j!176) a!3235 mask!3524) (Found!3999 j!176)))))

(declare-fun b!500965 () Bool)

(declare-fun e!293477 () Unit!15086)

(declare-fun Unit!15088 () Unit!15086)

(assert (=> b!500965 (= e!293477 Unit!15088)))

(declare-fun b!500966 () Bool)

(declare-fun Unit!15089 () Unit!15086)

(assert (=> b!500966 (= e!293477 Unit!15089)))

(declare-fun lt!227565 () Unit!15086)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32293 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15086)

(assert (=> b!500966 (= lt!227565 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!227568 #b00000000000000000000000000000000 (index!18180 lt!227563) (x!47239 lt!227563) mask!3524))))

(declare-fun res!302850 () Bool)

(assert (=> b!500966 (= res!302850 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!227568 lt!227570 lt!227566 mask!3524) (Intermediate!3999 false (index!18180 lt!227563) (x!47239 lt!227563))))))

(declare-fun e!293479 () Bool)

(assert (=> b!500966 (=> (not res!302850) (not e!293479))))

(assert (=> b!500966 e!293479))

(declare-fun b!500967 () Bool)

(declare-fun e!293475 () Bool)

(assert (=> b!500967 (= e!293475 e!293474)))

(declare-fun res!302848 () Bool)

(assert (=> b!500967 (=> (not res!302848) (not e!293474))))

(declare-fun lt!227564 () SeekEntryResult!3999)

(assert (=> b!500967 (= res!302848 (or (= lt!227564 (MissingZero!3999 i!1204)) (= lt!227564 (MissingVacant!3999 i!1204))))))

(assert (=> b!500967 (= lt!227564 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!500968 () Bool)

(assert (=> b!500968 (= e!293478 (or (bvslt mask!3524 #b00000000000000000000000000000000) (bvsle mask!3524 #b00111111111111111111111111111111)))))

(assert (=> b!500968 (= (index!18180 lt!227563) i!1204)))

(declare-fun lt!227562 () Unit!15086)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!32293 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15086)

(assert (=> b!500968 (= lt!227562 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!227568 #b00000000000000000000000000000000 (index!18180 lt!227563) (x!47239 lt!227563) mask!3524))))

(assert (=> b!500968 (and (or (= (select (arr!15525 a!3235) (index!18180 lt!227563)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15525 a!3235) (index!18180 lt!227563)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15525 a!3235) (index!18180 lt!227563)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15525 a!3235) (index!18180 lt!227563)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!227561 () Unit!15086)

(assert (=> b!500968 (= lt!227561 e!293477)))

(declare-fun c!59336 () Bool)

(assert (=> b!500968 (= c!59336 (= (select (arr!15525 a!3235) (index!18180 lt!227563)) (select (arr!15525 a!3235) j!176)))))

(assert (=> b!500968 (and (bvslt (x!47239 lt!227563) #b01111111111111111111111111111110) (or (= (select (arr!15525 a!3235) (index!18180 lt!227563)) (select (arr!15525 a!3235) j!176)) (= (select (arr!15525 a!3235) (index!18180 lt!227563)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15525 a!3235) (index!18180 lt!227563)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!500969 () Bool)

(assert (=> b!500969 (= e!293479 false)))

(declare-fun b!500970 () Bool)

(declare-fun res!302855 () Bool)

(assert (=> b!500970 (=> res!302855 e!293478)))

(assert (=> b!500970 (= res!302855 (or (undefined!4811 lt!227563) (not (is-Intermediate!3999 lt!227563))))))

(declare-fun b!500971 () Bool)

(declare-fun res!302847 () Bool)

(assert (=> b!500971 (=> (not res!302847) (not e!293475))))

(assert (=> b!500971 (= res!302847 (and (= (size!15889 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15889 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15889 a!3235)) (not (= i!1204 j!176))))))

(declare-fun res!302853 () Bool)

(assert (=> start!45508 (=> (not res!302853) (not e!293475))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45508 (= res!302853 (validMask!0 mask!3524))))

(assert (=> start!45508 e!293475))

(assert (=> start!45508 true))

(declare-fun array_inv!11299 (array!32293) Bool)

(assert (=> start!45508 (array_inv!11299 a!3235)))

(declare-fun b!500972 () Bool)

(declare-fun res!302846 () Bool)

(assert (=> b!500972 (=> (not res!302846) (not e!293475))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!500972 (= res!302846 (validKeyInArray!0 k!2280))))

(declare-fun b!500973 () Bool)

(declare-fun res!302854 () Bool)

(assert (=> b!500973 (=> (not res!302854) (not e!293475))))

(declare-fun arrayContainsKey!0 (array!32293 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!500973 (= res!302854 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!500974 () Bool)

(declare-fun res!302852 () Bool)

(assert (=> b!500974 (=> (not res!302852) (not e!293474))))

(assert (=> b!500974 (= res!302852 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!500975 () Bool)

(declare-fun res!302851 () Bool)

(assert (=> b!500975 (=> (not res!302851) (not e!293475))))

(assert (=> b!500975 (= res!302851 (validKeyInArray!0 (select (arr!15525 a!3235) j!176)))))

(assert (= (and start!45508 res!302853) b!500971))

(assert (= (and b!500971 res!302847) b!500975))

(assert (= (and b!500975 res!302851) b!500972))

(assert (= (and b!500972 res!302846) b!500973))

(assert (= (and b!500973 res!302854) b!500967))

(assert (= (and b!500967 res!302848) b!500974))

(assert (= (and b!500974 res!302852) b!500963))

(assert (= (and b!500963 res!302849) b!500962))

(assert (= (and b!500962 res!302844) b!500964))

(assert (= (and b!500962 (not res!302845)) b!500970))

(assert (= (and b!500970 (not res!302855)) b!500968))

(assert (= (and b!500968 c!59336) b!500966))

(assert (= (and b!500968 (not c!59336)) b!500965))

(assert (= (and b!500966 res!302850) b!500969))

(declare-fun m!482101 () Bool)

(assert (=> b!500963 m!482101))

(declare-fun m!482103 () Bool)

(assert (=> b!500972 m!482103))

(declare-fun m!482105 () Bool)

(assert (=> b!500967 m!482105))

(declare-fun m!482107 () Bool)

(assert (=> b!500966 m!482107))

(declare-fun m!482109 () Bool)

(assert (=> b!500966 m!482109))

(declare-fun m!482111 () Bool)

(assert (=> b!500975 m!482111))

(assert (=> b!500975 m!482111))

(declare-fun m!482113 () Bool)

(assert (=> b!500975 m!482113))

(declare-fun m!482115 () Bool)

(assert (=> b!500973 m!482115))

(declare-fun m!482117 () Bool)

(assert (=> b!500962 m!482117))

(declare-fun m!482119 () Bool)

(assert (=> b!500962 m!482119))

(declare-fun m!482121 () Bool)

(assert (=> b!500962 m!482121))

(declare-fun m!482123 () Bool)

(assert (=> b!500962 m!482123))

(declare-fun m!482125 () Bool)

(assert (=> b!500962 m!482125))

(assert (=> b!500962 m!482111))

(declare-fun m!482127 () Bool)

(assert (=> b!500962 m!482127))

(assert (=> b!500962 m!482111))

(assert (=> b!500962 m!482111))

(declare-fun m!482129 () Bool)

(assert (=> b!500962 m!482129))

(declare-fun m!482131 () Bool)

(assert (=> b!500962 m!482131))

(declare-fun m!482133 () Bool)

(assert (=> b!500968 m!482133))

(declare-fun m!482135 () Bool)

(assert (=> b!500968 m!482135))

(assert (=> b!500968 m!482111))

(assert (=> b!500964 m!482111))

(assert (=> b!500964 m!482111))

(declare-fun m!482137 () Bool)

(assert (=> b!500964 m!482137))

(declare-fun m!482139 () Bool)

(assert (=> start!45508 m!482139))

(declare-fun m!482141 () Bool)

(assert (=> start!45508 m!482141))

(declare-fun m!482143 () Bool)

(assert (=> b!500974 m!482143))

(push 1)

(assert (not b!500975))

(assert (not b!500966))

(assert (not b!500967))

(assert (not b!500964))

(assert (not start!45508))

(assert (not b!500963))

(assert (not b!500973))

(assert (not b!500962))

(assert (not b!500974))

(assert (not b!500972))

(assert (not b!500968))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!78413 () Bool)

(assert (=> d!78413 (= (validMask!0 mask!3524) (and (or (= mask!3524 #b00000000000000000000000000000111) (= mask!3524 #b00000000000000000000000000001111) (= mask!3524 #b00000000000000000000000000011111) (= mask!3524 #b00000000000000000000000000111111) (= mask!3524 #b00000000000000000000000001111111) (= mask!3524 #b00000000000000000000000011111111) (= mask!3524 #b00000000000000000000000111111111) (= mask!3524 #b00000000000000000000001111111111) (= mask!3524 #b00000000000000000000011111111111) (= mask!3524 #b00000000000000000000111111111111) (= mask!3524 #b00000000000000000001111111111111) (= mask!3524 #b00000000000000000011111111111111) (= mask!3524 #b00000000000000000111111111111111) (= mask!3524 #b00000000000000001111111111111111) (= mask!3524 #b00000000000000011111111111111111) (= mask!3524 #b00000000000000111111111111111111) (= mask!3524 #b00000000000001111111111111111111) (= mask!3524 #b00000000000011111111111111111111) (= mask!3524 #b00000000000111111111111111111111) (= mask!3524 #b00000000001111111111111111111111) (= mask!3524 #b00000000011111111111111111111111) (= mask!3524 #b00000000111111111111111111111111) (= mask!3524 #b00000001111111111111111111111111) (= mask!3524 #b00000011111111111111111111111111) (= mask!3524 #b00000111111111111111111111111111) (= mask!3524 #b00001111111111111111111111111111) (= mask!3524 #b00011111111111111111111111111111) (= mask!3524 #b00111111111111111111111111111111)) (bvsle mask!3524 #b00111111111111111111111111111111)))))

(assert (=> start!45508 d!78413))

(declare-fun d!78421 () Bool)

(assert (=> d!78421 (= (array_inv!11299 a!3235) (bvsge (size!15889 a!3235) #b00000000000000000000000000000000))))

(assert (=> start!45508 d!78421))

(declare-fun d!78423 () Bool)

(assert (=> d!78423 (= (index!18180 lt!227563) i!1204)))

(declare-fun lt!227645 () Unit!15086)

(declare-fun choose!104 (array!32293 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15086)

(assert (=> d!78423 (= lt!227645 (choose!104 a!3235 i!1204 k!2280 j!176 lt!227568 #b00000000000000000000000000000000 (index!18180 lt!227563) (x!47239 lt!227563) mask!3524))))

(assert (=> d!78423 (validMask!0 mask!3524)))

(assert (=> d!78423 (= (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!227568 #b00000000000000000000000000000000 (index!18180 lt!227563) (x!47239 lt!227563) mask!3524) lt!227645)))

(declare-fun bs!15925 () Bool)

(assert (= bs!15925 d!78423))

(declare-fun m!482257 () Bool)

(assert (=> bs!15925 m!482257))

(assert (=> bs!15925 m!482139))

(assert (=> b!500968 d!78423))

(declare-fun d!78425 () Bool)

(assert (=> d!78425 (= (validKeyInArray!0 k!2280) (and (not (= k!2280 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2280 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!500972 d!78425))

(declare-fun d!78427 () Bool)

(declare-fun lt!227663 () (_ BitVec 32))

(declare-fun lt!227662 () (_ BitVec 32))

(assert (=> d!78427 (= lt!227663 (bvmul (bvxor lt!227662 (bvlshr lt!227662 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!78427 (= lt!227662 ((_ extract 31 0) (bvand (bvxor (select (arr!15525 a!3235) j!176) (bvlshr (select (arr!15525 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!78427 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!302941 (let ((h!10609 ((_ extract 31 0) (bvand (bvxor (select (arr!15525 a!3235) j!176) (bvlshr (select (arr!15525 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!47244 (bvmul (bvxor h!10609 (bvlshr h!10609 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!47244 (bvlshr x!47244 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!302941 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!302941 #b00000000000000000000000000000000))))))

(assert (=> d!78427 (= (toIndex!0 (select (arr!15525 a!3235) j!176) mask!3524) (bvand (bvxor lt!227663 (bvlshr lt!227663 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!500962 d!78427))

(declare-fun d!78433 () Bool)

(declare-fun lt!227665 () (_ BitVec 32))

(declare-fun lt!227664 () (_ BitVec 32))

(assert (=> d!78433 (= lt!227665 (bvmul (bvxor lt!227664 (bvlshr lt!227664 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!78433 (= lt!227664 ((_ extract 31 0) (bvand (bvxor lt!227570 (bvlshr lt!227570 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!78433 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!302941 (let ((h!10609 ((_ extract 31 0) (bvand (bvxor lt!227570 (bvlshr lt!227570 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!47244 (bvmul (bvxor h!10609 (bvlshr h!10609 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!47244 (bvlshr x!47244 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!302941 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!302941 #b00000000000000000000000000000000))))))

(assert (=> d!78433 (= (toIndex!0 lt!227570 mask!3524) (bvand (bvxor lt!227665 (bvlshr lt!227665 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!500962 d!78433))

(declare-fun d!78435 () Bool)

(declare-fun res!302952 () Bool)

(declare-fun e!293561 () Bool)

(assert (=> d!78435 (=> res!302952 e!293561)))

(assert (=> d!78435 (= res!302952 (bvsge j!176 (size!15889 a!3235)))))

(assert (=> d!78435 (= (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524) e!293561)))

(declare-fun b!501116 () Bool)

(declare-fun e!293562 () Bool)

(declare-fun call!31457 () Bool)

(assert (=> b!501116 (= e!293562 call!31457)))

(declare-fun b!501117 () Bool)

(declare-fun e!293563 () Bool)

(assert (=> b!501117 (= e!293561 e!293563)))

(declare-fun c!59360 () Bool)

(assert (=> b!501117 (= c!59360 (validKeyInArray!0 (select (arr!15525 a!3235) j!176)))))

(declare-fun bm!31454 () Bool)

(assert (=> bm!31454 (= call!31457 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!176 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!501118 () Bool)

(assert (=> b!501118 (= e!293563 call!31457)))

(declare-fun b!501119 () Bool)

(assert (=> b!501119 (= e!293563 e!293562)))

(declare-fun lt!227672 () (_ BitVec 64))

(assert (=> b!501119 (= lt!227672 (select (arr!15525 a!3235) j!176))))

(declare-fun lt!227674 () Unit!15086)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!32293 (_ BitVec 64) (_ BitVec 32)) Unit!15086)

(assert (=> b!501119 (= lt!227674 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!227672 j!176))))

(assert (=> b!501119 (arrayContainsKey!0 a!3235 lt!227672 #b00000000000000000000000000000000)))

(declare-fun lt!227673 () Unit!15086)

(assert (=> b!501119 (= lt!227673 lt!227674)))

(declare-fun res!302951 () Bool)

(assert (=> b!501119 (= res!302951 (= (seekEntryOrOpen!0 (select (arr!15525 a!3235) j!176) a!3235 mask!3524) (Found!3999 j!176)))))

(assert (=> b!501119 (=> (not res!302951) (not e!293562))))

(assert (= (and d!78435 (not res!302952)) b!501117))

(assert (= (and b!501117 c!59360) b!501119))

(assert (= (and b!501117 (not c!59360)) b!501118))

(assert (= (and b!501119 res!302951) b!501116))

(assert (= (or b!501116 b!501118) bm!31454))

(assert (=> b!501117 m!482111))

(assert (=> b!501117 m!482111))

(assert (=> b!501117 m!482113))

(declare-fun m!482275 () Bool)

(assert (=> bm!31454 m!482275))

(assert (=> b!501119 m!482111))

(declare-fun m!482277 () Bool)

(assert (=> b!501119 m!482277))

(declare-fun m!482279 () Bool)

(assert (=> b!501119 m!482279))

(assert (=> b!501119 m!482111))

(assert (=> b!501119 m!482137))

(assert (=> b!500962 d!78435))

(declare-fun d!78441 () Bool)

(declare-fun e!293604 () Bool)

(assert (=> d!78441 e!293604))

(declare-fun c!59387 () Bool)

(declare-fun lt!227703 () SeekEntryResult!3999)

(assert (=> d!78441 (= c!59387 (and (is-Intermediate!3999 lt!227703) (undefined!4811 lt!227703)))))

(declare-fun e!293606 () SeekEntryResult!3999)

(assert (=> d!78441 (= lt!227703 e!293606)))

(declare-fun c!59386 () Bool)

(assert (=> d!78441 (= c!59386 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!227702 () (_ BitVec 64))

(assert (=> d!78441 (= lt!227702 (select (arr!15525 a!3235) lt!227568))))

(assert (=> d!78441 (validMask!0 mask!3524)))

(assert (=> d!78441 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!227568 (select (arr!15525 a!3235) j!176) a!3235 mask!3524) lt!227703)))

(declare-fun b!501189 () Bool)

(assert (=> b!501189 (= e!293606 (Intermediate!3999 true lt!227568 #b00000000000000000000000000000000))))

(declare-fun b!501190 () Bool)

(assert (=> b!501190 (and (bvsge (index!18180 lt!227703) #b00000000000000000000000000000000) (bvslt (index!18180 lt!227703) (size!15889 a!3235)))))

(declare-fun e!293605 () Bool)

(assert (=> b!501190 (= e!293605 (= (select (arr!15525 a!3235) (index!18180 lt!227703)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!501191 () Bool)

(assert (=> b!501191 (and (bvsge (index!18180 lt!227703) #b00000000000000000000000000000000) (bvslt (index!18180 lt!227703) (size!15889 a!3235)))))

(declare-fun res!302977 () Bool)

(assert (=> b!501191 (= res!302977 (= (select (arr!15525 a!3235) (index!18180 lt!227703)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!501191 (=> res!302977 e!293605)))

(declare-fun b!501192 () Bool)

(declare-fun e!293608 () SeekEntryResult!3999)

(assert (=> b!501192 (= e!293608 (Intermediate!3999 false lt!227568 #b00000000000000000000000000000000))))

(declare-fun b!501193 () Bool)

(declare-fun e!293607 () Bool)

(assert (=> b!501193 (= e!293604 e!293607)))

(declare-fun res!302975 () Bool)

(assert (=> b!501193 (= res!302975 (and (is-Intermediate!3999 lt!227703) (not (undefined!4811 lt!227703)) (bvslt (x!47239 lt!227703) #b01111111111111111111111111111110) (bvsge (x!47239 lt!227703) #b00000000000000000000000000000000) (bvsge (x!47239 lt!227703) #b00000000000000000000000000000000)))))

(assert (=> b!501193 (=> (not res!302975) (not e!293607))))

(declare-fun b!501194 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!501194 (= e!293608 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!227568 #b00000000000000000000000000000000 mask!3524) (select (arr!15525 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!501195 () Bool)

(assert (=> b!501195 (and (bvsge (index!18180 lt!227703) #b00000000000000000000000000000000) (bvslt (index!18180 lt!227703) (size!15889 a!3235)))))

(declare-fun res!302976 () Bool)

(assert (=> b!501195 (= res!302976 (= (select (arr!15525 a!3235) (index!18180 lt!227703)) (select (arr!15525 a!3235) j!176)))))

(assert (=> b!501195 (=> res!302976 e!293605)))

(assert (=> b!501195 (= e!293607 e!293605)))

(declare-fun b!501196 () Bool)

(assert (=> b!501196 (= e!293604 (bvsge (x!47239 lt!227703) #b01111111111111111111111111111110))))

(declare-fun b!501197 () Bool)

(assert (=> b!501197 (= e!293606 e!293608)))

(declare-fun c!59385 () Bool)

(assert (=> b!501197 (= c!59385 (or (= lt!227702 (select (arr!15525 a!3235) j!176)) (= (bvadd lt!227702 lt!227702) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!78441 c!59386) b!501189))

(assert (= (and d!78441 (not c!59386)) b!501197))

(assert (= (and b!501197 c!59385) b!501192))

(assert (= (and b!501197 (not c!59385)) b!501194))

(assert (= (and d!78441 c!59387) b!501196))

(assert (= (and d!78441 (not c!59387)) b!501193))

(assert (= (and b!501193 res!302975) b!501195))

(assert (= (and b!501195 (not res!302976)) b!501191))

(assert (= (and b!501191 (not res!302977)) b!501190))

(declare-fun m!482305 () Bool)

(assert (=> b!501190 m!482305))

(declare-fun m!482307 () Bool)

(assert (=> b!501194 m!482307))

(assert (=> b!501194 m!482307))

(assert (=> b!501194 m!482111))

(declare-fun m!482309 () Bool)

(assert (=> b!501194 m!482309))

(declare-fun m!482311 () Bool)

(assert (=> d!78441 m!482311))

(assert (=> d!78441 m!482139))

(assert (=> b!501191 m!482305))

(assert (=> b!501195 m!482305))

(assert (=> b!500962 d!78441))

(declare-fun d!78453 () Bool)

(assert (=> d!78453 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-fun lt!227715 () Unit!15086)

(declare-fun choose!38 (array!32293 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15086)

(assert (=> d!78453 (= lt!227715 (choose!38 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (=> d!78453 (validMask!0 mask!3524)))

(assert (=> d!78453 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176) lt!227715)))

(declare-fun bs!15927 () Bool)

(assert (= bs!15927 d!78453))

(assert (=> bs!15927 m!482131))

(declare-fun m!482315 () Bool)

(assert (=> bs!15927 m!482315))

(assert (=> bs!15927 m!482139))

(assert (=> b!500962 d!78453))

(declare-fun d!78457 () Bool)

(declare-fun e!293615 () Bool)

(assert (=> d!78457 e!293615))

(declare-fun c!59392 () Bool)

(declare-fun lt!227717 () SeekEntryResult!3999)

(assert (=> d!78457 (= c!59392 (and (is-Intermediate!3999 lt!227717) (undefined!4811 lt!227717)))))

(declare-fun e!293617 () SeekEntryResult!3999)

(assert (=> d!78457 (= lt!227717 e!293617)))

(declare-fun c!59391 () Bool)

(assert (=> d!78457 (= c!59391 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!227716 () (_ BitVec 64))

(assert (=> d!78457 (= lt!227716 (select (arr!15525 lt!227566) lt!227569))))

(assert (=> d!78457 (validMask!0 mask!3524)))

(assert (=> d!78457 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!227569 lt!227570 lt!227566 mask!3524) lt!227717)))

(declare-fun b!501206 () Bool)

(assert (=> b!501206 (= e!293617 (Intermediate!3999 true lt!227569 #b00000000000000000000000000000000))))

(declare-fun b!501207 () Bool)

(assert (=> b!501207 (and (bvsge (index!18180 lt!227717) #b00000000000000000000000000000000) (bvslt (index!18180 lt!227717) (size!15889 lt!227566)))))

(declare-fun e!293616 () Bool)

(assert (=> b!501207 (= e!293616 (= (select (arr!15525 lt!227566) (index!18180 lt!227717)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!501208 () Bool)

(assert (=> b!501208 (and (bvsge (index!18180 lt!227717) #b00000000000000000000000000000000) (bvslt (index!18180 lt!227717) (size!15889 lt!227566)))))

(declare-fun res!302984 () Bool)

(assert (=> b!501208 (= res!302984 (= (select (arr!15525 lt!227566) (index!18180 lt!227717)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!501208 (=> res!302984 e!293616)))

(declare-fun b!501209 () Bool)

(declare-fun e!293619 () SeekEntryResult!3999)

(assert (=> b!501209 (= e!293619 (Intermediate!3999 false lt!227569 #b00000000000000000000000000000000))))

(declare-fun b!501210 () Bool)

(declare-fun e!293618 () Bool)

(assert (=> b!501210 (= e!293615 e!293618)))

(declare-fun res!302982 () Bool)

(assert (=> b!501210 (= res!302982 (and (is-Intermediate!3999 lt!227717) (not (undefined!4811 lt!227717)) (bvslt (x!47239 lt!227717) #b01111111111111111111111111111110) (bvsge (x!47239 lt!227717) #b00000000000000000000000000000000) (bvsge (x!47239 lt!227717) #b00000000000000000000000000000000)))))

(assert (=> b!501210 (=> (not res!302982) (not e!293618))))

(declare-fun b!501211 () Bool)

(assert (=> b!501211 (= e!293619 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!227569 #b00000000000000000000000000000000 mask!3524) lt!227570 lt!227566 mask!3524))))

(declare-fun b!501212 () Bool)

(assert (=> b!501212 (and (bvsge (index!18180 lt!227717) #b00000000000000000000000000000000) (bvslt (index!18180 lt!227717) (size!15889 lt!227566)))))

(declare-fun res!302983 () Bool)

(assert (=> b!501212 (= res!302983 (= (select (arr!15525 lt!227566) (index!18180 lt!227717)) lt!227570))))

(assert (=> b!501212 (=> res!302983 e!293616)))

(assert (=> b!501212 (= e!293618 e!293616)))

(declare-fun b!501213 () Bool)

(assert (=> b!501213 (= e!293615 (bvsge (x!47239 lt!227717) #b01111111111111111111111111111110))))

(declare-fun b!501214 () Bool)

(assert (=> b!501214 (= e!293617 e!293619)))

(declare-fun c!59390 () Bool)

(assert (=> b!501214 (= c!59390 (or (= lt!227716 lt!227570) (= (bvadd lt!227716 lt!227716) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!78457 c!59391) b!501206))

(assert (= (and d!78457 (not c!59391)) b!501214))

(assert (= (and b!501214 c!59390) b!501209))

(assert (= (and b!501214 (not c!59390)) b!501211))

(assert (= (and d!78457 c!59392) b!501213))

(assert (= (and d!78457 (not c!59392)) b!501210))

(assert (= (and b!501210 res!302982) b!501212))

(assert (= (and b!501212 (not res!302983)) b!501208))

(assert (= (and b!501208 (not res!302984)) b!501207))

(declare-fun m!482317 () Bool)

(assert (=> b!501207 m!482317))

(declare-fun m!482319 () Bool)

(assert (=> b!501211 m!482319))

(assert (=> b!501211 m!482319))

(declare-fun m!482321 () Bool)

(assert (=> b!501211 m!482321))

(declare-fun m!482323 () Bool)

(assert (=> d!78457 m!482323))

(assert (=> d!78457 m!482139))

(assert (=> b!501208 m!482317))

(assert (=> b!501212 m!482317))

(assert (=> b!500962 d!78457))

(declare-fun lt!227746 () SeekEntryResult!3999)

(declare-fun b!501286 () Bool)

(declare-fun e!293661 () SeekEntryResult!3999)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32293 (_ BitVec 32)) SeekEntryResult!3999)

(assert (=> b!501286 (= e!293661 (seekKeyOrZeroReturnVacant!0 (x!47239 lt!227746) (index!18180 lt!227746) (index!18180 lt!227746) (select (arr!15525 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!501287 () Bool)

(assert (=> b!501287 (= e!293661 (MissingZero!3999 (index!18180 lt!227746)))))

(declare-fun b!501288 () Bool)

(declare-fun e!293662 () SeekEntryResult!3999)

(assert (=> b!501288 (= e!293662 (Found!3999 (index!18180 lt!227746)))))

(declare-fun b!501289 () Bool)

(declare-fun e!293660 () SeekEntryResult!3999)

(assert (=> b!501289 (= e!293660 e!293662)))

(declare-fun lt!227748 () (_ BitVec 64))

(assert (=> b!501289 (= lt!227748 (select (arr!15525 a!3235) (index!18180 lt!227746)))))

(declare-fun c!59421 () Bool)

(assert (=> b!501289 (= c!59421 (= lt!227748 (select (arr!15525 a!3235) j!176)))))

(declare-fun b!501290 () Bool)

(declare-fun c!59419 () Bool)

(assert (=> b!501290 (= c!59419 (= lt!227748 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!501290 (= e!293662 e!293661)))

(declare-fun d!78459 () Bool)

(declare-fun lt!227747 () SeekEntryResult!3999)

(assert (=> d!78459 (and (or (is-Undefined!3999 lt!227747) (not (is-Found!3999 lt!227747)) (and (bvsge (index!18179 lt!227747) #b00000000000000000000000000000000) (bvslt (index!18179 lt!227747) (size!15889 a!3235)))) (or (is-Undefined!3999 lt!227747) (is-Found!3999 lt!227747) (not (is-MissingZero!3999 lt!227747)) (and (bvsge (index!18178 lt!227747) #b00000000000000000000000000000000) (bvslt (index!18178 lt!227747) (size!15889 a!3235)))) (or (is-Undefined!3999 lt!227747) (is-Found!3999 lt!227747) (is-MissingZero!3999 lt!227747) (not (is-MissingVacant!3999 lt!227747)) (and (bvsge (index!18181 lt!227747) #b00000000000000000000000000000000) (bvslt (index!18181 lt!227747) (size!15889 a!3235)))) (or (is-Undefined!3999 lt!227747) (ite (is-Found!3999 lt!227747) (= (select (arr!15525 a!3235) (index!18179 lt!227747)) (select (arr!15525 a!3235) j!176)) (ite (is-MissingZero!3999 lt!227747) (= (select (arr!15525 a!3235) (index!18178 lt!227747)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!3999 lt!227747) (= (select (arr!15525 a!3235) (index!18181 lt!227747)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!78459 (= lt!227747 e!293660)))

(declare-fun c!59420 () Bool)

(assert (=> d!78459 (= c!59420 (and (is-Intermediate!3999 lt!227746) (undefined!4811 lt!227746)))))

(assert (=> d!78459 (= lt!227746 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15525 a!3235) j!176) mask!3524) (select (arr!15525 a!3235) j!176) a!3235 mask!3524))))

(assert (=> d!78459 (validMask!0 mask!3524)))

(assert (=> d!78459 (= (seekEntryOrOpen!0 (select (arr!15525 a!3235) j!176) a!3235 mask!3524) lt!227747)))

(declare-fun b!501291 () Bool)

(assert (=> b!501291 (= e!293660 Undefined!3999)))

(assert (= (and d!78459 c!59420) b!501291))

(assert (= (and d!78459 (not c!59420)) b!501289))

(assert (= (and b!501289 c!59421) b!501288))

(assert (= (and b!501289 (not c!59421)) b!501290))

(assert (= (and b!501290 c!59419) b!501287))

(assert (= (and b!501290 (not c!59419)) b!501286))

(assert (=> b!501286 m!482111))

(declare-fun m!482375 () Bool)

(assert (=> b!501286 m!482375))

(declare-fun m!482377 () Bool)

(assert (=> b!501289 m!482377))

(declare-fun m!482379 () Bool)

(assert (=> d!78459 m!482379))

(assert (=> d!78459 m!482139))

(declare-fun m!482381 () Bool)

(assert (=> d!78459 m!482381))

(declare-fun m!482383 () Bool)

(assert (=> d!78459 m!482383))

(assert (=> d!78459 m!482111))

(assert (=> d!78459 m!482127))

(assert (=> d!78459 m!482127))

(assert (=> d!78459 m!482111))

(declare-fun m!482385 () Bool)

(assert (=> d!78459 m!482385))

(assert (=> b!500964 d!78459))

(declare-fun d!78473 () Bool)

(assert (=> d!78473 (= (validKeyInArray!0 (select (arr!15525 a!3235) j!176)) (and (not (= (select (arr!15525 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15525 a!3235) j!176) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!500975 d!78473))

(declare-fun d!78475 () Bool)

(declare-fun res!303012 () Bool)

(declare-fun e!293672 () Bool)

(assert (=> d!78475 (=> res!303012 e!293672)))

(assert (=> d!78475 (= res!303012 (= (select (arr!15525 a!3235) #b00000000000000000000000000000000) k!2280))))

(assert (=> d!78475 (= (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000) e!293672)))

(declare-fun b!501305 () Bool)

(declare-fun e!293673 () Bool)

(assert (=> b!501305 (= e!293672 e!293673)))

(declare-fun res!303013 () Bool)

(assert (=> b!501305 (=> (not res!303013) (not e!293673))))

(assert (=> b!501305 (= res!303013 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!15889 a!3235)))))

(declare-fun b!501306 () Bool)

(assert (=> b!501306 (= e!293673 (arrayContainsKey!0 a!3235 k!2280 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!78475 (not res!303012)) b!501305))

(assert (= (and b!501305 res!303013) b!501306))

(declare-fun m!482391 () Bool)

(assert (=> d!78475 m!482391))

(declare-fun m!482395 () Bool)

(assert (=> b!501306 m!482395))

(assert (=> b!500973 d!78475))

(declare-fun b!501321 () Bool)

(declare-fun e!293685 () Bool)

(declare-fun call!31465 () Bool)

(assert (=> b!501321 (= e!293685 call!31465)))

(declare-fun b!501322 () Bool)

(assert (=> b!501322 (= e!293685 call!31465)))

(declare-fun b!501323 () Bool)

(declare-fun e!293687 () Bool)

(declare-fun contains!2724 (List!9736 (_ BitVec 64)) Bool)

(assert (=> b!501323 (= e!293687 (contains!2724 Nil!9733 (select (arr!15525 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!501324 () Bool)

(declare-fun e!293688 () Bool)

(assert (=> b!501324 (= e!293688 e!293685)))

(declare-fun c!59428 () Bool)

(assert (=> b!501324 (= c!59428 (validKeyInArray!0 (select (arr!15525 a!3235) #b00000000000000000000000000000000)))))

(declare-fun bm!31462 () Bool)

(assert (=> bm!31462 (= call!31465 (arrayNoDuplicates!0 a!3235 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!59428 (Cons!9732 (select (arr!15525 a!3235) #b00000000000000000000000000000000) Nil!9733) Nil!9733)))))

(declare-fun d!78479 () Bool)

(declare-fun res!303023 () Bool)

(declare-fun e!293686 () Bool)

(assert (=> d!78479 (=> res!303023 e!293686)))

(assert (=> d!78479 (= res!303023 (bvsge #b00000000000000000000000000000000 (size!15889 a!3235)))))

(assert (=> d!78479 (= (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9733) e!293686)))

(declare-fun b!501325 () Bool)

(assert (=> b!501325 (= e!293686 e!293688)))

(declare-fun res!303024 () Bool)

(assert (=> b!501325 (=> (not res!303024) (not e!293688))))

(assert (=> b!501325 (= res!303024 (not e!293687))))

(declare-fun res!303022 () Bool)

(assert (=> b!501325 (=> (not res!303022) (not e!293687))))

(assert (=> b!501325 (= res!303022 (validKeyInArray!0 (select (arr!15525 a!3235) #b00000000000000000000000000000000)))))

(assert (= (and d!78479 (not res!303023)) b!501325))

(assert (= (and b!501325 res!303022) b!501323))

(assert (= (and b!501325 res!303024) b!501324))

(assert (= (and b!501324 c!59428) b!501322))

(assert (= (and b!501324 (not c!59428)) b!501321))

(assert (= (or b!501322 b!501321) bm!31462))

(assert (=> b!501323 m!482391))

(assert (=> b!501323 m!482391))

(declare-fun m!482407 () Bool)

(assert (=> b!501323 m!482407))

(assert (=> b!501324 m!482391))

(assert (=> b!501324 m!482391))

(declare-fun m!482409 () Bool)

(assert (=> b!501324 m!482409))

(assert (=> bm!31462 m!482391))

(declare-fun m!482411 () Bool)

(assert (=> bm!31462 m!482411))

(assert (=> b!501325 m!482391))

(assert (=> b!501325 m!482391))

(assert (=> b!501325 m!482409))

(assert (=> b!500963 d!78479))

(declare-fun d!78491 () Bool)

(declare-fun res!303026 () Bool)

(declare-fun e!293692 () Bool)

(assert (=> d!78491 (=> res!303026 e!293692)))

(assert (=> d!78491 (= res!303026 (bvsge #b00000000000000000000000000000000 (size!15889 a!3235)))))

(assert (=> d!78491 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524) e!293692)))

(declare-fun b!501332 () Bool)

(declare-fun e!293693 () Bool)

(declare-fun call!31466 () Bool)

(assert (=> b!501332 (= e!293693 call!31466)))

(declare-fun b!501333 () Bool)

(declare-fun e!293694 () Bool)

(assert (=> b!501333 (= e!293692 e!293694)))

(declare-fun c!59432 () Bool)

(assert (=> b!501333 (= c!59432 (validKeyInArray!0 (select (arr!15525 a!3235) #b00000000000000000000000000000000)))))

(declare-fun bm!31463 () Bool)

(assert (=> bm!31463 (= call!31466 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!501334 () Bool)

(assert (=> b!501334 (= e!293694 call!31466)))

(declare-fun b!501335 () Bool)

(assert (=> b!501335 (= e!293694 e!293693)))

(declare-fun lt!227768 () (_ BitVec 64))

(assert (=> b!501335 (= lt!227768 (select (arr!15525 a!3235) #b00000000000000000000000000000000))))

(declare-fun lt!227770 () Unit!15086)

(assert (=> b!501335 (= lt!227770 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!227768 #b00000000000000000000000000000000))))

(assert (=> b!501335 (arrayContainsKey!0 a!3235 lt!227768 #b00000000000000000000000000000000)))

(declare-fun lt!227769 () Unit!15086)

(assert (=> b!501335 (= lt!227769 lt!227770)))

(declare-fun res!303025 () Bool)

(assert (=> b!501335 (= res!303025 (= (seekEntryOrOpen!0 (select (arr!15525 a!3235) #b00000000000000000000000000000000) a!3235 mask!3524) (Found!3999 #b00000000000000000000000000000000)))))

(assert (=> b!501335 (=> (not res!303025) (not e!293693))))

(assert (= (and d!78491 (not res!303026)) b!501333))

(assert (= (and b!501333 c!59432) b!501335))

(assert (= (and b!501333 (not c!59432)) b!501334))

(assert (= (and b!501335 res!303025) b!501332))

(assert (= (or b!501332 b!501334) bm!31463))

(assert (=> b!501333 m!482391))

(assert (=> b!501333 m!482391))

(assert (=> b!501333 m!482409))

(declare-fun m!482425 () Bool)

(assert (=> bm!31463 m!482425))

(assert (=> b!501335 m!482391))

(declare-fun m!482427 () Bool)

(assert (=> b!501335 m!482427))

(declare-fun m!482429 () Bool)

(assert (=> b!501335 m!482429))

(assert (=> b!501335 m!482391))

(declare-fun m!482431 () Bool)

(assert (=> b!501335 m!482431))

