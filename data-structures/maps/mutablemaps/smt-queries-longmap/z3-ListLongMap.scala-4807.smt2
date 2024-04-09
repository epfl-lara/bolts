; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!66136 () Bool)

(assert start!66136)

(declare-fun res!515060 () Bool)

(declare-fun e!424530 () Bool)

(assert (=> start!66136 (=> (not res!515060) (not e!424530))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66136 (= res!515060 (validMask!0 mask!3328))))

(assert (=> start!66136 e!424530))

(assert (=> start!66136 true))

(declare-datatypes ((array!42057 0))(
  ( (array!42058 (arr!20134 (Array (_ BitVec 32) (_ BitVec 64))) (size!20555 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42057)

(declare-fun array_inv!15908 (array!42057) Bool)

(assert (=> start!66136 (array_inv!15908 a!3186)))

(declare-fun b!761465 () Bool)

(declare-fun e!424535 () Bool)

(declare-fun e!424531 () Bool)

(assert (=> b!761465 (= e!424535 (not e!424531))))

(declare-fun res!515054 () Bool)

(assert (=> b!761465 (=> res!515054 e!424531)))

(declare-datatypes ((SeekEntryResult!7741 0))(
  ( (MissingZero!7741 (index!33331 (_ BitVec 32))) (Found!7741 (index!33332 (_ BitVec 32))) (Intermediate!7741 (undefined!8553 Bool) (index!33333 (_ BitVec 32)) (x!64265 (_ BitVec 32))) (Undefined!7741) (MissingVacant!7741 (index!33334 (_ BitVec 32))) )
))
(declare-fun lt!339246 () SeekEntryResult!7741)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(get-info :version)

(assert (=> b!761465 (= res!515054 (or (not ((_ is Intermediate!7741) lt!339246)) (bvslt x!1131 (x!64265 lt!339246)) (not (= x!1131 (x!64265 lt!339246))) (not (= index!1321 (index!33333 lt!339246)))))))

(declare-fun e!424529 () Bool)

(assert (=> b!761465 e!424529))

(declare-fun res!515052 () Bool)

(assert (=> b!761465 (=> (not res!515052) (not e!424529))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42057 (_ BitVec 32)) Bool)

(assert (=> b!761465 (= res!515052 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26322 0))(
  ( (Unit!26323) )
))
(declare-fun lt!339250 () Unit!26322)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42057 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26322)

(assert (=> b!761465 (= lt!339250 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!761466 () Bool)

(declare-fun e!424534 () Bool)

(assert (=> b!761466 (= e!424529 e!424534)))

(declare-fun res!515058 () Bool)

(assert (=> b!761466 (=> (not res!515058) (not e!424534))))

(declare-fun lt!339247 () SeekEntryResult!7741)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42057 (_ BitVec 32)) SeekEntryResult!7741)

(assert (=> b!761466 (= res!515058 (= (seekEntryOrOpen!0 (select (arr!20134 a!3186) j!159) a!3186 mask!3328) lt!339247))))

(assert (=> b!761466 (= lt!339247 (Found!7741 j!159))))

(declare-fun b!761467 () Bool)

(declare-fun res!515048 () Bool)

(declare-fun e!424533 () Bool)

(assert (=> b!761467 (=> (not res!515048) (not e!424533))))

(assert (=> b!761467 (= res!515048 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!761468 () Bool)

(declare-fun res!515055 () Bool)

(assert (=> b!761468 (=> (not res!515055) (not e!424533))))

(declare-datatypes ((List!14189 0))(
  ( (Nil!14186) (Cons!14185 (h!15266 (_ BitVec 64)) (t!20512 List!14189)) )
))
(declare-fun arrayNoDuplicates!0 (array!42057 (_ BitVec 32) List!14189) Bool)

(assert (=> b!761468 (= res!515055 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14186))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun e!424528 () Bool)

(declare-fun b!761469 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42057 (_ BitVec 32)) SeekEntryResult!7741)

(assert (=> b!761469 (= e!424528 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20134 a!3186) j!159) a!3186 mask!3328) (Found!7741 j!159)))))

(declare-fun b!761470 () Bool)

(declare-fun res!515046 () Bool)

(assert (=> b!761470 (=> (not res!515046) (not e!424530))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!761470 (= res!515046 (validKeyInArray!0 k0!2102))))

(declare-fun b!761471 () Bool)

(declare-fun res!515045 () Bool)

(assert (=> b!761471 (=> (not res!515045) (not e!424530))))

(assert (=> b!761471 (= res!515045 (validKeyInArray!0 (select (arr!20134 a!3186) j!159)))))

(declare-fun b!761472 () Bool)

(declare-fun e!424527 () Bool)

(assert (=> b!761472 (= e!424527 e!424535)))

(declare-fun res!515057 () Bool)

(assert (=> b!761472 (=> (not res!515057) (not e!424535))))

(declare-fun lt!339249 () SeekEntryResult!7741)

(assert (=> b!761472 (= res!515057 (= lt!339249 lt!339246))))

(declare-fun lt!339248 () (_ BitVec 64))

(declare-fun lt!339252 () array!42057)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42057 (_ BitVec 32)) SeekEntryResult!7741)

(assert (=> b!761472 (= lt!339246 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!339248 lt!339252 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!761472 (= lt!339249 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!339248 mask!3328) lt!339248 lt!339252 mask!3328))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!761472 (= lt!339248 (select (store (arr!20134 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!761472 (= lt!339252 (array!42058 (store (arr!20134 a!3186) i!1173 k0!2102) (size!20555 a!3186)))))

(declare-fun b!761473 () Bool)

(declare-fun res!515056 () Bool)

(assert (=> b!761473 (=> (not res!515056) (not e!424527))))

(assert (=> b!761473 (= res!515056 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20134 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!761474 () Bool)

(assert (=> b!761474 (= e!424530 e!424533)))

(declare-fun res!515049 () Bool)

(assert (=> b!761474 (=> (not res!515049) (not e!424533))))

(declare-fun lt!339253 () SeekEntryResult!7741)

(assert (=> b!761474 (= res!515049 (or (= lt!339253 (MissingZero!7741 i!1173)) (= lt!339253 (MissingVacant!7741 i!1173))))))

(assert (=> b!761474 (= lt!339253 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!761475 () Bool)

(declare-fun res!515051 () Bool)

(assert (=> b!761475 (=> (not res!515051) (not e!424530))))

(assert (=> b!761475 (= res!515051 (and (= (size!20555 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20555 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20555 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!761476 () Bool)

(declare-fun res!515050 () Bool)

(assert (=> b!761476 (=> (not res!515050) (not e!424533))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!761476 (= res!515050 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20555 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20555 a!3186))))))

(declare-fun b!761477 () Bool)

(declare-fun res!515053 () Bool)

(assert (=> b!761477 (=> res!515053 e!424531)))

(assert (=> b!761477 (= res!515053 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20134 a!3186) j!159) a!3186 mask!3328) (Found!7741 j!159))))))

(declare-fun b!761478 () Bool)

(declare-fun res!515061 () Bool)

(assert (=> b!761478 (=> (not res!515061) (not e!424530))))

(declare-fun arrayContainsKey!0 (array!42057 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!761478 (= res!515061 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!761479 () Bool)

(assert (=> b!761479 (= e!424533 e!424527)))

(declare-fun res!515059 () Bool)

(assert (=> b!761479 (=> (not res!515059) (not e!424527))))

(declare-fun lt!339251 () SeekEntryResult!7741)

(assert (=> b!761479 (= res!515059 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20134 a!3186) j!159) mask!3328) (select (arr!20134 a!3186) j!159) a!3186 mask!3328) lt!339251))))

(assert (=> b!761479 (= lt!339251 (Intermediate!7741 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!761480 () Bool)

(assert (=> b!761480 (= e!424528 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20134 a!3186) j!159) a!3186 mask!3328) lt!339251))))

(declare-fun b!761481 () Bool)

(assert (=> b!761481 (= e!424534 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20134 a!3186) j!159) a!3186 mask!3328) lt!339247))))

(declare-fun b!761482 () Bool)

(declare-fun res!515047 () Bool)

(assert (=> b!761482 (=> (not res!515047) (not e!424527))))

(assert (=> b!761482 (= res!515047 e!424528)))

