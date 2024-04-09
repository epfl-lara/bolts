; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46562 () Bool)

(assert start!46562)

(declare-fun b!514174 () Bool)

(declare-fun e!300250 () Bool)

(declare-fun e!300246 () Bool)

(assert (=> b!514174 (= e!300250 (not e!300246))))

(declare-fun res!314263 () Bool)

(assert (=> b!514174 (=> res!314263 e!300246)))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!32948 0))(
  ( (array!32949 (arr!15842 (Array (_ BitVec 32) (_ BitVec 64))) (size!16206 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32948)

(declare-fun lt!235444 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4316 0))(
  ( (MissingZero!4316 (index!19452 (_ BitVec 32))) (Found!4316 (index!19453 (_ BitVec 32))) (Intermediate!4316 (undefined!5128 Bool) (index!19454 (_ BitVec 32)) (x!48438 (_ BitVec 32))) (Undefined!4316) (MissingVacant!4316 (index!19455 (_ BitVec 32))) )
))
(declare-fun lt!235445 () SeekEntryResult!4316)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32948 (_ BitVec 32)) SeekEntryResult!4316)

(assert (=> b!514174 (= res!314263 (= lt!235445 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!235444 (select (store (arr!15842 a!3235) i!1204 k!2280) j!176) (array!32949 (store (arr!15842 a!3235) i!1204 k!2280) (size!16206 a!3235)) mask!3524)))))

(declare-fun lt!235446 () (_ BitVec 32))

