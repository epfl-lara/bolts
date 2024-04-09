; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27400 () Bool)

(assert start!27400)

(declare-fun res!146401 () Bool)

(declare-fun e!179844 () Bool)

(assert (=> start!27400 (=> (not res!146401) (not e!179844))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27400 (= res!146401 (validMask!0 mask!3868))))

(assert (=> start!27400 e!179844))

(declare-datatypes ((array!14144 0))(
  ( (array!14145 (arr!6712 (Array (_ BitVec 32) (_ BitVec 64))) (size!7064 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14144)

(declare-fun array_inv!4666 (array!14144) Bool)

(assert (=> start!27400 (array_inv!4666 a!3325)))

(assert (=> start!27400 true))

(declare-fun b!283443 () Bool)

(declare-fun res!146400 () Bool)

(assert (=> b!283443 (=> (not res!146400) (not e!179844))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!283443 (= res!146400 (validKeyInArray!0 k!2581))))

(declare-fun b!283444 () Bool)

(declare-fun e!179845 () Bool)

(declare-fun e!179846 () Bool)

(assert (=> b!283444 (= e!179845 e!179846)))

(declare-fun res!146409 () Bool)

(assert (=> b!283444 (=> (not res!146409) (not e!179846))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!283444 (= res!146409 (not (= startIndex!26 i!1267)))))

(declare-fun lt!140147 () array!14144)

(assert (=> b!283444 (= lt!140147 (array!14145 (store (arr!6712 a!3325) i!1267 k!2581) (size!7064 a!3325)))))

(declare-fun b!283445 () Bool)

(declare-fun e!179848 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14144 (_ BitVec 32)) Bool)

(assert (=> b!283445 (= e!179848 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 lt!140147 mask!3868))))

(declare-fun b!283446 () Bool)

(declare-fun res!146408 () Bool)

(assert (=> b!283446 (=> (not res!146408) (not e!179844))))

(declare-fun arrayContainsKey!0 (array!14144 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!283446 (= res!146408 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!283447 () Bool)

(declare-fun res!146406 () Bool)

(assert (=> b!283447 (=> (not res!146406) (not e!179844))))

(declare-datatypes ((List!4541 0))(
  ( (Nil!4538) (Cons!4537 (h!5207 (_ BitVec 64)) (t!9631 List!4541)) )
))
(declare-fun arrayNoDuplicates!0 (array!14144 (_ BitVec 32) List!4541) Bool)

(assert (=> b!283447 (= res!146406 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4538))))

(declare-fun b!283448 () Bool)

(declare-fun res!146404 () Bool)

(assert (=> b!283448 (=> (not res!146404) (not e!179846))))

(assert (=> b!283448 (= res!146404 (validKeyInArray!0 (select (arr!6712 a!3325) startIndex!26)))))

(declare-fun b!283449 () Bool)

(declare-fun res!146405 () Bool)

(assert (=> b!283449 (=> (not res!146405) (not e!179844))))

(assert (=> b!283449 (= res!146405 (and (= (size!7064 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7064 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7064 a!3325))))))

(declare-fun b!283450 () Bool)

(assert (=> b!283450 (= e!179846 (not e!179848))))

(declare-fun res!146407 () Bool)

(assert (=> b!283450 (=> res!146407 e!179848)))

(assert (=> b!283450 (= res!146407 (bvslt startIndex!26 (bvsub (size!7064 a!3325) #b00000000000000000000000000000001)))))

(assert (=> b!283450 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868)))

(declare-datatypes ((Unit!9025 0))(
  ( (Unit!9026) )
))
(declare-fun lt!140146 () Unit!9025)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!14144 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!9025)

(assert (=> b!283450 (= lt!140146 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26))))

(declare-datatypes ((SeekEntryResult!1881 0))(
  ( (MissingZero!1881 (index!9694 (_ BitVec 32))) (Found!1881 (index!9695 (_ BitVec 32))) (Intermediate!1881 (undefined!2693 Bool) (index!9696 (_ BitVec 32)) (x!27871 (_ BitVec 32))) (Undefined!1881) (MissingVacant!1881 (index!9697 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14144 (_ BitVec 32)) SeekEntryResult!1881)

(assert (=> b!283450 (= (seekEntryOrOpen!0 (select (arr!6712 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6712 a!3325) i!1267 k!2581) startIndex!26) lt!140147 mask!3868))))

(declare-fun lt!140145 () Unit!9025)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!14144 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!9025)

(assert (=> b!283450 (= lt!140145 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k!2581 startIndex!26 mask!3868))))

(assert (=> b!283450 (arrayNoDuplicates!0 lt!140147 #b00000000000000000000000000000000 Nil!4538)))

(declare-fun lt!140144 () Unit!9025)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!14144 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4541) Unit!9025)

(assert (=> b!283450 (= lt!140144 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4538))))

(declare-fun b!283451 () Bool)

(declare-fun res!146402 () Bool)

(assert (=> b!283451 (=> (not res!146402) (not e!179845))))

(assert (=> b!283451 (= res!146402 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!283452 () Bool)

(assert (=> b!283452 (= e!179844 e!179845)))

(declare-fun res!146403 () Bool)

(assert (=> b!283452 (=> (not res!146403) (not e!179845))))

(declare-fun lt!140143 () SeekEntryResult!1881)

(assert (=> b!283452 (= res!146403 (or (= lt!140143 (MissingZero!1881 i!1267)) (= lt!140143 (MissingVacant!1881 i!1267))))))

(assert (=> b!283452 (= lt!140143 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(assert (= (and start!27400 res!146401) b!283449))

(assert (= (and b!283449 res!146405) b!283443))

(assert (= (and b!283443 res!146400) b!283447))

(assert (= (and b!283447 res!146406) b!283446))

(assert (= (and b!283446 res!146408) b!283452))

(assert (= (and b!283452 res!146403) b!283451))

(assert (= (and b!283451 res!146402) b!283444))

(assert (= (and b!283444 res!146409) b!283448))

(assert (= (and b!283448 res!146404) b!283450))

(assert (= (and b!283450 (not res!146407)) b!283445))

(declare-fun m!298387 () Bool)

(assert (=> b!283452 m!298387))

(declare-fun m!298389 () Bool)

(assert (=> b!283445 m!298389))

(declare-fun m!298391 () Bool)

(assert (=> b!283448 m!298391))

(assert (=> b!283448 m!298391))

(declare-fun m!298393 () Bool)

(assert (=> b!283448 m!298393))

(declare-fun m!298395 () Bool)

(assert (=> b!283447 m!298395))

(declare-fun m!298397 () Bool)

(assert (=> b!283444 m!298397))

(declare-fun m!298399 () Bool)

(assert (=> start!27400 m!298399))

(declare-fun m!298401 () Bool)

(assert (=> start!27400 m!298401))

(declare-fun m!298403 () Bool)

(assert (=> b!283451 m!298403))

(declare-fun m!298405 () Bool)

(assert (=> b!283443 m!298405))

(declare-fun m!298407 () Bool)

(assert (=> b!283446 m!298407))

(declare-fun m!298409 () Bool)

(assert (=> b!283450 m!298409))

(declare-fun m!298411 () Bool)

(assert (=> b!283450 m!298411))

(assert (=> b!283450 m!298397))

(declare-fun m!298413 () Bool)

(assert (=> b!283450 m!298413))

(assert (=> b!283450 m!298411))

(declare-fun m!298415 () Bool)

(assert (=> b!283450 m!298415))

(assert (=> b!283450 m!298391))

(declare-fun m!298417 () Bool)

(assert (=> b!283450 m!298417))

(declare-fun m!298419 () Bool)

(assert (=> b!283450 m!298419))

(declare-fun m!298421 () Bool)

(assert (=> b!283450 m!298421))

(assert (=> b!283450 m!298391))

(declare-fun m!298423 () Bool)

(assert (=> b!283450 m!298423))

(push 1)

(assert (not b!283448))

(assert (not start!27400))

(assert (not b!283447))

(assert (not b!283451))

(assert (not b!283443))

(assert (not b!283445))

(assert (not b!283452))

(assert (not b!283446))

(assert (not b!283450))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!65291 () Bool)

(declare-fun res!146483 () Bool)

(declare-fun e!179904 () Bool)

(assert (=> d!65291 (=> res!146483 e!179904)))

(assert (=> d!65291 (= res!146483 (= (select (arr!6712 a!3325) #b00000000000000000000000000000000) k!2581))))

(assert (=> d!65291 (= (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000) e!179904)))

(declare-fun b!283550 () Bool)

(declare-fun e!179905 () Bool)

(assert (=> b!283550 (= e!179904 e!179905)))

(declare-fun res!146484 () Bool)

(assert (=> b!283550 (=> (not res!146484) (not e!179905))))

(assert (=> b!283550 (= res!146484 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7064 a!3325)))))

(declare-fun b!283551 () Bool)

(assert (=> b!283551 (= e!179905 (arrayContainsKey!0 a!3325 k!2581 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!65291 (not res!146483)) b!283550))

(assert (= (and b!283550 res!146484) b!283551))

(declare-fun m!298523 () Bool)

(assert (=> d!65291 m!298523))

(declare-fun m!298525 () Bool)

(assert (=> b!283551 m!298525))

(assert (=> b!283446 d!65291))

(declare-fun bm!25494 () Bool)

(declare-fun call!25497 () Bool)

(assert (=> bm!25494 (= call!25497 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3325 mask!3868))))

(declare-fun b!283577 () Bool)

(declare-fun e!179924 () Bool)

(declare-fun e!179925 () Bool)

(assert (=> b!283577 (= e!179924 e!179925)))

(declare-fun lt!140207 () (_ BitVec 64))

(assert (=> b!283577 (= lt!140207 (select (arr!6712 a!3325) #b00000000000000000000000000000000))))

(declare-fun lt!140205 () Unit!9025)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!14144 (_ BitVec 64) (_ BitVec 32)) Unit!9025)

(assert (=> b!283577 (= lt!140205 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3325 lt!140207 #b00000000000000000000000000000000))))

(assert (=> b!283577 (arrayContainsKey!0 a!3325 lt!140207 #b00000000000000000000000000000000)))

(declare-fun lt!140206 () Unit!9025)

(assert (=> b!283577 (= lt!140206 lt!140205)))

(declare-fun res!146497 () Bool)

(assert (=> b!283577 (= res!146497 (= (seekEntryOrOpen!0 (select (arr!6712 a!3325) #b00000000000000000000000000000000) a!3325 mask!3868) (Found!1881 #b00000000000000000000000000000000)))))

(assert (=> b!283577 (=> (not res!146497) (not e!179925))))

(declare-fun b!283578 () Bool)

(assert (=> b!283578 (= e!179925 call!25497)))

(declare-fun b!283579 () Bool)

(assert (=> b!283579 (= e!179924 call!25497)))

(declare-fun d!65295 () Bool)

(declare-fun res!146498 () Bool)

(declare-fun e!179926 () Bool)

(assert (=> d!65295 (=> res!146498 e!179926)))

(assert (=> d!65295 (= res!146498 (bvsge #b00000000000000000000000000000000 (size!7064 a!3325)))))

(assert (=> d!65295 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868) e!179926)))

(declare-fun b!283576 () Bool)

(assert (=> b!283576 (= e!179926 e!179924)))

(declare-fun c!46092 () Bool)

(assert (=> b!283576 (= c!46092 (validKeyInArray!0 (select (arr!6712 a!3325) #b00000000000000000000000000000000)))))

(assert (= (and d!65295 (not res!146498)) b!283576))

(assert (= (and b!283576 c!46092) b!283577))

(assert (= (and b!283576 (not c!46092)) b!283579))

(assert (= (and b!283577 res!146497) b!283578))

(assert (= (or b!283578 b!283579) bm!25494))

(declare-fun m!298551 () Bool)

(assert (=> bm!25494 m!298551))

(assert (=> b!283577 m!298523))

(declare-fun m!298553 () Bool)

(assert (=> b!283577 m!298553))

(declare-fun m!298555 () Bool)

(assert (=> b!283577 m!298555))

(assert (=> b!283577 m!298523))

(declare-fun m!298557 () Bool)

(assert (=> b!283577 m!298557))

(assert (=> b!283576 m!298523))

(assert (=> b!283576 m!298523))

(declare-fun m!298559 () Bool)

(assert (=> b!283576 m!298559))

(assert (=> b!283451 d!65295))

(declare-fun call!25498 () Bool)

(declare-fun bm!25495 () Bool)

(assert (=> bm!25495 (= call!25498 (arrayForallSeekEntryOrOpenFound!0 (bvadd startIndex!26 #b00000000000000000000000000000001) lt!140147 mask!3868))))

(declare-fun b!283591 () Bool)

(declare-fun e!179935 () Bool)

(declare-fun e!179936 () Bool)

(assert (=> b!283591 (= e!179935 e!179936)))

(declare-fun lt!140210 () (_ BitVec 64))

(assert (=> b!283591 (= lt!140210 (select (arr!6712 lt!140147) startIndex!26))))

(declare-fun lt!140208 () Unit!9025)

(assert (=> b!283591 (= lt!140208 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!140147 lt!140210 startIndex!26))))

(assert (=> b!283591 (arrayContainsKey!0 lt!140147 lt!140210 #b00000000000000000000000000000000)))

(declare-fun lt!140209 () Unit!9025)

(assert (=> b!283591 (= lt!140209 lt!140208)))

(declare-fun res!146505 () Bool)

(assert (=> b!283591 (= res!146505 (= (seekEntryOrOpen!0 (select (arr!6712 lt!140147) startIndex!26) lt!140147 mask!3868) (Found!1881 startIndex!26)))))

(assert (=> b!283591 (=> (not res!146505) (not e!179936))))

(declare-fun b!283592 () Bool)

(assert (=> b!283592 (= e!179936 call!25498)))

(declare-fun b!283593 () Bool)

(assert (=> b!283593 (= e!179935 call!25498)))

(declare-fun d!65303 () Bool)

(declare-fun res!146506 () Bool)

(declare-fun e!179937 () Bool)

(assert (=> d!65303 (=> res!146506 e!179937)))

(assert (=> d!65303 (= res!146506 (bvsge startIndex!26 (size!7064 lt!140147)))))

(assert (=> d!65303 (= (arrayForallSeekEntryOrOpenFound!0 startIndex!26 lt!140147 mask!3868) e!179937)))

(declare-fun b!283590 () Bool)

(assert (=> b!283590 (= e!179937 e!179935)))

(declare-fun c!46095 () Bool)

(assert (=> b!283590 (= c!46095 (validKeyInArray!0 (select (arr!6712 lt!140147) startIndex!26)))))

(assert (= (and d!65303 (not res!146506)) b!283590))

(assert (= (and b!283590 c!46095) b!283591))

(assert (= (and b!283590 (not c!46095)) b!283593))

(assert (= (and b!283591 res!146505) b!283592))

(assert (= (or b!283592 b!283593) bm!25495))

(declare-fun m!298561 () Bool)

(assert (=> bm!25495 m!298561))

(declare-fun m!298563 () Bool)

(assert (=> b!283591 m!298563))

(declare-fun m!298565 () Bool)

(assert (=> b!283591 m!298565))

(declare-fun m!298567 () Bool)

(assert (=> b!283591 m!298567))

(assert (=> b!283591 m!298563))

(declare-fun m!298569 () Bool)

(assert (=> b!283591 m!298569))

(assert (=> b!283590 m!298563))

(assert (=> b!283590 m!298563))

(declare-fun m!298571 () Bool)

(assert (=> b!283590 m!298571))

(assert (=> b!283445 d!65303))

(declare-fun d!65305 () Bool)

(declare-fun e!179959 () Bool)

(assert (=> d!65305 e!179959))

(declare-fun res!146524 () Bool)

(assert (=> d!65305 (=> (not res!146524) (not e!179959))))

(assert (=> d!65305 (= res!146524 (and (or (bvslt i!1267 #b00000000000000000000000000000000) (bvsge i!1267 (size!7064 a!3325)) (and (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7064 a!3325)))) (or (bvslt i!1267 #b00000000000000000000000000000000) (bvsge i!1267 (size!7064 a!3325)) (and (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7064 a!3325)))) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7064 a!3325))))))

(declare-fun lt!140222 () Unit!9025)

(declare-fun choose!83 (array!14144 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!9025)

(assert (=> d!65305 (= lt!140222 (choose!83 a!3325 i!1267 k!2581 startIndex!26 mask!3868))))

(assert (=> d!65305 (validMask!0 mask!3868)))

(assert (=> d!65305 (= (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k!2581 startIndex!26 mask!3868) lt!140222)))

(declare-fun b!283619 () Bool)

(assert (=> b!283619 (= e!179959 (= (seekEntryOrOpen!0 (select (arr!6712 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6712 a!3325) i!1267 k!2581) startIndex!26) (array!14145 (store (arr!6712 a!3325) i!1267 k!2581) (size!7064 a!3325)) mask!3868)))))

(assert (= (and d!65305 res!146524) b!283619))

(declare-fun m!298601 () Bool)

(assert (=> d!65305 m!298601))

(assert (=> d!65305 m!298399))

(assert (=> b!283619 m!298411))

(assert (=> b!283619 m!298397))

(assert (=> b!283619 m!298391))

(assert (=> b!283619 m!298411))

(declare-fun m!298603 () Bool)

(assert (=> b!283619 m!298603))

(assert (=> b!283619 m!298391))

(assert (=> b!283619 m!298423))

(assert (=> b!283450 d!65305))

(declare-fun e!179997 () SeekEntryResult!1881)

(declare-fun lt!140255 () SeekEntryResult!1881)

(declare-fun b!283672 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14144 (_ BitVec 32)) SeekEntryResult!1881)

(assert (=> b!283672 (= e!179997 (seekKeyOrZeroReturnVacant!0 (x!27871 lt!140255) (index!9696 lt!140255) (index!9696 lt!140255) (select (arr!6712 a!3325) startIndex!26) a!3325 mask!3868))))

(declare-fun b!283673 () Bool)

(assert (=> b!283673 (= e!179997 (MissingZero!1881 (index!9696 lt!140255)))))

(declare-fun b!283675 () Bool)

(declare-fun e!179998 () SeekEntryResult!1881)

(declare-fun e!179999 () SeekEntryResult!1881)

(assert (=> b!283675 (= e!179998 e!179999)))

(declare-fun lt!140253 () (_ BitVec 64))

(assert (=> b!283675 (= lt!140253 (select (arr!6712 a!3325) (index!9696 lt!140255)))))

(declare-fun c!46115 () Bool)

(assert (=> b!283675 (= c!46115 (= lt!140253 (select (arr!6712 a!3325) startIndex!26)))))

(declare-fun b!283676 () Bool)

(assert (=> b!283676 (= e!179998 Undefined!1881)))

(declare-fun b!283677 () Bool)

(assert (=> b!283677 (= e!179999 (Found!1881 (index!9696 lt!140255)))))

(declare-fun d!65321 () Bool)

(declare-fun lt!140254 () SeekEntryResult!1881)

(assert (=> d!65321 (and (or (is-Undefined!1881 lt!140254) (not (is-Found!1881 lt!140254)) (and (bvsge (index!9695 lt!140254) #b00000000000000000000000000000000) (bvslt (index!9695 lt!140254) (size!7064 a!3325)))) (or (is-Undefined!1881 lt!140254) (is-Found!1881 lt!140254) (not (is-MissingZero!1881 lt!140254)) (and (bvsge (index!9694 lt!140254) #b00000000000000000000000000000000) (bvslt (index!9694 lt!140254) (size!7064 a!3325)))) (or (is-Undefined!1881 lt!140254) (is-Found!1881 lt!140254) (is-MissingZero!1881 lt!140254) (not (is-MissingVacant!1881 lt!140254)) (and (bvsge (index!9697 lt!140254) #b00000000000000000000000000000000) (bvslt (index!9697 lt!140254) (size!7064 a!3325)))) (or (is-Undefined!1881 lt!140254) (ite (is-Found!1881 lt!140254) (= (select (arr!6712 a!3325) (index!9695 lt!140254)) (select (arr!6712 a!3325) startIndex!26)) (ite (is-MissingZero!1881 lt!140254) (= (select (arr!6712 a!3325) (index!9694 lt!140254)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!1881 lt!140254) (= (select (arr!6712 a!3325) (index!9697 lt!140254)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!65321 (= lt!140254 e!179998)))

(declare-fun c!46116 () Bool)

(assert (=> d!65321 (= c!46116 (and (is-Intermediate!1881 lt!140255) (undefined!2693 lt!140255)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14144 (_ BitVec 32)) SeekEntryResult!1881)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!65321 (= lt!140255 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!6712 a!3325) startIndex!26) mask!3868) (select (arr!6712 a!3325) startIndex!26) a!3325 mask!3868))))

(assert (=> d!65321 (validMask!0 mask!3868)))

(assert (=> d!65321 (= (seekEntryOrOpen!0 (select (arr!6712 a!3325) startIndex!26) a!3325 mask!3868) lt!140254)))

(declare-fun b!283674 () Bool)

(declare-fun c!46117 () Bool)

(assert (=> b!283674 (= c!46117 (= lt!140253 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!283674 (= e!179999 e!179997)))

(assert (= (and d!65321 c!46116) b!283676))

(assert (= (and d!65321 (not c!46116)) b!283675))

(assert (= (and b!283675 c!46115) b!283677))

(assert (= (and b!283675 (not c!46115)) b!283674))

(assert (= (and b!283674 c!46117) b!283673))

(assert (= (and b!283674 (not c!46117)) b!283672))

(assert (=> b!283672 m!298391))

(declare-fun m!298661 () Bool)

(assert (=> b!283672 m!298661))

(declare-fun m!298663 () Bool)

(assert (=> b!283675 m!298663))

(declare-fun m!298665 () Bool)

(assert (=> d!65321 m!298665))

(assert (=> d!65321 m!298391))

(declare-fun m!298667 () Bool)

(assert (=> d!65321 m!298667))

(assert (=> d!65321 m!298391))

(assert (=> d!65321 m!298665))

(assert (=> d!65321 m!298399))

(declare-fun m!298669 () Bool)

(assert (=> d!65321 m!298669))

(declare-fun m!298671 () Bool)

(assert (=> d!65321 m!298671))

(declare-fun m!298673 () Bool)

(assert (=> d!65321 m!298673))

(assert (=> b!283450 d!65321))

(declare-fun d!65341 () Bool)

(assert (=> d!65341 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868)))

(declare-fun lt!140264 () Unit!9025)

(declare-fun choose!38 (array!14144 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!9025)

(assert (=> d!65341 (= lt!140264 (choose!38 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26))))

(assert (=> d!65341 (validMask!0 mask!3868)))

(assert (=> d!65341 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26) lt!140264)))

(declare-fun bs!10073 () Bool)

(assert (= bs!10073 d!65341))

(assert (=> bs!10073 m!298413))

(declare-fun m!298675 () Bool)

(assert (=> bs!10073 m!298675))

(assert (=> bs!10073 m!298399))

(assert (=> b!283450 d!65341))

(declare-fun call!25508 () Bool)

(declare-fun bm!25505 () Bool)

(assert (=> bm!25505 (= call!25508 (arrayForallSeekEntryOrOpenFound!0 (bvadd startIndex!26 #b00000000000000000000000000000001) a!3325 mask!3868))))

(declare-fun b!283691 () Bool)

(declare-fun e!180006 () Bool)

(declare-fun e!180007 () Bool)

(assert (=> b!283691 (= e!180006 e!180007)))

(declare-fun lt!140267 () (_ BitVec 64))

(assert (=> b!283691 (= lt!140267 (select (arr!6712 a!3325) startIndex!26))))

(declare-fun lt!140265 () Unit!9025)

(assert (=> b!283691 (= lt!140265 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3325 lt!140267 startIndex!26))))

(assert (=> b!283691 (arrayContainsKey!0 a!3325 lt!140267 #b00000000000000000000000000000000)))

(declare-fun lt!140266 () Unit!9025)

(assert (=> b!283691 (= lt!140266 lt!140265)))

(declare-fun res!146547 () Bool)

(assert (=> b!283691 (= res!146547 (= (seekEntryOrOpen!0 (select (arr!6712 a!3325) startIndex!26) a!3325 mask!3868) (Found!1881 startIndex!26)))))

(assert (=> b!283691 (=> (not res!146547) (not e!180007))))

(declare-fun b!283692 () Bool)

(assert (=> b!283692 (= e!180007 call!25508)))

(declare-fun b!283693 () Bool)

(assert (=> b!283693 (= e!180006 call!25508)))

(declare-fun d!65343 () Bool)

(declare-fun res!146548 () Bool)

(declare-fun e!180008 () Bool)

(assert (=> d!65343 (=> res!146548 e!180008)))

(assert (=> d!65343 (= res!146548 (bvsge startIndex!26 (size!7064 a!3325)))))

(assert (=> d!65343 (= (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868) e!180008)))

(declare-fun b!283690 () Bool)

(assert (=> b!283690 (= e!180008 e!180006)))

(declare-fun c!46124 () Bool)

(assert (=> b!283690 (= c!46124 (validKeyInArray!0 (select (arr!6712 a!3325) startIndex!26)))))

(assert (= (and d!65343 (not res!146548)) b!283690))

(assert (= (and b!283690 c!46124) b!283691))

(assert (= (and b!283690 (not c!46124)) b!283693))

(assert (= (and b!283691 res!146547) b!283692))

(assert (= (or b!283692 b!283693) bm!25505))

(declare-fun m!298677 () Bool)

(assert (=> bm!25505 m!298677))

(assert (=> b!283691 m!298391))

(declare-fun m!298679 () Bool)

(assert (=> b!283691 m!298679))

(declare-fun m!298681 () Bool)

(assert (=> b!283691 m!298681))

(assert (=> b!283691 m!298391))

(assert (=> b!283691 m!298423))

(assert (=> b!283690 m!298391))

(assert (=> b!283690 m!298391))

(assert (=> b!283690 m!298393))

(assert (=> b!283450 d!65343))

(declare-fun b!283694 () Bool)

(declare-fun lt!140270 () SeekEntryResult!1881)

(declare-fun e!180009 () SeekEntryResult!1881)

(assert (=> b!283694 (= e!180009 (seekKeyOrZeroReturnVacant!0 (x!27871 lt!140270) (index!9696 lt!140270) (index!9696 lt!140270) (select (store (arr!6712 a!3325) i!1267 k!2581) startIndex!26) lt!140147 mask!3868))))

(declare-fun b!283695 () Bool)

(assert (=> b!283695 (= e!180009 (MissingZero!1881 (index!9696 lt!140270)))))

(declare-fun b!283697 () Bool)

(declare-fun e!180010 () SeekEntryResult!1881)

(declare-fun e!180011 () SeekEntryResult!1881)

(assert (=> b!283697 (= e!180010 e!180011)))

(declare-fun lt!140268 () (_ BitVec 64))

(assert (=> b!283697 (= lt!140268 (select (arr!6712 lt!140147) (index!9696 lt!140270)))))

(declare-fun c!46125 () Bool)

(assert (=> b!283697 (= c!46125 (= lt!140268 (select (store (arr!6712 a!3325) i!1267 k!2581) startIndex!26)))))

(declare-fun b!283698 () Bool)

(assert (=> b!283698 (= e!180010 Undefined!1881)))

(declare-fun b!283699 () Bool)

(assert (=> b!283699 (= e!180011 (Found!1881 (index!9696 lt!140270)))))

(declare-fun lt!140269 () SeekEntryResult!1881)

(declare-fun d!65345 () Bool)

(assert (=> d!65345 (and (or (is-Undefined!1881 lt!140269) (not (is-Found!1881 lt!140269)) (and (bvsge (index!9695 lt!140269) #b00000000000000000000000000000000) (bvslt (index!9695 lt!140269) (size!7064 lt!140147)))) (or (is-Undefined!1881 lt!140269) (is-Found!1881 lt!140269) (not (is-MissingZero!1881 lt!140269)) (and (bvsge (index!9694 lt!140269) #b00000000000000000000000000000000) (bvslt (index!9694 lt!140269) (size!7064 lt!140147)))) (or (is-Undefined!1881 lt!140269) (is-Found!1881 lt!140269) (is-MissingZero!1881 lt!140269) (not (is-MissingVacant!1881 lt!140269)) (and (bvsge (index!9697 lt!140269) #b00000000000000000000000000000000) (bvslt (index!9697 lt!140269) (size!7064 lt!140147)))) (or (is-Undefined!1881 lt!140269) (ite (is-Found!1881 lt!140269) (= (select (arr!6712 lt!140147) (index!9695 lt!140269)) (select (store (arr!6712 a!3325) i!1267 k!2581) startIndex!26)) (ite (is-MissingZero!1881 lt!140269) (= (select (arr!6712 lt!140147) (index!9694 lt!140269)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!1881 lt!140269) (= (select (arr!6712 lt!140147) (index!9697 lt!140269)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!65345 (= lt!140269 e!180010)))

(declare-fun c!46126 () Bool)

(assert (=> d!65345 (= c!46126 (and (is-Intermediate!1881 lt!140270) (undefined!2693 lt!140270)))))

(assert (=> d!65345 (= lt!140270 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!6712 a!3325) i!1267 k!2581) startIndex!26) mask!3868) (select (store (arr!6712 a!3325) i!1267 k!2581) startIndex!26) lt!140147 mask!3868))))

(assert (=> d!65345 (validMask!0 mask!3868)))

(assert (=> d!65345 (= (seekEntryOrOpen!0 (select (store (arr!6712 a!3325) i!1267 k!2581) startIndex!26) lt!140147 mask!3868) lt!140269)))

(declare-fun b!283696 () Bool)

(declare-fun c!46127 () Bool)

(assert (=> b!283696 (= c!46127 (= lt!140268 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!283696 (= e!180011 e!180009)))

(assert (= (and d!65345 c!46126) b!283698))

(assert (= (and d!65345 (not c!46126)) b!283697))

(assert (= (and b!283697 c!46125) b!283699))

(assert (= (and b!283697 (not c!46125)) b!283696))

(assert (= (and b!283696 c!46127) b!283695))

(assert (= (and b!283696 (not c!46127)) b!283694))

(assert (=> b!283694 m!298411))

(declare-fun m!298683 () Bool)

(assert (=> b!283694 m!298683))

(declare-fun m!298685 () Bool)

(assert (=> b!283697 m!298685))

(declare-fun m!298687 () Bool)

(assert (=> d!65345 m!298687))

(assert (=> d!65345 m!298411))

(declare-fun m!298689 () Bool)

(assert (=> d!65345 m!298689))

(assert (=> d!65345 m!298411))

(assert (=> d!65345 m!298687))

(assert (=> d!65345 m!298399))

(declare-fun m!298691 () Bool)

(assert (=> d!65345 m!298691))

(declare-fun m!298693 () Bool)

(assert (=> d!65345 m!298693))

(declare-fun m!298697 () Bool)

(assert (=> d!65345 m!298697))

(assert (=> b!283450 d!65345))

(declare-fun d!65349 () Bool)

(declare-fun e!180019 () Bool)

(assert (=> d!65349 e!180019))

(declare-fun res!146553 () Bool)

(assert (=> d!65349 (=> (not res!146553) (not e!180019))))

(assert (=> d!65349 (= res!146553 (and (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7064 a!3325))))))

(declare-fun lt!140278 () Unit!9025)

(declare-fun choose!41 (array!14144 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4541) Unit!9025)

(assert (=> d!65349 (= lt!140278 (choose!41 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4538))))

(assert (=> d!65349 (bvslt (size!7064 a!3325) #b01111111111111111111111111111111)))

(assert (=> d!65349 (= (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4538) lt!140278)))

(declare-fun b!283710 () Bool)

(assert (=> b!283710 (= e!180019 (arrayNoDuplicates!0 (array!14145 (store (arr!6712 a!3325) i!1267 k!2581) (size!7064 a!3325)) #b00000000000000000000000000000000 Nil!4538))))

(assert (= (and d!65349 res!146553) b!283710))

(declare-fun m!298711 () Bool)

(assert (=> d!65349 m!298711))

(assert (=> b!283710 m!298397))

(declare-fun m!298715 () Bool)

(assert (=> b!283710 m!298715))

(assert (=> b!283450 d!65349))

(declare-fun b!283732 () Bool)

(declare-fun e!180036 () Bool)

(declare-fun call!25512 () Bool)

(assert (=> b!283732 (= e!180036 call!25512)))

(declare-fun b!283733 () Bool)

(assert (=> b!283733 (= e!180036 call!25512)))

(declare-fun bm!25509 () Bool)

(declare-fun c!46137 () Bool)

(assert (=> bm!25509 (= call!25512 (arrayNoDuplicates!0 lt!140147 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!46137 (Cons!4537 (select (arr!6712 lt!140147) #b00000000000000000000000000000000) Nil!4538) Nil!4538)))))

(declare-fun b!283734 () Bool)

(declare-fun e!180037 () Bool)

(declare-fun e!180038 () Bool)

(assert (=> b!283734 (= e!180037 e!180038)))

(declare-fun res!146565 () Bool)

(assert (=> b!283734 (=> (not res!146565) (not e!180038))))

(declare-fun e!180035 () Bool)

(assert (=> b!283734 (= res!146565 (not e!180035))))

(declare-fun res!146564 () Bool)

(assert (=> b!283734 (=> (not res!146564) (not e!180035))))

(assert (=> b!283734 (= res!146564 (validKeyInArray!0 (select (arr!6712 lt!140147) #b00000000000000000000000000000000)))))

(declare-fun d!65353 () Bool)

(declare-fun res!146563 () Bool)

(assert (=> d!65353 (=> res!146563 e!180037)))

(assert (=> d!65353 (= res!146563 (bvsge #b00000000000000000000000000000000 (size!7064 lt!140147)))))

(assert (=> d!65353 (= (arrayNoDuplicates!0 lt!140147 #b00000000000000000000000000000000 Nil!4538) e!180037)))

(declare-fun b!283735 () Bool)

(assert (=> b!283735 (= e!180038 e!180036)))

(assert (=> b!283735 (= c!46137 (validKeyInArray!0 (select (arr!6712 lt!140147) #b00000000000000000000000000000000)))))

(declare-fun b!283736 () Bool)

(declare-fun contains!1994 (List!4541 (_ BitVec 64)) Bool)

(assert (=> b!283736 (= e!180035 (contains!1994 Nil!4538 (select (arr!6712 lt!140147) #b00000000000000000000000000000000)))))

(assert (= (and d!65353 (not res!146563)) b!283734))

(assert (= (and b!283734 res!146564) b!283736))

(assert (= (and b!283734 res!146565) b!283735))

(assert (= (and b!283735 c!46137) b!283733))

(assert (= (and b!283735 (not c!46137)) b!283732))

(assert (= (or b!283733 b!283732) bm!25509))

(declare-fun m!298741 () Bool)

(assert (=> bm!25509 m!298741))

(declare-fun m!298743 () Bool)

(assert (=> bm!25509 m!298743))

(assert (=> b!283734 m!298741))

(assert (=> b!283734 m!298741))

(declare-fun m!298745 () Bool)

(assert (=> b!283734 m!298745))

(assert (=> b!283735 m!298741))

(assert (=> b!283735 m!298741))

(assert (=> b!283735 m!298745))

(assert (=> b!283736 m!298741))

(assert (=> b!283736 m!298741))

(declare-fun m!298749 () Bool)

(assert (=> b!283736 m!298749))

(assert (=> b!283450 d!65353))

(declare-fun d!65363 () Bool)

(assert (=> d!65363 (= (validKeyInArray!0 k!2581) (and (not (= k!2581 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2581 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!283443 d!65363))

(declare-fun d!65367 () Bool)

(assert (=> d!65367 (= (validKeyInArray!0 (select (arr!6712 a!3325) startIndex!26)) (and (not (= (select (arr!6712 a!3325) startIndex!26) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!6712 a!3325) startIndex!26) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!283448 d!65367))

(declare-fun d!65369 () Bool)

(assert (=> d!65369 (= (validMask!0 mask!3868) (and (or (= mask!3868 #b00000000000000000000000000000111) (= mask!3868 #b00000000000000000000000000001111) (= mask!3868 #b00000000000000000000000000011111) (= mask!3868 #b00000000000000000000000000111111) (= mask!3868 #b00000000000000000000000001111111) (= mask!3868 #b00000000000000000000000011111111) (= mask!3868 #b00000000000000000000000111111111) (= mask!3868 #b00000000000000000000001111111111) (= mask!3868 #b00000000000000000000011111111111) (= mask!3868 #b00000000000000000000111111111111) (= mask!3868 #b00000000000000000001111111111111) (= mask!3868 #b00000000000000000011111111111111) (= mask!3868 #b00000000000000000111111111111111) (= mask!3868 #b00000000000000001111111111111111) (= mask!3868 #b00000000000000011111111111111111) (= mask!3868 #b00000000000000111111111111111111) (= mask!3868 #b00000000000001111111111111111111) (= mask!3868 #b00000000000011111111111111111111) (= mask!3868 #b00000000000111111111111111111111) (= mask!3868 #b00000000001111111111111111111111) (= mask!3868 #b00000000011111111111111111111111) (= mask!3868 #b00000000111111111111111111111111) (= mask!3868 #b00000001111111111111111111111111) (= mask!3868 #b00000011111111111111111111111111) (= mask!3868 #b00000111111111111111111111111111) (= mask!3868 #b00001111111111111111111111111111) (= mask!3868 #b00011111111111111111111111111111) (= mask!3868 #b00111111111111111111111111111111)) (bvsle mask!3868 #b00111111111111111111111111111111)))))

(assert (=> start!27400 d!65369))

(declare-fun d!65371 () Bool)

(assert (=> d!65371 (= (array_inv!4666 a!3325) (bvsge (size!7064 a!3325) #b00000000000000000000000000000000))))

(assert (=> start!27400 d!65371))

(declare-fun b!283748 () Bool)

(declare-fun e!180047 () Bool)

(declare-fun call!25514 () Bool)

(assert (=> b!283748 (= e!180047 call!25514)))

(declare-fun b!283749 () Bool)

(assert (=> b!283749 (= e!180047 call!25514)))

(declare-fun bm!25511 () Bool)

(declare-fun c!46142 () Bool)

(assert (=> bm!25511 (= call!25514 (arrayNoDuplicates!0 a!3325 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!46142 (Cons!4537 (select (arr!6712 a!3325) #b00000000000000000000000000000000) Nil!4538) Nil!4538)))))

(declare-fun b!283750 () Bool)

(declare-fun e!180048 () Bool)

(declare-fun e!180049 () Bool)

(assert (=> b!283750 (= e!180048 e!180049)))

(declare-fun res!146571 () Bool)

(assert (=> b!283750 (=> (not res!146571) (not e!180049))))

(declare-fun e!180046 () Bool)

(assert (=> b!283750 (= res!146571 (not e!180046))))

(declare-fun res!146570 () Bool)

(assert (=> b!283750 (=> (not res!146570) (not e!180046))))

(assert (=> b!283750 (= res!146570 (validKeyInArray!0 (select (arr!6712 a!3325) #b00000000000000000000000000000000)))))

(declare-fun d!65373 () Bool)

(declare-fun res!146569 () Bool)

(assert (=> d!65373 (=> res!146569 e!180048)))

(assert (=> d!65373 (= res!146569 (bvsge #b00000000000000000000000000000000 (size!7064 a!3325)))))

(assert (=> d!65373 (= (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4538) e!180048)))

(declare-fun b!283751 () Bool)

(assert (=> b!283751 (= e!180049 e!180047)))

(assert (=> b!283751 (= c!46142 (validKeyInArray!0 (select (arr!6712 a!3325) #b00000000000000000000000000000000)))))

(declare-fun b!283752 () Bool)

(assert (=> b!283752 (= e!180046 (contains!1994 Nil!4538 (select (arr!6712 a!3325) #b00000000000000000000000000000000)))))

(assert (= (and d!65373 (not res!146569)) b!283750))

(assert (= (and b!283750 res!146570) b!283752))

(assert (= (and b!283750 res!146571) b!283751))

(assert (= (and b!283751 c!46142) b!283749))

(assert (= (and b!283751 (not c!46142)) b!283748))

(assert (= (or b!283749 b!283748) bm!25511))

(assert (=> bm!25511 m!298523))

(declare-fun m!298771 () Bool)

(assert (=> bm!25511 m!298771))

(assert (=> b!283750 m!298523))

(assert (=> b!283750 m!298523))

(assert (=> b!283750 m!298559))

(assert (=> b!283751 m!298523))

(assert (=> b!283751 m!298523))

(assert (=> b!283751 m!298559))

(assert (=> b!283752 m!298523))

(assert (=> b!283752 m!298523))

(declare-fun m!298773 () Bool)

(assert (=> b!283752 m!298773))

(assert (=> b!283447 d!65373))

(declare-fun lt!140294 () SeekEntryResult!1881)

(declare-fun b!283753 () Bool)

(declare-fun e!180050 () SeekEntryResult!1881)

(assert (=> b!283753 (= e!180050 (seekKeyOrZeroReturnVacant!0 (x!27871 lt!140294) (index!9696 lt!140294) (index!9696 lt!140294) k!2581 a!3325 mask!3868))))

(declare-fun b!283754 () Bool)

(assert (=> b!283754 (= e!180050 (MissingZero!1881 (index!9696 lt!140294)))))

(declare-fun b!283756 () Bool)

(declare-fun e!180051 () SeekEntryResult!1881)

(declare-fun e!180052 () SeekEntryResult!1881)

(assert (=> b!283756 (= e!180051 e!180052)))

(declare-fun lt!140292 () (_ BitVec 64))

(assert (=> b!283756 (= lt!140292 (select (arr!6712 a!3325) (index!9696 lt!140294)))))

(declare-fun c!46143 () Bool)

(assert (=> b!283756 (= c!46143 (= lt!140292 k!2581))))

(declare-fun b!283757 () Bool)

(assert (=> b!283757 (= e!180051 Undefined!1881)))

(declare-fun b!283758 () Bool)

(assert (=> b!283758 (= e!180052 (Found!1881 (index!9696 lt!140294)))))

(declare-fun d!65375 () Bool)

(declare-fun lt!140293 () SeekEntryResult!1881)

(assert (=> d!65375 (and (or (is-Undefined!1881 lt!140293) (not (is-Found!1881 lt!140293)) (and (bvsge (index!9695 lt!140293) #b00000000000000000000000000000000) (bvslt (index!9695 lt!140293) (size!7064 a!3325)))) (or (is-Undefined!1881 lt!140293) (is-Found!1881 lt!140293) (not (is-MissingZero!1881 lt!140293)) (and (bvsge (index!9694 lt!140293) #b00000000000000000000000000000000) (bvslt (index!9694 lt!140293) (size!7064 a!3325)))) (or (is-Undefined!1881 lt!140293) (is-Found!1881 lt!140293) (is-MissingZero!1881 lt!140293) (not (is-MissingVacant!1881 lt!140293)) (and (bvsge (index!9697 lt!140293) #b00000000000000000000000000000000) (bvslt (index!9697 lt!140293) (size!7064 a!3325)))) (or (is-Undefined!1881 lt!140293) (ite (is-Found!1881 lt!140293) (= (select (arr!6712 a!3325) (index!9695 lt!140293)) k!2581) (ite (is-MissingZero!1881 lt!140293) (= (select (arr!6712 a!3325) (index!9694 lt!140293)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!1881 lt!140293) (= (select (arr!6712 a!3325) (index!9697 lt!140293)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!65375 (= lt!140293 e!180051)))

(declare-fun c!46144 () Bool)

(assert (=> d!65375 (= c!46144 (and (is-Intermediate!1881 lt!140294) (undefined!2693 lt!140294)))))

(assert (=> d!65375 (= lt!140294 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2581 mask!3868) k!2581 a!3325 mask!3868))))

(assert (=> d!65375 (validMask!0 mask!3868)))

(assert (=> d!65375 (= (seekEntryOrOpen!0 k!2581 a!3325 mask!3868) lt!140293)))

(declare-fun b!283755 () Bool)

(declare-fun c!46145 () Bool)

(assert (=> b!283755 (= c!46145 (= lt!140292 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!283755 (= e!180052 e!180050)))

(assert (= (and d!65375 c!46144) b!283757))

(assert (= (and d!65375 (not c!46144)) b!283756))

(assert (= (and b!283756 c!46143) b!283758))

(assert (= (and b!283756 (not c!46143)) b!283755))

(assert (= (and b!283755 c!46145) b!283754))

(assert (= (and b!283755 (not c!46145)) b!283753))

(declare-fun m!298775 () Bool)

(assert (=> b!283753 m!298775))

(declare-fun m!298777 () Bool)

(assert (=> b!283756 m!298777))

(declare-fun m!298779 () Bool)

(assert (=> d!65375 m!298779))

(declare-fun m!298781 () Bool)

(assert (=> d!65375 m!298781))

(assert (=> d!65375 m!298779))

(assert (=> d!65375 m!298399))

(declare-fun m!298783 () Bool)

(assert (=> d!65375 m!298783))

(declare-fun m!298785 () Bool)

(assert (=> d!65375 m!298785))

(declare-fun m!298787 () Bool)

(assert (=> d!65375 m!298787))

(assert (=> b!283452 d!65375))

(push 1)

(assert (not d!65341))

(assert (not b!283694))

(assert (not b!283672))

(assert (not bm!25494))

(assert (not bm!25495))

(assert (not d!65321))

(assert (not b!283735))

(assert (not b!283577))

(assert (not b!283591))

(assert (not b!283691))

(assert (not d!65349))

(assert (not b!283734))

(assert (not bm!25511))

(assert (not d!65375))

(assert (not b!283736))

(assert (not bm!25505))

(assert (not d!65305))

(assert (not b!283590))

(assert (not b!283750))

(assert (not d!65345))

(assert (not b!283710))

(assert (not bm!25509))

(assert (not b!283576))

(assert (not b!283752))

(assert (not b!283619))

(assert (not b!283551))

(assert (not b!283690))

(assert (not b!283751))

(assert (not b!283753))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(assert (=> b!283619 d!65321))

(declare-fun b!283895 () Bool)

(declare-fun e!180139 () SeekEntryResult!1881)

(declare-fun lt!140354 () SeekEntryResult!1881)

(assert (=> b!283895 (= e!180139 (seekKeyOrZeroReturnVacant!0 (x!27871 lt!140354) (index!9696 lt!140354) (index!9696 lt!140354) (select (store (arr!6712 a!3325) i!1267 k!2581) startIndex!26) (array!14145 (store (arr!6712 a!3325) i!1267 k!2581) (size!7064 a!3325)) mask!3868))))

(declare-fun b!283896 () Bool)

(assert (=> b!283896 (= e!180139 (MissingZero!1881 (index!9696 lt!140354)))))

(declare-fun b!283898 () Bool)

(declare-fun e!180140 () SeekEntryResult!1881)

(declare-fun e!180141 () SeekEntryResult!1881)

(assert (=> b!283898 (= e!180140 e!180141)))

(declare-fun lt!140352 () (_ BitVec 64))

(assert (=> b!283898 (= lt!140352 (select (arr!6712 (array!14145 (store (arr!6712 a!3325) i!1267 k!2581) (size!7064 a!3325))) (index!9696 lt!140354)))))

(declare-fun c!46191 () Bool)

(assert (=> b!283898 (= c!46191 (= lt!140352 (select (store (arr!6712 a!3325) i!1267 k!2581) startIndex!26)))))

(declare-fun b!283899 () Bool)

(assert (=> b!283899 (= e!180140 Undefined!1881)))

(declare-fun b!283900 () Bool)

(assert (=> b!283900 (= e!180141 (Found!1881 (index!9696 lt!140354)))))

(declare-fun lt!140353 () SeekEntryResult!1881)

(declare-fun d!65443 () Bool)

(assert (=> d!65443 (and (or (is-Undefined!1881 lt!140353) (not (is-Found!1881 lt!140353)) (and (bvsge (index!9695 lt!140353) #b00000000000000000000000000000000) (bvslt (index!9695 lt!140353) (size!7064 (array!14145 (store (arr!6712 a!3325) i!1267 k!2581) (size!7064 a!3325)))))) (or (is-Undefined!1881 lt!140353) (is-Found!1881 lt!140353) (not (is-MissingZero!1881 lt!140353)) (and (bvsge (index!9694 lt!140353) #b00000000000000000000000000000000) (bvslt (index!9694 lt!140353) (size!7064 (array!14145 (store (arr!6712 a!3325) i!1267 k!2581) (size!7064 a!3325)))))) (or (is-Undefined!1881 lt!140353) (is-Found!1881 lt!140353) (is-MissingZero!1881 lt!140353) (not (is-MissingVacant!1881 lt!140353)) (and (bvsge (index!9697 lt!140353) #b00000000000000000000000000000000) (bvslt (index!9697 lt!140353) (size!7064 (array!14145 (store (arr!6712 a!3325) i!1267 k!2581) (size!7064 a!3325)))))) (or (is-Undefined!1881 lt!140353) (ite (is-Found!1881 lt!140353) (= (select (arr!6712 (array!14145 (store (arr!6712 a!3325) i!1267 k!2581) (size!7064 a!3325))) (index!9695 lt!140353)) (select (store (arr!6712 a!3325) i!1267 k!2581) startIndex!26)) (ite (is-MissingZero!1881 lt!140353) (= (select (arr!6712 (array!14145 (store (arr!6712 a!3325) i!1267 k!2581) (size!7064 a!3325))) (index!9694 lt!140353)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!1881 lt!140353) (= (select (arr!6712 (array!14145 (store (arr!6712 a!3325) i!1267 k!2581) (size!7064 a!3325))) (index!9697 lt!140353)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!65443 (= lt!140353 e!180140)))

(declare-fun c!46192 () Bool)

(assert (=> d!65443 (= c!46192 (and (is-Intermediate!1881 lt!140354) (undefined!2693 lt!140354)))))

(assert (=> d!65443 (= lt!140354 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!6712 a!3325) i!1267 k!2581) startIndex!26) mask!3868) (select (store (arr!6712 a!3325) i!1267 k!2581) startIndex!26) (array!14145 (store (arr!6712 a!3325) i!1267 k!2581) (size!7064 a!3325)) mask!3868))))

(assert (=> d!65443 (validMask!0 mask!3868)))

(assert (=> d!65443 (= (seekEntryOrOpen!0 (select (store (arr!6712 a!3325) i!1267 k!2581) startIndex!26) (array!14145 (store (arr!6712 a!3325) i!1267 k!2581) (size!7064 a!3325)) mask!3868) lt!140353)))

(declare-fun b!283897 () Bool)

(declare-fun c!46193 () Bool)

(assert (=> b!283897 (= c!46193 (= lt!140352 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!283897 (= e!180141 e!180139)))

(assert (= (and d!65443 c!46192) b!283899))

(assert (= (and d!65443 (not c!46192)) b!283898))

(assert (= (and b!283898 c!46191) b!283900))

(assert (= (and b!283898 (not c!46191)) b!283897))

(assert (= (and b!283897 c!46193) b!283896))

(assert (= (and b!283897 (not c!46193)) b!283895))

(assert (=> b!283895 m!298411))

(declare-fun m!298957 () Bool)

(assert (=> b!283895 m!298957))

(declare-fun m!298959 () Bool)

(assert (=> b!283898 m!298959))

(assert (=> d!65443 m!298687))

(assert (=> d!65443 m!298411))

(declare-fun m!298961 () Bool)

(assert (=> d!65443 m!298961))

(assert (=> d!65443 m!298411))

(assert (=> d!65443 m!298687))

(assert (=> d!65443 m!298399))

(declare-fun m!298963 () Bool)

(assert (=> d!65443 m!298963))

(declare-fun m!298965 () Bool)

(assert (=> d!65443 m!298965))

(declare-fun m!298967 () Bool)

(assert (=> d!65443 m!298967))

(assert (=> b!283619 d!65443))

(declare-fun b!283901 () Bool)

(declare-fun e!180143 () Bool)

(declare-fun call!25521 () Bool)

(assert (=> b!283901 (= e!180143 call!25521)))

(declare-fun b!283902 () Bool)

(assert (=> b!283902 (= e!180143 call!25521)))

(declare-fun bm!25518 () Bool)

(declare-fun c!46194 () Bool)

(assert (=> bm!25518 (= call!25521 (arrayNoDuplicates!0 (array!14145 (store (arr!6712 a!3325) i!1267 k!2581) (size!7064 a!3325)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!46194 (Cons!4537 (select (arr!6712 (array!14145 (store (arr!6712 a!3325) i!1267 k!2581) (size!7064 a!3325))) #b00000000000000000000000000000000) Nil!4538) Nil!4538)))))

(declare-fun b!283903 () Bool)

(declare-fun e!180144 () Bool)

(declare-fun e!180145 () Bool)

(assert (=> b!283903 (= e!180144 e!180145)))

(declare-fun res!146621 () Bool)

(assert (=> b!283903 (=> (not res!146621) (not e!180145))))

(declare-fun e!180142 () Bool)

(assert (=> b!283903 (= res!146621 (not e!180142))))

(declare-fun res!146620 () Bool)

(assert (=> b!283903 (=> (not res!146620) (not e!180142))))

(assert (=> b!283903 (= res!146620 (validKeyInArray!0 (select (arr!6712 (array!14145 (store (arr!6712 a!3325) i!1267 k!2581) (size!7064 a!3325))) #b00000000000000000000000000000000)))))

(declare-fun d!65445 () Bool)

(declare-fun res!146619 () Bool)

(assert (=> d!65445 (=> res!146619 e!180144)))

(assert (=> d!65445 (= res!146619 (bvsge #b00000000000000000000000000000000 (size!7064 (array!14145 (store (arr!6712 a!3325) i!1267 k!2581) (size!7064 a!3325)))))))

(assert (=> d!65445 (= (arrayNoDuplicates!0 (array!14145 (store (arr!6712 a!3325) i!1267 k!2581) (size!7064 a!3325)) #b00000000000000000000000000000000 Nil!4538) e!180144)))

(declare-fun b!283904 () Bool)

(assert (=> b!283904 (= e!180145 e!180143)))

(assert (=> b!283904 (= c!46194 (validKeyInArray!0 (select (arr!6712 (array!14145 (store (arr!6712 a!3325) i!1267 k!2581) (size!7064 a!3325))) #b00000000000000000000000000000000)))))

(declare-fun b!283905 () Bool)

(assert (=> b!283905 (= e!180142 (contains!1994 Nil!4538 (select (arr!6712 (array!14145 (store (arr!6712 a!3325) i!1267 k!2581) (size!7064 a!3325))) #b00000000000000000000000000000000)))))

(assert (= (and d!65445 (not res!146619)) b!283903))

(assert (= (and b!283903 res!146620) b!283905))

(assert (= (and b!283903 res!146621) b!283904))

(assert (= (and b!283904 c!46194) b!283902))

(assert (= (and b!283904 (not c!46194)) b!283901))

(assert (= (or b!283902 b!283901) bm!25518))

(declare-fun m!298969 () Bool)

(assert (=> bm!25518 m!298969))

(declare-fun m!298971 () Bool)

(assert (=> bm!25518 m!298971))

(assert (=> b!283903 m!298969))

(assert (=> b!283903 m!298969))

(declare-fun m!298973 () Bool)

(assert (=> b!283903 m!298973))

(assert (=> b!283904 m!298969))

(assert (=> b!283904 m!298969))

(assert (=> b!283904 m!298973))

(assert (=> b!283905 m!298969))

(assert (=> b!283905 m!298969))

(declare-fun m!298975 () Bool)

(assert (=> b!283905 m!298975))

(assert (=> b!283710 d!65445))

(declare-fun b!283924 () Bool)

(declare-fun e!180158 () SeekEntryResult!1881)

(assert (=> b!283924 (= e!180158 (Intermediate!1881 true (toIndex!0 k!2581 mask!3868) #b00000000000000000000000000000000))))

(declare-fun b!283925 () Bool)

(declare-fun lt!140360 () SeekEntryResult!1881)

(assert (=> b!283925 (and (bvsge (index!9696 lt!140360) #b00000000000000000000000000000000) (bvslt (index!9696 lt!140360) (size!7064 a!3325)))))

(declare-fun res!146628 () Bool)

(assert (=> b!283925 (= res!146628 (= (select (arr!6712 a!3325) (index!9696 lt!140360)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!180159 () Bool)

(assert (=> b!283925 (=> res!146628 e!180159)))

(declare-fun b!283926 () Bool)

(declare-fun e!180160 () SeekEntryResult!1881)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!283926 (= e!180160 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!2581 mask!3868) #b00000000000000000000000000000000 mask!3868) k!2581 a!3325 mask!3868))))

(declare-fun b!283927 () Bool)

(declare-fun e!180157 () Bool)

(declare-fun e!180156 () Bool)

(assert (=> b!283927 (= e!180157 e!180156)))

(declare-fun res!146629 () Bool)

(assert (=> b!283927 (= res!146629 (and (is-Intermediate!1881 lt!140360) (not (undefined!2693 lt!140360)) (bvslt (x!27871 lt!140360) #b01111111111111111111111111111110) (bvsge (x!27871 lt!140360) #b00000000000000000000000000000000) (bvsge (x!27871 lt!140360) #b00000000000000000000000000000000)))))

(assert (=> b!283927 (=> (not res!146629) (not e!180156))))

(declare-fun b!283928 () Bool)

(assert (=> b!283928 (= e!180157 (bvsge (x!27871 lt!140360) #b01111111111111111111111111111110))))

(declare-fun b!283929 () Bool)

(assert (=> b!283929 (= e!180158 e!180160)))

(declare-fun c!46201 () Bool)

(declare-fun lt!140359 () (_ BitVec 64))

(assert (=> b!283929 (= c!46201 (or (= lt!140359 k!2581) (= (bvadd lt!140359 lt!140359) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!283930 () Bool)

(assert (=> b!283930 (and (bvsge (index!9696 lt!140360) #b00000000000000000000000000000000) (bvslt (index!9696 lt!140360) (size!7064 a!3325)))))

(assert (=> b!283930 (= e!180159 (= (select (arr!6712 a!3325) (index!9696 lt!140360)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!65447 () Bool)

(assert (=> d!65447 e!180157))

(declare-fun c!46202 () Bool)

(assert (=> d!65447 (= c!46202 (and (is-Intermediate!1881 lt!140360) (undefined!2693 lt!140360)))))

(assert (=> d!65447 (= lt!140360 e!180158)))

(declare-fun c!46203 () Bool)

(assert (=> d!65447 (= c!46203 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!65447 (= lt!140359 (select (arr!6712 a!3325) (toIndex!0 k!2581 mask!3868)))))

(assert (=> d!65447 (validMask!0 mask!3868)))

(assert (=> d!65447 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2581 mask!3868) k!2581 a!3325 mask!3868) lt!140360)))

(declare-fun b!283931 () Bool)

(assert (=> b!283931 (= e!180160 (Intermediate!1881 false (toIndex!0 k!2581 mask!3868) #b00000000000000000000000000000000))))

(declare-fun b!283932 () Bool)

(assert (=> b!283932 (and (bvsge (index!9696 lt!140360) #b00000000000000000000000000000000) (bvslt (index!9696 lt!140360) (size!7064 a!3325)))))

(declare-fun res!146630 () Bool)

(assert (=> b!283932 (= res!146630 (= (select (arr!6712 a!3325) (index!9696 lt!140360)) k!2581))))

(assert (=> b!283932 (=> res!146630 e!180159)))

(assert (=> b!283932 (= e!180156 e!180159)))

(assert (= (and d!65447 c!46203) b!283924))

(assert (= (and d!65447 (not c!46203)) b!283929))

(assert (= (and b!283929 c!46201) b!283931))

(assert (= (and b!283929 (not c!46201)) b!283926))

(assert (= (and d!65447 c!46202) b!283928))

(assert (= (and d!65447 (not c!46202)) b!283927))

(assert (= (and b!283927 res!146629) b!283932))

(assert (= (and b!283932 (not res!146630)) b!283925))

(assert (= (and b!283925 (not res!146628)) b!283930))

(declare-fun m!298977 () Bool)

(assert (=> b!283932 m!298977))

(assert (=> d!65447 m!298779))

(declare-fun m!298979 () Bool)

(assert (=> d!65447 m!298979))

(assert (=> d!65447 m!298399))

(assert (=> b!283925 m!298977))

(assert (=> b!283926 m!298779))

(declare-fun m!298981 () Bool)

(assert (=> b!283926 m!298981))

(assert (=> b!283926 m!298981))

(declare-fun m!298983 () Bool)

(assert (=> b!283926 m!298983))

(assert (=> b!283930 m!298977))

(assert (=> d!65375 d!65447))

(declare-fun d!65449 () Bool)

(declare-fun lt!140366 () (_ BitVec 32))

(declare-fun lt!140365 () (_ BitVec 32))

(assert (=> d!65449 (= lt!140366 (bvmul (bvxor lt!140365 (bvlshr lt!140365 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!65449 (= lt!140365 ((_ extract 31 0) (bvand (bvxor k!2581 (bvlshr k!2581 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!65449 (and (bvsge mask!3868 #b00000000000000000000000000000000) (let ((res!146631 (let ((h!5211 ((_ extract 31 0) (bvand (bvxor k!2581 (bvlshr k!2581 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!27878 (bvmul (bvxor h!5211 (bvlshr h!5211 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!27878 (bvlshr x!27878 #b00000000000000000000000000001101)) mask!3868))))) (and (bvslt res!146631 (bvadd mask!3868 #b00000000000000000000000000000001)) (bvsge res!146631 #b00000000000000000000000000000000))))))

(assert (=> d!65449 (= (toIndex!0 k!2581 mask!3868) (bvand (bvxor lt!140366 (bvlshr lt!140366 #b00000000000000000000000000001101)) mask!3868))))

(assert (=> d!65375 d!65449))

(assert (=> d!65375 d!65369))

(declare-fun d!65451 () Bool)

(assert (=> d!65451 (arrayContainsKey!0 a!3325 lt!140207 #b00000000000000000000000000000000)))

(declare-fun lt!140369 () Unit!9025)

(declare-fun choose!13 (array!14144 (_ BitVec 64) (_ BitVec 32)) Unit!9025)

(assert (=> d!65451 (= lt!140369 (choose!13 a!3325 lt!140207 #b00000000000000000000000000000000))))

(assert (=> d!65451 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!65451 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3325 lt!140207 #b00000000000000000000000000000000) lt!140369)))

(declare-fun bs!10081 () Bool)

(assert (= bs!10081 d!65451))

(assert (=> bs!10081 m!298555))

(declare-fun m!298985 () Bool)

(assert (=> bs!10081 m!298985))

(assert (=> b!283577 d!65451))

(declare-fun d!65453 () Bool)

(declare-fun res!146632 () Bool)

(declare-fun e!180161 () Bool)

(assert (=> d!65453 (=> res!146632 e!180161)))

(assert (=> d!65453 (= res!146632 (= (select (arr!6712 a!3325) #b00000000000000000000000000000000) lt!140207))))

(assert (=> d!65453 (= (arrayContainsKey!0 a!3325 lt!140207 #b00000000000000000000000000000000) e!180161)))

(declare-fun b!283933 () Bool)

(declare-fun e!180162 () Bool)

(assert (=> b!283933 (= e!180161 e!180162)))

(declare-fun res!146633 () Bool)

(assert (=> b!283933 (=> (not res!146633) (not e!180162))))

(assert (=> b!283933 (= res!146633 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7064 a!3325)))))

(declare-fun b!283934 () Bool)

(assert (=> b!283934 (= e!180162 (arrayContainsKey!0 a!3325 lt!140207 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!65453 (not res!146632)) b!283933))

(assert (= (and b!283933 res!146633) b!283934))

(assert (=> d!65453 m!298523))

(declare-fun m!298987 () Bool)

(assert (=> b!283934 m!298987))

(assert (=> b!283577 d!65453))

(declare-fun lt!140372 () SeekEntryResult!1881)

(declare-fun b!283935 () Bool)

(declare-fun e!180163 () SeekEntryResult!1881)

(assert (=> b!283935 (= e!180163 (seekKeyOrZeroReturnVacant!0 (x!27871 lt!140372) (index!9696 lt!140372) (index!9696 lt!140372) (select (arr!6712 a!3325) #b00000000000000000000000000000000) a!3325 mask!3868))))

(declare-fun b!283936 () Bool)

(assert (=> b!283936 (= e!180163 (MissingZero!1881 (index!9696 lt!140372)))))

(declare-fun b!283938 () Bool)

(declare-fun e!180164 () SeekEntryResult!1881)

(declare-fun e!180165 () SeekEntryResult!1881)

(assert (=> b!283938 (= e!180164 e!180165)))

(declare-fun lt!140370 () (_ BitVec 64))

(assert (=> b!283938 (= lt!140370 (select (arr!6712 a!3325) (index!9696 lt!140372)))))

(declare-fun c!46204 () Bool)

(assert (=> b!283938 (= c!46204 (= lt!140370 (select (arr!6712 a!3325) #b00000000000000000000000000000000)))))

(declare-fun b!283939 () Bool)

(assert (=> b!283939 (= e!180164 Undefined!1881)))

(declare-fun b!283940 () Bool)

(assert (=> b!283940 (= e!180165 (Found!1881 (index!9696 lt!140372)))))

(declare-fun d!65455 () Bool)

(declare-fun lt!140371 () SeekEntryResult!1881)

(assert (=> d!65455 (and (or (is-Undefined!1881 lt!140371) (not (is-Found!1881 lt!140371)) (and (bvsge (index!9695 lt!140371) #b00000000000000000000000000000000) (bvslt (index!9695 lt!140371) (size!7064 a!3325)))) (or (is-Undefined!1881 lt!140371) (is-Found!1881 lt!140371) (not (is-MissingZero!1881 lt!140371)) (and (bvsge (index!9694 lt!140371) #b00000000000000000000000000000000) (bvslt (index!9694 lt!140371) (size!7064 a!3325)))) (or (is-Undefined!1881 lt!140371) (is-Found!1881 lt!140371) (is-MissingZero!1881 lt!140371) (not (is-MissingVacant!1881 lt!140371)) (and (bvsge (index!9697 lt!140371) #b00000000000000000000000000000000) (bvslt (index!9697 lt!140371) (size!7064 a!3325)))) (or (is-Undefined!1881 lt!140371) (ite (is-Found!1881 lt!140371) (= (select (arr!6712 a!3325) (index!9695 lt!140371)) (select (arr!6712 a!3325) #b00000000000000000000000000000000)) (ite (is-MissingZero!1881 lt!140371) (= (select (arr!6712 a!3325) (index!9694 lt!140371)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!1881 lt!140371) (= (select (arr!6712 a!3325) (index!9697 lt!140371)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!65455 (= lt!140371 e!180164)))

(declare-fun c!46205 () Bool)

(assert (=> d!65455 (= c!46205 (and (is-Intermediate!1881 lt!140372) (undefined!2693 lt!140372)))))

(assert (=> d!65455 (= lt!140372 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!6712 a!3325) #b00000000000000000000000000000000) mask!3868) (select (arr!6712 a!3325) #b00000000000000000000000000000000) a!3325 mask!3868))))

(assert (=> d!65455 (validMask!0 mask!3868)))

(assert (=> d!65455 (= (seekEntryOrOpen!0 (select (arr!6712 a!3325) #b00000000000000000000000000000000) a!3325 mask!3868) lt!140371)))

(declare-fun b!283937 () Bool)

(declare-fun c!46206 () Bool)

(assert (=> b!283937 (= c!46206 (= lt!140370 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!283937 (= e!180165 e!180163)))

(assert (= (and d!65455 c!46205) b!283939))

(assert (= (and d!65455 (not c!46205)) b!283938))

(assert (= (and b!283938 c!46204) b!283940))

(assert (= (and b!283938 (not c!46204)) b!283937))

(assert (= (and b!283937 c!46206) b!283936))

(assert (= (and b!283937 (not c!46206)) b!283935))

(assert (=> b!283935 m!298523))

(declare-fun m!298989 () Bool)

(assert (=> b!283935 m!298989))

(declare-fun m!298991 () Bool)

(assert (=> b!283938 m!298991))

(declare-fun m!298993 () Bool)

(assert (=> d!65455 m!298993))

(assert (=> d!65455 m!298523))

(declare-fun m!298995 () Bool)

(assert (=> d!65455 m!298995))

(assert (=> d!65455 m!298523))

(assert (=> d!65455 m!298993))

(assert (=> d!65455 m!298399))

(declare-fun m!298997 () Bool)

(assert (=> d!65455 m!298997))

(declare-fun m!298999 () Bool)

(assert (=> d!65455 m!298999))

(declare-fun m!299001 () Bool)

(assert (=> d!65455 m!299001))

(assert (=> b!283577 d!65455))

(declare-fun b!283941 () Bool)

(declare-fun e!180167 () Bool)

(declare-fun call!25522 () Bool)

(assert (=> b!283941 (= e!180167 call!25522)))

(declare-fun b!283942 () Bool)

(assert (=> b!283942 (= e!180167 call!25522)))

(declare-fun bm!25519 () Bool)

(declare-fun c!46207 () Bool)

(assert (=> bm!25519 (= call!25522 (arrayNoDuplicates!0 lt!140147 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!46207 (Cons!4537 (select (arr!6712 lt!140147) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!46137 (Cons!4537 (select (arr!6712 lt!140147) #b00000000000000000000000000000000) Nil!4538) Nil!4538)) (ite c!46137 (Cons!4537 (select (arr!6712 lt!140147) #b00000000000000000000000000000000) Nil!4538) Nil!4538))))))

(declare-fun b!283943 () Bool)

(declare-fun e!180168 () Bool)

(declare-fun e!180169 () Bool)

(assert (=> b!283943 (= e!180168 e!180169)))

(declare-fun res!146636 () Bool)

(assert (=> b!283943 (=> (not res!146636) (not e!180169))))

(declare-fun e!180166 () Bool)

(assert (=> b!283943 (= res!146636 (not e!180166))))

(declare-fun res!146635 () Bool)

(assert (=> b!283943 (=> (not res!146635) (not e!180166))))

(assert (=> b!283943 (= res!146635 (validKeyInArray!0 (select (arr!6712 lt!140147) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!65457 () Bool)

(declare-fun res!146634 () Bool)

(assert (=> d!65457 (=> res!146634 e!180168)))

(assert (=> d!65457 (= res!146634 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7064 lt!140147)))))

(assert (=> d!65457 (= (arrayNoDuplicates!0 lt!140147 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!46137 (Cons!4537 (select (arr!6712 lt!140147) #b00000000000000000000000000000000) Nil!4538) Nil!4538)) e!180168)))

(declare-fun b!283944 () Bool)

(assert (=> b!283944 (= e!180169 e!180167)))

(assert (=> b!283944 (= c!46207 (validKeyInArray!0 (select (arr!6712 lt!140147) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!283945 () Bool)

(assert (=> b!283945 (= e!180166 (contains!1994 (ite c!46137 (Cons!4537 (select (arr!6712 lt!140147) #b00000000000000000000000000000000) Nil!4538) Nil!4538) (select (arr!6712 lt!140147) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (= (and d!65457 (not res!146634)) b!283943))

(assert (= (and b!283943 res!146635) b!283945))

(assert (= (and b!283943 res!146636) b!283944))

(assert (= (and b!283944 c!46207) b!283942))

(assert (= (and b!283944 (not c!46207)) b!283941))

(assert (= (or b!283942 b!283941) bm!25519))

(declare-fun m!299003 () Bool)

(assert (=> bm!25519 m!299003))

(declare-fun m!299005 () Bool)

(assert (=> bm!25519 m!299005))

(assert (=> b!283943 m!299003))

(assert (=> b!283943 m!299003))

(declare-fun m!299007 () Bool)

(assert (=> b!283943 m!299007))

(assert (=> b!283944 m!299003))

(assert (=> b!283944 m!299003))

(assert (=> b!283944 m!299007))

(assert (=> b!283945 m!299003))

(assert (=> b!283945 m!299003))

(declare-fun m!299009 () Bool)

(assert (=> b!283945 m!299009))

(assert (=> bm!25509 d!65457))

(declare-fun d!65459 () Bool)

(declare-fun lt!140375 () Bool)

(declare-fun content!191 (List!4541) (Set (_ BitVec 64)))

(assert (=> d!65459 (= lt!140375 (set.member (select (arr!6712 a!3325) #b00000000000000000000000000000000) (content!191 Nil!4538)))))

(declare-fun e!180175 () Bool)

(assert (=> d!65459 (= lt!140375 e!180175)))

(declare-fun res!146642 () Bool)

(assert (=> d!65459 (=> (not res!146642) (not e!180175))))

(assert (=> d!65459 (= res!146642 (is-Cons!4537 Nil!4538))))

(assert (=> d!65459 (= (contains!1994 Nil!4538 (select (arr!6712 a!3325) #b00000000000000000000000000000000)) lt!140375)))

(declare-fun b!283950 () Bool)

(declare-fun e!180174 () Bool)

(assert (=> b!283950 (= e!180175 e!180174)))

(declare-fun res!146641 () Bool)

(assert (=> b!283950 (=> res!146641 e!180174)))

(assert (=> b!283950 (= res!146641 (= (h!5207 Nil!4538) (select (arr!6712 a!3325) #b00000000000000000000000000000000)))))

(declare-fun b!283951 () Bool)

(assert (=> b!283951 (= e!180174 (contains!1994 (t!9631 Nil!4538) (select (arr!6712 a!3325) #b00000000000000000000000000000000)))))

(assert (= (and d!65459 res!146642) b!283950))

(assert (= (and b!283950 (not res!146641)) b!283951))

(declare-fun m!299011 () Bool)

(assert (=> d!65459 m!299011))

(assert (=> d!65459 m!298523))

(declare-fun m!299013 () Bool)

(assert (=> d!65459 m!299013))

(assert (=> b!283951 m!298523))

(declare-fun m!299015 () Bool)

(assert (=> b!283951 m!299015))

(assert (=> b!283752 d!65459))

(declare-fun d!65461 () Bool)

(assert (=> d!65461 (= (validKeyInArray!0 (select (arr!6712 a!3325) #b00000000000000000000000000000000)) (and (not (= (select (arr!6712 a!3325) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!6712 a!3325) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!283751 d!65461))

(declare-fun bm!25520 () Bool)

(declare-fun call!25523 () Bool)

(assert (=> bm!25520 (= call!25523 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) a!3325 mask!3868))))

(declare-fun b!283953 () Bool)

(declare-fun e!180176 () Bool)

(declare-fun e!180177 () Bool)

(assert (=> b!283953 (= e!180176 e!180177)))

(declare-fun lt!140378 () (_ BitVec 64))

(assert (=> b!283953 (= lt!140378 (select (arr!6712 a!3325) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!140376 () Unit!9025)

(assert (=> b!283953 (= lt!140376 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3325 lt!140378 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!283953 (arrayContainsKey!0 a!3325 lt!140378 #b00000000000000000000000000000000)))

(declare-fun lt!140377 () Unit!9025)

(assert (=> b!283953 (= lt!140377 lt!140376)))

(declare-fun res!146643 () Bool)

(assert (=> b!283953 (= res!146643 (= (seekEntryOrOpen!0 (select (arr!6712 a!3325) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) a!3325 mask!3868) (Found!1881 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!283953 (=> (not res!146643) (not e!180177))))

(declare-fun b!283954 () Bool)

(assert (=> b!283954 (= e!180177 call!25523)))

(declare-fun b!283955 () Bool)

(assert (=> b!283955 (= e!180176 call!25523)))

(declare-fun d!65463 () Bool)

(declare-fun res!146644 () Bool)

(declare-fun e!180178 () Bool)

(assert (=> d!65463 (=> res!146644 e!180178)))

(assert (=> d!65463 (= res!146644 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7064 a!3325)))))

(assert (=> d!65463 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3325 mask!3868) e!180178)))

(declare-fun b!283952 () Bool)

(assert (=> b!283952 (= e!180178 e!180176)))

(declare-fun c!46208 () Bool)

(assert (=> b!283952 (= c!46208 (validKeyInArray!0 (select (arr!6712 a!3325) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (= (and d!65463 (not res!146644)) b!283952))

(assert (= (and b!283952 c!46208) b!283953))

(assert (= (and b!283952 (not c!46208)) b!283955))

(assert (= (and b!283953 res!146643) b!283954))

(assert (= (or b!283954 b!283955) bm!25520))

(declare-fun m!299017 () Bool)

(assert (=> bm!25520 m!299017))

(declare-fun m!299019 () Bool)

(assert (=> b!283953 m!299019))

(declare-fun m!299021 () Bool)

(assert (=> b!283953 m!299021))

(declare-fun m!299023 () Bool)

(assert (=> b!283953 m!299023))

(assert (=> b!283953 m!299019))

(declare-fun m!299025 () Bool)

(assert (=> b!283953 m!299025))

(assert (=> b!283952 m!299019))

(assert (=> b!283952 m!299019))

(declare-fun m!299027 () Bool)

(assert (=> b!283952 m!299027))

(assert (=> bm!25494 d!65463))

(assert (=> d!65341 d!65343))

(declare-fun d!65465 () Bool)

(assert (=> d!65465 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868)))

(assert (=> d!65465 true))

(declare-fun _$72!101 () Unit!9025)

(assert (=> d!65465 (= (choose!38 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26) _$72!101)))

(declare-fun bs!10082 () Bool)

(assert (= bs!10082 d!65465))

(assert (=> bs!10082 m!298413))

(assert (=> d!65341 d!65465))

(assert (=> d!65341 d!65369))

(declare-fun lt!140384 () SeekEntryResult!1881)

(declare-fun d!65467 () Bool)

(assert (=> d!65467 (and (or (is-Undefined!1881 lt!140384) (not (is-Found!1881 lt!140384)) (and (bvsge (index!9695 lt!140384) #b00000000000000000000000000000000) (bvslt (index!9695 lt!140384) (size!7064 a!3325)))) (or (is-Undefined!1881 lt!140384) (is-Found!1881 lt!140384) (not (is-MissingVacant!1881 lt!140384)) (not (= (index!9697 lt!140384) (index!9696 lt!140255))) (and (bvsge (index!9697 lt!140384) #b00000000000000000000000000000000) (bvslt (index!9697 lt!140384) (size!7064 a!3325)))) (or (is-Undefined!1881 lt!140384) (ite (is-Found!1881 lt!140384) (= (select (arr!6712 a!3325) (index!9695 lt!140384)) (select (arr!6712 a!3325) startIndex!26)) (and (is-MissingVacant!1881 lt!140384) (= (index!9697 lt!140384) (index!9696 lt!140255)) (= (select (arr!6712 a!3325) (index!9697 lt!140384)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!180187 () SeekEntryResult!1881)

(assert (=> d!65467 (= lt!140384 e!180187)))

(declare-fun c!46215 () Bool)

(assert (=> d!65467 (= c!46215 (bvsge (x!27871 lt!140255) #b01111111111111111111111111111110))))

(declare-fun lt!140383 () (_ BitVec 64))

(assert (=> d!65467 (= lt!140383 (select (arr!6712 a!3325) (index!9696 lt!140255)))))

(assert (=> d!65467 (validMask!0 mask!3868)))

(assert (=> d!65467 (= (seekKeyOrZeroReturnVacant!0 (x!27871 lt!140255) (index!9696 lt!140255) (index!9696 lt!140255) (select (arr!6712 a!3325) startIndex!26) a!3325 mask!3868) lt!140384)))

(declare-fun b!283968 () Bool)

(assert (=> b!283968 (= e!180187 Undefined!1881)))

(declare-fun b!283969 () Bool)

(declare-fun e!180185 () SeekEntryResult!1881)

(assert (=> b!283969 (= e!180185 (Found!1881 (index!9696 lt!140255)))))

(declare-fun b!283970 () Bool)

(assert (=> b!283970 (= e!180187 e!180185)))

(declare-fun c!46217 () Bool)

(assert (=> b!283970 (= c!46217 (= lt!140383 (select (arr!6712 a!3325) startIndex!26)))))

(declare-fun b!283971 () Bool)

(declare-fun e!180186 () SeekEntryResult!1881)

(assert (=> b!283971 (= e!180186 (MissingVacant!1881 (index!9696 lt!140255)))))

(declare-fun b!283972 () Bool)

(assert (=> b!283972 (= e!180186 (seekKeyOrZeroReturnVacant!0 (bvadd (x!27871 lt!140255) #b00000000000000000000000000000001) (nextIndex!0 (index!9696 lt!140255) (x!27871 lt!140255) mask!3868) (index!9696 lt!140255) (select (arr!6712 a!3325) startIndex!26) a!3325 mask!3868))))

(declare-fun b!283973 () Bool)

(declare-fun c!46216 () Bool)

(assert (=> b!283973 (= c!46216 (= lt!140383 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!283973 (= e!180185 e!180186)))

(assert (= (and d!65467 c!46215) b!283968))

(assert (= (and d!65467 (not c!46215)) b!283970))

(assert (= (and b!283970 c!46217) b!283969))

(assert (= (and b!283970 (not c!46217)) b!283973))

(assert (= (and b!283973 c!46216) b!283971))

(assert (= (and b!283973 (not c!46216)) b!283972))

(declare-fun m!299029 () Bool)

(assert (=> d!65467 m!299029))

(declare-fun m!299031 () Bool)

(assert (=> d!65467 m!299031))

(assert (=> d!65467 m!298663))

(assert (=> d!65467 m!298399))

(declare-fun m!299033 () Bool)

(assert (=> b!283972 m!299033))

(assert (=> b!283972 m!299033))

(assert (=> b!283972 m!298391))

(declare-fun m!299035 () Bool)

(assert (=> b!283972 m!299035))

(assert (=> b!283672 d!65467))

(assert (=> b!283576 d!65461))

(assert (=> b!283750 d!65461))

(declare-fun lt!140386 () SeekEntryResult!1881)

(declare-fun d!65469 () Bool)

(assert (=> d!65469 (and (or (is-Undefined!1881 lt!140386) (not (is-Found!1881 lt!140386)) (and (bvsge (index!9695 lt!140386) #b00000000000000000000000000000000) (bvslt (index!9695 lt!140386) (size!7064 lt!140147)))) (or (is-Undefined!1881 lt!140386) (is-Found!1881 lt!140386) (not (is-MissingVacant!1881 lt!140386)) (not (= (index!9697 lt!140386) (index!9696 lt!140270))) (and (bvsge (index!9697 lt!140386) #b00000000000000000000000000000000) (bvslt (index!9697 lt!140386) (size!7064 lt!140147)))) (or (is-Undefined!1881 lt!140386) (ite (is-Found!1881 lt!140386) (= (select (arr!6712 lt!140147) (index!9695 lt!140386)) (select (store (arr!6712 a!3325) i!1267 k!2581) startIndex!26)) (and (is-MissingVacant!1881 lt!140386) (= (index!9697 lt!140386) (index!9696 lt!140270)) (= (select (arr!6712 lt!140147) (index!9697 lt!140386)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!180190 () SeekEntryResult!1881)

(assert (=> d!65469 (= lt!140386 e!180190)))

(declare-fun c!46218 () Bool)

(assert (=> d!65469 (= c!46218 (bvsge (x!27871 lt!140270) #b01111111111111111111111111111110))))

(declare-fun lt!140385 () (_ BitVec 64))

(assert (=> d!65469 (= lt!140385 (select (arr!6712 lt!140147) (index!9696 lt!140270)))))

(assert (=> d!65469 (validMask!0 mask!3868)))

(assert (=> d!65469 (= (seekKeyOrZeroReturnVacant!0 (x!27871 lt!140270) (index!9696 lt!140270) (index!9696 lt!140270) (select (store (arr!6712 a!3325) i!1267 k!2581) startIndex!26) lt!140147 mask!3868) lt!140386)))

(declare-fun b!283974 () Bool)

(assert (=> b!283974 (= e!180190 Undefined!1881)))

(declare-fun b!283975 () Bool)

(declare-fun e!180188 () SeekEntryResult!1881)

(assert (=> b!283975 (= e!180188 (Found!1881 (index!9696 lt!140270)))))

(declare-fun b!283976 () Bool)

(assert (=> b!283976 (= e!180190 e!180188)))

(declare-fun c!46220 () Bool)

(assert (=> b!283976 (= c!46220 (= lt!140385 (select (store (arr!6712 a!3325) i!1267 k!2581) startIndex!26)))))

(declare-fun b!283977 () Bool)

(declare-fun e!180189 () SeekEntryResult!1881)

(assert (=> b!283977 (= e!180189 (MissingVacant!1881 (index!9696 lt!140270)))))

(declare-fun b!283978 () Bool)

(assert (=> b!283978 (= e!180189 (seekKeyOrZeroReturnVacant!0 (bvadd (x!27871 lt!140270) #b00000000000000000000000000000001) (nextIndex!0 (index!9696 lt!140270) (x!27871 lt!140270) mask!3868) (index!9696 lt!140270) (select (store (arr!6712 a!3325) i!1267 k!2581) startIndex!26) lt!140147 mask!3868))))

(declare-fun b!283979 () Bool)

(declare-fun c!46219 () Bool)

(assert (=> b!283979 (= c!46219 (= lt!140385 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!283979 (= e!180188 e!180189)))

(assert (= (and d!65469 c!46218) b!283974))

(assert (= (and d!65469 (not c!46218)) b!283976))

(assert (= (and b!283976 c!46220) b!283975))

(assert (= (and b!283976 (not c!46220)) b!283979))

(assert (= (and b!283979 c!46219) b!283977))

(assert (= (and b!283979 (not c!46219)) b!283978))

(declare-fun m!299037 () Bool)

(assert (=> d!65469 m!299037))

(declare-fun m!299039 () Bool)

(assert (=> d!65469 m!299039))

(assert (=> d!65469 m!298685))

(assert (=> d!65469 m!298399))

(declare-fun m!299041 () Bool)

(assert (=> b!283978 m!299041))

(assert (=> b!283978 m!299041))

(assert (=> b!283978 m!298411))

(declare-fun m!299043 () Bool)

(assert (=> b!283978 m!299043))

(assert (=> b!283694 d!65469))

(declare-fun d!65471 () Bool)

(declare-fun lt!140387 () Bool)

(assert (=> d!65471 (= lt!140387 (set.member (select (arr!6712 lt!140147) #b00000000000000000000000000000000) (content!191 Nil!4538)))))

(declare-fun e!180192 () Bool)

(assert (=> d!65471 (= lt!140387 e!180192)))

(declare-fun res!146646 () Bool)

(assert (=> d!65471 (=> (not res!146646) (not e!180192))))

(assert (=> d!65471 (= res!146646 (is-Cons!4537 Nil!4538))))

(assert (=> d!65471 (= (contains!1994 Nil!4538 (select (arr!6712 lt!140147) #b00000000000000000000000000000000)) lt!140387)))

(declare-fun b!283980 () Bool)

(declare-fun e!180191 () Bool)

(assert (=> b!283980 (= e!180192 e!180191)))

(declare-fun res!146645 () Bool)

(assert (=> b!283980 (=> res!146645 e!180191)))

(assert (=> b!283980 (= res!146645 (= (h!5207 Nil!4538) (select (arr!6712 lt!140147) #b00000000000000000000000000000000)))))

(declare-fun b!283981 () Bool)

(assert (=> b!283981 (= e!180191 (contains!1994 (t!9631 Nil!4538) (select (arr!6712 lt!140147) #b00000000000000000000000000000000)))))

(assert (= (and d!65471 res!146646) b!283980))

(assert (= (and b!283980 (not res!146645)) b!283981))

(assert (=> d!65471 m!299011))

(assert (=> d!65471 m!298741))

(declare-fun m!299045 () Bool)

(assert (=> d!65471 m!299045))

(assert (=> b!283981 m!298741))

(declare-fun m!299047 () Bool)

(assert (=> b!283981 m!299047))

(assert (=> b!283736 d!65471))

(declare-fun d!65473 () Bool)

(assert (=> d!65473 (= (validKeyInArray!0 (select (arr!6712 lt!140147) #b00000000000000000000000000000000)) (and (not (= (select (arr!6712 lt!140147) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!6712 lt!140147) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!283735 d!65473))

(declare-fun d!65475 () Bool)

(assert (=> d!65475 (arrayNoDuplicates!0 (array!14145 (store (arr!6712 a!3325) i!1267 k!2581) (size!7064 a!3325)) #b00000000000000000000000000000000 Nil!4538)))

(assert (=> d!65475 true))

(declare-fun _$65!104 () Unit!9025)

(assert (=> d!65475 (= (choose!41 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4538) _$65!104)))

(declare-fun bs!10083 () Bool)

(assert (= bs!10083 d!65475))

(assert (=> bs!10083 m!298397))

(assert (=> bs!10083 m!298715))

(assert (=> d!65349 d!65475))

(assert (=> b!283734 d!65473))

(assert (=> b!283690 d!65367))

(declare-fun d!65477 () Bool)

(declare-fun lt!140389 () SeekEntryResult!1881)

(assert (=> d!65477 (and (or (is-Undefined!1881 lt!140389) (not (is-Found!1881 lt!140389)) (and (bvsge (index!9695 lt!140389) #b00000000000000000000000000000000) (bvslt (index!9695 lt!140389) (size!7064 a!3325)))) (or (is-Undefined!1881 lt!140389) (is-Found!1881 lt!140389) (not (is-MissingVacant!1881 lt!140389)) (not (= (index!9697 lt!140389) (index!9696 lt!140294))) (and (bvsge (index!9697 lt!140389) #b00000000000000000000000000000000) (bvslt (index!9697 lt!140389) (size!7064 a!3325)))) (or (is-Undefined!1881 lt!140389) (ite (is-Found!1881 lt!140389) (= (select (arr!6712 a!3325) (index!9695 lt!140389)) k!2581) (and (is-MissingVacant!1881 lt!140389) (= (index!9697 lt!140389) (index!9696 lt!140294)) (= (select (arr!6712 a!3325) (index!9697 lt!140389)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!180195 () SeekEntryResult!1881)

(assert (=> d!65477 (= lt!140389 e!180195)))

(declare-fun c!46221 () Bool)

(assert (=> d!65477 (= c!46221 (bvsge (x!27871 lt!140294) #b01111111111111111111111111111110))))

(declare-fun lt!140388 () (_ BitVec 64))

(assert (=> d!65477 (= lt!140388 (select (arr!6712 a!3325) (index!9696 lt!140294)))))

(assert (=> d!65477 (validMask!0 mask!3868)))

(assert (=> d!65477 (= (seekKeyOrZeroReturnVacant!0 (x!27871 lt!140294) (index!9696 lt!140294) (index!9696 lt!140294) k!2581 a!3325 mask!3868) lt!140389)))

(declare-fun b!283982 () Bool)

(assert (=> b!283982 (= e!180195 Undefined!1881)))

(declare-fun b!283983 () Bool)

(declare-fun e!180193 () SeekEntryResult!1881)

(assert (=> b!283983 (= e!180193 (Found!1881 (index!9696 lt!140294)))))

(declare-fun b!283984 () Bool)

(assert (=> b!283984 (= e!180195 e!180193)))

(declare-fun c!46223 () Bool)

(assert (=> b!283984 (= c!46223 (= lt!140388 k!2581))))

(declare-fun b!283985 () Bool)

(declare-fun e!180194 () SeekEntryResult!1881)

(assert (=> b!283985 (= e!180194 (MissingVacant!1881 (index!9696 lt!140294)))))

(declare-fun b!283986 () Bool)

(assert (=> b!283986 (= e!180194 (seekKeyOrZeroReturnVacant!0 (bvadd (x!27871 lt!140294) #b00000000000000000000000000000001) (nextIndex!0 (index!9696 lt!140294) (x!27871 lt!140294) mask!3868) (index!9696 lt!140294) k!2581 a!3325 mask!3868))))

(declare-fun b!283987 () Bool)

(declare-fun c!46222 () Bool)

(assert (=> b!283987 (= c!46222 (= lt!140388 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!283987 (= e!180193 e!180194)))

(assert (= (and d!65477 c!46221) b!283982))

(assert (= (and d!65477 (not c!46221)) b!283984))

(assert (= (and b!283984 c!46223) b!283983))

(assert (= (and b!283984 (not c!46223)) b!283987))

(assert (= (and b!283987 c!46222) b!283985))

(assert (= (and b!283987 (not c!46222)) b!283986))

(declare-fun m!299049 () Bool)

(assert (=> d!65477 m!299049))

(declare-fun m!299051 () Bool)

(assert (=> d!65477 m!299051))

(assert (=> d!65477 m!298777))

(assert (=> d!65477 m!298399))

(declare-fun m!299053 () Bool)

(assert (=> b!283986 m!299053))

(assert (=> b!283986 m!299053))

(declare-fun m!299055 () Bool)

(assert (=> b!283986 m!299055))

(assert (=> b!283753 d!65477))

(declare-fun d!65479 () Bool)

(assert (=> d!65479 (arrayContainsKey!0 lt!140147 lt!140210 #b00000000000000000000000000000000)))

(declare-fun lt!140390 () Unit!9025)

(assert (=> d!65479 (= lt!140390 (choose!13 lt!140147 lt!140210 startIndex!26))))

(assert (=> d!65479 (bvsge startIndex!26 #b00000000000000000000000000000000)))

(assert (=> d!65479 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!140147 lt!140210 startIndex!26) lt!140390)))

(declare-fun bs!10084 () Bool)

(assert (= bs!10084 d!65479))

(assert (=> bs!10084 m!298567))

(declare-fun m!299057 () Bool)

(assert (=> bs!10084 m!299057))

(assert (=> b!283591 d!65479))

(declare-fun d!65481 () Bool)

(declare-fun res!146647 () Bool)

(declare-fun e!180196 () Bool)

(assert (=> d!65481 (=> res!146647 e!180196)))

(assert (=> d!65481 (= res!146647 (= (select (arr!6712 lt!140147) #b00000000000000000000000000000000) lt!140210))))

(assert (=> d!65481 (= (arrayContainsKey!0 lt!140147 lt!140210 #b00000000000000000000000000000000) e!180196)))

(declare-fun b!283988 () Bool)

(declare-fun e!180197 () Bool)

(assert (=> b!283988 (= e!180196 e!180197)))

(declare-fun res!146648 () Bool)

(assert (=> b!283988 (=> (not res!146648) (not e!180197))))

(assert (=> b!283988 (= res!146648 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7064 lt!140147)))))

(declare-fun b!283989 () Bool)

(assert (=> b!283989 (= e!180197 (arrayContainsKey!0 lt!140147 lt!140210 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!65481 (not res!146647)) b!283988))

(assert (= (and b!283988 res!146648) b!283989))

(assert (=> d!65481 m!298741))

(declare-fun m!299059 () Bool)

(assert (=> b!283989 m!299059))

(assert (=> b!283591 d!65481))

(declare-fun e!180198 () SeekEntryResult!1881)

(declare-fun b!283990 () Bool)

(declare-fun lt!140393 () SeekEntryResult!1881)

(assert (=> b!283990 (= e!180198 (seekKeyOrZeroReturnVacant!0 (x!27871 lt!140393) (index!9696 lt!140393) (index!9696 lt!140393) (select (arr!6712 lt!140147) startIndex!26) lt!140147 mask!3868))))

(declare-fun b!283991 () Bool)

(assert (=> b!283991 (= e!180198 (MissingZero!1881 (index!9696 lt!140393)))))

(declare-fun b!283993 () Bool)

(declare-fun e!180199 () SeekEntryResult!1881)

(declare-fun e!180200 () SeekEntryResult!1881)

(assert (=> b!283993 (= e!180199 e!180200)))

(declare-fun lt!140391 () (_ BitVec 64))

(assert (=> b!283993 (= lt!140391 (select (arr!6712 lt!140147) (index!9696 lt!140393)))))

(declare-fun c!46224 () Bool)

(assert (=> b!283993 (= c!46224 (= lt!140391 (select (arr!6712 lt!140147) startIndex!26)))))

(declare-fun b!283994 () Bool)

(assert (=> b!283994 (= e!180199 Undefined!1881)))

(declare-fun b!283995 () Bool)

(assert (=> b!283995 (= e!180200 (Found!1881 (index!9696 lt!140393)))))

(declare-fun d!65483 () Bool)

(declare-fun lt!140392 () SeekEntryResult!1881)

(assert (=> d!65483 (and (or (is-Undefined!1881 lt!140392) (not (is-Found!1881 lt!140392)) (and (bvsge (index!9695 lt!140392) #b00000000000000000000000000000000) (bvslt (index!9695 lt!140392) (size!7064 lt!140147)))) (or (is-Undefined!1881 lt!140392) (is-Found!1881 lt!140392) (not (is-MissingZero!1881 lt!140392)) (and (bvsge (index!9694 lt!140392) #b00000000000000000000000000000000) (bvslt (index!9694 lt!140392) (size!7064 lt!140147)))) (or (is-Undefined!1881 lt!140392) (is-Found!1881 lt!140392) (is-MissingZero!1881 lt!140392) (not (is-MissingVacant!1881 lt!140392)) (and (bvsge (index!9697 lt!140392) #b00000000000000000000000000000000) (bvslt (index!9697 lt!140392) (size!7064 lt!140147)))) (or (is-Undefined!1881 lt!140392) (ite (is-Found!1881 lt!140392) (= (select (arr!6712 lt!140147) (index!9695 lt!140392)) (select (arr!6712 lt!140147) startIndex!26)) (ite (is-MissingZero!1881 lt!140392) (= (select (arr!6712 lt!140147) (index!9694 lt!140392)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!1881 lt!140392) (= (select (arr!6712 lt!140147) (index!9697 lt!140392)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!65483 (= lt!140392 e!180199)))

(declare-fun c!46225 () Bool)

(assert (=> d!65483 (= c!46225 (and (is-Intermediate!1881 lt!140393) (undefined!2693 lt!140393)))))

(assert (=> d!65483 (= lt!140393 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!6712 lt!140147) startIndex!26) mask!3868) (select (arr!6712 lt!140147) startIndex!26) lt!140147 mask!3868))))

(assert (=> d!65483 (validMask!0 mask!3868)))

(assert (=> d!65483 (= (seekEntryOrOpen!0 (select (arr!6712 lt!140147) startIndex!26) lt!140147 mask!3868) lt!140392)))

(declare-fun b!283992 () Bool)

(declare-fun c!46226 () Bool)

(assert (=> b!283992 (= c!46226 (= lt!140391 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!283992 (= e!180200 e!180198)))

(assert (= (and d!65483 c!46225) b!283994))

(assert (= (and d!65483 (not c!46225)) b!283993))

(assert (= (and b!283993 c!46224) b!283995))

(assert (= (and b!283993 (not c!46224)) b!283992))

(assert (= (and b!283992 c!46226) b!283991))

(assert (= (and b!283992 (not c!46226)) b!283990))

(assert (=> b!283990 m!298563))

(declare-fun m!299061 () Bool)

(assert (=> b!283990 m!299061))

(declare-fun m!299063 () Bool)

(assert (=> b!283993 m!299063))

(declare-fun m!299065 () Bool)

(assert (=> d!65483 m!299065))

(assert (=> d!65483 m!298563))

(declare-fun m!299067 () Bool)

(assert (=> d!65483 m!299067))

(assert (=> d!65483 m!298563))

(assert (=> d!65483 m!299065))

(assert (=> d!65483 m!298399))

(declare-fun m!299069 () Bool)

(assert (=> d!65483 m!299069))

(declare-fun m!299071 () Bool)

(assert (=> d!65483 m!299071))

(declare-fun m!299073 () Bool)

(assert (=> d!65483 m!299073))

(assert (=> b!283591 d!65483))

(declare-fun call!25524 () Bool)

(declare-fun bm!25521 () Bool)

(assert (=> bm!25521 (= call!25524 (arrayForallSeekEntryOrOpenFound!0 (bvadd startIndex!26 #b00000000000000000000000000000001 #b00000000000000000000000000000001) lt!140147 mask!3868))))

(declare-fun b!283997 () Bool)

(declare-fun e!180201 () Bool)

(declare-fun e!180202 () Bool)

(assert (=> b!283997 (= e!180201 e!180202)))

(declare-fun lt!140396 () (_ BitVec 64))

(assert (=> b!283997 (= lt!140396 (select (arr!6712 lt!140147) (bvadd startIndex!26 #b00000000000000000000000000000001)))))

(declare-fun lt!140394 () Unit!9025)

(assert (=> b!283997 (= lt!140394 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!140147 lt!140396 (bvadd startIndex!26 #b00000000000000000000000000000001)))))

(assert (=> b!283997 (arrayContainsKey!0 lt!140147 lt!140396 #b00000000000000000000000000000000)))

(declare-fun lt!140395 () Unit!9025)

(assert (=> b!283997 (= lt!140395 lt!140394)))

(declare-fun res!146649 () Bool)

(assert (=> b!283997 (= res!146649 (= (seekEntryOrOpen!0 (select (arr!6712 lt!140147) (bvadd startIndex!26 #b00000000000000000000000000000001)) lt!140147 mask!3868) (Found!1881 (bvadd startIndex!26 #b00000000000000000000000000000001))))))

(assert (=> b!283997 (=> (not res!146649) (not e!180202))))

(declare-fun b!283998 () Bool)

(assert (=> b!283998 (= e!180202 call!25524)))

(declare-fun b!283999 () Bool)

(assert (=> b!283999 (= e!180201 call!25524)))

(declare-fun d!65485 () Bool)

(declare-fun res!146650 () Bool)

(declare-fun e!180203 () Bool)

(assert (=> d!65485 (=> res!146650 e!180203)))

(assert (=> d!65485 (= res!146650 (bvsge (bvadd startIndex!26 #b00000000000000000000000000000001) (size!7064 lt!140147)))))

(assert (=> d!65485 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd startIndex!26 #b00000000000000000000000000000001) lt!140147 mask!3868) e!180203)))

(declare-fun b!283996 () Bool)

(assert (=> b!283996 (= e!180203 e!180201)))

(declare-fun c!46227 () Bool)

(assert (=> b!283996 (= c!46227 (validKeyInArray!0 (select (arr!6712 lt!140147) (bvadd startIndex!26 #b00000000000000000000000000000001))))))

(assert (= (and d!65485 (not res!146650)) b!283996))

(assert (= (and b!283996 c!46227) b!283997))

(assert (= (and b!283996 (not c!46227)) b!283999))

(assert (= (and b!283997 res!146649) b!283998))

(assert (= (or b!283998 b!283999) bm!25521))

(declare-fun m!299075 () Bool)

(assert (=> bm!25521 m!299075))

(declare-fun m!299077 () Bool)

(assert (=> b!283997 m!299077))

(declare-fun m!299079 () Bool)

(assert (=> b!283997 m!299079))

(declare-fun m!299081 () Bool)

(assert (=> b!283997 m!299081))

(assert (=> b!283997 m!299077))

(declare-fun m!299083 () Bool)

(assert (=> b!283997 m!299083))

(assert (=> b!283996 m!299077))

(assert (=> b!283996 m!299077))

(declare-fun m!299085 () Bool)

(assert (=> b!283996 m!299085))

(assert (=> bm!25495 d!65485))

(declare-fun d!65487 () Bool)

(assert (=> d!65487 (= (seekEntryOrOpen!0 (select (arr!6712 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6712 a!3325) i!1267 k!2581) startIndex!26) (array!14145 (store (arr!6712 a!3325) i!1267 k!2581) (size!7064 a!3325)) mask!3868))))

(assert (=> d!65487 true))

(declare-fun _$51!18 () Unit!9025)

(assert (=> d!65487 (= (choose!83 a!3325 i!1267 k!2581 startIndex!26 mask!3868) _$51!18)))

(declare-fun bs!10085 () Bool)

(assert (= bs!10085 d!65487))

(assert (=> bs!10085 m!298391))

(assert (=> bs!10085 m!298423))

(assert (=> bs!10085 m!298411))

(assert (=> bs!10085 m!298397))

(assert (=> bs!10085 m!298391))

(assert (=> bs!10085 m!298411))

(assert (=> bs!10085 m!298603))

(assert (=> d!65305 d!65487))

(assert (=> d!65305 d!65369))

(declare-fun d!65489 () Bool)

(declare-fun res!146651 () Bool)

(declare-fun e!180204 () Bool)

(assert (=> d!65489 (=> res!146651 e!180204)))

(assert (=> d!65489 (= res!146651 (= (select (arr!6712 a!3325) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) k!2581))))

(assert (=> d!65489 (= (arrayContainsKey!0 a!3325 k!2581 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) e!180204)))

(declare-fun b!284000 () Bool)

(declare-fun e!180205 () Bool)

(assert (=> b!284000 (= e!180204 e!180205)))

(declare-fun res!146652 () Bool)

(assert (=> b!284000 (=> (not res!146652) (not e!180205))))

(assert (=> b!284000 (= res!146652 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!7064 a!3325)))))

(declare-fun b!284001 () Bool)

(assert (=> b!284001 (= e!180205 (arrayContainsKey!0 a!3325 k!2581 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!65489 (not res!146651)) b!284000))

(assert (= (and b!284000 res!146652) b!284001))

(assert (=> d!65489 m!299019))

(declare-fun m!299087 () Bool)

(assert (=> b!284001 m!299087))

(assert (=> b!283551 d!65489))

(declare-fun b!284002 () Bool)

(declare-fun e!180207 () Bool)

(declare-fun call!25525 () Bool)

(assert (=> b!284002 (= e!180207 call!25525)))

(declare-fun b!284003 () Bool)

(assert (=> b!284003 (= e!180207 call!25525)))

(declare-fun c!46228 () Bool)

(declare-fun bm!25522 () Bool)

(assert (=> bm!25522 (= call!25525 (arrayNoDuplicates!0 a!3325 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!46228 (Cons!4537 (select (arr!6712 a!3325) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!46142 (Cons!4537 (select (arr!6712 a!3325) #b00000000000000000000000000000000) Nil!4538) Nil!4538)) (ite c!46142 (Cons!4537 (select (arr!6712 a!3325) #b00000000000000000000000000000000) Nil!4538) Nil!4538))))))

(declare-fun b!284004 () Bool)

(declare-fun e!180208 () Bool)

(declare-fun e!180209 () Bool)

(assert (=> b!284004 (= e!180208 e!180209)))

(declare-fun res!146655 () Bool)

(assert (=> b!284004 (=> (not res!146655) (not e!180209))))

(declare-fun e!180206 () Bool)

(assert (=> b!284004 (= res!146655 (not e!180206))))

(declare-fun res!146654 () Bool)

(assert (=> b!284004 (=> (not res!146654) (not e!180206))))

(assert (=> b!284004 (= res!146654 (validKeyInArray!0 (select (arr!6712 a!3325) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!65491 () Bool)

(declare-fun res!146653 () Bool)

(assert (=> d!65491 (=> res!146653 e!180208)))

(assert (=> d!65491 (= res!146653 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7064 a!3325)))))

(assert (=> d!65491 (= (arrayNoDuplicates!0 a!3325 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!46142 (Cons!4537 (select (arr!6712 a!3325) #b00000000000000000000000000000000) Nil!4538) Nil!4538)) e!180208)))

(declare-fun b!284005 () Bool)

(assert (=> b!284005 (= e!180209 e!180207)))

(assert (=> b!284005 (= c!46228 (validKeyInArray!0 (select (arr!6712 a!3325) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!284006 () Bool)

(assert (=> b!284006 (= e!180206 (contains!1994 (ite c!46142 (Cons!4537 (select (arr!6712 a!3325) #b00000000000000000000000000000000) Nil!4538) Nil!4538) (select (arr!6712 a!3325) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (= (and d!65491 (not res!146653)) b!284004))

(assert (= (and b!284004 res!146654) b!284006))

(assert (= (and b!284004 res!146655) b!284005))

(assert (= (and b!284005 c!46228) b!284003))

(assert (= (and b!284005 (not c!46228)) b!284002))

(assert (= (or b!284003 b!284002) bm!25522))

(assert (=> bm!25522 m!299019))

(declare-fun m!299089 () Bool)

(assert (=> bm!25522 m!299089))

(assert (=> b!284004 m!299019))

(assert (=> b!284004 m!299019))

(assert (=> b!284004 m!299027))

(assert (=> b!284005 m!299019))

(assert (=> b!284005 m!299019))

(assert (=> b!284005 m!299027))

(assert (=> b!284006 m!299019))

(assert (=> b!284006 m!299019))

(declare-fun m!299091 () Bool)

(assert (=> b!284006 m!299091))

(assert (=> bm!25511 d!65491))

(declare-fun d!65493 () Bool)

(assert (=> d!65493 (arrayContainsKey!0 a!3325 lt!140267 #b00000000000000000000000000000000)))

(declare-fun lt!140397 () Unit!9025)

(assert (=> d!65493 (= lt!140397 (choose!13 a!3325 lt!140267 startIndex!26))))

(assert (=> d!65493 (bvsge startIndex!26 #b00000000000000000000000000000000)))

(assert (=> d!65493 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3325 lt!140267 startIndex!26) lt!140397)))

(declare-fun bs!10086 () Bool)

(assert (= bs!10086 d!65493))

(assert (=> bs!10086 m!298681))

(declare-fun m!299093 () Bool)

(assert (=> bs!10086 m!299093))

(assert (=> b!283691 d!65493))

(declare-fun d!65495 () Bool)

(declare-fun res!146656 () Bool)

(declare-fun e!180210 () Bool)

(assert (=> d!65495 (=> res!146656 e!180210)))

(assert (=> d!65495 (= res!146656 (= (select (arr!6712 a!3325) #b00000000000000000000000000000000) lt!140267))))

(assert (=> d!65495 (= (arrayContainsKey!0 a!3325 lt!140267 #b00000000000000000000000000000000) e!180210)))

(declare-fun b!284007 () Bool)

(declare-fun e!180211 () Bool)

(assert (=> b!284007 (= e!180210 e!180211)))

(declare-fun res!146657 () Bool)

(assert (=> b!284007 (=> (not res!146657) (not e!180211))))

(assert (=> b!284007 (= res!146657 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7064 a!3325)))))

(declare-fun b!284008 () Bool)

(assert (=> b!284008 (= e!180211 (arrayContainsKey!0 a!3325 lt!140267 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!65495 (not res!146656)) b!284007))

(assert (= (and b!284007 res!146657) b!284008))

(assert (=> d!65495 m!298523))

(declare-fun m!299095 () Bool)

(assert (=> b!284008 m!299095))

(assert (=> b!283691 d!65495))

(assert (=> b!283691 d!65321))

(declare-fun call!25526 () Bool)

(declare-fun bm!25523 () Bool)

(assert (=> bm!25523 (= call!25526 (arrayForallSeekEntryOrOpenFound!0 (bvadd startIndex!26 #b00000000000000000000000000000001 #b00000000000000000000000000000001) a!3325 mask!3868))))

(declare-fun b!284010 () Bool)

(declare-fun e!180212 () Bool)

(declare-fun e!180213 () Bool)

(assert (=> b!284010 (= e!180212 e!180213)))

(declare-fun lt!140400 () (_ BitVec 64))

(assert (=> b!284010 (= lt!140400 (select (arr!6712 a!3325) (bvadd startIndex!26 #b00000000000000000000000000000001)))))

(declare-fun lt!140398 () Unit!9025)

(assert (=> b!284010 (= lt!140398 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3325 lt!140400 (bvadd startIndex!26 #b00000000000000000000000000000001)))))

(assert (=> b!284010 (arrayContainsKey!0 a!3325 lt!140400 #b00000000000000000000000000000000)))

(declare-fun lt!140399 () Unit!9025)

(assert (=> b!284010 (= lt!140399 lt!140398)))

(declare-fun res!146658 () Bool)

(assert (=> b!284010 (= res!146658 (= (seekEntryOrOpen!0 (select (arr!6712 a!3325) (bvadd startIndex!26 #b00000000000000000000000000000001)) a!3325 mask!3868) (Found!1881 (bvadd startIndex!26 #b00000000000000000000000000000001))))))

(assert (=> b!284010 (=> (not res!146658) (not e!180213))))

(declare-fun b!284011 () Bool)

(assert (=> b!284011 (= e!180213 call!25526)))

(declare-fun b!284012 () Bool)

(assert (=> b!284012 (= e!180212 call!25526)))

(declare-fun d!65497 () Bool)

(declare-fun res!146659 () Bool)

(declare-fun e!180214 () Bool)

(assert (=> d!65497 (=> res!146659 e!180214)))

(assert (=> d!65497 (= res!146659 (bvsge (bvadd startIndex!26 #b00000000000000000000000000000001) (size!7064 a!3325)))))

(assert (=> d!65497 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd startIndex!26 #b00000000000000000000000000000001) a!3325 mask!3868) e!180214)))

(declare-fun b!284009 () Bool)

(assert (=> b!284009 (= e!180214 e!180212)))

(declare-fun c!46229 () Bool)

(assert (=> b!284009 (= c!46229 (validKeyInArray!0 (select (arr!6712 a!3325) (bvadd startIndex!26 #b00000000000000000000000000000001))))))

(assert (= (and d!65497 (not res!146659)) b!284009))

(assert (= (and b!284009 c!46229) b!284010))

(assert (= (and b!284009 (not c!46229)) b!284012))

(assert (= (and b!284010 res!146658) b!284011))

(assert (= (or b!284011 b!284012) bm!25523))

(declare-fun m!299097 () Bool)

(assert (=> bm!25523 m!299097))

(declare-fun m!299099 () Bool)

(assert (=> b!284010 m!299099))

(declare-fun m!299101 () Bool)

(assert (=> b!284010 m!299101))

(declare-fun m!299103 () Bool)

(assert (=> b!284010 m!299103))

(assert (=> b!284010 m!299099))

(declare-fun m!299105 () Bool)

(assert (=> b!284010 m!299105))

(assert (=> b!284009 m!299099))

(assert (=> b!284009 m!299099))

(declare-fun m!299107 () Bool)

(assert (=> b!284009 m!299107))

(assert (=> bm!25505 d!65497))

(declare-fun e!180217 () SeekEntryResult!1881)

(declare-fun b!284013 () Bool)

(assert (=> b!284013 (= e!180217 (Intermediate!1881 true (toIndex!0 (select (arr!6712 a!3325) startIndex!26) mask!3868) #b00000000000000000000000000000000))))

(declare-fun b!284014 () Bool)

(declare-fun lt!140402 () SeekEntryResult!1881)

(assert (=> b!284014 (and (bvsge (index!9696 lt!140402) #b00000000000000000000000000000000) (bvslt (index!9696 lt!140402) (size!7064 a!3325)))))

(declare-fun res!146660 () Bool)

(assert (=> b!284014 (= res!146660 (= (select (arr!6712 a!3325) (index!9696 lt!140402)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!180218 () Bool)

(assert (=> b!284014 (=> res!146660 e!180218)))

(declare-fun b!284015 () Bool)

(declare-fun e!180219 () SeekEntryResult!1881)

(assert (=> b!284015 (= e!180219 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!6712 a!3325) startIndex!26) mask!3868) #b00000000000000000000000000000000 mask!3868) (select (arr!6712 a!3325) startIndex!26) a!3325 mask!3868))))

(declare-fun b!284016 () Bool)

(declare-fun e!180216 () Bool)

(declare-fun e!180215 () Bool)

(assert (=> b!284016 (= e!180216 e!180215)))

(declare-fun res!146661 () Bool)

(assert (=> b!284016 (= res!146661 (and (is-Intermediate!1881 lt!140402) (not (undefined!2693 lt!140402)) (bvslt (x!27871 lt!140402) #b01111111111111111111111111111110) (bvsge (x!27871 lt!140402) #b00000000000000000000000000000000) (bvsge (x!27871 lt!140402) #b00000000000000000000000000000000)))))

(assert (=> b!284016 (=> (not res!146661) (not e!180215))))

(declare-fun b!284017 () Bool)

(assert (=> b!284017 (= e!180216 (bvsge (x!27871 lt!140402) #b01111111111111111111111111111110))))

(declare-fun b!284018 () Bool)

(assert (=> b!284018 (= e!180217 e!180219)))

(declare-fun lt!140401 () (_ BitVec 64))

(declare-fun c!46230 () Bool)

(assert (=> b!284018 (= c!46230 (or (= lt!140401 (select (arr!6712 a!3325) startIndex!26)) (= (bvadd lt!140401 lt!140401) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!284019 () Bool)

(assert (=> b!284019 (and (bvsge (index!9696 lt!140402) #b00000000000000000000000000000000) (bvslt (index!9696 lt!140402) (size!7064 a!3325)))))

(assert (=> b!284019 (= e!180218 (= (select (arr!6712 a!3325) (index!9696 lt!140402)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!65499 () Bool)

(assert (=> d!65499 e!180216))

(declare-fun c!46231 () Bool)

(assert (=> d!65499 (= c!46231 (and (is-Intermediate!1881 lt!140402) (undefined!2693 lt!140402)))))

(assert (=> d!65499 (= lt!140402 e!180217)))

(declare-fun c!46232 () Bool)

(assert (=> d!65499 (= c!46232 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!65499 (= lt!140401 (select (arr!6712 a!3325) (toIndex!0 (select (arr!6712 a!3325) startIndex!26) mask!3868)))))

(assert (=> d!65499 (validMask!0 mask!3868)))

(assert (=> d!65499 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!6712 a!3325) startIndex!26) mask!3868) (select (arr!6712 a!3325) startIndex!26) a!3325 mask!3868) lt!140402)))

(declare-fun b!284020 () Bool)

(assert (=> b!284020 (= e!180219 (Intermediate!1881 false (toIndex!0 (select (arr!6712 a!3325) startIndex!26) mask!3868) #b00000000000000000000000000000000))))

(declare-fun b!284021 () Bool)

(assert (=> b!284021 (and (bvsge (index!9696 lt!140402) #b00000000000000000000000000000000) (bvslt (index!9696 lt!140402) (size!7064 a!3325)))))

(declare-fun res!146662 () Bool)

(assert (=> b!284021 (= res!146662 (= (select (arr!6712 a!3325) (index!9696 lt!140402)) (select (arr!6712 a!3325) startIndex!26)))))

(assert (=> b!284021 (=> res!146662 e!180218)))

(assert (=> b!284021 (= e!180215 e!180218)))

(assert (= (and d!65499 c!46232) b!284013))

(assert (= (and d!65499 (not c!46232)) b!284018))

(assert (= (and b!284018 c!46230) b!284020))

(assert (= (and b!284018 (not c!46230)) b!284015))

(assert (= (and d!65499 c!46231) b!284017))

(assert (= (and d!65499 (not c!46231)) b!284016))

(assert (= (and b!284016 res!146661) b!284021))

(assert (= (and b!284021 (not res!146662)) b!284014))

(assert (= (and b!284014 (not res!146660)) b!284019))

(declare-fun m!299109 () Bool)

(assert (=> b!284021 m!299109))

(assert (=> d!65499 m!298665))

(declare-fun m!299111 () Bool)

(assert (=> d!65499 m!299111))

(assert (=> d!65499 m!298399))

(assert (=> b!284014 m!299109))

(assert (=> b!284015 m!298665))

(declare-fun m!299113 () Bool)

(assert (=> b!284015 m!299113))

(assert (=> b!284015 m!299113))

(assert (=> b!284015 m!298391))

(declare-fun m!299115 () Bool)

(assert (=> b!284015 m!299115))

(assert (=> b!284019 m!299109))

(assert (=> d!65321 d!65499))

(declare-fun d!65501 () Bool)

(declare-fun lt!140404 () (_ BitVec 32))

(declare-fun lt!140403 () (_ BitVec 32))

(assert (=> d!65501 (= lt!140404 (bvmul (bvxor lt!140403 (bvlshr lt!140403 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!65501 (= lt!140403 ((_ extract 31 0) (bvand (bvxor (select (arr!6712 a!3325) startIndex!26) (bvlshr (select (arr!6712 a!3325) startIndex!26) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!65501 (and (bvsge mask!3868 #b00000000000000000000000000000000) (let ((res!146631 (let ((h!5211 ((_ extract 31 0) (bvand (bvxor (select (arr!6712 a!3325) startIndex!26) (bvlshr (select (arr!6712 a!3325) startIndex!26) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!27878 (bvmul (bvxor h!5211 (bvlshr h!5211 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!27878 (bvlshr x!27878 #b00000000000000000000000000001101)) mask!3868))))) (and (bvslt res!146631 (bvadd mask!3868 #b00000000000000000000000000000001)) (bvsge res!146631 #b00000000000000000000000000000000))))))

(assert (=> d!65501 (= (toIndex!0 (select (arr!6712 a!3325) startIndex!26) mask!3868) (bvand (bvxor lt!140404 (bvlshr lt!140404 #b00000000000000000000000000001101)) mask!3868))))

(assert (=> d!65321 d!65501))

(assert (=> d!65321 d!65369))

(declare-fun e!180222 () SeekEntryResult!1881)

(declare-fun b!284022 () Bool)

(assert (=> b!284022 (= e!180222 (Intermediate!1881 true (toIndex!0 (select (store (arr!6712 a!3325) i!1267 k!2581) startIndex!26) mask!3868) #b00000000000000000000000000000000))))

(declare-fun b!284023 () Bool)

(declare-fun lt!140406 () SeekEntryResult!1881)

(assert (=> b!284023 (and (bvsge (index!9696 lt!140406) #b00000000000000000000000000000000) (bvslt (index!9696 lt!140406) (size!7064 lt!140147)))))

(declare-fun res!146663 () Bool)

(assert (=> b!284023 (= res!146663 (= (select (arr!6712 lt!140147) (index!9696 lt!140406)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!180223 () Bool)

(assert (=> b!284023 (=> res!146663 e!180223)))

(declare-fun b!284024 () Bool)

(declare-fun e!180224 () SeekEntryResult!1881)

(assert (=> b!284024 (= e!180224 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (store (arr!6712 a!3325) i!1267 k!2581) startIndex!26) mask!3868) #b00000000000000000000000000000000 mask!3868) (select (store (arr!6712 a!3325) i!1267 k!2581) startIndex!26) lt!140147 mask!3868))))

(declare-fun b!284025 () Bool)

(declare-fun e!180221 () Bool)

(declare-fun e!180220 () Bool)

(assert (=> b!284025 (= e!180221 e!180220)))

(declare-fun res!146664 () Bool)

(assert (=> b!284025 (= res!146664 (and (is-Intermediate!1881 lt!140406) (not (undefined!2693 lt!140406)) (bvslt (x!27871 lt!140406) #b01111111111111111111111111111110) (bvsge (x!27871 lt!140406) #b00000000000000000000000000000000) (bvsge (x!27871 lt!140406) #b00000000000000000000000000000000)))))

(assert (=> b!284025 (=> (not res!146664) (not e!180220))))

(declare-fun b!284026 () Bool)

(assert (=> b!284026 (= e!180221 (bvsge (x!27871 lt!140406) #b01111111111111111111111111111110))))

(declare-fun b!284027 () Bool)

(assert (=> b!284027 (= e!180222 e!180224)))

(declare-fun lt!140405 () (_ BitVec 64))

(declare-fun c!46233 () Bool)

(assert (=> b!284027 (= c!46233 (or (= lt!140405 (select (store (arr!6712 a!3325) i!1267 k!2581) startIndex!26)) (= (bvadd lt!140405 lt!140405) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!284028 () Bool)

(assert (=> b!284028 (and (bvsge (index!9696 lt!140406) #b00000000000000000000000000000000) (bvslt (index!9696 lt!140406) (size!7064 lt!140147)))))

(assert (=> b!284028 (= e!180223 (= (select (arr!6712 lt!140147) (index!9696 lt!140406)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!65503 () Bool)

(assert (=> d!65503 e!180221))

(declare-fun c!46234 () Bool)

(assert (=> d!65503 (= c!46234 (and (is-Intermediate!1881 lt!140406) (undefined!2693 lt!140406)))))

(assert (=> d!65503 (= lt!140406 e!180222)))

(declare-fun c!46235 () Bool)

(assert (=> d!65503 (= c!46235 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!65503 (= lt!140405 (select (arr!6712 lt!140147) (toIndex!0 (select (store (arr!6712 a!3325) i!1267 k!2581) startIndex!26) mask!3868)))))

(assert (=> d!65503 (validMask!0 mask!3868)))

(assert (=> d!65503 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!6712 a!3325) i!1267 k!2581) startIndex!26) mask!3868) (select (store (arr!6712 a!3325) i!1267 k!2581) startIndex!26) lt!140147 mask!3868) lt!140406)))

(declare-fun b!284029 () Bool)

(assert (=> b!284029 (= e!180224 (Intermediate!1881 false (toIndex!0 (select (store (arr!6712 a!3325) i!1267 k!2581) startIndex!26) mask!3868) #b00000000000000000000000000000000))))

(declare-fun b!284030 () Bool)

(assert (=> b!284030 (and (bvsge (index!9696 lt!140406) #b00000000000000000000000000000000) (bvslt (index!9696 lt!140406) (size!7064 lt!140147)))))

(declare-fun res!146665 () Bool)

(assert (=> b!284030 (= res!146665 (= (select (arr!6712 lt!140147) (index!9696 lt!140406)) (select (store (arr!6712 a!3325) i!1267 k!2581) startIndex!26)))))

(assert (=> b!284030 (=> res!146665 e!180223)))

(assert (=> b!284030 (= e!180220 e!180223)))

(assert (= (and d!65503 c!46235) b!284022))

(assert (= (and d!65503 (not c!46235)) b!284027))

(assert (= (and b!284027 c!46233) b!284029))

(assert (= (and b!284027 (not c!46233)) b!284024))

(assert (= (and d!65503 c!46234) b!284026))

(assert (= (and d!65503 (not c!46234)) b!284025))

(assert (= (and b!284025 res!146664) b!284030))

(assert (= (and b!284030 (not res!146665)) b!284023))

(assert (= (and b!284023 (not res!146663)) b!284028))

(declare-fun m!299117 () Bool)

(assert (=> b!284030 m!299117))

(assert (=> d!65503 m!298687))

(declare-fun m!299119 () Bool)

(assert (=> d!65503 m!299119))

(assert (=> d!65503 m!298399))

(assert (=> b!284023 m!299117))

(assert (=> b!284024 m!298687))

(declare-fun m!299121 () Bool)

(assert (=> b!284024 m!299121))

(assert (=> b!284024 m!299121))

(assert (=> b!284024 m!298411))

(declare-fun m!299123 () Bool)

(assert (=> b!284024 m!299123))

(assert (=> b!284028 m!299117))

(assert (=> d!65345 d!65503))

(declare-fun d!65505 () Bool)

(declare-fun lt!140408 () (_ BitVec 32))

(declare-fun lt!140407 () (_ BitVec 32))

(assert (=> d!65505 (= lt!140408 (bvmul (bvxor lt!140407 (bvlshr lt!140407 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!65505 (= lt!140407 ((_ extract 31 0) (bvand (bvxor (select (store (arr!6712 a!3325) i!1267 k!2581) startIndex!26) (bvlshr (select (store (arr!6712 a!3325) i!1267 k!2581) startIndex!26) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!65505 (and (bvsge mask!3868 #b00000000000000000000000000000000) (let ((res!146631 (let ((h!5211 ((_ extract 31 0) (bvand (bvxor (select (store (arr!6712 a!3325) i!1267 k!2581) startIndex!26) (bvlshr (select (store (arr!6712 a!3325) i!1267 k!2581) startIndex!26) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!27878 (bvmul (bvxor h!5211 (bvlshr h!5211 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!27878 (bvlshr x!27878 #b00000000000000000000000000001101)) mask!3868))))) (and (bvslt res!146631 (bvadd mask!3868 #b00000000000000000000000000000001)) (bvsge res!146631 #b00000000000000000000000000000000))))))

(assert (=> d!65505 (= (toIndex!0 (select (store (arr!6712 a!3325) i!1267 k!2581) startIndex!26) mask!3868) (bvand (bvxor lt!140408 (bvlshr lt!140408 #b00000000000000000000000000001101)) mask!3868))))

(assert (=> d!65345 d!65505))

(assert (=> d!65345 d!65369))

(declare-fun d!65507 () Bool)

(assert (=> d!65507 (= (validKeyInArray!0 (select (arr!6712 lt!140147) startIndex!26)) (and (not (= (select (arr!6712 lt!140147) startIndex!26) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!6712 lt!140147) startIndex!26) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!283590 d!65507))

(push 1)

(assert (not d!65467))

(assert (not b!283953))

(assert (not d!65475))

(assert (not b!284004))

(assert (not bm!25519))

(assert (not d!65493))

(assert (not b!283945))

(assert (not b!283934))

(assert (not b!283981))

(assert (not d!65503))

(assert (not b!283997))

(assert (not b!283935))

(assert (not bm!25522))

(assert (not b!283990))

(assert (not bm!25521))

(assert (not b!283989))

(assert (not d!65487))

(assert (not d!65471))

(assert (not b!283943))

(assert (not bm!25520))

(assert (not bm!25518))

(assert (not d!65447))

(assert (not b!283944))

(assert (not b!283951))

(assert (not b!284001))

(assert (not b!283905))

(assert (not b!284024))

(assert (not d!65469))

(assert (not b!284009))

(assert (not d!65443))

(assert (not b!283972))

(assert (not b!284015))

(assert (not d!65465))

(assert (not d!65451))

(assert (not b!283926))

(assert (not b!283978))

(assert (not d!65483))

(assert (not b!283952))

(assert (not d!65477))

(assert (not d!65455))

(assert (not b!283895))

(assert (not b!283996))

(assert (not b!284006))

(assert (not d!65499))

(assert (not d!65459))

(assert (not bm!25523))

(assert (not b!284008))

(assert (not b!283986))

(assert (not b!284005))

(assert (not b!283904))

(assert (not b!283903))

(assert (not b!284010))

(assert (not d!65479))

(check-sat)

(pop 1)

(push 1)

(check-sat)

