; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51122 () Bool)

(assert start!51122)

(declare-fun res!350409 () Bool)

(declare-fun e!321675 () Bool)

(assert (=> start!51122 (=> (not res!350409) (not e!321675))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51122 (= res!350409 (validMask!0 mask!3119))))

(assert (=> start!51122 e!321675))

(assert (=> start!51122 true))

(declare-datatypes ((array!35130 0))(
  ( (array!35131 (arr!16866 (Array (_ BitVec 32) (_ BitVec 64))) (size!17230 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35130)

(declare-fun array_inv!12640 (array!35130) Bool)

(assert (=> start!51122 (array_inv!12640 a!3118)))

(declare-fun b!558391 () Bool)

(declare-fun e!321673 () Bool)

(declare-fun e!321671 () Bool)

(assert (=> b!558391 (= e!321673 e!321671)))

(declare-fun res!350406 () Bool)

(assert (=> b!558391 (=> (not res!350406) (not e!321671))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun lt!253820 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5322 0))(
  ( (MissingZero!5322 (index!23515 (_ BitVec 32))) (Found!5322 (index!23516 (_ BitVec 32))) (Intermediate!5322 (undefined!6134 Bool) (index!23517 (_ BitVec 32)) (x!52441 (_ BitVec 32))) (Undefined!5322) (MissingVacant!5322 (index!23518 (_ BitVec 32))) )
))
(declare-fun lt!253822 () SeekEntryResult!5322)

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun i!1132 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35130 (_ BitVec 32)) SeekEntryResult!5322)

(assert (=> b!558391 (= res!350406 (= lt!253822 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!253820 (select (store (arr!16866 a!3118) i!1132 k!1914) j!142) (array!35131 (store (arr!16866 a!3118) i!1132 k!1914) (size!17230 a!3118)) mask!3119)))))

(declare-fun lt!253818 () (_ BitVec 32))

