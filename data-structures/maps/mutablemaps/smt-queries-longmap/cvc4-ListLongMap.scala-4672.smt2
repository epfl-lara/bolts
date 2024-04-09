; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64970 () Bool)

(assert start!64970)

(declare-fun b!733438 () Bool)

(declare-fun e!410403 () Bool)

(declare-fun e!410396 () Bool)

(assert (=> b!733438 (= e!410403 e!410396)))

(declare-fun res!493053 () Bool)

(assert (=> b!733438 (=> (not res!493053) (not e!410396))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((array!41234 0))(
  ( (array!41235 (arr!19730 (Array (_ BitVec 32) (_ BitVec 64))) (size!20151 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41234)

(declare-datatypes ((SeekEntryResult!7337 0))(
  ( (MissingZero!7337 (index!31715 (_ BitVec 32))) (Found!7337 (index!31716 (_ BitVec 32))) (Intermediate!7337 (undefined!8149 Bool) (index!31717 (_ BitVec 32)) (x!62728 (_ BitVec 32))) (Undefined!7337) (MissingVacant!7337 (index!31718 (_ BitVec 32))) )
))
(declare-fun lt!325093 () SeekEntryResult!7337)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41234 (_ BitVec 32)) SeekEntryResult!7337)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!733438 (= res!493053 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19730 a!3186) j!159) mask!3328) (select (arr!19730 a!3186) j!159) a!3186 mask!3328) lt!325093))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!733438 (= lt!325093 (Intermediate!7337 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!733439 () Bool)

(declare-fun e!410395 () Bool)

(declare-fun lt!325099 () (_ BitVec 32))

(assert (=> b!733439 (= e!410395 (or (bvslt mask!3328 #b00000000000000000000000000000000) (and (bvsge lt!325099 #b00000000000000000000000000000000) (bvslt lt!325099 (bvadd #b00000000000000000000000000000001 mask!3328)))))))

(declare-fun b!733441 () Bool)

(declare-fun e!410397 () Bool)

(declare-fun e!410402 () Bool)

(assert (=> b!733441 (= e!410397 (not e!410402))))

(declare-fun res!493066 () Bool)

(assert (=> b!733441 (=> res!493066 e!410402)))

(declare-fun lt!325092 () SeekEntryResult!7337)

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!733441 (= res!493066 (or (not (is-Intermediate!7337 lt!325092)) (bvsge x!1131 (x!62728 lt!325092))))))

(declare-fun e!410401 () Bool)

(assert (=> b!733441 e!410401))

(declare-fun res!493067 () Bool)

(assert (=> b!733441 (=> (not res!493067) (not e!410401))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41234 (_ BitVec 32)) Bool)

(assert (=> b!733441 (= res!493067 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24992 0))(
  ( (Unit!24993) )
))
(declare-fun lt!325096 () Unit!24992)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41234 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24992)

(assert (=> b!733441 (= lt!325096 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!733442 () Bool)

(declare-fun res!493068 () Bool)

(declare-fun e!410394 () Bool)

(assert (=> b!733442 (=> (not res!493068) (not e!410394))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!733442 (= res!493068 (validKeyInArray!0 k!2102))))

(declare-fun b!733443 () Bool)

(declare-fun res!493059 () Bool)

(assert (=> b!733443 (=> (not res!493059) (not e!410403))))

(assert (=> b!733443 (= res!493059 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!733444 () Bool)

(declare-fun res!493056 () Bool)

(assert (=> b!733444 (=> (not res!493056) (not e!410396))))

(declare-fun e!410400 () Bool)

(assert (=> b!733444 (= res!493056 e!410400)))

(declare-fun c!80571 () Bool)

(assert (=> b!733444 (= c!80571 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!733445 () Bool)

(declare-fun res!493055 () Bool)

(assert (=> b!733445 (=> res!493055 e!410395)))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41234 (_ BitVec 32)) SeekEntryResult!7337)

(assert (=> b!733445 (= res!493055 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19730 a!3186) j!159) a!3186 mask!3328) (Found!7337 j!159)))))

(declare-fun b!733446 () Bool)

(declare-fun res!493061 () Bool)

(assert (=> b!733446 (=> (not res!493061) (not e!410394))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!733446 (= res!493061 (and (= (size!20151 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20151 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20151 a!3186)) (not (= i!1173 j!159))))))

(declare-fun e!410399 () Bool)

(declare-fun b!733447 () Bool)

(declare-fun lt!325094 () SeekEntryResult!7337)

(assert (=> b!733447 (= e!410399 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19730 a!3186) j!159) a!3186 mask!3328) lt!325094))))

(declare-fun b!733448 () Bool)

(declare-fun res!493052 () Bool)

(assert (=> b!733448 (=> (not res!493052) (not e!410394))))

(assert (=> b!733448 (= res!493052 (validKeyInArray!0 (select (arr!19730 a!3186) j!159)))))

(declare-fun b!733449 () Bool)

(assert (=> b!733449 (= e!410394 e!410403)))

(declare-fun res!493063 () Bool)

(assert (=> b!733449 (=> (not res!493063) (not e!410403))))

(declare-fun lt!325095 () SeekEntryResult!7337)

