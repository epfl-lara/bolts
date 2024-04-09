; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27404 () Bool)

(assert start!27404)

(declare-fun b!283503 () Bool)

(declare-fun e!179877 () Bool)

(declare-fun e!179875 () Bool)

(assert (=> b!283503 (= e!179877 (not e!179875))))

(declare-fun res!146469 () Bool)

(assert (=> b!283503 (=> res!146469 e!179875)))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-datatypes ((array!14148 0))(
  ( (array!14149 (arr!6714 (Array (_ BitVec 32) (_ BitVec 64))) (size!7066 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14148)

(assert (=> b!283503 (= res!146469 (bvslt startIndex!26 (bvsub (size!7066 a!3325) #b00000000000000000000000000000001)))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14148 (_ BitVec 32)) Bool)

(assert (=> b!283503 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868)))

(declare-datatypes ((Unit!9029 0))(
  ( (Unit!9030) )
))
(declare-fun lt!140174 () Unit!9029)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!14148 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!9029)

(assert (=> b!283503 (= lt!140174 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun lt!140173 () array!14148)

(declare-datatypes ((SeekEntryResult!1883 0))(
  ( (MissingZero!1883 (index!9702 (_ BitVec 32))) (Found!1883 (index!9703 (_ BitVec 32))) (Intermediate!1883 (undefined!2695 Bool) (index!9704 (_ BitVec 32)) (x!27873 (_ BitVec 32))) (Undefined!1883) (MissingVacant!1883 (index!9705 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14148 (_ BitVec 32)) SeekEntryResult!1883)

(assert (=> b!283503 (= (seekEntryOrOpen!0 (select (arr!6714 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6714 a!3325) i!1267 k!2581) startIndex!26) lt!140173 mask!3868))))

(declare-fun lt!140176 () Unit!9029)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!14148 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!9029)

(assert (=> b!283503 (= lt!140176 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k!2581 startIndex!26 mask!3868))))

(declare-datatypes ((List!4543 0))(
  ( (Nil!4540) (Cons!4539 (h!5209 (_ BitVec 64)) (t!9633 List!4543)) )
))
(declare-fun arrayNoDuplicates!0 (array!14148 (_ BitVec 32) List!4543) Bool)

(assert (=> b!283503 (arrayNoDuplicates!0 lt!140173 #b00000000000000000000000000000000 Nil!4540)))

(declare-fun lt!140175 () Unit!9029)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!14148 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4543) Unit!9029)

(assert (=> b!283503 (= lt!140175 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4540))))

(declare-fun b!283504 () Bool)

(declare-fun res!146461 () Bool)

(declare-fun e!179878 () Bool)

(assert (=> b!283504 (=> (not res!146461) (not e!179878))))

(declare-fun arrayContainsKey!0 (array!14148 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!283504 (= res!146461 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!283505 () Bool)

(declare-fun res!146468 () Bool)

(assert (=> b!283505 (=> (not res!146468) (not e!179878))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!283505 (= res!146468 (validKeyInArray!0 k!2581))))

(declare-fun b!283506 () Bool)

(declare-fun res!146464 () Bool)

(assert (=> b!283506 (=> (not res!146464) (not e!179878))))

(assert (=> b!283506 (= res!146464 (and (= (size!7066 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7066 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7066 a!3325))))))

(declare-fun b!283507 () Bool)

(declare-fun res!146466 () Bool)

(declare-fun e!179876 () Bool)

(assert (=> b!283507 (=> (not res!146466) (not e!179876))))

(assert (=> b!283507 (= res!146466 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!283508 () Bool)

(assert (=> b!283508 (= e!179878 e!179876)))

(declare-fun res!146463 () Bool)

(assert (=> b!283508 (=> (not res!146463) (not e!179876))))

(declare-fun lt!140177 () SeekEntryResult!1883)

(assert (=> b!283508 (= res!146463 (or (= lt!140177 (MissingZero!1883 i!1267)) (= lt!140177 (MissingVacant!1883 i!1267))))))

(assert (=> b!283508 (= lt!140177 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun res!146462 () Bool)

(assert (=> start!27404 (=> (not res!146462) (not e!179878))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27404 (= res!146462 (validMask!0 mask!3868))))

(assert (=> start!27404 e!179878))

(declare-fun array_inv!4668 (array!14148) Bool)

(assert (=> start!27404 (array_inv!4668 a!3325)))

(assert (=> start!27404 true))

(declare-fun b!283509 () Bool)

(declare-fun res!146467 () Bool)

(assert (=> b!283509 (=> (not res!146467) (not e!179877))))

(assert (=> b!283509 (= res!146467 (validKeyInArray!0 (select (arr!6714 a!3325) startIndex!26)))))

(declare-fun b!283510 () Bool)

(assert (=> b!283510 (= e!179876 e!179877)))

(declare-fun res!146465 () Bool)

(assert (=> b!283510 (=> (not res!146465) (not e!179877))))

(assert (=> b!283510 (= res!146465 (not (= startIndex!26 i!1267)))))

(assert (=> b!283510 (= lt!140173 (array!14149 (store (arr!6714 a!3325) i!1267 k!2581) (size!7066 a!3325)))))

(declare-fun b!283511 () Bool)

(declare-fun res!146460 () Bool)

(assert (=> b!283511 (=> (not res!146460) (not e!179878))))

(assert (=> b!283511 (= res!146460 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4540))))

(declare-fun b!283512 () Bool)

(assert (=> b!283512 (= e!179875 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 lt!140173 mask!3868))))

(assert (= (and start!27404 res!146462) b!283506))

(assert (= (and b!283506 res!146464) b!283505))

(assert (= (and b!283505 res!146468) b!283511))

(assert (= (and b!283511 res!146460) b!283504))

(assert (= (and b!283504 res!146461) b!283508))

(assert (= (and b!283508 res!146463) b!283507))

(assert (= (and b!283507 res!146466) b!283510))

(assert (= (and b!283510 res!146465) b!283509))

(assert (= (and b!283509 res!146467) b!283503))

(assert (= (and b!283503 (not res!146469)) b!283512))

(declare-fun m!298463 () Bool)

(assert (=> b!283505 m!298463))

(declare-fun m!298465 () Bool)

(assert (=> b!283507 m!298465))

(declare-fun m!298467 () Bool)

(assert (=> b!283510 m!298467))

(declare-fun m!298469 () Bool)

(assert (=> b!283509 m!298469))

(assert (=> b!283509 m!298469))

(declare-fun m!298471 () Bool)

(assert (=> b!283509 m!298471))

(declare-fun m!298473 () Bool)

(assert (=> b!283503 m!298473))

(declare-fun m!298475 () Bool)

(assert (=> b!283503 m!298475))

(declare-fun m!298477 () Bool)

(assert (=> b!283503 m!298477))

(declare-fun m!298479 () Bool)

(assert (=> b!283503 m!298479))

(assert (=> b!283503 m!298477))

(assert (=> b!283503 m!298467))

(declare-fun m!298481 () Bool)

(assert (=> b!283503 m!298481))

(assert (=> b!283503 m!298469))

(declare-fun m!298483 () Bool)

(assert (=> b!283503 m!298483))

(declare-fun m!298485 () Bool)

(assert (=> b!283503 m!298485))

(assert (=> b!283503 m!298469))

(declare-fun m!298487 () Bool)

(assert (=> b!283503 m!298487))

(declare-fun m!298489 () Bool)

(assert (=> b!283512 m!298489))

(declare-fun m!298491 () Bool)

(assert (=> b!283508 m!298491))

(declare-fun m!298493 () Bool)

(assert (=> b!283504 m!298493))

(declare-fun m!298495 () Bool)

(assert (=> b!283511 m!298495))

(declare-fun m!298497 () Bool)

(assert (=> start!27404 m!298497))

(declare-fun m!298499 () Bool)

(assert (=> start!27404 m!298499))

(push 1)

(assert (not b!283509))

(assert (not start!27404))

(assert (not b!283507))

(assert (not b!283503))

(assert (not b!283511))

(assert (not b!283505))

(assert (not b!283508))

(assert (not b!283504))

(assert (not b!283512))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!65283 () Bool)

(assert (=> d!65283 (= (validMask!0 mask!3868) (and (or (= mask!3868 #b00000000000000000000000000000111) (= mask!3868 #b00000000000000000000000000001111) (= mask!3868 #b00000000000000000000000000011111) (= mask!3868 #b00000000000000000000000000111111) (= mask!3868 #b00000000000000000000000001111111) (= mask!3868 #b00000000000000000000000011111111) (= mask!3868 #b00000000000000000000000111111111) (= mask!3868 #b00000000000000000000001111111111) (= mask!3868 #b00000000000000000000011111111111) (= mask!3868 #b00000000000000000000111111111111) (= mask!3868 #b00000000000000000001111111111111) (= mask!3868 #b00000000000000000011111111111111) (= mask!3868 #b00000000000000000111111111111111) (= mask!3868 #b00000000000000001111111111111111) (= mask!3868 #b00000000000000011111111111111111) (= mask!3868 #b00000000000000111111111111111111) (= mask!3868 #b00000000000001111111111111111111) (= mask!3868 #b00000000000011111111111111111111) (= mask!3868 #b00000000000111111111111111111111) (= mask!3868 #b00000000001111111111111111111111) (= mask!3868 #b00000000011111111111111111111111) (= mask!3868 #b00000000111111111111111111111111) (= mask!3868 #b00000001111111111111111111111111) (= mask!3868 #b00000011111111111111111111111111) (= mask!3868 #b00000111111111111111111111111111) (= mask!3868 #b00001111111111111111111111111111) (= mask!3868 #b00011111111111111111111111111111) (= mask!3868 #b00111111111111111111111111111111)) (bvsle mask!3868 #b00111111111111111111111111111111)))))

(assert (=> start!27404 d!65283))

(declare-fun d!65287 () Bool)

(assert (=> d!65287 (= (array_inv!4668 a!3325) (bvsge (size!7066 a!3325) #b00000000000000000000000000000000))))

(assert (=> start!27404 d!65287))

(declare-fun b!283560 () Bool)

(declare-fun e!179913 () Bool)

(declare-fun call!25493 () Bool)

(assert (=> b!283560 (= e!179913 call!25493)))

(declare-fun b!283562 () Bool)

(declare-fun e!179914 () Bool)

(assert (=> b!283562 (= e!179914 call!25493)))

(declare-fun b!283563 () Bool)

(declare-fun e!179912 () Bool)

(assert (=> b!283563 (= e!179912 e!179914)))

(declare-fun c!46088 () Bool)

(assert (=> b!283563 (= c!46088 (validKeyInArray!0 (select (arr!6714 a!3325) #b00000000000000000000000000000000)))))

(declare-fun bm!25490 () Bool)

(assert (=> bm!25490 (= call!25493 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3325 mask!3868))))

(declare-fun b!283561 () Bool)

(assert (=> b!283561 (= e!179914 e!179913)))

(declare-fun lt!140194 () (_ BitVec 64))

(assert (=> b!283561 (= lt!140194 (select (arr!6714 a!3325) #b00000000000000000000000000000000))))

(declare-fun lt!140195 () Unit!9029)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!14148 (_ BitVec 64) (_ BitVec 32)) Unit!9029)

(assert (=> b!283561 (= lt!140195 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3325 lt!140194 #b00000000000000000000000000000000))))

(assert (=> b!283561 (arrayContainsKey!0 a!3325 lt!140194 #b00000000000000000000000000000000)))

(declare-fun lt!140193 () Unit!9029)

(assert (=> b!283561 (= lt!140193 lt!140195)))

(declare-fun res!146489 () Bool)

(assert (=> b!283561 (= res!146489 (= (seekEntryOrOpen!0 (select (arr!6714 a!3325) #b00000000000000000000000000000000) a!3325 mask!3868) (Found!1883 #b00000000000000000000000000000000)))))

(assert (=> b!283561 (=> (not res!146489) (not e!179913))))

(declare-fun d!65289 () Bool)

(declare-fun res!146490 () Bool)

(assert (=> d!65289 (=> res!146490 e!179912)))

(assert (=> d!65289 (= res!146490 (bvsge #b00000000000000000000000000000000 (size!7066 a!3325)))))

(assert (=> d!65289 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868) e!179912)))

(assert (= (and d!65289 (not res!146490)) b!283563))

(assert (= (and b!283563 c!46088) b!283561))

(assert (= (and b!283563 (not c!46088)) b!283562))

(assert (= (and b!283561 res!146489) b!283560))

(assert (= (or b!283560 b!283562) bm!25490))

(declare-fun m!298527 () Bool)

(assert (=> b!283563 m!298527))

(assert (=> b!283563 m!298527))

(declare-fun m!298529 () Bool)

(assert (=> b!283563 m!298529))

(declare-fun m!298531 () Bool)

(assert (=> bm!25490 m!298531))

(assert (=> b!283561 m!298527))

(declare-fun m!298533 () Bool)

(assert (=> b!283561 m!298533))

(declare-fun m!298535 () Bool)

(assert (=> b!283561 m!298535))

(assert (=> b!283561 m!298527))

(declare-fun m!298537 () Bool)

(assert (=> b!283561 m!298537))

(assert (=> b!283507 d!65289))

(declare-fun b!283564 () Bool)

(declare-fun e!179916 () Bool)

(declare-fun call!25494 () Bool)

(assert (=> b!283564 (= e!179916 call!25494)))

(declare-fun b!283566 () Bool)

(declare-fun e!179917 () Bool)

(assert (=> b!283566 (= e!179917 call!25494)))

(declare-fun b!283567 () Bool)

(declare-fun e!179915 () Bool)

(assert (=> b!283567 (= e!179915 e!179917)))

(declare-fun c!46089 () Bool)

(assert (=> b!283567 (= c!46089 (validKeyInArray!0 (select (arr!6714 lt!140173) startIndex!26)))))

(declare-fun bm!25491 () Bool)

(assert (=> bm!25491 (= call!25494 (arrayForallSeekEntryOrOpenFound!0 (bvadd startIndex!26 #b00000000000000000000000000000001) lt!140173 mask!3868))))

(declare-fun b!283565 () Bool)

(assert (=> b!283565 (= e!179917 e!179916)))

(declare-fun lt!140197 () (_ BitVec 64))

(assert (=> b!283565 (= lt!140197 (select (arr!6714 lt!140173) startIndex!26))))

(declare-fun lt!140198 () Unit!9029)

(assert (=> b!283565 (= lt!140198 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!140173 lt!140197 startIndex!26))))

(assert (=> b!283565 (arrayContainsKey!0 lt!140173 lt!140197 #b00000000000000000000000000000000)))

(declare-fun lt!140196 () Unit!9029)

(assert (=> b!283565 (= lt!140196 lt!140198)))

(declare-fun res!146491 () Bool)

(assert (=> b!283565 (= res!146491 (= (seekEntryOrOpen!0 (select (arr!6714 lt!140173) startIndex!26) lt!140173 mask!3868) (Found!1883 startIndex!26)))))

(assert (=> b!283565 (=> (not res!146491) (not e!179916))))

(declare-fun d!65299 () Bool)

(declare-fun res!146492 () Bool)

(assert (=> d!65299 (=> res!146492 e!179915)))

(assert (=> d!65299 (= res!146492 (bvsge startIndex!26 (size!7066 lt!140173)))))

(assert (=> d!65299 (= (arrayForallSeekEntryOrOpenFound!0 startIndex!26 lt!140173 mask!3868) e!179915)))

(assert (= (and d!65299 (not res!146492)) b!283567))

(assert (= (and b!283567 c!46089) b!283565))

(assert (= (and b!283567 (not c!46089)) b!283566))

(assert (= (and b!283565 res!146491) b!283564))

(assert (= (or b!283564 b!283566) bm!25491))

(declare-fun m!298539 () Bool)

(assert (=> b!283567 m!298539))

(assert (=> b!283567 m!298539))

(declare-fun m!298541 () Bool)

(assert (=> b!283567 m!298541))

(declare-fun m!298543 () Bool)

(assert (=> bm!25491 m!298543))

(assert (=> b!283565 m!298539))

(declare-fun m!298545 () Bool)

(assert (=> b!283565 m!298545))

(declare-fun m!298547 () Bool)

(assert (=> b!283565 m!298547))

(assert (=> b!283565 m!298539))

(declare-fun m!298549 () Bool)

(assert (=> b!283565 m!298549))

(assert (=> b!283512 d!65299))

(declare-fun b!283594 () Bool)

(declare-fun e!179940 () Bool)

(declare-fun call!25501 () Bool)

(assert (=> b!283594 (= e!179940 call!25501)))

(declare-fun d!65301 () Bool)

(declare-fun res!146507 () Bool)

(declare-fun e!179938 () Bool)

(assert (=> d!65301 (=> res!146507 e!179938)))

(assert (=> d!65301 (= res!146507 (bvsge #b00000000000000000000000000000000 (size!7066 a!3325)))))

(assert (=> d!65301 (= (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4540) e!179938)))

(declare-fun b!283595 () Bool)

(assert (=> b!283595 (= e!179940 call!25501)))

(declare-fun b!283596 () Bool)

(declare-fun e!179939 () Bool)

(assert (=> b!283596 (= e!179939 e!179940)))

(declare-fun c!46096 () Bool)

(assert (=> b!283596 (= c!46096 (validKeyInArray!0 (select (arr!6714 a!3325) #b00000000000000000000000000000000)))))

(declare-fun b!283597 () Bool)

(declare-fun e!179941 () Bool)

(declare-fun contains!1993 (List!4543 (_ BitVec 64)) Bool)

(assert (=> b!283597 (= e!179941 (contains!1993 Nil!4540 (select (arr!6714 a!3325) #b00000000000000000000000000000000)))))

(declare-fun bm!25498 () Bool)

(assert (=> bm!25498 (= call!25501 (arrayNoDuplicates!0 a!3325 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!46096 (Cons!4539 (select (arr!6714 a!3325) #b00000000000000000000000000000000) Nil!4540) Nil!4540)))))

(declare-fun b!283598 () Bool)

(assert (=> b!283598 (= e!179938 e!179939)))

(declare-fun res!146509 () Bool)

(assert (=> b!283598 (=> (not res!146509) (not e!179939))))

(assert (=> b!283598 (= res!146509 (not e!179941))))

(declare-fun res!146508 () Bool)

(assert (=> b!283598 (=> (not res!146508) (not e!179941))))

(assert (=> b!283598 (= res!146508 (validKeyInArray!0 (select (arr!6714 a!3325) #b00000000000000000000000000000000)))))

(assert (= (and d!65301 (not res!146507)) b!283598))

(assert (= (and b!283598 res!146508) b!283597))

(assert (= (and b!283598 res!146509) b!283596))

(assert (= (and b!283596 c!46096) b!283594))

(assert (= (and b!283596 (not c!46096)) b!283595))

(assert (= (or b!283594 b!283595) bm!25498))

(assert (=> b!283596 m!298527))

(assert (=> b!283596 m!298527))

(assert (=> b!283596 m!298529))

(assert (=> b!283597 m!298527))

(assert (=> b!283597 m!298527))

(declare-fun m!298573 () Bool)

(assert (=> b!283597 m!298573))

(assert (=> bm!25498 m!298527))

(declare-fun m!298575 () Bool)

(assert (=> bm!25498 m!298575))

(assert (=> b!283598 m!298527))

(assert (=> b!283598 m!298527))

(assert (=> b!283598 m!298529))

(assert (=> b!283511 d!65301))

(declare-fun d!65307 () Bool)

(assert (=> d!65307 (= (validKeyInArray!0 k!2581) (and (not (= k!2581 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2581 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!283505 d!65307))

(declare-fun d!65309 () Bool)

(declare-fun res!146517 () Bool)

(declare-fun e!179952 () Bool)

(assert (=> d!65309 (=> res!146517 e!179952)))

(assert (=> d!65309 (= res!146517 (= (select (arr!6714 a!3325) #b00000000000000000000000000000000) k!2581))))

(assert (=> d!65309 (= (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000) e!179952)))

(declare-fun b!283612 () Bool)

(declare-fun e!179953 () Bool)

(assert (=> b!283612 (= e!179952 e!179953)))

(declare-fun res!146518 () Bool)

(assert (=> b!283612 (=> (not res!146518) (not e!179953))))

(assert (=> b!283612 (= res!146518 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7066 a!3325)))))

(declare-fun b!283613 () Bool)

(assert (=> b!283613 (= e!179953 (arrayContainsKey!0 a!3325 k!2581 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!65309 (not res!146517)) b!283612))

(assert (= (and b!283612 res!146518) b!283613))

(assert (=> d!65309 m!298527))

(declare-fun m!298595 () Bool)

(assert (=> b!283613 m!298595))

(assert (=> b!283504 d!65309))

(declare-fun d!65315 () Bool)

(assert (=> d!65315 (= (validKeyInArray!0 (select (arr!6714 a!3325) startIndex!26)) (and (not (= (select (arr!6714 a!3325) startIndex!26) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!6714 a!3325) startIndex!26) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!283509 d!65315))

(declare-fun d!65317 () Bool)

(declare-fun e!179966 () Bool)

(assert (=> d!65317 e!179966))

(declare-fun res!146530 () Bool)

(assert (=> d!65317 (=> (not res!146530) (not e!179966))))

(assert (=> d!65317 (= res!146530 (and (or (bvslt i!1267 #b00000000000000000000000000000000) (bvsge i!1267 (size!7066 a!3325)) (and (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7066 a!3325)))) (or (bvslt i!1267 #b00000000000000000000000000000000) (bvsge i!1267 (size!7066 a!3325)) (and (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7066 a!3325)))) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7066 a!3325))))))

(declare-fun lt!140228 () Unit!9029)

(declare-fun choose!83 (array!14148 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!9029)

(assert (=> d!65317 (= lt!140228 (choose!83 a!3325 i!1267 k!2581 startIndex!26 mask!3868))))

(assert (=> d!65317 (validMask!0 mask!3868)))

(assert (=> d!65317 (= (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k!2581 startIndex!26 mask!3868) lt!140228)))

(declare-fun b!283627 () Bool)

(assert (=> b!283627 (= e!179966 (= (seekEntryOrOpen!0 (select (arr!6714 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6714 a!3325) i!1267 k!2581) startIndex!26) (array!14149 (store (arr!6714 a!3325) i!1267 k!2581) (size!7066 a!3325)) mask!3868)))))

(assert (= (and d!65317 res!146530) b!283627))

(declare-fun m!298615 () Bool)

(assert (=> d!65317 m!298615))

(assert (=> d!65317 m!298497))

(assert (=> b!283627 m!298469))

(assert (=> b!283627 m!298469))

(assert (=> b!283627 m!298487))

(assert (=> b!283627 m!298477))

(declare-fun m!298617 () Bool)

(assert (=> b!283627 m!298617))

(assert (=> b!283627 m!298467))

(assert (=> b!283627 m!298477))

(assert (=> b!283503 d!65317))

(declare-fun b!283700 () Bool)

(declare-fun c!46129 () Bool)

(declare-fun lt!140273 () (_ BitVec 64))

(assert (=> b!283700 (= c!46129 (= lt!140273 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!180013 () SeekEntryResult!1883)

(declare-fun e!180012 () SeekEntryResult!1883)

(assert (=> b!283700 (= e!180013 e!180012)))

(declare-fun lt!140272 () SeekEntryResult!1883)

(declare-fun b!283702 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14148 (_ BitVec 32)) SeekEntryResult!1883)

(assert (=> b!283702 (= e!180012 (seekKeyOrZeroReturnVacant!0 (x!27873 lt!140272) (index!9704 lt!140272) (index!9704 lt!140272) (select (arr!6714 a!3325) startIndex!26) a!3325 mask!3868))))

(declare-fun b!283703 () Bool)

(assert (=> b!283703 (= e!180013 (Found!1883 (index!9704 lt!140272)))))

(declare-fun b!283704 () Bool)

(declare-fun e!180014 () SeekEntryResult!1883)

(assert (=> b!283704 (= e!180014 e!180013)))

(assert (=> b!283704 (= lt!140273 (select (arr!6714 a!3325) (index!9704 lt!140272)))))

(declare-fun c!46130 () Bool)

(assert (=> b!283704 (= c!46130 (= lt!140273 (select (arr!6714 a!3325) startIndex!26)))))

(declare-fun b!283705 () Bool)

(assert (=> b!283705 (= e!180014 Undefined!1883)))

(declare-fun b!283701 () Bool)

(assert (=> b!283701 (= e!180012 (MissingZero!1883 (index!9704 lt!140272)))))

(declare-fun d!65327 () Bool)

(declare-fun lt!140271 () SeekEntryResult!1883)

(assert (=> d!65327 (and (or (is-Undefined!1883 lt!140271) (not (is-Found!1883 lt!140271)) (and (bvsge (index!9703 lt!140271) #b00000000000000000000000000000000) (bvslt (index!9703 lt!140271) (size!7066 a!3325)))) (or (is-Undefined!1883 lt!140271) (is-Found!1883 lt!140271) (not (is-MissingZero!1883 lt!140271)) (and (bvsge (index!9702 lt!140271) #b00000000000000000000000000000000) (bvslt (index!9702 lt!140271) (size!7066 a!3325)))) (or (is-Undefined!1883 lt!140271) (is-Found!1883 lt!140271) (is-MissingZero!1883 lt!140271) (not (is-MissingVacant!1883 lt!140271)) (and (bvsge (index!9705 lt!140271) #b00000000000000000000000000000000) (bvslt (index!9705 lt!140271) (size!7066 a!3325)))) (or (is-Undefined!1883 lt!140271) (ite (is-Found!1883 lt!140271) (= (select (arr!6714 a!3325) (index!9703 lt!140271)) (select (arr!6714 a!3325) startIndex!26)) (ite (is-MissingZero!1883 lt!140271) (= (select (arr!6714 a!3325) (index!9702 lt!140271)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!1883 lt!140271) (= (select (arr!6714 a!3325) (index!9705 lt!140271)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!65327 (= lt!140271 e!180014)))

(declare-fun c!46128 () Bool)

(assert (=> d!65327 (= c!46128 (and (is-Intermediate!1883 lt!140272) (undefined!2695 lt!140272)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14148 (_ BitVec 32)) SeekEntryResult!1883)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!65327 (= lt!140272 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!6714 a!3325) startIndex!26) mask!3868) (select (arr!6714 a!3325) startIndex!26) a!3325 mask!3868))))

(assert (=> d!65327 (validMask!0 mask!3868)))

(assert (=> d!65327 (= (seekEntryOrOpen!0 (select (arr!6714 a!3325) startIndex!26) a!3325 mask!3868) lt!140271)))

(assert (= (and d!65327 c!46128) b!283705))

(assert (= (and d!65327 (not c!46128)) b!283704))

(assert (= (and b!283704 c!46130) b!283703))

(assert (= (and b!283704 (not c!46130)) b!283700))

(assert (= (and b!283700 c!46129) b!283701))

(assert (= (and b!283700 (not c!46129)) b!283702))

(assert (=> b!283702 m!298469))

(declare-fun m!298695 () Bool)

(assert (=> b!283702 m!298695))

(declare-fun m!298699 () Bool)

(assert (=> b!283704 m!298699))

(assert (=> d!65327 m!298469))

(declare-fun m!298701 () Bool)

(assert (=> d!65327 m!298701))

(assert (=> d!65327 m!298497))

(declare-fun m!298703 () Bool)

(assert (=> d!65327 m!298703))

(declare-fun m!298705 () Bool)

(assert (=> d!65327 m!298705))

(assert (=> d!65327 m!298701))

(assert (=> d!65327 m!298469))

(declare-fun m!298707 () Bool)

(assert (=> d!65327 m!298707))

(declare-fun m!298709 () Bool)

(assert (=> d!65327 m!298709))

(assert (=> b!283503 d!65327))

(declare-fun d!65351 () Bool)

(declare-fun e!180020 () Bool)

(assert (=> d!65351 e!180020))

(declare-fun res!146554 () Bool)

(assert (=> d!65351 (=> (not res!146554) (not e!180020))))

(assert (=> d!65351 (= res!146554 (and (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7066 a!3325))))))

(declare-fun lt!140279 () Unit!9029)

(declare-fun choose!41 (array!14148 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4543) Unit!9029)

(assert (=> d!65351 (= lt!140279 (choose!41 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4540))))

(assert (=> d!65351 (bvslt (size!7066 a!3325) #b01111111111111111111111111111111)))

(assert (=> d!65351 (= (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4540) lt!140279)))

(declare-fun b!283711 () Bool)

(assert (=> b!283711 (= e!180020 (arrayNoDuplicates!0 (array!14149 (store (arr!6714 a!3325) i!1267 k!2581) (size!7066 a!3325)) #b00000000000000000000000000000000 Nil!4540))))

(assert (= (and d!65351 res!146554) b!283711))

(declare-fun m!298713 () Bool)

(assert (=> d!65351 m!298713))

(assert (=> b!283711 m!298467))

(declare-fun m!298717 () Bool)

(assert (=> b!283711 m!298717))

(assert (=> b!283503 d!65351))

(declare-fun d!65355 () Bool)

(assert (=> d!65355 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868)))

(declare-fun lt!140282 () Unit!9029)

(declare-fun choose!38 (array!14148 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!9029)

(assert (=> d!65355 (= lt!140282 (choose!38 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26))))

(assert (=> d!65355 (validMask!0 mask!3868)))

(assert (=> d!65355 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26) lt!140282)))

(declare-fun bs!10074 () Bool)

(assert (= bs!10074 d!65355))

(assert (=> bs!10074 m!298481))

(declare-fun m!298719 () Bool)

(assert (=> bs!10074 m!298719))

(assert (=> bs!10074 m!298497))

(assert (=> b!283503 d!65355))

(declare-fun b!283722 () Bool)

(declare-fun e!180030 () Bool)

(declare-fun call!25511 () Bool)

(assert (=> b!283722 (= e!180030 call!25511)))

(declare-fun b!283724 () Bool)

(declare-fun e!180031 () Bool)

(assert (=> b!283724 (= e!180031 call!25511)))

(declare-fun b!283725 () Bool)

(declare-fun e!180029 () Bool)

(assert (=> b!283725 (= e!180029 e!180031)))

(declare-fun c!46133 () Bool)

(assert (=> b!283725 (= c!46133 (validKeyInArray!0 (select (arr!6714 a!3325) startIndex!26)))))

(declare-fun bm!25508 () Bool)

(assert (=> bm!25508 (= call!25511 (arrayForallSeekEntryOrOpenFound!0 (bvadd startIndex!26 #b00000000000000000000000000000001) a!3325 mask!3868))))

(declare-fun b!283723 () Bool)

(assert (=> b!283723 (= e!180031 e!180030)))

(declare-fun lt!140284 () (_ BitVec 64))

(assert (=> b!283723 (= lt!140284 (select (arr!6714 a!3325) startIndex!26))))

(declare-fun lt!140285 () Unit!9029)

(assert (=> b!283723 (= lt!140285 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3325 lt!140284 startIndex!26))))

(assert (=> b!283723 (arrayContainsKey!0 a!3325 lt!140284 #b00000000000000000000000000000000)))

(declare-fun lt!140283 () Unit!9029)

(assert (=> b!283723 (= lt!140283 lt!140285)))

(declare-fun res!146561 () Bool)

(assert (=> b!283723 (= res!146561 (= (seekEntryOrOpen!0 (select (arr!6714 a!3325) startIndex!26) a!3325 mask!3868) (Found!1883 startIndex!26)))))

(assert (=> b!283723 (=> (not res!146561) (not e!180030))))

(declare-fun d!65357 () Bool)

(declare-fun res!146562 () Bool)

(assert (=> d!65357 (=> res!146562 e!180029)))

(assert (=> d!65357 (= res!146562 (bvsge startIndex!26 (size!7066 a!3325)))))

(assert (=> d!65357 (= (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868) e!180029)))

(assert (= (and d!65357 (not res!146562)) b!283725))

(assert (= (and b!283725 c!46133) b!283723))

(assert (= (and b!283725 (not c!46133)) b!283724))

(assert (= (and b!283723 res!146561) b!283722))

(assert (= (or b!283722 b!283724) bm!25508))

(assert (=> b!283725 m!298469))

(assert (=> b!283725 m!298469))

(assert (=> b!283725 m!298471))

(declare-fun m!298721 () Bool)

(assert (=> bm!25508 m!298721))

(assert (=> b!283723 m!298469))

(declare-fun m!298723 () Bool)

(assert (=> b!283723 m!298723))

(declare-fun m!298725 () Bool)

(assert (=> b!283723 m!298725))

(assert (=> b!283723 m!298469))

(assert (=> b!283723 m!298487))

(assert (=> b!283503 d!65357))

(declare-fun b!283726 () Bool)

(declare-fun c!46135 () Bool)

(declare-fun lt!140288 () (_ BitVec 64))

(assert (=> b!283726 (= c!46135 (= lt!140288 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!180033 () SeekEntryResult!1883)

(declare-fun e!180032 () SeekEntryResult!1883)

(assert (=> b!283726 (= e!180033 e!180032)))

(declare-fun lt!140287 () SeekEntryResult!1883)

(declare-fun b!283728 () Bool)

(assert (=> b!283728 (= e!180032 (seekKeyOrZeroReturnVacant!0 (x!27873 lt!140287) (index!9704 lt!140287) (index!9704 lt!140287) (select (store (arr!6714 a!3325) i!1267 k!2581) startIndex!26) lt!140173 mask!3868))))

(declare-fun b!283729 () Bool)

(assert (=> b!283729 (= e!180033 (Found!1883 (index!9704 lt!140287)))))

(declare-fun b!283730 () Bool)

(declare-fun e!180034 () SeekEntryResult!1883)

(assert (=> b!283730 (= e!180034 e!180033)))

(assert (=> b!283730 (= lt!140288 (select (arr!6714 lt!140173) (index!9704 lt!140287)))))

(declare-fun c!46136 () Bool)

(assert (=> b!283730 (= c!46136 (= lt!140288 (select (store (arr!6714 a!3325) i!1267 k!2581) startIndex!26)))))

(declare-fun b!283731 () Bool)

(assert (=> b!283731 (= e!180034 Undefined!1883)))

(declare-fun b!283727 () Bool)

(assert (=> b!283727 (= e!180032 (MissingZero!1883 (index!9704 lt!140287)))))

(declare-fun d!65359 () Bool)

(declare-fun lt!140286 () SeekEntryResult!1883)

(assert (=> d!65359 (and (or (is-Undefined!1883 lt!140286) (not (is-Found!1883 lt!140286)) (and (bvsge (index!9703 lt!140286) #b00000000000000000000000000000000) (bvslt (index!9703 lt!140286) (size!7066 lt!140173)))) (or (is-Undefined!1883 lt!140286) (is-Found!1883 lt!140286) (not (is-MissingZero!1883 lt!140286)) (and (bvsge (index!9702 lt!140286) #b00000000000000000000000000000000) (bvslt (index!9702 lt!140286) (size!7066 lt!140173)))) (or (is-Undefined!1883 lt!140286) (is-Found!1883 lt!140286) (is-MissingZero!1883 lt!140286) (not (is-MissingVacant!1883 lt!140286)) (and (bvsge (index!9705 lt!140286) #b00000000000000000000000000000000) (bvslt (index!9705 lt!140286) (size!7066 lt!140173)))) (or (is-Undefined!1883 lt!140286) (ite (is-Found!1883 lt!140286) (= (select (arr!6714 lt!140173) (index!9703 lt!140286)) (select (store (arr!6714 a!3325) i!1267 k!2581) startIndex!26)) (ite (is-MissingZero!1883 lt!140286) (= (select (arr!6714 lt!140173) (index!9702 lt!140286)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!1883 lt!140286) (= (select (arr!6714 lt!140173) (index!9705 lt!140286)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!65359 (= lt!140286 e!180034)))

(declare-fun c!46134 () Bool)

(assert (=> d!65359 (= c!46134 (and (is-Intermediate!1883 lt!140287) (undefined!2695 lt!140287)))))

(assert (=> d!65359 (= lt!140287 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!6714 a!3325) i!1267 k!2581) startIndex!26) mask!3868) (select (store (arr!6714 a!3325) i!1267 k!2581) startIndex!26) lt!140173 mask!3868))))

(assert (=> d!65359 (validMask!0 mask!3868)))

(assert (=> d!65359 (= (seekEntryOrOpen!0 (select (store (arr!6714 a!3325) i!1267 k!2581) startIndex!26) lt!140173 mask!3868) lt!140286)))

(assert (= (and d!65359 c!46134) b!283731))

(assert (= (and d!65359 (not c!46134)) b!283730))

(assert (= (and b!283730 c!46136) b!283729))

(assert (= (and b!283730 (not c!46136)) b!283726))

(assert (= (and b!283726 c!46135) b!283727))

(assert (= (and b!283726 (not c!46135)) b!283728))

(assert (=> b!283728 m!298477))

(declare-fun m!298727 () Bool)

(assert (=> b!283728 m!298727))

(declare-fun m!298729 () Bool)

(assert (=> b!283730 m!298729))

(assert (=> d!65359 m!298477))

(declare-fun m!298731 () Bool)

(assert (=> d!65359 m!298731))

(assert (=> d!65359 m!298497))

(declare-fun m!298733 () Bool)

(assert (=> d!65359 m!298733))

(declare-fun m!298735 () Bool)

(assert (=> d!65359 m!298735))

(assert (=> d!65359 m!298731))

(assert (=> d!65359 m!298477))

(declare-fun m!298737 () Bool)

(assert (=> d!65359 m!298737))

(declare-fun m!298739 () Bool)

(assert (=> d!65359 m!298739))

(assert (=> b!283503 d!65359))

(declare-fun b!283737 () Bool)

(declare-fun e!180041 () Bool)

(declare-fun call!25513 () Bool)

(assert (=> b!283737 (= e!180041 call!25513)))

(declare-fun d!65361 () Bool)

(declare-fun res!146566 () Bool)

(declare-fun e!180039 () Bool)

(assert (=> d!65361 (=> res!146566 e!180039)))

(assert (=> d!65361 (= res!146566 (bvsge #b00000000000000000000000000000000 (size!7066 lt!140173)))))

(assert (=> d!65361 (= (arrayNoDuplicates!0 lt!140173 #b00000000000000000000000000000000 Nil!4540) e!180039)))

(declare-fun b!283738 () Bool)

(assert (=> b!283738 (= e!180041 call!25513)))

(declare-fun b!283739 () Bool)

(declare-fun e!180040 () Bool)

(assert (=> b!283739 (= e!180040 e!180041)))

(declare-fun c!46138 () Bool)

(assert (=> b!283739 (= c!46138 (validKeyInArray!0 (select (arr!6714 lt!140173) #b00000000000000000000000000000000)))))

(declare-fun b!283740 () Bool)

(declare-fun e!180042 () Bool)

(assert (=> b!283740 (= e!180042 (contains!1993 Nil!4540 (select (arr!6714 lt!140173) #b00000000000000000000000000000000)))))

(declare-fun bm!25510 () Bool)

(assert (=> bm!25510 (= call!25513 (arrayNoDuplicates!0 lt!140173 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!46138 (Cons!4539 (select (arr!6714 lt!140173) #b00000000000000000000000000000000) Nil!4540) Nil!4540)))))

(declare-fun b!283741 () Bool)

(assert (=> b!283741 (= e!180039 e!180040)))

(declare-fun res!146568 () Bool)

(assert (=> b!283741 (=> (not res!146568) (not e!180040))))

(assert (=> b!283741 (= res!146568 (not e!180042))))

(declare-fun res!146567 () Bool)

(assert (=> b!283741 (=> (not res!146567) (not e!180042))))

(assert (=> b!283741 (= res!146567 (validKeyInArray!0 (select (arr!6714 lt!140173) #b00000000000000000000000000000000)))))

(assert (= (and d!65361 (not res!146566)) b!283741))

(assert (= (and b!283741 res!146567) b!283740))

(assert (= (and b!283741 res!146568) b!283739))

(assert (= (and b!283739 c!46138) b!283737))

(assert (= (and b!283739 (not c!46138)) b!283738))

(assert (= (or b!283737 b!283738) bm!25510))

(declare-fun m!298747 () Bool)

(assert (=> b!283739 m!298747))

(assert (=> b!283739 m!298747))

(declare-fun m!298751 () Bool)

(assert (=> b!283739 m!298751))

(assert (=> b!283740 m!298747))

(assert (=> b!283740 m!298747))

(declare-fun m!298753 () Bool)

(assert (=> b!283740 m!298753))

(assert (=> bm!25510 m!298747))

(declare-fun m!298755 () Bool)

(assert (=> bm!25510 m!298755))

(assert (=> b!283741 m!298747))

(assert (=> b!283741 m!298747))

(assert (=> b!283741 m!298751))

(assert (=> b!283503 d!65361))

(declare-fun b!283742 () Bool)

(declare-fun c!46140 () Bool)

(declare-fun lt!140291 () (_ BitVec 64))

(assert (=> b!283742 (= c!46140 (= lt!140291 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!180044 () SeekEntryResult!1883)

(declare-fun e!180043 () SeekEntryResult!1883)

(assert (=> b!283742 (= e!180044 e!180043)))

(declare-fun b!283744 () Bool)

(declare-fun lt!140290 () SeekEntryResult!1883)

(assert (=> b!283744 (= e!180043 (seekKeyOrZeroReturnVacant!0 (x!27873 lt!140290) (index!9704 lt!140290) (index!9704 lt!140290) k!2581 a!3325 mask!3868))))

(declare-fun b!283745 () Bool)

(assert (=> b!283745 (= e!180044 (Found!1883 (index!9704 lt!140290)))))

(declare-fun b!283746 () Bool)

(declare-fun e!180045 () SeekEntryResult!1883)

(assert (=> b!283746 (= e!180045 e!180044)))

(assert (=> b!283746 (= lt!140291 (select (arr!6714 a!3325) (index!9704 lt!140290)))))

(declare-fun c!46141 () Bool)

(assert (=> b!283746 (= c!46141 (= lt!140291 k!2581))))

(declare-fun b!283747 () Bool)

(assert (=> b!283747 (= e!180045 Undefined!1883)))

(declare-fun b!283743 () Bool)

(assert (=> b!283743 (= e!180043 (MissingZero!1883 (index!9704 lt!140290)))))

(declare-fun d!65365 () Bool)

(declare-fun lt!140289 () SeekEntryResult!1883)

(assert (=> d!65365 (and (or (is-Undefined!1883 lt!140289) (not (is-Found!1883 lt!140289)) (and (bvsge (index!9703 lt!140289) #b00000000000000000000000000000000) (bvslt (index!9703 lt!140289) (size!7066 a!3325)))) (or (is-Undefined!1883 lt!140289) (is-Found!1883 lt!140289) (not (is-MissingZero!1883 lt!140289)) (and (bvsge (index!9702 lt!140289) #b00000000000000000000000000000000) (bvslt (index!9702 lt!140289) (size!7066 a!3325)))) (or (is-Undefined!1883 lt!140289) (is-Found!1883 lt!140289) (is-MissingZero!1883 lt!140289) (not (is-MissingVacant!1883 lt!140289)) (and (bvsge (index!9705 lt!140289) #b00000000000000000000000000000000) (bvslt (index!9705 lt!140289) (size!7066 a!3325)))) (or (is-Undefined!1883 lt!140289) (ite (is-Found!1883 lt!140289) (= (select (arr!6714 a!3325) (index!9703 lt!140289)) k!2581) (ite (is-MissingZero!1883 lt!140289) (= (select (arr!6714 a!3325) (index!9702 lt!140289)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!1883 lt!140289) (= (select (arr!6714 a!3325) (index!9705 lt!140289)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!65365 (= lt!140289 e!180045)))

(declare-fun c!46139 () Bool)

(assert (=> d!65365 (= c!46139 (and (is-Intermediate!1883 lt!140290) (undefined!2695 lt!140290)))))

(assert (=> d!65365 (= lt!140290 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2581 mask!3868) k!2581 a!3325 mask!3868))))

(assert (=> d!65365 (validMask!0 mask!3868)))

(assert (=> d!65365 (= (seekEntryOrOpen!0 k!2581 a!3325 mask!3868) lt!140289)))

(assert (= (and d!65365 c!46139) b!283747))

(assert (= (and d!65365 (not c!46139)) b!283746))

(assert (= (and b!283746 c!46141) b!283745))

(assert (= (and b!283746 (not c!46141)) b!283742))

(assert (= (and b!283742 c!46140) b!283743))

(assert (= (and b!283742 (not c!46140)) b!283744))

(declare-fun m!298757 () Bool)

(assert (=> b!283744 m!298757))

(declare-fun m!298759 () Bool)

(assert (=> b!283746 m!298759))

(declare-fun m!298761 () Bool)

(assert (=> d!65365 m!298761))

(assert (=> d!65365 m!298497))

(declare-fun m!298763 () Bool)

(assert (=> d!65365 m!298763))

(declare-fun m!298765 () Bool)

(assert (=> d!65365 m!298765))

(assert (=> d!65365 m!298761))

(declare-fun m!298767 () Bool)

(assert (=> d!65365 m!298767))

(declare-fun m!298769 () Bool)

(assert (=> d!65365 m!298769))

(assert (=> b!283508 d!65365))

(push 1)

(assert (not b!283725))

(assert (not b!283563))

(assert (not d!65351))

(assert (not b!283565))

(assert (not d!65365))

(assert (not b!283740))

(assert (not d!65359))

(assert (not b!283613))

(assert (not d!65355))

(assert (not bm!25490))

(assert (not b!283711))

(assert (not b!283723))

(assert (not bm!25498))

(assert (not b!283596))

(assert (not b!283728))

(assert (not b!283741))

(assert (not b!283744))

(assert (not b!283627))

(assert (not b!283567))

(assert (not b!283597))

(assert (not d!65317))

(assert (not bm!25491))

(assert (not b!283598))

(assert (not b!283561))

(assert (not b!283739))

(assert (not bm!25508))

(assert (not bm!25510))

(assert (not b!283702))

(assert (not d!65327))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!65509 () Bool)

(assert (=> d!65509 (= (validKeyInArray!0 (select (arr!6714 a!3325) #b00000000000000000000000000000000)) (and (not (= (select (arr!6714 a!3325) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!6714 a!3325) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!283596 d!65509))

(declare-fun d!65511 () Bool)

(assert (=> d!65511 (= (validKeyInArray!0 (select (arr!6714 lt!140173) #b00000000000000000000000000000000)) (and (not (= (select (arr!6714 lt!140173) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!6714 lt!140173) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!283741 d!65511))

(declare-fun b!284049 () Bool)

(declare-fun e!180236 () Bool)

(declare-fun e!180235 () Bool)

(assert (=> b!284049 (= e!180236 e!180235)))

(declare-fun res!146674 () Bool)

(declare-fun lt!140414 () SeekEntryResult!1883)

(assert (=> b!284049 (= res!146674 (and (is-Intermediate!1883 lt!140414) (not (undefined!2695 lt!140414)) (bvslt (x!27873 lt!140414) #b01111111111111111111111111111110) (bvsge (x!27873 lt!140414) #b00000000000000000000000000000000) (bvsge (x!27873 lt!140414) #b00000000000000000000000000000000)))))

(assert (=> b!284049 (=> (not res!146674) (not e!180235))))

(declare-fun b!284050 () Bool)

(assert (=> b!284050 (and (bvsge (index!9704 lt!140414) #b00000000000000000000000000000000) (bvslt (index!9704 lt!140414) (size!7066 a!3325)))))

(declare-fun res!146673 () Bool)

(assert (=> b!284050 (= res!146673 (= (select (arr!6714 a!3325) (index!9704 lt!140414)) k!2581))))

(declare-fun e!180239 () Bool)

(assert (=> b!284050 (=> res!146673 e!180239)))

(assert (=> b!284050 (= e!180235 e!180239)))

(declare-fun b!284051 () Bool)

(declare-fun e!180237 () SeekEntryResult!1883)

(assert (=> b!284051 (= e!180237 (Intermediate!1883 true (toIndex!0 k!2581 mask!3868) #b00000000000000000000000000000000))))

(declare-fun b!284052 () Bool)

(declare-fun e!180238 () SeekEntryResult!1883)

(assert (=> b!284052 (= e!180238 (Intermediate!1883 false (toIndex!0 k!2581 mask!3868) #b00000000000000000000000000000000))))

(declare-fun b!284053 () Bool)

(assert (=> b!284053 (= e!180236 (bvsge (x!27873 lt!140414) #b01111111111111111111111111111110))))

(declare-fun b!284054 () Bool)

(assert (=> b!284054 (and (bvsge (index!9704 lt!140414) #b00000000000000000000000000000000) (bvslt (index!9704 lt!140414) (size!7066 a!3325)))))

(assert (=> b!284054 (= e!180239 (= (select (arr!6714 a!3325) (index!9704 lt!140414)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!65513 () Bool)

(assert (=> d!65513 e!180236))

(declare-fun c!46242 () Bool)

(assert (=> d!65513 (= c!46242 (and (is-Intermediate!1883 lt!140414) (undefined!2695 lt!140414)))))

(assert (=> d!65513 (= lt!140414 e!180237)))

(declare-fun c!46243 () Bool)

(assert (=> d!65513 (= c!46243 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!140413 () (_ BitVec 64))

(assert (=> d!65513 (= lt!140413 (select (arr!6714 a!3325) (toIndex!0 k!2581 mask!3868)))))

(assert (=> d!65513 (validMask!0 mask!3868)))

(assert (=> d!65513 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2581 mask!3868) k!2581 a!3325 mask!3868) lt!140414)))

(declare-fun b!284055 () Bool)

(assert (=> b!284055 (and (bvsge (index!9704 lt!140414) #b00000000000000000000000000000000) (bvslt (index!9704 lt!140414) (size!7066 a!3325)))))

(declare-fun res!146672 () Bool)

(assert (=> b!284055 (= res!146672 (= (select (arr!6714 a!3325) (index!9704 lt!140414)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!284055 (=> res!146672 e!180239)))

(declare-fun b!284056 () Bool)

(assert (=> b!284056 (= e!180237 e!180238)))

(declare-fun c!46244 () Bool)

(assert (=> b!284056 (= c!46244 (or (= lt!140413 k!2581) (= (bvadd lt!140413 lt!140413) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!284057 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!284057 (= e!180238 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!2581 mask!3868) #b00000000000000000000000000000000 mask!3868) k!2581 a!3325 mask!3868))))

(assert (= (and d!65513 c!46243) b!284051))

(assert (= (and d!65513 (not c!46243)) b!284056))

(assert (= (and b!284056 c!46244) b!284052))

(assert (= (and b!284056 (not c!46244)) b!284057))

(assert (= (and d!65513 c!46242) b!284053))

(assert (= (and d!65513 (not c!46242)) b!284049))

(assert (= (and b!284049 res!146674) b!284050))

(assert (= (and b!284050 (not res!146673)) b!284055))

(assert (= (and b!284055 (not res!146672)) b!284054))

(assert (=> b!284057 m!298761))

(declare-fun m!299125 () Bool)

(assert (=> b!284057 m!299125))

(assert (=> b!284057 m!299125))

(declare-fun m!299127 () Bool)

(assert (=> b!284057 m!299127))

(declare-fun m!299129 () Bool)

(assert (=> b!284055 m!299129))

(assert (=> d!65513 m!298761))

(declare-fun m!299131 () Bool)

(assert (=> d!65513 m!299131))

(assert (=> d!65513 m!298497))

(assert (=> b!284050 m!299129))

(assert (=> b!284054 m!299129))

(assert (=> d!65365 d!65513))

(declare-fun d!65515 () Bool)

(declare-fun lt!140420 () (_ BitVec 32))

(declare-fun lt!140419 () (_ BitVec 32))

(assert (=> d!65515 (= lt!140420 (bvmul (bvxor lt!140419 (bvlshr lt!140419 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!65515 (= lt!140419 ((_ extract 31 0) (bvand (bvxor k!2581 (bvlshr k!2581 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!65515 (and (bvsge mask!3868 #b00000000000000000000000000000000) (let ((res!146675 (let ((h!5212 ((_ extract 31 0) (bvand (bvxor k!2581 (bvlshr k!2581 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!27881 (bvmul (bvxor h!5212 (bvlshr h!5212 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!27881 (bvlshr x!27881 #b00000000000000000000000000001101)) mask!3868))))) (and (bvslt res!146675 (bvadd mask!3868 #b00000000000000000000000000000001)) (bvsge res!146675 #b00000000000000000000000000000000))))))

(assert (=> d!65515 (= (toIndex!0 k!2581 mask!3868) (bvand (bvxor lt!140420 (bvlshr lt!140420 #b00000000000000000000000000001101)) mask!3868))))

(assert (=> d!65365 d!65515))

(assert (=> d!65365 d!65283))

(declare-fun b!284058 () Bool)

(declare-fun e!180242 () Bool)

(declare-fun call!25527 () Bool)

(assert (=> b!284058 (= e!180242 call!25527)))

(declare-fun d!65517 () Bool)

(declare-fun res!146676 () Bool)

(declare-fun e!180240 () Bool)

(assert (=> d!65517 (=> res!146676 e!180240)))

(assert (=> d!65517 (= res!146676 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7066 lt!140173)))))

(assert (=> d!65517 (= (arrayNoDuplicates!0 lt!140173 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!46138 (Cons!4539 (select (arr!6714 lt!140173) #b00000000000000000000000000000000) Nil!4540) Nil!4540)) e!180240)))

(declare-fun b!284059 () Bool)

(assert (=> b!284059 (= e!180242 call!25527)))

(declare-fun b!284060 () Bool)

(declare-fun e!180241 () Bool)

(assert (=> b!284060 (= e!180241 e!180242)))

(declare-fun c!46245 () Bool)

(assert (=> b!284060 (= c!46245 (validKeyInArray!0 (select (arr!6714 lt!140173) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!284061 () Bool)

(declare-fun e!180243 () Bool)

(assert (=> b!284061 (= e!180243 (contains!1993 (ite c!46138 (Cons!4539 (select (arr!6714 lt!140173) #b00000000000000000000000000000000) Nil!4540) Nil!4540) (select (arr!6714 lt!140173) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun bm!25524 () Bool)

(assert (=> bm!25524 (= call!25527 (arrayNoDuplicates!0 lt!140173 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!46245 (Cons!4539 (select (arr!6714 lt!140173) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!46138 (Cons!4539 (select (arr!6714 lt!140173) #b00000000000000000000000000000000) Nil!4540) Nil!4540)) (ite c!46138 (Cons!4539 (select (arr!6714 lt!140173) #b00000000000000000000000000000000) Nil!4540) Nil!4540))))))

(declare-fun b!284062 () Bool)

(assert (=> b!284062 (= e!180240 e!180241)))

(declare-fun res!146678 () Bool)

(assert (=> b!284062 (=> (not res!146678) (not e!180241))))

(assert (=> b!284062 (= res!146678 (not e!180243))))

(declare-fun res!146677 () Bool)

(assert (=> b!284062 (=> (not res!146677) (not e!180243))))

(assert (=> b!284062 (= res!146677 (validKeyInArray!0 (select (arr!6714 lt!140173) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (= (and d!65517 (not res!146676)) b!284062))

(assert (= (and b!284062 res!146677) b!284061))

(assert (= (and b!284062 res!146678) b!284060))

(assert (= (and b!284060 c!46245) b!284058))

(assert (= (and b!284060 (not c!46245)) b!284059))

(assert (= (or b!284058 b!284059) bm!25524))

(declare-fun m!299133 () Bool)

(assert (=> b!284060 m!299133))

(assert (=> b!284060 m!299133))

(declare-fun m!299135 () Bool)

(assert (=> b!284060 m!299135))

(assert (=> b!284061 m!299133))

(assert (=> b!284061 m!299133))

(declare-fun m!299137 () Bool)

(assert (=> b!284061 m!299137))

(assert (=> bm!25524 m!299133))

(declare-fun m!299139 () Bool)

(assert (=> bm!25524 m!299139))

(assert (=> b!284062 m!299133))

(assert (=> b!284062 m!299133))

(assert (=> b!284062 m!299135))

(assert (=> bm!25510 d!65517))

(declare-fun b!284063 () Bool)

(declare-fun e!180246 () Bool)

(declare-fun call!25528 () Bool)

(assert (=> b!284063 (= e!180246 call!25528)))

(declare-fun d!65519 () Bool)

(declare-fun res!146679 () Bool)

(declare-fun e!180244 () Bool)

(assert (=> d!65519 (=> res!146679 e!180244)))

(assert (=> d!65519 (= res!146679 (bvsge #b00000000000000000000000000000000 (size!7066 (array!14149 (store (arr!6714 a!3325) i!1267 k!2581) (size!7066 a!3325)))))))

(assert (=> d!65519 (= (arrayNoDuplicates!0 (array!14149 (store (arr!6714 a!3325) i!1267 k!2581) (size!7066 a!3325)) #b00000000000000000000000000000000 Nil!4540) e!180244)))

(declare-fun b!284064 () Bool)

(assert (=> b!284064 (= e!180246 call!25528)))

(declare-fun b!284065 () Bool)

(declare-fun e!180245 () Bool)

(assert (=> b!284065 (= e!180245 e!180246)))

(declare-fun c!46246 () Bool)

(assert (=> b!284065 (= c!46246 (validKeyInArray!0 (select (arr!6714 (array!14149 (store (arr!6714 a!3325) i!1267 k!2581) (size!7066 a!3325))) #b00000000000000000000000000000000)))))

(declare-fun e!180247 () Bool)

(declare-fun b!284066 () Bool)

(assert (=> b!284066 (= e!180247 (contains!1993 Nil!4540 (select (arr!6714 (array!14149 (store (arr!6714 a!3325) i!1267 k!2581) (size!7066 a!3325))) #b00000000000000000000000000000000)))))

(declare-fun bm!25525 () Bool)

(assert (=> bm!25525 (= call!25528 (arrayNoDuplicates!0 (array!14149 (store (arr!6714 a!3325) i!1267 k!2581) (size!7066 a!3325)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!46246 (Cons!4539 (select (arr!6714 (array!14149 (store (arr!6714 a!3325) i!1267 k!2581) (size!7066 a!3325))) #b00000000000000000000000000000000) Nil!4540) Nil!4540)))))

(declare-fun b!284067 () Bool)

(assert (=> b!284067 (= e!180244 e!180245)))

(declare-fun res!146681 () Bool)

(assert (=> b!284067 (=> (not res!146681) (not e!180245))))

(assert (=> b!284067 (= res!146681 (not e!180247))))

(declare-fun res!146680 () Bool)

(assert (=> b!284067 (=> (not res!146680) (not e!180247))))

(assert (=> b!284067 (= res!146680 (validKeyInArray!0 (select (arr!6714 (array!14149 (store (arr!6714 a!3325) i!1267 k!2581) (size!7066 a!3325))) #b00000000000000000000000000000000)))))

(assert (= (and d!65519 (not res!146679)) b!284067))

(assert (= (and b!284067 res!146680) b!284066))

(assert (= (and b!284067 res!146681) b!284065))

(assert (= (and b!284065 c!46246) b!284063))

(assert (= (and b!284065 (not c!46246)) b!284064))

(assert (= (or b!284063 b!284064) bm!25525))

(declare-fun m!299141 () Bool)

(assert (=> b!284065 m!299141))

(assert (=> b!284065 m!299141))

(declare-fun m!299143 () Bool)

(assert (=> b!284065 m!299143))

(assert (=> b!284066 m!299141))

(assert (=> b!284066 m!299141))

(declare-fun m!299145 () Bool)

(assert (=> b!284066 m!299145))

(assert (=> bm!25525 m!299141))

(declare-fun m!299147 () Bool)

(assert (=> bm!25525 m!299147))

(assert (=> b!284067 m!299141))

(assert (=> b!284067 m!299141))

(assert (=> b!284067 m!299143))

(assert (=> b!283711 d!65519))

(assert (=> b!283627 d!65327))

(declare-fun b!284068 () Bool)

(declare-fun c!46248 () Bool)

(declare-fun lt!140423 () (_ BitVec 64))

(assert (=> b!284068 (= c!46248 (= lt!140423 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!180249 () SeekEntryResult!1883)

(declare-fun e!180248 () SeekEntryResult!1883)

(assert (=> b!284068 (= e!180249 e!180248)))

(declare-fun lt!140422 () SeekEntryResult!1883)

(declare-fun b!284070 () Bool)

(assert (=> b!284070 (= e!180248 (seekKeyOrZeroReturnVacant!0 (x!27873 lt!140422) (index!9704 lt!140422) (index!9704 lt!140422) (select (store (arr!6714 a!3325) i!1267 k!2581) startIndex!26) (array!14149 (store (arr!6714 a!3325) i!1267 k!2581) (size!7066 a!3325)) mask!3868))))

(declare-fun b!284071 () Bool)

(assert (=> b!284071 (= e!180249 (Found!1883 (index!9704 lt!140422)))))

(declare-fun b!284072 () Bool)

(declare-fun e!180250 () SeekEntryResult!1883)

(assert (=> b!284072 (= e!180250 e!180249)))

(assert (=> b!284072 (= lt!140423 (select (arr!6714 (array!14149 (store (arr!6714 a!3325) i!1267 k!2581) (size!7066 a!3325))) (index!9704 lt!140422)))))

(declare-fun c!46249 () Bool)

(assert (=> b!284072 (= c!46249 (= lt!140423 (select (store (arr!6714 a!3325) i!1267 k!2581) startIndex!26)))))

(declare-fun b!284073 () Bool)

(assert (=> b!284073 (= e!180250 Undefined!1883)))

(declare-fun b!284069 () Bool)

(assert (=> b!284069 (= e!180248 (MissingZero!1883 (index!9704 lt!140422)))))

(declare-fun lt!140421 () SeekEntryResult!1883)

(declare-fun d!65521 () Bool)

(assert (=> d!65521 (and (or (is-Undefined!1883 lt!140421) (not (is-Found!1883 lt!140421)) (and (bvsge (index!9703 lt!140421) #b00000000000000000000000000000000) (bvslt (index!9703 lt!140421) (size!7066 (array!14149 (store (arr!6714 a!3325) i!1267 k!2581) (size!7066 a!3325)))))) (or (is-Undefined!1883 lt!140421) (is-Found!1883 lt!140421) (not (is-MissingZero!1883 lt!140421)) (and (bvsge (index!9702 lt!140421) #b00000000000000000000000000000000) (bvslt (index!9702 lt!140421) (size!7066 (array!14149 (store (arr!6714 a!3325) i!1267 k!2581) (size!7066 a!3325)))))) (or (is-Undefined!1883 lt!140421) (is-Found!1883 lt!140421) (is-MissingZero!1883 lt!140421) (not (is-MissingVacant!1883 lt!140421)) (and (bvsge (index!9705 lt!140421) #b00000000000000000000000000000000) (bvslt (index!9705 lt!140421) (size!7066 (array!14149 (store (arr!6714 a!3325) i!1267 k!2581) (size!7066 a!3325)))))) (or (is-Undefined!1883 lt!140421) (ite (is-Found!1883 lt!140421) (= (select (arr!6714 (array!14149 (store (arr!6714 a!3325) i!1267 k!2581) (size!7066 a!3325))) (index!9703 lt!140421)) (select (store (arr!6714 a!3325) i!1267 k!2581) startIndex!26)) (ite (is-MissingZero!1883 lt!140421) (= (select (arr!6714 (array!14149 (store (arr!6714 a!3325) i!1267 k!2581) (size!7066 a!3325))) (index!9702 lt!140421)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!1883 lt!140421) (= (select (arr!6714 (array!14149 (store (arr!6714 a!3325) i!1267 k!2581) (size!7066 a!3325))) (index!9705 lt!140421)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!65521 (= lt!140421 e!180250)))

(declare-fun c!46247 () Bool)

(assert (=> d!65521 (= c!46247 (and (is-Intermediate!1883 lt!140422) (undefined!2695 lt!140422)))))

(assert (=> d!65521 (= lt!140422 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!6714 a!3325) i!1267 k!2581) startIndex!26) mask!3868) (select (store (arr!6714 a!3325) i!1267 k!2581) startIndex!26) (array!14149 (store (arr!6714 a!3325) i!1267 k!2581) (size!7066 a!3325)) mask!3868))))

(assert (=> d!65521 (validMask!0 mask!3868)))

(assert (=> d!65521 (= (seekEntryOrOpen!0 (select (store (arr!6714 a!3325) i!1267 k!2581) startIndex!26) (array!14149 (store (arr!6714 a!3325) i!1267 k!2581) (size!7066 a!3325)) mask!3868) lt!140421)))

(assert (= (and d!65521 c!46247) b!284073))

(assert (= (and d!65521 (not c!46247)) b!284072))

(assert (= (and b!284072 c!46249) b!284071))

(assert (= (and b!284072 (not c!46249)) b!284068))

(assert (= (and b!284068 c!46248) b!284069))

(assert (= (and b!284068 (not c!46248)) b!284070))

(assert (=> b!284070 m!298477))

(declare-fun m!299149 () Bool)

(assert (=> b!284070 m!299149))

(declare-fun m!299151 () Bool)

(assert (=> b!284072 m!299151))

(assert (=> d!65521 m!298477))

(assert (=> d!65521 m!298731))

(assert (=> d!65521 m!298497))

(declare-fun m!299153 () Bool)

(assert (=> d!65521 m!299153))

(declare-fun m!299155 () Bool)

(assert (=> d!65521 m!299155))

(assert (=> d!65521 m!298731))

(assert (=> d!65521 m!298477))

(declare-fun m!299157 () Bool)

(assert (=> d!65521 m!299157))

(declare-fun m!299159 () Bool)

(assert (=> d!65521 m!299159))

(assert (=> b!283627 d!65521))

(declare-fun d!65523 () Bool)

(declare-fun lt!140426 () Bool)

(declare-fun content!192 (List!4543) (Set (_ BitVec 64)))

(assert (=> d!65523 (= lt!140426 (member (select (arr!6714 a!3325) #b00000000000000000000000000000000) (content!192 Nil!4540)))))

(declare-fun e!180255 () Bool)

(assert (=> d!65523 (= lt!140426 e!180255)))

(declare-fun res!146686 () Bool)

(assert (=> d!65523 (=> (not res!146686) (not e!180255))))

(assert (=> d!65523 (= res!146686 (is-Cons!4539 Nil!4540))))

(assert (=> d!65523 (= (contains!1993 Nil!4540 (select (arr!6714 a!3325) #b00000000000000000000000000000000)) lt!140426)))

(declare-fun b!284078 () Bool)

(declare-fun e!180256 () Bool)

(assert (=> b!284078 (= e!180255 e!180256)))

(declare-fun res!146687 () Bool)

(assert (=> b!284078 (=> res!146687 e!180256)))

(assert (=> b!284078 (= res!146687 (= (h!5209 Nil!4540) (select (arr!6714 a!3325) #b00000000000000000000000000000000)))))

(declare-fun b!284079 () Bool)

(assert (=> b!284079 (= e!180256 (contains!1993 (t!9633 Nil!4540) (select (arr!6714 a!3325) #b00000000000000000000000000000000)))))

(assert (= (and d!65523 res!146686) b!284078))

(assert (= (and b!284078 (not res!146687)) b!284079))

(declare-fun m!299161 () Bool)

(assert (=> d!65523 m!299161))

(assert (=> d!65523 m!298527))

(declare-fun m!299163 () Bool)

(assert (=> d!65523 m!299163))

(assert (=> b!284079 m!298527))

(declare-fun m!299165 () Bool)

(assert (=> b!284079 m!299165))

(assert (=> b!283597 d!65523))

(declare-fun b!284080 () Bool)

(declare-fun e!180258 () Bool)

(declare-fun e!180257 () Bool)

(assert (=> b!284080 (= e!180258 e!180257)))

(declare-fun res!146690 () Bool)

(declare-fun lt!140428 () SeekEntryResult!1883)

(assert (=> b!284080 (= res!146690 (and (is-Intermediate!1883 lt!140428) (not (undefined!2695 lt!140428)) (bvslt (x!27873 lt!140428) #b01111111111111111111111111111110) (bvsge (x!27873 lt!140428) #b00000000000000000000000000000000) (bvsge (x!27873 lt!140428) #b00000000000000000000000000000000)))))

(assert (=> b!284080 (=> (not res!146690) (not e!180257))))

(declare-fun b!284081 () Bool)

(assert (=> b!284081 (and (bvsge (index!9704 lt!140428) #b00000000000000000000000000000000) (bvslt (index!9704 lt!140428) (size!7066 lt!140173)))))

(declare-fun res!146689 () Bool)

(assert (=> b!284081 (= res!146689 (= (select (arr!6714 lt!140173) (index!9704 lt!140428)) (select (store (arr!6714 a!3325) i!1267 k!2581) startIndex!26)))))

(declare-fun e!180261 () Bool)

(assert (=> b!284081 (=> res!146689 e!180261)))

(assert (=> b!284081 (= e!180257 e!180261)))

(declare-fun b!284082 () Bool)

(declare-fun e!180259 () SeekEntryResult!1883)

(assert (=> b!284082 (= e!180259 (Intermediate!1883 true (toIndex!0 (select (store (arr!6714 a!3325) i!1267 k!2581) startIndex!26) mask!3868) #b00000000000000000000000000000000))))

(declare-fun e!180260 () SeekEntryResult!1883)

(declare-fun b!284083 () Bool)

(assert (=> b!284083 (= e!180260 (Intermediate!1883 false (toIndex!0 (select (store (arr!6714 a!3325) i!1267 k!2581) startIndex!26) mask!3868) #b00000000000000000000000000000000))))

(declare-fun b!284084 () Bool)

(assert (=> b!284084 (= e!180258 (bvsge (x!27873 lt!140428) #b01111111111111111111111111111110))))

(declare-fun b!284085 () Bool)

(assert (=> b!284085 (and (bvsge (index!9704 lt!140428) #b00000000000000000000000000000000) (bvslt (index!9704 lt!140428) (size!7066 lt!140173)))))

(assert (=> b!284085 (= e!180261 (= (select (arr!6714 lt!140173) (index!9704 lt!140428)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!65525 () Bool)

(assert (=> d!65525 e!180258))

(declare-fun c!46250 () Bool)

(assert (=> d!65525 (= c!46250 (and (is-Intermediate!1883 lt!140428) (undefined!2695 lt!140428)))))

(assert (=> d!65525 (= lt!140428 e!180259)))

(declare-fun c!46251 () Bool)

(assert (=> d!65525 (= c!46251 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!140427 () (_ BitVec 64))

(assert (=> d!65525 (= lt!140427 (select (arr!6714 lt!140173) (toIndex!0 (select (store (arr!6714 a!3325) i!1267 k!2581) startIndex!26) mask!3868)))))

(assert (=> d!65525 (validMask!0 mask!3868)))

(assert (=> d!65525 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!6714 a!3325) i!1267 k!2581) startIndex!26) mask!3868) (select (store (arr!6714 a!3325) i!1267 k!2581) startIndex!26) lt!140173 mask!3868) lt!140428)))

(declare-fun b!284086 () Bool)

(assert (=> b!284086 (and (bvsge (index!9704 lt!140428) #b00000000000000000000000000000000) (bvslt (index!9704 lt!140428) (size!7066 lt!140173)))))

(declare-fun res!146688 () Bool)

(assert (=> b!284086 (= res!146688 (= (select (arr!6714 lt!140173) (index!9704 lt!140428)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!284086 (=> res!146688 e!180261)))

(declare-fun b!284087 () Bool)

(assert (=> b!284087 (= e!180259 e!180260)))

(declare-fun c!46252 () Bool)

(assert (=> b!284087 (= c!46252 (or (= lt!140427 (select (store (arr!6714 a!3325) i!1267 k!2581) startIndex!26)) (= (bvadd lt!140427 lt!140427) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!284088 () Bool)

(assert (=> b!284088 (= e!180260 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (store (arr!6714 a!3325) i!1267 k!2581) startIndex!26) mask!3868) #b00000000000000000000000000000000 mask!3868) (select (store (arr!6714 a!3325) i!1267 k!2581) startIndex!26) lt!140173 mask!3868))))

(assert (= (and d!65525 c!46251) b!284082))

(assert (= (and d!65525 (not c!46251)) b!284087))

(assert (= (and b!284087 c!46252) b!284083))

(assert (= (and b!284087 (not c!46252)) b!284088))

(assert (= (and d!65525 c!46250) b!284084))

(assert (= (and d!65525 (not c!46250)) b!284080))

(assert (= (and b!284080 res!146690) b!284081))

(assert (= (and b!284081 (not res!146689)) b!284086))

(assert (= (and b!284086 (not res!146688)) b!284085))

(assert (=> b!284088 m!298731))

(declare-fun m!299167 () Bool)

(assert (=> b!284088 m!299167))

(assert (=> b!284088 m!299167))

(assert (=> b!284088 m!298477))

(declare-fun m!299169 () Bool)

(assert (=> b!284088 m!299169))

(declare-fun m!299171 () Bool)

(assert (=> b!284086 m!299171))

(assert (=> d!65525 m!298731))

(declare-fun m!299173 () Bool)

(assert (=> d!65525 m!299173))

(assert (=> d!65525 m!298497))

(assert (=> b!284081 m!299171))

(assert (=> b!284085 m!299171))

(assert (=> d!65359 d!65525))

(declare-fun d!65527 () Bool)

(declare-fun lt!140430 () (_ BitVec 32))

(declare-fun lt!140429 () (_ BitVec 32))

(assert (=> d!65527 (= lt!140430 (bvmul (bvxor lt!140429 (bvlshr lt!140429 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!65527 (= lt!140429 ((_ extract 31 0) (bvand (bvxor (select (store (arr!6714 a!3325) i!1267 k!2581) startIndex!26) (bvlshr (select (store (arr!6714 a!3325) i!1267 k!2581) startIndex!26) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!65527 (and (bvsge mask!3868 #b00000000000000000000000000000000) (let ((res!146675 (let ((h!5212 ((_ extract 31 0) (bvand (bvxor (select (store (arr!6714 a!3325) i!1267 k!2581) startIndex!26) (bvlshr (select (store (arr!6714 a!3325) i!1267 k!2581) startIndex!26) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!27881 (bvmul (bvxor h!5212 (bvlshr h!5212 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!27881 (bvlshr x!27881 #b00000000000000000000000000001101)) mask!3868))))) (and (bvslt res!146675 (bvadd mask!3868 #b00000000000000000000000000000001)) (bvsge res!146675 #b00000000000000000000000000000000))))))

