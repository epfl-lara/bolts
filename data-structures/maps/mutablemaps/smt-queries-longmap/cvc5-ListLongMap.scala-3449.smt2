; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!47824 () Bool)

(assert start!47824)

(declare-fun b!526699 () Bool)

(declare-fun e!306985 () Bool)

(assert (=> b!526699 (= e!306985 false)))

(declare-fun b!526700 () Bool)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!33421 0))(
  ( (array!33422 (arr!16059 (Array (_ BitVec 32) (_ BitVec 64))) (size!16423 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33421)

(declare-fun e!306984 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4533 0))(
  ( (MissingZero!4533 (index!20344 (_ BitVec 32))) (Found!4533 (index!20345 (_ BitVec 32))) (Intermediate!4533 (undefined!5345 Bool) (index!20346 (_ BitVec 32)) (x!49341 (_ BitVec 32))) (Undefined!4533) (MissingVacant!4533 (index!20347 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33421 (_ BitVec 32)) SeekEntryResult!4533)

(assert (=> b!526700 (= e!306984 (= (seekEntryOrOpen!0 (select (arr!16059 a!3235) j!176) a!3235 mask!3524) (Found!4533 j!176)))))

(declare-fun b!526701 () Bool)

(declare-fun res!323411 () Bool)

(declare-fun e!306981 () Bool)

(assert (=> b!526701 (=> (not res!323411) (not e!306981))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!526701 (= res!323411 (validKeyInArray!0 k!2280))))

(declare-fun b!526702 () Bool)

(declare-fun res!323406 () Bool)

(assert (=> b!526702 (=> (not res!323406) (not e!306981))))

(assert (=> b!526702 (= res!323406 (validKeyInArray!0 (select (arr!16059 a!3235) j!176)))))

(declare-fun lt!242405 () SeekEntryResult!4533)

(declare-fun lt!242403 () (_ BitVec 32))

(declare-fun b!526703 () Bool)

(declare-fun e!306983 () Bool)

(assert (=> b!526703 (= e!306983 (or (bvsgt (x!49341 lt!242405) #b01111111111111111111111111111110) (and (bvsge lt!242403 #b00000000000000000000000000000000) (bvslt lt!242403 (size!16423 a!3235)))))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!526703 (= (index!20346 lt!242405) i!1204)))

(declare-datatypes ((Unit!16598 0))(
  ( (Unit!16599) )
))
(declare-fun lt!242396 () Unit!16598)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!33421 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16598)

(assert (=> b!526703 (= lt!242396 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!242403 #b00000000000000000000000000000000 (index!20346 lt!242405) (x!49341 lt!242405) mask!3524))))

(assert (=> b!526703 (and (or (= (select (arr!16059 a!3235) (index!20346 lt!242405)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16059 a!3235) (index!20346 lt!242405)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16059 a!3235) (index!20346 lt!242405)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!16059 a!3235) (index!20346 lt!242405)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!242397 () Unit!16598)

(declare-fun e!306979 () Unit!16598)

(assert (=> b!526703 (= lt!242397 e!306979)))

(declare-fun c!61952 () Bool)

(assert (=> b!526703 (= c!61952 (= (select (arr!16059 a!3235) (index!20346 lt!242405)) (select (arr!16059 a!3235) j!176)))))

(assert (=> b!526703 (and (bvslt (x!49341 lt!242405) #b01111111111111111111111111111110) (or (= (select (arr!16059 a!3235) (index!20346 lt!242405)) (select (arr!16059 a!3235) j!176)) (= (select (arr!16059 a!3235) (index!20346 lt!242405)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16059 a!3235) (index!20346 lt!242405)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!526704 () Bool)

(declare-fun res!323414 () Bool)

(declare-fun e!306980 () Bool)

(assert (=> b!526704 (=> (not res!323414) (not e!306980))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33421 (_ BitVec 32)) Bool)

(assert (=> b!526704 (= res!323414 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!526705 () Bool)

(assert (=> b!526705 (= e!306981 e!306980)))

(declare-fun res!323408 () Bool)

(assert (=> b!526705 (=> (not res!323408) (not e!306980))))

(declare-fun lt!242400 () SeekEntryResult!4533)

(assert (=> b!526705 (= res!323408 (or (= lt!242400 (MissingZero!4533 i!1204)) (= lt!242400 (MissingVacant!4533 i!1204))))))

(assert (=> b!526705 (= lt!242400 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!526706 () Bool)

(declare-fun res!323417 () Bool)

(assert (=> b!526706 (=> (not res!323417) (not e!306980))))

(declare-datatypes ((List!10270 0))(
  ( (Nil!10267) (Cons!10266 (h!11197 (_ BitVec 64)) (t!16506 List!10270)) )
))
(declare-fun arrayNoDuplicates!0 (array!33421 (_ BitVec 32) List!10270) Bool)

(assert (=> b!526706 (= res!323417 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10267))))

(declare-fun b!526707 () Bool)

(declare-fun Unit!16600 () Unit!16598)

(assert (=> b!526707 (= e!306979 Unit!16600)))

(declare-fun lt!242404 () Unit!16598)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33421 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16598)

(assert (=> b!526707 (= lt!242404 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!242403 #b00000000000000000000000000000000 (index!20346 lt!242405) (x!49341 lt!242405) mask!3524))))

(declare-fun lt!242398 () array!33421)

(declare-fun lt!242402 () (_ BitVec 64))

(declare-fun res!323407 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33421 (_ BitVec 32)) SeekEntryResult!4533)

(assert (=> b!526707 (= res!323407 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!242403 lt!242402 lt!242398 mask!3524) (Intermediate!4533 false (index!20346 lt!242405) (x!49341 lt!242405))))))

(assert (=> b!526707 (=> (not res!323407) (not e!306985))))

(assert (=> b!526707 e!306985))

(declare-fun res!323410 () Bool)

(assert (=> start!47824 (=> (not res!323410) (not e!306981))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47824 (= res!323410 (validMask!0 mask!3524))))

(assert (=> start!47824 e!306981))

(assert (=> start!47824 true))

(declare-fun array_inv!11833 (array!33421) Bool)

(assert (=> start!47824 (array_inv!11833 a!3235)))

(declare-fun b!526708 () Bool)

(declare-fun res!323413 () Bool)

(assert (=> b!526708 (=> res!323413 e!306983)))

(assert (=> b!526708 (= res!323413 (or (undefined!5345 lt!242405) (not (is-Intermediate!4533 lt!242405))))))

(declare-fun b!526709 () Bool)

(declare-fun res!323409 () Bool)

(assert (=> b!526709 (=> (not res!323409) (not e!306981))))

(declare-fun arrayContainsKey!0 (array!33421 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!526709 (= res!323409 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!526710 () Bool)

(declare-fun Unit!16601 () Unit!16598)

(assert (=> b!526710 (= e!306979 Unit!16601)))

(declare-fun b!526711 () Bool)

(declare-fun res!323416 () Bool)

(assert (=> b!526711 (=> (not res!323416) (not e!306981))))

(assert (=> b!526711 (= res!323416 (and (= (size!16423 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16423 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16423 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!526712 () Bool)

(assert (=> b!526712 (= e!306980 (not e!306983))))

(declare-fun res!323415 () Bool)

(assert (=> b!526712 (=> res!323415 e!306983)))

(declare-fun lt!242399 () (_ BitVec 32))

(assert (=> b!526712 (= res!323415 (= lt!242405 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!242399 lt!242402 lt!242398 mask!3524)))))

(assert (=> b!526712 (= lt!242405 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!242403 (select (arr!16059 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!526712 (= lt!242399 (toIndex!0 lt!242402 mask!3524))))

(assert (=> b!526712 (= lt!242402 (select (store (arr!16059 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!526712 (= lt!242403 (toIndex!0 (select (arr!16059 a!3235) j!176) mask!3524))))

(assert (=> b!526712 (= lt!242398 (array!33422 (store (arr!16059 a!3235) i!1204 k!2280) (size!16423 a!3235)))))

(assert (=> b!526712 e!306984))

(declare-fun res!323412 () Bool)

(assert (=> b!526712 (=> (not res!323412) (not e!306984))))

(assert (=> b!526712 (= res!323412 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!242401 () Unit!16598)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33421 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16598)

(assert (=> b!526712 (= lt!242401 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (= (and start!47824 res!323410) b!526711))

(assert (= (and b!526711 res!323416) b!526702))

(assert (= (and b!526702 res!323406) b!526701))

(assert (= (and b!526701 res!323411) b!526709))

(assert (= (and b!526709 res!323409) b!526705))

(assert (= (and b!526705 res!323408) b!526704))

(assert (= (and b!526704 res!323414) b!526706))

(assert (= (and b!526706 res!323417) b!526712))

(assert (= (and b!526712 res!323412) b!526700))

(assert (= (and b!526712 (not res!323415)) b!526708))

(assert (= (and b!526708 (not res!323413)) b!526703))

(assert (= (and b!526703 c!61952) b!526707))

(assert (= (and b!526703 (not c!61952)) b!526710))

(assert (= (and b!526707 res!323407) b!526699))

(declare-fun m!507463 () Bool)

(assert (=> b!526707 m!507463))

(declare-fun m!507465 () Bool)

(assert (=> b!526707 m!507465))

(declare-fun m!507467 () Bool)

(assert (=> b!526712 m!507467))

(declare-fun m!507469 () Bool)

(assert (=> b!526712 m!507469))

(declare-fun m!507471 () Bool)

(assert (=> b!526712 m!507471))

(declare-fun m!507473 () Bool)

(assert (=> b!526712 m!507473))

(declare-fun m!507475 () Bool)

(assert (=> b!526712 m!507475))

(declare-fun m!507477 () Bool)

(assert (=> b!526712 m!507477))

(declare-fun m!507479 () Bool)

(assert (=> b!526712 m!507479))

(assert (=> b!526712 m!507477))

(declare-fun m!507481 () Bool)

(assert (=> b!526712 m!507481))

(assert (=> b!526712 m!507477))

(declare-fun m!507483 () Bool)

(assert (=> b!526712 m!507483))

(assert (=> b!526702 m!507477))

(assert (=> b!526702 m!507477))

(declare-fun m!507485 () Bool)

(assert (=> b!526702 m!507485))

(declare-fun m!507487 () Bool)

(assert (=> b!526701 m!507487))

(assert (=> b!526700 m!507477))

(assert (=> b!526700 m!507477))

(declare-fun m!507489 () Bool)

(assert (=> b!526700 m!507489))

(declare-fun m!507491 () Bool)

(assert (=> start!47824 m!507491))

(declare-fun m!507493 () Bool)

(assert (=> start!47824 m!507493))

(declare-fun m!507495 () Bool)

(assert (=> b!526704 m!507495))

(declare-fun m!507497 () Bool)

(assert (=> b!526706 m!507497))

(declare-fun m!507499 () Bool)

(assert (=> b!526703 m!507499))

(declare-fun m!507501 () Bool)

(assert (=> b!526703 m!507501))

(assert (=> b!526703 m!507477))

(declare-fun m!507503 () Bool)

(assert (=> b!526705 m!507503))

(declare-fun m!507505 () Bool)

(assert (=> b!526709 m!507505))

(push 1)

(assert (not b!526709))

(assert (not b!526706))

(assert (not b!526712))

(assert (not b!526707))

(assert (not b!526700))

(assert (not start!47824))

(assert (not b!526704))

(assert (not b!526705))

(assert (not b!526702))

(assert (not b!526701))

(assert (not b!526703))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!80657 () Bool)

(assert (=> d!80657 (= (validMask!0 mask!3524) (and (or (= mask!3524 #b00000000000000000000000000000111) (= mask!3524 #b00000000000000000000000000001111) (= mask!3524 #b00000000000000000000000000011111) (= mask!3524 #b00000000000000000000000000111111) (= mask!3524 #b00000000000000000000000001111111) (= mask!3524 #b00000000000000000000000011111111) (= mask!3524 #b00000000000000000000000111111111) (= mask!3524 #b00000000000000000000001111111111) (= mask!3524 #b00000000000000000000011111111111) (= mask!3524 #b00000000000000000000111111111111) (= mask!3524 #b00000000000000000001111111111111) (= mask!3524 #b00000000000000000011111111111111) (= mask!3524 #b00000000000000000111111111111111) (= mask!3524 #b00000000000000001111111111111111) (= mask!3524 #b00000000000000011111111111111111) (= mask!3524 #b00000000000000111111111111111111) (= mask!3524 #b00000000000001111111111111111111) (= mask!3524 #b00000000000011111111111111111111) (= mask!3524 #b00000000000111111111111111111111) (= mask!3524 #b00000000001111111111111111111111) (= mask!3524 #b00000000011111111111111111111111) (= mask!3524 #b00000000111111111111111111111111) (= mask!3524 #b00000001111111111111111111111111) (= mask!3524 #b00000011111111111111111111111111) (= mask!3524 #b00000111111111111111111111111111) (= mask!3524 #b00001111111111111111111111111111) (= mask!3524 #b00011111111111111111111111111111) (= mask!3524 #b00111111111111111111111111111111)) (bvsle mask!3524 #b00111111111111111111111111111111)))))

(assert (=> start!47824 d!80657))

(declare-fun d!80663 () Bool)

(assert (=> d!80663 (= (array_inv!11833 a!3235) (bvsge (size!16423 a!3235) #b00000000000000000000000000000000))))

(assert (=> start!47824 d!80663))

(declare-fun d!80665 () Bool)

(declare-fun lt!242483 () (_ BitVec 32))

(declare-fun lt!242482 () (_ BitVec 32))

(assert (=> d!80665 (= lt!242483 (bvmul (bvxor lt!242482 (bvlshr lt!242482 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!80665 (= lt!242482 ((_ extract 31 0) (bvand (bvxor (select (arr!16059 a!3235) j!176) (bvlshr (select (arr!16059 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!80665 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!323511 (let ((h!11200 ((_ extract 31 0) (bvand (bvxor (select (arr!16059 a!3235) j!176) (bvlshr (select (arr!16059 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!49347 (bvmul (bvxor h!11200 (bvlshr h!11200 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!49347 (bvlshr x!49347 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!323511 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!323511 #b00000000000000000000000000000000))))))

(assert (=> d!80665 (= (toIndex!0 (select (arr!16059 a!3235) j!176) mask!3524) (bvand (bvxor lt!242483 (bvlshr lt!242483 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!526712 d!80665))

(declare-fun b!526853 () Bool)

(declare-fun e!307067 () Bool)

(declare-fun e!307068 () Bool)

(assert (=> b!526853 (= e!307067 e!307068)))

(declare-fun c!61973 () Bool)

(assert (=> b!526853 (= c!61973 (validKeyInArray!0 (select (arr!16059 a!3235) j!176)))))

(declare-fun call!31874 () Bool)

(declare-fun bm!31871 () Bool)

(assert (=> bm!31871 (= call!31874 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!176 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun d!80667 () Bool)

(declare-fun res!323519 () Bool)

(assert (=> d!80667 (=> res!323519 e!307067)))

(assert (=> d!80667 (= res!323519 (bvsge j!176 (size!16423 a!3235)))))

(assert (=> d!80667 (= (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524) e!307067)))

(declare-fun b!526854 () Bool)

(declare-fun e!307069 () Bool)

(assert (=> b!526854 (= e!307068 e!307069)))

(declare-fun lt!242495 () (_ BitVec 64))

(assert (=> b!526854 (= lt!242495 (select (arr!16059 a!3235) j!176))))

(declare-fun lt!242493 () Unit!16598)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!33421 (_ BitVec 64) (_ BitVec 32)) Unit!16598)

(assert (=> b!526854 (= lt!242493 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!242495 j!176))))

(assert (=> b!526854 (arrayContainsKey!0 a!3235 lt!242495 #b00000000000000000000000000000000)))

(declare-fun lt!242494 () Unit!16598)

(assert (=> b!526854 (= lt!242494 lt!242493)))

(declare-fun res!323520 () Bool)

(assert (=> b!526854 (= res!323520 (= (seekEntryOrOpen!0 (select (arr!16059 a!3235) j!176) a!3235 mask!3524) (Found!4533 j!176)))))

(assert (=> b!526854 (=> (not res!323520) (not e!307069))))

(declare-fun b!526855 () Bool)

(assert (=> b!526855 (= e!307068 call!31874)))

(declare-fun b!526856 () Bool)

(assert (=> b!526856 (= e!307069 call!31874)))

(assert (= (and d!80667 (not res!323519)) b!526853))

(assert (= (and b!526853 c!61973) b!526854))

(assert (= (and b!526853 (not c!61973)) b!526855))

(assert (= (and b!526854 res!323520) b!526856))

(assert (= (or b!526856 b!526855) bm!31871))

(assert (=> b!526853 m!507477))

(assert (=> b!526853 m!507477))

(assert (=> b!526853 m!507485))

(declare-fun m!507621 () Bool)

(assert (=> bm!31871 m!507621))

(assert (=> b!526854 m!507477))

(declare-fun m!507623 () Bool)

(assert (=> b!526854 m!507623))

(declare-fun m!507625 () Bool)

(assert (=> b!526854 m!507625))

(assert (=> b!526854 m!507477))

(assert (=> b!526854 m!507489))

(assert (=> b!526712 d!80667))

(declare-fun d!80675 () Bool)

(declare-fun lt!242497 () (_ BitVec 32))

(declare-fun lt!242496 () (_ BitVec 32))

(assert (=> d!80675 (= lt!242497 (bvmul (bvxor lt!242496 (bvlshr lt!242496 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!80675 (= lt!242496 ((_ extract 31 0) (bvand (bvxor lt!242402 (bvlshr lt!242402 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!80675 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!323511 (let ((h!11200 ((_ extract 31 0) (bvand (bvxor lt!242402 (bvlshr lt!242402 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!49347 (bvmul (bvxor h!11200 (bvlshr h!11200 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!49347 (bvlshr x!49347 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!323511 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!323511 #b00000000000000000000000000000000))))))

(assert (=> d!80675 (= (toIndex!0 lt!242402 mask!3524) (bvand (bvxor lt!242497 (bvlshr lt!242497 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!526712 d!80675))

(declare-fun d!80677 () Bool)

(assert (=> d!80677 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-fun lt!242500 () Unit!16598)

(declare-fun choose!38 (array!33421 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16598)

(assert (=> d!80677 (= lt!242500 (choose!38 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (=> d!80677 (validMask!0 mask!3524)))

(assert (=> d!80677 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176) lt!242500)))

(declare-fun bs!16522 () Bool)

(assert (= bs!16522 d!80677))

(assert (=> bs!16522 m!507483))

(declare-fun m!507627 () Bool)

(assert (=> bs!16522 m!507627))

(assert (=> bs!16522 m!507491))

(assert (=> b!526712 d!80677))

(declare-fun b!526934 () Bool)

(declare-fun lt!242535 () SeekEntryResult!4533)

(assert (=> b!526934 (and (bvsge (index!20346 lt!242535) #b00000000000000000000000000000000) (bvslt (index!20346 lt!242535) (size!16423 lt!242398)))))

(declare-fun res!323547 () Bool)

(assert (=> b!526934 (= res!323547 (= (select (arr!16059 lt!242398) (index!20346 lt!242535)) lt!242402))))

(declare-fun e!307118 () Bool)

(assert (=> b!526934 (=> res!323547 e!307118)))

(declare-fun e!307119 () Bool)

(assert (=> b!526934 (= e!307119 e!307118)))

(declare-fun b!526935 () Bool)

(declare-fun e!307116 () SeekEntryResult!4533)

(declare-fun e!307117 () SeekEntryResult!4533)

(assert (=> b!526935 (= e!307116 e!307117)))

(declare-fun c!62000 () Bool)

(declare-fun lt!242536 () (_ BitVec 64))

(assert (=> b!526935 (= c!62000 (or (= lt!242536 lt!242402) (= (bvadd lt!242536 lt!242536) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!526936 () Bool)

(assert (=> b!526936 (and (bvsge (index!20346 lt!242535) #b00000000000000000000000000000000) (bvslt (index!20346 lt!242535) (size!16423 lt!242398)))))

(assert (=> b!526936 (= e!307118 (= (select (arr!16059 lt!242398) (index!20346 lt!242535)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!526937 () Bool)

(declare-fun e!307120 () Bool)

(assert (=> b!526937 (= e!307120 (bvsge (x!49341 lt!242535) #b01111111111111111111111111111110))))

(declare-fun b!526938 () Bool)

(assert (=> b!526938 (= e!307117 (Intermediate!4533 false lt!242399 #b00000000000000000000000000000000))))

(declare-fun b!526939 () Bool)

(assert (=> b!526939 (and (bvsge (index!20346 lt!242535) #b00000000000000000000000000000000) (bvslt (index!20346 lt!242535) (size!16423 lt!242398)))))

(declare-fun res!323548 () Bool)

(assert (=> b!526939 (= res!323548 (= (select (arr!16059 lt!242398) (index!20346 lt!242535)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!526939 (=> res!323548 e!307118)))

(declare-fun b!526941 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!526941 (= e!307117 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!242399 #b00000000000000000000000000000000 mask!3524) lt!242402 lt!242398 mask!3524))))

(declare-fun b!526942 () Bool)

(assert (=> b!526942 (= e!307120 e!307119)))

(declare-fun res!323549 () Bool)

(assert (=> b!526942 (= res!323549 (and (is-Intermediate!4533 lt!242535) (not (undefined!5345 lt!242535)) (bvslt (x!49341 lt!242535) #b01111111111111111111111111111110) (bvsge (x!49341 lt!242535) #b00000000000000000000000000000000) (bvsge (x!49341 lt!242535) #b00000000000000000000000000000000)))))

(assert (=> b!526942 (=> (not res!323549) (not e!307119))))

(declare-fun d!80679 () Bool)

(assert (=> d!80679 e!307120))

(declare-fun c!62002 () Bool)

(assert (=> d!80679 (= c!62002 (and (is-Intermediate!4533 lt!242535) (undefined!5345 lt!242535)))))

(assert (=> d!80679 (= lt!242535 e!307116)))

(declare-fun c!62001 () Bool)

(assert (=> d!80679 (= c!62001 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!80679 (= lt!242536 (select (arr!16059 lt!242398) lt!242399))))

(assert (=> d!80679 (validMask!0 mask!3524)))

(assert (=> d!80679 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!242399 lt!242402 lt!242398 mask!3524) lt!242535)))

(declare-fun b!526940 () Bool)

(assert (=> b!526940 (= e!307116 (Intermediate!4533 true lt!242399 #b00000000000000000000000000000000))))

(assert (= (and d!80679 c!62001) b!526940))

(assert (= (and d!80679 (not c!62001)) b!526935))

(assert (= (and b!526935 c!62000) b!526938))

(assert (= (and b!526935 (not c!62000)) b!526941))

(assert (= (and d!80679 c!62002) b!526937))

(assert (= (and d!80679 (not c!62002)) b!526942))

(assert (= (and b!526942 res!323549) b!526934))

(assert (= (and b!526934 (not res!323547)) b!526939))

(assert (= (and b!526939 (not res!323548)) b!526936))

(declare-fun m!507653 () Bool)

(assert (=> b!526936 m!507653))

(assert (=> b!526939 m!507653))

(assert (=> b!526934 m!507653))

(declare-fun m!507655 () Bool)

(assert (=> b!526941 m!507655))

(assert (=> b!526941 m!507655))

(declare-fun m!507657 () Bool)

(assert (=> b!526941 m!507657))

(declare-fun m!507659 () Bool)

(assert (=> d!80679 m!507659))

(assert (=> d!80679 m!507491))

(assert (=> b!526712 d!80679))

(declare-fun b!526943 () Bool)

(declare-fun lt!242537 () SeekEntryResult!4533)

(assert (=> b!526943 (and (bvsge (index!20346 lt!242537) #b00000000000000000000000000000000) (bvslt (index!20346 lt!242537) (size!16423 a!3235)))))

(declare-fun res!323550 () Bool)

(assert (=> b!526943 (= res!323550 (= (select (arr!16059 a!3235) (index!20346 lt!242537)) (select (arr!16059 a!3235) j!176)))))

(declare-fun e!307123 () Bool)

(assert (=> b!526943 (=> res!323550 e!307123)))

(declare-fun e!307124 () Bool)

(assert (=> b!526943 (= e!307124 e!307123)))

(declare-fun b!526944 () Bool)

(declare-fun e!307121 () SeekEntryResult!4533)

(declare-fun e!307122 () SeekEntryResult!4533)

(assert (=> b!526944 (= e!307121 e!307122)))

(declare-fun lt!242538 () (_ BitVec 64))

(declare-fun c!62003 () Bool)

(assert (=> b!526944 (= c!62003 (or (= lt!242538 (select (arr!16059 a!3235) j!176)) (= (bvadd lt!242538 lt!242538) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!526945 () Bool)

(assert (=> b!526945 (and (bvsge (index!20346 lt!242537) #b00000000000000000000000000000000) (bvslt (index!20346 lt!242537) (size!16423 a!3235)))))

(assert (=> b!526945 (= e!307123 (= (select (arr!16059 a!3235) (index!20346 lt!242537)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!526946 () Bool)

(declare-fun e!307125 () Bool)

(assert (=> b!526946 (= e!307125 (bvsge (x!49341 lt!242537) #b01111111111111111111111111111110))))

(declare-fun b!526947 () Bool)

(assert (=> b!526947 (= e!307122 (Intermediate!4533 false lt!242403 #b00000000000000000000000000000000))))

(declare-fun b!526948 () Bool)

(assert (=> b!526948 (and (bvsge (index!20346 lt!242537) #b00000000000000000000000000000000) (bvslt (index!20346 lt!242537) (size!16423 a!3235)))))

(declare-fun res!323551 () Bool)

(assert (=> b!526948 (= res!323551 (= (select (arr!16059 a!3235) (index!20346 lt!242537)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!526948 (=> res!323551 e!307123)))

(declare-fun b!526950 () Bool)

(assert (=> b!526950 (= e!307122 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!242403 #b00000000000000000000000000000000 mask!3524) (select (arr!16059 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!526951 () Bool)

(assert (=> b!526951 (= e!307125 e!307124)))

(declare-fun res!323552 () Bool)

(assert (=> b!526951 (= res!323552 (and (is-Intermediate!4533 lt!242537) (not (undefined!5345 lt!242537)) (bvslt (x!49341 lt!242537) #b01111111111111111111111111111110) (bvsge (x!49341 lt!242537) #b00000000000000000000000000000000) (bvsge (x!49341 lt!242537) #b00000000000000000000000000000000)))))

(assert (=> b!526951 (=> (not res!323552) (not e!307124))))

(declare-fun d!80691 () Bool)

(assert (=> d!80691 e!307125))

(declare-fun c!62005 () Bool)

(assert (=> d!80691 (= c!62005 (and (is-Intermediate!4533 lt!242537) (undefined!5345 lt!242537)))))

(assert (=> d!80691 (= lt!242537 e!307121)))

(declare-fun c!62004 () Bool)

(assert (=> d!80691 (= c!62004 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!80691 (= lt!242538 (select (arr!16059 a!3235) lt!242403))))

(assert (=> d!80691 (validMask!0 mask!3524)))

(assert (=> d!80691 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!242403 (select (arr!16059 a!3235) j!176) a!3235 mask!3524) lt!242537)))

(declare-fun b!526949 () Bool)

(assert (=> b!526949 (= e!307121 (Intermediate!4533 true lt!242403 #b00000000000000000000000000000000))))

(assert (= (and d!80691 c!62004) b!526949))

(assert (= (and d!80691 (not c!62004)) b!526944))

(assert (= (and b!526944 c!62003) b!526947))

(assert (= (and b!526944 (not c!62003)) b!526950))

(assert (= (and d!80691 c!62005) b!526946))

(assert (= (and d!80691 (not c!62005)) b!526951))

(assert (= (and b!526951 res!323552) b!526943))

(assert (= (and b!526943 (not res!323550)) b!526948))

(assert (= (and b!526948 (not res!323551)) b!526945))

(declare-fun m!507661 () Bool)

(assert (=> b!526945 m!507661))

(assert (=> b!526948 m!507661))

(assert (=> b!526943 m!507661))

(declare-fun m!507667 () Bool)

(assert (=> b!526950 m!507667))

(assert (=> b!526950 m!507667))

(assert (=> b!526950 m!507477))

(declare-fun m!507673 () Bool)

(assert (=> b!526950 m!507673))

(declare-fun m!507677 () Bool)

(assert (=> d!80691 m!507677))

(assert (=> d!80691 m!507491))

(assert (=> b!526712 d!80691))

(declare-fun d!80693 () Bool)

(declare-fun e!307153 () Bool)

(assert (=> d!80693 e!307153))

(declare-fun res!323569 () Bool)

(assert (=> d!80693 (=> (not res!323569) (not e!307153))))

(assert (=> d!80693 (= res!323569 (and (or (bvslt i!1204 #b00000000000000000000000000000000) (bvsge i!1204 (size!16423 a!3235)) (and (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16423 a!3235)))) (or (bvslt i!1204 #b00000000000000000000000000000000) (bvsge i!1204 (size!16423 a!3235)) (and (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16423 a!3235)))) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16423 a!3235))))))

(declare-fun lt!242565 () Unit!16598)

(declare-fun choose!47 (array!33421 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16598)

(assert (=> d!80693 (= lt!242565 (choose!47 a!3235 i!1204 k!2280 j!176 lt!242403 #b00000000000000000000000000000000 (index!20346 lt!242405) (x!49341 lt!242405) mask!3524))))

(assert (=> d!80693 (validMask!0 mask!3524)))

(assert (=> d!80693 (= (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!242403 #b00000000000000000000000000000000 (index!20346 lt!242405) (x!49341 lt!242405) mask!3524) lt!242565)))

(declare-fun b!526994 () Bool)

(assert (=> b!526994 (= e!307153 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!242403 (select (store (arr!16059 a!3235) i!1204 k!2280) j!176) (array!33422 (store (arr!16059 a!3235) i!1204 k!2280) (size!16423 a!3235)) mask!3524) (Intermediate!4533 false (index!20346 lt!242405) (x!49341 lt!242405))))))

(assert (= (and d!80693 res!323569) b!526994))

(declare-fun m!507717 () Bool)

(assert (=> d!80693 m!507717))

(assert (=> d!80693 m!507491))

(assert (=> b!526994 m!507471))

(assert (=> b!526994 m!507475))

(assert (=> b!526994 m!507475))

(declare-fun m!507725 () Bool)

(assert (=> b!526994 m!507725))

(assert (=> b!526707 d!80693))

(declare-fun b!526999 () Bool)

(declare-fun lt!242569 () SeekEntryResult!4533)

(assert (=> b!526999 (and (bvsge (index!20346 lt!242569) #b00000000000000000000000000000000) (bvslt (index!20346 lt!242569) (size!16423 lt!242398)))))

(declare-fun res!323572 () Bool)

(assert (=> b!526999 (= res!323572 (= (select (arr!16059 lt!242398) (index!20346 lt!242569)) lt!242402))))

(declare-fun e!307159 () Bool)

(assert (=> b!526999 (=> res!323572 e!307159)))

(declare-fun e!307160 () Bool)

(assert (=> b!526999 (= e!307160 e!307159)))

(declare-fun b!527000 () Bool)

(declare-fun e!307157 () SeekEntryResult!4533)

(declare-fun e!307158 () SeekEntryResult!4533)

(assert (=> b!527000 (= e!307157 e!307158)))

(declare-fun c!62020 () Bool)

(declare-fun lt!242570 () (_ BitVec 64))

(assert (=> b!527000 (= c!62020 (or (= lt!242570 lt!242402) (= (bvadd lt!242570 lt!242570) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!527001 () Bool)

(assert (=> b!527001 (and (bvsge (index!20346 lt!242569) #b00000000000000000000000000000000) (bvslt (index!20346 lt!242569) (size!16423 lt!242398)))))

(assert (=> b!527001 (= e!307159 (= (select (arr!16059 lt!242398) (index!20346 lt!242569)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!527002 () Bool)

(declare-fun e!307161 () Bool)

(assert (=> b!527002 (= e!307161 (bvsge (x!49341 lt!242569) #b01111111111111111111111111111110))))

(declare-fun b!527003 () Bool)

(assert (=> b!527003 (= e!307158 (Intermediate!4533 false lt!242403 #b00000000000000000000000000000000))))

(declare-fun b!527004 () Bool)

(assert (=> b!527004 (and (bvsge (index!20346 lt!242569) #b00000000000000000000000000000000) (bvslt (index!20346 lt!242569) (size!16423 lt!242398)))))

(declare-fun res!323573 () Bool)

(assert (=> b!527004 (= res!323573 (= (select (arr!16059 lt!242398) (index!20346 lt!242569)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!527004 (=> res!323573 e!307159)))

(declare-fun b!527006 () Bool)

(assert (=> b!527006 (= e!307158 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!242403 #b00000000000000000000000000000000 mask!3524) lt!242402 lt!242398 mask!3524))))

(declare-fun b!527007 () Bool)

(assert (=> b!527007 (= e!307161 e!307160)))

(declare-fun res!323574 () Bool)

(assert (=> b!527007 (= res!323574 (and (is-Intermediate!4533 lt!242569) (not (undefined!5345 lt!242569)) (bvslt (x!49341 lt!242569) #b01111111111111111111111111111110) (bvsge (x!49341 lt!242569) #b00000000000000000000000000000000) (bvsge (x!49341 lt!242569) #b00000000000000000000000000000000)))))

(assert (=> b!527007 (=> (not res!323574) (not e!307160))))

(declare-fun d!80711 () Bool)

(assert (=> d!80711 e!307161))

(declare-fun c!62022 () Bool)

(assert (=> d!80711 (= c!62022 (and (is-Intermediate!4533 lt!242569) (undefined!5345 lt!242569)))))

(assert (=> d!80711 (= lt!242569 e!307157)))

(declare-fun c!62021 () Bool)

(assert (=> d!80711 (= c!62021 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!80711 (= lt!242570 (select (arr!16059 lt!242398) lt!242403))))

(assert (=> d!80711 (validMask!0 mask!3524)))

(assert (=> d!80711 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!242403 lt!242402 lt!242398 mask!3524) lt!242569)))

(declare-fun b!527005 () Bool)

(assert (=> b!527005 (= e!307157 (Intermediate!4533 true lt!242403 #b00000000000000000000000000000000))))

(assert (= (and d!80711 c!62021) b!527005))

(assert (= (and d!80711 (not c!62021)) b!527000))

(assert (= (and b!527000 c!62020) b!527003))

(assert (= (and b!527000 (not c!62020)) b!527006))

(assert (= (and d!80711 c!62022) b!527002))

(assert (= (and d!80711 (not c!62022)) b!527007))

(assert (= (and b!527007 res!323574) b!526999))

(assert (= (and b!526999 (not res!323572)) b!527004))

(assert (= (and b!527004 (not res!323573)) b!527001))

(declare-fun m!507729 () Bool)

(assert (=> b!527001 m!507729))

(assert (=> b!527004 m!507729))

(assert (=> b!526999 m!507729))

(assert (=> b!527006 m!507667))

(assert (=> b!527006 m!507667))

(declare-fun m!507731 () Bool)

(assert (=> b!527006 m!507731))

(declare-fun m!507733 () Bool)

(assert (=> d!80711 m!507733))

(assert (=> d!80711 m!507491))

(assert (=> b!526707 d!80711))

(declare-fun d!80713 () Bool)

(assert (=> d!80713 (= (validKeyInArray!0 (select (arr!16059 a!3235) j!176)) (and (not (= (select (arr!16059 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16059 a!3235) j!176) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!526702 d!80713))

(declare-fun d!80715 () Bool)

(assert (=> d!80715 (= (index!20346 lt!242405) i!1204)))

(declare-fun lt!242579 () Unit!16598)

(declare-fun choose!104 (array!33421 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16598)

(assert (=> d!80715 (= lt!242579 (choose!104 a!3235 i!1204 k!2280 j!176 lt!242403 #b00000000000000000000000000000000 (index!20346 lt!242405) (x!49341 lt!242405) mask!3524))))

(assert (=> d!80715 (validMask!0 mask!3524)))

(assert (=> d!80715 (= (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!242403 #b00000000000000000000000000000000 (index!20346 lt!242405) (x!49341 lt!242405) mask!3524) lt!242579)))

(declare-fun bs!16525 () Bool)

(assert (= bs!16525 d!80715))

(declare-fun m!507735 () Bool)

(assert (=> bs!16525 m!507735))

(assert (=> bs!16525 m!507491))

(assert (=> b!526703 d!80715))

(declare-fun d!80717 () Bool)

(declare-fun res!323579 () Bool)

(declare-fun e!307172 () Bool)

(assert (=> d!80717 (=> res!323579 e!307172)))

(assert (=> d!80717 (= res!323579 (= (select (arr!16059 a!3235) #b00000000000000000000000000000000) k!2280))))

(assert (=> d!80717 (= (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000) e!307172)))

(declare-fun b!527024 () Bool)

(declare-fun e!307173 () Bool)

(assert (=> b!527024 (= e!307172 e!307173)))

(declare-fun res!323580 () Bool)

(assert (=> b!527024 (=> (not res!323580) (not e!307173))))

(assert (=> b!527024 (= res!323580 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!16423 a!3235)))))

(declare-fun b!527025 () Bool)

(assert (=> b!527025 (= e!307173 (arrayContainsKey!0 a!3235 k!2280 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!80717 (not res!323579)) b!527024))

(assert (= (and b!527024 res!323580) b!527025))

(declare-fun m!507737 () Bool)

(assert (=> d!80717 m!507737))

(declare-fun m!507739 () Bool)

(assert (=> b!527025 m!507739))

(assert (=> b!526709 d!80717))

(declare-fun b!527026 () Bool)

(declare-fun e!307174 () Bool)

(declare-fun e!307175 () Bool)

(assert (=> b!527026 (= e!307174 e!307175)))

(declare-fun c!62029 () Bool)

(assert (=> b!527026 (= c!62029 (validKeyInArray!0 (select (arr!16059 a!3235) #b00000000000000000000000000000000)))))

(declare-fun bm!31879 () Bool)

(declare-fun call!31882 () Bool)

(assert (=> bm!31879 (= call!31882 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun d!80719 () Bool)

(declare-fun res!323581 () Bool)

(assert (=> d!80719 (=> res!323581 e!307174)))

(assert (=> d!80719 (= res!323581 (bvsge #b00000000000000000000000000000000 (size!16423 a!3235)))))

(assert (=> d!80719 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524) e!307174)))

(declare-fun b!527027 () Bool)

(declare-fun e!307176 () Bool)

(assert (=> b!527027 (= e!307175 e!307176)))

(declare-fun lt!242582 () (_ BitVec 64))

(assert (=> b!527027 (= lt!242582 (select (arr!16059 a!3235) #b00000000000000000000000000000000))))

(declare-fun lt!242580 () Unit!16598)

(assert (=> b!527027 (= lt!242580 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!242582 #b00000000000000000000000000000000))))

(assert (=> b!527027 (arrayContainsKey!0 a!3235 lt!242582 #b00000000000000000000000000000000)))

(declare-fun lt!242581 () Unit!16598)

(assert (=> b!527027 (= lt!242581 lt!242580)))

(declare-fun res!323582 () Bool)

(assert (=> b!527027 (= res!323582 (= (seekEntryOrOpen!0 (select (arr!16059 a!3235) #b00000000000000000000000000000000) a!3235 mask!3524) (Found!4533 #b00000000000000000000000000000000)))))

(assert (=> b!527027 (=> (not res!323582) (not e!307176))))

(declare-fun b!527028 () Bool)

(assert (=> b!527028 (= e!307175 call!31882)))

(declare-fun b!527029 () Bool)

(assert (=> b!527029 (= e!307176 call!31882)))

(assert (= (and d!80719 (not res!323581)) b!527026))

(assert (= (and b!527026 c!62029) b!527027))

(assert (= (and b!527026 (not c!62029)) b!527028))

(assert (= (and b!527027 res!323582) b!527029))

(assert (= (or b!527029 b!527028) bm!31879))

(assert (=> b!527026 m!507737))

(assert (=> b!527026 m!507737))

(declare-fun m!507741 () Bool)

(assert (=> b!527026 m!507741))

(declare-fun m!507743 () Bool)

(assert (=> bm!31879 m!507743))

(assert (=> b!527027 m!507737))

(declare-fun m!507745 () Bool)

(assert (=> b!527027 m!507745))

(declare-fun m!507747 () Bool)

(assert (=> b!527027 m!507747))

(assert (=> b!527027 m!507737))

(declare-fun m!507749 () Bool)

(assert (=> b!527027 m!507749))

(assert (=> b!526704 d!80719))

(declare-fun b!527088 () Bool)

(declare-fun e!307216 () SeekEntryResult!4533)

(declare-fun lt!242608 () SeekEntryResult!4533)

(assert (=> b!527088 (= e!307216 (Found!4533 (index!20346 lt!242608)))))

(declare-fun d!80721 () Bool)

(declare-fun lt!242606 () SeekEntryResult!4533)

(assert (=> d!80721 (and (or (is-Undefined!4533 lt!242606) (not (is-Found!4533 lt!242606)) (and (bvsge (index!20345 lt!242606) #b00000000000000000000000000000000) (bvslt (index!20345 lt!242606) (size!16423 a!3235)))) (or (is-Undefined!4533 lt!242606) (is-Found!4533 lt!242606) (not (is-MissingZero!4533 lt!242606)) (and (bvsge (index!20344 lt!242606) #b00000000000000000000000000000000) (bvslt (index!20344 lt!242606) (size!16423 a!3235)))) (or (is-Undefined!4533 lt!242606) (is-Found!4533 lt!242606) (is-MissingZero!4533 lt!242606) (not (is-MissingVacant!4533 lt!242606)) (and (bvsge (index!20347 lt!242606) #b00000000000000000000000000000000) (bvslt (index!20347 lt!242606) (size!16423 a!3235)))) (or (is-Undefined!4533 lt!242606) (ite (is-Found!4533 lt!242606) (= (select (arr!16059 a!3235) (index!20345 lt!242606)) k!2280) (ite (is-MissingZero!4533 lt!242606) (= (select (arr!16059 a!3235) (index!20344 lt!242606)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!4533 lt!242606) (= (select (arr!16059 a!3235) (index!20347 lt!242606)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!307217 () SeekEntryResult!4533)

(assert (=> d!80721 (= lt!242606 e!307217)))

(declare-fun c!62050 () Bool)

(assert (=> d!80721 (= c!62050 (and (is-Intermediate!4533 lt!242608) (undefined!5345 lt!242608)))))

(assert (=> d!80721 (= lt!242608 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2280 mask!3524) k!2280 a!3235 mask!3524))))

(assert (=> d!80721 (validMask!0 mask!3524)))

(assert (=> d!80721 (= (seekEntryOrOpen!0 k!2280 a!3235 mask!3524) lt!242606)))

(declare-fun b!527089 () Bool)

(declare-fun e!307215 () SeekEntryResult!4533)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33421 (_ BitVec 32)) SeekEntryResult!4533)

(assert (=> b!527089 (= e!307215 (seekKeyOrZeroReturnVacant!0 (x!49341 lt!242608) (index!20346 lt!242608) (index!20346 lt!242608) k!2280 a!3235 mask!3524))))

(declare-fun b!527090 () Bool)

(declare-fun c!62049 () Bool)

(declare-fun lt!242607 () (_ BitVec 64))

(assert (=> b!527090 (= c!62049 (= lt!242607 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!527090 (= e!307216 e!307215)))

(declare-fun b!527091 () Bool)

(assert (=> b!527091 (= e!307217 e!307216)))

(assert (=> b!527091 (= lt!242607 (select (arr!16059 a!3235) (index!20346 lt!242608)))))

(declare-fun c!62051 () Bool)

(assert (=> b!527091 (= c!62051 (= lt!242607 k!2280))))

(declare-fun b!527092 () Bool)

(assert (=> b!527092 (= e!307215 (MissingZero!4533 (index!20346 lt!242608)))))

(declare-fun b!527093 () Bool)

(assert (=> b!527093 (= e!307217 Undefined!4533)))

(assert (= (and d!80721 c!62050) b!527093))

(assert (= (and d!80721 (not c!62050)) b!527091))

(assert (= (and b!527091 c!62051) b!527088))

(assert (= (and b!527091 (not c!62051)) b!527090))

(assert (= (and b!527090 c!62049) b!527092))

(assert (= (and b!527090 (not c!62049)) b!527089))

(declare-fun m!507797 () Bool)

(assert (=> d!80721 m!507797))

(declare-fun m!507799 () Bool)

(assert (=> d!80721 m!507799))

(assert (=> d!80721 m!507797))

(assert (=> d!80721 m!507491))

(declare-fun m!507801 () Bool)

(assert (=> d!80721 m!507801))

(declare-fun m!507803 () Bool)

(assert (=> d!80721 m!507803))

(declare-fun m!507805 () Bool)

(assert (=> d!80721 m!507805))

(declare-fun m!507807 () Bool)

(assert (=> b!527089 m!507807))

(declare-fun m!507809 () Bool)

(assert (=> b!527091 m!507809))

(assert (=> b!526705 d!80721))

(declare-fun b!527094 () Bool)

(declare-fun e!307219 () SeekEntryResult!4533)

(declare-fun lt!242611 () SeekEntryResult!4533)

(assert (=> b!527094 (= e!307219 (Found!4533 (index!20346 lt!242611)))))

(declare-fun d!80741 () Bool)

(declare-fun lt!242609 () SeekEntryResult!4533)

(assert (=> d!80741 (and (or (is-Undefined!4533 lt!242609) (not (is-Found!4533 lt!242609)) (and (bvsge (index!20345 lt!242609) #b00000000000000000000000000000000) (bvslt (index!20345 lt!242609) (size!16423 a!3235)))) (or (is-Undefined!4533 lt!242609) (is-Found!4533 lt!242609) (not (is-MissingZero!4533 lt!242609)) (and (bvsge (index!20344 lt!242609) #b00000000000000000000000000000000) (bvslt (index!20344 lt!242609) (size!16423 a!3235)))) (or (is-Undefined!4533 lt!242609) (is-Found!4533 lt!242609) (is-MissingZero!4533 lt!242609) (not (is-MissingVacant!4533 lt!242609)) (and (bvsge (index!20347 lt!242609) #b00000000000000000000000000000000) (bvslt (index!20347 lt!242609) (size!16423 a!3235)))) (or (is-Undefined!4533 lt!242609) (ite (is-Found!4533 lt!242609) (= (select (arr!16059 a!3235) (index!20345 lt!242609)) (select (arr!16059 a!3235) j!176)) (ite (is-MissingZero!4533 lt!242609) (= (select (arr!16059 a!3235) (index!20344 lt!242609)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!4533 lt!242609) (= (select (arr!16059 a!3235) (index!20347 lt!242609)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!307220 () SeekEntryResult!4533)

(assert (=> d!80741 (= lt!242609 e!307220)))

(declare-fun c!62053 () Bool)

(assert (=> d!80741 (= c!62053 (and (is-Intermediate!4533 lt!242611) (undefined!5345 lt!242611)))))

(assert (=> d!80741 (= lt!242611 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16059 a!3235) j!176) mask!3524) (select (arr!16059 a!3235) j!176) a!3235 mask!3524))))

(assert (=> d!80741 (validMask!0 mask!3524)))

(assert (=> d!80741 (= (seekEntryOrOpen!0 (select (arr!16059 a!3235) j!176) a!3235 mask!3524) lt!242609)))

(declare-fun e!307218 () SeekEntryResult!4533)

(declare-fun b!527095 () Bool)

(assert (=> b!527095 (= e!307218 (seekKeyOrZeroReturnVacant!0 (x!49341 lt!242611) (index!20346 lt!242611) (index!20346 lt!242611) (select (arr!16059 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!527096 () Bool)

(declare-fun c!62052 () Bool)

(declare-fun lt!242610 () (_ BitVec 64))

(assert (=> b!527096 (= c!62052 (= lt!242610 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!527096 (= e!307219 e!307218)))

(declare-fun b!527097 () Bool)

(assert (=> b!527097 (= e!307220 e!307219)))

(assert (=> b!527097 (= lt!242610 (select (arr!16059 a!3235) (index!20346 lt!242611)))))

(declare-fun c!62054 () Bool)

(assert (=> b!527097 (= c!62054 (= lt!242610 (select (arr!16059 a!3235) j!176)))))

(declare-fun b!527098 () Bool)

(assert (=> b!527098 (= e!307218 (MissingZero!4533 (index!20346 lt!242611)))))

(declare-fun b!527099 () Bool)

(assert (=> b!527099 (= e!307220 Undefined!4533)))

(assert (= (and d!80741 c!62053) b!527099))

(assert (= (and d!80741 (not c!62053)) b!527097))

(assert (= (and b!527097 c!62054) b!527094))

(assert (= (and b!527097 (not c!62054)) b!527096))

(assert (= (and b!527096 c!62052) b!527098))

(assert (= (and b!527096 (not c!62052)) b!527095))

(assert (=> d!80741 m!507481))

(assert (=> d!80741 m!507477))

(declare-fun m!507811 () Bool)

(assert (=> d!80741 m!507811))

(assert (=> d!80741 m!507477))

(assert (=> d!80741 m!507481))

(assert (=> d!80741 m!507491))

(declare-fun m!507813 () Bool)

(assert (=> d!80741 m!507813))

(declare-fun m!507815 () Bool)

(assert (=> d!80741 m!507815))

(declare-fun m!507817 () Bool)

(assert (=> d!80741 m!507817))

(assert (=> b!527095 m!507477))

(declare-fun m!507819 () Bool)

(assert (=> b!527095 m!507819))

(declare-fun m!507821 () Bool)

(assert (=> b!527097 m!507821))

(assert (=> b!526700 d!80741))

(declare-fun bm!31886 () Bool)

(declare-fun call!31889 () Bool)

(declare-fun c!62060 () Bool)

(assert (=> bm!31886 (= call!31889 (arrayNoDuplicates!0 a!3235 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!62060 (Cons!10266 (select (arr!16059 a!3235) #b00000000000000000000000000000000) Nil!10267) Nil!10267)))))

(declare-fun b!527119 () Bool)

(declare-fun e!307235 () Bool)

(declare-fun e!307234 () Bool)

(assert (=> b!527119 (= e!307235 e!307234)))

(declare-fun res!323613 () Bool)

(assert (=> b!527119 (=> (not res!323613) (not e!307234))))

(declare-fun e!307236 () Bool)

(assert (=> b!527119 (= res!323613 (not e!307236))))

(declare-fun res!323615 () Bool)

(assert (=> b!527119 (=> (not res!323615) (not e!307236))))

(assert (=> b!527119 (= res!323615 (validKeyInArray!0 (select (arr!16059 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!527120 () Bool)

(declare-fun e!307237 () Bool)

(assert (=> b!527120 (= e!307237 call!31889)))

(declare-fun d!80743 () Bool)

(declare-fun res!323614 () Bool)

(assert (=> d!80743 (=> res!323614 e!307235)))

(assert (=> d!80743 (= res!323614 (bvsge #b00000000000000000000000000000000 (size!16423 a!3235)))))

(assert (=> d!80743 (= (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10267) e!307235)))

(declare-fun b!527121 () Bool)

(assert (=> b!527121 (= e!307234 e!307237)))

(assert (=> b!527121 (= c!62060 (validKeyInArray!0 (select (arr!16059 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!527122 () Bool)

(declare-fun contains!2780 (List!10270 (_ BitVec 64)) Bool)

(assert (=> b!527122 (= e!307236 (contains!2780 Nil!10267 (select (arr!16059 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!527123 () Bool)

(assert (=> b!527123 (= e!307237 call!31889)))

(assert (= (and d!80743 (not res!323614)) b!527119))

(assert (= (and b!527119 res!323615) b!527122))

(assert (= (and b!527119 res!323613) b!527121))

(assert (= (and b!527121 c!62060) b!527123))

(assert (= (and b!527121 (not c!62060)) b!527120))

(assert (= (or b!527123 b!527120) bm!31886))

(assert (=> bm!31886 m!507737))

(declare-fun m!507831 () Bool)

(assert (=> bm!31886 m!507831))

(assert (=> b!527119 m!507737))

(assert (=> b!527119 m!507737))

(assert (=> b!527119 m!507741))

(assert (=> b!527121 m!507737))

(assert (=> b!527121 m!507737))

(assert (=> b!527121 m!507741))

(assert (=> b!527122 m!507737))

(assert (=> b!527122 m!507737))

(declare-fun m!507833 () Bool)

(assert (=> b!527122 m!507833))

(assert (=> b!526706 d!80743))

(declare-fun d!80751 () Bool)

(assert (=> d!80751 (= (validKeyInArray!0 k!2280) (and (not (= k!2280 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2280 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!526701 d!80751))

(push 1)

(assert (not bm!31871))

(assert (not b!527026))

(assert (not d!80677))

(assert (not b!526950))

(assert (not b!526994))

(assert (not d!80691))

(assert (not b!527122))

(assert (not b!527095))

(assert (not d!80693))

(assert (not b!527119))

(assert (not b!527006))

(assert (not b!527025))

(assert (not bm!31886))

(assert (not b!527027))

(assert (not b!526853))

(assert (not d!80741))

(assert (not d!80711))

(assert (not d!80715))

(assert (not b!526854))

(assert (not b!527089))

(assert (not b!526941))

(assert (not d!80679))

(assert (not bm!31879))

(assert (not b!527121))

(assert (not d!80721))

(check-sat)

(pop 1)

(push 1)

(check-sat)