(assert (=> b!733449 (= res!493063 (or (= lt!325095 (MissingZero!7337 i!1173)) (= lt!325095 (MissingVacant!7337 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41234 (_ BitVec 32)) SeekEntryResult!7337)

(assert (=> b!733449 (= lt!325095 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!733450 () Bool)

(declare-fun res!493060 () Bool)

(assert (=> b!733450 (=> (not res!493060) (not e!410403))))

(assert (=> b!733450 (= res!493060 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20151 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20151 a!3186))))))

(declare-fun b!733440 () Bool)

(assert (=> b!733440 (= e!410402 e!410395)))

(declare-fun res!493058 () Bool)

(assert (=> b!733440 (=> res!493058 e!410395)))

(assert (=> b!733440 (= res!493058 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!733440 (= lt!325099 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun res!493054 () Bool)

(assert (=> start!64970 (=> (not res!493054) (not e!410394))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64970 (= res!493054 (validMask!0 mask!3328))))

(assert (=> start!64970 e!410394))

(assert (=> start!64970 true))

(declare-fun array_inv!15504 (array!41234) Bool)

(assert (=> start!64970 (array_inv!15504 a!3186)))

(declare-fun b!733451 () Bool)

(declare-fun res!493064 () Bool)

(assert (=> b!733451 (=> (not res!493064) (not e!410396))))

(assert (=> b!733451 (= res!493064 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19730 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!733452 () Bool)

(declare-fun res!493062 () Bool)

(assert (=> b!733452 (=> (not res!493062) (not e!410394))))

(declare-fun arrayContainsKey!0 (array!41234 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!733452 (= res!493062 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!733453 () Bool)

(declare-fun res!493051 () Bool)

(assert (=> b!733453 (=> (not res!493051) (not e!410403))))

(declare-datatypes ((List!13785 0))(
  ( (Nil!13782) (Cons!13781 (h!14847 (_ BitVec 64)) (t!20108 List!13785)) )
))
(declare-fun arrayNoDuplicates!0 (array!41234 (_ BitVec 32) List!13785) Bool)

(assert (=> b!733453 (= res!493051 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13782))))

(declare-fun b!733454 () Bool)

(assert (=> b!733454 (= e!410401 e!410399)))

(declare-fun res!493065 () Bool)

(assert (=> b!733454 (=> (not res!493065) (not e!410399))))

(assert (=> b!733454 (= res!493065 (= (seekEntryOrOpen!0 (select (arr!19730 a!3186) j!159) a!3186 mask!3328) lt!325094))))

(assert (=> b!733454 (= lt!325094 (Found!7337 j!159))))

(declare-fun b!733455 () Bool)

(assert (=> b!733455 (= e!410400 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19730 a!3186) j!159) a!3186 mask!3328) (Found!7337 j!159)))))

(declare-fun b!733456 () Bool)

(assert (=> b!733456 (= e!410400 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19730 a!3186) j!159) a!3186 mask!3328) lt!325093))))

(declare-fun b!733457 () Bool)

(assert (=> b!733457 (= e!410396 e!410397)))

(declare-fun res!493057 () Bool)

(assert (=> b!733457 (=> (not res!493057) (not e!410397))))

(declare-fun lt!325097 () SeekEntryResult!7337)

(assert (=> b!733457 (= res!493057 (= lt!325097 lt!325092))))

(declare-fun lt!325100 () array!41234)

(declare-fun lt!325098 () (_ BitVec 64))

(assert (=> b!733457 (= lt!325092 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!325098 lt!325100 mask!3328))))

(assert (=> b!733457 (= lt!325097 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!325098 mask!3328) lt!325098 lt!325100 mask!3328))))

