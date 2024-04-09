; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51126 () Bool)

(assert start!51126)

(declare-fun b!558457 () Bool)

(declare-fun res!350472 () Bool)

(declare-fun e!321708 () Bool)

(assert (=> b!558457 (=> (not res!350472) (not e!321708))))

(declare-datatypes ((array!35134 0))(
  ( (array!35135 (arr!16868 (Array (_ BitVec 32) (_ BitVec 64))) (size!17232 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35134)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35134 (_ BitVec 32)) Bool)

(assert (=> b!558457 (= res!350472 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!558458 () Bool)

(declare-fun e!321712 () Bool)

(declare-fun e!321707 () Bool)

(assert (=> b!558458 (= e!321712 e!321707)))

(declare-fun res!350476 () Bool)

(assert (=> b!558458 (=> res!350476 e!321707)))

(declare-fun j!142 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5324 0))(
  ( (MissingZero!5324 (index!23523 (_ BitVec 32))) (Found!5324 (index!23524 (_ BitVec 32))) (Intermediate!5324 (undefined!6136 Bool) (index!23525 (_ BitVec 32)) (x!52443 (_ BitVec 32))) (Undefined!5324) (MissingVacant!5324 (index!23526 (_ BitVec 32))) )
))
(declare-fun lt!253854 () SeekEntryResult!5324)

(assert (=> b!558458 (= res!350476 (or (undefined!6136 lt!253854) (not (is-Intermediate!5324 lt!253854)) (= (select (arr!16868 a!3118) (index!23525 lt!253854)) (select (arr!16868 a!3118) j!142)) (= (select (arr!16868 a!3118) (index!23525 lt!253854)) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!558459 () Bool)

(declare-fun res!350473 () Bool)

(declare-fun e!321711 () Bool)

(assert (=> b!558459 (=> (not res!350473) (not e!321711))))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!558459 (= res!350473 (and (= (size!17232 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17232 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17232 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!558460 () Bool)

(assert (=> b!558460 (= e!321711 e!321708)))

(declare-fun res!350474 () Bool)

(assert (=> b!558460 (=> (not res!350474) (not e!321708))))

(declare-fun lt!253855 () SeekEntryResult!5324)

(assert (=> b!558460 (= res!350474 (or (= lt!253855 (MissingZero!5324 i!1132)) (= lt!253855 (MissingVacant!5324 i!1132))))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35134 (_ BitVec 32)) SeekEntryResult!5324)

(assert (=> b!558460 (= lt!253855 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!558462 () Bool)

(declare-fun res!350471 () Bool)

(assert (=> b!558462 (=> (not res!350471) (not e!321711))))

(declare-fun arrayContainsKey!0 (array!35134 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!558462 (= res!350471 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun e!321710 () Bool)

(declare-fun b!558463 () Bool)

(assert (=> b!558463 (= e!321710 (not (or (undefined!6136 lt!253854) (not (is-Intermediate!5324 lt!253854)) (= (select (arr!16868 a!3118) (index!23525 lt!253854)) (select (arr!16868 a!3118) j!142)) (= (select (arr!16868 a!3118) (index!23525 lt!253854)) #b0000000000000000000000000000000000000000000000000000000000000000) (bvslt mask!3119 #b00000000000000000000000000000000) (and (bvsge (index!23525 lt!253854) #b00000000000000000000000000000000) (bvslt (index!23525 lt!253854) (bvadd #b00000000000000000000000000000001 mask!3119))))))))

(assert (=> b!558463 e!321712))

(declare-fun res!350478 () Bool)

(assert (=> b!558463 (=> (not res!350478) (not e!321712))))

(declare-fun lt!253859 () SeekEntryResult!5324)

(assert (=> b!558463 (= res!350478 (= lt!253859 (Found!5324 j!142)))))

(assert (=> b!558463 (= lt!253859 (seekEntryOrOpen!0 (select (arr!16868 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!558463 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17422 0))(
  ( (Unit!17423) )
))
(declare-fun lt!253857 () Unit!17422)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35134 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17422)

(assert (=> b!558463 (= lt!253857 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!558464 () Bool)

(assert (=> b!558464 (= e!321708 e!321710)))

(declare-fun res!350479 () Bool)

(assert (=> b!558464 (=> (not res!350479) (not e!321710))))

(declare-fun lt!253856 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35134 (_ BitVec 32)) SeekEntryResult!5324)

(assert (=> b!558464 (= res!350479 (= lt!253854 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!253856 (select (store (arr!16868 a!3118) i!1132 k!1914) j!142) (array!35135 (store (arr!16868 a!3118) i!1132 k!1914) (size!17232 a!3118)) mask!3119)))))

(declare-fun lt!253858 () (_ BitVec 32))

(assert (=> b!558464 (= lt!253854 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!253858 (select (arr!16868 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!558464 (= lt!253856 (toIndex!0 (select (store (arr!16868 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!558464 (= lt!253858 (toIndex!0 (select (arr!16868 a!3118) j!142) mask!3119))))

(declare-fun b!558465 () Bool)

(declare-fun res!350480 () Bool)

(assert (=> b!558465 (=> (not res!350480) (not e!321711))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!558465 (= res!350480 (validKeyInArray!0 k!1914))))

(declare-fun res!350470 () Bool)

(assert (=> start!51126 (=> (not res!350470) (not e!321711))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51126 (= res!350470 (validMask!0 mask!3119))))

(assert (=> start!51126 e!321711))

(assert (=> start!51126 true))

(declare-fun array_inv!12642 (array!35134) Bool)

(assert (=> start!51126 (array_inv!12642 a!3118)))

(declare-fun b!558461 () Bool)

(declare-fun res!350477 () Bool)

(assert (=> b!558461 (=> (not res!350477) (not e!321708))))

(declare-datatypes ((List!11001 0))(
  ( (Nil!10998) (Cons!10997 (h!11991 (_ BitVec 64)) (t!17237 List!11001)) )
))
(declare-fun arrayNoDuplicates!0 (array!35134 (_ BitVec 32) List!11001) Bool)

(assert (=> b!558461 (= res!350477 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10998))))

(declare-fun b!558466 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35134 (_ BitVec 32)) SeekEntryResult!5324)

(assert (=> b!558466 (= e!321707 (= lt!253859 (seekKeyOrZeroReturnVacant!0 (x!52443 lt!253854) (index!23525 lt!253854) (index!23525 lt!253854) (select (arr!16868 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!558467 () Bool)

(declare-fun res!350475 () Bool)

(assert (=> b!558467 (=> (not res!350475) (not e!321711))))

(assert (=> b!558467 (= res!350475 (validKeyInArray!0 (select (arr!16868 a!3118) j!142)))))

(assert (= (and start!51126 res!350470) b!558459))

(assert (= (and b!558459 res!350473) b!558467))

(assert (= (and b!558467 res!350475) b!558465))

(assert (= (and b!558465 res!350480) b!558462))

(assert (= (and b!558462 res!350471) b!558460))

(assert (= (and b!558460 res!350474) b!558457))

(assert (= (and b!558457 res!350472) b!558461))

(assert (= (and b!558461 res!350477) b!558464))

(assert (= (and b!558464 res!350479) b!558463))

(assert (= (and b!558463 res!350478) b!558458))

(assert (= (and b!558458 (not res!350476)) b!558466))

(declare-fun m!536517 () Bool)

(assert (=> b!558461 m!536517))

(declare-fun m!536519 () Bool)

(assert (=> b!558464 m!536519))

(declare-fun m!536521 () Bool)

(assert (=> b!558464 m!536521))

(assert (=> b!558464 m!536519))

(declare-fun m!536523 () Bool)

(assert (=> b!558464 m!536523))

(assert (=> b!558464 m!536523))

(declare-fun m!536525 () Bool)

(assert (=> b!558464 m!536525))

(declare-fun m!536527 () Bool)

(assert (=> b!558464 m!536527))

(assert (=> b!558464 m!536519))

(declare-fun m!536529 () Bool)

(assert (=> b!558464 m!536529))

(assert (=> b!558464 m!536523))

(declare-fun m!536531 () Bool)

(assert (=> b!558464 m!536531))

(declare-fun m!536533 () Bool)

(assert (=> b!558465 m!536533))

(assert (=> b!558467 m!536519))

(assert (=> b!558467 m!536519))

(declare-fun m!536535 () Bool)

(assert (=> b!558467 m!536535))

(declare-fun m!536537 () Bool)

(assert (=> b!558457 m!536537))

(assert (=> b!558463 m!536519))

(declare-fun m!536539 () Bool)

(assert (=> b!558463 m!536539))

(declare-fun m!536541 () Bool)

(assert (=> b!558463 m!536541))

(declare-fun m!536543 () Bool)

(assert (=> b!558463 m!536543))

(assert (=> b!558463 m!536519))

(declare-fun m!536545 () Bool)

(assert (=> b!558463 m!536545))

(declare-fun m!536547 () Bool)

(assert (=> b!558460 m!536547))

(declare-fun m!536549 () Bool)

(assert (=> start!51126 m!536549))

(declare-fun m!536551 () Bool)

(assert (=> start!51126 m!536551))

(declare-fun m!536553 () Bool)

(assert (=> b!558462 m!536553))

(assert (=> b!558466 m!536519))

(assert (=> b!558466 m!536519))

(declare-fun m!536555 () Bool)

(assert (=> b!558466 m!536555))

(assert (=> b!558458 m!536541))

(assert (=> b!558458 m!536519))

(push 1)

(assert (not b!558461))

(assert (not b!558457))

(assert (not b!558467))

(assert (not b!558463))

(assert (not b!558464))

(assert (not b!558460))

(assert (not b!558466))

(assert (not start!51126))

(assert (not b!558465))

(assert (not b!558462))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!558540 () Bool)

(declare-fun e!321753 () SeekEntryResult!5324)

(declare-fun e!321754 () SeekEntryResult!5324)

(assert (=> b!558540 (= e!321753 e!321754)))

(declare-fun lt!253892 () (_ BitVec 64))

(declare-fun c!64370 () Bool)

(assert (=> b!558540 (= c!64370 (= lt!253892 (select (arr!16868 a!3118) j!142)))))

(declare-fun b!558541 () Bool)

(declare-fun e!321752 () SeekEntryResult!5324)

(assert (=> b!558541 (= e!321752 (MissingVacant!5324 (index!23525 lt!253854)))))

(declare-fun b!558542 () Bool)

(declare-fun c!64368 () Bool)

(assert (=> b!558542 (= c!64368 (= lt!253892 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!558542 (= e!321754 e!321752)))

(declare-fun lt!253891 () SeekEntryResult!5324)

(declare-fun d!83479 () Bool)

(assert (=> d!83479 (and (or (is-Undefined!5324 lt!253891) (not (is-Found!5324 lt!253891)) (and (bvsge (index!23524 lt!253891) #b00000000000000000000000000000000) (bvslt (index!23524 lt!253891) (size!17232 a!3118)))) (or (is-Undefined!5324 lt!253891) (is-Found!5324 lt!253891) (not (is-MissingVacant!5324 lt!253891)) (not (= (index!23526 lt!253891) (index!23525 lt!253854))) (and (bvsge (index!23526 lt!253891) #b00000000000000000000000000000000) (bvslt (index!23526 lt!253891) (size!17232 a!3118)))) (or (is-Undefined!5324 lt!253891) (ite (is-Found!5324 lt!253891) (= (select (arr!16868 a!3118) (index!23524 lt!253891)) (select (arr!16868 a!3118) j!142)) (and (is-MissingVacant!5324 lt!253891) (= (index!23526 lt!253891) (index!23525 lt!253854)) (= (select (arr!16868 a!3118) (index!23526 lt!253891)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!83479 (= lt!253891 e!321753)))

(declare-fun c!64369 () Bool)

(assert (=> d!83479 (= c!64369 (bvsge (x!52443 lt!253854) #b01111111111111111111111111111110))))

(assert (=> d!83479 (= lt!253892 (select (arr!16868 a!3118) (index!23525 lt!253854)))))

(assert (=> d!83479 (validMask!0 mask!3119)))

(assert (=> d!83479 (= (seekKeyOrZeroReturnVacant!0 (x!52443 lt!253854) (index!23525 lt!253854) (index!23525 lt!253854) (select (arr!16868 a!3118) j!142) a!3118 mask!3119) lt!253891)))

(declare-fun b!558543 () Bool)

(assert (=> b!558543 (= e!321754 (Found!5324 (index!23525 lt!253854)))))

(declare-fun b!558544 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!558544 (= e!321752 (seekKeyOrZeroReturnVacant!0 (bvadd (x!52443 lt!253854) #b00000000000000000000000000000001) (nextIndex!0 (index!23525 lt!253854) (x!52443 lt!253854) mask!3119) (index!23525 lt!253854) (select (arr!16868 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!558545 () Bool)

(assert (=> b!558545 (= e!321753 Undefined!5324)))

(assert (= (and d!83479 c!64369) b!558545))

(assert (= (and d!83479 (not c!64369)) b!558540))

(assert (= (and b!558540 c!64370) b!558543))

(assert (= (and b!558540 (not c!64370)) b!558542))

(assert (= (and b!558542 c!64368) b!558541))

(assert (= (and b!558542 (not c!64368)) b!558544))

(declare-fun m!536585 () Bool)

(assert (=> d!83479 m!536585))

(declare-fun m!536587 () Bool)

(assert (=> d!83479 m!536587))

(assert (=> d!83479 m!536541))

(assert (=> d!83479 m!536549))

(declare-fun m!536589 () Bool)

(assert (=> b!558544 m!536589))

(assert (=> b!558544 m!536589))

(assert (=> b!558544 m!536519))

(declare-fun m!536591 () Bool)

(assert (=> b!558544 m!536591))

(assert (=> b!558466 d!83479))

(declare-fun b!558604 () Bool)

(declare-fun e!321793 () SeekEntryResult!5324)

(declare-fun e!321791 () SeekEntryResult!5324)

(assert (=> b!558604 (= e!321793 e!321791)))

(declare-fun lt!253927 () (_ BitVec 64))

(declare-fun lt!253926 () SeekEntryResult!5324)

(assert (=> b!558604 (= lt!253927 (select (arr!16868 a!3118) (index!23525 lt!253926)))))

(declare-fun c!64393 () Bool)

(assert (=> b!558604 (= c!64393 (= lt!253927 k!1914))))

(declare-fun b!558605 () Bool)

(assert (=> b!558605 (= e!321793 Undefined!5324)))

(declare-fun b!558606 () Bool)

(assert (=> b!558606 (= e!321791 (Found!5324 (index!23525 lt!253926)))))

(declare-fun e!321792 () SeekEntryResult!5324)

(declare-fun b!558608 () Bool)

(assert (=> b!558608 (= e!321792 (seekKeyOrZeroReturnVacant!0 (x!52443 lt!253926) (index!23525 lt!253926) (index!23525 lt!253926) k!1914 a!3118 mask!3119))))

(declare-fun b!558609 () Bool)

(declare-fun c!64394 () Bool)

(assert (=> b!558609 (= c!64394 (= lt!253927 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!558609 (= e!321791 e!321792)))

(declare-fun d!83483 () Bool)

(declare-fun lt!253928 () SeekEntryResult!5324)

(assert (=> d!83483 (and (or (is-Undefined!5324 lt!253928) (not (is-Found!5324 lt!253928)) (and (bvsge (index!23524 lt!253928) #b00000000000000000000000000000000) (bvslt (index!23524 lt!253928) (size!17232 a!3118)))) (or (is-Undefined!5324 lt!253928) (is-Found!5324 lt!253928) (not (is-MissingZero!5324 lt!253928)) (and (bvsge (index!23523 lt!253928) #b00000000000000000000000000000000) (bvslt (index!23523 lt!253928) (size!17232 a!3118)))) (or (is-Undefined!5324 lt!253928) (is-Found!5324 lt!253928) (is-MissingZero!5324 lt!253928) (not (is-MissingVacant!5324 lt!253928)) (and (bvsge (index!23526 lt!253928) #b00000000000000000000000000000000) (bvslt (index!23526 lt!253928) (size!17232 a!3118)))) (or (is-Undefined!5324 lt!253928) (ite (is-Found!5324 lt!253928) (= (select (arr!16868 a!3118) (index!23524 lt!253928)) k!1914) (ite (is-MissingZero!5324 lt!253928) (= (select (arr!16868 a!3118) (index!23523 lt!253928)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!5324 lt!253928) (= (select (arr!16868 a!3118) (index!23526 lt!253928)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!83483 (= lt!253928 e!321793)))

(declare-fun c!64395 () Bool)

(assert (=> d!83483 (= c!64395 (and (is-Intermediate!5324 lt!253926) (undefined!6136 lt!253926)))))

(assert (=> d!83483 (= lt!253926 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1914 mask!3119) k!1914 a!3118 mask!3119))))

(assert (=> d!83483 (validMask!0 mask!3119)))

(assert (=> d!83483 (= (seekEntryOrOpen!0 k!1914 a!3118 mask!3119) lt!253928)))

(declare-fun b!558607 () Bool)

(assert (=> b!558607 (= e!321792 (MissingZero!5324 (index!23525 lt!253926)))))

(assert (= (and d!83483 c!64395) b!558605))

(assert (= (and d!83483 (not c!64395)) b!558604))

(assert (= (and b!558604 c!64393) b!558606))

(assert (= (and b!558604 (not c!64393)) b!558609))

(assert (= (and b!558609 c!64394) b!558607))

(assert (= (and b!558609 (not c!64394)) b!558608))

(declare-fun m!536641 () Bool)

(assert (=> b!558604 m!536641))

(declare-fun m!536645 () Bool)

(assert (=> b!558608 m!536645))

(declare-fun m!536649 () Bool)

(assert (=> d!83483 m!536649))

(declare-fun m!536651 () Bool)

(assert (=> d!83483 m!536651))

(assert (=> d!83483 m!536549))

(declare-fun m!536655 () Bool)

(assert (=> d!83483 m!536655))

(declare-fun m!536657 () Bool)

(assert (=> d!83483 m!536657))

(assert (=> d!83483 m!536651))

(declare-fun m!536661 () Bool)

(assert (=> d!83483 m!536661))

(assert (=> b!558460 d!83483))

(declare-fun d!83497 () Bool)

(assert (=> d!83497 (= (validKeyInArray!0 k!1914) (and (not (= k!1914 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1914 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!558465 d!83497))

(declare-fun b!558707 () Bool)

(declare-fun e!321854 () SeekEntryResult!5324)

(assert (=> b!558707 (= e!321854 (Intermediate!5324 true lt!253856 #b00000000000000000000000000000000))))

(declare-fun b!558708 () Bool)

(declare-fun lt!253962 () SeekEntryResult!5324)

(assert (=> b!558708 (and (bvsge (index!23525 lt!253962) #b00000000000000000000000000000000) (bvslt (index!23525 lt!253962) (size!17232 (array!35135 (store (arr!16868 a!3118) i!1132 k!1914) (size!17232 a!3118)))))))

(declare-fun e!321855 () Bool)

(assert (=> b!558708 (= e!321855 (= (select (arr!16868 (array!35135 (store (arr!16868 a!3118) i!1132 k!1914) (size!17232 a!3118))) (index!23525 lt!253962)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!558709 () Bool)

(declare-fun e!321852 () SeekEntryResult!5324)

(assert (=> b!558709 (= e!321852 (Intermediate!5324 false lt!253856 #b00000000000000000000000000000000))))

(declare-fun b!558710 () Bool)

(assert (=> b!558710 (and (bvsge (index!23525 lt!253962) #b00000000000000000000000000000000) (bvslt (index!23525 lt!253962) (size!17232 (array!35135 (store (arr!16868 a!3118) i!1132 k!1914) (size!17232 a!3118)))))))

(declare-fun res!350538 () Bool)

(assert (=> b!558710 (= res!350538 (= (select (arr!16868 (array!35135 (store (arr!16868 a!3118) i!1132 k!1914) (size!17232 a!3118))) (index!23525 lt!253962)) (select (store (arr!16868 a!3118) i!1132 k!1914) j!142)))))

(assert (=> b!558710 (=> res!350538 e!321855)))

(declare-fun e!321856 () Bool)

(assert (=> b!558710 (= e!321856 e!321855)))

(declare-fun d!83503 () Bool)

(declare-fun e!321853 () Bool)

(assert (=> d!83503 e!321853))

(declare-fun c!64429 () Bool)

(assert (=> d!83503 (= c!64429 (and (is-Intermediate!5324 lt!253962) (undefined!6136 lt!253962)))))

(assert (=> d!83503 (= lt!253962 e!321854)))

(declare-fun c!64428 () Bool)

(assert (=> d!83503 (= c!64428 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!253963 () (_ BitVec 64))

(assert (=> d!83503 (= lt!253963 (select (arr!16868 (array!35135 (store (arr!16868 a!3118) i!1132 k!1914) (size!17232 a!3118))) lt!253856))))

(assert (=> d!83503 (validMask!0 mask!3119)))

(assert (=> d!83503 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!253856 (select (store (arr!16868 a!3118) i!1132 k!1914) j!142) (array!35135 (store (arr!16868 a!3118) i!1132 k!1914) (size!17232 a!3118)) mask!3119) lt!253962)))

(declare-fun b!558711 () Bool)

(assert (=> b!558711 (and (bvsge (index!23525 lt!253962) #b00000000000000000000000000000000) (bvslt (index!23525 lt!253962) (size!17232 (array!35135 (store (arr!16868 a!3118) i!1132 k!1914) (size!17232 a!3118)))))))

(declare-fun res!350539 () Bool)

(assert (=> b!558711 (= res!350539 (= (select (arr!16868 (array!35135 (store (arr!16868 a!3118) i!1132 k!1914) (size!17232 a!3118))) (index!23525 lt!253962)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!558711 (=> res!350539 e!321855)))

(declare-fun b!558712 () Bool)

(assert (=> b!558712 (= e!321854 e!321852)))

(declare-fun c!64427 () Bool)

(assert (=> b!558712 (= c!64427 (or (= lt!253963 (select (store (arr!16868 a!3118) i!1132 k!1914) j!142)) (= (bvadd lt!253963 lt!253963) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!558713 () Bool)

(assert (=> b!558713 (= e!321852 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!253856 #b00000000000000000000000000000000 mask!3119) (select (store (arr!16868 a!3118) i!1132 k!1914) j!142) (array!35135 (store (arr!16868 a!3118) i!1132 k!1914) (size!17232 a!3118)) mask!3119))))

(declare-fun b!558714 () Bool)

(assert (=> b!558714 (= e!321853 (bvsge (x!52443 lt!253962) #b01111111111111111111111111111110))))

(declare-fun b!558715 () Bool)

(assert (=> b!558715 (= e!321853 e!321856)))

(declare-fun res!350537 () Bool)

(assert (=> b!558715 (= res!350537 (and (is-Intermediate!5324 lt!253962) (not (undefined!6136 lt!253962)) (bvslt (x!52443 lt!253962) #b01111111111111111111111111111110) (bvsge (x!52443 lt!253962) #b00000000000000000000000000000000) (bvsge (x!52443 lt!253962) #b00000000000000000000000000000000)))))

(assert (=> b!558715 (=> (not res!350537) (not e!321856))))

(assert (= (and d!83503 c!64428) b!558707))

(assert (= (and d!83503 (not c!64428)) b!558712))

(assert (= (and b!558712 c!64427) b!558709))

(assert (= (and b!558712 (not c!64427)) b!558713))

(assert (= (and d!83503 c!64429) b!558714))

(assert (= (and d!83503 (not c!64429)) b!558715))

(assert (= (and b!558715 res!350537) b!558710))

(assert (= (and b!558710 (not res!350538)) b!558711))

(assert (= (and b!558711 (not res!350539)) b!558708))

(declare-fun m!536695 () Bool)

(assert (=> b!558713 m!536695))

(assert (=> b!558713 m!536695))

(assert (=> b!558713 m!536523))

(declare-fun m!536697 () Bool)

(assert (=> b!558713 m!536697))

(declare-fun m!536699 () Bool)

(assert (=> b!558711 m!536699))

(assert (=> b!558710 m!536699))

(assert (=> b!558708 m!536699))

(declare-fun m!536701 () Bool)

(assert (=> d!83503 m!536701))

(assert (=> d!83503 m!536549))

(assert (=> b!558464 d!83503))

(declare-fun b!558716 () Bool)

(declare-fun e!321859 () SeekEntryResult!5324)

(assert (=> b!558716 (= e!321859 (Intermediate!5324 true lt!253858 #b00000000000000000000000000000000))))

(declare-fun b!558717 () Bool)

(declare-fun lt!253964 () SeekEntryResult!5324)

(assert (=> b!558717 (and (bvsge (index!23525 lt!253964) #b00000000000000000000000000000000) (bvslt (index!23525 lt!253964) (size!17232 a!3118)))))

(declare-fun e!321860 () Bool)

(assert (=> b!558717 (= e!321860 (= (select (arr!16868 a!3118) (index!23525 lt!253964)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!558718 () Bool)

(declare-fun e!321857 () SeekEntryResult!5324)

(assert (=> b!558718 (= e!321857 (Intermediate!5324 false lt!253858 #b00000000000000000000000000000000))))

(declare-fun b!558719 () Bool)

(assert (=> b!558719 (and (bvsge (index!23525 lt!253964) #b00000000000000000000000000000000) (bvslt (index!23525 lt!253964) (size!17232 a!3118)))))

(declare-fun res!350541 () Bool)

(assert (=> b!558719 (= res!350541 (= (select (arr!16868 a!3118) (index!23525 lt!253964)) (select (arr!16868 a!3118) j!142)))))

(assert (=> b!558719 (=> res!350541 e!321860)))

(declare-fun e!321861 () Bool)

(assert (=> b!558719 (= e!321861 e!321860)))

(declare-fun d!83519 () Bool)

(declare-fun e!321858 () Bool)

(assert (=> d!83519 e!321858))

(declare-fun c!64432 () Bool)

(assert (=> d!83519 (= c!64432 (and (is-Intermediate!5324 lt!253964) (undefined!6136 lt!253964)))))

(assert (=> d!83519 (= lt!253964 e!321859)))

(declare-fun c!64431 () Bool)

(assert (=> d!83519 (= c!64431 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!253965 () (_ BitVec 64))

(assert (=> d!83519 (= lt!253965 (select (arr!16868 a!3118) lt!253858))))

(assert (=> d!83519 (validMask!0 mask!3119)))

(assert (=> d!83519 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!253858 (select (arr!16868 a!3118) j!142) a!3118 mask!3119) lt!253964)))

(declare-fun b!558720 () Bool)

(assert (=> b!558720 (and (bvsge (index!23525 lt!253964) #b00000000000000000000000000000000) (bvslt (index!23525 lt!253964) (size!17232 a!3118)))))

(declare-fun res!350542 () Bool)

(assert (=> b!558720 (= res!350542 (= (select (arr!16868 a!3118) (index!23525 lt!253964)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!558720 (=> res!350542 e!321860)))

(declare-fun b!558721 () Bool)

(assert (=> b!558721 (= e!321859 e!321857)))

(declare-fun c!64430 () Bool)

(assert (=> b!558721 (= c!64430 (or (= lt!253965 (select (arr!16868 a!3118) j!142)) (= (bvadd lt!253965 lt!253965) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!558722 () Bool)

(assert (=> b!558722 (= e!321857 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!253858 #b00000000000000000000000000000000 mask!3119) (select (arr!16868 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!558723 () Bool)

(assert (=> b!558723 (= e!321858 (bvsge (x!52443 lt!253964) #b01111111111111111111111111111110))))

(declare-fun b!558724 () Bool)

(assert (=> b!558724 (= e!321858 e!321861)))

(declare-fun res!350540 () Bool)

(assert (=> b!558724 (= res!350540 (and (is-Intermediate!5324 lt!253964) (not (undefined!6136 lt!253964)) (bvslt (x!52443 lt!253964) #b01111111111111111111111111111110) (bvsge (x!52443 lt!253964) #b00000000000000000000000000000000) (bvsge (x!52443 lt!253964) #b00000000000000000000000000000000)))))

(assert (=> b!558724 (=> (not res!350540) (not e!321861))))

(assert (= (and d!83519 c!64431) b!558716))

(assert (= (and d!83519 (not c!64431)) b!558721))

(assert (= (and b!558721 c!64430) b!558718))

(assert (= (and b!558721 (not c!64430)) b!558722))

(assert (= (and d!83519 c!64432) b!558723))

(assert (= (and d!83519 (not c!64432)) b!558724))

(assert (= (and b!558724 res!350540) b!558719))

(assert (= (and b!558719 (not res!350541)) b!558720))

(assert (= (and b!558720 (not res!350542)) b!558717))

(declare-fun m!536703 () Bool)

(assert (=> b!558722 m!536703))

(assert (=> b!558722 m!536703))

(assert (=> b!558722 m!536519))

(declare-fun m!536705 () Bool)

(assert (=> b!558722 m!536705))

(declare-fun m!536707 () Bool)

(assert (=> b!558720 m!536707))

(assert (=> b!558719 m!536707))

(assert (=> b!558717 m!536707))

(declare-fun m!536709 () Bool)

(assert (=> d!83519 m!536709))

(assert (=> d!83519 m!536549))

(assert (=> b!558464 d!83519))

(declare-fun d!83521 () Bool)

(declare-fun lt!253975 () (_ BitVec 32))

(declare-fun lt!253974 () (_ BitVec 32))

(assert (=> d!83521 (= lt!253975 (bvmul (bvxor lt!253974 (bvlshr lt!253974 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!83521 (= lt!253974 ((_ extract 31 0) (bvand (bvxor (select (store (arr!16868 a!3118) i!1132 k!1914) j!142) (bvlshr (select (store (arr!16868 a!3118) i!1132 k!1914) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!83521 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!350543 (let ((h!11993 ((_ extract 31 0) (bvand (bvxor (select (store (arr!16868 a!3118) i!1132 k!1914) j!142) (bvlshr (select (store (arr!16868 a!3118) i!1132 k!1914) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!52451 (bvmul (bvxor h!11993 (bvlshr h!11993 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!52451 (bvlshr x!52451 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!350543 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!350543 #b00000000000000000000000000000000))))))

(assert (=> d!83521 (= (toIndex!0 (select (store (arr!16868 a!3118) i!1132 k!1914) j!142) mask!3119) (bvand (bvxor lt!253975 (bvlshr lt!253975 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!558464 d!83521))

(declare-fun d!83527 () Bool)

(declare-fun lt!253977 () (_ BitVec 32))

(declare-fun lt!253976 () (_ BitVec 32))

(assert (=> d!83527 (= lt!253977 (bvmul (bvxor lt!253976 (bvlshr lt!253976 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!83527 (= lt!253976 ((_ extract 31 0) (bvand (bvxor (select (arr!16868 a!3118) j!142) (bvlshr (select (arr!16868 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!83527 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!350543 (let ((h!11993 ((_ extract 31 0) (bvand (bvxor (select (arr!16868 a!3118) j!142) (bvlshr (select (arr!16868 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!52451 (bvmul (bvxor h!11993 (bvlshr h!11993 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!52451 (bvlshr x!52451 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!350543 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!350543 #b00000000000000000000000000000000))))))

(assert (=> d!83527 (= (toIndex!0 (select (arr!16868 a!3118) j!142) mask!3119) (bvand (bvxor lt!253977 (bvlshr lt!253977 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!558464 d!83527))

(declare-fun b!558743 () Bool)

(declare-fun e!321874 () SeekEntryResult!5324)

(declare-fun e!321872 () SeekEntryResult!5324)

(assert (=> b!558743 (= e!321874 e!321872)))

(declare-fun lt!253979 () (_ BitVec 64))

(declare-fun lt!253978 () SeekEntryResult!5324)

(assert (=> b!558743 (= lt!253979 (select (arr!16868 a!3118) (index!23525 lt!253978)))))

(declare-fun c!64439 () Bool)

(assert (=> b!558743 (= c!64439 (= lt!253979 (select (arr!16868 a!3118) j!142)))))

(declare-fun b!558744 () Bool)

(assert (=> b!558744 (= e!321874 Undefined!5324)))

(declare-fun b!558745 () Bool)

(assert (=> b!558745 (= e!321872 (Found!5324 (index!23525 lt!253978)))))

(declare-fun b!558747 () Bool)

(declare-fun e!321873 () SeekEntryResult!5324)

(assert (=> b!558747 (= e!321873 (seekKeyOrZeroReturnVacant!0 (x!52443 lt!253978) (index!23525 lt!253978) (index!23525 lt!253978) (select (arr!16868 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!558748 () Bool)

(declare-fun c!64440 () Bool)

(assert (=> b!558748 (= c!64440 (= lt!253979 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!558748 (= e!321872 e!321873)))

(declare-fun d!83529 () Bool)

(declare-fun lt!253980 () SeekEntryResult!5324)

(assert (=> d!83529 (and (or (is-Undefined!5324 lt!253980) (not (is-Found!5324 lt!253980)) (and (bvsge (index!23524 lt!253980) #b00000000000000000000000000000000) (bvslt (index!23524 lt!253980) (size!17232 a!3118)))) (or (is-Undefined!5324 lt!253980) (is-Found!5324 lt!253980) (not (is-MissingZero!5324 lt!253980)) (and (bvsge (index!23523 lt!253980) #b00000000000000000000000000000000) (bvslt (index!23523 lt!253980) (size!17232 a!3118)))) (or (is-Undefined!5324 lt!253980) (is-Found!5324 lt!253980) (is-MissingZero!5324 lt!253980) (not (is-MissingVacant!5324 lt!253980)) (and (bvsge (index!23526 lt!253980) #b00000000000000000000000000000000) (bvslt (index!23526 lt!253980) (size!17232 a!3118)))) (or (is-Undefined!5324 lt!253980) (ite (is-Found!5324 lt!253980) (= (select (arr!16868 a!3118) (index!23524 lt!253980)) (select (arr!16868 a!3118) j!142)) (ite (is-MissingZero!5324 lt!253980) (= (select (arr!16868 a!3118) (index!23523 lt!253980)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!5324 lt!253980) (= (select (arr!16868 a!3118) (index!23526 lt!253980)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!83529 (= lt!253980 e!321874)))

(declare-fun c!64441 () Bool)

(assert (=> d!83529 (= c!64441 (and (is-Intermediate!5324 lt!253978) (undefined!6136 lt!253978)))))

(assert (=> d!83529 (= lt!253978 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16868 a!3118) j!142) mask!3119) (select (arr!16868 a!3118) j!142) a!3118 mask!3119))))

(assert (=> d!83529 (validMask!0 mask!3119)))

(assert (=> d!83529 (= (seekEntryOrOpen!0 (select (arr!16868 a!3118) j!142) a!3118 mask!3119) lt!253980)))

(declare-fun b!558746 () Bool)

(assert (=> b!558746 (= e!321873 (MissingZero!5324 (index!23525 lt!253978)))))

(assert (= (and d!83529 c!64441) b!558744))

(assert (= (and d!83529 (not c!64441)) b!558743))

(assert (= (and b!558743 c!64439) b!558745))

(assert (= (and b!558743 (not c!64439)) b!558748))

(assert (= (and b!558748 c!64440) b!558746))

(assert (= (and b!558748 (not c!64440)) b!558747))

(declare-fun m!536727 () Bool)

(assert (=> b!558743 m!536727))

(assert (=> b!558747 m!536519))

(declare-fun m!536729 () Bool)

(assert (=> b!558747 m!536729))

(declare-fun m!536731 () Bool)

(assert (=> d!83529 m!536731))

(assert (=> d!83529 m!536519))

(assert (=> d!83529 m!536521))

(assert (=> d!83529 m!536549))

(declare-fun m!536733 () Bool)

(assert (=> d!83529 m!536733))

(declare-fun m!536735 () Bool)

(assert (=> d!83529 m!536735))

(assert (=> d!83529 m!536521))

(assert (=> d!83529 m!536519))

(declare-fun m!536737 () Bool)

(assert (=> d!83529 m!536737))

(assert (=> b!558463 d!83529))

(declare-fun d!83531 () Bool)

(declare-fun res!350571 () Bool)

(declare-fun e!321903 () Bool)

(assert (=> d!83531 (=> res!350571 e!321903)))

(assert (=> d!83531 (= res!350571 (bvsge j!142 (size!17232 a!3118)))))

(assert (=> d!83531 (= (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119) e!321903)))

(declare-fun b!558784 () Bool)

(declare-fun e!321902 () Bool)

(assert (=> b!558784 (= e!321903 e!321902)))

(declare-fun c!64450 () Bool)

(assert (=> b!558784 (= c!64450 (validKeyInArray!0 (select (arr!16868 a!3118) j!142)))))

(declare-fun bm!32404 () Bool)

(declare-fun call!32407 () Bool)

(assert (=> bm!32404 (= call!32407 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!142 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun b!558785 () Bool)

(declare-fun e!321904 () Bool)

(assert (=> b!558785 (= e!321902 e!321904)))

(declare-fun lt!253998 () (_ BitVec 64))

(assert (=> b!558785 (= lt!253998 (select (arr!16868 a!3118) j!142))))

(declare-fun lt!254000 () Unit!17422)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!35134 (_ BitVec 64) (_ BitVec 32)) Unit!17422)

(assert (=> b!558785 (= lt!254000 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!253998 j!142))))

(assert (=> b!558785 (arrayContainsKey!0 a!3118 lt!253998 #b00000000000000000000000000000000)))

(declare-fun lt!253999 () Unit!17422)

(assert (=> b!558785 (= lt!253999 lt!254000)))

(declare-fun res!350570 () Bool)

(assert (=> b!558785 (= res!350570 (= (seekEntryOrOpen!0 (select (arr!16868 a!3118) j!142) a!3118 mask!3119) (Found!5324 j!142)))))

(assert (=> b!558785 (=> (not res!350570) (not e!321904))))

(declare-fun b!558786 () Bool)

(assert (=> b!558786 (= e!321902 call!32407)))

(declare-fun b!558787 () Bool)

(assert (=> b!558787 (= e!321904 call!32407)))

(assert (= (and d!83531 (not res!350571)) b!558784))

(assert (= (and b!558784 c!64450) b!558785))

(assert (= (and b!558784 (not c!64450)) b!558786))

(assert (= (and b!558785 res!350570) b!558787))

(assert (= (or b!558787 b!558786) bm!32404))

(assert (=> b!558784 m!536519))

(assert (=> b!558784 m!536519))

(assert (=> b!558784 m!536535))

(declare-fun m!536759 () Bool)

(assert (=> bm!32404 m!536759))

(assert (=> b!558785 m!536519))

(declare-fun m!536761 () Bool)

(assert (=> b!558785 m!536761))

(declare-fun m!536763 () Bool)

(assert (=> b!558785 m!536763))

(assert (=> b!558785 m!536519))

(assert (=> b!558785 m!536545))

(assert (=> b!558463 d!83531))

(declare-fun d!83549 () Bool)

(assert (=> d!83549 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-fun lt!254003 () Unit!17422)

(declare-fun choose!38 (array!35134 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17422)

(assert (=> d!83549 (= lt!254003 (choose!38 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(assert (=> d!83549 (validMask!0 mask!3119)))

(assert (=> d!83549 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142) lt!254003)))

(declare-fun bs!17384 () Bool)

(assert (= bs!17384 d!83549))

(assert (=> bs!17384 m!536539))

(declare-fun m!536765 () Bool)

(assert (=> bs!17384 m!536765))

(assert (=> bs!17384 m!536549))

(assert (=> b!558463 d!83549))

(declare-fun d!83551 () Bool)

(declare-fun res!350573 () Bool)

(declare-fun e!321906 () Bool)

(assert (=> d!83551 (=> res!350573 e!321906)))

(assert (=> d!83551 (= res!350573 (bvsge #b00000000000000000000000000000000 (size!17232 a!3118)))))

(assert (=> d!83551 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119) e!321906)))

(declare-fun b!558788 () Bool)

(declare-fun e!321905 () Bool)

(assert (=> b!558788 (= e!321906 e!321905)))

(declare-fun c!64451 () Bool)

(assert (=> b!558788 (= c!64451 (validKeyInArray!0 (select (arr!16868 a!3118) #b00000000000000000000000000000000)))))

(declare-fun bm!32405 () Bool)

(declare-fun call!32408 () Bool)

(assert (=> bm!32405 (= call!32408 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun b!558789 () Bool)

(declare-fun e!321907 () Bool)

(assert (=> b!558789 (= e!321905 e!321907)))

(declare-fun lt!254004 () (_ BitVec 64))

(assert (=> b!558789 (= lt!254004 (select (arr!16868 a!3118) #b00000000000000000000000000000000))))

(declare-fun lt!254006 () Unit!17422)

(assert (=> b!558789 (= lt!254006 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!254004 #b00000000000000000000000000000000))))

(assert (=> b!558789 (arrayContainsKey!0 a!3118 lt!254004 #b00000000000000000000000000000000)))

(declare-fun lt!254005 () Unit!17422)

(assert (=> b!558789 (= lt!254005 lt!254006)))

(declare-fun res!350572 () Bool)

(assert (=> b!558789 (= res!350572 (= (seekEntryOrOpen!0 (select (arr!16868 a!3118) #b00000000000000000000000000000000) a!3118 mask!3119) (Found!5324 #b00000000000000000000000000000000)))))

(assert (=> b!558789 (=> (not res!350572) (not e!321907))))

(declare-fun b!558790 () Bool)

(assert (=> b!558790 (= e!321905 call!32408)))

(declare-fun b!558791 () Bool)

(assert (=> b!558791 (= e!321907 call!32408)))

(assert (= (and d!83551 (not res!350573)) b!558788))

(assert (= (and b!558788 c!64451) b!558789))

(assert (= (and b!558788 (not c!64451)) b!558790))

(assert (= (and b!558789 res!350572) b!558791))

(assert (= (or b!558791 b!558790) bm!32405))

(declare-fun m!536767 () Bool)

(assert (=> b!558788 m!536767))

(assert (=> b!558788 m!536767))

(declare-fun m!536769 () Bool)

(assert (=> b!558788 m!536769))

(declare-fun m!536771 () Bool)

(assert (=> bm!32405 m!536771))

(assert (=> b!558789 m!536767))

(declare-fun m!536773 () Bool)

(assert (=> b!558789 m!536773))

(declare-fun m!536775 () Bool)

(assert (=> b!558789 m!536775))

(assert (=> b!558789 m!536767))

(declare-fun m!536777 () Bool)

(assert (=> b!558789 m!536777))

(assert (=> b!558457 d!83551))

(declare-fun d!83553 () Bool)

(declare-fun res!350578 () Bool)

(declare-fun e!321912 () Bool)

(assert (=> d!83553 (=> res!350578 e!321912)))

(assert (=> d!83553 (= res!350578 (= (select (arr!16868 a!3118) #b00000000000000000000000000000000) k!1914))))

(assert (=> d!83553 (= (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000) e!321912)))

(declare-fun b!558796 () Bool)

(declare-fun e!321913 () Bool)

(assert (=> b!558796 (= e!321912 e!321913)))

(declare-fun res!350579 () Bool)

(assert (=> b!558796 (=> (not res!350579) (not e!321913))))

(assert (=> b!558796 (= res!350579 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!17232 a!3118)))))

(declare-fun b!558797 () Bool)

(assert (=> b!558797 (= e!321913 (arrayContainsKey!0 a!3118 k!1914 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!83553 (not res!350578)) b!558796))

(assert (= (and b!558796 res!350579) b!558797))

(assert (=> d!83553 m!536767))

(declare-fun m!536779 () Bool)

(assert (=> b!558797 m!536779))

(assert (=> b!558462 d!83553))

(declare-fun d!83557 () Bool)

(assert (=> d!83557 (= (validKeyInArray!0 (select (arr!16868 a!3118) j!142)) (and (not (= (select (arr!16868 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16868 a!3118) j!142) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!558467 d!83557))

(declare-fun b!558808 () Bool)

(declare-fun e!321923 () Bool)

(declare-fun call!32411 () Bool)

(assert (=> b!558808 (= e!321923 call!32411)))

(declare-fun d!83559 () Bool)

(declare-fun res!350586 () Bool)

(declare-fun e!321925 () Bool)

(assert (=> d!83559 (=> res!350586 e!321925)))

(assert (=> d!83559 (= res!350586 (bvsge #b00000000000000000000000000000000 (size!17232 a!3118)))))

(assert (=> d!83559 (= (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10998) e!321925)))

(declare-fun b!558809 () Bool)

(declare-fun e!321922 () Bool)

(assert (=> b!558809 (= e!321925 e!321922)))

(declare-fun res!350588 () Bool)

(assert (=> b!558809 (=> (not res!350588) (not e!321922))))

(declare-fun e!321924 () Bool)

(assert (=> b!558809 (= res!350588 (not e!321924))))

(declare-fun res!350587 () Bool)

(assert (=> b!558809 (=> (not res!350587) (not e!321924))))

(assert (=> b!558809 (= res!350587 (validKeyInArray!0 (select (arr!16868 a!3118) #b00000000000000000000000000000000)))))

(declare-fun bm!32408 () Bool)

(declare-fun c!64454 () Bool)

(assert (=> bm!32408 (= call!32411 (arrayNoDuplicates!0 a!3118 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!64454 (Cons!10997 (select (arr!16868 a!3118) #b00000000000000000000000000000000) Nil!10998) Nil!10998)))))

(declare-fun b!558810 () Bool)

(declare-fun contains!2859 (List!11001 (_ BitVec 64)) Bool)

(assert (=> b!558810 (= e!321924 (contains!2859 Nil!10998 (select (arr!16868 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!558811 () Bool)

(assert (=> b!558811 (= e!321923 call!32411)))

(declare-fun b!558812 () Bool)

(assert (=> b!558812 (= e!321922 e!321923)))

(assert (=> b!558812 (= c!64454 (validKeyInArray!0 (select (arr!16868 a!3118) #b00000000000000000000000000000000)))))

(assert (= (and d!83559 (not res!350586)) b!558809))

(assert (= (and b!558809 res!350587) b!558810))

(assert (= (and b!558809 res!350588) b!558812))

(assert (= (and b!558812 c!64454) b!558811))

(assert (= (and b!558812 (not c!64454)) b!558808))

(assert (= (or b!558811 b!558808) bm!32408))

(assert (=> b!558809 m!536767))

(assert (=> b!558809 m!536767))

(assert (=> b!558809 m!536769))