(declare-fun c!83595 () Bool)

(assert (=> b!761482 (= c!83595 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!761483 () Bool)

(assert (=> b!761483 (= e!424531 (or (not (= (select (store (arr!20134 a!3186) i!1173 k0!2102) index!1321) lt!339248)) (not (undefined!8553 lt!339246))))))

(assert (= (and start!66136 res!515060) b!761475))

(assert (= (and b!761475 res!515051) b!761471))

(assert (= (and b!761471 res!515045) b!761470))

(assert (= (and b!761470 res!515046) b!761478))

(assert (= (and b!761478 res!515061) b!761474))

(assert (= (and b!761474 res!515049) b!761467))

(assert (= (and b!761467 res!515048) b!761468))

(assert (= (and b!761468 res!515055) b!761476))

(assert (= (and b!761476 res!515050) b!761479))

(assert (= (and b!761479 res!515059) b!761473))

(assert (= (and b!761473 res!515056) b!761482))

(assert (= (and b!761482 c!83595) b!761480))

(assert (= (and b!761482 (not c!83595)) b!761469))

(assert (= (and b!761482 res!515047) b!761472))

(assert (= (and b!761472 res!515057) b!761465))

(assert (= (and b!761465 res!515052) b!761466))

(assert (= (and b!761466 res!515058) b!761481))

(assert (= (and b!761465 (not res!515054)) b!761477))

(assert (= (and b!761477 (not res!515053)) b!761483))

(declare-fun m!708485 () Bool)

(assert (=> b!761478 m!708485))

(declare-fun m!708487 () Bool)

(assert (=> b!761477 m!708487))

(assert (=> b!761477 m!708487))

(declare-fun m!708489 () Bool)

(assert (=> b!761477 m!708489))

(declare-fun m!708491 () Bool)

(assert (=> b!761483 m!708491))

(declare-fun m!708493 () Bool)

(assert (=> b!761483 m!708493))

(declare-fun m!708495 () Bool)

(assert (=> b!761465 m!708495))

(declare-fun m!708497 () Bool)

(assert (=> b!761465 m!708497))

(declare-fun m!708499 () Bool)

(assert (=> b!761468 m!708499))

(assert (=> b!761480 m!708487))

(assert (=> b!761480 m!708487))

(declare-fun m!708501 () Bool)

(assert (=> b!761480 m!708501))

(assert (=> b!761481 m!708487))

(assert (=> b!761481 m!708487))

(declare-fun m!708503 () Bool)

(assert (=> b!761481 m!708503))

(declare-fun m!708505 () Bool)

(assert (=> start!66136 m!708505))

(declare-fun m!708507 () Bool)

(assert (=> start!66136 m!708507))

(declare-fun m!708509 () Bool)

(assert (=> b!761473 m!708509))

(declare-fun m!708511 () Bool)

(assert (=> b!761470 m!708511))

(declare-fun m!708513 () Bool)

(assert (=> b!761474 m!708513))

(assert (=> b!761466 m!708487))

(assert (=> b!761466 m!708487))

(declare-fun m!708515 () Bool)

(assert (=> b!761466 m!708515))

(assert (=> b!761469 m!708487))

(assert (=> b!761469 m!708487))

(assert (=> b!761469 m!708489))

(declare-fun m!708517 () Bool)

(assert (=> b!761467 m!708517))

(declare-fun m!708519 () Bool)

(assert (=> b!761472 m!708519))

(assert (=> b!761472 m!708491))

(declare-fun m!708521 () Bool)

(assert (=> b!761472 m!708521))

(assert (=> b!761472 m!708519))

(declare-fun m!708523 () Bool)

(assert (=> b!761472 m!708523))

(declare-fun m!708525 () Bool)

(assert (=> b!761472 m!708525))

(assert (=> b!761479 m!708487))

(assert (=> b!761479 m!708487))

(declare-fun m!708527 () Bool)

(assert (=> b!761479 m!708527))

(assert (=> b!761479 m!708527))

(assert (=> b!761479 m!708487))

(declare-fun m!708529 () Bool)

(assert (=> b!761479 m!708529))

(assert (=> b!761471 m!708487))

(assert (=> b!761471 m!708487))

(declare-fun m!708531 () Bool)

(assert (=> b!761471 m!708531))

(check-sat (not b!761467) (not b!761466) (not b!761468) (not b!761478) (not b!761465) (not b!761477) (not b!761470) (not b!761480) (not b!761469) (not b!761474) (not b!761479) (not b!761481) (not b!761472) (not b!761471) (not start!66136))
(check-sat)
(get-model)

(declare-fun b!761549 () Bool)

(declare-fun e!424569 () Bool)

(declare-fun e!424570 () Bool)

(assert (=> b!761549 (= e!424569 e!424570)))

(declare-fun c!83601 () Bool)

(assert (=> b!761549 (= c!83601 (validKeyInArray!0 (select (arr!20134 a!3186) j!159)))))

(declare-fun b!761550 () Bool)

(declare-fun call!34983 () Bool)

(assert (=> b!761550 (= e!424570 call!34983)))

(declare-fun b!761551 () Bool)

(declare-fun e!424571 () Bool)

(assert (=> b!761551 (= e!424570 e!424571)))

(declare-fun lt!339285 () (_ BitVec 64))

(assert (=> b!761551 (= lt!339285 (select (arr!20134 a!3186) j!159))))

(declare-fun lt!339286 () Unit!26322)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!42057 (_ BitVec 64) (_ BitVec 32)) Unit!26322)

(assert (=> b!761551 (= lt!339286 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!339285 j!159))))