(assert (=> b!558391 (= lt!253822 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!253818 (select (arr!16866 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!558391 (= lt!253820 (toIndex!0 (select (store (arr!16866 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!558391 (= lt!253818 (toIndex!0 (select (arr!16866 a!3118) j!142) mask!3119))))

(declare-fun b!558392 () Bool)

(declare-fun res!350411 () Bool)

(assert (=> b!558392 (=> (not res!350411) (not e!321673))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35130 (_ BitVec 32)) Bool)

(assert (=> b!558392 (= res!350411 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!558393 () Bool)

(assert (=> b!558393 (= e!321675 e!321673)))

(declare-fun res!350404 () Bool)

(assert (=> b!558393 (=> (not res!350404) (not e!321673))))

(declare-fun lt!253821 () SeekEntryResult!5322)

(assert (=> b!558393 (= res!350404 (or (= lt!253821 (MissingZero!5322 i!1132)) (= lt!253821 (MissingVacant!5322 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35130 (_ BitVec 32)) SeekEntryResult!5322)

(assert (=> b!558393 (= lt!253821 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun lt!253823 () SeekEntryResult!5322)

(declare-fun b!558394 () Bool)

(declare-fun e!321674 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35130 (_ BitVec 32)) SeekEntryResult!5322)

(assert (=> b!558394 (= e!321674 (= lt!253823 (seekKeyOrZeroReturnVacant!0 (x!52441 lt!253822) (index!23517 lt!253822) (index!23517 lt!253822) (select (arr!16866 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!558395 () Bool)

(declare-fun res!350408 () Bool)

(assert (=> b!558395 (=> (not res!350408) (not e!321675))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!558395 (= res!350408 (validKeyInArray!0 k!1914))))

(declare-fun b!558396 () Bool)

(declare-fun res!350410 () Bool)

(assert (=> b!558396 (=> (not res!350410) (not e!321673))))

(declare-datatypes ((List!10999 0))(
  ( (Nil!10996) (Cons!10995 (h!11989 (_ BitVec 64)) (t!17235 List!10999)) )
))
(declare-fun arrayNoDuplicates!0 (array!35130 (_ BitVec 32) List!10999) Bool)

(assert (=> b!558396 (= res!350410 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10996))))

(declare-fun b!558397 () Bool)

(assert (=> b!558397 (= e!321671 (not (or (undefined!6134 lt!253822) (not (is-Intermediate!5322 lt!253822)) (= (select (arr!16866 a!3118) (index!23517 lt!253822)) (select (arr!16866 a!3118) j!142)) (= (select (arr!16866 a!3118) (index!23517 lt!253822)) #b0000000000000000000000000000000000000000000000000000000000000000) (bvslt mask!3119 #b00000000000000000000000000000000) (and (bvsge (index!23517 lt!253822) #b00000000000000000000000000000000) (bvslt (index!23517 lt!253822) (bvadd #b00000000000000000000000000000001 mask!3119))))))))

(declare-fun e!321676 () Bool)

(assert (=> b!558397 e!321676))

(declare-fun res!350407 () Bool)

(assert (=> b!558397 (=> (not res!350407) (not e!321676))))

(assert (=> b!558397 (= res!350407 (= lt!253823 (Found!5322 j!142)))))

(assert (=> b!558397 (= lt!253823 (seekEntryOrOpen!0 (select (arr!16866 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!558397 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17418 0))(
  ( (Unit!17419) )
))
(declare-fun lt!253819 () Unit!17418)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35130 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17418)

(assert (=> b!558397 (= lt!253819 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!558398 () Bool)

(declare-fun res!350414 () Bool)

(assert (=> b!558398 (=> (not res!350414) (not e!321675))))

(declare-fun arrayContainsKey!0 (array!35130 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!558398 (= res!350414 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!558399 () Bool)

(declare-fun res!350413 () Bool)

(assert (=> b!558399 (=> (not res!350413) (not e!321675))))

(assert (=> b!558399 (= res!350413 (and (= (size!17230 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17230 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17230 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!558400 () Bool)

(declare-fun res!350405 () Bool)

(assert (=> b!558400 (=> (not res!350405) (not e!321675))))

(assert (=> b!558400 (= res!350405 (validKeyInArray!0 (select (arr!16866 a!3118) j!142)))))

(declare-fun b!558401 () Bool)

(assert (=> b!558401 (= e!321676 e!321674)))

(declare-fun res!350412 () Bool)

(assert (=> b!558401 (=> res!350412 e!321674)))

(assert (=> b!558401 (= res!350412 (or (undefined!6134 lt!253822) (not (is-Intermediate!5322 lt!253822)) (= (select (arr!16866 a!3118) (index!23517 lt!253822)) (select (arr!16866 a!3118) j!142)) (= (select (arr!16866 a!3118) (index!23517 lt!253822)) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!51122 res!350409) b!558399))

(assert (= (and b!558399 res!350413) b!558400))

(assert (= (and b!558400 res!350405) b!558395))

(assert (= (and b!558395 res!350408) b!558398))

(assert (= (and b!558398 res!350414) b!558393))

(assert (= (and b!558393 res!350404) b!558392))

(assert (= (and b!558392 res!350411) b!558396))

(assert (= (and b!558396 res!350410) b!558391))

(assert (= (and b!558391 res!350406) b!558397))

(assert (= (and b!558397 res!350407) b!558401))

(assert (= (and b!558401 (not res!350412)) b!558394))

(declare-fun m!536437 () Bool)

(assert (=> start!51122 m!536437))

(declare-fun m!536439 () Bool)

(assert (=> start!51122 m!536439))

(declare-fun m!536441 () Bool)

(assert (=> b!558395 m!536441))

(declare-fun m!536443 () Bool)

(assert (=> b!558394 m!536443))

(assert (=> b!558394 m!536443))

(declare-fun m!536445 () Bool)

(assert (=> b!558394 m!536445))

(assert (=> b!558391 m!536443))

(declare-fun m!536447 () Bool)

(assert (=> b!558391 m!536447))

(assert (=> b!558391 m!536443))

(declare-fun m!536449 () Bool)

(assert (=> b!558391 m!536449))

(assert (=> b!558391 m!536443))

(declare-fun m!536451 () Bool)

(assert (=> b!558391 m!536451))

(assert (=> b!558391 m!536449))

(declare-fun m!536453 () Bool)

(assert (=> b!558391 m!536453))

(declare-fun m!536455 () Bool)

(assert (=> b!558391 m!536455))

(assert (=> b!558391 m!536449))

(declare-fun m!536457 () Bool)

(assert (=> b!558391 m!536457))

(declare-fun m!536459 () Bool)

(assert (=> b!558396 m!536459))

(declare-fun m!536461 () Bool)

(assert (=> b!558401 m!536461))

(assert (=> b!558401 m!536443))

(assert (=> b!558397 m!536443))

(declare-fun m!536463 () Bool)

(assert (=> b!558397 m!536463))

(assert (=> b!558397 m!536461))

(declare-fun m!536465 () Bool)

(assert (=> b!558397 m!536465))

(assert (=> b!558397 m!536443))

(declare-fun m!536467 () Bool)

(assert (=> b!558397 m!536467))

(declare-fun m!536469 () Bool)

(assert (=> b!558393 m!536469))

(declare-fun m!536471 () Bool)

(assert (=> b!558398 m!536471))

(declare-fun m!536473 () Bool)

(assert (=> b!558392 m!536473))

(assert (=> b!558400 m!536443))

(assert (=> b!558400 m!536443))

(declare-fun m!536475 () Bool)

(assert (=> b!558400 m!536475))

(push 1)

(assert (not b!558393))

(assert (not b!558400))

(assert (not b!558396))

(assert (not start!51122))

(assert (not b!558398))

(assert (not b!558395))

(assert (not b!558392))

(assert (not b!558391))

(assert (not b!558397))

(assert (not b!558394))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!83473 () Bool)

(assert (=> d!83473 (= (validKeyInArray!0 (select (arr!16866 a!3118) j!142)) (and (not (= (select (arr!16866 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16866 a!3118) j!142) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!558400 d!83473))

(declare-fun b!558510 () Bool)

(declare-fun e!321737 () SeekEntryResult!5322)

(assert (=> b!558510 (= e!321737 Undefined!5322)))

(declare-fun b!558511 () Bool)

(declare-fun e!321738 () SeekEntryResult!5322)

(assert (=> b!558511 (= e!321738 (MissingVacant!5322 (index!23517 lt!253822)))))

(declare-fun b!558512 () Bool)

(declare-fun e!321739 () SeekEntryResult!5322)

(assert (=> b!558512 (= e!321737 e!321739)))

(declare-fun lt!253880 () (_ BitVec 64))

(declare-fun c!64353 () Bool)

(assert (=> b!558512 (= c!64353 (= lt!253880 (select (arr!16866 a!3118) j!142)))))

(declare-fun b!558513 () Bool)

(declare-fun c!64354 () Bool)

(assert (=> b!558513 (= c!64354 (= lt!253880 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!558513 (= e!321739 e!321738)))

(declare-fun lt!253879 () SeekEntryResult!5322)

(declare-fun d!83475 () Bool)

(assert (=> d!83475 (and (or (is-Undefined!5322 lt!253879) (not (is-Found!5322 lt!253879)) (and (bvsge (index!23516 lt!253879) #b00000000000000000000000000000000) (bvslt (index!23516 lt!253879) (size!17230 a!3118)))) (or (is-Undefined!5322 lt!253879) (is-Found!5322 lt!253879) (not (is-MissingVacant!5322 lt!253879)) (not (= (index!23518 lt!253879) (index!23517 lt!253822))) (and (bvsge (index!23518 lt!253879) #b00000000000000000000000000000000) (bvslt (index!23518 lt!253879) (size!17230 a!3118)))) (or (is-Undefined!5322 lt!253879) (ite (is-Found!5322 lt!253879) (= (select (arr!16866 a!3118) (index!23516 lt!253879)) (select (arr!16866 a!3118) j!142)) (and (is-MissingVacant!5322 lt!253879) (= (index!23518 lt!253879) (index!23517 lt!253822)) (= (select (arr!16866 a!3118) (index!23518 lt!253879)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!83475 (= lt!253879 e!321737)))

(declare-fun c!64355 () Bool)

(assert (=> d!83475 (= c!64355 (bvsge (x!52441 lt!253822) #b01111111111111111111111111111110))))

(assert (=> d!83475 (= lt!253880 (select (arr!16866 a!3118) (index!23517 lt!253822)))))

(assert (=> d!83475 (validMask!0 mask!3119)))

(assert (=> d!83475 (= (seekKeyOrZeroReturnVacant!0 (x!52441 lt!253822) (index!23517 lt!253822) (index!23517 lt!253822) (select (arr!16866 a!3118) j!142) a!3118 mask!3119) lt!253879)))

(declare-fun b!558514 () Bool)

(assert (=> b!558514 (= e!321739 (Found!5322 (index!23517 lt!253822)))))

(declare-fun b!558515 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!558515 (= e!321738 (seekKeyOrZeroReturnVacant!0 (bvadd (x!52441 lt!253822) #b00000000000000000000000000000001) (nextIndex!0 (index!23517 lt!253822) (x!52441 lt!253822) mask!3119) (index!23517 lt!253822) (select (arr!16866 a!3118) j!142) a!3118 mask!3119))))

(assert (= (and d!83475 c!64355) b!558510))

(assert (= (and d!83475 (not c!64355)) b!558512))

(assert (= (and b!558512 c!64353) b!558514))

(assert (= (and b!558512 (not c!64353)) b!558513))

(assert (= (and b!558513 c!64354) b!558511))

(assert (= (and b!558513 (not c!64354)) b!558515))

(declare-fun m!536577 () Bool)

(assert (=> d!83475 m!536577))

(declare-fun m!536579 () Bool)

(assert (=> d!83475 m!536579))

(assert (=> d!83475 m!536461))

(assert (=> d!83475 m!536437))

(declare-fun m!536581 () Bool)

(assert (=> b!558515 m!536581))

(assert (=> b!558515 m!536581))

(assert (=> b!558515 m!536443))

(declare-fun m!536583 () Bool)

(assert (=> b!558515 m!536583))

(assert (=> b!558394 d!83475))

(declare-fun b!558568 () Bool)

(declare-fun e!321768 () SeekEntryResult!5322)

(assert (=> b!558568 (= e!321768 Undefined!5322)))

(declare-fun e!321769 () SeekEntryResult!5322)

(declare-fun lt!253909 () SeekEntryResult!5322)

(declare-fun b!558569 () Bool)

(assert (=> b!558569 (= e!321769 (seekKeyOrZeroReturnVacant!0 (x!52441 lt!253909) (index!23517 lt!253909) (index!23517 lt!253909) k!1914 a!3118 mask!3119))))

(declare-fun b!558570 () Bool)

(assert (=> b!558570 (= e!321769 (MissingZero!5322 (index!23517 lt!253909)))))

(declare-fun d!83481 () Bool)

(declare-fun lt!253908 () SeekEntryResult!5322)

(assert (=> d!83481 (and (or (is-Undefined!5322 lt!253908) (not (is-Found!5322 lt!253908)) (and (bvsge (index!23516 lt!253908) #b00000000000000000000000000000000) (bvslt (index!23516 lt!253908) (size!17230 a!3118)))) (or (is-Undefined!5322 lt!253908) (is-Found!5322 lt!253908) (not (is-MissingZero!5322 lt!253908)) (and (bvsge (index!23515 lt!253908) #b00000000000000000000000000000000) (bvslt (index!23515 lt!253908) (size!17230 a!3118)))) (or (is-Undefined!5322 lt!253908) (is-Found!5322 lt!253908) (is-MissingZero!5322 lt!253908) (not (is-MissingVacant!5322 lt!253908)) (and (bvsge (index!23518 lt!253908) #b00000000000000000000000000000000) (bvslt (index!23518 lt!253908) (size!17230 a!3118)))) (or (is-Undefined!5322 lt!253908) (ite (is-Found!5322 lt!253908) (= (select (arr!16866 a!3118) (index!23516 lt!253908)) k!1914) (ite (is-MissingZero!5322 lt!253908) (= (select (arr!16866 a!3118) (index!23515 lt!253908)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!5322 lt!253908) (= (select (arr!16866 a!3118) (index!23518 lt!253908)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!83481 (= lt!253908 e!321768)))

(declare-fun c!64383 () Bool)

(assert (=> d!83481 (= c!64383 (and (is-Intermediate!5322 lt!253909) (undefined!6134 lt!253909)))))

(assert (=> d!83481 (= lt!253909 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1914 mask!3119) k!1914 a!3118 mask!3119))))

(assert (=> d!83481 (validMask!0 mask!3119)))

(assert (=> d!83481 (= (seekEntryOrOpen!0 k!1914 a!3118 mask!3119) lt!253908)))

(declare-fun b!558571 () Bool)

(declare-fun e!321767 () SeekEntryResult!5322)

(assert (=> b!558571 (= e!321767 (Found!5322 (index!23517 lt!253909)))))

(declare-fun b!558572 () Bool)

(assert (=> b!558572 (= e!321768 e!321767)))

(declare-fun lt!253910 () (_ BitVec 64))

(assert (=> b!558572 (= lt!253910 (select (arr!16866 a!3118) (index!23517 lt!253909)))))

(declare-fun c!64381 () Bool)

(assert (=> b!558572 (= c!64381 (= lt!253910 k!1914))))

(declare-fun b!558573 () Bool)

(declare-fun c!64382 () Bool)

(assert (=> b!558573 (= c!64382 (= lt!253910 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!558573 (= e!321767 e!321769)))

(assert (= (and d!83481 c!64383) b!558568))

(assert (= (and d!83481 (not c!64383)) b!558572))

(assert (= (and b!558572 c!64381) b!558571))

(assert (= (and b!558572 (not c!64381)) b!558573))

(assert (= (and b!558573 c!64382) b!558570))

(assert (= (and b!558573 (not c!64382)) b!558569))

(declare-fun m!536613 () Bool)

(assert (=> b!558569 m!536613))

(declare-fun m!536615 () Bool)

(assert (=> d!83481 m!536615))

(declare-fun m!536617 () Bool)

(assert (=> d!83481 m!536617))

(declare-fun m!536619 () Bool)

(assert (=> d!83481 m!536619))

(assert (=> d!83481 m!536437))

(assert (=> d!83481 m!536617))

(declare-fun m!536621 () Bool)

(assert (=> d!83481 m!536621))

(declare-fun m!536623 () Bool)

(assert (=> d!83481 m!536623))

(declare-fun m!536625 () Bool)

(assert (=> b!558572 m!536625))

(assert (=> b!558393 d!83481))

(declare-fun d!83491 () Bool)

(declare-fun res!350493 () Bool)

(declare-fun e!321774 () Bool)

(assert (=> d!83491 (=> res!350493 e!321774)))

(assert (=> d!83491 (= res!350493 (= (select (arr!16866 a!3118) #b00000000000000000000000000000000) k!1914))))

(assert (=> d!83491 (= (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000) e!321774)))

(declare-fun b!558578 () Bool)

(declare-fun e!321775 () Bool)

(assert (=> b!558578 (= e!321774 e!321775)))

(declare-fun res!350494 () Bool)

(assert (=> b!558578 (=> (not res!350494) (not e!321775))))

(assert (=> b!558578 (= res!350494 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!17230 a!3118)))))

(declare-fun b!558579 () Bool)

(assert (=> b!558579 (= e!321775 (arrayContainsKey!0 a!3118 k!1914 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!83491 (not res!350493)) b!558578))

(assert (= (and b!558578 res!350494) b!558579))

(declare-fun m!536627 () Bool)

(assert (=> d!83491 m!536627))

(declare-fun m!536629 () Bool)

(assert (=> b!558579 m!536629))

(assert (=> b!558398 d!83491))

(declare-fun b!558600 () Bool)

(declare-fun e!321790 () Bool)

(declare-fun e!321789 () Bool)

(assert (=> b!558600 (= e!321790 e!321789)))

(declare-fun lt!253925 () (_ BitVec 64))

(assert (=> b!558600 (= lt!253925 (select (arr!16866 a!3118) #b00000000000000000000000000000000))))

(declare-fun lt!253923 () Unit!17418)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!35130 (_ BitVec 64) (_ BitVec 32)) Unit!17418)

(assert (=> b!558600 (= lt!253923 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!253925 #b00000000000000000000000000000000))))

(assert (=> b!558600 (arrayContainsKey!0 a!3118 lt!253925 #b00000000000000000000000000000000)))

(declare-fun lt!253924 () Unit!17418)

(assert (=> b!558600 (= lt!253924 lt!253923)))

(declare-fun res!350500 () Bool)

(assert (=> b!558600 (= res!350500 (= (seekEntryOrOpen!0 (select (arr!16866 a!3118) #b00000000000000000000000000000000) a!3118 mask!3119) (Found!5322 #b00000000000000000000000000000000)))))

(assert (=> b!558600 (=> (not res!350500) (not e!321789))))

(declare-fun bm!32394 () Bool)

(declare-fun call!32397 () Bool)

(assert (=> bm!32394 (= call!32397 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun b!558601 () Bool)

(declare-fun e!321788 () Bool)

(assert (=> b!558601 (= e!321788 e!321790)))

(declare-fun c!64392 () Bool)

(assert (=> b!558601 (= c!64392 (validKeyInArray!0 (select (arr!16866 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!558602 () Bool)

(assert (=> b!558602 (= e!321789 call!32397)))

(declare-fun b!558603 () Bool)

(assert (=> b!558603 (= e!321790 call!32397)))

(declare-fun d!83493 () Bool)

(declare-fun res!350499 () Bool)

(assert (=> d!83493 (=> res!350499 e!321788)))

(assert (=> d!83493 (= res!350499 (bvsge #b00000000000000000000000000000000 (size!17230 a!3118)))))

(assert (=> d!83493 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119) e!321788)))

(assert (= (and d!83493 (not res!350499)) b!558601))

(assert (= (and b!558601 c!64392) b!558600))

(assert (= (and b!558601 (not c!64392)) b!558603))

(assert (= (and b!558600 res!350500) b!558602))

(assert (= (or b!558602 b!558603) bm!32394))

(assert (=> b!558600 m!536627))

(declare-fun m!536631 () Bool)

(assert (=> b!558600 m!536631))

(declare-fun m!536633 () Bool)

(assert (=> b!558600 m!536633))

(assert (=> b!558600 m!536627))

(declare-fun m!536635 () Bool)

(assert (=> b!558600 m!536635))

(declare-fun m!536637 () Bool)

(assert (=> bm!32394 m!536637))

(assert (=> b!558601 m!536627))

(assert (=> b!558601 m!536627))

(declare-fun m!536639 () Bool)

(assert (=> b!558601 m!536639))

(assert (=> b!558392 d!83493))

(declare-fun b!558610 () Bool)

(declare-fun e!321795 () SeekEntryResult!5322)

(assert (=> b!558610 (= e!321795 Undefined!5322)))

(declare-fun lt!253930 () SeekEntryResult!5322)

(declare-fun b!558611 () Bool)

(declare-fun e!321796 () SeekEntryResult!5322)

(assert (=> b!558611 (= e!321796 (seekKeyOrZeroReturnVacant!0 (x!52441 lt!253930) (index!23517 lt!253930) (index!23517 lt!253930) (select (arr!16866 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!558612 () Bool)

(assert (=> b!558612 (= e!321796 (MissingZero!5322 (index!23517 lt!253930)))))

(declare-fun d!83495 () Bool)

(declare-fun lt!253929 () SeekEntryResult!5322)

(assert (=> d!83495 (and (or (is-Undefined!5322 lt!253929) (not (is-Found!5322 lt!253929)) (and (bvsge (index!23516 lt!253929) #b00000000000000000000000000000000) (bvslt (index!23516 lt!253929) (size!17230 a!3118)))) (or (is-Undefined!5322 lt!253929) (is-Found!5322 lt!253929) (not (is-MissingZero!5322 lt!253929)) (and (bvsge (index!23515 lt!253929) #b00000000000000000000000000000000) (bvslt (index!23515 lt!253929) (size!17230 a!3118)))) (or (is-Undefined!5322 lt!253929) (is-Found!5322 lt!253929) (is-MissingZero!5322 lt!253929) (not (is-MissingVacant!5322 lt!253929)) (and (bvsge (index!23518 lt!253929) #b00000000000000000000000000000000) (bvslt (index!23518 lt!253929) (size!17230 a!3118)))) (or (is-Undefined!5322 lt!253929) (ite (is-Found!5322 lt!253929) (= (select (arr!16866 a!3118) (index!23516 lt!253929)) (select (arr!16866 a!3118) j!142)) (ite (is-MissingZero!5322 lt!253929) (= (select (arr!16866 a!3118) (index!23515 lt!253929)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!5322 lt!253929) (= (select (arr!16866 a!3118) (index!23518 lt!253929)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!83495 (= lt!253929 e!321795)))

(declare-fun c!64398 () Bool)

(assert (=> d!83495 (= c!64398 (and (is-Intermediate!5322 lt!253930) (undefined!6134 lt!253930)))))

(assert (=> d!83495 (= lt!253930 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16866 a!3118) j!142) mask!3119) (select (arr!16866 a!3118) j!142) a!3118 mask!3119))))

(assert (=> d!83495 (validMask!0 mask!3119)))

(assert (=> d!83495 (= (seekEntryOrOpen!0 (select (arr!16866 a!3118) j!142) a!3118 mask!3119) lt!253929)))

(declare-fun b!558613 () Bool)

(declare-fun e!321794 () SeekEntryResult!5322)

(assert (=> b!558613 (= e!321794 (Found!5322 (index!23517 lt!253930)))))

(declare-fun b!558614 () Bool)

(assert (=> b!558614 (= e!321795 e!321794)))

(declare-fun lt!253933 () (_ BitVec 64))

(assert (=> b!558614 (= lt!253933 (select (arr!16866 a!3118) (index!23517 lt!253930)))))

(declare-fun c!64396 () Bool)

(assert (=> b!558614 (= c!64396 (= lt!253933 (select (arr!16866 a!3118) j!142)))))

(declare-fun b!558615 () Bool)

(declare-fun c!64397 () Bool)

(assert (=> b!558615 (= c!64397 (= lt!253933 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!558615 (= e!321794 e!321796)))

(assert (= (and d!83495 c!64398) b!558610))

(assert (= (and d!83495 (not c!64398)) b!558614))

(assert (= (and b!558614 c!64396) b!558613))

(assert (= (and b!558614 (not c!64396)) b!558615))

(assert (= (and b!558615 c!64397) b!558612))

(assert (= (and b!558615 (not c!64397)) b!558611))

(assert (=> b!558611 m!536443))

(declare-fun m!536643 () Bool)

(assert (=> b!558611 m!536643))

(declare-fun m!536647 () Bool)

(assert (=> d!83495 m!536647))

(assert (=> d!83495 m!536447))

(assert (=> d!83495 m!536443))

(declare-fun m!536653 () Bool)

(assert (=> d!83495 m!536653))

(assert (=> d!83495 m!536437))

(assert (=> d!83495 m!536443))

(assert (=> d!83495 m!536447))

(declare-fun m!536659 () Bool)

(assert (=> d!83495 m!536659))

(declare-fun m!536663 () Bool)

(assert (=> d!83495 m!536663))

(declare-fun m!536665 () Bool)

(assert (=> b!558614 m!536665))

(assert (=> b!558397 d!83495))

(declare-fun b!558624 () Bool)

(declare-fun e!321803 () Bool)

(declare-fun e!321802 () Bool)

(assert (=> b!558624 (= e!321803 e!321802)))

(declare-fun lt!253938 () (_ BitVec 64))

(assert (=> b!558624 (= lt!253938 (select (arr!16866 a!3118) j!142))))

(declare-fun lt!253936 () Unit!17418)

(assert (=> b!558624 (= lt!253936 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!253938 j!142))))

(assert (=> b!558624 (arrayContainsKey!0 a!3118 lt!253938 #b00000000000000000000000000000000)))

(declare-fun lt!253937 () Unit!17418)

(assert (=> b!558624 (= lt!253937 lt!253936)))

(declare-fun res!350502 () Bool)

(assert (=> b!558624 (= res!350502 (= (seekEntryOrOpen!0 (select (arr!16866 a!3118) j!142) a!3118 mask!3119) (Found!5322 j!142)))))

(assert (=> b!558624 (=> (not res!350502) (not e!321802))))

(declare-fun bm!32395 () Bool)

(declare-fun call!32398 () Bool)

(assert (=> bm!32395 (= call!32398 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!142 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun b!558625 () Bool)

(declare-fun e!321801 () Bool)

(assert (=> b!558625 (= e!321801 e!321803)))

(declare-fun c!64403 () Bool)

(assert (=> b!558625 (= c!64403 (validKeyInArray!0 (select (arr!16866 a!3118) j!142)))))

(declare-fun b!558626 () Bool)

(assert (=> b!558626 (= e!321802 call!32398)))

(declare-fun b!558627 () Bool)

(assert (=> b!558627 (= e!321803 call!32398)))

(declare-fun d!83499 () Bool)

(declare-fun res!350501 () Bool)

(assert (=> d!83499 (=> res!350501 e!321801)))

(assert (=> d!83499 (= res!350501 (bvsge j!142 (size!17230 a!3118)))))

(assert (=> d!83499 (= (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119) e!321801)))

(assert (= (and d!83499 (not res!350501)) b!558625))

(assert (= (and b!558625 c!64403) b!558624))

(assert (= (and b!558625 (not c!64403)) b!558627))

(assert (= (and b!558624 res!350502) b!558626))

(assert (= (or b!558626 b!558627) bm!32395))

(assert (=> b!558624 m!536443))

(declare-fun m!536667 () Bool)

(assert (=> b!558624 m!536667))

(declare-fun m!536669 () Bool)

(assert (=> b!558624 m!536669))

(assert (=> b!558624 m!536443))

(assert (=> b!558624 m!536467))

(declare-fun m!536671 () Bool)

(assert (=> bm!32395 m!536671))

(assert (=> b!558625 m!536443))

(assert (=> b!558625 m!536443))

(assert (=> b!558625 m!536475))

(assert (=> b!558397 d!83499))

(declare-fun d!83501 () Bool)

(assert (=> d!83501 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-fun lt!253943 () Unit!17418)

(declare-fun choose!38 (array!35130 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17418)

(assert (=> d!83501 (= lt!253943 (choose!38 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(assert (=> d!83501 (validMask!0 mask!3119)))

(assert (=> d!83501 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142) lt!253943)))

(declare-fun bs!17383 () Bool)

(assert (= bs!17383 d!83501))

(assert (=> bs!17383 m!536463))

(declare-fun m!536673 () Bool)

(assert (=> bs!17383 m!536673))

(assert (=> bs!17383 m!536437))

(assert (=> b!558397 d!83501))

(declare-fun b!558725 () Bool)

(declare-fun lt!253966 () SeekEntryResult!5322)

(assert (=> b!558725 (and (bvsge (index!23517 lt!253966) #b00000000000000000000000000000000) (bvslt (index!23517 lt!253966) (size!17230 (array!35131 (store (arr!16866 a!3118) i!1132 k!1914) (size!17230 a!3118)))))))

(declare-fun res!350545 () Bool)

(assert (=> b!558725 (= res!350545 (= (select (arr!16866 (array!35131 (store (arr!16866 a!3118) i!1132 k!1914) (size!17230 a!3118))) (index!23517 lt!253966)) (select (store (arr!16866 a!3118) i!1132 k!1914) j!142)))))

(declare-fun e!321865 () Bool)

(assert (=> b!558725 (=> res!350545 e!321865)))

(declare-fun e!321864 () Bool)

(assert (=> b!558725 (= e!321864 e!321865)))

(declare-fun b!558726 () Bool)

(declare-fun e!321862 () SeekEntryResult!5322)

(assert (=> b!558726 (= e!321862 (Intermediate!5322 true lt!253820 #b00000000000000000000000000000000))))

(declare-fun b!558727 () Bool)

(declare-fun e!321866 () SeekEntryResult!5322)

(assert (=> b!558727 (= e!321866 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!253820 #b00000000000000000000000000000000 mask!3119) (select (store (arr!16866 a!3118) i!1132 k!1914) j!142) (array!35131 (store (arr!16866 a!3118) i!1132 k!1914) (size!17230 a!3118)) mask!3119))))

(declare-fun b!558728 () Bool)

(declare-fun e!321863 () Bool)

(assert (=> b!558728 (= e!321863 (bvsge (x!52441 lt!253966) #b01111111111111111111111111111110))))

(declare-fun b!558729 () Bool)

(assert (=> b!558729 (= e!321866 (Intermediate!5322 false lt!253820 #b00000000000000000000000000000000))))

(declare-fun d!83505 () Bool)

(assert (=> d!83505 e!321863))

(declare-fun c!64433 () Bool)

(assert (=> d!83505 (= c!64433 (and (is-Intermediate!5322 lt!253966) (undefined!6134 lt!253966)))))

(assert (=> d!83505 (= lt!253966 e!321862)))

(declare-fun c!64435 () Bool)

(assert (=> d!83505 (= c!64435 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!253967 () (_ BitVec 64))

(assert (=> d!83505 (= lt!253967 (select (arr!16866 (array!35131 (store (arr!16866 a!3118) i!1132 k!1914) (size!17230 a!3118))) lt!253820))))

(assert (=> d!83505 (validMask!0 mask!3119)))

(assert (=> d!83505 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!253820 (select (store (arr!16866 a!3118) i!1132 k!1914) j!142) (array!35131 (store (arr!16866 a!3118) i!1132 k!1914) (size!17230 a!3118)) mask!3119) lt!253966)))

(declare-fun b!558730 () Bool)

(assert (=> b!558730 (and (bvsge (index!23517 lt!253966) #b00000000000000000000000000000000) (bvslt (index!23517 lt!253966) (size!17230 (array!35131 (store (arr!16866 a!3118) i!1132 k!1914) (size!17230 a!3118)))))))

(declare-fun res!350546 () Bool)

(assert (=> b!558730 (= res!350546 (= (select (arr!16866 (array!35131 (store (arr!16866 a!3118) i!1132 k!1914) (size!17230 a!3118))) (index!23517 lt!253966)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!558730 (=> res!350546 e!321865)))

(declare-fun b!558731 () Bool)

(assert (=> b!558731 (= e!321862 e!321866)))

(declare-fun c!64434 () Bool)

(assert (=> b!558731 (= c!64434 (or (= lt!253967 (select (store (arr!16866 a!3118) i!1132 k!1914) j!142)) (= (bvadd lt!253967 lt!253967) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!558732 () Bool)

(assert (=> b!558732 (and (bvsge (index!23517 lt!253966) #b00000000000000000000000000000000) (bvslt (index!23517 lt!253966) (size!17230 (array!35131 (store (arr!16866 a!3118) i!1132 k!1914) (size!17230 a!3118)))))))

(assert (=> b!558732 (= e!321865 (= (select (arr!16866 (array!35131 (store (arr!16866 a!3118) i!1132 k!1914) (size!17230 a!3118))) (index!23517 lt!253966)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!558733 () Bool)

(assert (=> b!558733 (= e!321863 e!321864)))

(declare-fun res!350544 () Bool)

(assert (=> b!558733 (= res!350544 (and (is-Intermediate!5322 lt!253966) (not (undefined!6134 lt!253966)) (bvslt (x!52441 lt!253966) #b01111111111111111111111111111110) (bvsge (x!52441 lt!253966) #b00000000000000000000000000000000) (bvsge (x!52441 lt!253966) #b00000000000000000000000000000000)))))

(assert (=> b!558733 (=> (not res!350544) (not e!321864))))

(assert (= (and d!83505 c!64435) b!558726))

(assert (= (and d!83505 (not c!64435)) b!558731))

(assert (= (and b!558731 c!64434) b!558729))

(assert (= (and b!558731 (not c!64434)) b!558727))

(assert (= (and d!83505 c!64433) b!558728))

(assert (= (and d!83505 (not c!64433)) b!558733))

(assert (= (and b!558733 res!350544) b!558725))

(assert (= (and b!558725 (not res!350545)) b!558730))

(assert (= (and b!558730 (not res!350546)) b!558732))

(declare-fun m!536711 () Bool)

(assert (=> b!558727 m!536711))

(assert (=> b!558727 m!536711))

(assert (=> b!558727 m!536449))

(declare-fun m!536713 () Bool)

(assert (=> b!558727 m!536713))

(declare-fun m!536715 () Bool)

(assert (=> b!558730 m!536715))

(declare-fun m!536717 () Bool)

(assert (=> d!83505 m!536717))

(assert (=> d!83505 m!536437))

(assert (=> b!558732 m!536715))

(assert (=> b!558725 m!536715))

(assert (=> b!558391 d!83505))

(declare-fun b!558734 () Bool)

(declare-fun lt!253968 () SeekEntryResult!5322)

(assert (=> b!558734 (and (bvsge (index!23517 lt!253968) #b00000000000000000000000000000000) (bvslt (index!23517 lt!253968) (size!17230 a!3118)))))

(declare-fun res!350548 () Bool)

(assert (=> b!558734 (= res!350548 (= (select (arr!16866 a!3118) (index!23517 lt!253968)) (select (arr!16866 a!3118) j!142)))))

(declare-fun e!321870 () Bool)

(assert (=> b!558734 (=> res!350548 e!321870)))

(declare-fun e!321869 () Bool)

(assert (=> b!558734 (= e!321869 e!321870)))

(declare-fun b!558735 () Bool)

(declare-fun e!321867 () SeekEntryResult!5322)

(assert (=> b!558735 (= e!321867 (Intermediate!5322 true lt!253818 #b00000000000000000000000000000000))))

(declare-fun e!321871 () SeekEntryResult!5322)

(declare-fun b!558736 () Bool)

(assert (=> b!558736 (= e!321871 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!253818 #b00000000000000000000000000000000 mask!3119) (select (arr!16866 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!558737 () Bool)

(declare-fun e!321868 () Bool)

(assert (=> b!558737 (= e!321868 (bvsge (x!52441 lt!253968) #b01111111111111111111111111111110))))

(declare-fun b!558738 () Bool)

(assert (=> b!558738 (= e!321871 (Intermediate!5322 false lt!253818 #b00000000000000000000000000000000))))

(declare-fun d!83523 () Bool)

(assert (=> d!83523 e!321868))

(declare-fun c!64436 () Bool)

(assert (=> d!83523 (= c!64436 (and (is-Intermediate!5322 lt!253968) (undefined!6134 lt!253968)))))

(assert (=> d!83523 (= lt!253968 e!321867)))

(declare-fun c!64438 () Bool)

(assert (=> d!83523 (= c!64438 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!253969 () (_ BitVec 64))

(assert (=> d!83523 (= lt!253969 (select (arr!16866 a!3118) lt!253818))))

(assert (=> d!83523 (validMask!0 mask!3119)))

(assert (=> d!83523 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!253818 (select (arr!16866 a!3118) j!142) a!3118 mask!3119) lt!253968)))

(declare-fun b!558739 () Bool)

(assert (=> b!558739 (and (bvsge (index!23517 lt!253968) #b00000000000000000000000000000000) (bvslt (index!23517 lt!253968) (size!17230 a!3118)))))

(declare-fun res!350549 () Bool)

(assert (=> b!558739 (= res!350549 (= (select (arr!16866 a!3118) (index!23517 lt!253968)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!558739 (=> res!350549 e!321870)))

(declare-fun b!558740 () Bool)

(assert (=> b!558740 (= e!321867 e!321871)))

(declare-fun c!64437 () Bool)

(assert (=> b!558740 (= c!64437 (or (= lt!253969 (select (arr!16866 a!3118) j!142)) (= (bvadd lt!253969 lt!253969) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!558741 () Bool)

(assert (=> b!558741 (and (bvsge (index!23517 lt!253968) #b00000000000000000000000000000000) (bvslt (index!23517 lt!253968) (size!17230 a!3118)))))

(assert (=> b!558741 (= e!321870 (= (select (arr!16866 a!3118) (index!23517 lt!253968)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!558742 () Bool)

(assert (=> b!558742 (= e!321868 e!321869)))

(declare-fun res!350547 () Bool)

(assert (=> b!558742 (= res!350547 (and (is-Intermediate!5322 lt!253968) (not (undefined!6134 lt!253968)) (bvslt (x!52441 lt!253968) #b01111111111111111111111111111110) (bvsge (x!52441 lt!253968) #b00000000000000000000000000000000) (bvsge (x!52441 lt!253968) #b00000000000000000000000000000000)))))

(assert (=> b!558742 (=> (not res!350547) (not e!321869))))

(assert (= (and d!83523 c!64438) b!558735))

(assert (= (and d!83523 (not c!64438)) b!558740))

(assert (= (and b!558740 c!64437) b!558738))

(assert (= (and b!558740 (not c!64437)) b!558736))

(assert (= (and d!83523 c!64436) b!558737))

(assert (= (and d!83523 (not c!64436)) b!558742))

(assert (= (and b!558742 res!350547) b!558734))

(assert (= (and b!558734 (not res!350548)) b!558739))

(assert (= (and b!558739 (not res!350549)) b!558741))

(declare-fun m!536719 () Bool)

(assert (=> b!558736 m!536719))

(assert (=> b!558736 m!536719))

(assert (=> b!558736 m!536443))

(declare-fun m!536721 () Bool)

(assert (=> b!558736 m!536721))

(declare-fun m!536723 () Bool)

(assert (=> b!558739 m!536723))

(declare-fun m!536725 () Bool)

(assert (=> d!83523 m!536725))

(assert (=> d!83523 m!536437))

(assert (=> b!558741 m!536723))

(assert (=> b!558734 m!536723))

(assert (=> b!558391 d!83523))

(declare-fun d!83525 () Bool)

(declare-fun lt!253989 () (_ BitVec 32))

(declare-fun lt!253988 () (_ BitVec 32))

(assert (=> d!83525 (= lt!253989 (bvmul (bvxor lt!253988 (bvlshr lt!253988 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!83525 (= lt!253988 ((_ extract 31 0) (bvand (bvxor (select (store (arr!16866 a!3118) i!1132 k!1914) j!142) (bvlshr (select (store (arr!16866 a!3118) i!1132 k!1914) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!83525 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!350550 (let ((h!11994 ((_ extract 31 0) (bvand (bvxor (select (store (arr!16866 a!3118) i!1132 k!1914) j!142) (bvlshr (select (store (arr!16866 a!3118) i!1132 k!1914) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!52452 (bvmul (bvxor h!11994 (bvlshr h!11994 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!52452 (bvlshr x!52452 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!350550 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!350550 #b00000000000000000000000000000000))))))

(assert (=> d!83525 (= (toIndex!0 (select (store (arr!16866 a!3118) i!1132 k!1914) j!142) mask!3119) (bvand (bvxor lt!253989 (bvlshr lt!253989 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!558391 d!83525))

(declare-fun d!83537 () Bool)

(declare-fun lt!253991 () (_ BitVec 32))

(declare-fun lt!253990 () (_ BitVec 32))

(assert (=> d!83537 (= lt!253991 (bvmul (bvxor lt!253990 (bvlshr lt!253990 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!83537 (= lt!253990 ((_ extract 31 0) (bvand (bvxor (select (arr!16866 a!3118) j!142) (bvlshr (select (arr!16866 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!83537 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!350550 (let ((h!11994 ((_ extract 31 0) (bvand (bvxor (select (arr!16866 a!3118) j!142) (bvlshr (select (arr!16866 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!52452 (bvmul (bvxor h!11994 (bvlshr h!11994 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!52452 (bvlshr x!52452 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!350550 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!350550 #b00000000000000000000000000000000))))))

(assert (=> d!83537 (= (toIndex!0 (select (arr!16866 a!3118) j!142) mask!3119) (bvand (bvxor lt!253991 (bvlshr lt!253991 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!558391 d!83537))

(declare-fun bm!32403 () Bool)

(declare-fun call!32406 () Bool)

(declare-fun c!64449 () Bool)

(assert (=> bm!32403 (= call!32406 (arrayNoDuplicates!0 a!3118 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!64449 (Cons!10995 (select (arr!16866 a!3118) #b00000000000000000000000000000000) Nil!10996) Nil!10996)))))

(declare-fun b!558779 () Bool)

(declare-fun e!321898 () Bool)

(assert (=> b!558779 (= e!321898 call!32406)))

(declare-fun b!558780 () Bool)

(declare-fun e!321899 () Bool)

(declare-fun e!321900 () Bool)

(assert (=> b!558780 (= e!321899 e!321900)))

(declare-fun res!350568 () Bool)

(assert (=> b!558780 (=> (not res!350568) (not e!321900))))

(declare-fun e!321901 () Bool)

(assert (=> b!558780 (= res!350568 (not e!321901))))

(declare-fun res!350569 () Bool)

(assert (=> b!558780 (=> (not res!350569) (not e!321901))))

(assert (=> b!558780 (= res!350569 (validKeyInArray!0 (select (arr!16866 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!558781 () Bool)

(declare-fun contains!2858 (List!10999 (_ BitVec 64)) Bool)

(assert (=> b!558781 (= e!321901 (contains!2858 Nil!10996 (select (arr!16866 a!3118) #b00000000000000000000000000000000)))))

(declare-fun d!83543 () Bool)

(declare-fun res!350567 () Bool)

(assert (=> d!83543 (=> res!350567 e!321899)))

(assert (=> d!83543 (= res!350567 (bvsge #b00000000000000000000000000000000 (size!17230 a!3118)))))

(assert (=> d!83543 (= (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10996) e!321899)))

(declare-fun b!558782 () Bool)

(assert (=> b!558782 (= e!321898 call!32406)))

(declare-fun b!558783 () Bool)

(assert (=> b!558783 (= e!321900 e!321898)))

(assert (=> b!558783 (= c!64449 (validKeyInArray!0 (select (arr!16866 a!3118) #b00000000000000000000000000000000)))))

(assert (= (and d!83543 (not res!350567)) b!558780))

(assert (= (and b!558780 res!350569) b!558781))

(assert (= (and b!558780 res!350568) b!558783))

(assert (= (and b!558783 c!64449) b!558779))

(assert (= (and b!558783 (not c!64449)) b!558782))

(assert (= (or b!558779 b!558782) bm!32403))

(assert (=> bm!32403 m!536627))

(declare-fun m!536755 () Bool)

(assert (=> bm!32403 m!536755))

(assert (=> b!558780 m!536627))

(assert (=> b!558780 m!536627))

(assert (=> b!558780 m!536639))

(assert (=> b!558781 m!536627))

(assert (=> b!558781 m!536627))

(declare-fun m!536757 () Bool)

(assert (=> b!558781 m!536757))

(assert (=> b!558783 m!536627))

(assert (=> b!558783 m!536627))

(assert (=> b!558783 m!536639))

(assert (=> b!558396 d!83543))

(declare-fun d!83545 () Bool)

(assert (=> d!83545 (= (validKeyInArray!0 k!1914) (and (not (= k!1914 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1914 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!558395 d!83545))

(declare-fun d!83547 () Bool)

(assert (=> d!83547 (= (validMask!0 mask!3119) (and (or (= mask!3119 #b00000000000000000000000000000111) (= mask!3119 #b00000000000000000000000000001111) (= mask!3119 #b00000000000000000000000000011111) (= mask!3119 #b00000000000000000000000000111111) (= mask!3119 #b00000000000000000000000001111111) (= mask!3119 #b00000000000000000000000011111111) (= mask!3119 #b00000000000000000000000111111111) (= mask!3119 #b00000000000000000000001111111111) (= mask!3119 #b00000000000000000000011111111111) (= mask!3119 #b00000000000000000000111111111111) (= mask!3119 #b00000000000000000001111111111111) (= mask!3119 #b00000000000000000011111111111111) (= mask!3119 #b00000000000000000111111111111111) (= mask!3119 #b00000000000000001111111111111111) (= mask!3119 #b00000000000000011111111111111111) (= mask!3119 #b00000000000000111111111111111111) (= mask!3119 #b00000000000001111111111111111111) (= mask!3119 #b00000000000011111111111111111111) (= mask!3119 #b00000000000111111111111111111111) (= mask!3119 #b00000000001111111111111111111111) (= mask!3119 #b00000000011111111111111111111111) (= mask!3119 #b00000000111111111111111111111111) (= mask!3119 #b00000001111111111111111111111111) (= mask!3119 #b00000011111111111111111111111111) (= mask!3119 #b00000111111111111111111111111111) (= mask!3119 #b00001111111111111111111111111111) (= mask!3119 #b00011111111111111111111111111111) (= mask!3119 #b00111111111111111111111111111111)) (bvsle mask!3119 #b00111111111111111111111111111111)))))

(assert (=> start!51122 d!83547))

(declare-fun d!83555 () Bool)

(assert (=> d!83555 (= (array_inv!12640 a!3118) (bvsge (size!17230 a!3118) #b00000000000000000000000000000000))))

(assert (=> start!51122 d!83555))

(push 1)

(assert (not b!558600))

(assert (not b!558569))

(assert (not b!558601))

(assert (not b!558515))

(assert (not d!83523))

(assert (not d!83475))

(assert (not b!558736))

(assert (not b!558780))

(assert (not b!558781))

(assert (not b!558624))

(assert (not b!558611))

(assert (not b!558783))

(assert (not bm!32394))

(assert (not bm!32395))

(assert (not d!83501))

(assert (not b!558727))

(assert (not bm!32403))

(assert (not d!83481))

(assert (not d!83495))

(assert (not b!558579))

(assert (not b!558625))

(assert (not d!83505))

(check-sat)

(pop 1)

(push 1)

(check-sat)

