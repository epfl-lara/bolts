; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!46788 () Bool)

(assert start!46788)

(declare-fun b!516505 () Bool)

(declare-fun res!316221 () Bool)

(declare-fun e!301416 () Bool)

(assert (=> b!516505 (=> (not res!316221) (not e!301416))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!516505 (= res!316221 (validKeyInArray!0 k0!2280))))

(declare-fun b!516506 () Bool)

(declare-fun res!316223 () Bool)

(declare-fun e!301415 () Bool)

(assert (=> b!516506 (=> (not res!316223) (not e!301415))))

(declare-datatypes ((array!33060 0))(
  ( (array!33061 (arr!15895 (Array (_ BitVec 32) (_ BitVec 64))) (size!16259 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33060)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33060 (_ BitVec 32)) Bool)

(assert (=> b!516506 (= res!316223 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun res!316228 () Bool)

(assert (=> start!46788 (=> (not res!316228) (not e!301416))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46788 (= res!316228 (validMask!0 mask!3524))))

(assert (=> start!46788 e!301416))

(assert (=> start!46788 true))

(declare-fun array_inv!11669 (array!33060) Bool)

(assert (=> start!46788 (array_inv!11669 a!3235)))

(declare-fun b!516507 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun e!301414 () Bool)

(declare-datatypes ((SeekEntryResult!4369 0))(
  ( (MissingZero!4369 (index!19664 (_ BitVec 32))) (Found!4369 (index!19665 (_ BitVec 32))) (Intermediate!4369 (undefined!5181 Bool) (index!19666 (_ BitVec 32)) (x!48647 (_ BitVec 32))) (Undefined!4369) (MissingVacant!4369 (index!19667 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33060 (_ BitVec 32)) SeekEntryResult!4369)

(assert (=> b!516507 (= e!301414 (= (seekEntryOrOpen!0 (select (arr!15895 a!3235) j!176) a!3235 mask!3524) (Found!4369 j!176)))))

(declare-fun b!516508 () Bool)

(declare-fun res!316227 () Bool)

(assert (=> b!516508 (=> (not res!316227) (not e!301416))))

(assert (=> b!516508 (= res!316227 (validKeyInArray!0 (select (arr!15895 a!3235) j!176)))))

(declare-fun lt!236497 () SeekEntryResult!4369)

(declare-fun e!301413 () Bool)

(declare-fun b!516509 () Bool)

(assert (=> b!516509 (= e!301413 (or (not (= (select (arr!15895 a!3235) (index!19666 lt!236497)) (select (arr!15895 a!3235) j!176))) (bvsgt (x!48647 lt!236497) #b01111111111111111111111111111110) (bvsle #b00000000000000000000000000000000 (x!48647 lt!236497))))))

(assert (=> b!516509 (and (bvslt (x!48647 lt!236497) #b01111111111111111111111111111110) (or (= (select (arr!15895 a!3235) (index!19666 lt!236497)) (select (arr!15895 a!3235) j!176)) (= (select (arr!15895 a!3235) (index!19666 lt!236497)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15895 a!3235) (index!19666 lt!236497)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!516510 () Bool)

(assert (=> b!516510 (= e!301416 e!301415)))

(declare-fun res!316226 () Bool)

(assert (=> b!516510 (=> (not res!316226) (not e!301415))))

(declare-fun lt!236501 () SeekEntryResult!4369)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!516510 (= res!316226 (or (= lt!236501 (MissingZero!4369 i!1204)) (= lt!236501 (MissingVacant!4369 i!1204))))))

(assert (=> b!516510 (= lt!236501 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!516511 () Bool)

(declare-fun res!316219 () Bool)

(assert (=> b!516511 (=> res!316219 e!301413)))

(get-info :version)

(assert (=> b!516511 (= res!316219 (or (undefined!5181 lt!236497) (not ((_ is Intermediate!4369) lt!236497))))))

(declare-fun b!516512 () Bool)

(declare-fun res!316225 () Bool)

(assert (=> b!516512 (=> (not res!316225) (not e!301415))))

(declare-datatypes ((List!10106 0))(
  ( (Nil!10103) (Cons!10102 (h!11000 (_ BitVec 64)) (t!16342 List!10106)) )
))
(declare-fun arrayNoDuplicates!0 (array!33060 (_ BitVec 32) List!10106) Bool)

(assert (=> b!516512 (= res!316225 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10103))))

(declare-fun b!516513 () Bool)

(declare-fun res!316222 () Bool)

(assert (=> b!516513 (=> (not res!316222) (not e!301416))))

(assert (=> b!516513 (= res!316222 (and (= (size!16259 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16259 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16259 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!516514 () Bool)

(declare-fun res!316224 () Bool)

(assert (=> b!516514 (=> (not res!316224) (not e!301416))))

(declare-fun arrayContainsKey!0 (array!33060 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!516514 (= res!316224 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!516515 () Bool)

(assert (=> b!516515 (= e!301415 (not e!301413))))

(declare-fun res!316220 () Bool)

(assert (=> b!516515 (=> res!316220 e!301413)))

(declare-fun lt!236498 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33060 (_ BitVec 32)) SeekEntryResult!4369)

(assert (=> b!516515 (= res!316220 (= lt!236497 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!236498 (select (store (arr!15895 a!3235) i!1204 k0!2280) j!176) (array!33061 (store (arr!15895 a!3235) i!1204 k0!2280) (size!16259 a!3235)) mask!3524)))))

(declare-fun lt!236500 () (_ BitVec 32))

(assert (=> b!516515 (= lt!236497 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!236500 (select (arr!15895 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!516515 (= lt!236498 (toIndex!0 (select (store (arr!15895 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!516515 (= lt!236500 (toIndex!0 (select (arr!15895 a!3235) j!176) mask!3524))))

(assert (=> b!516515 e!301414))

(declare-fun res!316229 () Bool)

(assert (=> b!516515 (=> (not res!316229) (not e!301414))))

(assert (=> b!516515 (= res!316229 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15988 0))(
  ( (Unit!15989) )
))
(declare-fun lt!236499 () Unit!15988)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33060 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15988)

(assert (=> b!516515 (= lt!236499 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (= (and start!46788 res!316228) b!516513))

(assert (= (and b!516513 res!316222) b!516508))

(assert (= (and b!516508 res!316227) b!516505))

(assert (= (and b!516505 res!316221) b!516514))

(assert (= (and b!516514 res!316224) b!516510))

(assert (= (and b!516510 res!316226) b!516506))

(assert (= (and b!516506 res!316223) b!516512))

(assert (= (and b!516512 res!316225) b!516515))

(assert (= (and b!516515 res!316229) b!516507))

(assert (= (and b!516515 (not res!316220)) b!516511))

(assert (= (and b!516511 (not res!316219)) b!516509))

(declare-fun m!498069 () Bool)

(assert (=> b!516515 m!498069))

(declare-fun m!498071 () Bool)

(assert (=> b!516515 m!498071))

(declare-fun m!498073 () Bool)

(assert (=> b!516515 m!498073))

(declare-fun m!498075 () Bool)

(assert (=> b!516515 m!498075))

(declare-fun m!498077 () Bool)

(assert (=> b!516515 m!498077))

(assert (=> b!516515 m!498075))

(declare-fun m!498079 () Bool)

(assert (=> b!516515 m!498079))

(assert (=> b!516515 m!498075))

(declare-fun m!498081 () Bool)

(assert (=> b!516515 m!498081))

(assert (=> b!516515 m!498073))

(declare-fun m!498083 () Bool)

(assert (=> b!516515 m!498083))

(assert (=> b!516515 m!498073))

(declare-fun m!498085 () Bool)

(assert (=> b!516515 m!498085))

(assert (=> b!516508 m!498075))

(assert (=> b!516508 m!498075))

(declare-fun m!498087 () Bool)

(assert (=> b!516508 m!498087))

(declare-fun m!498089 () Bool)

(assert (=> b!516510 m!498089))

(declare-fun m!498091 () Bool)

(assert (=> start!46788 m!498091))

(declare-fun m!498093 () Bool)

(assert (=> start!46788 m!498093))

(declare-fun m!498095 () Bool)

(assert (=> b!516506 m!498095))

(declare-fun m!498097 () Bool)

(assert (=> b!516514 m!498097))

(assert (=> b!516507 m!498075))

(assert (=> b!516507 m!498075))

(declare-fun m!498099 () Bool)

(assert (=> b!516507 m!498099))

(declare-fun m!498101 () Bool)

(assert (=> b!516512 m!498101))

(declare-fun m!498103 () Bool)

(assert (=> b!516509 m!498103))

(assert (=> b!516509 m!498075))

(declare-fun m!498105 () Bool)

(assert (=> b!516505 m!498105))

(check-sat (not b!516506) (not b!516514) (not b!516510) (not b!516515) (not b!516508) (not start!46788) (not b!516512) (not b!516505) (not b!516507))
(check-sat)
(get-model)

(declare-fun b!516561 () Bool)

(declare-fun c!60440 () Bool)

(declare-fun lt!236524 () (_ BitVec 64))

(assert (=> b!516561 (= c!60440 (= lt!236524 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!301440 () SeekEntryResult!4369)

(declare-fun e!301439 () SeekEntryResult!4369)

(assert (=> b!516561 (= e!301440 e!301439)))

(declare-fun b!516562 () Bool)

(declare-fun lt!236523 () SeekEntryResult!4369)

(assert (=> b!516562 (= e!301439 (MissingZero!4369 (index!19666 lt!236523)))))

(declare-fun b!516563 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33060 (_ BitVec 32)) SeekEntryResult!4369)

(assert (=> b!516563 (= e!301439 (seekKeyOrZeroReturnVacant!0 (x!48647 lt!236523) (index!19666 lt!236523) (index!19666 lt!236523) k0!2280 a!3235 mask!3524))))

(declare-fun b!516564 () Bool)

(declare-fun e!301441 () SeekEntryResult!4369)

(assert (=> b!516564 (= e!301441 Undefined!4369)))

(declare-fun d!79451 () Bool)

(declare-fun lt!236525 () SeekEntryResult!4369)

(assert (=> d!79451 (and (or ((_ is Undefined!4369) lt!236525) (not ((_ is Found!4369) lt!236525)) (and (bvsge (index!19665 lt!236525) #b00000000000000000000000000000000) (bvslt (index!19665 lt!236525) (size!16259 a!3235)))) (or ((_ is Undefined!4369) lt!236525) ((_ is Found!4369) lt!236525) (not ((_ is MissingZero!4369) lt!236525)) (and (bvsge (index!19664 lt!236525) #b00000000000000000000000000000000) (bvslt (index!19664 lt!236525) (size!16259 a!3235)))) (or ((_ is Undefined!4369) lt!236525) ((_ is Found!4369) lt!236525) ((_ is MissingZero!4369) lt!236525) (not ((_ is MissingVacant!4369) lt!236525)) (and (bvsge (index!19667 lt!236525) #b00000000000000000000000000000000) (bvslt (index!19667 lt!236525) (size!16259 a!3235)))) (or ((_ is Undefined!4369) lt!236525) (ite ((_ is Found!4369) lt!236525) (= (select (arr!15895 a!3235) (index!19665 lt!236525)) k0!2280) (ite ((_ is MissingZero!4369) lt!236525) (= (select (arr!15895 a!3235) (index!19664 lt!236525)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!4369) lt!236525) (= (select (arr!15895 a!3235) (index!19667 lt!236525)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!79451 (= lt!236525 e!301441)))

(declare-fun c!60438 () Bool)

(assert (=> d!79451 (= c!60438 (and ((_ is Intermediate!4369) lt!236523) (undefined!5181 lt!236523)))))

(assert (=> d!79451 (= lt!236523 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2280 mask!3524) k0!2280 a!3235 mask!3524))))

(assert (=> d!79451 (validMask!0 mask!3524)))

(assert (=> d!79451 (= (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524) lt!236525)))

(declare-fun b!516565 () Bool)

(assert (=> b!516565 (= e!301441 e!301440)))

(assert (=> b!516565 (= lt!236524 (select (arr!15895 a!3235) (index!19666 lt!236523)))))

(declare-fun c!60439 () Bool)

(assert (=> b!516565 (= c!60439 (= lt!236524 k0!2280))))

(declare-fun b!516566 () Bool)

(assert (=> b!516566 (= e!301440 (Found!4369 (index!19666 lt!236523)))))

(assert (= (and d!79451 c!60438) b!516564))

(assert (= (and d!79451 (not c!60438)) b!516565))

(assert (= (and b!516565 c!60439) b!516566))

(assert (= (and b!516565 (not c!60439)) b!516561))

(assert (= (and b!516561 c!60440) b!516562))

(assert (= (and b!516561 (not c!60440)) b!516563))

(declare-fun m!498145 () Bool)

(assert (=> b!516563 m!498145))

(declare-fun m!498147 () Bool)

(assert (=> d!79451 m!498147))

(declare-fun m!498149 () Bool)

(assert (=> d!79451 m!498149))

(declare-fun m!498151 () Bool)

(assert (=> d!79451 m!498151))

(assert (=> d!79451 m!498151))

(declare-fun m!498153 () Bool)

(assert (=> d!79451 m!498153))

(declare-fun m!498155 () Bool)

(assert (=> d!79451 m!498155))

(assert (=> d!79451 m!498091))

(declare-fun m!498157 () Bool)

(assert (=> b!516565 m!498157))

(assert (=> b!516510 d!79451))

(declare-fun d!79457 () Bool)

(declare-fun lt!236531 () (_ BitVec 32))

(declare-fun lt!236530 () (_ BitVec 32))

(assert (=> d!79457 (= lt!236531 (bvmul (bvxor lt!236530 (bvlshr lt!236530 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!79457 (= lt!236530 ((_ extract 31 0) (bvand (bvxor (select (arr!15895 a!3235) j!176) (bvlshr (select (arr!15895 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!79457 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!316263 (let ((h!11002 ((_ extract 31 0) (bvand (bvxor (select (arr!15895 a!3235) j!176) (bvlshr (select (arr!15895 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!48649 (bvmul (bvxor h!11002 (bvlshr h!11002 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!48649 (bvlshr x!48649 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!316263 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!316263 #b00000000000000000000000000000000))))))

(assert (=> d!79457 (= (toIndex!0 (select (arr!15895 a!3235) j!176) mask!3524) (bvand (bvxor lt!236531 (bvlshr lt!236531 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!516515 d!79457))

(declare-fun call!31640 () Bool)

(declare-fun bm!31637 () Bool)

(assert (=> bm!31637 (= call!31640 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!176 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun d!79459 () Bool)

(declare-fun res!316268 () Bool)

(declare-fun e!301460 () Bool)

(assert (=> d!79459 (=> res!316268 e!301460)))

(assert (=> d!79459 (= res!316268 (bvsge j!176 (size!16259 a!3235)))))

(assert (=> d!79459 (= (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524) e!301460)))

(declare-fun b!516599 () Bool)

(declare-fun e!301462 () Bool)

(assert (=> b!516599 (= e!301462 call!31640)))

(declare-fun b!516600 () Bool)

(assert (=> b!516600 (= e!301460 e!301462)))

(declare-fun c!60455 () Bool)

(assert (=> b!516600 (= c!60455 (validKeyInArray!0 (select (arr!15895 a!3235) j!176)))))

(declare-fun b!516601 () Bool)

(declare-fun e!301461 () Bool)

(assert (=> b!516601 (= e!301461 call!31640)))

(declare-fun b!516602 () Bool)

(assert (=> b!516602 (= e!301462 e!301461)))

(declare-fun lt!236552 () (_ BitVec 64))

(assert (=> b!516602 (= lt!236552 (select (arr!15895 a!3235) j!176))))

(declare-fun lt!236551 () Unit!15988)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!33060 (_ BitVec 64) (_ BitVec 32)) Unit!15988)

(assert (=> b!516602 (= lt!236551 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!236552 j!176))))

(assert (=> b!516602 (arrayContainsKey!0 a!3235 lt!236552 #b00000000000000000000000000000000)))

(declare-fun lt!236550 () Unit!15988)

(assert (=> b!516602 (= lt!236550 lt!236551)))

(declare-fun res!316269 () Bool)

(assert (=> b!516602 (= res!316269 (= (seekEntryOrOpen!0 (select (arr!15895 a!3235) j!176) a!3235 mask!3524) (Found!4369 j!176)))))

(assert (=> b!516602 (=> (not res!316269) (not e!301461))))

(assert (= (and d!79459 (not res!316268)) b!516600))

(assert (= (and b!516600 c!60455) b!516602))

(assert (= (and b!516600 (not c!60455)) b!516599))

(assert (= (and b!516602 res!316269) b!516601))

(assert (= (or b!516601 b!516599) bm!31637))

(declare-fun m!498185 () Bool)

(assert (=> bm!31637 m!498185))

(assert (=> b!516600 m!498075))

(assert (=> b!516600 m!498075))

(assert (=> b!516600 m!498087))

(assert (=> b!516602 m!498075))

(declare-fun m!498187 () Bool)

(assert (=> b!516602 m!498187))

(declare-fun m!498189 () Bool)

(assert (=> b!516602 m!498189))

(assert (=> b!516602 m!498075))

(assert (=> b!516602 m!498099))

(assert (=> b!516515 d!79459))

(declare-fun d!79467 () Bool)

(assert (=> d!79467 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-fun lt!236555 () Unit!15988)

(declare-fun choose!38 (array!33060 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15988)

(assert (=> d!79467 (= lt!236555 (choose!38 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (=> d!79467 (validMask!0 mask!3524)))

(assert (=> d!79467 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176) lt!236555)))

(declare-fun bs!16323 () Bool)

(assert (= bs!16323 d!79467))

(assert (=> bs!16323 m!498081))

(declare-fun m!498191 () Bool)

(assert (=> bs!16323 m!498191))

(assert (=> bs!16323 m!498091))

(assert (=> b!516515 d!79467))

(declare-fun b!516654 () Bool)

(declare-fun e!301500 () SeekEntryResult!4369)

(assert (=> b!516654 (= e!301500 (Intermediate!4369 false lt!236500 #b00000000000000000000000000000000))))

(declare-fun b!516655 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!516655 (= e!301500 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!236500 #b00000000000000000000000000000000 mask!3524) (select (arr!15895 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!516656 () Bool)

(declare-fun e!301503 () SeekEntryResult!4369)

(assert (=> b!516656 (= e!301503 (Intermediate!4369 true lt!236500 #b00000000000000000000000000000000))))

(declare-fun b!516657 () Bool)

(declare-fun e!301501 () Bool)

(declare-fun lt!236585 () SeekEntryResult!4369)

(assert (=> b!516657 (= e!301501 (bvsge (x!48647 lt!236585) #b01111111111111111111111111111110))))

(declare-fun b!516658 () Bool)

(assert (=> b!516658 (and (bvsge (index!19666 lt!236585) #b00000000000000000000000000000000) (bvslt (index!19666 lt!236585) (size!16259 a!3235)))))

(declare-fun res!316299 () Bool)

(assert (=> b!516658 (= res!316299 (= (select (arr!15895 a!3235) (index!19666 lt!236585)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!301502 () Bool)

(assert (=> b!516658 (=> res!316299 e!301502)))

(declare-fun b!516659 () Bool)

(assert (=> b!516659 (and (bvsge (index!19666 lt!236585) #b00000000000000000000000000000000) (bvslt (index!19666 lt!236585) (size!16259 a!3235)))))

(assert (=> b!516659 (= e!301502 (= (select (arr!15895 a!3235) (index!19666 lt!236585)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!79469 () Bool)

(assert (=> d!79469 e!301501))

(declare-fun c!60469 () Bool)

(assert (=> d!79469 (= c!60469 (and ((_ is Intermediate!4369) lt!236585) (undefined!5181 lt!236585)))))

(assert (=> d!79469 (= lt!236585 e!301503)))

(declare-fun c!60468 () Bool)

(assert (=> d!79469 (= c!60468 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!236584 () (_ BitVec 64))

(assert (=> d!79469 (= lt!236584 (select (arr!15895 a!3235) lt!236500))))

(assert (=> d!79469 (validMask!0 mask!3524)))

(assert (=> d!79469 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!236500 (select (arr!15895 a!3235) j!176) a!3235 mask!3524) lt!236585)))

(declare-fun b!516660 () Bool)

(declare-fun e!301504 () Bool)

(assert (=> b!516660 (= e!301501 e!301504)))

(declare-fun res!316301 () Bool)

(assert (=> b!516660 (= res!316301 (and ((_ is Intermediate!4369) lt!236585) (not (undefined!5181 lt!236585)) (bvslt (x!48647 lt!236585) #b01111111111111111111111111111110) (bvsge (x!48647 lt!236585) #b00000000000000000000000000000000) (bvsge (x!48647 lt!236585) #b00000000000000000000000000000000)))))

(assert (=> b!516660 (=> (not res!316301) (not e!301504))))

(declare-fun b!516661 () Bool)

(assert (=> b!516661 (= e!301503 e!301500)))

(declare-fun c!60470 () Bool)

(assert (=> b!516661 (= c!60470 (or (= lt!236584 (select (arr!15895 a!3235) j!176)) (= (bvadd lt!236584 lt!236584) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!516662 () Bool)

(assert (=> b!516662 (and (bvsge (index!19666 lt!236585) #b00000000000000000000000000000000) (bvslt (index!19666 lt!236585) (size!16259 a!3235)))))

(declare-fun res!316300 () Bool)

(assert (=> b!516662 (= res!316300 (= (select (arr!15895 a!3235) (index!19666 lt!236585)) (select (arr!15895 a!3235) j!176)))))

(assert (=> b!516662 (=> res!316300 e!301502)))

(assert (=> b!516662 (= e!301504 e!301502)))

(assert (= (and d!79469 c!60468) b!516656))

(assert (= (and d!79469 (not c!60468)) b!516661))

(assert (= (and b!516661 c!60470) b!516654))

(assert (= (and b!516661 (not c!60470)) b!516655))

(assert (= (and d!79469 c!60469) b!516657))

(assert (= (and d!79469 (not c!60469)) b!516660))

(assert (= (and b!516660 res!316301) b!516662))

(assert (= (and b!516662 (not res!316300)) b!516658))

(assert (= (and b!516658 (not res!316299)) b!516659))

(declare-fun m!498211 () Bool)

(assert (=> d!79469 m!498211))

(assert (=> d!79469 m!498091))

(declare-fun m!498213 () Bool)

(assert (=> b!516659 m!498213))

(assert (=> b!516658 m!498213))

(declare-fun m!498215 () Bool)

(assert (=> b!516655 m!498215))

(assert (=> b!516655 m!498215))

(assert (=> b!516655 m!498075))

(declare-fun m!498217 () Bool)

(assert (=> b!516655 m!498217))

(assert (=> b!516662 m!498213))

(assert (=> b!516515 d!79469))

(declare-fun b!516663 () Bool)

(declare-fun e!301505 () SeekEntryResult!4369)

(assert (=> b!516663 (= e!301505 (Intermediate!4369 false lt!236498 #b00000000000000000000000000000000))))

(declare-fun b!516664 () Bool)

(assert (=> b!516664 (= e!301505 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!236498 #b00000000000000000000000000000000 mask!3524) (select (store (arr!15895 a!3235) i!1204 k0!2280) j!176) (array!33061 (store (arr!15895 a!3235) i!1204 k0!2280) (size!16259 a!3235)) mask!3524))))

(declare-fun b!516665 () Bool)

(declare-fun e!301508 () SeekEntryResult!4369)

(assert (=> b!516665 (= e!301508 (Intermediate!4369 true lt!236498 #b00000000000000000000000000000000))))

(declare-fun b!516666 () Bool)

(declare-fun e!301506 () Bool)

(declare-fun lt!236587 () SeekEntryResult!4369)

(assert (=> b!516666 (= e!301506 (bvsge (x!48647 lt!236587) #b01111111111111111111111111111110))))

(declare-fun b!516667 () Bool)

(assert (=> b!516667 (and (bvsge (index!19666 lt!236587) #b00000000000000000000000000000000) (bvslt (index!19666 lt!236587) (size!16259 (array!33061 (store (arr!15895 a!3235) i!1204 k0!2280) (size!16259 a!3235)))))))

(declare-fun res!316302 () Bool)

(assert (=> b!516667 (= res!316302 (= (select (arr!15895 (array!33061 (store (arr!15895 a!3235) i!1204 k0!2280) (size!16259 a!3235))) (index!19666 lt!236587)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!301507 () Bool)

(assert (=> b!516667 (=> res!316302 e!301507)))

(declare-fun b!516668 () Bool)

(assert (=> b!516668 (and (bvsge (index!19666 lt!236587) #b00000000000000000000000000000000) (bvslt (index!19666 lt!236587) (size!16259 (array!33061 (store (arr!15895 a!3235) i!1204 k0!2280) (size!16259 a!3235)))))))

(assert (=> b!516668 (= e!301507 (= (select (arr!15895 (array!33061 (store (arr!15895 a!3235) i!1204 k0!2280) (size!16259 a!3235))) (index!19666 lt!236587)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!79489 () Bool)

(assert (=> d!79489 e!301506))

(declare-fun c!60472 () Bool)

(assert (=> d!79489 (= c!60472 (and ((_ is Intermediate!4369) lt!236587) (undefined!5181 lt!236587)))))

(assert (=> d!79489 (= lt!236587 e!301508)))

(declare-fun c!60471 () Bool)

(assert (=> d!79489 (= c!60471 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!236586 () (_ BitVec 64))

(assert (=> d!79489 (= lt!236586 (select (arr!15895 (array!33061 (store (arr!15895 a!3235) i!1204 k0!2280) (size!16259 a!3235))) lt!236498))))

(assert (=> d!79489 (validMask!0 mask!3524)))

(assert (=> d!79489 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!236498 (select (store (arr!15895 a!3235) i!1204 k0!2280) j!176) (array!33061 (store (arr!15895 a!3235) i!1204 k0!2280) (size!16259 a!3235)) mask!3524) lt!236587)))

(declare-fun b!516669 () Bool)

(declare-fun e!301509 () Bool)

(assert (=> b!516669 (= e!301506 e!301509)))

(declare-fun res!316304 () Bool)

(assert (=> b!516669 (= res!316304 (and ((_ is Intermediate!4369) lt!236587) (not (undefined!5181 lt!236587)) (bvslt (x!48647 lt!236587) #b01111111111111111111111111111110) (bvsge (x!48647 lt!236587) #b00000000000000000000000000000000) (bvsge (x!48647 lt!236587) #b00000000000000000000000000000000)))))

(assert (=> b!516669 (=> (not res!316304) (not e!301509))))

(declare-fun b!516670 () Bool)

(assert (=> b!516670 (= e!301508 e!301505)))

(declare-fun c!60473 () Bool)

(assert (=> b!516670 (= c!60473 (or (= lt!236586 (select (store (arr!15895 a!3235) i!1204 k0!2280) j!176)) (= (bvadd lt!236586 lt!236586) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!516671 () Bool)

(assert (=> b!516671 (and (bvsge (index!19666 lt!236587) #b00000000000000000000000000000000) (bvslt (index!19666 lt!236587) (size!16259 (array!33061 (store (arr!15895 a!3235) i!1204 k0!2280) (size!16259 a!3235)))))))

(declare-fun res!316303 () Bool)

(assert (=> b!516671 (= res!316303 (= (select (arr!15895 (array!33061 (store (arr!15895 a!3235) i!1204 k0!2280) (size!16259 a!3235))) (index!19666 lt!236587)) (select (store (arr!15895 a!3235) i!1204 k0!2280) j!176)))))

(assert (=> b!516671 (=> res!316303 e!301507)))

(assert (=> b!516671 (= e!301509 e!301507)))

(assert (= (and d!79489 c!60471) b!516665))

(assert (= (and d!79489 (not c!60471)) b!516670))

(assert (= (and b!516670 c!60473) b!516663))

(assert (= (and b!516670 (not c!60473)) b!516664))

(assert (= (and d!79489 c!60472) b!516666))

(assert (= (and d!79489 (not c!60472)) b!516669))

(assert (= (and b!516669 res!316304) b!516671))

(assert (= (and b!516671 (not res!316303)) b!516667))

(assert (= (and b!516667 (not res!316302)) b!516668))

(declare-fun m!498219 () Bool)

(assert (=> d!79489 m!498219))

(assert (=> d!79489 m!498091))

(declare-fun m!498221 () Bool)

(assert (=> b!516668 m!498221))

(assert (=> b!516667 m!498221))

(declare-fun m!498223 () Bool)

(assert (=> b!516664 m!498223))

(assert (=> b!516664 m!498223))

(assert (=> b!516664 m!498073))

(declare-fun m!498225 () Bool)

(assert (=> b!516664 m!498225))

(assert (=> b!516671 m!498221))

(assert (=> b!516515 d!79489))

(declare-fun d!79491 () Bool)

(declare-fun lt!236589 () (_ BitVec 32))

(declare-fun lt!236588 () (_ BitVec 32))

(assert (=> d!79491 (= lt!236589 (bvmul (bvxor lt!236588 (bvlshr lt!236588 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!79491 (= lt!236588 ((_ extract 31 0) (bvand (bvxor (select (store (arr!15895 a!3235) i!1204 k0!2280) j!176) (bvlshr (select (store (arr!15895 a!3235) i!1204 k0!2280) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!79491 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!316263 (let ((h!11002 ((_ extract 31 0) (bvand (bvxor (select (store (arr!15895 a!3235) i!1204 k0!2280) j!176) (bvlshr (select (store (arr!15895 a!3235) i!1204 k0!2280) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!48649 (bvmul (bvxor h!11002 (bvlshr h!11002 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!48649 (bvlshr x!48649 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!316263 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!316263 #b00000000000000000000000000000000))))))

(assert (=> d!79491 (= (toIndex!0 (select (store (arr!15895 a!3235) i!1204 k0!2280) j!176) mask!3524) (bvand (bvxor lt!236589 (bvlshr lt!236589 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!516515 d!79491))

(declare-fun d!79493 () Bool)

(assert (=> d!79493 (= (validMask!0 mask!3524) (and (or (= mask!3524 #b00000000000000000000000000000111) (= mask!3524 #b00000000000000000000000000001111) (= mask!3524 #b00000000000000000000000000011111) (= mask!3524 #b00000000000000000000000000111111) (= mask!3524 #b00000000000000000000000001111111) (= mask!3524 #b00000000000000000000000011111111) (= mask!3524 #b00000000000000000000000111111111) (= mask!3524 #b00000000000000000000001111111111) (= mask!3524 #b00000000000000000000011111111111) (= mask!3524 #b00000000000000000000111111111111) (= mask!3524 #b00000000000000000001111111111111) (= mask!3524 #b00000000000000000011111111111111) (= mask!3524 #b00000000000000000111111111111111) (= mask!3524 #b00000000000000001111111111111111) (= mask!3524 #b00000000000000011111111111111111) (= mask!3524 #b00000000000000111111111111111111) (= mask!3524 #b00000000000001111111111111111111) (= mask!3524 #b00000000000011111111111111111111) (= mask!3524 #b00000000000111111111111111111111) (= mask!3524 #b00000000001111111111111111111111) (= mask!3524 #b00000000011111111111111111111111) (= mask!3524 #b00000000111111111111111111111111) (= mask!3524 #b00000001111111111111111111111111) (= mask!3524 #b00000011111111111111111111111111) (= mask!3524 #b00000111111111111111111111111111) (= mask!3524 #b00001111111111111111111111111111) (= mask!3524 #b00011111111111111111111111111111) (= mask!3524 #b00111111111111111111111111111111)) (bvsle mask!3524 #b00111111111111111111111111111111)))))

(assert (=> start!46788 d!79493))

(declare-fun d!79495 () Bool)

(assert (=> d!79495 (= (array_inv!11669 a!3235) (bvsge (size!16259 a!3235) #b00000000000000000000000000000000))))

(assert (=> start!46788 d!79495))

(declare-fun d!79497 () Bool)

(assert (=> d!79497 (= (validKeyInArray!0 (select (arr!15895 a!3235) j!176)) (and (not (= (select (arr!15895 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15895 a!3235) j!176) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!516508 d!79497))

(declare-fun d!79499 () Bool)

(declare-fun res!316327 () Bool)

(declare-fun e!301547 () Bool)

(assert (=> d!79499 (=> res!316327 e!301547)))

(assert (=> d!79499 (= res!316327 (= (select (arr!15895 a!3235) #b00000000000000000000000000000000) k0!2280))))

(assert (=> d!79499 (= (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000) e!301547)))

(declare-fun b!516730 () Bool)

(declare-fun e!301548 () Bool)

(assert (=> b!516730 (= e!301547 e!301548)))

(declare-fun res!316328 () Bool)

(assert (=> b!516730 (=> (not res!316328) (not e!301548))))

(assert (=> b!516730 (= res!316328 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!16259 a!3235)))))

(declare-fun b!516731 () Bool)

(assert (=> b!516731 (= e!301548 (arrayContainsKey!0 a!3235 k0!2280 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!79499 (not res!316327)) b!516730))

(assert (= (and b!516730 res!316328) b!516731))

(declare-fun m!498251 () Bool)

(assert (=> d!79499 m!498251))

(declare-fun m!498255 () Bool)

(assert (=> b!516731 m!498255))

(assert (=> b!516514 d!79499))

(declare-fun d!79507 () Bool)

(declare-fun res!316341 () Bool)

(declare-fun e!301563 () Bool)

(assert (=> d!79507 (=> res!316341 e!301563)))

(assert (=> d!79507 (= res!316341 (bvsge #b00000000000000000000000000000000 (size!16259 a!3235)))))

(assert (=> d!79507 (= (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10103) e!301563)))

(declare-fun b!516755 () Bool)

(declare-fun e!301564 () Bool)

(declare-fun e!301565 () Bool)

(assert (=> b!516755 (= e!301564 e!301565)))

(declare-fun c!60498 () Bool)

(assert (=> b!516755 (= c!60498 (validKeyInArray!0 (select (arr!15895 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!516756 () Bool)

(declare-fun call!31650 () Bool)

(assert (=> b!516756 (= e!301565 call!31650)))

(declare-fun bm!31647 () Bool)

(assert (=> bm!31647 (= call!31650 (arrayNoDuplicates!0 a!3235 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!60498 (Cons!10102 (select (arr!15895 a!3235) #b00000000000000000000000000000000) Nil!10103) Nil!10103)))))

(declare-fun b!516757 () Bool)

(assert (=> b!516757 (= e!301565 call!31650)))

(declare-fun b!516758 () Bool)

(declare-fun e!301562 () Bool)

(declare-fun contains!2748 (List!10106 (_ BitVec 64)) Bool)

(assert (=> b!516758 (= e!301562 (contains!2748 Nil!10103 (select (arr!15895 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!516759 () Bool)

(assert (=> b!516759 (= e!301563 e!301564)))

(declare-fun res!316340 () Bool)

(assert (=> b!516759 (=> (not res!316340) (not e!301564))))

(assert (=> b!516759 (= res!316340 (not e!301562))))

(declare-fun res!316342 () Bool)

(assert (=> b!516759 (=> (not res!316342) (not e!301562))))

(assert (=> b!516759 (= res!316342 (validKeyInArray!0 (select (arr!15895 a!3235) #b00000000000000000000000000000000)))))

(assert (= (and d!79507 (not res!316341)) b!516759))

(assert (= (and b!516759 res!316342) b!516758))

(assert (= (and b!516759 res!316340) b!516755))

(assert (= (and b!516755 c!60498) b!516756))

(assert (= (and b!516755 (not c!60498)) b!516757))

(assert (= (or b!516756 b!516757) bm!31647))

(assert (=> b!516755 m!498251))

(assert (=> b!516755 m!498251))

(declare-fun m!498267 () Bool)

(assert (=> b!516755 m!498267))

(assert (=> bm!31647 m!498251))

(declare-fun m!498269 () Bool)

(assert (=> bm!31647 m!498269))

(assert (=> b!516758 m!498251))

(assert (=> b!516758 m!498251))

(declare-fun m!498271 () Bool)

(assert (=> b!516758 m!498271))

(assert (=> b!516759 m!498251))

(assert (=> b!516759 m!498251))

(assert (=> b!516759 m!498267))

(assert (=> b!516512 d!79507))

(declare-fun b!516760 () Bool)

(declare-fun c!60501 () Bool)

(declare-fun lt!236610 () (_ BitVec 64))

(assert (=> b!516760 (= c!60501 (= lt!236610 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!301567 () SeekEntryResult!4369)

(declare-fun e!301566 () SeekEntryResult!4369)

(assert (=> b!516760 (= e!301567 e!301566)))

(declare-fun b!516761 () Bool)

(declare-fun lt!236609 () SeekEntryResult!4369)

(assert (=> b!516761 (= e!301566 (MissingZero!4369 (index!19666 lt!236609)))))

(declare-fun b!516762 () Bool)

(assert (=> b!516762 (= e!301566 (seekKeyOrZeroReturnVacant!0 (x!48647 lt!236609) (index!19666 lt!236609) (index!19666 lt!236609) (select (arr!15895 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!516763 () Bool)

(declare-fun e!301568 () SeekEntryResult!4369)

(assert (=> b!516763 (= e!301568 Undefined!4369)))

(declare-fun d!79513 () Bool)

(declare-fun lt!236611 () SeekEntryResult!4369)

(assert (=> d!79513 (and (or ((_ is Undefined!4369) lt!236611) (not ((_ is Found!4369) lt!236611)) (and (bvsge (index!19665 lt!236611) #b00000000000000000000000000000000) (bvslt (index!19665 lt!236611) (size!16259 a!3235)))) (or ((_ is Undefined!4369) lt!236611) ((_ is Found!4369) lt!236611) (not ((_ is MissingZero!4369) lt!236611)) (and (bvsge (index!19664 lt!236611) #b00000000000000000000000000000000) (bvslt (index!19664 lt!236611) (size!16259 a!3235)))) (or ((_ is Undefined!4369) lt!236611) ((_ is Found!4369) lt!236611) ((_ is MissingZero!4369) lt!236611) (not ((_ is MissingVacant!4369) lt!236611)) (and (bvsge (index!19667 lt!236611) #b00000000000000000000000000000000) (bvslt (index!19667 lt!236611) (size!16259 a!3235)))) (or ((_ is Undefined!4369) lt!236611) (ite ((_ is Found!4369) lt!236611) (= (select (arr!15895 a!3235) (index!19665 lt!236611)) (select (arr!15895 a!3235) j!176)) (ite ((_ is MissingZero!4369) lt!236611) (= (select (arr!15895 a!3235) (index!19664 lt!236611)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!4369) lt!236611) (= (select (arr!15895 a!3235) (index!19667 lt!236611)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!79513 (= lt!236611 e!301568)))

(declare-fun c!60499 () Bool)

(assert (=> d!79513 (= c!60499 (and ((_ is Intermediate!4369) lt!236609) (undefined!5181 lt!236609)))))

(assert (=> d!79513 (= lt!236609 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15895 a!3235) j!176) mask!3524) (select (arr!15895 a!3235) j!176) a!3235 mask!3524))))

(assert (=> d!79513 (validMask!0 mask!3524)))

(assert (=> d!79513 (= (seekEntryOrOpen!0 (select (arr!15895 a!3235) j!176) a!3235 mask!3524) lt!236611)))

(declare-fun b!516764 () Bool)

(assert (=> b!516764 (= e!301568 e!301567)))

(assert (=> b!516764 (= lt!236610 (select (arr!15895 a!3235) (index!19666 lt!236609)))))

(declare-fun c!60500 () Bool)

(assert (=> b!516764 (= c!60500 (= lt!236610 (select (arr!15895 a!3235) j!176)))))

(declare-fun b!516765 () Bool)

(assert (=> b!516765 (= e!301567 (Found!4369 (index!19666 lt!236609)))))

(assert (= (and d!79513 c!60499) b!516763))

(assert (= (and d!79513 (not c!60499)) b!516764))

(assert (= (and b!516764 c!60500) b!516765))

(assert (= (and b!516764 (not c!60500)) b!516760))

(assert (= (and b!516760 c!60501) b!516761))

(assert (= (and b!516760 (not c!60501)) b!516762))

(assert (=> b!516762 m!498075))

(declare-fun m!498273 () Bool)

(assert (=> b!516762 m!498273))

(declare-fun m!498275 () Bool)

(assert (=> d!79513 m!498275))

(declare-fun m!498277 () Bool)

(assert (=> d!79513 m!498277))

(assert (=> d!79513 m!498075))

(assert (=> d!79513 m!498079))

(assert (=> d!79513 m!498079))

(assert (=> d!79513 m!498075))

(declare-fun m!498279 () Bool)

(assert (=> d!79513 m!498279))

(declare-fun m!498281 () Bool)

(assert (=> d!79513 m!498281))

(assert (=> d!79513 m!498091))

(declare-fun m!498283 () Bool)

(assert (=> b!516764 m!498283))

(assert (=> b!516507 d!79513))

(declare-fun d!79515 () Bool)

(assert (=> d!79515 (= (validKeyInArray!0 k0!2280) (and (not (= k0!2280 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2280 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!516505 d!79515))

(declare-fun bm!31648 () Bool)

(declare-fun call!31651 () Bool)

(assert (=> bm!31648 (= call!31651 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun d!79517 () Bool)

(declare-fun res!316343 () Bool)

(declare-fun e!301569 () Bool)

(assert (=> d!79517 (=> res!316343 e!301569)))

(assert (=> d!79517 (= res!316343 (bvsge #b00000000000000000000000000000000 (size!16259 a!3235)))))

(assert (=> d!79517 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524) e!301569)))

(declare-fun b!516766 () Bool)

(declare-fun e!301571 () Bool)

(assert (=> b!516766 (= e!301571 call!31651)))

(declare-fun b!516767 () Bool)

(assert (=> b!516767 (= e!301569 e!301571)))

(declare-fun c!60502 () Bool)

(assert (=> b!516767 (= c!60502 (validKeyInArray!0 (select (arr!15895 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!516768 () Bool)

(declare-fun e!301570 () Bool)

(assert (=> b!516768 (= e!301570 call!31651)))

(declare-fun b!516769 () Bool)

(assert (=> b!516769 (= e!301571 e!301570)))

(declare-fun lt!236616 () (_ BitVec 64))

(assert (=> b!516769 (= lt!236616 (select (arr!15895 a!3235) #b00000000000000000000000000000000))))

(declare-fun lt!236615 () Unit!15988)

(assert (=> b!516769 (= lt!236615 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!236616 #b00000000000000000000000000000000))))

(assert (=> b!516769 (arrayContainsKey!0 a!3235 lt!236616 #b00000000000000000000000000000000)))

(declare-fun lt!236614 () Unit!15988)

(assert (=> b!516769 (= lt!236614 lt!236615)))

(declare-fun res!316344 () Bool)

(assert (=> b!516769 (= res!316344 (= (seekEntryOrOpen!0 (select (arr!15895 a!3235) #b00000000000000000000000000000000) a!3235 mask!3524) (Found!4369 #b00000000000000000000000000000000)))))

(assert (=> b!516769 (=> (not res!316344) (not e!301570))))

(assert (= (and d!79517 (not res!316343)) b!516767))

(assert (= (and b!516767 c!60502) b!516769))

(assert (= (and b!516767 (not c!60502)) b!516766))

(assert (= (and b!516769 res!316344) b!516768))

(assert (= (or b!516768 b!516766) bm!31648))

(declare-fun m!498287 () Bool)

(assert (=> bm!31648 m!498287))

(assert (=> b!516767 m!498251))

(assert (=> b!516767 m!498251))

(assert (=> b!516767 m!498267))

(assert (=> b!516769 m!498251))

(declare-fun m!498289 () Bool)

(assert (=> b!516769 m!498289))

(declare-fun m!498291 () Bool)

(assert (=> b!516769 m!498291))

(assert (=> b!516769 m!498251))

(declare-fun m!498293 () Bool)

(assert (=> b!516769 m!498293))

(assert (=> b!516506 d!79517))

(check-sat (not bm!31647) (not b!516759) (not d!79467) (not d!79513) (not b!516655) (not b!516664) (not bm!31637) (not d!79469) (not b!516758) (not b!516600) (not b!516767) (not b!516762) (not d!79451) (not b!516602) (not b!516563) (not d!79489) (not b!516769) (not b!516755) (not bm!31648) (not b!516731))
(check-sat)
