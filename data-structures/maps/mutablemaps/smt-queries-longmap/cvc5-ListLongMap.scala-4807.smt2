; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!66134 () Bool)

(assert start!66134)

(declare-fun b!761408 () Bool)

(declare-fun e!424506 () Bool)

(declare-fun e!424507 () Bool)

(assert (=> b!761408 (= e!424506 (not e!424507))))

(declare-fun res!515009 () Bool)

(assert (=> b!761408 (=> res!515009 e!424507)))

(declare-fun x!1131 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7740 0))(
  ( (MissingZero!7740 (index!33327 (_ BitVec 32))) (Found!7740 (index!33328 (_ BitVec 32))) (Intermediate!7740 (undefined!8552 Bool) (index!33329 (_ BitVec 32)) (x!64264 (_ BitVec 32))) (Undefined!7740) (MissingVacant!7740 (index!33330 (_ BitVec 32))) )
))
(declare-fun lt!339224 () SeekEntryResult!7740)

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!761408 (= res!515009 (or (not (is-Intermediate!7740 lt!339224)) (bvslt x!1131 (x!64264 lt!339224)) (not (= x!1131 (x!64264 lt!339224))) (not (= index!1321 (index!33329 lt!339224)))))))

(declare-fun e!424504 () Bool)

(assert (=> b!761408 e!424504))

(declare-fun res!515007 () Bool)

(assert (=> b!761408 (=> (not res!515007) (not e!424504))))

(declare-datatypes ((array!42055 0))(
  ( (array!42056 (arr!20133 (Array (_ BitVec 32) (_ BitVec 64))) (size!20554 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42055)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42055 (_ BitVec 32)) Bool)

(assert (=> b!761408 (= res!515007 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26320 0))(
  ( (Unit!26321) )
))
(declare-fun lt!339226 () Unit!26320)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42055 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26320)

(assert (=> b!761408 (= lt!339226 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!761409 () Bool)

(declare-fun e!424501 () Bool)

(assert (=> b!761409 (= e!424504 e!424501)))

(declare-fun res!514998 () Bool)

(assert (=> b!761409 (=> (not res!514998) (not e!424501))))

(declare-fun lt!339225 () SeekEntryResult!7740)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42055 (_ BitVec 32)) SeekEntryResult!7740)

(assert (=> b!761409 (= res!514998 (= (seekEntryOrOpen!0 (select (arr!20133 a!3186) j!159) a!3186 mask!3328) lt!339225))))

(assert (=> b!761409 (= lt!339225 (Found!7740 j!159))))

(declare-fun b!761410 () Bool)

(declare-fun res!515010 () Bool)

(declare-fun e!424503 () Bool)

(assert (=> b!761410 (=> (not res!515010) (not e!424503))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!761410 (= res!515010 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20554 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20554 a!3186))))))

(declare-fun b!761411 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42055 (_ BitVec 32)) SeekEntryResult!7740)

(assert (=> b!761411 (= e!424501 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20133 a!3186) j!159) a!3186 mask!3328) lt!339225))))

(declare-fun b!761412 () Bool)

(declare-fun res!515005 () Bool)

(assert (=> b!761412 (=> res!515005 e!424507)))

(assert (=> b!761412 (= res!515005 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20133 a!3186) j!159) a!3186 mask!3328) (Found!7740 j!159))))))

(declare-fun b!761414 () Bool)

(declare-fun res!515006 () Bool)

(declare-fun e!424505 () Bool)

(assert (=> b!761414 (=> (not res!515006) (not e!424505))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!761414 (= res!515006 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20133 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!761415 () Bool)

(declare-fun res!515004 () Bool)

(declare-fun e!424508 () Bool)

(assert (=> b!761415 (=> (not res!515004) (not e!424508))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!761415 (= res!515004 (validKeyInArray!0 k!2102))))

(declare-fun b!761416 () Bool)

(declare-fun res!514994 () Bool)

(assert (=> b!761416 (=> (not res!514994) (not e!424503))))

(assert (=> b!761416 (= res!514994 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!761417 () Bool)

(declare-fun res!514995 () Bool)

(assert (=> b!761417 (=> (not res!514995) (not e!424508))))

(declare-fun arrayContainsKey!0 (array!42055 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!761417 (= res!514995 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!761418 () Bool)

(assert (=> b!761418 (= e!424505 e!424506)))

(declare-fun res!515002 () Bool)

(assert (=> b!761418 (=> (not res!515002) (not e!424506))))

(declare-fun lt!339228 () SeekEntryResult!7740)

(assert (=> b!761418 (= res!515002 (= lt!339228 lt!339224))))

(declare-fun lt!339227 () (_ BitVec 64))

(declare-fun lt!339222 () array!42055)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42055 (_ BitVec 32)) SeekEntryResult!7740)

(assert (=> b!761418 (= lt!339224 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!339227 lt!339222 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!761418 (= lt!339228 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!339227 mask!3328) lt!339227 lt!339222 mask!3328))))

(assert (=> b!761418 (= lt!339227 (select (store (arr!20133 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!761418 (= lt!339222 (array!42056 (store (arr!20133 a!3186) i!1173 k!2102) (size!20554 a!3186)))))

(declare-fun b!761419 () Bool)

(assert (=> b!761419 (= e!424508 e!424503)))

(declare-fun res!515008 () Bool)

(assert (=> b!761419 (=> (not res!515008) (not e!424503))))

(declare-fun lt!339229 () SeekEntryResult!7740)

(assert (=> b!761419 (= res!515008 (or (= lt!339229 (MissingZero!7740 i!1173)) (= lt!339229 (MissingVacant!7740 i!1173))))))

(assert (=> b!761419 (= lt!339229 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!761420 () Bool)

(declare-fun res!514996 () Bool)

(assert (=> b!761420 (=> (not res!514996) (not e!424508))))

(assert (=> b!761420 (= res!514996 (and (= (size!20554 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20554 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20554 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!761421 () Bool)

(declare-fun res!515000 () Bool)

(assert (=> b!761421 (=> (not res!515000) (not e!424508))))

(assert (=> b!761421 (= res!515000 (validKeyInArray!0 (select (arr!20133 a!3186) j!159)))))

(declare-fun res!514999 () Bool)

(assert (=> start!66134 (=> (not res!514999) (not e!424508))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66134 (= res!514999 (validMask!0 mask!3328))))

(assert (=> start!66134 e!424508))

(assert (=> start!66134 true))

(declare-fun array_inv!15907 (array!42055) Bool)

(assert (=> start!66134 (array_inv!15907 a!3186)))

(declare-fun b!761413 () Bool)

(declare-fun res!514997 () Bool)

(assert (=> b!761413 (=> (not res!514997) (not e!424503))))

(declare-datatypes ((List!14188 0))(
  ( (Nil!14185) (Cons!14184 (h!15265 (_ BitVec 64)) (t!20511 List!14188)) )
))
(declare-fun arrayNoDuplicates!0 (array!42055 (_ BitVec 32) List!14188) Bool)

(assert (=> b!761413 (= res!514997 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14185))))

(declare-fun b!761422 () Bool)

(assert (=> b!761422 (= e!424507 (or (not (= (select (store (arr!20133 a!3186) i!1173 k!2102) index!1321) lt!339227)) (not (undefined!8552 lt!339224))))))

(declare-fun e!424500 () Bool)

(declare-fun lt!339223 () SeekEntryResult!7740)

(declare-fun b!761423 () Bool)

(assert (=> b!761423 (= e!424500 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20133 a!3186) j!159) a!3186 mask!3328) lt!339223))))

(declare-fun b!761424 () Bool)

(assert (=> b!761424 (= e!424500 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20133 a!3186) j!159) a!3186 mask!3328) (Found!7740 j!159)))))

(declare-fun b!761425 () Bool)

(assert (=> b!761425 (= e!424503 e!424505)))

(declare-fun res!515003 () Bool)

(assert (=> b!761425 (=> (not res!515003) (not e!424505))))

(assert (=> b!761425 (= res!515003 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20133 a!3186) j!159) mask!3328) (select (arr!20133 a!3186) j!159) a!3186 mask!3328) lt!339223))))