(assert (=> b!733457 (= lt!325098 (select (store (arr!19730 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!733457 (= lt!325100 (array!41235 (store (arr!19730 a!3186) i!1173 k!2102) (size!20151 a!3186)))))

(assert (= (and start!64970 res!493054) b!733446))

(assert (= (and b!733446 res!493061) b!733448))

(assert (= (and b!733448 res!493052) b!733442))

(assert (= (and b!733442 res!493068) b!733452))

(assert (= (and b!733452 res!493062) b!733449))

(assert (= (and b!733449 res!493063) b!733443))

(assert (= (and b!733443 res!493059) b!733453))

(assert (= (and b!733453 res!493051) b!733450))

(assert (= (and b!733450 res!493060) b!733438))

(assert (= (and b!733438 res!493053) b!733451))

(assert (= (and b!733451 res!493064) b!733444))

(assert (= (and b!733444 c!80571) b!733456))

(assert (= (and b!733444 (not c!80571)) b!733455))

(assert (= (and b!733444 res!493056) b!733457))

(assert (= (and b!733457 res!493057) b!733441))

(assert (= (and b!733441 res!493067) b!733454))

(assert (= (and b!733454 res!493065) b!733447))

(assert (= (and b!733441 (not res!493066)) b!733440))

(assert (= (and b!733440 (not res!493058)) b!733445))

(assert (= (and b!733445 (not res!493055)) b!733439))

(declare-fun m!686401 () Bool)

(assert (=> b!733455 m!686401))

(assert (=> b!733455 m!686401))

(declare-fun m!686403 () Bool)

(assert (=> b!733455 m!686403))

(assert (=> b!733454 m!686401))

(assert (=> b!733454 m!686401))

(declare-fun m!686405 () Bool)

(assert (=> b!733454 m!686405))

(declare-fun m!686407 () Bool)

(assert (=> start!64970 m!686407))

(declare-fun m!686409 () Bool)

(assert (=> start!64970 m!686409))

(declare-fun m!686411 () Bool)

(assert (=> b!733440 m!686411))

(declare-fun m!686413 () Bool)

(assert (=> b!733442 m!686413))

(declare-fun m!686415 () Bool)

(assert (=> b!733443 m!686415))

(declare-fun m!686417 () Bool)

(assert (=> b!733453 m!686417))

(assert (=> b!733447 m!686401))

(assert (=> b!733447 m!686401))

(declare-fun m!686419 () Bool)

(assert (=> b!733447 m!686419))

(assert (=> b!733456 m!686401))

(assert (=> b!733456 m!686401))

(declare-fun m!686421 () Bool)

(assert (=> b!733456 m!686421))

(declare-fun m!686423 () Bool)

(assert (=> b!733441 m!686423))

(declare-fun m!686425 () Bool)

(assert (=> b!733441 m!686425))

(assert (=> b!733445 m!686401))

(assert (=> b!733445 m!686401))

(assert (=> b!733445 m!686403))

(declare-fun m!686427 () Bool)

(assert (=> b!733451 m!686427))

(assert (=> b!733438 m!686401))

(assert (=> b!733438 m!686401))

(declare-fun m!686429 () Bool)

(assert (=> b!733438 m!686429))

(assert (=> b!733438 m!686429))

(assert (=> b!733438 m!686401))

(declare-fun m!686431 () Bool)

(assert (=> b!733438 m!686431))

(assert (=> b!733448 m!686401))

(assert (=> b!733448 m!686401))

(declare-fun m!686433 () Bool)

(assert (=> b!733448 m!686433))

(declare-fun m!686435 () Bool)

(assert (=> b!733457 m!686435))

(declare-fun m!686437 () Bool)

(assert (=> b!733457 m!686437))

(assert (=> b!733457 m!686435))

(declare-fun m!686439 () Bool)

(assert (=> b!733457 m!686439))

(declare-fun m!686441 () Bool)

(assert (=> b!733457 m!686441))

(declare-fun m!686443 () Bool)

(assert (=> b!733457 m!686443))

(declare-fun m!686445 () Bool)

(assert (=> b!733452 m!686445))

(declare-fun m!686447 () Bool)

(assert (=> b!733449 m!686447))

(push 1)

(assert (not b!733438))

(assert (not b!733442))

(assert (not b!733453))

(assert (not start!64970))

(assert (not b!733454))

(assert (not b!733457))

(assert (not b!733440))

(assert (not b!733441))

(assert (not b!733447))

(assert (not b!733455))

(assert (not b!733445))

(assert (not b!733456))

(assert (not b!733452))

(assert (not b!733449))

(assert (not b!733448))

(assert (not b!733443))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!733557 () Bool)

(declare-fun e!410462 () SeekEntryResult!7337)

(declare-fun e!410461 () SeekEntryResult!7337)

(assert (=> b!733557 (= e!410462 e!410461)))

(declare-fun c!80611 () Bool)

(declare-fun lt!325137 () (_ BitVec 64))

(assert (=> b!733557 (= c!80611 (= lt!325137 (select (arr!19730 a!3186) j!159)))))

(declare-fun b!733558 () Bool)

(assert (=> b!733558 (= e!410461 (Found!7337 index!1321))))

(declare-fun b!733559 () Bool)

(assert (=> b!733559 (= e!410462 Undefined!7337)))

(declare-fun b!733560 () Bool)

(declare-fun c!80613 () Bool)

(assert (=> b!733560 (= c!80613 (= lt!325137 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!410460 () SeekEntryResult!7337)

(assert (=> b!733560 (= e!410461 e!410460)))

(declare-fun lt!325138 () SeekEntryResult!7337)

(declare-fun d!99817 () Bool)

(assert (=> d!99817 (and (or (is-Undefined!7337 lt!325138) (not (is-Found!7337 lt!325138)) (and (bvsge (index!31716 lt!325138) #b00000000000000000000000000000000) (bvslt (index!31716 lt!325138) (size!20151 a!3186)))) (or (is-Undefined!7337 lt!325138) (is-Found!7337 lt!325138) (not (is-MissingVacant!7337 lt!325138)) (not (= (index!31718 lt!325138) resIntermediateIndex!5)) (and (bvsge (index!31718 lt!325138) #b00000000000000000000000000000000) (bvslt (index!31718 lt!325138) (size!20151 a!3186)))) (or (is-Undefined!7337 lt!325138) (ite (is-Found!7337 lt!325138) (= (select (arr!19730 a!3186) (index!31716 lt!325138)) (select (arr!19730 a!3186) j!159)) (and (is-MissingVacant!7337 lt!325138) (= (index!31718 lt!325138) resIntermediateIndex!5) (= (select (arr!19730 a!3186) (index!31718 lt!325138)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!99817 (= lt!325138 e!410462)))

(declare-fun c!80612 () Bool)

(assert (=> d!99817 (= c!80612 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!99817 (= lt!325137 (select (arr!19730 a!3186) index!1321))))

(assert (=> d!99817 (validMask!0 mask!3328)))

(assert (=> d!99817 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19730 a!3186) j!159) a!3186 mask!3328) lt!325138)))

(declare-fun b!733561 () Bool)

(assert (=> b!733561 (= e!410460 (seekKeyOrZeroReturnVacant!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) resIntermediateIndex!5 (select (arr!19730 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!733562 () Bool)

(assert (=> b!733562 (= e!410460 (MissingVacant!7337 resIntermediateIndex!5))))

(assert (= (and d!99817 c!80612) b!733559))

(assert (= (and d!99817 (not c!80612)) b!733557))

(assert (= (and b!733557 c!80611) b!733558))

(assert (= (and b!733557 (not c!80611)) b!733560))

(assert (= (and b!733560 c!80613) b!733562))

(assert (= (and b!733560 (not c!80613)) b!733561))

(declare-fun m!686495 () Bool)

(assert (=> d!99817 m!686495))

(declare-fun m!686497 () Bool)

(assert (=> d!99817 m!686497))

(declare-fun m!686499 () Bool)

(assert (=> d!99817 m!686499))

(assert (=> d!99817 m!686407))

(assert (=> b!733561 m!686411))

(assert (=> b!733561 m!686411))

(assert (=> b!733561 m!686401))

(declare-fun m!686501 () Bool)

(assert (=> b!733561 m!686501))

(assert (=> b!733455 d!99817))

(assert (=> b!733445 d!99817))

(declare-fun b!733669 () Bool)

(declare-fun lt!325190 () SeekEntryResult!7337)

(assert (=> b!733669 (and (bvsge (index!31717 lt!325190) #b00000000000000000000000000000000) (bvslt (index!31717 lt!325190) (size!20151 a!3186)))))

(declare-fun res!493125 () Bool)

(assert (=> b!733669 (= res!493125 (= (select (arr!19730 a!3186) (index!31717 lt!325190)) (select (arr!19730 a!3186) j!159)))))

(declare-fun e!410529 () Bool)

(assert (=> b!733669 (=> res!493125 e!410529)))

(declare-fun e!410532 () Bool)

(assert (=> b!733669 (= e!410532 e!410529)))

(declare-fun b!733670 () Bool)

(declare-fun e!410530 () SeekEntryResult!7337)

(assert (=> b!733670 (= e!410530 (Intermediate!7337 true index!1321 x!1131))))

(declare-fun b!733671 () Bool)

(declare-fun e!410531 () Bool)

(assert (=> b!733671 (= e!410531 (bvsge (x!62728 lt!325190) #b01111111111111111111111111111110))))

(declare-fun b!733672 () Bool)

(declare-fun e!410528 () SeekEntryResult!7337)

(assert (=> b!733672 (= e!410530 e!410528)))

(declare-fun c!80652 () Bool)

(declare-fun lt!325191 () (_ BitVec 64))

(assert (=> b!733672 (= c!80652 (or (= lt!325191 (select (arr!19730 a!3186) j!159)) (= (bvadd lt!325191 lt!325191) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!733673 () Bool)

(assert (=> b!733673 (= e!410528 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) (select (arr!19730 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!733675 () Bool)

(assert (=> b!733675 (and (bvsge (index!31717 lt!325190) #b00000000000000000000000000000000) (bvslt (index!31717 lt!325190) (size!20151 a!3186)))))

(assert (=> b!733675 (= e!410529 (= (select (arr!19730 a!3186) (index!31717 lt!325190)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!733674 () Bool)

(assert (=> b!733674 (and (bvsge (index!31717 lt!325190) #b00000000000000000000000000000000) (bvslt (index!31717 lt!325190) (size!20151 a!3186)))))

(declare-fun res!493123 () Bool)

(assert (=> b!733674 (= res!493123 (= (select (arr!19730 a!3186) (index!31717 lt!325190)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!733674 (=> res!493123 e!410529)))

(declare-fun d!99829 () Bool)

(assert (=> d!99829 e!410531))

(declare-fun c!80651 () Bool)

(assert (=> d!99829 (= c!80651 (and (is-Intermediate!7337 lt!325190) (undefined!8149 lt!325190)))))

(assert (=> d!99829 (= lt!325190 e!410530)))

(declare-fun c!80653 () Bool)

(assert (=> d!99829 (= c!80653 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!99829 (= lt!325191 (select (arr!19730 a!3186) index!1321))))

(assert (=> d!99829 (validMask!0 mask!3328)))

(assert (=> d!99829 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19730 a!3186) j!159) a!3186 mask!3328) lt!325190)))

(declare-fun b!733676 () Bool)

(assert (=> b!733676 (= e!410528 (Intermediate!7337 false index!1321 x!1131))))

(declare-fun b!733677 () Bool)

(assert (=> b!733677 (= e!410531 e!410532)))

(declare-fun res!493124 () Bool)

(assert (=> b!733677 (= res!493124 (and (is-Intermediate!7337 lt!325190) (not (undefined!8149 lt!325190)) (bvslt (x!62728 lt!325190) #b01111111111111111111111111111110) (bvsge (x!62728 lt!325190) #b00000000000000000000000000000000) (bvsge (x!62728 lt!325190) x!1131)))))

(assert (=> b!733677 (=> (not res!493124) (not e!410532))))

(assert (= (and d!99829 c!80653) b!733670))

(assert (= (and d!99829 (not c!80653)) b!733672))

(assert (= (and b!733672 c!80652) b!733676))

(assert (= (and b!733672 (not c!80652)) b!733673))

(assert (= (and d!99829 c!80651) b!733671))

(assert (= (and d!99829 (not c!80651)) b!733677))

(assert (= (and b!733677 res!493124) b!733669))

(assert (= (and b!733669 (not res!493125)) b!733674))

(assert (= (and b!733674 (not res!493123)) b!733675))

(assert (=> b!733673 m!686411))

(assert (=> b!733673 m!686411))

(assert (=> b!733673 m!686401))

(declare-fun m!686587 () Bool)

(assert (=> b!733673 m!686587))

(declare-fun m!686589 () Bool)

(assert (=> b!733674 m!686589))

(assert (=> b!733669 m!686589))

(assert (=> d!99829 m!686499))

(assert (=> d!99829 m!686407))

(assert (=> b!733675 m!686589))

(assert (=> b!733456 d!99829))

(declare-fun b!733678 () Bool)

(declare-fun lt!325192 () SeekEntryResult!7337)

(assert (=> b!733678 (and (bvsge (index!31717 lt!325192) #b00000000000000000000000000000000) (bvslt (index!31717 lt!325192) (size!20151 lt!325100)))))

(declare-fun res!493128 () Bool)

(assert (=> b!733678 (= res!493128 (= (select (arr!19730 lt!325100) (index!31717 lt!325192)) lt!325098))))

(declare-fun e!410534 () Bool)

(assert (=> b!733678 (=> res!493128 e!410534)))

(declare-fun e!410537 () Bool)

(assert (=> b!733678 (= e!410537 e!410534)))

(declare-fun b!733679 () Bool)

(declare-fun e!410535 () SeekEntryResult!7337)

(assert (=> b!733679 (= e!410535 (Intermediate!7337 true index!1321 x!1131))))

(declare-fun b!733680 () Bool)

(declare-fun e!410536 () Bool)

(assert (=> b!733680 (= e!410536 (bvsge (x!62728 lt!325192) #b01111111111111111111111111111110))))

(declare-fun b!733681 () Bool)

(declare-fun e!410533 () SeekEntryResult!7337)

(assert (=> b!733681 (= e!410535 e!410533)))

(declare-fun c!80655 () Bool)

(declare-fun lt!325193 () (_ BitVec 64))

(assert (=> b!733681 (= c!80655 (or (= lt!325193 lt!325098) (= (bvadd lt!325193 lt!325193) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!733682 () Bool)

(assert (=> b!733682 (= e!410533 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) lt!325098 lt!325100 mask!3328))))

(declare-fun b!733684 () Bool)

(assert (=> b!733684 (and (bvsge (index!31717 lt!325192) #b00000000000000000000000000000000) (bvslt (index!31717 lt!325192) (size!20151 lt!325100)))))

(assert (=> b!733684 (= e!410534 (= (select (arr!19730 lt!325100) (index!31717 lt!325192)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!733683 () Bool)

(assert (=> b!733683 (and (bvsge (index!31717 lt!325192) #b00000000000000000000000000000000) (bvslt (index!31717 lt!325192) (size!20151 lt!325100)))))

(declare-fun res!493126 () Bool)

(assert (=> b!733683 (= res!493126 (= (select (arr!19730 lt!325100) (index!31717 lt!325192)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!733683 (=> res!493126 e!410534)))

(declare-fun d!99855 () Bool)

(assert (=> d!99855 e!410536))

(declare-fun c!80654 () Bool)

(assert (=> d!99855 (= c!80654 (and (is-Intermediate!7337 lt!325192) (undefined!8149 lt!325192)))))

(assert (=> d!99855 (= lt!325192 e!410535)))

(declare-fun c!80656 () Bool)

(assert (=> d!99855 (= c!80656 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!99855 (= lt!325193 (select (arr!19730 lt!325100) index!1321))))

(assert (=> d!99855 (validMask!0 mask!3328)))

(assert (=> d!99855 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!325098 lt!325100 mask!3328) lt!325192)))

(declare-fun b!733685 () Bool)

(assert (=> b!733685 (= e!410533 (Intermediate!7337 false index!1321 x!1131))))

(declare-fun b!733686 () Bool)

(assert (=> b!733686 (= e!410536 e!410537)))

(declare-fun res!493127 () Bool)

(assert (=> b!733686 (= res!493127 (and (is-Intermediate!7337 lt!325192) (not (undefined!8149 lt!325192)) (bvslt (x!62728 lt!325192) #b01111111111111111111111111111110) (bvsge (x!62728 lt!325192) #b00000000000000000000000000000000) (bvsge (x!62728 lt!325192) x!1131)))))

(assert (=> b!733686 (=> (not res!493127) (not e!410537))))

(assert (= (and d!99855 c!80656) b!733679))

(assert (= (and d!99855 (not c!80656)) b!733681))

(assert (= (and b!733681 c!80655) b!733685))

(assert (= (and b!733681 (not c!80655)) b!733682))

(assert (= (and d!99855 c!80654) b!733680))

(assert (= (and d!99855 (not c!80654)) b!733686))

(assert (= (and b!733686 res!493127) b!733678))

(assert (= (and b!733678 (not res!493128)) b!733683))

(assert (= (and b!733683 (not res!493126)) b!733684))

(assert (=> b!733682 m!686411))

(assert (=> b!733682 m!686411))

(declare-fun m!686591 () Bool)

(assert (=> b!733682 m!686591))

(declare-fun m!686593 () Bool)

(assert (=> b!733683 m!686593))

(assert (=> b!733678 m!686593))

(declare-fun m!686595 () Bool)

(assert (=> d!99855 m!686595))

(assert (=> d!99855 m!686407))

(assert (=> b!733684 m!686593))

(assert (=> b!733457 d!99855))

(declare-fun b!733687 () Bool)

(declare-fun lt!325194 () SeekEntryResult!7337)

(assert (=> b!733687 (and (bvsge (index!31717 lt!325194) #b00000000000000000000000000000000) (bvslt (index!31717 lt!325194) (size!20151 lt!325100)))))

(declare-fun res!493131 () Bool)

(assert (=> b!733687 (= res!493131 (= (select (arr!19730 lt!325100) (index!31717 lt!325194)) lt!325098))))

(declare-fun e!410539 () Bool)

(assert (=> b!733687 (=> res!493131 e!410539)))

(declare-fun e!410542 () Bool)

(assert (=> b!733687 (= e!410542 e!410539)))

(declare-fun b!733688 () Bool)

(declare-fun e!410540 () SeekEntryResult!7337)

(assert (=> b!733688 (= e!410540 (Intermediate!7337 true (toIndex!0 lt!325098 mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!733689 () Bool)

(declare-fun e!410541 () Bool)

(assert (=> b!733689 (= e!410541 (bvsge (x!62728 lt!325194) #b01111111111111111111111111111110))))

(declare-fun b!733690 () Bool)

(declare-fun e!410538 () SeekEntryResult!7337)

(assert (=> b!733690 (= e!410540 e!410538)))

(declare-fun c!80658 () Bool)

(declare-fun lt!325195 () (_ BitVec 64))

(assert (=> b!733690 (= c!80658 (or (= lt!325195 lt!325098) (= (bvadd lt!325195 lt!325195) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!733691 () Bool)

(assert (=> b!733691 (= e!410538 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!325098 mask!3328) #b00000000000000000000000000000000 mask!3328) lt!325098 lt!325100 mask!3328))))

(declare-fun b!733693 () Bool)

(assert (=> b!733693 (and (bvsge (index!31717 lt!325194) #b00000000000000000000000000000000) (bvslt (index!31717 lt!325194) (size!20151 lt!325100)))))

(assert (=> b!733693 (= e!410539 (= (select (arr!19730 lt!325100) (index!31717 lt!325194)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!733692 () Bool)

(assert (=> b!733692 (and (bvsge (index!31717 lt!325194) #b00000000000000000000000000000000) (bvslt (index!31717 lt!325194) (size!20151 lt!325100)))))

(declare-fun res!493129 () Bool)

(assert (=> b!733692 (= res!493129 (= (select (arr!19730 lt!325100) (index!31717 lt!325194)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!733692 (=> res!493129 e!410539)))

(declare-fun d!99857 () Bool)

(assert (=> d!99857 e!410541))

(declare-fun c!80657 () Bool)

(assert (=> d!99857 (= c!80657 (and (is-Intermediate!7337 lt!325194) (undefined!8149 lt!325194)))))

(assert (=> d!99857 (= lt!325194 e!410540)))

(declare-fun c!80659 () Bool)

(assert (=> d!99857 (= c!80659 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!99857 (= lt!325195 (select (arr!19730 lt!325100) (toIndex!0 lt!325098 mask!3328)))))

(assert (=> d!99857 (validMask!0 mask!3328)))

(assert (=> d!99857 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!325098 mask!3328) lt!325098 lt!325100 mask!3328) lt!325194)))

(declare-fun b!733694 () Bool)

(assert (=> b!733694 (= e!410538 (Intermediate!7337 false (toIndex!0 lt!325098 mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!733695 () Bool)

(assert (=> b!733695 (= e!410541 e!410542)))

(declare-fun res!493130 () Bool)

(assert (=> b!733695 (= res!493130 (and (is-Intermediate!7337 lt!325194) (not (undefined!8149 lt!325194)) (bvslt (x!62728 lt!325194) #b01111111111111111111111111111110) (bvsge (x!62728 lt!325194) #b00000000000000000000000000000000) (bvsge (x!62728 lt!325194) #b00000000000000000000000000000000)))))

(assert (=> b!733695 (=> (not res!493130) (not e!410542))))

(assert (= (and d!99857 c!80659) b!733688))

(assert (= (and d!99857 (not c!80659)) b!733690))

(assert (= (and b!733690 c!80658) b!733694))

(assert (= (and b!733690 (not c!80658)) b!733691))

(assert (= (and d!99857 c!80657) b!733689))

(assert (= (and d!99857 (not c!80657)) b!733695))

(assert (= (and b!733695 res!493130) b!733687))

(assert (= (and b!733687 (not res!493131)) b!733692))

(assert (= (and b!733692 (not res!493129)) b!733693))

(assert (=> b!733691 m!686435))

(declare-fun m!686597 () Bool)

(assert (=> b!733691 m!686597))

(assert (=> b!733691 m!686597))

(declare-fun m!686599 () Bool)

(assert (=> b!733691 m!686599))

(declare-fun m!686601 () Bool)

(assert (=> b!733692 m!686601))

(assert (=> b!733687 m!686601))

(assert (=> d!99857 m!686435))

(declare-fun m!686603 () Bool)

(assert (=> d!99857 m!686603))

(assert (=> d!99857 m!686407))

(assert (=> b!733693 m!686601))

(assert (=> b!733457 d!99857))

(declare-fun d!99859 () Bool)

(declare-fun lt!325201 () (_ BitVec 32))

(declare-fun lt!325200 () (_ BitVec 32))

(assert (=> d!99859 (= lt!325201 (bvmul (bvxor lt!325200 (bvlshr lt!325200 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!99859 (= lt!325200 ((_ extract 31 0) (bvand (bvxor lt!325098 (bvlshr lt!325098 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!99859 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!493132 (let ((h!14849 ((_ extract 31 0) (bvand (bvxor lt!325098 (bvlshr lt!325098 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!62735 (bvmul (bvxor h!14849 (bvlshr h!14849 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!62735 (bvlshr x!62735 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!493132 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!493132 #b00000000000000000000000000000000))))))

(assert (=> d!99859 (= (toIndex!0 lt!325098 mask!3328) (bvand (bvxor lt!325201 (bvlshr lt!325201 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!733457 d!99859))

(declare-fun b!733696 () Bool)

(declare-fun e!410545 () SeekEntryResult!7337)

(declare-fun e!410544 () SeekEntryResult!7337)

(assert (=> b!733696 (= e!410545 e!410544)))

(declare-fun lt!325202 () (_ BitVec 64))

(declare-fun c!80660 () Bool)

(assert (=> b!733696 (= c!80660 (= lt!325202 (select (arr!19730 a!3186) j!159)))))

(declare-fun b!733697 () Bool)

(assert (=> b!733697 (= e!410544 (Found!7337 resIntermediateIndex!5))))

(declare-fun b!733698 () Bool)

(assert (=> b!733698 (= e!410545 Undefined!7337)))

(declare-fun b!733699 () Bool)

(declare-fun c!80662 () Bool)

(assert (=> b!733699 (= c!80662 (= lt!325202 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!410543 () SeekEntryResult!7337)

(assert (=> b!733699 (= e!410544 e!410543)))

(declare-fun lt!325203 () SeekEntryResult!7337)

(declare-fun d!99861 () Bool)

(assert (=> d!99861 (and (or (is-Undefined!7337 lt!325203) (not (is-Found!7337 lt!325203)) (and (bvsge (index!31716 lt!325203) #b00000000000000000000000000000000) (bvslt (index!31716 lt!325203) (size!20151 a!3186)))) (or (is-Undefined!7337 lt!325203) (is-Found!7337 lt!325203) (not (is-MissingVacant!7337 lt!325203)) (not (= (index!31718 lt!325203) resIntermediateIndex!5)) (and (bvsge (index!31718 lt!325203) #b00000000000000000000000000000000) (bvslt (index!31718 lt!325203) (size!20151 a!3186)))) (or (is-Undefined!7337 lt!325203) (ite (is-Found!7337 lt!325203) (= (select (arr!19730 a!3186) (index!31716 lt!325203)) (select (arr!19730 a!3186) j!159)) (and (is-MissingVacant!7337 lt!325203) (= (index!31718 lt!325203) resIntermediateIndex!5) (= (select (arr!19730 a!3186) (index!31718 lt!325203)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!99861 (= lt!325203 e!410545)))

(declare-fun c!80661 () Bool)

(assert (=> d!99861 (= c!80661 (bvsge resIntermediateX!5 #b01111111111111111111111111111110))))

(assert (=> d!99861 (= lt!325202 (select (arr!19730 a!3186) resIntermediateIndex!5))))

(assert (=> d!99861 (validMask!0 mask!3328)))

(assert (=> d!99861 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19730 a!3186) j!159) a!3186 mask!3328) lt!325203)))

(declare-fun b!733700 () Bool)

(assert (=> b!733700 (= e!410543 (seekKeyOrZeroReturnVacant!0 (bvadd resIntermediateX!5 #b00000000000000000000000000000001) (nextIndex!0 resIntermediateIndex!5 resIntermediateX!5 mask!3328) resIntermediateIndex!5 (select (arr!19730 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!733701 () Bool)

(assert (=> b!733701 (= e!410543 (MissingVacant!7337 resIntermediateIndex!5))))

(assert (= (and d!99861 c!80661) b!733698))

(assert (= (and d!99861 (not c!80661)) b!733696))

(assert (= (and b!733696 c!80660) b!733697))

(assert (= (and b!733696 (not c!80660)) b!733699))

(assert (= (and b!733699 c!80662) b!733701))

(assert (= (and b!733699 (not c!80662)) b!733700))

(declare-fun m!686605 () Bool)

(assert (=> d!99861 m!686605))

(declare-fun m!686607 () Bool)

(assert (=> d!99861 m!686607))

(assert (=> d!99861 m!686427))

(assert (=> d!99861 m!686407))

(declare-fun m!686609 () Bool)

(assert (=> b!733700 m!686609))

(assert (=> b!733700 m!686609))

(assert (=> b!733700 m!686401))

(declare-fun m!686611 () Bool)

(assert (=> b!733700 m!686611))

(assert (=> b!733447 d!99861))

(declare-fun d!99867 () Bool)

(assert (=> d!99867 (= (validKeyInArray!0 (select (arr!19730 a!3186) j!159)) (and (not (= (select (arr!19730 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!19730 a!3186) j!159) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!733448 d!99867))

(declare-fun b!733702 () Bool)

(declare-fun lt!325204 () SeekEntryResult!7337)

(assert (=> b!733702 (and (bvsge (index!31717 lt!325204) #b00000000000000000000000000000000) (bvslt (index!31717 lt!325204) (size!20151 a!3186)))))

(declare-fun res!493135 () Bool)

(assert (=> b!733702 (= res!493135 (= (select (arr!19730 a!3186) (index!31717 lt!325204)) (select (arr!19730 a!3186) j!159)))))

(declare-fun e!410547 () Bool)

(assert (=> b!733702 (=> res!493135 e!410547)))

(declare-fun e!410550 () Bool)

(assert (=> b!733702 (= e!410550 e!410547)))

(declare-fun b!733703 () Bool)

(declare-fun e!410548 () SeekEntryResult!7337)

(assert (=> b!733703 (= e!410548 (Intermediate!7337 true (toIndex!0 (select (arr!19730 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!733704 () Bool)

(declare-fun e!410549 () Bool)

(assert (=> b!733704 (= e!410549 (bvsge (x!62728 lt!325204) #b01111111111111111111111111111110))))

(declare-fun b!733705 () Bool)

(declare-fun e!410546 () SeekEntryResult!7337)

(assert (=> b!733705 (= e!410548 e!410546)))

(declare-fun c!80664 () Bool)

(declare-fun lt!325205 () (_ BitVec 64))

(assert (=> b!733705 (= c!80664 (or (= lt!325205 (select (arr!19730 a!3186) j!159)) (= (bvadd lt!325205 lt!325205) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!733706 () Bool)

(assert (=> b!733706 (= e!410546 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!19730 a!3186) j!159) mask!3328) #b00000000000000000000000000000000 mask!3328) (select (arr!19730 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!733708 () Bool)

(assert (=> b!733708 (and (bvsge (index!31717 lt!325204) #b00000000000000000000000000000000) (bvslt (index!31717 lt!325204) (size!20151 a!3186)))))

(assert (=> b!733708 (= e!410547 (= (select (arr!19730 a!3186) (index!31717 lt!325204)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!733707 () Bool)

(assert (=> b!733707 (and (bvsge (index!31717 lt!325204) #b00000000000000000000000000000000) (bvslt (index!31717 lt!325204) (size!20151 a!3186)))))

(declare-fun res!493133 () Bool)

(assert (=> b!733707 (= res!493133 (= (select (arr!19730 a!3186) (index!31717 lt!325204)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!733707 (=> res!493133 e!410547)))

(declare-fun d!99869 () Bool)

(assert (=> d!99869 e!410549))

(declare-fun c!80663 () Bool)

(assert (=> d!99869 (= c!80663 (and (is-Intermediate!7337 lt!325204) (undefined!8149 lt!325204)))))

(assert (=> d!99869 (= lt!325204 e!410548)))

(declare-fun c!80665 () Bool)

(assert (=> d!99869 (= c!80665 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!99869 (= lt!325205 (select (arr!19730 a!3186) (toIndex!0 (select (arr!19730 a!3186) j!159) mask!3328)))))

(assert (=> d!99869 (validMask!0 mask!3328)))

(assert (=> d!99869 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19730 a!3186) j!159) mask!3328) (select (arr!19730 a!3186) j!159) a!3186 mask!3328) lt!325204)))

(declare-fun b!733709 () Bool)

(assert (=> b!733709 (= e!410546 (Intermediate!7337 false (toIndex!0 (select (arr!19730 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!733710 () Bool)

(assert (=> b!733710 (= e!410549 e!410550)))

(declare-fun res!493134 () Bool)

(assert (=> b!733710 (= res!493134 (and (is-Intermediate!7337 lt!325204) (not (undefined!8149 lt!325204)) (bvslt (x!62728 lt!325204) #b01111111111111111111111111111110) (bvsge (x!62728 lt!325204) #b00000000000000000000000000000000) (bvsge (x!62728 lt!325204) #b00000000000000000000000000000000)))))

(assert (=> b!733710 (=> (not res!493134) (not e!410550))))

(assert (= (and d!99869 c!80665) b!733703))

(assert (= (and d!99869 (not c!80665)) b!733705))

(assert (= (and b!733705 c!80664) b!733709))

(assert (= (and b!733705 (not c!80664)) b!733706))

(assert (= (and d!99869 c!80663) b!733704))

(assert (= (and d!99869 (not c!80663)) b!733710))

(assert (= (and b!733710 res!493134) b!733702))

(assert (= (and b!733702 (not res!493135)) b!733707))

(assert (= (and b!733707 (not res!493133)) b!733708))

(assert (=> b!733706 m!686429))

(declare-fun m!686613 () Bool)

(assert (=> b!733706 m!686613))

(assert (=> b!733706 m!686613))

(assert (=> b!733706 m!686401))

(declare-fun m!686615 () Bool)

(assert (=> b!733706 m!686615))

(declare-fun m!686617 () Bool)

(assert (=> b!733707 m!686617))

(assert (=> b!733702 m!686617))

(assert (=> d!99869 m!686429))

(declare-fun m!686619 () Bool)

(assert (=> d!99869 m!686619))

(assert (=> d!99869 m!686407))

(assert (=> b!733708 m!686617))

(assert (=> b!733438 d!99869))

(declare-fun d!99871 () Bool)

(declare-fun lt!325209 () (_ BitVec 32))

(declare-fun lt!325208 () (_ BitVec 32))

(assert (=> d!99871 (= lt!325209 (bvmul (bvxor lt!325208 (bvlshr lt!325208 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!99871 (= lt!325208 ((_ extract 31 0) (bvand (bvxor (select (arr!19730 a!3186) j!159) (bvlshr (select (arr!19730 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!99871 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!493132 (let ((h!14849 ((_ extract 31 0) (bvand (bvxor (select (arr!19730 a!3186) j!159) (bvlshr (select (arr!19730 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!62735 (bvmul (bvxor h!14849 (bvlshr h!14849 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!62735 (bvlshr x!62735 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!493132 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!493132 #b00000000000000000000000000000000))))))

(assert (=> d!99871 (= (toIndex!0 (select (arr!19730 a!3186) j!159) mask!3328) (bvand (bvxor lt!325209 (bvlshr lt!325209 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!733438 d!99871))

(declare-fun e!410570 () SeekEntryResult!7337)

(declare-fun b!733741 () Bool)

(declare-fun lt!325222 () SeekEntryResult!7337)

(assert (=> b!733741 (= e!410570 (seekKeyOrZeroReturnVacant!0 (x!62728 lt!325222) (index!31717 lt!325222) (index!31717 lt!325222) k!2102 a!3186 mask!3328))))

(declare-fun b!733742 () Bool)

(declare-fun e!410571 () SeekEntryResult!7337)

(declare-fun e!410569 () SeekEntryResult!7337)

(assert (=> b!733742 (= e!410571 e!410569)))

(declare-fun lt!325223 () (_ BitVec 64))

(assert (=> b!733742 (= lt!325223 (select (arr!19730 a!3186) (index!31717 lt!325222)))))

(declare-fun c!80679 () Bool)

(assert (=> b!733742 (= c!80679 (= lt!325223 k!2102))))

(declare-fun b!733743 () Bool)

(assert (=> b!733743 (= e!410570 (MissingZero!7337 (index!31717 lt!325222)))))

(declare-fun b!733744 () Bool)

(assert (=> b!733744 (= e!410569 (Found!7337 (index!31717 lt!325222)))))

(declare-fun b!733745 () Bool)

(assert (=> b!733745 (= e!410571 Undefined!7337)))

(declare-fun d!99873 () Bool)

(declare-fun lt!325221 () SeekEntryResult!7337)

(assert (=> d!99873 (and (or (is-Undefined!7337 lt!325221) (not (is-Found!7337 lt!325221)) (and (bvsge (index!31716 lt!325221) #b00000000000000000000000000000000) (bvslt (index!31716 lt!325221) (size!20151 a!3186)))) (or (is-Undefined!7337 lt!325221) (is-Found!7337 lt!325221) (not (is-MissingZero!7337 lt!325221)) (and (bvsge (index!31715 lt!325221) #b00000000000000000000000000000000) (bvslt (index!31715 lt!325221) (size!20151 a!3186)))) (or (is-Undefined!7337 lt!325221) (is-Found!7337 lt!325221) (is-MissingZero!7337 lt!325221) (not (is-MissingVacant!7337 lt!325221)) (and (bvsge (index!31718 lt!325221) #b00000000000000000000000000000000) (bvslt (index!31718 lt!325221) (size!20151 a!3186)))) (or (is-Undefined!7337 lt!325221) (ite (is-Found!7337 lt!325221) (= (select (arr!19730 a!3186) (index!31716 lt!325221)) k!2102) (ite (is-MissingZero!7337 lt!325221) (= (select (arr!19730 a!3186) (index!31715 lt!325221)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!7337 lt!325221) (= (select (arr!19730 a!3186) (index!31718 lt!325221)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!99873 (= lt!325221 e!410571)))

(declare-fun c!80680 () Bool)

(assert (=> d!99873 (= c!80680 (and (is-Intermediate!7337 lt!325222) (undefined!8149 lt!325222)))))