(assert (=> b!514174 (= lt!235445 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!235446 (select (arr!15842 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!514174 (= lt!235444 (toIndex!0 (select (store (arr!15842 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!514174 (= lt!235446 (toIndex!0 (select (arr!15842 a!3235) j!176) mask!3524))))

(declare-fun e!300247 () Bool)

(assert (=> b!514174 e!300247))

(declare-fun res!314258 () Bool)

(assert (=> b!514174 (=> (not res!314258) (not e!300247))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32948 (_ BitVec 32)) Bool)

(assert (=> b!514174 (= res!314258 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15882 0))(
  ( (Unit!15883) )
))
(declare-fun lt!235448 () Unit!15882)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32948 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15882)

(assert (=> b!514174 (= lt!235448 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!514175 () Bool)

(assert (=> b!514175 (= e!300246 (or (= (select (arr!15842 a!3235) (index!19454 lt!235445)) (select (arr!15842 a!3235) j!176)) (= (select (arr!15842 a!3235) (index!19454 lt!235445)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15842 a!3235) (index!19454 lt!235445)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!514175 (bvslt (x!48438 lt!235445) #b01111111111111111111111111111110)))

(declare-fun b!514176 () Bool)

(declare-fun res!314259 () Bool)

(declare-fun e!300249 () Bool)

(assert (=> b!514176 (=> (not res!314259) (not e!300249))))

(assert (=> b!514176 (= res!314259 (and (= (size!16206 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16206 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16206 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!514177 () Bool)

(declare-fun res!314261 () Bool)

(assert (=> b!514177 (=> (not res!314261) (not e!300250))))

(assert (=> b!514177 (= res!314261 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!514178 () Bool)

(assert (=> b!514178 (= e!300249 e!300250)))

(declare-fun res!314262 () Bool)

(assert (=> b!514178 (=> (not res!314262) (not e!300250))))

(declare-fun lt!235447 () SeekEntryResult!4316)

(assert (=> b!514178 (= res!314262 (or (= lt!235447 (MissingZero!4316 i!1204)) (= lt!235447 (MissingVacant!4316 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32948 (_ BitVec 32)) SeekEntryResult!4316)

(assert (=> b!514178 (= lt!235447 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!514179 () Bool)

(assert (=> b!514179 (= e!300247 (= (seekEntryOrOpen!0 (select (arr!15842 a!3235) j!176) a!3235 mask!3524) (Found!4316 j!176)))))

(declare-fun b!514180 () Bool)

(declare-fun res!314255 () Bool)

(assert (=> b!514180 (=> (not res!314255) (not e!300249))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!514180 (= res!314255 (validKeyInArray!0 (select (arr!15842 a!3235) j!176)))))

(declare-fun res!314260 () Bool)

(assert (=> start!46562 (=> (not res!314260) (not e!300249))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46562 (= res!314260 (validMask!0 mask!3524))))

(assert (=> start!46562 e!300249))

(assert (=> start!46562 true))

(declare-fun array_inv!11616 (array!32948) Bool)

(assert (=> start!46562 (array_inv!11616 a!3235)))

(declare-fun b!514181 () Bool)

(declare-fun res!314257 () Bool)

(assert (=> b!514181 (=> res!314257 e!300246)))

(assert (=> b!514181 (= res!314257 (or (undefined!5128 lt!235445) (not (is-Intermediate!4316 lt!235445))))))

(declare-fun b!514182 () Bool)

(declare-fun res!314264 () Bool)

(assert (=> b!514182 (=> (not res!314264) (not e!300249))))

(assert (=> b!514182 (= res!314264 (validKeyInArray!0 k!2280))))

(declare-fun b!514183 () Bool)

(declare-fun res!314254 () Bool)

(assert (=> b!514183 (=> (not res!314254) (not e!300250))))

(declare-datatypes ((List!10053 0))(
  ( (Nil!10050) (Cons!10049 (h!10941 (_ BitVec 64)) (t!16289 List!10053)) )
))
(declare-fun arrayNoDuplicates!0 (array!32948 (_ BitVec 32) List!10053) Bool)

(assert (=> b!514183 (= res!314254 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10050))))

(declare-fun b!514184 () Bool)

(declare-fun res!314256 () Bool)

(assert (=> b!514184 (=> (not res!314256) (not e!300249))))

(declare-fun arrayContainsKey!0 (array!32948 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!514184 (= res!314256 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(assert (= (and start!46562 res!314260) b!514176))

(assert (= (and b!514176 res!314259) b!514180))

(assert (= (and b!514180 res!314255) b!514182))

(assert (= (and b!514182 res!314264) b!514184))

(assert (= (and b!514184 res!314256) b!514178))

(assert (= (and b!514178 res!314262) b!514177))

(assert (= (and b!514177 res!314261) b!514183))

(assert (= (and b!514183 res!314254) b!514174))

(assert (= (and b!514174 res!314258) b!514179))

(assert (= (and b!514174 (not res!314263)) b!514181))

(assert (= (and b!514181 (not res!314257)) b!514175))

(declare-fun m!495647 () Bool)

(assert (=> b!514180 m!495647))

(assert (=> b!514180 m!495647))

(declare-fun m!495649 () Bool)

(assert (=> b!514180 m!495649))

(assert (=> b!514179 m!495647))

(assert (=> b!514179 m!495647))

(declare-fun m!495651 () Bool)

(assert (=> b!514179 m!495651))

(declare-fun m!495653 () Bool)

(assert (=> b!514178 m!495653))

(declare-fun m!495655 () Bool)

(assert (=> start!46562 m!495655))

(declare-fun m!495657 () Bool)

(assert (=> start!46562 m!495657))

(declare-fun m!495659 () Bool)

(assert (=> b!514183 m!495659))

(declare-fun m!495661 () Bool)

(assert (=> b!514182 m!495661))

(declare-fun m!495663 () Bool)

(assert (=> b!514174 m!495663))

(declare-fun m!495665 () Bool)

(assert (=> b!514174 m!495665))

(declare-fun m!495667 () Bool)

(assert (=> b!514174 m!495667))

(assert (=> b!514174 m!495647))

(declare-fun m!495669 () Bool)

(assert (=> b!514174 m!495669))

(assert (=> b!514174 m!495647))

(declare-fun m!495671 () Bool)

(assert (=> b!514174 m!495671))

(assert (=> b!514174 m!495667))

(declare-fun m!495673 () Bool)

(assert (=> b!514174 m!495673))

(assert (=> b!514174 m!495667))

(declare-fun m!495675 () Bool)

(assert (=> b!514174 m!495675))

(assert (=> b!514174 m!495647))

(declare-fun m!495677 () Bool)

(assert (=> b!514174 m!495677))

(declare-fun m!495679 () Bool)

(assert (=> b!514177 m!495679))

(declare-fun m!495681 () Bool)

(assert (=> b!514175 m!495681))

(assert (=> b!514175 m!495647))

(declare-fun m!495683 () Bool)

(assert (=> b!514184 m!495683))

(push 1)

(assert (not b!514174))

(assert (not b!514179))

(assert (not b!514177))

(assert (not b!514183))

(assert (not b!514180))

(assert (not b!514178))

(assert (not b!514182))

(assert (not b!514184))

(assert (not start!46562))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!79251 () Bool)

(assert (=> d!79251 (= (validKeyInArray!0 (select (arr!15842 a!3235) j!176)) (and (not (= (select (arr!15842 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15842 a!3235) j!176) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!514180 d!79251))

(declare-fun b!514286 () Bool)

(declare-fun c!60282 () Bool)

(declare-fun lt!235495 () (_ BitVec 64))

(assert (=> b!514286 (= c!60282 (= lt!235495 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!300315 () SeekEntryResult!4316)

(declare-fun e!300314 () SeekEntryResult!4316)

(assert (=> b!514286 (= e!300315 e!300314)))

(declare-fun b!514287 () Bool)

(declare-fun lt!235497 () SeekEntryResult!4316)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32948 (_ BitVec 32)) SeekEntryResult!4316)

(assert (=> b!514287 (= e!300314 (seekKeyOrZeroReturnVacant!0 (x!48438 lt!235497) (index!19454 lt!235497) (index!19454 lt!235497) (select (arr!15842 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!514288 () Bool)

(assert (=> b!514288 (= e!300315 (Found!4316 (index!19454 lt!235497)))))

(declare-fun b!514289 () Bool)

(declare-fun e!300316 () SeekEntryResult!4316)

(assert (=> b!514289 (= e!300316 Undefined!4316)))

(declare-fun b!514290 () Bool)

(assert (=> b!514290 (= e!300316 e!300315)))

(assert (=> b!514290 (= lt!235495 (select (arr!15842 a!3235) (index!19454 lt!235497)))))

(declare-fun c!60280 () Bool)

(assert (=> b!514290 (= c!60280 (= lt!235495 (select (arr!15842 a!3235) j!176)))))

(declare-fun d!79253 () Bool)

(declare-fun lt!235496 () SeekEntryResult!4316)

(assert (=> d!79253 (and (or (is-Undefined!4316 lt!235496) (not (is-Found!4316 lt!235496)) (and (bvsge (index!19453 lt!235496) #b00000000000000000000000000000000) (bvslt (index!19453 lt!235496) (size!16206 a!3235)))) (or (is-Undefined!4316 lt!235496) (is-Found!4316 lt!235496) (not (is-MissingZero!4316 lt!235496)) (and (bvsge (index!19452 lt!235496) #b00000000000000000000000000000000) (bvslt (index!19452 lt!235496) (size!16206 a!3235)))) (or (is-Undefined!4316 lt!235496) (is-Found!4316 lt!235496) (is-MissingZero!4316 lt!235496) (not (is-MissingVacant!4316 lt!235496)) (and (bvsge (index!19455 lt!235496) #b00000000000000000000000000000000) (bvslt (index!19455 lt!235496) (size!16206 a!3235)))) (or (is-Undefined!4316 lt!235496) (ite (is-Found!4316 lt!235496) (= (select (arr!15842 a!3235) (index!19453 lt!235496)) (select (arr!15842 a!3235) j!176)) (ite (is-MissingZero!4316 lt!235496) (= (select (arr!15842 a!3235) (index!19452 lt!235496)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!4316 lt!235496) (= (select (arr!15842 a!3235) (index!19455 lt!235496)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!79253 (= lt!235496 e!300316)))

(declare-fun c!60281 () Bool)

(assert (=> d!79253 (= c!60281 (and (is-Intermediate!4316 lt!235497) (undefined!5128 lt!235497)))))

(assert (=> d!79253 (= lt!235497 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15842 a!3235) j!176) mask!3524) (select (arr!15842 a!3235) j!176) a!3235 mask!3524))))

(assert (=> d!79253 (validMask!0 mask!3524)))

(assert (=> d!79253 (= (seekEntryOrOpen!0 (select (arr!15842 a!3235) j!176) a!3235 mask!3524) lt!235496)))

(declare-fun b!514291 () Bool)

(assert (=> b!514291 (= e!300314 (MissingZero!4316 (index!19454 lt!235497)))))

(assert (= (and d!79253 c!60281) b!514289))

(assert (= (and d!79253 (not c!60281)) b!514290))

(assert (= (and b!514290 c!60280) b!514288))

(assert (= (and b!514290 (not c!60280)) b!514286))

(assert (= (and b!514286 c!60282) b!514291))

(assert (= (and b!514286 (not c!60282)) b!514287))

(assert (=> b!514287 m!495647))

(declare-fun m!495739 () Bool)

(assert (=> b!514287 m!495739))

(declare-fun m!495741 () Bool)

(assert (=> b!514290 m!495741))

(declare-fun m!495743 () Bool)

(assert (=> d!79253 m!495743))

(declare-fun m!495745 () Bool)

(assert (=> d!79253 m!495745))

(declare-fun m!495747 () Bool)

(assert (=> d!79253 m!495747))

(assert (=> d!79253 m!495655))

(assert (=> d!79253 m!495647))

(assert (=> d!79253 m!495669))

(assert (=> d!79253 m!495669))

(assert (=> d!79253 m!495647))

(declare-fun m!495749 () Bool)

(assert (=> d!79253 m!495749))

(assert (=> b!514179 d!79253))

(declare-fun d!79267 () Bool)

(declare-fun lt!235509 () (_ BitVec 32))

(declare-fun lt!235508 () (_ BitVec 32))

(assert (=> d!79267 (= lt!235509 (bvmul (bvxor lt!235508 (bvlshr lt!235508 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!79267 (= lt!235508 ((_ extract 31 0) (bvand (bvxor (select (arr!15842 a!3235) j!176) (bvlshr (select (arr!15842 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!79267 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!314302 (let ((h!10944 ((_ extract 31 0) (bvand (bvxor (select (arr!15842 a!3235) j!176) (bvlshr (select (arr!15842 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!48442 (bvmul (bvxor h!10944 (bvlshr h!10944 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!48442 (bvlshr x!48442 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!314302 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!314302 #b00000000000000000000000000000000))))))

(assert (=> d!79267 (= (toIndex!0 (select (arr!15842 a!3235) j!176) mask!3524) (bvand (bvxor lt!235509 (bvlshr lt!235509 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!514174 d!79267))

(declare-fun b!514314 () Bool)

(declare-fun e!300334 () Bool)

(declare-fun call!31608 () Bool)

(assert (=> b!514314 (= e!300334 call!31608)))

(declare-fun b!514315 () Bool)

(declare-fun e!300335 () Bool)

(declare-fun e!300336 () Bool)

(assert (=> b!514315 (= e!300335 e!300336)))

(declare-fun c!60288 () Bool)

(assert (=> b!514315 (= c!60288 (validKeyInArray!0 (select (arr!15842 a!3235) j!176)))))

(declare-fun d!79271 () Bool)

(declare-fun res!314313 () Bool)

(assert (=> d!79271 (=> res!314313 e!300335)))

(assert (=> d!79271 (= res!314313 (bvsge j!176 (size!16206 a!3235)))))

(assert (=> d!79271 (= (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524) e!300335)))

(declare-fun b!514316 () Bool)

(assert (=> b!514316 (= e!300336 call!31608)))

(declare-fun b!514317 () Bool)

(assert (=> b!514317 (= e!300336 e!300334)))

(declare-fun lt!235525 () (_ BitVec 64))

(assert (=> b!514317 (= lt!235525 (select (arr!15842 a!3235) j!176))))

(declare-fun lt!235527 () Unit!15882)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!32948 (_ BitVec 64) (_ BitVec 32)) Unit!15882)

(assert (=> b!514317 (= lt!235527 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!235525 j!176))))

(assert (=> b!514317 (arrayContainsKey!0 a!3235 lt!235525 #b00000000000000000000000000000000)))

(declare-fun lt!235526 () Unit!15882)

(assert (=> b!514317 (= lt!235526 lt!235527)))

(declare-fun res!314314 () Bool)

(assert (=> b!514317 (= res!314314 (= (seekEntryOrOpen!0 (select (arr!15842 a!3235) j!176) a!3235 mask!3524) (Found!4316 j!176)))))

(assert (=> b!514317 (=> (not res!314314) (not e!300334))))

(declare-fun bm!31605 () Bool)

(assert (=> bm!31605 (= call!31608 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!176 #b00000000000000000000000000000001) a!3235 mask!3524))))

(assert (= (and d!79271 (not res!314313)) b!514315))

(assert (= (and b!514315 c!60288) b!514317))

(assert (= (and b!514315 (not c!60288)) b!514316))

(assert (= (and b!514317 res!314314) b!514314))

(assert (= (or b!514314 b!514316) bm!31605))

(assert (=> b!514315 m!495647))

(assert (=> b!514315 m!495647))

(assert (=> b!514315 m!495649))

(assert (=> b!514317 m!495647))

(declare-fun m!495757 () Bool)

(assert (=> b!514317 m!495757))

(declare-fun m!495759 () Bool)

(assert (=> b!514317 m!495759))

(assert (=> b!514317 m!495647))

(assert (=> b!514317 m!495651))

(declare-fun m!495761 () Bool)

(assert (=> bm!31605 m!495761))

(assert (=> b!514174 d!79271))

(declare-fun b!514387 () Bool)

(declare-fun e!300378 () SeekEntryResult!4316)

(declare-fun e!300377 () SeekEntryResult!4316)

(assert (=> b!514387 (= e!300378 e!300377)))

(declare-fun c!60316 () Bool)

(declare-fun lt!235551 () (_ BitVec 64))

(assert (=> b!514387 (= c!60316 (or (= lt!235551 (select (arr!15842 a!3235) j!176)) (= (bvadd lt!235551 lt!235551) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!514388 () Bool)

(declare-fun lt!235550 () SeekEntryResult!4316)

(assert (=> b!514388 (and (bvsge (index!19454 lt!235550) #b00000000000000000000000000000000) (bvslt (index!19454 lt!235550) (size!16206 a!3235)))))

(declare-fun e!300376 () Bool)

(assert (=> b!514388 (= e!300376 (= (select (arr!15842 a!3235) (index!19454 lt!235550)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!514389 () Bool)

(declare-fun e!300375 () Bool)

(declare-fun e!300374 () Bool)

(assert (=> b!514389 (= e!300375 e!300374)))

(declare-fun res!314332 () Bool)

(assert (=> b!514389 (= res!314332 (and (is-Intermediate!4316 lt!235550) (not (undefined!5128 lt!235550)) (bvslt (x!48438 lt!235550) #b01111111111111111111111111111110) (bvsge (x!48438 lt!235550) #b00000000000000000000000000000000) (bvsge (x!48438 lt!235550) #b00000000000000000000000000000000)))))

(assert (=> b!514389 (=> (not res!314332) (not e!300374))))

(declare-fun b!514390 () Bool)

(assert (=> b!514390 (and (bvsge (index!19454 lt!235550) #b00000000000000000000000000000000) (bvslt (index!19454 lt!235550) (size!16206 a!3235)))))

(declare-fun res!314331 () Bool)

(assert (=> b!514390 (= res!314331 (= (select (arr!15842 a!3235) (index!19454 lt!235550)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!514390 (=> res!314331 e!300376)))

(declare-fun b!514391 () Bool)

(assert (=> b!514391 (and (bvsge (index!19454 lt!235550) #b00000000000000000000000000000000) (bvslt (index!19454 lt!235550) (size!16206 a!3235)))))

(declare-fun res!314330 () Bool)

(assert (=> b!514391 (= res!314330 (= (select (arr!15842 a!3235) (index!19454 lt!235550)) (select (arr!15842 a!3235) j!176)))))

(assert (=> b!514391 (=> res!314330 e!300376)))

(assert (=> b!514391 (= e!300374 e!300376)))

(declare-fun b!514392 () Bool)

(assert (=> b!514392 (= e!300375 (bvsge (x!48438 lt!235550) #b01111111111111111111111111111110))))

(declare-fun d!79279 () Bool)

(assert (=> d!79279 e!300375))

(declare-fun c!60318 () Bool)

(assert (=> d!79279 (= c!60318 (and (is-Intermediate!4316 lt!235550) (undefined!5128 lt!235550)))))

(assert (=> d!79279 (= lt!235550 e!300378)))

(declare-fun c!60317 () Bool)

(assert (=> d!79279 (= c!60317 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!79279 (= lt!235551 (select (arr!15842 a!3235) lt!235446))))

(assert (=> d!79279 (validMask!0 mask!3524)))

(assert (=> d!79279 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!235446 (select (arr!15842 a!3235) j!176) a!3235 mask!3524) lt!235550)))

(declare-fun b!514393 () Bool)

(assert (=> b!514393 (= e!300378 (Intermediate!4316 true lt!235446 #b00000000000000000000000000000000))))

(declare-fun b!514394 () Bool)

(assert (=> b!514394 (= e!300377 (Intermediate!4316 false lt!235446 #b00000000000000000000000000000000))))

(declare-fun b!514395 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!514395 (= e!300377 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!235446 #b00000000000000000000000000000000 mask!3524) (select (arr!15842 a!3235) j!176) a!3235 mask!3524))))

(assert (= (and d!79279 c!60317) b!514393))

(assert (= (and d!79279 (not c!60317)) b!514387))

(assert (= (and b!514387 c!60316) b!514394))

(assert (= (and b!514387 (not c!60316)) b!514395))

(assert (= (and d!79279 c!60318) b!514392))

(assert (= (and d!79279 (not c!60318)) b!514389))

(assert (= (and b!514389 res!314332) b!514391))

(assert (= (and b!514391 (not res!314330)) b!514390))

(assert (= (and b!514390 (not res!314331)) b!514388))

(declare-fun m!495797 () Bool)

(assert (=> b!514395 m!495797))

(assert (=> b!514395 m!495797))

(assert (=> b!514395 m!495647))

(declare-fun m!495799 () Bool)

(assert (=> b!514395 m!495799))

(declare-fun m!495801 () Bool)

(assert (=> d!79279 m!495801))

(assert (=> d!79279 m!495655))

(declare-fun m!495803 () Bool)

(assert (=> b!514390 m!495803))

(assert (=> b!514388 m!495803))

(assert (=> b!514391 m!495803))

(assert (=> b!514174 d!79279))

(declare-fun d!79285 () Bool)

(assert (=> d!79285 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-fun lt!235561 () Unit!15882)

(declare-fun choose!38 (array!32948 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15882)

(assert (=> d!79285 (= lt!235561 (choose!38 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (=> d!79285 (validMask!0 mask!3524)))

(assert (=> d!79285 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176) lt!235561)))

(declare-fun bs!16265 () Bool)

(assert (= bs!16265 d!79285))

(assert (=> bs!16265 m!495671))

(declare-fun m!495815 () Bool)

(assert (=> bs!16265 m!495815))

(assert (=> bs!16265 m!495655))

(assert (=> b!514174 d!79285))

(declare-fun d!79293 () Bool)

(declare-fun lt!235566 () (_ BitVec 32))

(declare-fun lt!235565 () (_ BitVec 32))

(assert (=> d!79293 (= lt!235566 (bvmul (bvxor lt!235565 (bvlshr lt!235565 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!79293 (= lt!235565 ((_ extract 31 0) (bvand (bvxor (select (store (arr!15842 a!3235) i!1204 k!2280) j!176) (bvlshr (select (store (arr!15842 a!3235) i!1204 k!2280) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!79293 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!314302 (let ((h!10944 ((_ extract 31 0) (bvand (bvxor (select (store (arr!15842 a!3235) i!1204 k!2280) j!176) (bvlshr (select (store (arr!15842 a!3235) i!1204 k!2280) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!48442 (bvmul (bvxor h!10944 (bvlshr h!10944 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!48442 (bvlshr x!48442 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!314302 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!314302 #b00000000000000000000000000000000))))))

(assert (=> d!79293 (= (toIndex!0 (select (store (arr!15842 a!3235) i!1204 k!2280) j!176) mask!3524) (bvand (bvxor lt!235566 (bvlshr lt!235566 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!514174 d!79293))

(declare-fun b!514409 () Bool)

(declare-fun e!300391 () SeekEntryResult!4316)

(declare-fun e!300390 () SeekEntryResult!4316)

(assert (=> b!514409 (= e!300391 e!300390)))

(declare-fun lt!235568 () (_ BitVec 64))

(declare-fun c!60323 () Bool)

(assert (=> b!514409 (= c!60323 (or (= lt!235568 (select (store (arr!15842 a!3235) i!1204 k!2280) j!176)) (= (bvadd lt!235568 lt!235568) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!235567 () SeekEntryResult!4316)

(declare-fun b!514410 () Bool)

(assert (=> b!514410 (and (bvsge (index!19454 lt!235567) #b00000000000000000000000000000000) (bvslt (index!19454 lt!235567) (size!16206 (array!32949 (store (arr!15842 a!3235) i!1204 k!2280) (size!16206 a!3235)))))))

(declare-fun e!300389 () Bool)

(assert (=> b!514410 (= e!300389 (= (select (arr!15842 (array!32949 (store (arr!15842 a!3235) i!1204 k!2280) (size!16206 a!3235))) (index!19454 lt!235567)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!514411 () Bool)

(declare-fun e!300388 () Bool)

(declare-fun e!300387 () Bool)

(assert (=> b!514411 (= e!300388 e!300387)))

(declare-fun res!314340 () Bool)

(assert (=> b!514411 (= res!314340 (and (is-Intermediate!4316 lt!235567) (not (undefined!5128 lt!235567)) (bvslt (x!48438 lt!235567) #b01111111111111111111111111111110) (bvsge (x!48438 lt!235567) #b00000000000000000000000000000000) (bvsge (x!48438 lt!235567) #b00000000000000000000000000000000)))))

(assert (=> b!514411 (=> (not res!314340) (not e!300387))))

(declare-fun b!514412 () Bool)

(assert (=> b!514412 (and (bvsge (index!19454 lt!235567) #b00000000000000000000000000000000) (bvslt (index!19454 lt!235567) (size!16206 (array!32949 (store (arr!15842 a!3235) i!1204 k!2280) (size!16206 a!3235)))))))

(declare-fun res!314339 () Bool)

(assert (=> b!514412 (= res!314339 (= (select (arr!15842 (array!32949 (store (arr!15842 a!3235) i!1204 k!2280) (size!16206 a!3235))) (index!19454 lt!235567)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!514412 (=> res!314339 e!300389)))

(declare-fun b!514413 () Bool)

(assert (=> b!514413 (and (bvsge (index!19454 lt!235567) #b00000000000000000000000000000000) (bvslt (index!19454 lt!235567) (size!16206 (array!32949 (store (arr!15842 a!3235) i!1204 k!2280) (size!16206 a!3235)))))))

(declare-fun res!314338 () Bool)

(assert (=> b!514413 (= res!314338 (= (select (arr!15842 (array!32949 (store (arr!15842 a!3235) i!1204 k!2280) (size!16206 a!3235))) (index!19454 lt!235567)) (select (store (arr!15842 a!3235) i!1204 k!2280) j!176)))))

(assert (=> b!514413 (=> res!314338 e!300389)))

(assert (=> b!514413 (= e!300387 e!300389)))

(declare-fun b!514414 () Bool)

(assert (=> b!514414 (= e!300388 (bvsge (x!48438 lt!235567) #b01111111111111111111111111111110))))

(declare-fun d!79295 () Bool)

(assert (=> d!79295 e!300388))

(declare-fun c!60325 () Bool)

(assert (=> d!79295 (= c!60325 (and (is-Intermediate!4316 lt!235567) (undefined!5128 lt!235567)))))

(assert (=> d!79295 (= lt!235567 e!300391)))

(declare-fun c!60324 () Bool)

(assert (=> d!79295 (= c!60324 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!79295 (= lt!235568 (select (arr!15842 (array!32949 (store (arr!15842 a!3235) i!1204 k!2280) (size!16206 a!3235))) lt!235444))))

(assert (=> d!79295 (validMask!0 mask!3524)))

(assert (=> d!79295 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!235444 (select (store (arr!15842 a!3235) i!1204 k!2280) j!176) (array!32949 (store (arr!15842 a!3235) i!1204 k!2280) (size!16206 a!3235)) mask!3524) lt!235567)))

(declare-fun b!514415 () Bool)

(assert (=> b!514415 (= e!300391 (Intermediate!4316 true lt!235444 #b00000000000000000000000000000000))))

(declare-fun b!514416 () Bool)

(assert (=> b!514416 (= e!300390 (Intermediate!4316 false lt!235444 #b00000000000000000000000000000000))))

(declare-fun b!514417 () Bool)

(assert (=> b!514417 (= e!300390 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!235444 #b00000000000000000000000000000000 mask!3524) (select (store (arr!15842 a!3235) i!1204 k!2280) j!176) (array!32949 (store (arr!15842 a!3235) i!1204 k!2280) (size!16206 a!3235)) mask!3524))))

(assert (= (and d!79295 c!60324) b!514415))

(assert (= (and d!79295 (not c!60324)) b!514409))

(assert (= (and b!514409 c!60323) b!514416))

(assert (= (and b!514409 (not c!60323)) b!514417))

(assert (= (and d!79295 c!60325) b!514414))

(assert (= (and d!79295 (not c!60325)) b!514411))

(assert (= (and b!514411 res!314340) b!514413))

(assert (= (and b!514413 (not res!314338)) b!514412))

(assert (= (and b!514412 (not res!314339)) b!514410))

(declare-fun m!495829 () Bool)

(assert (=> b!514417 m!495829))

(assert (=> b!514417 m!495829))

(assert (=> b!514417 m!495667))

(declare-fun m!495831 () Bool)

(assert (=> b!514417 m!495831))

(declare-fun m!495833 () Bool)

(assert (=> d!79295 m!495833))

(assert (=> d!79295 m!495655))

(declare-fun m!495835 () Bool)

(assert (=> b!514412 m!495835))

(assert (=> b!514410 m!495835))

(assert (=> b!514413 m!495835))

(assert (=> b!514174 d!79295))

(declare-fun b!514418 () Bool)

(declare-fun e!300392 () Bool)

(declare-fun call!31610 () Bool)

(assert (=> b!514418 (= e!300392 call!31610)))

(declare-fun b!514419 () Bool)

(declare-fun e!300393 () Bool)

(declare-fun e!300394 () Bool)

(assert (=> b!514419 (= e!300393 e!300394)))

(declare-fun c!60326 () Bool)

(assert (=> b!514419 (= c!60326 (validKeyInArray!0 (select (arr!15842 a!3235) #b00000000000000000000000000000000)))))

(declare-fun d!79299 () Bool)

(declare-fun res!314341 () Bool)

(assert (=> d!79299 (=> res!314341 e!300393)))

(assert (=> d!79299 (= res!314341 (bvsge #b00000000000000000000000000000000 (size!16206 a!3235)))))

(assert (=> d!79299 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524) e!300393)))

(declare-fun b!514420 () Bool)

(assert (=> b!514420 (= e!300394 call!31610)))

(declare-fun b!514421 () Bool)

(assert (=> b!514421 (= e!300394 e!300392)))

(declare-fun lt!235569 () (_ BitVec 64))

(assert (=> b!514421 (= lt!235569 (select (arr!15842 a!3235) #b00000000000000000000000000000000))))

(declare-fun lt!235571 () Unit!15882)

(assert (=> b!514421 (= lt!235571 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!235569 #b00000000000000000000000000000000))))

(assert (=> b!514421 (arrayContainsKey!0 a!3235 lt!235569 #b00000000000000000000000000000000)))

(declare-fun lt!235570 () Unit!15882)

(assert (=> b!514421 (= lt!235570 lt!235571)))

(declare-fun res!314342 () Bool)

(assert (=> b!514421 (= res!314342 (= (seekEntryOrOpen!0 (select (arr!15842 a!3235) #b00000000000000000000000000000000) a!3235 mask!3524) (Found!4316 #b00000000000000000000000000000000)))))

(assert (=> b!514421 (=> (not res!314342) (not e!300392))))

(declare-fun bm!31607 () Bool)

(assert (=> bm!31607 (= call!31610 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3235 mask!3524))))

(assert (= (and d!79299 (not res!314341)) b!514419))

(assert (= (and b!514419 c!60326) b!514421))

(assert (= (and b!514419 (not c!60326)) b!514420))

(assert (= (and b!514421 res!314342) b!514418))

(assert (= (or b!514418 b!514420) bm!31607))

(declare-fun m!495837 () Bool)

(assert (=> b!514419 m!495837))

(assert (=> b!514419 m!495837))

(declare-fun m!495839 () Bool)

(assert (=> b!514419 m!495839))

(assert (=> b!514421 m!495837))

(declare-fun m!495841 () Bool)

(assert (=> b!514421 m!495841))

(declare-fun m!495843 () Bool)

(assert (=> b!514421 m!495843))

(assert (=> b!514421 m!495837))

(declare-fun m!495845 () Bool)

(assert (=> b!514421 m!495845))

(declare-fun m!495847 () Bool)

(assert (=> bm!31607 m!495847))

(assert (=> b!514177 d!79299))

(declare-fun d!79301 () Bool)

(assert (=> d!79301 (= (validKeyInArray!0 k!2280) (and (not (= k!2280 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2280 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!514182 d!79301))

(declare-fun d!79303 () Bool)

(declare-fun res!314353 () Bool)

(declare-fun e!300408 () Bool)

(assert (=> d!79303 (=> res!314353 e!300408)))

(assert (=> d!79303 (= res!314353 (= (select (arr!15842 a!3235) #b00000000000000000000000000000000) k!2280))))

(assert (=> d!79303 (= (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000) e!300408)))

(declare-fun b!514438 () Bool)

(declare-fun e!300409 () Bool)

(assert (=> b!514438 (= e!300408 e!300409)))

(declare-fun res!314354 () Bool)

(assert (=> b!514438 (=> (not res!314354) (not e!300409))))

(assert (=> b!514438 (= res!314354 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!16206 a!3235)))))

(declare-fun b!514439 () Bool)

(assert (=> b!514439 (= e!300409 (arrayContainsKey!0 a!3235 k!2280 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!79303 (not res!314353)) b!514438))

(assert (= (and b!514438 res!314354) b!514439))

(assert (=> d!79303 m!495837))

(declare-fun m!495865 () Bool)

(assert (=> b!514439 m!495865))

(assert (=> b!514184 d!79303))

(declare-fun d!79309 () Bool)

(assert (=> d!79309 (= (validMask!0 mask!3524) (and (or (= mask!3524 #b00000000000000000000000000000111) (= mask!3524 #b00000000000000000000000000001111) (= mask!3524 #b00000000000000000000000000011111) (= mask!3524 #b00000000000000000000000000111111) (= mask!3524 #b00000000000000000000000001111111) (= mask!3524 #b00000000000000000000000011111111) (= mask!3524 #b00000000000000000000000111111111) (= mask!3524 #b00000000000000000000001111111111) (= mask!3524 #b00000000000000000000011111111111) (= mask!3524 #b00000000000000000000111111111111) (= mask!3524 #b00000000000000000001111111111111) (= mask!3524 #b00000000000000000011111111111111) (= mask!3524 #b00000000000000000111111111111111) (= mask!3524 #b00000000000000001111111111111111) (= mask!3524 #b00000000000000011111111111111111) (= mask!3524 #b00000000000000111111111111111111) (= mask!3524 #b00000000000001111111111111111111) (= mask!3524 #b00000000000011111111111111111111) (= mask!3524 #b00000000000111111111111111111111) (= mask!3524 #b00000000001111111111111111111111) (= mask!3524 #b00000000011111111111111111111111) (= mask!3524 #b00000000111111111111111111111111) (= mask!3524 #b00000001111111111111111111111111) (= mask!3524 #b00000011111111111111111111111111) (= mask!3524 #b00000111111111111111111111111111) (= mask!3524 #b00001111111111111111111111111111) (= mask!3524 #b00011111111111111111111111111111) (= mask!3524 #b00111111111111111111111111111111)) (bvsle mask!3524 #b00111111111111111111111111111111)))))

(assert (=> start!46562 d!79309))

(declare-fun d!79315 () Bool)

(assert (=> d!79315 (= (array_inv!11616 a!3235) (bvsge (size!16206 a!3235) #b00000000000000000000000000000000))))

(assert (=> start!46562 d!79315))

(declare-fun b!514461 () Bool)

(declare-fun e!300433 () Bool)

(declare-fun e!300427 () Bool)