(assert (=> b!761425 (= lt!339223 (Intermediate!7740 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!761426 () Bool)

(declare-fun res!515001 () Bool)

(assert (=> b!761426 (=> (not res!515001) (not e!424505))))

(assert (=> b!761426 (= res!515001 e!424500)))

(declare-fun c!83592 () Bool)

(assert (=> b!761426 (= c!83592 (bvsle x!1131 resIntermediateX!5))))

(assert (= (and start!66134 res!514999) b!761420))

(assert (= (and b!761420 res!514996) b!761421))

(assert (= (and b!761421 res!515000) b!761415))

(assert (= (and b!761415 res!515004) b!761417))

(assert (= (and b!761417 res!514995) b!761419))

(assert (= (and b!761419 res!515008) b!761416))

(assert (= (and b!761416 res!514994) b!761413))

(assert (= (and b!761413 res!514997) b!761410))

(assert (= (and b!761410 res!515010) b!761425))

(assert (= (and b!761425 res!515003) b!761414))

(assert (= (and b!761414 res!515006) b!761426))

(assert (= (and b!761426 c!83592) b!761423))

(assert (= (and b!761426 (not c!83592)) b!761424))

(assert (= (and b!761426 res!515001) b!761418))

(assert (= (and b!761418 res!515002) b!761408))

(assert (= (and b!761408 res!515007) b!761409))

(assert (= (and b!761409 res!514998) b!761411))

(assert (= (and b!761408 (not res!515009)) b!761412))

(assert (= (and b!761412 (not res!515005)) b!761422))

(declare-fun m!708437 () Bool)

(assert (=> b!761424 m!708437))

(assert (=> b!761424 m!708437))

(declare-fun m!708439 () Bool)

(assert (=> b!761424 m!708439))

(declare-fun m!708441 () Bool)

(assert (=> start!66134 m!708441))

(declare-fun m!708443 () Bool)

(assert (=> start!66134 m!708443))

(declare-fun m!708445 () Bool)

(assert (=> b!761408 m!708445))

(declare-fun m!708447 () Bool)

(assert (=> b!761408 m!708447))

(assert (=> b!761411 m!708437))

(assert (=> b!761411 m!708437))

(declare-fun m!708449 () Bool)

(assert (=> b!761411 m!708449))

(declare-fun m!708451 () Bool)

(assert (=> b!761422 m!708451))

(declare-fun m!708453 () Bool)

(assert (=> b!761422 m!708453))

(declare-fun m!708455 () Bool)

(assert (=> b!761414 m!708455))

(declare-fun m!708457 () Bool)

(assert (=> b!761416 m!708457))

(assert (=> b!761409 m!708437))

(assert (=> b!761409 m!708437))

(declare-fun m!708459 () Bool)

(assert (=> b!761409 m!708459))

(declare-fun m!708461 () Bool)

(assert (=> b!761417 m!708461))

(assert (=> b!761423 m!708437))

(assert (=> b!761423 m!708437))

(declare-fun m!708463 () Bool)

(assert (=> b!761423 m!708463))

(declare-fun m!708465 () Bool)

(assert (=> b!761415 m!708465))

(assert (=> b!761412 m!708437))

(assert (=> b!761412 m!708437))

(assert (=> b!761412 m!708439))

(declare-fun m!708467 () Bool)

(assert (=> b!761419 m!708467))

(assert (=> b!761421 m!708437))

(assert (=> b!761421 m!708437))

(declare-fun m!708469 () Bool)

(assert (=> b!761421 m!708469))

(declare-fun m!708471 () Bool)

(assert (=> b!761413 m!708471))

(assert (=> b!761425 m!708437))

(assert (=> b!761425 m!708437))

(declare-fun m!708473 () Bool)

(assert (=> b!761425 m!708473))

(assert (=> b!761425 m!708473))

(assert (=> b!761425 m!708437))

(declare-fun m!708475 () Bool)

(assert (=> b!761425 m!708475))

(declare-fun m!708477 () Bool)

(assert (=> b!761418 m!708477))

(assert (=> b!761418 m!708451))

(assert (=> b!761418 m!708477))

(declare-fun m!708479 () Bool)

(assert (=> b!761418 m!708479))

(declare-fun m!708481 () Bool)

(assert (=> b!761418 m!708481))

(declare-fun m!708483 () Bool)

(assert (=> b!761418 m!708483))

(push 1)

(assert (not b!761408))

(assert (not b!761415))

(assert (not b!761409))

(assert (not b!761421))

(assert (not b!761419))

(assert (not b!761425))

(assert (not b!761412))

(assert (not start!66134))

(assert (not b!761413))

(assert (not b!761411))

(assert (not b!761416))

(assert (not b!761424))

(assert (not b!761417))

(assert (not b!761418))

(assert (not b!761423))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!100743 () Bool)

(assert (=> d!100743 (= (validKeyInArray!0 (select (arr!20133 a!3186) j!159)) (and (not (= (select (arr!20133 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!20133 a!3186) j!159) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!761421 d!100743))

(declare-fun b!761595 () Bool)

(declare-fun c!83625 () Bool)

(declare-fun lt!339307 () (_ BitVec 64))

(assert (=> b!761595 (= c!83625 (= lt!339307 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!424594 () SeekEntryResult!7740)

(declare-fun e!424593 () SeekEntryResult!7740)

(assert (=> b!761595 (= e!424594 e!424593)))

(declare-fun b!761596 () Bool)

(assert (=> b!761596 (= e!424593 (MissingVacant!7740 resIntermediateIndex!5))))

(declare-fun lt!339308 () SeekEntryResult!7740)

(declare-fun d!100747 () Bool)

(assert (=> d!100747 (and (or (is-Undefined!7740 lt!339308) (not (is-Found!7740 lt!339308)) (and (bvsge (index!33328 lt!339308) #b00000000000000000000000000000000) (bvslt (index!33328 lt!339308) (size!20554 a!3186)))) (or (is-Undefined!7740 lt!339308) (is-Found!7740 lt!339308) (not (is-MissingVacant!7740 lt!339308)) (not (= (index!33330 lt!339308) resIntermediateIndex!5)) (and (bvsge (index!33330 lt!339308) #b00000000000000000000000000000000) (bvslt (index!33330 lt!339308) (size!20554 a!3186)))) (or (is-Undefined!7740 lt!339308) (ite (is-Found!7740 lt!339308) (= (select (arr!20133 a!3186) (index!33328 lt!339308)) (select (arr!20133 a!3186) j!159)) (and (is-MissingVacant!7740 lt!339308) (= (index!33330 lt!339308) resIntermediateIndex!5) (= (select (arr!20133 a!3186) (index!33330 lt!339308)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!424595 () SeekEntryResult!7740)

(assert (=> d!100747 (= lt!339308 e!424595)))

(declare-fun c!83623 () Bool)

(assert (=> d!100747 (= c!83623 (bvsge resIntermediateX!5 #b01111111111111111111111111111110))))

(assert (=> d!100747 (= lt!339307 (select (arr!20133 a!3186) resIntermediateIndex!5))))

(assert (=> d!100747 (validMask!0 mask!3328)))

(assert (=> d!100747 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20133 a!3186) j!159) a!3186 mask!3328) lt!339308)))

(declare-fun b!761597 () Bool)

(assert (=> b!761597 (= e!424595 e!424594)))

(declare-fun c!83624 () Bool)

(assert (=> b!761597 (= c!83624 (= lt!339307 (select (arr!20133 a!3186) j!159)))))

(declare-fun b!761598 () Bool)

(assert (=> b!761598 (= e!424594 (Found!7740 resIntermediateIndex!5))))

(declare-fun b!761599 () Bool)

(assert (=> b!761599 (= e!424595 Undefined!7740)))

(declare-fun b!761600 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!761600 (= e!424593 (seekKeyOrZeroReturnVacant!0 (bvadd resIntermediateX!5 #b00000000000000000000000000000001) (nextIndex!0 resIntermediateIndex!5 resIntermediateX!5 mask!3328) resIntermediateIndex!5 (select (arr!20133 a!3186) j!159) a!3186 mask!3328))))

(assert (= (and d!100747 c!83623) b!761599))

(assert (= (and d!100747 (not c!83623)) b!761597))

(assert (= (and b!761597 c!83624) b!761598))

(assert (= (and b!761597 (not c!83624)) b!761595))

(assert (= (and b!761595 c!83625) b!761596))

(assert (= (and b!761595 (not c!83625)) b!761600))

(declare-fun m!708600 () Bool)

(assert (=> d!100747 m!708600))

(declare-fun m!708603 () Bool)

(assert (=> d!100747 m!708603))

(assert (=> d!100747 m!708455))

(assert (=> d!100747 m!708441))

(declare-fun m!708607 () Bool)

(assert (=> b!761600 m!708607))

(assert (=> b!761600 m!708607))

(assert (=> b!761600 m!708437))

(declare-fun m!708615 () Bool)

(assert (=> b!761600 m!708615))

(assert (=> b!761411 d!100747))

(declare-fun b!761607 () Bool)

(declare-fun c!83631 () Bool)

(declare-fun lt!339311 () (_ BitVec 64))

(assert (=> b!761607 (= c!83631 (= lt!339311 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!424600 () SeekEntryResult!7740)

(declare-fun e!424599 () SeekEntryResult!7740)

(assert (=> b!761607 (= e!424600 e!424599)))

(declare-fun b!761608 () Bool)

(assert (=> b!761608 (= e!424599 (MissingVacant!7740 resIntermediateIndex!5))))

(declare-fun lt!339312 () SeekEntryResult!7740)

(declare-fun d!100751 () Bool)

(assert (=> d!100751 (and (or (is-Undefined!7740 lt!339312) (not (is-Found!7740 lt!339312)) (and (bvsge (index!33328 lt!339312) #b00000000000000000000000000000000) (bvslt (index!33328 lt!339312) (size!20554 a!3186)))) (or (is-Undefined!7740 lt!339312) (is-Found!7740 lt!339312) (not (is-MissingVacant!7740 lt!339312)) (not (= (index!33330 lt!339312) resIntermediateIndex!5)) (and (bvsge (index!33330 lt!339312) #b00000000000000000000000000000000) (bvslt (index!33330 lt!339312) (size!20554 a!3186)))) (or (is-Undefined!7740 lt!339312) (ite (is-Found!7740 lt!339312) (= (select (arr!20133 a!3186) (index!33328 lt!339312)) (select (arr!20133 a!3186) j!159)) (and (is-MissingVacant!7740 lt!339312) (= (index!33330 lt!339312) resIntermediateIndex!5) (= (select (arr!20133 a!3186) (index!33330 lt!339312)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!424601 () SeekEntryResult!7740)

(assert (=> d!100751 (= lt!339312 e!424601)))

(declare-fun c!83629 () Bool)

(assert (=> d!100751 (= c!83629 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!100751 (= lt!339311 (select (arr!20133 a!3186) index!1321))))

(assert (=> d!100751 (validMask!0 mask!3328)))

(assert (=> d!100751 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20133 a!3186) j!159) a!3186 mask!3328) lt!339312)))

(declare-fun b!761609 () Bool)

(assert (=> b!761609 (= e!424601 e!424600)))

(declare-fun c!83630 () Bool)

(assert (=> b!761609 (= c!83630 (= lt!339311 (select (arr!20133 a!3186) j!159)))))

(declare-fun b!761610 () Bool)

(assert (=> b!761610 (= e!424600 (Found!7740 index!1321))))

(declare-fun b!761611 () Bool)

(assert (=> b!761611 (= e!424601 Undefined!7740)))

(declare-fun b!761612 () Bool)

(assert (=> b!761612 (= e!424599 (seekKeyOrZeroReturnVacant!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) resIntermediateIndex!5 (select (arr!20133 a!3186) j!159) a!3186 mask!3328))))

(assert (= (and d!100751 c!83629) b!761611))

(assert (= (and d!100751 (not c!83629)) b!761609))

(assert (= (and b!761609 c!83630) b!761610))

(assert (= (and b!761609 (not c!83630)) b!761607))

(assert (= (and b!761607 c!83631) b!761608))

(assert (= (and b!761607 (not c!83631)) b!761612))

(declare-fun m!708617 () Bool)

(assert (=> d!100751 m!708617))

(declare-fun m!708619 () Bool)

(assert (=> d!100751 m!708619))

(declare-fun m!708621 () Bool)

(assert (=> d!100751 m!708621))

(assert (=> d!100751 m!708441))

(declare-fun m!708623 () Bool)

(assert (=> b!761612 m!708623))

(assert (=> b!761612 m!708623))

(assert (=> b!761612 m!708437))

(declare-fun m!708625 () Bool)

(assert (=> b!761612 m!708625))

(assert (=> b!761412 d!100751))

(declare-fun b!761683 () Bool)

(declare-fun e!424651 () Bool)

(declare-fun lt!339331 () SeekEntryResult!7740)

(assert (=> b!761683 (= e!424651 (bvsge (x!64264 lt!339331) #b01111111111111111111111111111110))))

(declare-fun b!761684 () Bool)

(declare-fun e!424650 () SeekEntryResult!7740)

(assert (=> b!761684 (= e!424650 (Intermediate!7740 true index!1321 x!1131))))

(declare-fun b!761685 () Bool)

(declare-fun e!424649 () SeekEntryResult!7740)

(assert (=> b!761685 (= e!424649 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) (select (arr!20133 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!761686 () Bool)

(assert (=> b!761686 (and (bvsge (index!33329 lt!339331) #b00000000000000000000000000000000) (bvslt (index!33329 lt!339331) (size!20554 a!3186)))))

(declare-fun e!424648 () Bool)

(assert (=> b!761686 (= e!424648 (= (select (arr!20133 a!3186) (index!33329 lt!339331)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!761687 () Bool)

(assert (=> b!761687 (= e!424650 e!424649)))

(declare-fun lt!339330 () (_ BitVec 64))

(declare-fun c!83653 () Bool)

(assert (=> b!761687 (= c!83653 (or (= lt!339330 (select (arr!20133 a!3186) j!159)) (= (bvadd lt!339330 lt!339330) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!100755 () Bool)

(assert (=> d!100755 e!424651))

(declare-fun c!83651 () Bool)

(assert (=> d!100755 (= c!83651 (and (is-Intermediate!7740 lt!339331) (undefined!8552 lt!339331)))))

(assert (=> d!100755 (= lt!339331 e!424650)))

(declare-fun c!83652 () Bool)

(assert (=> d!100755 (= c!83652 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!100755 (= lt!339330 (select (arr!20133 a!3186) index!1321))))

(assert (=> d!100755 (validMask!0 mask!3328)))

(assert (=> d!100755 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20133 a!3186) j!159) a!3186 mask!3328) lt!339331)))

(declare-fun b!761688 () Bool)

(assert (=> b!761688 (and (bvsge (index!33329 lt!339331) #b00000000000000000000000000000000) (bvslt (index!33329 lt!339331) (size!20554 a!3186)))))

(declare-fun res!515152 () Bool)

(assert (=> b!761688 (= res!515152 (= (select (arr!20133 a!3186) (index!33329 lt!339331)) (select (arr!20133 a!3186) j!159)))))

(assert (=> b!761688 (=> res!515152 e!424648)))

(declare-fun e!424652 () Bool)

(assert (=> b!761688 (= e!424652 e!424648)))

(declare-fun b!761689 () Bool)

(assert (=> b!761689 (= e!424649 (Intermediate!7740 false index!1321 x!1131))))

(declare-fun b!761690 () Bool)

(assert (=> b!761690 (and (bvsge (index!33329 lt!339331) #b00000000000000000000000000000000) (bvslt (index!33329 lt!339331) (size!20554 a!3186)))))

(declare-fun res!515154 () Bool)

(assert (=> b!761690 (= res!515154 (= (select (arr!20133 a!3186) (index!33329 lt!339331)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!761690 (=> res!515154 e!424648)))

(declare-fun b!761691 () Bool)

(assert (=> b!761691 (= e!424651 e!424652)))

(declare-fun res!515153 () Bool)

(assert (=> b!761691 (= res!515153 (and (is-Intermediate!7740 lt!339331) (not (undefined!8552 lt!339331)) (bvslt (x!64264 lt!339331) #b01111111111111111111111111111110) (bvsge (x!64264 lt!339331) #b00000000000000000000000000000000) (bvsge (x!64264 lt!339331) x!1131)))))

(assert (=> b!761691 (=> (not res!515153) (not e!424652))))

(assert (= (and d!100755 c!83652) b!761684))

(assert (= (and d!100755 (not c!83652)) b!761687))

(assert (= (and b!761687 c!83653) b!761689))

(assert (= (and b!761687 (not c!83653)) b!761685))

(assert (= (and d!100755 c!83651) b!761683))

(assert (= (and d!100755 (not c!83651)) b!761691))

(assert (= (and b!761691 res!515153) b!761688))

(assert (= (and b!761688 (not res!515152)) b!761690))

(assert (= (and b!761690 (not res!515154)) b!761686))

(declare-fun m!708653 () Bool)

(assert (=> b!761690 m!708653))

(assert (=> b!761686 m!708653))

(assert (=> b!761688 m!708653))

(assert (=> d!100755 m!708621))

(assert (=> d!100755 m!708441))

(assert (=> b!761685 m!708623))

(assert (=> b!761685 m!708623))

(assert (=> b!761685 m!708437))

(declare-fun m!708655 () Bool)

(assert (=> b!761685 m!708655))

(assert (=> b!761423 d!100755))

(declare-fun d!100767 () Bool)

(assert (=> d!100767 (= (validMask!0 mask!3328) (and (or (= mask!3328 #b00000000000000000000000000000111) (= mask!3328 #b00000000000000000000000000001111) (= mask!3328 #b00000000000000000000000000011111) (= mask!3328 #b00000000000000000000000000111111) (= mask!3328 #b00000000000000000000000001111111) (= mask!3328 #b00000000000000000000000011111111) (= mask!3328 #b00000000000000000000000111111111) (= mask!3328 #b00000000000000000000001111111111) (= mask!3328 #b00000000000000000000011111111111) (= mask!3328 #b00000000000000000000111111111111) (= mask!3328 #b00000000000000000001111111111111) (= mask!3328 #b00000000000000000011111111111111) (= mask!3328 #b00000000000000000111111111111111) (= mask!3328 #b00000000000000001111111111111111) (= mask!3328 #b00000000000000011111111111111111) (= mask!3328 #b00000000000000111111111111111111) (= mask!3328 #b00000000000001111111111111111111) (= mask!3328 #b00000000000011111111111111111111) (= mask!3328 #b00000000000111111111111111111111) (= mask!3328 #b00000000001111111111111111111111) (= mask!3328 #b00000000011111111111111111111111) (= mask!3328 #b00000000111111111111111111111111) (= mask!3328 #b00000001111111111111111111111111) (= mask!3328 #b00000011111111111111111111111111) (= mask!3328 #b00000111111111111111111111111111) (= mask!3328 #b00001111111111111111111111111111) (= mask!3328 #b00011111111111111111111111111111) (= mask!3328 #b00111111111111111111111111111111)) (bvsle mask!3328 #b00111111111111111111111111111111)))))

(assert (=> start!66134 d!100767))

(declare-fun d!100771 () Bool)

(assert (=> d!100771 (= (array_inv!15907 a!3186) (bvsge (size!20554 a!3186) #b00000000000000000000000000000000))))

(assert (=> start!66134 d!100771))

(assert (=> b!761424 d!100751))

(declare-fun b!761759 () Bool)

(declare-fun e!424695 () Bool)

(declare-fun e!424698 () Bool)

(assert (=> b!761759 (= e!424695 e!424698)))

(declare-fun res!515185 () Bool)

(assert (=> b!761759 (=> (not res!515185) (not e!424698))))

(declare-fun e!424697 () Bool)

(assert (=> b!761759 (= res!515185 (not e!424697))))

(declare-fun res!515184 () Bool)

(assert (=> b!761759 (=> (not res!515184) (not e!424697))))

(assert (=> b!761759 (= res!515184 (validKeyInArray!0 (select (arr!20133 a!3186) #b00000000000000000000000000000000)))))

(declare-fun d!100775 () Bool)

(declare-fun res!515183 () Bool)

(assert (=> d!100775 (=> res!515183 e!424695)))

(assert (=> d!100775 (= res!515183 (bvsge #b00000000000000000000000000000000 (size!20554 a!3186)))))

(assert (=> d!100775 (= (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14185) e!424695)))

(declare-fun bm!34990 () Bool)

(declare-fun call!34993 () Bool)

(declare-fun c!83674 () Bool)

(assert (=> bm!34990 (= call!34993 (arrayNoDuplicates!0 a!3186 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!83674 (Cons!14184 (select (arr!20133 a!3186) #b00000000000000000000000000000000) Nil!14185) Nil!14185)))))

(declare-fun b!761760 () Bool)

(declare-fun e!424696 () Bool)

(assert (=> b!761760 (= e!424696 call!34993)))

(declare-fun b!761761 () Bool)

(assert (=> b!761761 (= e!424698 e!424696)))

(assert (=> b!761761 (= c!83674 (validKeyInArray!0 (select (arr!20133 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!761762 () Bool)

(assert (=> b!761762 (= e!424696 call!34993)))

(declare-fun b!761763 () Bool)

(declare-fun contains!4073 (List!14188 (_ BitVec 64)) Bool)

(assert (=> b!761763 (= e!424697 (contains!4073 Nil!14185 (select (arr!20133 a!3186) #b00000000000000000000000000000000)))))

(assert (= (and d!100775 (not res!515183)) b!761759))

(assert (= (and b!761759 res!515184) b!761763))

(assert (= (and b!761759 res!515185) b!761761))

(assert (= (and b!761761 c!83674) b!761762))

(assert (= (and b!761761 (not c!83674)) b!761760))

(assert (= (or b!761762 b!761760) bm!34990))

(declare-fun m!708685 () Bool)

(assert (=> b!761759 m!708685))

(assert (=> b!761759 m!708685))

(declare-fun m!708687 () Bool)

(assert (=> b!761759 m!708687))

(assert (=> bm!34990 m!708685))

(declare-fun m!708689 () Bool)

(assert (=> bm!34990 m!708689))

(assert (=> b!761761 m!708685))

(assert (=> b!761761 m!708685))

(assert (=> b!761761 m!708687))

(assert (=> b!761763 m!708685))

(assert (=> b!761763 m!708685))

(declare-fun m!708691 () Bool)

(assert (=> b!761763 m!708691))

(assert (=> b!761413 d!100775))

(declare-fun b!761764 () Bool)

(declare-fun e!424702 () Bool)

(declare-fun lt!339363 () SeekEntryResult!7740)

(assert (=> b!761764 (= e!424702 (bvsge (x!64264 lt!339363) #b01111111111111111111111111111110))))

(declare-fun b!761765 () Bool)

(declare-fun e!424701 () SeekEntryResult!7740)

(assert (=> b!761765 (= e!424701 (Intermediate!7740 true (toIndex!0 (select (arr!20133 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun e!424700 () SeekEntryResult!7740)

(declare-fun b!761766 () Bool)

(assert (=> b!761766 (= e!424700 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!20133 a!3186) j!159) mask!3328) #b00000000000000000000000000000000 mask!3328) (select (arr!20133 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!761767 () Bool)

(assert (=> b!761767 (and (bvsge (index!33329 lt!339363) #b00000000000000000000000000000000) (bvslt (index!33329 lt!339363) (size!20554 a!3186)))))

(declare-fun e!424699 () Bool)

(assert (=> b!761767 (= e!424699 (= (select (arr!20133 a!3186) (index!33329 lt!339363)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!761768 () Bool)

(assert (=> b!761768 (= e!424701 e!424700)))

(declare-fun c!83677 () Bool)

(declare-fun lt!339362 () (_ BitVec 64))

(assert (=> b!761768 (= c!83677 (or (= lt!339362 (select (arr!20133 a!3186) j!159)) (= (bvadd lt!339362 lt!339362) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!100785 () Bool)

(assert (=> d!100785 e!424702))

(declare-fun c!83675 () Bool)

(assert (=> d!100785 (= c!83675 (and (is-Intermediate!7740 lt!339363) (undefined!8552 lt!339363)))))

(assert (=> d!100785 (= lt!339363 e!424701)))

(declare-fun c!83676 () Bool)

(assert (=> d!100785 (= c!83676 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!100785 (= lt!339362 (select (arr!20133 a!3186) (toIndex!0 (select (arr!20133 a!3186) j!159) mask!3328)))))

(assert (=> d!100785 (validMask!0 mask!3328)))

(assert (=> d!100785 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20133 a!3186) j!159) mask!3328) (select (arr!20133 a!3186) j!159) a!3186 mask!3328) lt!339363)))

(declare-fun b!761769 () Bool)

(assert (=> b!761769 (and (bvsge (index!33329 lt!339363) #b00000000000000000000000000000000) (bvslt (index!33329 lt!339363) (size!20554 a!3186)))))

(declare-fun res!515186 () Bool)

(assert (=> b!761769 (= res!515186 (= (select (arr!20133 a!3186) (index!33329 lt!339363)) (select (arr!20133 a!3186) j!159)))))

(assert (=> b!761769 (=> res!515186 e!424699)))

(declare-fun e!424703 () Bool)

(assert (=> b!761769 (= e!424703 e!424699)))

(declare-fun b!761770 () Bool)

(assert (=> b!761770 (= e!424700 (Intermediate!7740 false (toIndex!0 (select (arr!20133 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!761771 () Bool)

(assert (=> b!761771 (and (bvsge (index!33329 lt!339363) #b00000000000000000000000000000000) (bvslt (index!33329 lt!339363) (size!20554 a!3186)))))

(declare-fun res!515188 () Bool)

(assert (=> b!761771 (= res!515188 (= (select (arr!20133 a!3186) (index!33329 lt!339363)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!761771 (=> res!515188 e!424699)))

(declare-fun b!761772 () Bool)

(assert (=> b!761772 (= e!424702 e!424703)))

(declare-fun res!515187 () Bool)

(assert (=> b!761772 (= res!515187 (and (is-Intermediate!7740 lt!339363) (not (undefined!8552 lt!339363)) (bvslt (x!64264 lt!339363) #b01111111111111111111111111111110) (bvsge (x!64264 lt!339363) #b00000000000000000000000000000000) (bvsge (x!64264 lt!339363) #b00000000000000000000000000000000)))))

(assert (=> b!761772 (=> (not res!515187) (not e!424703))))

(assert (= (and d!100785 c!83676) b!761765))

(assert (= (and d!100785 (not c!83676)) b!761768))

(assert (= (and b!761768 c!83677) b!761770))

(assert (= (and b!761768 (not c!83677)) b!761766))

(assert (= (and d!100785 c!83675) b!761764))

(assert (= (and d!100785 (not c!83675)) b!761772))

(assert (= (and b!761772 res!515187) b!761769))

(assert (= (and b!761769 (not res!515186)) b!761771))

(assert (= (and b!761771 (not res!515188)) b!761767))

(declare-fun m!708693 () Bool)

(assert (=> b!761771 m!708693))

(assert (=> b!761767 m!708693))

(assert (=> b!761769 m!708693))

(assert (=> d!100785 m!708473))

(declare-fun m!708695 () Bool)

(assert (=> d!100785 m!708695))

(assert (=> d!100785 m!708441))

(assert (=> b!761766 m!708473))

(declare-fun m!708697 () Bool)

(assert (=> b!761766 m!708697))

(assert (=> b!761766 m!708697))

(assert (=> b!761766 m!708437))

(declare-fun m!708699 () Bool)

(assert (=> b!761766 m!708699))

(assert (=> b!761425 d!100785))

(declare-fun d!100787 () Bool)

(declare-fun lt!339369 () (_ BitVec 32))

(declare-fun lt!339368 () (_ BitVec 32))

(assert (=> d!100787 (= lt!339369 (bvmul (bvxor lt!339368 (bvlshr lt!339368 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!100787 (= lt!339368 ((_ extract 31 0) (bvand (bvxor (select (arr!20133 a!3186) j!159) (bvlshr (select (arr!20133 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!100787 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!515189 (let ((h!15270 ((_ extract 31 0) (bvand (bvxor (select (arr!20133 a!3186) j!159) (bvlshr (select (arr!20133 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!64274 (bvmul (bvxor h!15270 (bvlshr h!15270 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!64274 (bvlshr x!64274 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!515189 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!515189 #b00000000000000000000000000000000))))))

(assert (=> d!100787 (= (toIndex!0 (select (arr!20133 a!3186) j!159) mask!3328) (bvand (bvxor lt!339369 (bvlshr lt!339369 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!761425 d!100787))

(declare-fun d!100789 () Bool)

(assert (=> d!100789 (= (validKeyInArray!0 k!2102) (and (not (= k!2102 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2102 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!761415 d!100789))

(declare-fun bm!34993 () Bool)

(declare-fun call!34996 () Bool)

(assert (=> bm!34993 (= call!34996 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun b!761829 () Bool)

(declare-fun e!424737 () Bool)

(declare-fun e!424735 () Bool)

(assert (=> b!761829 (= e!424737 e!424735)))

(declare-fun c!83701 () Bool)

(assert (=> b!761829 (= c!83701 (validKeyInArray!0 (select (arr!20133 a!3186) #b00000000000000000000000000000000)))))

(declare-fun d!100791 () Bool)

(declare-fun res!515200 () Bool)

(assert (=> d!100791 (=> res!515200 e!424737)))

(assert (=> d!100791 (= res!515200 (bvsge #b00000000000000000000000000000000 (size!20554 a!3186)))))

(assert (=> d!100791 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328) e!424737)))

(declare-fun b!761830 () Bool)

(assert (=> b!761830 (= e!424735 call!34996)))

(declare-fun b!761831 () Bool)

(declare-fun e!424736 () Bool)

(assert (=> b!761831 (= e!424736 call!34996)))

(declare-fun b!761832 () Bool)

(assert (=> b!761832 (= e!424735 e!424736)))

(declare-fun lt!339393 () (_ BitVec 64))

(assert (=> b!761832 (= lt!339393 (select (arr!20133 a!3186) #b00000000000000000000000000000000))))

(declare-fun lt!339394 () Unit!26320)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!42055 (_ BitVec 64) (_ BitVec 32)) Unit!26320)

(assert (=> b!761832 (= lt!339394 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!339393 #b00000000000000000000000000000000))))

(assert (=> b!761832 (arrayContainsKey!0 a!3186 lt!339393 #b00000000000000000000000000000000)))

(declare-fun lt!339395 () Unit!26320)

(assert (=> b!761832 (= lt!339395 lt!339394)))

(declare-fun res!515201 () Bool)

(assert (=> b!761832 (= res!515201 (= (seekEntryOrOpen!0 (select (arr!20133 a!3186) #b00000000000000000000000000000000) a!3186 mask!3328) (Found!7740 #b00000000000000000000000000000000)))))

(assert (=> b!761832 (=> (not res!515201) (not e!424736))))

(assert (= (and d!100791 (not res!515200)) b!761829))

(assert (= (and b!761829 c!83701) b!761832))

(assert (= (and b!761829 (not c!83701)) b!761830))

(assert (= (and b!761832 res!515201) b!761831))

(assert (= (or b!761831 b!761830) bm!34993))

(declare-fun m!708743 () Bool)

(assert (=> bm!34993 m!708743))

(assert (=> b!761829 m!708685))

(assert (=> b!761829 m!708685))

(assert (=> b!761829 m!708687))

(assert (=> b!761832 m!708685))

(declare-fun m!708745 () Bool)

(assert (=> b!761832 m!708745))

(declare-fun m!708747 () Bool)

(assert (=> b!761832 m!708747))

(assert (=> b!761832 m!708685))

(declare-fun m!708749 () Bool)

(assert (=> b!761832 m!708749))

(assert (=> b!761416 d!100791))

(declare-fun d!100811 () Bool)

(declare-fun res!515206 () Bool)

(declare-fun e!424742 () Bool)

(assert (=> d!100811 (=> res!515206 e!424742)))

(assert (=> d!100811 (= res!515206 (= (select (arr!20133 a!3186) #b00000000000000000000000000000000) k!2102))))

(assert (=> d!100811 (= (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000) e!424742)))

(declare-fun b!761837 () Bool)

(declare-fun e!424743 () Bool)

(assert (=> b!761837 (= e!424742 e!424743)))

(declare-fun res!515207 () Bool)

(assert (=> b!761837 (=> (not res!515207) (not e!424743))))

(assert (=> b!761837 (= res!515207 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!20554 a!3186)))))

(declare-fun b!761838 () Bool)

(assert (=> b!761838 (= e!424743 (arrayContainsKey!0 a!3186 k!2102 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!100811 (not res!515206)) b!761837))

(assert (= (and b!761837 res!515207) b!761838))

(assert (=> d!100811 m!708685))

(declare-fun m!708751 () Bool)

(assert (=> b!761838 m!708751))

(assert (=> b!761417 d!100811))

(declare-fun b!761839 () Bool)

(declare-fun e!424747 () Bool)

(declare-fun lt!339397 () SeekEntryResult!7740)

(assert (=> b!761839 (= e!424747 (bvsge (x!64264 lt!339397) #b01111111111111111111111111111110))))

(declare-fun b!761840 () Bool)

(declare-fun e!424746 () SeekEntryResult!7740)

(assert (=> b!761840 (= e!424746 (Intermediate!7740 true index!1321 x!1131))))

(declare-fun e!424745 () SeekEntryResult!7740)

(declare-fun b!761841 () Bool)

(assert (=> b!761841 (= e!424745 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) lt!339227 lt!339222 mask!3328))))

(declare-fun b!761842 () Bool)

(assert (=> b!761842 (and (bvsge (index!33329 lt!339397) #b00000000000000000000000000000000) (bvslt (index!33329 lt!339397) (size!20554 lt!339222)))))

(declare-fun e!424744 () Bool)

(assert (=> b!761842 (= e!424744 (= (select (arr!20133 lt!339222) (index!33329 lt!339397)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!761843 () Bool)

(assert (=> b!761843 (= e!424746 e!424745)))

(declare-fun c!83704 () Bool)

(declare-fun lt!339396 () (_ BitVec 64))

(assert (=> b!761843 (= c!83704 (or (= lt!339396 lt!339227) (= (bvadd lt!339396 lt!339396) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!100813 () Bool)

(assert (=> d!100813 e!424747))

(declare-fun c!83702 () Bool)

(assert (=> d!100813 (= c!83702 (and (is-Intermediate!7740 lt!339397) (undefined!8552 lt!339397)))))

(assert (=> d!100813 (= lt!339397 e!424746)))

(declare-fun c!83703 () Bool)

(assert (=> d!100813 (= c!83703 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!100813 (= lt!339396 (select (arr!20133 lt!339222) index!1321))))

(assert (=> d!100813 (validMask!0 mask!3328)))

(assert (=> d!100813 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!339227 lt!339222 mask!3328) lt!339397)))

(declare-fun b!761844 () Bool)

(assert (=> b!761844 (and (bvsge (index!33329 lt!339397) #b00000000000000000000000000000000) (bvslt (index!33329 lt!339397) (size!20554 lt!339222)))))

(declare-fun res!515208 () Bool)

(assert (=> b!761844 (= res!515208 (= (select (arr!20133 lt!339222) (index!33329 lt!339397)) lt!339227))))

(assert (=> b!761844 (=> res!515208 e!424744)))

(declare-fun e!424748 () Bool)

(assert (=> b!761844 (= e!424748 e!424744)))

(declare-fun b!761845 () Bool)

(assert (=> b!761845 (= e!424745 (Intermediate!7740 false index!1321 x!1131))))

(declare-fun b!761846 () Bool)

(assert (=> b!761846 (and (bvsge (index!33329 lt!339397) #b00000000000000000000000000000000) (bvslt (index!33329 lt!339397) (size!20554 lt!339222)))))

(declare-fun res!515210 () Bool)

(assert (=> b!761846 (= res!515210 (= (select (arr!20133 lt!339222) (index!33329 lt!339397)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!761846 (=> res!515210 e!424744)))

(declare-fun b!761847 () Bool)

(assert (=> b!761847 (= e!424747 e!424748)))

(declare-fun res!515209 () Bool)

(assert (=> b!761847 (= res!515209 (and (is-Intermediate!7740 lt!339397) (not (undefined!8552 lt!339397)) (bvslt (x!64264 lt!339397) #b01111111111111111111111111111110) (bvsge (x!64264 lt!339397) #b00000000000000000000000000000000) (bvsge (x!64264 lt!339397) x!1131)))))

(assert (=> b!761847 (=> (not res!515209) (not e!424748))))

(assert (= (and d!100813 c!83703) b!761840))

(assert (= (and d!100813 (not c!83703)) b!761843))

(assert (= (and b!761843 c!83704) b!761845))

(assert (= (and b!761843 (not c!83704)) b!761841))

(assert (= (and d!100813 c!83702) b!761839))

(assert (= (and d!100813 (not c!83702)) b!761847))

(assert (= (and b!761847 res!515209) b!761844))

(assert (= (and b!761844 (not res!515208)) b!761846))

(assert (= (and b!761846 (not res!515210)) b!761842))

(declare-fun m!708753 () Bool)

(assert (=> b!761846 m!708753))

(assert (=> b!761842 m!708753))

(assert (=> b!761844 m!708753))

(declare-fun m!708755 () Bool)

(assert (=> d!100813 m!708755))

(assert (=> d!100813 m!708441))

(assert (=> b!761841 m!708623))

(assert (=> b!761841 m!708623))

(declare-fun m!708757 () Bool)

(assert (=> b!761841 m!708757))

(assert (=> b!761418 d!100813))

(declare-fun b!761848 () Bool)

(declare-fun e!424752 () Bool)

(declare-fun lt!339399 () SeekEntryResult!7740)

(assert (=> b!761848 (= e!424752 (bvsge (x!64264 lt!339399) #b01111111111111111111111111111110))))

(declare-fun b!761849 () Bool)

(declare-fun e!424751 () SeekEntryResult!7740)

(assert (=> b!761849 (= e!424751 (Intermediate!7740 true (toIndex!0 lt!339227 mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!761850 () Bool)

(declare-fun e!424750 () SeekEntryResult!7740)

(assert (=> b!761850 (= e!424750 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!339227 mask!3328) #b00000000000000000000000000000000 mask!3328) lt!339227 lt!339222 mask!3328))))

(declare-fun b!761851 () Bool)

(assert (=> b!761851 (and (bvsge (index!33329 lt!339399) #b00000000000000000000000000000000) (bvslt (index!33329 lt!339399) (size!20554 lt!339222)))))

(declare-fun e!424749 () Bool)

(assert (=> b!761851 (= e!424749 (= (select (arr!20133 lt!339222) (index!33329 lt!339399)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!761852 () Bool)

(assert (=> b!761852 (= e!424751 e!424750)))

(declare-fun c!83707 () Bool)

(declare-fun lt!339398 () (_ BitVec 64))

(assert (=> b!761852 (= c!83707 (or (= lt!339398 lt!339227) (= (bvadd lt!339398 lt!339398) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!100815 () Bool)

(assert (=> d!100815 e!424752))

(declare-fun c!83705 () Bool)

(assert (=> d!100815 (= c!83705 (and (is-Intermediate!7740 lt!339399) (undefined!8552 lt!339399)))))

(assert (=> d!100815 (= lt!339399 e!424751)))

(declare-fun c!83706 () Bool)

(assert (=> d!100815 (= c!83706 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!100815 (= lt!339398 (select (arr!20133 lt!339222) (toIndex!0 lt!339227 mask!3328)))))

(assert (=> d!100815 (validMask!0 mask!3328)))

(assert (=> d!100815 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!339227 mask!3328) lt!339227 lt!339222 mask!3328) lt!339399)))

(declare-fun b!761853 () Bool)

(assert (=> b!761853 (and (bvsge (index!33329 lt!339399) #b00000000000000000000000000000000) (bvslt (index!33329 lt!339399) (size!20554 lt!339222)))))

(declare-fun res!515211 () Bool)

(assert (=> b!761853 (= res!515211 (= (select (arr!20133 lt!339222) (index!33329 lt!339399)) lt!339227))))

(assert (=> b!761853 (=> res!515211 e!424749)))

(declare-fun e!424753 () Bool)

(assert (=> b!761853 (= e!424753 e!424749)))

(declare-fun b!761854 () Bool)

(assert (=> b!761854 (= e!424750 (Intermediate!7740 false (toIndex!0 lt!339227 mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!761855 () Bool)

(assert (=> b!761855 (and (bvsge (index!33329 lt!339399) #b00000000000000000000000000000000) (bvslt (index!33329 lt!339399) (size!20554 lt!339222)))))

(declare-fun res!515213 () Bool)

(assert (=> b!761855 (= res!515213 (= (select (arr!20133 lt!339222) (index!33329 lt!339399)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!761855 (=> res!515213 e!424749)))

(declare-fun b!761856 () Bool)

(assert (=> b!761856 (= e!424752 e!424753)))

(declare-fun res!515212 () Bool)

(assert (=> b!761856 (= res!515212 (and (is-Intermediate!7740 lt!339399) (not (undefined!8552 lt!339399)) (bvslt (x!64264 lt!339399) #b01111111111111111111111111111110) (bvsge (x!64264 lt!339399) #b00000000000000000000000000000000) (bvsge (x!64264 lt!339399) #b00000000000000000000000000000000)))))

(assert (=> b!761856 (=> (not res!515212) (not e!424753))))

(assert (= (and d!100815 c!83706) b!761849))

(assert (= (and d!100815 (not c!83706)) b!761852))

(assert (= (and b!761852 c!83707) b!761854))

(assert (= (and b!761852 (not c!83707)) b!761850))

(assert (= (and d!100815 c!83705) b!761848))

(assert (= (and d!100815 (not c!83705)) b!761856))

(assert (= (and b!761856 res!515212) b!761853))

(assert (= (and b!761853 (not res!515211)) b!761855))

(assert (= (and b!761855 (not res!515213)) b!761851))

(declare-fun m!708759 () Bool)

(assert (=> b!761855 m!708759))

(assert (=> b!761851 m!708759))

(assert (=> b!761853 m!708759))

(assert (=> d!100815 m!708477))

(declare-fun m!708761 () Bool)

(assert (=> d!100815 m!708761))

(assert (=> d!100815 m!708441))

(assert (=> b!761850 m!708477))

(declare-fun m!708763 () Bool)

(assert (=> b!761850 m!708763))

(assert (=> b!761850 m!708763))

(declare-fun m!708765 () Bool)

(assert (=> b!761850 m!708765))

(assert (=> b!761418 d!100815))

(declare-fun d!100817 () Bool)

(declare-fun lt!339401 () (_ BitVec 32))

(declare-fun lt!339400 () (_ BitVec 32))

(assert (=> d!100817 (= lt!339401 (bvmul (bvxor lt!339400 (bvlshr lt!339400 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!100817 (= lt!339400 ((_ extract 31 0) (bvand (bvxor lt!339227 (bvlshr lt!339227 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!100817 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!515189 (let ((h!15270 ((_ extract 31 0) (bvand (bvxor lt!339227 (bvlshr lt!339227 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!64274 (bvmul (bvxor h!15270 (bvlshr h!15270 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!64274 (bvlshr x!64274 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!515189 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!515189 #b00000000000000000000000000000000))))))

(assert (=> d!100817 (= (toIndex!0 lt!339227 mask!3328) (bvand (bvxor lt!339401 (bvlshr lt!339401 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!761418 d!100817))

(declare-fun bm!34994 () Bool)

(declare-fun call!34997 () Bool)

(assert (=> bm!34994 (= call!34997 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!159 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun b!761857 () Bool)

(declare-fun e!424756 () Bool)

(declare-fun e!424754 () Bool)

(assert (=> b!761857 (= e!424756 e!424754)))

(declare-fun c!83708 () Bool)

(assert (=> b!761857 (= c!83708 (validKeyInArray!0 (select (arr!20133 a!3186) j!159)))))

(declare-fun d!100819 () Bool)

(declare-fun res!515214 () Bool)

(assert (=> d!100819 (=> res!515214 e!424756)))

(assert (=> d!100819 (= res!515214 (bvsge j!159 (size!20554 a!3186)))))

(assert (=> d!100819 (= (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328) e!424756)))

(declare-fun b!761858 () Bool)

(assert (=> b!761858 (= e!424754 call!34997)))

(declare-fun b!761859 () Bool)

(declare-fun e!424755 () Bool)

(assert (=> b!761859 (= e!424755 call!34997)))

(declare-fun b!761860 () Bool)

(assert (=> b!761860 (= e!424754 e!424755)))

(declare-fun lt!339402 () (_ BitVec 64))

(assert (=> b!761860 (= lt!339402 (select (arr!20133 a!3186) j!159))))

(declare-fun lt!339403 () Unit!26320)

(assert (=> b!761860 (= lt!339403 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!339402 j!159))))

(assert (=> b!761860 (arrayContainsKey!0 a!3186 lt!339402 #b00000000000000000000000000000000)))

(declare-fun lt!339404 () Unit!26320)

(assert (=> b!761860 (= lt!339404 lt!339403)))

(declare-fun res!515215 () Bool)

(assert (=> b!761860 (= res!515215 (= (seekEntryOrOpen!0 (select (arr!20133 a!3186) j!159) a!3186 mask!3328) (Found!7740 j!159)))))

(assert (=> b!761860 (=> (not res!515215) (not e!424755))))

(assert (= (and d!100819 (not res!515214)) b!761857))

(assert (= (and b!761857 c!83708) b!761860))

(assert (= (and b!761857 (not c!83708)) b!761858))

(assert (= (and b!761860 res!515215) b!761859))

(assert (= (or b!761859 b!761858) bm!34994))

(declare-fun m!708767 () Bool)

(assert (=> bm!34994 m!708767))

(assert (=> b!761857 m!708437))

(assert (=> b!761857 m!708437))

(assert (=> b!761857 m!708469))

(assert (=> b!761860 m!708437))

(declare-fun m!708769 () Bool)

(assert (=> b!761860 m!708769))

(declare-fun m!708771 () Bool)

(assert (=> b!761860 m!708771))

(assert (=> b!761860 m!708437))

(assert (=> b!761860 m!708459))

(assert (=> b!761408 d!100819))

(declare-fun d!100821 () Bool)

(assert (=> d!100821 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!339407 () Unit!26320)

(declare-fun choose!38 (array!42055 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26320)

(assert (=> d!100821 (= lt!339407 (choose!38 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(assert (=> d!100821 (validMask!0 mask!3328)))

(assert (=> d!100821 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159) lt!339407)))

(declare-fun bs!21404 () Bool)

(assert (= bs!21404 d!100821))

(assert (=> bs!21404 m!708445))

(declare-fun m!708773 () Bool)

(assert (=> bs!21404 m!708773))

(assert (=> bs!21404 m!708441))

(assert (=> b!761408 d!100821))

(declare-fun b!761919 () Bool)

(declare-fun c!83734 () Bool)

(declare-fun lt!339437 () (_ BitVec 64))

(assert (=> b!761919 (= c!83734 (= lt!339437 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!424788 () SeekEntryResult!7740)

(declare-fun e!424790 () SeekEntryResult!7740)

(assert (=> b!761919 (= e!424788 e!424790)))

(declare-fun lt!339436 () SeekEntryResult!7740)

(declare-fun b!761920 () Bool)

(assert (=> b!761920 (= e!424790 (seekKeyOrZeroReturnVacant!0 (x!64264 lt!339436) (index!33329 lt!339436) (index!33329 lt!339436) k!2102 a!3186 mask!3328))))

(declare-fun b!761921 () Bool)

(declare-fun e!424789 () SeekEntryResult!7740)

(assert (=> b!761921 (= e!424789 e!424788)))

(assert (=> b!761921 (= lt!339437 (select (arr!20133 a!3186) (index!33329 lt!339436)))))

(declare-fun c!83735 () Bool)

(assert (=> b!761921 (= c!83735 (= lt!339437 k!2102))))

(declare-fun b!761922 () Bool)

(assert (=> b!761922 (= e!424788 (Found!7740 (index!33329 lt!339436)))))

(declare-fun d!100823 () Bool)

(declare-fun lt!339435 () SeekEntryResult!7740)

(assert (=> d!100823 (and (or (is-Undefined!7740 lt!339435) (not (is-Found!7740 lt!339435)) (and (bvsge (index!33328 lt!339435) #b00000000000000000000000000000000) (bvslt (index!33328 lt!339435) (size!20554 a!3186)))) (or (is-Undefined!7740 lt!339435) (is-Found!7740 lt!339435) (not (is-MissingZero!7740 lt!339435)) (and (bvsge (index!33327 lt!339435) #b00000000000000000000000000000000) (bvslt (index!33327 lt!339435) (size!20554 a!3186)))) (or (is-Undefined!7740 lt!339435) (is-Found!7740 lt!339435) (is-MissingZero!7740 lt!339435) (not (is-MissingVacant!7740 lt!339435)) (and (bvsge (index!33330 lt!339435) #b00000000000000000000000000000000) (bvslt (index!33330 lt!339435) (size!20554 a!3186)))) (or (is-Undefined!7740 lt!339435) (ite (is-Found!7740 lt!339435) (= (select (arr!20133 a!3186) (index!33328 lt!339435)) k!2102) (ite (is-MissingZero!7740 lt!339435) (= (select (arr!20133 a!3186) (index!33327 lt!339435)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!7740 lt!339435) (= (select (arr!20133 a!3186) (index!33330 lt!339435)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!100823 (= lt!339435 e!424789)))

(declare-fun c!83736 () Bool)

(assert (=> d!100823 (= c!83736 (and (is-Intermediate!7740 lt!339436) (undefined!8552 lt!339436)))))

(assert (=> d!100823 (= lt!339436 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2102 mask!3328) k!2102 a!3186 mask!3328))))

(assert (=> d!100823 (validMask!0 mask!3328)))

(assert (=> d!100823 (= (seekEntryOrOpen!0 k!2102 a!3186 mask!3328) lt!339435)))

(declare-fun b!761923 () Bool)

(assert (=> b!761923 (= e!424790 (MissingZero!7740 (index!33329 lt!339436)))))

(declare-fun b!761924 () Bool)

(assert (=> b!761924 (= e!424789 Undefined!7740)))

(assert (= (and d!100823 c!83736) b!761924))

(assert (= (and d!100823 (not c!83736)) b!761921))

(assert (= (and b!761921 c!83735) b!761922))

(assert (= (and b!761921 (not c!83735)) b!761919))

(assert (= (and b!761919 c!83734) b!761923))

(assert (= (and b!761919 (not c!83734)) b!761920))

(declare-fun m!708825 () Bool)

(assert (=> b!761920 m!708825))

(declare-fun m!708827 () Bool)

(assert (=> b!761921 m!708827))

(declare-fun m!708829 () Bool)

(assert (=> d!100823 m!708829))

(declare-fun m!708831 () Bool)

(assert (=> d!100823 m!708831))

(declare-fun m!708833 () Bool)

(assert (=> d!100823 m!708833))

(declare-fun m!708835 () Bool)

(assert (=> d!100823 m!708835))

(assert (=> d!100823 m!708831))

(assert (=> d!100823 m!708441))

(declare-fun m!708837 () Bool)

(assert (=> d!100823 m!708837))

(assert (=> b!761419 d!100823))

(declare-fun b!761925 () Bool)

(declare-fun c!83737 () Bool)

(declare-fun lt!339440 () (_ BitVec 64))

(assert (=> b!761925 (= c!83737 (= lt!339440 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!424791 () SeekEntryResult!7740)

(declare-fun e!424793 () SeekEntryResult!7740)

(assert (=> b!761925 (= e!424791 e!424793)))

(declare-fun b!761926 () Bool)

(declare-fun lt!339439 () SeekEntryResult!7740)

(assert (=> b!761926 (= e!424793 (seekKeyOrZeroReturnVacant!0 (x!64264 lt!339439) (index!33329 lt!339439) (index!33329 lt!339439) (select (arr!20133 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!761927 () Bool)

(declare-fun e!424792 () SeekEntryResult!7740)

(assert (=> b!761927 (= e!424792 e!424791)))

(assert (=> b!761927 (= lt!339440 (select (arr!20133 a!3186) (index!33329 lt!339439)))))

(declare-fun c!83738 () Bool)

(assert (=> b!761927 (= c!83738 (= lt!339440 (select (arr!20133 a!3186) j!159)))))

(declare-fun b!761928 () Bool)

(assert (=> b!761928 (= e!424791 (Found!7740 (index!33329 lt!339439)))))

(declare-fun d!100843 () Bool)

(declare-fun lt!339438 () SeekEntryResult!7740)

(assert (=> d!100843 (and (or (is-Undefined!7740 lt!339438) (not (is-Found!7740 lt!339438)) (and (bvsge (index!33328 lt!339438) #b00000000000000000000000000000000) (bvslt (index!33328 lt!339438) (size!20554 a!3186)))) (or (is-Undefined!7740 lt!339438) (is-Found!7740 lt!339438) (not (is-MissingZero!7740 lt!339438)) (and (bvsge (index!33327 lt!339438) #b00000000000000000000000000000000) (bvslt (index!33327 lt!339438) (size!20554 a!3186)))) (or (is-Undefined!7740 lt!339438) (is-Found!7740 lt!339438) (is-MissingZero!7740 lt!339438) (not (is-MissingVacant!7740 lt!339438)) (and (bvsge (index!33330 lt!339438) #b00000000000000000000000000000000) (bvslt (index!33330 lt!339438) (size!20554 a!3186)))) (or (is-Undefined!7740 lt!339438) (ite (is-Found!7740 lt!339438) (= (select (arr!20133 a!3186) (index!33328 lt!339438)) (select (arr!20133 a!3186) j!159)) (ite (is-MissingZero!7740 lt!339438) (= (select (arr!20133 a!3186) (index!33327 lt!339438)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!7740 lt!339438) (= (select (arr!20133 a!3186) (index!33330 lt!339438)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!100843 (= lt!339438 e!424792)))

(declare-fun c!83739 () Bool)

(assert (=> d!100843 (= c!83739 (and (is-Intermediate!7740 lt!339439) (undefined!8552 lt!339439)))))

(assert (=> d!100843 (= lt!339439 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20133 a!3186) j!159) mask!3328) (select (arr!20133 a!3186) j!159) a!3186 mask!3328))))

(assert (=> d!100843 (validMask!0 mask!3328)))

(assert (=> d!100843 (= (seekEntryOrOpen!0 (select (arr!20133 a!3186) j!159) a!3186 mask!3328) lt!339438)))

(declare-fun b!761929 () Bool)

(assert (=> b!761929 (= e!424793 (MissingZero!7740 (index!33329 lt!339439)))))

(declare-fun b!761930 () Bool)

(assert (=> b!761930 (= e!424792 Undefined!7740)))

(assert (= (and d!100843 c!83739) b!761930))

(assert (= (and d!100843 (not c!83739)) b!761927))

(assert (= (and b!761927 c!83738) b!761928))

(assert (= (and b!761927 (not c!83738)) b!761925))

(assert (= (and b!761925 c!83737) b!761929))

(assert (= (and b!761925 (not c!83737)) b!761926))

(assert (=> b!761926 m!708437))

(declare-fun m!708839 () Bool)

(assert (=> b!761926 m!708839))

(declare-fun m!708841 () Bool)

(assert (=> b!761927 m!708841))

(declare-fun m!708843 () Bool)

(assert (=> d!100843 m!708843))

(assert (=> d!100843 m!708473))

(assert (=> d!100843 m!708437))

(assert (=> d!100843 m!708475))

(declare-fun m!708845 () Bool)

(assert (=> d!100843 m!708845))

(assert (=> d!100843 m!708437))

(assert (=> d!100843 m!708473))

(assert (=> d!100843 m!708441))

(declare-fun m!708847 () Bool)

(assert (=> d!100843 m!708847))

(assert (=> b!761409 d!100843))

(push 1)