(assert (=> b!761551 (arrayContainsKey!0 a!3186 lt!339285 #b00000000000000000000000000000000)))

(declare-fun lt!339284 () Unit!26322)

(assert (=> b!761551 (= lt!339284 lt!339286)))

(declare-fun res!515117 () Bool)

(assert (=> b!761551 (= res!515117 (= (seekEntryOrOpen!0 (select (arr!20134 a!3186) j!159) a!3186 mask!3328) (Found!7741 j!159)))))

(assert (=> b!761551 (=> (not res!515117) (not e!424571))))

(declare-fun b!761552 () Bool)

(assert (=> b!761552 (= e!424571 call!34983)))

(declare-fun d!100737 () Bool)

(declare-fun res!515118 () Bool)

(assert (=> d!100737 (=> res!515118 e!424569)))

(assert (=> d!100737 (= res!515118 (bvsge j!159 (size!20555 a!3186)))))

(assert (=> d!100737 (= (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328) e!424569)))

(declare-fun bm!34980 () Bool)

(assert (=> bm!34980 (= call!34983 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!159 #b00000000000000000000000000000001) a!3186 mask!3328))))

(assert (= (and d!100737 (not res!515118)) b!761549))

(assert (= (and b!761549 c!83601) b!761551))

(assert (= (and b!761549 (not c!83601)) b!761550))

(assert (= (and b!761551 res!515117) b!761552))

(assert (= (or b!761552 b!761550) bm!34980))

(assert (=> b!761549 m!708487))

(assert (=> b!761549 m!708487))

(assert (=> b!761549 m!708531))

(assert (=> b!761551 m!708487))

(declare-fun m!708581 () Bool)

(assert (=> b!761551 m!708581))

(declare-fun m!708583 () Bool)

(assert (=> b!761551 m!708583))

(assert (=> b!761551 m!708487))

(assert (=> b!761551 m!708515))

(declare-fun m!708585 () Bool)

(assert (=> bm!34980 m!708585))

(assert (=> b!761465 d!100737))

(declare-fun d!100739 () Bool)

(assert (=> d!100739 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!339289 () Unit!26322)

(declare-fun choose!38 (array!42057 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26322)

(assert (=> d!100739 (= lt!339289 (choose!38 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(assert (=> d!100739 (validMask!0 mask!3328)))

(assert (=> d!100739 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159) lt!339289)))

(declare-fun bs!21402 () Bool)

(assert (= bs!21402 d!100739))

(assert (=> bs!21402 m!708495))

(declare-fun m!708587 () Bool)

(assert (=> bs!21402 m!708587))

(assert (=> bs!21402 m!708505))

(assert (=> b!761465 d!100739))

(declare-fun b!761565 () Bool)

(declare-fun c!83609 () Bool)

(declare-fun lt!339298 () (_ BitVec 64))

(assert (=> b!761565 (= c!83609 (= lt!339298 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!424580 () SeekEntryResult!7741)

(declare-fun e!424578 () SeekEntryResult!7741)

(assert (=> b!761565 (= e!424580 e!424578)))

(declare-fun b!761566 () Bool)

(declare-fun e!424579 () SeekEntryResult!7741)

(assert (=> b!761566 (= e!424579 e!424580)))

(declare-fun lt!339296 () SeekEntryResult!7741)

(assert (=> b!761566 (= lt!339298 (select (arr!20134 a!3186) (index!33333 lt!339296)))))

(declare-fun c!83610 () Bool)

(assert (=> b!761566 (= c!83610 (= lt!339298 (select (arr!20134 a!3186) j!159)))))

(declare-fun b!761567 () Bool)

(assert (=> b!761567 (= e!424580 (Found!7741 (index!33333 lt!339296)))))

(declare-fun b!761568 () Bool)

(assert (=> b!761568 (= e!424579 Undefined!7741)))

(declare-fun d!100741 () Bool)

(declare-fun lt!339297 () SeekEntryResult!7741)

(assert (=> d!100741 (and (or ((_ is Undefined!7741) lt!339297) (not ((_ is Found!7741) lt!339297)) (and (bvsge (index!33332 lt!339297) #b00000000000000000000000000000000) (bvslt (index!33332 lt!339297) (size!20555 a!3186)))) (or ((_ is Undefined!7741) lt!339297) ((_ is Found!7741) lt!339297) (not ((_ is MissingZero!7741) lt!339297)) (and (bvsge (index!33331 lt!339297) #b00000000000000000000000000000000) (bvslt (index!33331 lt!339297) (size!20555 a!3186)))) (or ((_ is Undefined!7741) lt!339297) ((_ is Found!7741) lt!339297) ((_ is MissingZero!7741) lt!339297) (not ((_ is MissingVacant!7741) lt!339297)) (and (bvsge (index!33334 lt!339297) #b00000000000000000000000000000000) (bvslt (index!33334 lt!339297) (size!20555 a!3186)))) (or ((_ is Undefined!7741) lt!339297) (ite ((_ is Found!7741) lt!339297) (= (select (arr!20134 a!3186) (index!33332 lt!339297)) (select (arr!20134 a!3186) j!159)) (ite ((_ is MissingZero!7741) lt!339297) (= (select (arr!20134 a!3186) (index!33331 lt!339297)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!7741) lt!339297) (= (select (arr!20134 a!3186) (index!33334 lt!339297)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!100741 (= lt!339297 e!424579)))

(declare-fun c!83608 () Bool)

(assert (=> d!100741 (= c!83608 (and ((_ is Intermediate!7741) lt!339296) (undefined!8553 lt!339296)))))

(assert (=> d!100741 (= lt!339296 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20134 a!3186) j!159) mask!3328) (select (arr!20134 a!3186) j!159) a!3186 mask!3328))))

(assert (=> d!100741 (validMask!0 mask!3328)))

(assert (=> d!100741 (= (seekEntryOrOpen!0 (select (arr!20134 a!3186) j!159) a!3186 mask!3328) lt!339297)))

(declare-fun b!761569 () Bool)

(assert (=> b!761569 (= e!424578 (seekKeyOrZeroReturnVacant!0 (x!64265 lt!339296) (index!33333 lt!339296) (index!33333 lt!339296) (select (arr!20134 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!761570 () Bool)

(assert (=> b!761570 (= e!424578 (MissingZero!7741 (index!33333 lt!339296)))))

(assert (= (and d!100741 c!83608) b!761568))

(assert (= (and d!100741 (not c!83608)) b!761566))

(assert (= (and b!761566 c!83610) b!761567))

(assert (= (and b!761566 (not c!83610)) b!761565))

(assert (= (and b!761565 c!83609) b!761570))

(assert (= (and b!761565 (not c!83609)) b!761569))

(declare-fun m!708589 () Bool)

(assert (=> b!761566 m!708589))

(declare-fun m!708591 () Bool)

(assert (=> d!100741 m!708591))

(assert (=> d!100741 m!708505))

(declare-fun m!708593 () Bool)

(assert (=> d!100741 m!708593))

(assert (=> d!100741 m!708527))

(assert (=> d!100741 m!708487))

(assert (=> d!100741 m!708529))

(declare-fun m!708595 () Bool)

(assert (=> d!100741 m!708595))

(assert (=> d!100741 m!708487))

(assert (=> d!100741 m!708527))

(assert (=> b!761569 m!708487))

(declare-fun m!708597 () Bool)

(assert (=> b!761569 m!708597))

(assert (=> b!761466 d!100741))

(declare-fun b!761601 () Bool)

(declare-fun e!424598 () SeekEntryResult!7741)

(assert (=> b!761601 (= e!424598 (Found!7741 index!1321))))

(declare-fun b!761602 () Bool)

(declare-fun e!424596 () SeekEntryResult!7741)

(assert (=> b!761602 (= e!424596 (MissingVacant!7741 resIntermediateIndex!5))))

(declare-fun b!761603 () Bool)

(declare-fun e!424597 () SeekEntryResult!7741)

(assert (=> b!761603 (= e!424597 Undefined!7741)))

(declare-fun b!761604 () Bool)

(assert (=> b!761604 (= e!424597 e!424598)))

(declare-fun c!83628 () Bool)

(declare-fun lt!339309 () (_ BitVec 64))

(assert (=> b!761604 (= c!83628 (= lt!339309 (select (arr!20134 a!3186) j!159)))))

(declare-fun b!761605 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!761605 (= e!424596 (seekKeyOrZeroReturnVacant!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) resIntermediateIndex!5 (select (arr!20134 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!761606 () Bool)

(declare-fun c!83627 () Bool)

(assert (=> b!761606 (= c!83627 (= lt!339309 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!761606 (= e!424598 e!424596)))

(declare-fun d!100745 () Bool)

(declare-fun lt!339310 () SeekEntryResult!7741)

(assert (=> d!100745 (and (or ((_ is Undefined!7741) lt!339310) (not ((_ is Found!7741) lt!339310)) (and (bvsge (index!33332 lt!339310) #b00000000000000000000000000000000) (bvslt (index!33332 lt!339310) (size!20555 a!3186)))) (or ((_ is Undefined!7741) lt!339310) ((_ is Found!7741) lt!339310) (not ((_ is MissingVacant!7741) lt!339310)) (not (= (index!33334 lt!339310) resIntermediateIndex!5)) (and (bvsge (index!33334 lt!339310) #b00000000000000000000000000000000) (bvslt (index!33334 lt!339310) (size!20555 a!3186)))) (or ((_ is Undefined!7741) lt!339310) (ite ((_ is Found!7741) lt!339310) (= (select (arr!20134 a!3186) (index!33332 lt!339310)) (select (arr!20134 a!3186) j!159)) (and ((_ is MissingVacant!7741) lt!339310) (= (index!33334 lt!339310) resIntermediateIndex!5) (= (select (arr!20134 a!3186) (index!33334 lt!339310)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!100745 (= lt!339310 e!424597)))

(declare-fun c!83626 () Bool)

(assert (=> d!100745 (= c!83626 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!100745 (= lt!339309 (select (arr!20134 a!3186) index!1321))))

(assert (=> d!100745 (validMask!0 mask!3328)))

(assert (=> d!100745 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20134 a!3186) j!159) a!3186 mask!3328) lt!339310)))

(assert (= (and d!100745 c!83626) b!761603))

(assert (= (and d!100745 (not c!83626)) b!761604))

(assert (= (and b!761604 c!83628) b!761601))

(assert (= (and b!761604 (not c!83628)) b!761606))

(assert (= (and b!761606 c!83627) b!761602))

(assert (= (and b!761606 (not c!83627)) b!761605))

(declare-fun m!708601 () Bool)

(assert (=> b!761605 m!708601))

(assert (=> b!761605 m!708601))

(assert (=> b!761605 m!708487))

(declare-fun m!708605 () Bool)

(assert (=> b!761605 m!708605))

(declare-fun m!708609 () Bool)

(assert (=> d!100745 m!708609))

(declare-fun m!708611 () Bool)

(assert (=> d!100745 m!708611))

(declare-fun m!708613 () Bool)

(assert (=> d!100745 m!708613))

(assert (=> d!100745 m!708505))

(assert (=> b!761477 d!100745))

(declare-fun d!100753 () Bool)

(declare-fun res!515123 () Bool)

(declare-fun e!424606 () Bool)

(assert (=> d!100753 (=> res!515123 e!424606)))

(assert (=> d!100753 (= res!515123 (= (select (arr!20134 a!3186) #b00000000000000000000000000000000) k0!2102))))

(assert (=> d!100753 (= (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000) e!424606)))

(declare-fun b!761617 () Bool)

(declare-fun e!424607 () Bool)

(assert (=> b!761617 (= e!424606 e!424607)))

(declare-fun res!515124 () Bool)

(assert (=> b!761617 (=> (not res!515124) (not e!424607))))

(assert (=> b!761617 (= res!515124 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!20555 a!3186)))))

(declare-fun b!761618 () Bool)

(assert (=> b!761618 (= e!424607 (arrayContainsKey!0 a!3186 k0!2102 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!100753 (not res!515123)) b!761617))

(assert (= (and b!761617 res!515124) b!761618))

(declare-fun m!708627 () Bool)

(assert (=> d!100753 m!708627))

(declare-fun m!708629 () Bool)

(assert (=> b!761618 m!708629))

(assert (=> b!761478 d!100753))

(declare-fun b!761619 () Bool)

(declare-fun e!424608 () Bool)

(declare-fun e!424609 () Bool)

(assert (=> b!761619 (= e!424608 e!424609)))

(declare-fun c!83632 () Bool)

(assert (=> b!761619 (= c!83632 (validKeyInArray!0 (select (arr!20134 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!761620 () Bool)

(declare-fun call!34984 () Bool)

(assert (=> b!761620 (= e!424609 call!34984)))

(declare-fun b!761621 () Bool)

(declare-fun e!424610 () Bool)

(assert (=> b!761621 (= e!424609 e!424610)))

(declare-fun lt!339314 () (_ BitVec 64))

(assert (=> b!761621 (= lt!339314 (select (arr!20134 a!3186) #b00000000000000000000000000000000))))

(declare-fun lt!339315 () Unit!26322)

(assert (=> b!761621 (= lt!339315 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!339314 #b00000000000000000000000000000000))))

(assert (=> b!761621 (arrayContainsKey!0 a!3186 lt!339314 #b00000000000000000000000000000000)))

(declare-fun lt!339313 () Unit!26322)

(assert (=> b!761621 (= lt!339313 lt!339315)))

(declare-fun res!515125 () Bool)

(assert (=> b!761621 (= res!515125 (= (seekEntryOrOpen!0 (select (arr!20134 a!3186) #b00000000000000000000000000000000) a!3186 mask!3328) (Found!7741 #b00000000000000000000000000000000)))))

(assert (=> b!761621 (=> (not res!515125) (not e!424610))))

(declare-fun b!761622 () Bool)

(assert (=> b!761622 (= e!424610 call!34984)))

(declare-fun d!100757 () Bool)

(declare-fun res!515126 () Bool)

(assert (=> d!100757 (=> res!515126 e!424608)))

(assert (=> d!100757 (= res!515126 (bvsge #b00000000000000000000000000000000 (size!20555 a!3186)))))

(assert (=> d!100757 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328) e!424608)))

(declare-fun bm!34981 () Bool)

(assert (=> bm!34981 (= call!34984 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3186 mask!3328))))

(assert (= (and d!100757 (not res!515126)) b!761619))

(assert (= (and b!761619 c!83632) b!761621))

(assert (= (and b!761619 (not c!83632)) b!761620))

(assert (= (and b!761621 res!515125) b!761622))

(assert (= (or b!761622 b!761620) bm!34981))

(assert (=> b!761619 m!708627))

(assert (=> b!761619 m!708627))

(declare-fun m!708631 () Bool)

(assert (=> b!761619 m!708631))

(assert (=> b!761621 m!708627))

(declare-fun m!708633 () Bool)

(assert (=> b!761621 m!708633))

(declare-fun m!708635 () Bool)

(assert (=> b!761621 m!708635))

(assert (=> b!761621 m!708627))

(declare-fun m!708637 () Bool)

(assert (=> b!761621 m!708637))

(declare-fun m!708639 () Bool)

(assert (=> bm!34981 m!708639))

(assert (=> b!761467 d!100757))

(declare-fun b!761641 () Bool)

(declare-fun e!424626 () Bool)

(declare-fun call!34987 () Bool)

(assert (=> b!761641 (= e!424626 call!34987)))

(declare-fun bm!34984 () Bool)

(declare-fun c!83639 () Bool)

(assert (=> bm!34984 (= call!34987 (arrayNoDuplicates!0 a!3186 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!83639 (Cons!14185 (select (arr!20134 a!3186) #b00000000000000000000000000000000) Nil!14186) Nil!14186)))))

(declare-fun b!761642 () Bool)

(declare-fun e!424623 () Bool)

(declare-fun e!424624 () Bool)

(assert (=> b!761642 (= e!424623 e!424624)))

(declare-fun res!515135 () Bool)

(assert (=> b!761642 (=> (not res!515135) (not e!424624))))

(declare-fun e!424625 () Bool)

(assert (=> b!761642 (= res!515135 (not e!424625))))

(declare-fun res!515133 () Bool)

(assert (=> b!761642 (=> (not res!515133) (not e!424625))))

(assert (=> b!761642 (= res!515133 (validKeyInArray!0 (select (arr!20134 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!761643 () Bool)

(assert (=> b!761643 (= e!424626 call!34987)))

(declare-fun b!761644 () Bool)

(declare-fun contains!4072 (List!14189 (_ BitVec 64)) Bool)

(assert (=> b!761644 (= e!424625 (contains!4072 Nil!14186 (select (arr!20134 a!3186) #b00000000000000000000000000000000)))))

(declare-fun d!100759 () Bool)

(declare-fun res!515134 () Bool)

(assert (=> d!100759 (=> res!515134 e!424623)))

(assert (=> d!100759 (= res!515134 (bvsge #b00000000000000000000000000000000 (size!20555 a!3186)))))

(assert (=> d!100759 (= (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14186) e!424623)))

(declare-fun b!761645 () Bool)

(assert (=> b!761645 (= e!424624 e!424626)))

(assert (=> b!761645 (= c!83639 (validKeyInArray!0 (select (arr!20134 a!3186) #b00000000000000000000000000000000)))))

(assert (= (and d!100759 (not res!515134)) b!761642))

(assert (= (and b!761642 res!515133) b!761644))

(assert (= (and b!761642 res!515135) b!761645))

(assert (= (and b!761645 c!83639) b!761643))

(assert (= (and b!761645 (not c!83639)) b!761641))

(assert (= (or b!761643 b!761641) bm!34984))

(assert (=> bm!34984 m!708627))

(declare-fun m!708641 () Bool)

(assert (=> bm!34984 m!708641))

(assert (=> b!761642 m!708627))

(assert (=> b!761642 m!708627))

(assert (=> b!761642 m!708631))

(assert (=> b!761644 m!708627))

(assert (=> b!761644 m!708627))

(declare-fun m!708643 () Bool)

(assert (=> b!761644 m!708643))

(assert (=> b!761645 m!708627))

(assert (=> b!761645 m!708627))

(assert (=> b!761645 m!708631))

(assert (=> b!761468 d!100759))

(declare-fun b!761722 () Bool)

(declare-fun lt!339348 () SeekEntryResult!7741)

(assert (=> b!761722 (and (bvsge (index!33333 lt!339348) #b00000000000000000000000000000000) (bvslt (index!33333 lt!339348) (size!20555 a!3186)))))

(declare-fun res!515167 () Bool)

(assert (=> b!761722 (= res!515167 (= (select (arr!20134 a!3186) (index!33333 lt!339348)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!424672 () Bool)

(assert (=> b!761722 (=> res!515167 e!424672)))

(declare-fun b!761723 () Bool)

(declare-fun e!424675 () Bool)

(declare-fun e!424676 () Bool)

(assert (=> b!761723 (= e!424675 e!424676)))

(declare-fun res!515168 () Bool)

(assert (=> b!761723 (= res!515168 (and ((_ is Intermediate!7741) lt!339348) (not (undefined!8553 lt!339348)) (bvslt (x!64265 lt!339348) #b01111111111111111111111111111110) (bvsge (x!64265 lt!339348) #b00000000000000000000000000000000) (bvsge (x!64265 lt!339348) #b00000000000000000000000000000000)))))

(assert (=> b!761723 (=> (not res!515168) (not e!424676))))

(declare-fun d!100761 () Bool)

(assert (=> d!100761 e!424675))

(declare-fun c!83664 () Bool)

(assert (=> d!100761 (= c!83664 (and ((_ is Intermediate!7741) lt!339348) (undefined!8553 lt!339348)))))

(declare-fun e!424674 () SeekEntryResult!7741)

(assert (=> d!100761 (= lt!339348 e!424674)))

(declare-fun c!83665 () Bool)

(assert (=> d!100761 (= c!83665 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!339347 () (_ BitVec 64))

(assert (=> d!100761 (= lt!339347 (select (arr!20134 a!3186) (toIndex!0 (select (arr!20134 a!3186) j!159) mask!3328)))))

(assert (=> d!100761 (validMask!0 mask!3328)))

(assert (=> d!100761 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20134 a!3186) j!159) mask!3328) (select (arr!20134 a!3186) j!159) a!3186 mask!3328) lt!339348)))

(declare-fun b!761724 () Bool)

(assert (=> b!761724 (and (bvsge (index!33333 lt!339348) #b00000000000000000000000000000000) (bvslt (index!33333 lt!339348) (size!20555 a!3186)))))

(declare-fun res!515169 () Bool)

(assert (=> b!761724 (= res!515169 (= (select (arr!20134 a!3186) (index!33333 lt!339348)) (select (arr!20134 a!3186) j!159)))))

(assert (=> b!761724 (=> res!515169 e!424672)))

(assert (=> b!761724 (= e!424676 e!424672)))

(declare-fun b!761725 () Bool)

(assert (=> b!761725 (= e!424675 (bvsge (x!64265 lt!339348) #b01111111111111111111111111111110))))

(declare-fun b!761726 () Bool)

(declare-fun e!424673 () SeekEntryResult!7741)

(assert (=> b!761726 (= e!424674 e!424673)))

(declare-fun c!83663 () Bool)

(assert (=> b!761726 (= c!83663 (or (= lt!339347 (select (arr!20134 a!3186) j!159)) (= (bvadd lt!339347 lt!339347) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!761727 () Bool)

(assert (=> b!761727 (= e!424673 (Intermediate!7741 false (toIndex!0 (select (arr!20134 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!761728 () Bool)

(assert (=> b!761728 (= e!424673 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!20134 a!3186) j!159) mask!3328) #b00000000000000000000000000000000 mask!3328) (select (arr!20134 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!761729 () Bool)

(assert (=> b!761729 (and (bvsge (index!33333 lt!339348) #b00000000000000000000000000000000) (bvslt (index!33333 lt!339348) (size!20555 a!3186)))))

(assert (=> b!761729 (= e!424672 (= (select (arr!20134 a!3186) (index!33333 lt!339348)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!761730 () Bool)

(assert (=> b!761730 (= e!424674 (Intermediate!7741 true (toIndex!0 (select (arr!20134 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(assert (= (and d!100761 c!83665) b!761730))

(assert (= (and d!100761 (not c!83665)) b!761726))

(assert (= (and b!761726 c!83663) b!761727))

(assert (= (and b!761726 (not c!83663)) b!761728))

(assert (= (and d!100761 c!83664) b!761725))

(assert (= (and d!100761 (not c!83664)) b!761723))

(assert (= (and b!761723 res!515168) b!761724))

(assert (= (and b!761724 (not res!515169)) b!761722))

(assert (= (and b!761722 (not res!515167)) b!761729))

(declare-fun m!708663 () Bool)

(assert (=> b!761722 m!708663))

(assert (=> b!761728 m!708527))

(declare-fun m!708665 () Bool)

(assert (=> b!761728 m!708665))

(assert (=> b!761728 m!708665))

(assert (=> b!761728 m!708487))

(declare-fun m!708667 () Bool)

(assert (=> b!761728 m!708667))

(assert (=> b!761724 m!708663))

(assert (=> d!100761 m!708527))

(declare-fun m!708669 () Bool)

(assert (=> d!100761 m!708669))

(assert (=> d!100761 m!708505))

(assert (=> b!761729 m!708663))

(assert (=> b!761479 d!100761))

(declare-fun d!100773 () Bool)

(declare-fun lt!339359 () (_ BitVec 32))

(declare-fun lt!339358 () (_ BitVec 32))

(assert (=> d!100773 (= lt!339359 (bvmul (bvxor lt!339358 (bvlshr lt!339358 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!100773 (= lt!339358 ((_ extract 31 0) (bvand (bvxor (select (arr!20134 a!3186) j!159) (bvlshr (select (arr!20134 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!100773 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!515170 (let ((h!15269 ((_ extract 31 0) (bvand (bvxor (select (arr!20134 a!3186) j!159) (bvlshr (select (arr!20134 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!64273 (bvmul (bvxor h!15269 (bvlshr h!15269 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!64273 (bvlshr x!64273 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!515170 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!515170 #b00000000000000000000000000000000))))))

(assert (=> d!100773 (= (toIndex!0 (select (arr!20134 a!3186) j!159) mask!3328) (bvand (bvxor lt!339359 (bvlshr lt!339359 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!761479 d!100773))

(declare-fun b!761750 () Bool)

(declare-fun lt!339361 () SeekEntryResult!7741)

(assert (=> b!761750 (and (bvsge (index!33333 lt!339361) #b00000000000000000000000000000000) (bvslt (index!33333 lt!339361) (size!20555 a!3186)))))

(declare-fun res!515180 () Bool)

(assert (=> b!761750 (= res!515180 (= (select (arr!20134 a!3186) (index!33333 lt!339361)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!424690 () Bool)

(assert (=> b!761750 (=> res!515180 e!424690)))

(declare-fun b!761751 () Bool)

(declare-fun e!424693 () Bool)

(declare-fun e!424694 () Bool)

(assert (=> b!761751 (= e!424693 e!424694)))

(declare-fun res!515181 () Bool)

(assert (=> b!761751 (= res!515181 (and ((_ is Intermediate!7741) lt!339361) (not (undefined!8553 lt!339361)) (bvslt (x!64265 lt!339361) #b01111111111111111111111111111110) (bvsge (x!64265 lt!339361) #b00000000000000000000000000000000) (bvsge (x!64265 lt!339361) x!1131)))))

(assert (=> b!761751 (=> (not res!515181) (not e!424694))))

(declare-fun d!100781 () Bool)

(assert (=> d!100781 e!424693))

(declare-fun c!83672 () Bool)

(assert (=> d!100781 (= c!83672 (and ((_ is Intermediate!7741) lt!339361) (undefined!8553 lt!339361)))))

(declare-fun e!424692 () SeekEntryResult!7741)

(assert (=> d!100781 (= lt!339361 e!424692)))

(declare-fun c!83673 () Bool)

(assert (=> d!100781 (= c!83673 (bvsge x!1131 #b01111111111111111111111111111110))))

(declare-fun lt!339360 () (_ BitVec 64))

(assert (=> d!100781 (= lt!339360 (select (arr!20134 a!3186) index!1321))))

(assert (=> d!100781 (validMask!0 mask!3328)))

(assert (=> d!100781 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20134 a!3186) j!159) a!3186 mask!3328) lt!339361)))

(declare-fun b!761752 () Bool)

(assert (=> b!761752 (and (bvsge (index!33333 lt!339361) #b00000000000000000000000000000000) (bvslt (index!33333 lt!339361) (size!20555 a!3186)))))

(declare-fun res!515182 () Bool)

(assert (=> b!761752 (= res!515182 (= (select (arr!20134 a!3186) (index!33333 lt!339361)) (select (arr!20134 a!3186) j!159)))))

(assert (=> b!761752 (=> res!515182 e!424690)))

(assert (=> b!761752 (= e!424694 e!424690)))

(declare-fun b!761753 () Bool)

(assert (=> b!761753 (= e!424693 (bvsge (x!64265 lt!339361) #b01111111111111111111111111111110))))

(declare-fun b!761754 () Bool)

(declare-fun e!424691 () SeekEntryResult!7741)

(assert (=> b!761754 (= e!424692 e!424691)))

(declare-fun c!83671 () Bool)

(assert (=> b!761754 (= c!83671 (or (= lt!339360 (select (arr!20134 a!3186) j!159)) (= (bvadd lt!339360 lt!339360) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!761755 () Bool)

(assert (=> b!761755 (= e!424691 (Intermediate!7741 false index!1321 x!1131))))

(declare-fun b!761756 () Bool)

(assert (=> b!761756 (= e!424691 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) (select (arr!20134 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!761757 () Bool)

(assert (=> b!761757 (and (bvsge (index!33333 lt!339361) #b00000000000000000000000000000000) (bvslt (index!33333 lt!339361) (size!20555 a!3186)))))

(assert (=> b!761757 (= e!424690 (= (select (arr!20134 a!3186) (index!33333 lt!339361)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!761758 () Bool)

(assert (=> b!761758 (= e!424692 (Intermediate!7741 true index!1321 x!1131))))

(assert (= (and d!100781 c!83673) b!761758))

(assert (= (and d!100781 (not c!83673)) b!761754))

(assert (= (and b!761754 c!83671) b!761755))

(assert (= (and b!761754 (not c!83671)) b!761756))

(assert (= (and d!100781 c!83672) b!761753))

(assert (= (and d!100781 (not c!83672)) b!761751))

(assert (= (and b!761751 res!515181) b!761752))

(assert (= (and b!761752 (not res!515182)) b!761750))

(assert (= (and b!761750 (not res!515180)) b!761757))

(declare-fun m!708681 () Bool)

(assert (=> b!761750 m!708681))

(assert (=> b!761756 m!708601))

(assert (=> b!761756 m!708601))

(assert (=> b!761756 m!708487))

(declare-fun m!708683 () Bool)

(assert (=> b!761756 m!708683))

(assert (=> b!761752 m!708681))

(assert (=> d!100781 m!708613))

(assert (=> d!100781 m!708505))

(assert (=> b!761757 m!708681))

(assert (=> b!761480 d!100781))

(declare-fun d!100783 () Bool)

(assert (=> d!100783 (= (validMask!0 mask!3328) (and (or (= mask!3328 #b00000000000000000000000000000111) (= mask!3328 #b00000000000000000000000000001111) (= mask!3328 #b00000000000000000000000000011111) (= mask!3328 #b00000000000000000000000000111111) (= mask!3328 #b00000000000000000000000001111111) (= mask!3328 #b00000000000000000000000011111111) (= mask!3328 #b00000000000000000000000111111111) (= mask!3328 #b00000000000000000000001111111111) (= mask!3328 #b00000000000000000000011111111111) (= mask!3328 #b00000000000000000000111111111111) (= mask!3328 #b00000000000000000001111111111111) (= mask!3328 #b00000000000000000011111111111111) (= mask!3328 #b00000000000000000111111111111111) (= mask!3328 #b00000000000000001111111111111111) (= mask!3328 #b00000000000000011111111111111111) (= mask!3328 #b00000000000000111111111111111111) (= mask!3328 #b00000000000001111111111111111111) (= mask!3328 #b00000000000011111111111111111111) (= mask!3328 #b00000000000111111111111111111111) (= mask!3328 #b00000000001111111111111111111111) (= mask!3328 #b00000000011111111111111111111111) (= mask!3328 #b00000000111111111111111111111111) (= mask!3328 #b00000001111111111111111111111111) (= mask!3328 #b00000011111111111111111111111111) (= mask!3328 #b00000111111111111111111111111111) (= mask!3328 #b00001111111111111111111111111111) (= mask!3328 #b00011111111111111111111111111111) (= mask!3328 #b00111111111111111111111111111111)) (bvsle mask!3328 #b00111111111111111111111111111111)))))

(assert (=> start!66136 d!100783))

(declare-fun d!100793 () Bool)

(assert (=> d!100793 (= (array_inv!15908 a!3186) (bvsge (size!20555 a!3186) #b00000000000000000000000000000000))))

(assert (=> start!66136 d!100793))

(assert (=> b!761469 d!100745))

(declare-fun d!100795 () Bool)

(assert (=> d!100795 (= (validKeyInArray!0 k0!2102) (and (not (= k0!2102 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2102 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!761470 d!100795))

(declare-fun b!761785 () Bool)

(declare-fun e!424712 () SeekEntryResult!7741)

(assert (=> b!761785 (= e!424712 (Found!7741 resIntermediateIndex!5))))

(declare-fun b!761786 () Bool)

(declare-fun e!424710 () SeekEntryResult!7741)

(assert (=> b!761786 (= e!424710 (MissingVacant!7741 resIntermediateIndex!5))))

(declare-fun b!761787 () Bool)

(declare-fun e!424711 () SeekEntryResult!7741)

(assert (=> b!761787 (= e!424711 Undefined!7741)))

(declare-fun b!761788 () Bool)

(assert (=> b!761788 (= e!424711 e!424712)))

(declare-fun lt!339374 () (_ BitVec 64))

(declare-fun c!83686 () Bool)

(assert (=> b!761788 (= c!83686 (= lt!339374 (select (arr!20134 a!3186) j!159)))))

(declare-fun b!761789 () Bool)

(assert (=> b!761789 (= e!424710 (seekKeyOrZeroReturnVacant!0 (bvadd resIntermediateX!5 #b00000000000000000000000000000001) (nextIndex!0 resIntermediateIndex!5 resIntermediateX!5 mask!3328) resIntermediateIndex!5 (select (arr!20134 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!761790 () Bool)

(declare-fun c!83685 () Bool)

(assert (=> b!761790 (= c!83685 (= lt!339374 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!761790 (= e!424712 e!424710)))

(declare-fun d!100797 () Bool)

(declare-fun lt!339375 () SeekEntryResult!7741)

(assert (=> d!100797 (and (or ((_ is Undefined!7741) lt!339375) (not ((_ is Found!7741) lt!339375)) (and (bvsge (index!33332 lt!339375) #b00000000000000000000000000000000) (bvslt (index!33332 lt!339375) (size!20555 a!3186)))) (or ((_ is Undefined!7741) lt!339375) ((_ is Found!7741) lt!339375) (not ((_ is MissingVacant!7741) lt!339375)) (not (= (index!33334 lt!339375) resIntermediateIndex!5)) (and (bvsge (index!33334 lt!339375) #b00000000000000000000000000000000) (bvslt (index!33334 lt!339375) (size!20555 a!3186)))) (or ((_ is Undefined!7741) lt!339375) (ite ((_ is Found!7741) lt!339375) (= (select (arr!20134 a!3186) (index!33332 lt!339375)) (select (arr!20134 a!3186) j!159)) (and ((_ is MissingVacant!7741) lt!339375) (= (index!33334 lt!339375) resIntermediateIndex!5) (= (select (arr!20134 a!3186) (index!33334 lt!339375)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!100797 (= lt!339375 e!424711)))

(declare-fun c!83684 () Bool)

(assert (=> d!100797 (= c!83684 (bvsge resIntermediateX!5 #b01111111111111111111111111111110))))

(assert (=> d!100797 (= lt!339374 (select (arr!20134 a!3186) resIntermediateIndex!5))))

(assert (=> d!100797 (validMask!0 mask!3328)))

(assert (=> d!100797 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20134 a!3186) j!159) a!3186 mask!3328) lt!339375)))

(assert (= (and d!100797 c!83684) b!761787))

(assert (= (and d!100797 (not c!83684)) b!761788))

(assert (= (and b!761788 c!83686) b!761785))

(assert (= (and b!761788 (not c!83686)) b!761790))

(assert (= (and b!761790 c!83685) b!761786))

(assert (= (and b!761790 (not c!83685)) b!761789))

(declare-fun m!708701 () Bool)

(assert (=> b!761789 m!708701))

(assert (=> b!761789 m!708701))

(assert (=> b!761789 m!708487))

(declare-fun m!708703 () Bool)

(assert (=> b!761789 m!708703))

(declare-fun m!708705 () Bool)

(assert (=> d!100797 m!708705))

(declare-fun m!708707 () Bool)

(assert (=> d!100797 m!708707))

(assert (=> d!100797 m!708509))

(assert (=> d!100797 m!708505))

(assert (=> b!761481 d!100797))

(declare-fun d!100799 () Bool)

(assert (=> d!100799 (= (validKeyInArray!0 (select (arr!20134 a!3186) j!159)) (and (not (= (select (arr!20134 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!20134 a!3186) j!159) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!761471 d!100799))

(declare-fun b!761791 () Bool)

(declare-fun lt!339377 () SeekEntryResult!7741)

(assert (=> b!761791 (and (bvsge (index!33333 lt!339377) #b00000000000000000000000000000000) (bvslt (index!33333 lt!339377) (size!20555 lt!339252)))))

(declare-fun res!515190 () Bool)

(assert (=> b!761791 (= res!515190 (= (select (arr!20134 lt!339252) (index!33333 lt!339377)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!424713 () Bool)

(assert (=> b!761791 (=> res!515190 e!424713)))

(declare-fun b!761792 () Bool)

(declare-fun e!424716 () Bool)

(declare-fun e!424717 () Bool)

(assert (=> b!761792 (= e!424716 e!424717)))

(declare-fun res!515191 () Bool)

(assert (=> b!761792 (= res!515191 (and ((_ is Intermediate!7741) lt!339377) (not (undefined!8553 lt!339377)) (bvslt (x!64265 lt!339377) #b01111111111111111111111111111110) (bvsge (x!64265 lt!339377) #b00000000000000000000000000000000) (bvsge (x!64265 lt!339377) x!1131)))))

(assert (=> b!761792 (=> (not res!515191) (not e!424717))))

(declare-fun d!100801 () Bool)

(assert (=> d!100801 e!424716))

(declare-fun c!83688 () Bool)

(assert (=> d!100801 (= c!83688 (and ((_ is Intermediate!7741) lt!339377) (undefined!8553 lt!339377)))))

(declare-fun e!424715 () SeekEntryResult!7741)

(assert (=> d!100801 (= lt!339377 e!424715)))

(declare-fun c!83689 () Bool)

(assert (=> d!100801 (= c!83689 (bvsge x!1131 #b01111111111111111111111111111110))))

(declare-fun lt!339376 () (_ BitVec 64))

(assert (=> d!100801 (= lt!339376 (select (arr!20134 lt!339252) index!1321))))

(assert (=> d!100801 (validMask!0 mask!3328)))

(assert (=> d!100801 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!339248 lt!339252 mask!3328) lt!339377)))

(declare-fun b!761793 () Bool)

(assert (=> b!761793 (and (bvsge (index!33333 lt!339377) #b00000000000000000000000000000000) (bvslt (index!33333 lt!339377) (size!20555 lt!339252)))))

(declare-fun res!515192 () Bool)

(assert (=> b!761793 (= res!515192 (= (select (arr!20134 lt!339252) (index!33333 lt!339377)) lt!339248))))

(assert (=> b!761793 (=> res!515192 e!424713)))

(assert (=> b!761793 (= e!424717 e!424713)))

(declare-fun b!761794 () Bool)

(assert (=> b!761794 (= e!424716 (bvsge (x!64265 lt!339377) #b01111111111111111111111111111110))))

(declare-fun b!761795 () Bool)

(declare-fun e!424714 () SeekEntryResult!7741)

(assert (=> b!761795 (= e!424715 e!424714)))

(declare-fun c!83687 () Bool)

(assert (=> b!761795 (= c!83687 (or (= lt!339376 lt!339248) (= (bvadd lt!339376 lt!339376) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!761796 () Bool)

(assert (=> b!761796 (= e!424714 (Intermediate!7741 false index!1321 x!1131))))

(declare-fun b!761797 () Bool)

(assert (=> b!761797 (= e!424714 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) lt!339248 lt!339252 mask!3328))))

(declare-fun b!761798 () Bool)

(assert (=> b!761798 (and (bvsge (index!33333 lt!339377) #b00000000000000000000000000000000) (bvslt (index!33333 lt!339377) (size!20555 lt!339252)))))

(assert (=> b!761798 (= e!424713 (= (select (arr!20134 lt!339252) (index!33333 lt!339377)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!761799 () Bool)

(assert (=> b!761799 (= e!424715 (Intermediate!7741 true index!1321 x!1131))))

(assert (= (and d!100801 c!83689) b!761799))

(assert (= (and d!100801 (not c!83689)) b!761795))

(assert (= (and b!761795 c!83687) b!761796))

(assert (= (and b!761795 (not c!83687)) b!761797))

(assert (= (and d!100801 c!83688) b!761794))

(assert (= (and d!100801 (not c!83688)) b!761792))

(assert (= (and b!761792 res!515191) b!761793))

(assert (= (and b!761793 (not res!515192)) b!761791))

(assert (= (and b!761791 (not res!515190)) b!761798))

(declare-fun m!708709 () Bool)

(assert (=> b!761791 m!708709))

(assert (=> b!761797 m!708601))

(assert (=> b!761797 m!708601))

(declare-fun m!708711 () Bool)

(assert (=> b!761797 m!708711))

(assert (=> b!761793 m!708709))

(declare-fun m!708713 () Bool)

(assert (=> d!100801 m!708713))

(assert (=> d!100801 m!708505))

(assert (=> b!761798 m!708709))

(assert (=> b!761472 d!100801))

(declare-fun b!761814 () Bool)

(declare-fun lt!339387 () SeekEntryResult!7741)

(assert (=> b!761814 (and (bvsge (index!33333 lt!339387) #b00000000000000000000000000000000) (bvslt (index!33333 lt!339387) (size!20555 lt!339252)))))

(declare-fun res!515197 () Bool)

(assert (=> b!761814 (= res!515197 (= (select (arr!20134 lt!339252) (index!33333 lt!339387)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!424727 () Bool)

(assert (=> b!761814 (=> res!515197 e!424727)))

(declare-fun b!761815 () Bool)

(declare-fun e!424730 () Bool)

(declare-fun e!424731 () Bool)

(assert (=> b!761815 (= e!424730 e!424731)))

(declare-fun res!515198 () Bool)

(assert (=> b!761815 (= res!515198 (and ((_ is Intermediate!7741) lt!339387) (not (undefined!8553 lt!339387)) (bvslt (x!64265 lt!339387) #b01111111111111111111111111111110) (bvsge (x!64265 lt!339387) #b00000000000000000000000000000000) (bvsge (x!64265 lt!339387) #b00000000000000000000000000000000)))))

(assert (=> b!761815 (=> (not res!515198) (not e!424731))))

(declare-fun d!100803 () Bool)

(assert (=> d!100803 e!424730))

(declare-fun c!83696 () Bool)

(assert (=> d!100803 (= c!83696 (and ((_ is Intermediate!7741) lt!339387) (undefined!8553 lt!339387)))))

(declare-fun e!424729 () SeekEntryResult!7741)

(assert (=> d!100803 (= lt!339387 e!424729)))

(declare-fun c!83697 () Bool)

(assert (=> d!100803 (= c!83697 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!339386 () (_ BitVec 64))

(assert (=> d!100803 (= lt!339386 (select (arr!20134 lt!339252) (toIndex!0 lt!339248 mask!3328)))))

(assert (=> d!100803 (validMask!0 mask!3328)))

(assert (=> d!100803 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!339248 mask!3328) lt!339248 lt!339252 mask!3328) lt!339387)))

(declare-fun b!761816 () Bool)

(assert (=> b!761816 (and (bvsge (index!33333 lt!339387) #b00000000000000000000000000000000) (bvslt (index!33333 lt!339387) (size!20555 lt!339252)))))

(declare-fun res!515199 () Bool)

(assert (=> b!761816 (= res!515199 (= (select (arr!20134 lt!339252) (index!33333 lt!339387)) lt!339248))))

(assert (=> b!761816 (=> res!515199 e!424727)))

(assert (=> b!761816 (= e!424731 e!424727)))

(declare-fun b!761817 () Bool)

(assert (=> b!761817 (= e!424730 (bvsge (x!64265 lt!339387) #b01111111111111111111111111111110))))

(declare-fun b!761818 () Bool)

(declare-fun e!424728 () SeekEntryResult!7741)

(assert (=> b!761818 (= e!424729 e!424728)))

(declare-fun c!83695 () Bool)

(assert (=> b!761818 (= c!83695 (or (= lt!339386 lt!339248) (= (bvadd lt!339386 lt!339386) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!761819 () Bool)

(assert (=> b!761819 (= e!424728 (Intermediate!7741 false (toIndex!0 lt!339248 mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!761820 () Bool)

(assert (=> b!761820 (= e!424728 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!339248 mask!3328) #b00000000000000000000000000000000 mask!3328) lt!339248 lt!339252 mask!3328))))

(declare-fun b!761821 () Bool)

(assert (=> b!761821 (and (bvsge (index!33333 lt!339387) #b00000000000000000000000000000000) (bvslt (index!33333 lt!339387) (size!20555 lt!339252)))))

(assert (=> b!761821 (= e!424727 (= (select (arr!20134 lt!339252) (index!33333 lt!339387)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!761822 () Bool)

(assert (=> b!761822 (= e!424729 (Intermediate!7741 true (toIndex!0 lt!339248 mask!3328) #b00000000000000000000000000000000))))

(assert (= (and d!100803 c!83697) b!761822))

(assert (= (and d!100803 (not c!83697)) b!761818))

(assert (= (and b!761818 c!83695) b!761819))

(assert (= (and b!761818 (not c!83695)) b!761820))

(assert (= (and d!100803 c!83696) b!761817))

(assert (= (and d!100803 (not c!83696)) b!761815))

(assert (= (and b!761815 res!515198) b!761816))

(assert (= (and b!761816 (not res!515199)) b!761814))

(assert (= (and b!761814 (not res!515197)) b!761821))

(declare-fun m!708721 () Bool)

(assert (=> b!761814 m!708721))

(assert (=> b!761820 m!708519))

(declare-fun m!708723 () Bool)

(assert (=> b!761820 m!708723))

(assert (=> b!761820 m!708723))

(declare-fun m!708725 () Bool)

(assert (=> b!761820 m!708725))

(assert (=> b!761816 m!708721))

(assert (=> d!100803 m!708519))

(declare-fun m!708727 () Bool)

(assert (=> d!100803 m!708727))

(assert (=> d!100803 m!708505))

(assert (=> b!761821 m!708721))

(assert (=> b!761472 d!100803))

(declare-fun d!100807 () Bool)

(declare-fun lt!339389 () (_ BitVec 32))

(declare-fun lt!339388 () (_ BitVec 32))

(assert (=> d!100807 (= lt!339389 (bvmul (bvxor lt!339388 (bvlshr lt!339388 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!100807 (= lt!339388 ((_ extract 31 0) (bvand (bvxor lt!339248 (bvlshr lt!339248 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!100807 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!515170 (let ((h!15269 ((_ extract 31 0) (bvand (bvxor lt!339248 (bvlshr lt!339248 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!64273 (bvmul (bvxor h!15269 (bvlshr h!15269 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!64273 (bvlshr x!64273 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!515170 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!515170 #b00000000000000000000000000000000))))))

(assert (=> d!100807 (= (toIndex!0 lt!339248 mask!3328) (bvand (bvxor lt!339389 (bvlshr lt!339389 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!761472 d!100807))

(declare-fun b!761823 () Bool)

(declare-fun c!83699 () Bool)

(declare-fun lt!339392 () (_ BitVec 64))

(assert (=> b!761823 (= c!83699 (= lt!339392 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!424734 () SeekEntryResult!7741)

(declare-fun e!424732 () SeekEntryResult!7741)

(assert (=> b!761823 (= e!424734 e!424732)))

(declare-fun b!761824 () Bool)

(declare-fun e!424733 () SeekEntryResult!7741)

(assert (=> b!761824 (= e!424733 e!424734)))

(declare-fun lt!339390 () SeekEntryResult!7741)

(assert (=> b!761824 (= lt!339392 (select (arr!20134 a!3186) (index!33333 lt!339390)))))

(declare-fun c!83700 () Bool)

(assert (=> b!761824 (= c!83700 (= lt!339392 k0!2102))))

(declare-fun b!761825 () Bool)

(assert (=> b!761825 (= e!424734 (Found!7741 (index!33333 lt!339390)))))

(declare-fun b!761826 () Bool)

(assert (=> b!761826 (= e!424733 Undefined!7741)))

(declare-fun d!100809 () Bool)

(declare-fun lt!339391 () SeekEntryResult!7741)

(assert (=> d!100809 (and (or ((_ is Undefined!7741) lt!339391) (not ((_ is Found!7741) lt!339391)) (and (bvsge (index!33332 lt!339391) #b00000000000000000000000000000000) (bvslt (index!33332 lt!339391) (size!20555 a!3186)))) (or ((_ is Undefined!7741) lt!339391) ((_ is Found!7741) lt!339391) (not ((_ is MissingZero!7741) lt!339391)) (and (bvsge (index!33331 lt!339391) #b00000000000000000000000000000000) (bvslt (index!33331 lt!339391) (size!20555 a!3186)))) (or ((_ is Undefined!7741) lt!339391) ((_ is Found!7741) lt!339391) ((_ is MissingZero!7741) lt!339391) (not ((_ is MissingVacant!7741) lt!339391)) (and (bvsge (index!33334 lt!339391) #b00000000000000000000000000000000) (bvslt (index!33334 lt!339391) (size!20555 a!3186)))) (or ((_ is Undefined!7741) lt!339391) (ite ((_ is Found!7741) lt!339391) (= (select (arr!20134 a!3186) (index!33332 lt!339391)) k0!2102) (ite ((_ is MissingZero!7741) lt!339391) (= (select (arr!20134 a!3186) (index!33331 lt!339391)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!7741) lt!339391) (= (select (arr!20134 a!3186) (index!33334 lt!339391)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!100809 (= lt!339391 e!424733)))

(declare-fun c!83698 () Bool)

(assert (=> d!100809 (= c!83698 (and ((_ is Intermediate!7741) lt!339390) (undefined!8553 lt!339390)))))

(assert (=> d!100809 (= lt!339390 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2102 mask!3328) k0!2102 a!3186 mask!3328))))

(assert (=> d!100809 (validMask!0 mask!3328)))

(assert (=> d!100809 (= (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328) lt!339391)))

(declare-fun b!761827 () Bool)

(assert (=> b!761827 (= e!424732 (seekKeyOrZeroReturnVacant!0 (x!64265 lt!339390) (index!33333 lt!339390) (index!33333 lt!339390) k0!2102 a!3186 mask!3328))))

(declare-fun b!761828 () Bool)

(assert (=> b!761828 (= e!424732 (MissingZero!7741 (index!33333 lt!339390)))))

(assert (= (and d!100809 c!83698) b!761826))

(assert (= (and d!100809 (not c!83698)) b!761824))

(assert (= (and b!761824 c!83700) b!761825))

(assert (= (and b!761824 (not c!83700)) b!761823))

(assert (= (and b!761823 c!83699) b!761828))

(assert (= (and b!761823 (not c!83699)) b!761827))

(declare-fun m!708729 () Bool)

(assert (=> b!761824 m!708729))

(declare-fun m!708731 () Bool)

(assert (=> d!100809 m!708731))

(assert (=> d!100809 m!708505))

(declare-fun m!708733 () Bool)

(assert (=> d!100809 m!708733))

(declare-fun m!708735 () Bool)

(assert (=> d!100809 m!708735))

(declare-fun m!708737 () Bool)

(assert (=> d!100809 m!708737))

(declare-fun m!708739 () Bool)

(assert (=> d!100809 m!708739))

(assert (=> d!100809 m!708735))

(declare-fun m!708741 () Bool)

(assert (=> b!761827 m!708741))

(assert (=> b!761474 d!100809))

(check-sat (not d!100745) (not b!761827) (not b!761644) (not b!761728) (not b!761549) (not d!100801) (not b!761618) (not b!761797) (not d!100809) (not d!100797) (not b!761820) (not b!761569) (not b!761642) (not b!761551) (not bm!34981) (not b!761621) (not b!761756) (not b!761789) (not bm!34984) (not bm!34980) (not b!761619) (not b!761645) (not d!100781) (not d!100761) (not d!100803) (not d!100739) (not d!100741) (not b!761605))
(check-sat)
