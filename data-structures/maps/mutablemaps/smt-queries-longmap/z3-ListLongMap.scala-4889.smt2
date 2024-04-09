; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!67398 () Bool)

(assert start!67398)

(declare-fun b!779536 () Bool)

(declare-fun res!527642 () Bool)

(declare-fun e!433675 () Bool)

(assert (=> b!779536 (=> (not res!527642) (not e!433675))))

(declare-datatypes ((array!42582 0))(
  ( (array!42583 (arr!20380 (Array (_ BitVec 32) (_ BitVec 64))) (size!20801 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42582)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42582 (_ BitVec 32)) Bool)

(assert (=> b!779536 (= res!527642 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!779537 () Bool)

(declare-fun res!527633 () Bool)

(assert (=> b!779537 (=> (not res!527633) (not e!433675))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!779537 (= res!527633 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20801 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20801 a!3186))))))

(declare-fun b!779538 () Bool)

(declare-fun e!433668 () Bool)

(assert (=> b!779538 (= e!433675 e!433668)))

(declare-fun res!527634 () Bool)

(assert (=> b!779538 (=> (not res!527634) (not e!433668))))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7987 0))(
  ( (MissingZero!7987 (index!34315 (_ BitVec 32))) (Found!7987 (index!34316 (_ BitVec 32))) (Intermediate!7987 (undefined!8799 Bool) (index!34317 (_ BitVec 32)) (x!65285 (_ BitVec 32))) (Undefined!7987) (MissingVacant!7987 (index!34318 (_ BitVec 32))) )
))
(declare-fun lt!347399 () SeekEntryResult!7987)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42582 (_ BitVec 32)) SeekEntryResult!7987)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!779538 (= res!527634 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20380 a!3186) j!159) mask!3328) (select (arr!20380 a!3186) j!159) a!3186 mask!3328) lt!347399))))

(assert (=> b!779538 (= lt!347399 (Intermediate!7987 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!779539 () Bool)

(declare-fun res!527647 () Bool)

(declare-fun e!433674 () Bool)

(assert (=> b!779539 (=> (not res!527647) (not e!433674))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!779539 (= res!527647 (and (= (size!20801 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20801 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20801 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!779540 () Bool)

(declare-fun res!527643 () Bool)

(assert (=> b!779540 (=> (not res!527643) (not e!433674))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!779540 (= res!527643 (validKeyInArray!0 (select (arr!20380 a!3186) j!159)))))

(declare-fun b!779541 () Bool)

(assert (=> b!779541 (= e!433674 e!433675)))

(declare-fun res!527645 () Bool)

(assert (=> b!779541 (=> (not res!527645) (not e!433675))))

(declare-fun lt!347400 () SeekEntryResult!7987)

(assert (=> b!779541 (= res!527645 (or (= lt!347400 (MissingZero!7987 i!1173)) (= lt!347400 (MissingVacant!7987 i!1173))))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42582 (_ BitVec 32)) SeekEntryResult!7987)

(assert (=> b!779541 (= lt!347400 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!779542 () Bool)

(declare-fun res!527635 () Bool)

(assert (=> b!779542 (=> (not res!527635) (not e!433668))))

(declare-fun e!433672 () Bool)

(assert (=> b!779542 (= res!527635 e!433672)))

(declare-fun c!86355 () Bool)

(assert (=> b!779542 (= c!86355 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!779543 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42582 (_ BitVec 32)) SeekEntryResult!7987)

(assert (=> b!779543 (= e!433672 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20380 a!3186) j!159) a!3186 mask!3328) (Found!7987 j!159)))))

(declare-fun b!779544 () Bool)

(declare-fun res!527638 () Bool)

(assert (=> b!779544 (=> (not res!527638) (not e!433668))))

(assert (=> b!779544 (= res!527638 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20380 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!779545 () Bool)

(declare-fun e!433673 () Bool)

(declare-fun lt!347395 () SeekEntryResult!7987)

(assert (=> b!779545 (= e!433673 (= lt!347395 (MissingVacant!7987 resIntermediateIndex!5)))))

(declare-fun lt!347404 () SeekEntryResult!7987)

(assert (=> b!779545 (= lt!347404 lt!347395)))

(declare-fun b!779546 () Bool)

(declare-fun lt!347396 () SeekEntryResult!7987)

(declare-fun e!433671 () Bool)

(assert (=> b!779546 (= e!433671 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20380 a!3186) j!159) a!3186 mask!3328) lt!347396))))

(declare-fun b!779547 () Bool)

(declare-fun res!527640 () Bool)

(assert (=> b!779547 (=> (not res!527640) (not e!433675))))

(declare-datatypes ((List!14435 0))(
  ( (Nil!14432) (Cons!14431 (h!15545 (_ BitVec 64)) (t!20758 List!14435)) )
))
(declare-fun arrayNoDuplicates!0 (array!42582 (_ BitVec 32) List!14435) Bool)

(assert (=> b!779547 (= res!527640 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14432))))

(declare-fun b!779548 () Bool)

(declare-fun e!433670 () Bool)

(assert (=> b!779548 (= e!433670 e!433673)))

(declare-fun res!527632 () Bool)

(assert (=> b!779548 (=> res!527632 e!433673)))

(declare-fun lt!347397 () (_ BitVec 64))

(assert (=> b!779548 (= res!527632 (or (not (= lt!347395 lt!347396)) (= (select (store (arr!20380 a!3186) i!1173 k0!2102) index!1321) lt!347397) (not (= (select (store (arr!20380 a!3186) i!1173 k0!2102) index!1321) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!779548 (= lt!347395 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20380 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!779549 () Bool)

(declare-fun res!527637 () Bool)

(assert (=> b!779549 (=> (not res!527637) (not e!433674))))

(declare-fun arrayContainsKey!0 (array!42582 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!779549 (= res!527637 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!779551 () Bool)

(declare-fun e!433669 () Bool)

(assert (=> b!779551 (= e!433669 (not e!433670))))

(declare-fun res!527639 () Bool)

(assert (=> b!779551 (=> res!527639 e!433670)))

(declare-fun lt!347401 () SeekEntryResult!7987)

(get-info :version)

(assert (=> b!779551 (= res!527639 (or (not ((_ is Intermediate!7987) lt!347401)) (bvslt x!1131 (x!65285 lt!347401)) (not (= x!1131 (x!65285 lt!347401))) (not (= index!1321 (index!34317 lt!347401)))))))

(assert (=> b!779551 e!433671))

(declare-fun res!527644 () Bool)

(assert (=> b!779551 (=> (not res!527644) (not e!433671))))

(assert (=> b!779551 (= res!527644 (= lt!347404 lt!347396))))

(assert (=> b!779551 (= lt!347396 (Found!7987 j!159))))

(assert (=> b!779551 (= lt!347404 (seekEntryOrOpen!0 (select (arr!20380 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!779551 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-datatypes ((Unit!26868 0))(
  ( (Unit!26869) )
))
(declare-fun lt!347398 () Unit!26868)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42582 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26868)

(assert (=> b!779551 (= lt!347398 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!779550 () Bool)

(assert (=> b!779550 (= e!433668 e!433669)))

(declare-fun res!527636 () Bool)

(assert (=> b!779550 (=> (not res!527636) (not e!433669))))

(declare-fun lt!347402 () SeekEntryResult!7987)

(assert (=> b!779550 (= res!527636 (= lt!347402 lt!347401))))

(declare-fun lt!347403 () array!42582)

(assert (=> b!779550 (= lt!347401 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!347397 lt!347403 mask!3328))))

(assert (=> b!779550 (= lt!347402 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!347397 mask!3328) lt!347397 lt!347403 mask!3328))))

(assert (=> b!779550 (= lt!347397 (select (store (arr!20380 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!779550 (= lt!347403 (array!42583 (store (arr!20380 a!3186) i!1173 k0!2102) (size!20801 a!3186)))))

(declare-fun res!527641 () Bool)

(assert (=> start!67398 (=> (not res!527641) (not e!433674))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67398 (= res!527641 (validMask!0 mask!3328))))

(assert (=> start!67398 e!433674))

(assert (=> start!67398 true))

(declare-fun array_inv!16154 (array!42582) Bool)

(assert (=> start!67398 (array_inv!16154 a!3186)))

(declare-fun b!779552 () Bool)

(assert (=> b!779552 (= e!433672 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20380 a!3186) j!159) a!3186 mask!3328) lt!347399))))

(declare-fun b!779553 () Bool)

(declare-fun res!527646 () Bool)

(assert (=> b!779553 (=> (not res!527646) (not e!433674))))

(assert (=> b!779553 (= res!527646 (validKeyInArray!0 k0!2102))))

(assert (= (and start!67398 res!527641) b!779539))

(assert (= (and b!779539 res!527647) b!779540))

(assert (= (and b!779540 res!527643) b!779553))

(assert (= (and b!779553 res!527646) b!779549))

(assert (= (and b!779549 res!527637) b!779541))

(assert (= (and b!779541 res!527645) b!779536))

(assert (= (and b!779536 res!527642) b!779547))

(assert (= (and b!779547 res!527640) b!779537))

(assert (= (and b!779537 res!527633) b!779538))

(assert (= (and b!779538 res!527634) b!779544))

(assert (= (and b!779544 res!527638) b!779542))

(assert (= (and b!779542 c!86355) b!779552))

(assert (= (and b!779542 (not c!86355)) b!779543))

(assert (= (and b!779542 res!527635) b!779550))

(assert (= (and b!779550 res!527636) b!779551))

(assert (= (and b!779551 res!527644) b!779546))

(assert (= (and b!779551 (not res!527639)) b!779548))

(assert (= (and b!779548 (not res!527632)) b!779545))

(declare-fun m!723103 () Bool)

(assert (=> b!779553 m!723103))

(declare-fun m!723105 () Bool)

(assert (=> b!779536 m!723105))

(declare-fun m!723107 () Bool)

(assert (=> b!779547 m!723107))

(declare-fun m!723109 () Bool)

(assert (=> b!779551 m!723109))

(assert (=> b!779551 m!723109))

(declare-fun m!723111 () Bool)

(assert (=> b!779551 m!723111))

(declare-fun m!723113 () Bool)

(assert (=> b!779551 m!723113))

(declare-fun m!723115 () Bool)

(assert (=> b!779551 m!723115))

(declare-fun m!723117 () Bool)

(assert (=> b!779548 m!723117))

(declare-fun m!723119 () Bool)

(assert (=> b!779548 m!723119))

(assert (=> b!779548 m!723109))

(assert (=> b!779548 m!723109))

(declare-fun m!723121 () Bool)

(assert (=> b!779548 m!723121))

(assert (=> b!779543 m!723109))

(assert (=> b!779543 m!723109))

(assert (=> b!779543 m!723121))

(assert (=> b!779552 m!723109))

(assert (=> b!779552 m!723109))

(declare-fun m!723123 () Bool)

(assert (=> b!779552 m!723123))

(declare-fun m!723125 () Bool)

(assert (=> b!779544 m!723125))

(assert (=> b!779546 m!723109))

(assert (=> b!779546 m!723109))

(declare-fun m!723127 () Bool)

(assert (=> b!779546 m!723127))

(declare-fun m!723129 () Bool)

(assert (=> b!779541 m!723129))

(assert (=> b!779538 m!723109))

(assert (=> b!779538 m!723109))

(declare-fun m!723131 () Bool)

(assert (=> b!779538 m!723131))

(assert (=> b!779538 m!723131))

(assert (=> b!779538 m!723109))

(declare-fun m!723133 () Bool)

(assert (=> b!779538 m!723133))

(declare-fun m!723135 () Bool)

(assert (=> start!67398 m!723135))

(declare-fun m!723137 () Bool)

(assert (=> start!67398 m!723137))

(declare-fun m!723139 () Bool)

(assert (=> b!779549 m!723139))

(assert (=> b!779540 m!723109))

(assert (=> b!779540 m!723109))

(declare-fun m!723141 () Bool)

(assert (=> b!779540 m!723141))

(declare-fun m!723143 () Bool)

(assert (=> b!779550 m!723143))

(declare-fun m!723145 () Bool)

(assert (=> b!779550 m!723145))

(assert (=> b!779550 m!723117))

(declare-fun m!723147 () Bool)

(assert (=> b!779550 m!723147))

(assert (=> b!779550 m!723143))

(declare-fun m!723149 () Bool)

(assert (=> b!779550 m!723149))

(check-sat (not b!779549) (not b!779538) (not b!779552) (not b!779543) (not b!779553) (not b!779548) (not b!779551) (not b!779550) (not b!779541) (not b!779547) (not b!779546) (not b!779536) (not b!779540) (not start!67398))
(check-sat)
(get-model)

(declare-fun b!779620 () Bool)

(declare-fun e!433709 () SeekEntryResult!7987)

(declare-fun lt!347443 () SeekEntryResult!7987)

(assert (=> b!779620 (= e!433709 (MissingZero!7987 (index!34317 lt!347443)))))

(declare-fun b!779621 () Bool)

(declare-fun e!433710 () SeekEntryResult!7987)

(declare-fun e!433711 () SeekEntryResult!7987)

(assert (=> b!779621 (= e!433710 e!433711)))

(declare-fun lt!347441 () (_ BitVec 64))

(assert (=> b!779621 (= lt!347441 (select (arr!20380 a!3186) (index!34317 lt!347443)))))

(declare-fun c!86365 () Bool)

(assert (=> b!779621 (= c!86365 (= lt!347441 k0!2102))))

(declare-fun d!102313 () Bool)

(declare-fun lt!347442 () SeekEntryResult!7987)

(assert (=> d!102313 (and (or ((_ is Undefined!7987) lt!347442) (not ((_ is Found!7987) lt!347442)) (and (bvsge (index!34316 lt!347442) #b00000000000000000000000000000000) (bvslt (index!34316 lt!347442) (size!20801 a!3186)))) (or ((_ is Undefined!7987) lt!347442) ((_ is Found!7987) lt!347442) (not ((_ is MissingZero!7987) lt!347442)) (and (bvsge (index!34315 lt!347442) #b00000000000000000000000000000000) (bvslt (index!34315 lt!347442) (size!20801 a!3186)))) (or ((_ is Undefined!7987) lt!347442) ((_ is Found!7987) lt!347442) ((_ is MissingZero!7987) lt!347442) (not ((_ is MissingVacant!7987) lt!347442)) (and (bvsge (index!34318 lt!347442) #b00000000000000000000000000000000) (bvslt (index!34318 lt!347442) (size!20801 a!3186)))) (or ((_ is Undefined!7987) lt!347442) (ite ((_ is Found!7987) lt!347442) (= (select (arr!20380 a!3186) (index!34316 lt!347442)) k0!2102) (ite ((_ is MissingZero!7987) lt!347442) (= (select (arr!20380 a!3186) (index!34315 lt!347442)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!7987) lt!347442) (= (select (arr!20380 a!3186) (index!34318 lt!347442)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!102313 (= lt!347442 e!433710)))

(declare-fun c!86366 () Bool)

(assert (=> d!102313 (= c!86366 (and ((_ is Intermediate!7987) lt!347443) (undefined!8799 lt!347443)))))

(assert (=> d!102313 (= lt!347443 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2102 mask!3328) k0!2102 a!3186 mask!3328))))

(assert (=> d!102313 (validMask!0 mask!3328)))

(assert (=> d!102313 (= (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328) lt!347442)))

(declare-fun b!779622 () Bool)

(declare-fun c!86367 () Bool)

(assert (=> b!779622 (= c!86367 (= lt!347441 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!779622 (= e!433711 e!433709)))

(declare-fun b!779623 () Bool)

(assert (=> b!779623 (= e!433709 (seekKeyOrZeroReturnVacant!0 (x!65285 lt!347443) (index!34317 lt!347443) (index!34317 lt!347443) k0!2102 a!3186 mask!3328))))

(declare-fun b!779624 () Bool)

(assert (=> b!779624 (= e!433710 Undefined!7987)))

(declare-fun b!779625 () Bool)

(assert (=> b!779625 (= e!433711 (Found!7987 (index!34317 lt!347443)))))

(assert (= (and d!102313 c!86366) b!779624))

(assert (= (and d!102313 (not c!86366)) b!779621))

(assert (= (and b!779621 c!86365) b!779625))

(assert (= (and b!779621 (not c!86365)) b!779622))

(assert (= (and b!779622 c!86367) b!779620))

(assert (= (and b!779622 (not c!86367)) b!779623))

(declare-fun m!723199 () Bool)

(assert (=> b!779621 m!723199))

(assert (=> d!102313 m!723135))

(declare-fun m!723201 () Bool)

(assert (=> d!102313 m!723201))

(declare-fun m!723203 () Bool)

(assert (=> d!102313 m!723203))

(declare-fun m!723205 () Bool)

(assert (=> d!102313 m!723205))

(declare-fun m!723207 () Bool)

(assert (=> d!102313 m!723207))

(assert (=> d!102313 m!723201))

(declare-fun m!723209 () Bool)

(assert (=> d!102313 m!723209))

(declare-fun m!723211 () Bool)

(assert (=> b!779623 m!723211))

(assert (=> b!779541 d!102313))

(declare-fun b!779626 () Bool)

(declare-fun e!433712 () SeekEntryResult!7987)

(declare-fun lt!347446 () SeekEntryResult!7987)

(assert (=> b!779626 (= e!433712 (MissingZero!7987 (index!34317 lt!347446)))))

(declare-fun b!779627 () Bool)

(declare-fun e!433713 () SeekEntryResult!7987)

(declare-fun e!433714 () SeekEntryResult!7987)

(assert (=> b!779627 (= e!433713 e!433714)))

(declare-fun lt!347444 () (_ BitVec 64))

(assert (=> b!779627 (= lt!347444 (select (arr!20380 a!3186) (index!34317 lt!347446)))))

(declare-fun c!86368 () Bool)

(assert (=> b!779627 (= c!86368 (= lt!347444 (select (arr!20380 a!3186) j!159)))))

(declare-fun d!102315 () Bool)

(declare-fun lt!347445 () SeekEntryResult!7987)

(assert (=> d!102315 (and (or ((_ is Undefined!7987) lt!347445) (not ((_ is Found!7987) lt!347445)) (and (bvsge (index!34316 lt!347445) #b00000000000000000000000000000000) (bvslt (index!34316 lt!347445) (size!20801 a!3186)))) (or ((_ is Undefined!7987) lt!347445) ((_ is Found!7987) lt!347445) (not ((_ is MissingZero!7987) lt!347445)) (and (bvsge (index!34315 lt!347445) #b00000000000000000000000000000000) (bvslt (index!34315 lt!347445) (size!20801 a!3186)))) (or ((_ is Undefined!7987) lt!347445) ((_ is Found!7987) lt!347445) ((_ is MissingZero!7987) lt!347445) (not ((_ is MissingVacant!7987) lt!347445)) (and (bvsge (index!34318 lt!347445) #b00000000000000000000000000000000) (bvslt (index!34318 lt!347445) (size!20801 a!3186)))) (or ((_ is Undefined!7987) lt!347445) (ite ((_ is Found!7987) lt!347445) (= (select (arr!20380 a!3186) (index!34316 lt!347445)) (select (arr!20380 a!3186) j!159)) (ite ((_ is MissingZero!7987) lt!347445) (= (select (arr!20380 a!3186) (index!34315 lt!347445)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!7987) lt!347445) (= (select (arr!20380 a!3186) (index!34318 lt!347445)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!102315 (= lt!347445 e!433713)))

(declare-fun c!86369 () Bool)

(assert (=> d!102315 (= c!86369 (and ((_ is Intermediate!7987) lt!347446) (undefined!8799 lt!347446)))))

(assert (=> d!102315 (= lt!347446 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20380 a!3186) j!159) mask!3328) (select (arr!20380 a!3186) j!159) a!3186 mask!3328))))

(assert (=> d!102315 (validMask!0 mask!3328)))

(assert (=> d!102315 (= (seekEntryOrOpen!0 (select (arr!20380 a!3186) j!159) a!3186 mask!3328) lt!347445)))

(declare-fun b!779628 () Bool)

(declare-fun c!86370 () Bool)

(assert (=> b!779628 (= c!86370 (= lt!347444 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!779628 (= e!433714 e!433712)))

(declare-fun b!779629 () Bool)

(assert (=> b!779629 (= e!433712 (seekKeyOrZeroReturnVacant!0 (x!65285 lt!347446) (index!34317 lt!347446) (index!34317 lt!347446) (select (arr!20380 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!779630 () Bool)

(assert (=> b!779630 (= e!433713 Undefined!7987)))

(declare-fun b!779631 () Bool)

(assert (=> b!779631 (= e!433714 (Found!7987 (index!34317 lt!347446)))))

(assert (= (and d!102315 c!86369) b!779630))

(assert (= (and d!102315 (not c!86369)) b!779627))

(assert (= (and b!779627 c!86368) b!779631))

(assert (= (and b!779627 (not c!86368)) b!779628))

(assert (= (and b!779628 c!86370) b!779626))

(assert (= (and b!779628 (not c!86370)) b!779629))

(declare-fun m!723213 () Bool)

(assert (=> b!779627 m!723213))

(assert (=> d!102315 m!723135))

(assert (=> d!102315 m!723131))

(assert (=> d!102315 m!723109))

(assert (=> d!102315 m!723133))

(declare-fun m!723215 () Bool)

(assert (=> d!102315 m!723215))

(declare-fun m!723217 () Bool)

(assert (=> d!102315 m!723217))

(assert (=> d!102315 m!723109))

(assert (=> d!102315 m!723131))

(declare-fun m!723219 () Bool)

(assert (=> d!102315 m!723219))

(assert (=> b!779629 m!723109))

(declare-fun m!723221 () Bool)

(assert (=> b!779629 m!723221))

(assert (=> b!779551 d!102315))

(declare-fun bm!35214 () Bool)

(declare-fun call!35217 () Bool)

(assert (=> bm!35214 (= call!35217 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!159 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun b!779640 () Bool)

(declare-fun e!433721 () Bool)

(declare-fun e!433722 () Bool)

(assert (=> b!779640 (= e!433721 e!433722)))

(declare-fun c!86373 () Bool)

(assert (=> b!779640 (= c!86373 (validKeyInArray!0 (select (arr!20380 a!3186) j!159)))))

(declare-fun d!102317 () Bool)

(declare-fun res!527700 () Bool)

(assert (=> d!102317 (=> res!527700 e!433721)))

(assert (=> d!102317 (= res!527700 (bvsge j!159 (size!20801 a!3186)))))

(assert (=> d!102317 (= (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328) e!433721)))

(declare-fun b!779641 () Bool)

(declare-fun e!433723 () Bool)

(assert (=> b!779641 (= e!433723 call!35217)))

(declare-fun b!779642 () Bool)

(assert (=> b!779642 (= e!433722 e!433723)))

(declare-fun lt!347453 () (_ BitVec 64))

(assert (=> b!779642 (= lt!347453 (select (arr!20380 a!3186) j!159))))

(declare-fun lt!347454 () Unit!26868)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!42582 (_ BitVec 64) (_ BitVec 32)) Unit!26868)

(assert (=> b!779642 (= lt!347454 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!347453 j!159))))

(assert (=> b!779642 (arrayContainsKey!0 a!3186 lt!347453 #b00000000000000000000000000000000)))

(declare-fun lt!347455 () Unit!26868)

(assert (=> b!779642 (= lt!347455 lt!347454)))

(declare-fun res!527701 () Bool)

(assert (=> b!779642 (= res!527701 (= (seekEntryOrOpen!0 (select (arr!20380 a!3186) j!159) a!3186 mask!3328) (Found!7987 j!159)))))

(assert (=> b!779642 (=> (not res!527701) (not e!433723))))

(declare-fun b!779643 () Bool)

(assert (=> b!779643 (= e!433722 call!35217)))

(assert (= (and d!102317 (not res!527700)) b!779640))

(assert (= (and b!779640 c!86373) b!779642))

(assert (= (and b!779640 (not c!86373)) b!779643))

(assert (= (and b!779642 res!527701) b!779641))

(assert (= (or b!779641 b!779643) bm!35214))

(declare-fun m!723223 () Bool)

(assert (=> bm!35214 m!723223))

(assert (=> b!779640 m!723109))

(assert (=> b!779640 m!723109))

(assert (=> b!779640 m!723141))

(assert (=> b!779642 m!723109))

(declare-fun m!723225 () Bool)

(assert (=> b!779642 m!723225))

(declare-fun m!723227 () Bool)

(assert (=> b!779642 m!723227))

(assert (=> b!779642 m!723109))

(assert (=> b!779642 m!723111))

(assert (=> b!779551 d!102317))

(declare-fun d!102321 () Bool)

(assert (=> d!102321 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!347458 () Unit!26868)

(declare-fun choose!38 (array!42582 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26868)

(assert (=> d!102321 (= lt!347458 (choose!38 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(assert (=> d!102321 (validMask!0 mask!3328)))

(assert (=> d!102321 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159) lt!347458)))

(declare-fun bs!21706 () Bool)

(assert (= bs!21706 d!102321))

(assert (=> bs!21706 m!723113))

(declare-fun m!723229 () Bool)

(assert (=> bs!21706 m!723229))

(assert (=> bs!21706 m!723135))

(assert (=> b!779551 d!102321))

(declare-fun d!102323 () Bool)

(assert (=> d!102323 (= (validMask!0 mask!3328) (and (or (= mask!3328 #b00000000000000000000000000000111) (= mask!3328 #b00000000000000000000000000001111) (= mask!3328 #b00000000000000000000000000011111) (= mask!3328 #b00000000000000000000000000111111) (= mask!3328 #b00000000000000000000000001111111) (= mask!3328 #b00000000000000000000000011111111) (= mask!3328 #b00000000000000000000000111111111) (= mask!3328 #b00000000000000000000001111111111) (= mask!3328 #b00000000000000000000011111111111) (= mask!3328 #b00000000000000000000111111111111) (= mask!3328 #b00000000000000000001111111111111) (= mask!3328 #b00000000000000000011111111111111) (= mask!3328 #b00000000000000000111111111111111) (= mask!3328 #b00000000000000001111111111111111) (= mask!3328 #b00000000000000011111111111111111) (= mask!3328 #b00000000000000111111111111111111) (= mask!3328 #b00000000000001111111111111111111) (= mask!3328 #b00000000000011111111111111111111) (= mask!3328 #b00000000000111111111111111111111) (= mask!3328 #b00000000001111111111111111111111) (= mask!3328 #b00000000011111111111111111111111) (= mask!3328 #b00000000111111111111111111111111) (= mask!3328 #b00000001111111111111111111111111) (= mask!3328 #b00000011111111111111111111111111) (= mask!3328 #b00000111111111111111111111111111) (= mask!3328 #b00001111111111111111111111111111) (= mask!3328 #b00011111111111111111111111111111) (= mask!3328 #b00111111111111111111111111111111)) (bvsle mask!3328 #b00111111111111111111111111111111)))))

(assert (=> start!67398 d!102323))

(declare-fun d!102327 () Bool)

(assert (=> d!102327 (= (array_inv!16154 a!3186) (bvsge (size!20801 a!3186) #b00000000000000000000000000000000))))

(assert (=> start!67398 d!102327))

(declare-fun d!102329 () Bool)

(assert (=> d!102329 (= (validKeyInArray!0 (select (arr!20380 a!3186) j!159)) (and (not (= (select (arr!20380 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!20380 a!3186) j!159) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!779540 d!102329))

(declare-fun b!779725 () Bool)

(declare-fun lt!347485 () SeekEntryResult!7987)

(assert (=> b!779725 (and (bvsge (index!34317 lt!347485) #b00000000000000000000000000000000) (bvslt (index!34317 lt!347485) (size!20801 lt!347403)))))

(declare-fun res!527717 () Bool)

(assert (=> b!779725 (= res!527717 (= (select (arr!20380 lt!347403) (index!34317 lt!347485)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!433770 () Bool)

(assert (=> b!779725 (=> res!527717 e!433770)))

(declare-fun b!779726 () Bool)

(assert (=> b!779726 (and (bvsge (index!34317 lt!347485) #b00000000000000000000000000000000) (bvslt (index!34317 lt!347485) (size!20801 lt!347403)))))

(declare-fun res!527718 () Bool)

(assert (=> b!779726 (= res!527718 (= (select (arr!20380 lt!347403) (index!34317 lt!347485)) lt!347397))))

(assert (=> b!779726 (=> res!527718 e!433770)))

(declare-fun e!433773 () Bool)

(assert (=> b!779726 (= e!433773 e!433770)))

(declare-fun e!433772 () SeekEntryResult!7987)

(declare-fun b!779727 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!779727 (= e!433772 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) lt!347397 lt!347403 mask!3328))))

(declare-fun b!779728 () Bool)

(declare-fun e!433771 () SeekEntryResult!7987)

(assert (=> b!779728 (= e!433771 e!433772)))

(declare-fun c!86408 () Bool)

(declare-fun lt!347484 () (_ BitVec 64))

(assert (=> b!779728 (= c!86408 (or (= lt!347484 lt!347397) (= (bvadd lt!347484 lt!347484) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!779729 () Bool)

(assert (=> b!779729 (and (bvsge (index!34317 lt!347485) #b00000000000000000000000000000000) (bvslt (index!34317 lt!347485) (size!20801 lt!347403)))))

(assert (=> b!779729 (= e!433770 (= (select (arr!20380 lt!347403) (index!34317 lt!347485)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!779730 () Bool)

(assert (=> b!779730 (= e!433771 (Intermediate!7987 true index!1321 x!1131))))

(declare-fun b!779731 () Bool)

(declare-fun e!433774 () Bool)

(assert (=> b!779731 (= e!433774 e!433773)))

(declare-fun res!527719 () Bool)

(assert (=> b!779731 (= res!527719 (and ((_ is Intermediate!7987) lt!347485) (not (undefined!8799 lt!347485)) (bvslt (x!65285 lt!347485) #b01111111111111111111111111111110) (bvsge (x!65285 lt!347485) #b00000000000000000000000000000000) (bvsge (x!65285 lt!347485) x!1131)))))

(assert (=> b!779731 (=> (not res!527719) (not e!433773))))

(declare-fun b!779733 () Bool)

(assert (=> b!779733 (= e!433772 (Intermediate!7987 false index!1321 x!1131))))

(declare-fun d!102331 () Bool)

(assert (=> d!102331 e!433774))

(declare-fun c!86407 () Bool)

(assert (=> d!102331 (= c!86407 (and ((_ is Intermediate!7987) lt!347485) (undefined!8799 lt!347485)))))

(assert (=> d!102331 (= lt!347485 e!433771)))

(declare-fun c!86409 () Bool)

(assert (=> d!102331 (= c!86409 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!102331 (= lt!347484 (select (arr!20380 lt!347403) index!1321))))

(assert (=> d!102331 (validMask!0 mask!3328)))

(assert (=> d!102331 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!347397 lt!347403 mask!3328) lt!347485)))

(declare-fun b!779732 () Bool)

(assert (=> b!779732 (= e!433774 (bvsge (x!65285 lt!347485) #b01111111111111111111111111111110))))

(assert (= (and d!102331 c!86409) b!779730))

(assert (= (and d!102331 (not c!86409)) b!779728))

(assert (= (and b!779728 c!86408) b!779733))

(assert (= (and b!779728 (not c!86408)) b!779727))

(assert (= (and d!102331 c!86407) b!779732))

(assert (= (and d!102331 (not c!86407)) b!779731))

(assert (= (and b!779731 res!527719) b!779726))

(assert (= (and b!779726 (not res!527718)) b!779725))

(assert (= (and b!779725 (not res!527717)) b!779729))

(declare-fun m!723263 () Bool)

(assert (=> d!102331 m!723263))

(assert (=> d!102331 m!723135))

(declare-fun m!723265 () Bool)

(assert (=> b!779726 m!723265))

(declare-fun m!723269 () Bool)

(assert (=> b!779727 m!723269))

(assert (=> b!779727 m!723269))

(declare-fun m!723273 () Bool)

(assert (=> b!779727 m!723273))

(assert (=> b!779729 m!723265))

(assert (=> b!779725 m!723265))

(assert (=> b!779550 d!102331))

(declare-fun b!779740 () Bool)

(declare-fun lt!347490 () SeekEntryResult!7987)

(assert (=> b!779740 (and (bvsge (index!34317 lt!347490) #b00000000000000000000000000000000) (bvslt (index!34317 lt!347490) (size!20801 lt!347403)))))

(declare-fun res!527720 () Bool)

(assert (=> b!779740 (= res!527720 (= (select (arr!20380 lt!347403) (index!34317 lt!347490)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!433778 () Bool)

(assert (=> b!779740 (=> res!527720 e!433778)))

(declare-fun b!779741 () Bool)

(assert (=> b!779741 (and (bvsge (index!34317 lt!347490) #b00000000000000000000000000000000) (bvslt (index!34317 lt!347490) (size!20801 lt!347403)))))

(declare-fun res!527721 () Bool)

(assert (=> b!779741 (= res!527721 (= (select (arr!20380 lt!347403) (index!34317 lt!347490)) lt!347397))))

(assert (=> b!779741 (=> res!527721 e!433778)))

(declare-fun e!433781 () Bool)

(assert (=> b!779741 (= e!433781 e!433778)))

(declare-fun b!779742 () Bool)

(declare-fun e!433780 () SeekEntryResult!7987)

(assert (=> b!779742 (= e!433780 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!347397 mask!3328) #b00000000000000000000000000000000 mask!3328) lt!347397 lt!347403 mask!3328))))

(declare-fun b!779743 () Bool)

(declare-fun e!433779 () SeekEntryResult!7987)

(assert (=> b!779743 (= e!433779 e!433780)))

(declare-fun c!86414 () Bool)

(declare-fun lt!347489 () (_ BitVec 64))

(assert (=> b!779743 (= c!86414 (or (= lt!347489 lt!347397) (= (bvadd lt!347489 lt!347489) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!779744 () Bool)

(assert (=> b!779744 (and (bvsge (index!34317 lt!347490) #b00000000000000000000000000000000) (bvslt (index!34317 lt!347490) (size!20801 lt!347403)))))

(assert (=> b!779744 (= e!433778 (= (select (arr!20380 lt!347403) (index!34317 lt!347490)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!779745 () Bool)

(assert (=> b!779745 (= e!433779 (Intermediate!7987 true (toIndex!0 lt!347397 mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!779746 () Bool)

(declare-fun e!433782 () Bool)

(assert (=> b!779746 (= e!433782 e!433781)))

(declare-fun res!527722 () Bool)

(assert (=> b!779746 (= res!527722 (and ((_ is Intermediate!7987) lt!347490) (not (undefined!8799 lt!347490)) (bvslt (x!65285 lt!347490) #b01111111111111111111111111111110) (bvsge (x!65285 lt!347490) #b00000000000000000000000000000000) (bvsge (x!65285 lt!347490) #b00000000000000000000000000000000)))))

(assert (=> b!779746 (=> (not res!527722) (not e!433781))))

(declare-fun b!779748 () Bool)

(assert (=> b!779748 (= e!433780 (Intermediate!7987 false (toIndex!0 lt!347397 mask!3328) #b00000000000000000000000000000000))))

(declare-fun d!102339 () Bool)

(assert (=> d!102339 e!433782))

(declare-fun c!86413 () Bool)

(assert (=> d!102339 (= c!86413 (and ((_ is Intermediate!7987) lt!347490) (undefined!8799 lt!347490)))))

(assert (=> d!102339 (= lt!347490 e!433779)))

(declare-fun c!86415 () Bool)

(assert (=> d!102339 (= c!86415 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!102339 (= lt!347489 (select (arr!20380 lt!347403) (toIndex!0 lt!347397 mask!3328)))))

(assert (=> d!102339 (validMask!0 mask!3328)))

(assert (=> d!102339 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!347397 mask!3328) lt!347397 lt!347403 mask!3328) lt!347490)))

(declare-fun b!779747 () Bool)

(assert (=> b!779747 (= e!433782 (bvsge (x!65285 lt!347490) #b01111111111111111111111111111110))))

(assert (= (and d!102339 c!86415) b!779745))

(assert (= (and d!102339 (not c!86415)) b!779743))

(assert (= (and b!779743 c!86414) b!779748))

(assert (= (and b!779743 (not c!86414)) b!779742))

(assert (= (and d!102339 c!86413) b!779747))

(assert (= (and d!102339 (not c!86413)) b!779746))

(assert (= (and b!779746 res!527722) b!779741))

(assert (= (and b!779741 (not res!527721)) b!779740))

(assert (= (and b!779740 (not res!527720)) b!779744))

(assert (=> d!102339 m!723143))

(declare-fun m!723281 () Bool)

(assert (=> d!102339 m!723281))

(assert (=> d!102339 m!723135))

(declare-fun m!723283 () Bool)

(assert (=> b!779741 m!723283))

(assert (=> b!779742 m!723143))

(declare-fun m!723285 () Bool)

(assert (=> b!779742 m!723285))

(assert (=> b!779742 m!723285))

(declare-fun m!723287 () Bool)

(assert (=> b!779742 m!723287))

(assert (=> b!779744 m!723283))

(assert (=> b!779740 m!723283))

(assert (=> b!779550 d!102339))

(declare-fun d!102343 () Bool)

(declare-fun lt!347502 () (_ BitVec 32))

(declare-fun lt!347501 () (_ BitVec 32))

(assert (=> d!102343 (= lt!347502 (bvmul (bvxor lt!347501 (bvlshr lt!347501 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!102343 (= lt!347501 ((_ extract 31 0) (bvand (bvxor lt!347397 (bvlshr lt!347397 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!102343 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!527723 (let ((h!15547 ((_ extract 31 0) (bvand (bvxor lt!347397 (bvlshr lt!347397 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!65289 (bvmul (bvxor h!15547 (bvlshr h!15547 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!65289 (bvlshr x!65289 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!527723 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!527723 #b00000000000000000000000000000000))))))

(assert (=> d!102343 (= (toIndex!0 lt!347397 mask!3328) (bvand (bvxor lt!347502 (bvlshr lt!347502 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!779550 d!102343))

(declare-fun d!102345 () Bool)

(declare-fun res!527732 () Bool)

(declare-fun e!433793 () Bool)

(assert (=> d!102345 (=> res!527732 e!433793)))

(assert (=> d!102345 (= res!527732 (= (select (arr!20380 a!3186) #b00000000000000000000000000000000) k0!2102))))

(assert (=> d!102345 (= (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000) e!433793)))

(declare-fun b!779761 () Bool)

(declare-fun e!433794 () Bool)

(assert (=> b!779761 (= e!433793 e!433794)))

(declare-fun res!527733 () Bool)

(assert (=> b!779761 (=> (not res!527733) (not e!433794))))

(assert (=> b!779761 (= res!527733 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!20801 a!3186)))))

(declare-fun b!779762 () Bool)

(assert (=> b!779762 (= e!433794 (arrayContainsKey!0 a!3186 k0!2102 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!102345 (not res!527732)) b!779761))

(assert (= (and b!779761 res!527733) b!779762))

(declare-fun m!723289 () Bool)

(assert (=> d!102345 m!723289))

(declare-fun m!723291 () Bool)

(assert (=> b!779762 m!723291))

(assert (=> b!779549 d!102345))

(declare-fun b!779767 () Bool)

(declare-fun lt!347507 () SeekEntryResult!7987)

(assert (=> b!779767 (and (bvsge (index!34317 lt!347507) #b00000000000000000000000000000000) (bvslt (index!34317 lt!347507) (size!20801 a!3186)))))

(declare-fun res!527736 () Bool)

(assert (=> b!779767 (= res!527736 (= (select (arr!20380 a!3186) (index!34317 lt!347507)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!433798 () Bool)

(assert (=> b!779767 (=> res!527736 e!433798)))

(declare-fun b!779768 () Bool)

(assert (=> b!779768 (and (bvsge (index!34317 lt!347507) #b00000000000000000000000000000000) (bvslt (index!34317 lt!347507) (size!20801 a!3186)))))

(declare-fun res!527737 () Bool)

(assert (=> b!779768 (= res!527737 (= (select (arr!20380 a!3186) (index!34317 lt!347507)) (select (arr!20380 a!3186) j!159)))))

(assert (=> b!779768 (=> res!527737 e!433798)))

(declare-fun e!433801 () Bool)

(assert (=> b!779768 (= e!433801 e!433798)))

(declare-fun e!433800 () SeekEntryResult!7987)

(declare-fun b!779769 () Bool)

(assert (=> b!779769 (= e!433800 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!20380 a!3186) j!159) mask!3328) #b00000000000000000000000000000000 mask!3328) (select (arr!20380 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!779770 () Bool)

(declare-fun e!433799 () SeekEntryResult!7987)

(assert (=> b!779770 (= e!433799 e!433800)))

(declare-fun c!86420 () Bool)

(declare-fun lt!347506 () (_ BitVec 64))

(assert (=> b!779770 (= c!86420 (or (= lt!347506 (select (arr!20380 a!3186) j!159)) (= (bvadd lt!347506 lt!347506) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!779771 () Bool)

(assert (=> b!779771 (and (bvsge (index!34317 lt!347507) #b00000000000000000000000000000000) (bvslt (index!34317 lt!347507) (size!20801 a!3186)))))

(assert (=> b!779771 (= e!433798 (= (select (arr!20380 a!3186) (index!34317 lt!347507)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!779772 () Bool)

(assert (=> b!779772 (= e!433799 (Intermediate!7987 true (toIndex!0 (select (arr!20380 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!779773 () Bool)

(declare-fun e!433802 () Bool)

(assert (=> b!779773 (= e!433802 e!433801)))

(declare-fun res!527738 () Bool)

(assert (=> b!779773 (= res!527738 (and ((_ is Intermediate!7987) lt!347507) (not (undefined!8799 lt!347507)) (bvslt (x!65285 lt!347507) #b01111111111111111111111111111110) (bvsge (x!65285 lt!347507) #b00000000000000000000000000000000) (bvsge (x!65285 lt!347507) #b00000000000000000000000000000000)))))

(assert (=> b!779773 (=> (not res!527738) (not e!433801))))

(declare-fun b!779775 () Bool)

(assert (=> b!779775 (= e!433800 (Intermediate!7987 false (toIndex!0 (select (arr!20380 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun d!102347 () Bool)

(assert (=> d!102347 e!433802))

(declare-fun c!86419 () Bool)

(assert (=> d!102347 (= c!86419 (and ((_ is Intermediate!7987) lt!347507) (undefined!8799 lt!347507)))))

(assert (=> d!102347 (= lt!347507 e!433799)))

(declare-fun c!86421 () Bool)

(assert (=> d!102347 (= c!86421 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!102347 (= lt!347506 (select (arr!20380 a!3186) (toIndex!0 (select (arr!20380 a!3186) j!159) mask!3328)))))

(assert (=> d!102347 (validMask!0 mask!3328)))

(assert (=> d!102347 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20380 a!3186) j!159) mask!3328) (select (arr!20380 a!3186) j!159) a!3186 mask!3328) lt!347507)))

(declare-fun b!779774 () Bool)

(assert (=> b!779774 (= e!433802 (bvsge (x!65285 lt!347507) #b01111111111111111111111111111110))))

(assert (= (and d!102347 c!86421) b!779772))

(assert (= (and d!102347 (not c!86421)) b!779770))

(assert (= (and b!779770 c!86420) b!779775))

(assert (= (and b!779770 (not c!86420)) b!779769))

(assert (= (and d!102347 c!86419) b!779774))

(assert (= (and d!102347 (not c!86419)) b!779773))

(assert (= (and b!779773 res!527738) b!779768))

(assert (= (and b!779768 (not res!527737)) b!779767))

(assert (= (and b!779767 (not res!527736)) b!779771))

(assert (=> d!102347 m!723131))

(declare-fun m!723299 () Bool)

(assert (=> d!102347 m!723299))

(assert (=> d!102347 m!723135))

(declare-fun m!723301 () Bool)

(assert (=> b!779768 m!723301))

(assert (=> b!779769 m!723131))

(declare-fun m!723303 () Bool)

(assert (=> b!779769 m!723303))

(assert (=> b!779769 m!723303))

(assert (=> b!779769 m!723109))

(declare-fun m!723305 () Bool)

(assert (=> b!779769 m!723305))

(assert (=> b!779771 m!723301))

(assert (=> b!779767 m!723301))

(assert (=> b!779538 d!102347))

(declare-fun d!102351 () Bool)

(declare-fun lt!347509 () (_ BitVec 32))

(declare-fun lt!347508 () (_ BitVec 32))

(assert (=> d!102351 (= lt!347509 (bvmul (bvxor lt!347508 (bvlshr lt!347508 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!102351 (= lt!347508 ((_ extract 31 0) (bvand (bvxor (select (arr!20380 a!3186) j!159) (bvlshr (select (arr!20380 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!102351 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!527723 (let ((h!15547 ((_ extract 31 0) (bvand (bvxor (select (arr!20380 a!3186) j!159) (bvlshr (select (arr!20380 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!65289 (bvmul (bvxor h!15547 (bvlshr h!15547 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!65289 (bvlshr x!65289 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!527723 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!527723 #b00000000000000000000000000000000))))))

(assert (=> d!102351 (= (toIndex!0 (select (arr!20380 a!3186) j!159) mask!3328) (bvand (bvxor lt!347509 (bvlshr lt!347509 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!779538 d!102351))

(declare-fun b!779824 () Bool)

(declare-fun e!433830 () SeekEntryResult!7987)

(assert (=> b!779824 (= e!433830 (MissingVacant!7987 resIntermediateIndex!5))))

(declare-fun b!779825 () Bool)

(declare-fun e!433831 () SeekEntryResult!7987)

(assert (=> b!779825 (= e!433831 (Found!7987 index!1321))))

(declare-fun b!779826 () Bool)

(declare-fun e!433832 () SeekEntryResult!7987)

(assert (=> b!779826 (= e!433832 Undefined!7987)))

(declare-fun b!779827 () Bool)

(assert (=> b!779827 (= e!433832 e!433831)))

(declare-fun c!86445 () Bool)

(declare-fun lt!347534 () (_ BitVec 64))

(assert (=> b!779827 (= c!86445 (= lt!347534 (select (arr!20380 a!3186) j!159)))))

(declare-fun b!779828 () Bool)

(assert (=> b!779828 (= e!433830 (seekKeyOrZeroReturnVacant!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) resIntermediateIndex!5 (select (arr!20380 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!779829 () Bool)

(declare-fun c!86443 () Bool)

(assert (=> b!779829 (= c!86443 (= lt!347534 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!779829 (= e!433831 e!433830)))

(declare-fun lt!347535 () SeekEntryResult!7987)

(declare-fun d!102353 () Bool)

(assert (=> d!102353 (and (or ((_ is Undefined!7987) lt!347535) (not ((_ is Found!7987) lt!347535)) (and (bvsge (index!34316 lt!347535) #b00000000000000000000000000000000) (bvslt (index!34316 lt!347535) (size!20801 a!3186)))) (or ((_ is Undefined!7987) lt!347535) ((_ is Found!7987) lt!347535) (not ((_ is MissingVacant!7987) lt!347535)) (not (= (index!34318 lt!347535) resIntermediateIndex!5)) (and (bvsge (index!34318 lt!347535) #b00000000000000000000000000000000) (bvslt (index!34318 lt!347535) (size!20801 a!3186)))) (or ((_ is Undefined!7987) lt!347535) (ite ((_ is Found!7987) lt!347535) (= (select (arr!20380 a!3186) (index!34316 lt!347535)) (select (arr!20380 a!3186) j!159)) (and ((_ is MissingVacant!7987) lt!347535) (= (index!34318 lt!347535) resIntermediateIndex!5) (= (select (arr!20380 a!3186) (index!34318 lt!347535)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!102353 (= lt!347535 e!433832)))

(declare-fun c!86444 () Bool)

(assert (=> d!102353 (= c!86444 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!102353 (= lt!347534 (select (arr!20380 a!3186) index!1321))))

(assert (=> d!102353 (validMask!0 mask!3328)))

(assert (=> d!102353 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20380 a!3186) j!159) a!3186 mask!3328) lt!347535)))

(assert (= (and d!102353 c!86444) b!779826))

(assert (= (and d!102353 (not c!86444)) b!779827))

(assert (= (and b!779827 c!86445) b!779825))

(assert (= (and b!779827 (not c!86445)) b!779829))

(assert (= (and b!779829 c!86443) b!779824))

(assert (= (and b!779829 (not c!86443)) b!779828))

(assert (=> b!779828 m!723269))

(assert (=> b!779828 m!723269))

(assert (=> b!779828 m!723109))

(declare-fun m!723335 () Bool)

(assert (=> b!779828 m!723335))

(declare-fun m!723337 () Bool)

(assert (=> d!102353 m!723337))

(declare-fun m!723339 () Bool)

(assert (=> d!102353 m!723339))

(declare-fun m!723341 () Bool)

(assert (=> d!102353 m!723341))

(assert (=> d!102353 m!723135))

(assert (=> b!779548 d!102353))

(declare-fun d!102363 () Bool)

(declare-fun res!527759 () Bool)

(declare-fun e!433853 () Bool)

(assert (=> d!102363 (=> res!527759 e!433853)))

(assert (=> d!102363 (= res!527759 (bvsge #b00000000000000000000000000000000 (size!20801 a!3186)))))

(assert (=> d!102363 (= (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14432) e!433853)))

(declare-fun b!779858 () Bool)

(declare-fun e!433854 () Bool)

(assert (=> b!779858 (= e!433853 e!433854)))

(declare-fun res!527758 () Bool)

(assert (=> b!779858 (=> (not res!527758) (not e!433854))))

(declare-fun e!433851 () Bool)

(assert (=> b!779858 (= res!527758 (not e!433851))))

(declare-fun res!527757 () Bool)

(assert (=> b!779858 (=> (not res!527757) (not e!433851))))

(assert (=> b!779858 (= res!527757 (validKeyInArray!0 (select (arr!20380 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!779859 () Bool)

(declare-fun contains!4104 (List!14435 (_ BitVec 64)) Bool)

(assert (=> b!779859 (= e!433851 (contains!4104 Nil!14432 (select (arr!20380 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!779860 () Bool)

(declare-fun e!433852 () Bool)

(declare-fun call!35229 () Bool)

(assert (=> b!779860 (= e!433852 call!35229)))

(declare-fun b!779861 () Bool)

(assert (=> b!779861 (= e!433854 e!433852)))

(declare-fun c!86454 () Bool)

(assert (=> b!779861 (= c!86454 (validKeyInArray!0 (select (arr!20380 a!3186) #b00000000000000000000000000000000)))))

(declare-fun bm!35226 () Bool)

(assert (=> bm!35226 (= call!35229 (arrayNoDuplicates!0 a!3186 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!86454 (Cons!14431 (select (arr!20380 a!3186) #b00000000000000000000000000000000) Nil!14432) Nil!14432)))))

(declare-fun b!779862 () Bool)

(assert (=> b!779862 (= e!433852 call!35229)))

(assert (= (and d!102363 (not res!527759)) b!779858))

(assert (= (and b!779858 res!527757) b!779859))

(assert (= (and b!779858 res!527758) b!779861))

(assert (= (and b!779861 c!86454) b!779862))

(assert (= (and b!779861 (not c!86454)) b!779860))

(assert (= (or b!779862 b!779860) bm!35226))

(assert (=> b!779858 m!723289))

(assert (=> b!779858 m!723289))

(declare-fun m!723343 () Bool)

(assert (=> b!779858 m!723343))

(assert (=> b!779859 m!723289))

(assert (=> b!779859 m!723289))

(declare-fun m!723345 () Bool)

(assert (=> b!779859 m!723345))

(assert (=> b!779861 m!723289))

(assert (=> b!779861 m!723289))

(assert (=> b!779861 m!723343))

(assert (=> bm!35226 m!723289))

(declare-fun m!723347 () Bool)

(assert (=> bm!35226 m!723347))

(assert (=> b!779547 d!102363))

(declare-fun bm!35227 () Bool)

(declare-fun call!35230 () Bool)

(assert (=> bm!35227 (= call!35230 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun b!779872 () Bool)

(declare-fun e!433860 () Bool)

(declare-fun e!433861 () Bool)

(assert (=> b!779872 (= e!433860 e!433861)))

(declare-fun c!86458 () Bool)

(assert (=> b!779872 (= c!86458 (validKeyInArray!0 (select (arr!20380 a!3186) #b00000000000000000000000000000000)))))

(declare-fun d!102365 () Bool)

(declare-fun res!527763 () Bool)

(assert (=> d!102365 (=> res!527763 e!433860)))

(assert (=> d!102365 (= res!527763 (bvsge #b00000000000000000000000000000000 (size!20801 a!3186)))))

(assert (=> d!102365 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328) e!433860)))

(declare-fun b!779873 () Bool)

(declare-fun e!433862 () Bool)

(assert (=> b!779873 (= e!433862 call!35230)))

(declare-fun b!779874 () Bool)

(assert (=> b!779874 (= e!433861 e!433862)))

(declare-fun lt!347542 () (_ BitVec 64))

(assert (=> b!779874 (= lt!347542 (select (arr!20380 a!3186) #b00000000000000000000000000000000))))

(declare-fun lt!347543 () Unit!26868)

(assert (=> b!779874 (= lt!347543 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!347542 #b00000000000000000000000000000000))))

(assert (=> b!779874 (arrayContainsKey!0 a!3186 lt!347542 #b00000000000000000000000000000000)))

(declare-fun lt!347544 () Unit!26868)

(assert (=> b!779874 (= lt!347544 lt!347543)))

(declare-fun res!527764 () Bool)

(assert (=> b!779874 (= res!527764 (= (seekEntryOrOpen!0 (select (arr!20380 a!3186) #b00000000000000000000000000000000) a!3186 mask!3328) (Found!7987 #b00000000000000000000000000000000)))))

(assert (=> b!779874 (=> (not res!527764) (not e!433862))))

(declare-fun b!779875 () Bool)

(assert (=> b!779875 (= e!433861 call!35230)))

(assert (= (and d!102365 (not res!527763)) b!779872))

(assert (= (and b!779872 c!86458) b!779874))

(assert (= (and b!779872 (not c!86458)) b!779875))

(assert (= (and b!779874 res!527764) b!779873))

(assert (= (or b!779873 b!779875) bm!35227))

(declare-fun m!723351 () Bool)

(assert (=> bm!35227 m!723351))

(assert (=> b!779872 m!723289))

(assert (=> b!779872 m!723289))

(assert (=> b!779872 m!723343))

(assert (=> b!779874 m!723289))

(declare-fun m!723357 () Bool)

(assert (=> b!779874 m!723357))

(declare-fun m!723359 () Bool)

(assert (=> b!779874 m!723359))

(assert (=> b!779874 m!723289))

(declare-fun m!723361 () Bool)

(assert (=> b!779874 m!723361))

(assert (=> b!779536 d!102365))

(declare-fun b!779885 () Bool)

(declare-fun e!433868 () SeekEntryResult!7987)

(assert (=> b!779885 (= e!433868 (MissingVacant!7987 resIntermediateIndex!5))))

(declare-fun b!779886 () Bool)

(declare-fun e!433869 () SeekEntryResult!7987)

(assert (=> b!779886 (= e!433869 (Found!7987 resIntermediateIndex!5))))

(declare-fun b!779887 () Bool)

(declare-fun e!433870 () SeekEntryResult!7987)

(assert (=> b!779887 (= e!433870 Undefined!7987)))

(declare-fun b!779888 () Bool)

(assert (=> b!779888 (= e!433870 e!433869)))

(declare-fun c!86464 () Bool)

(declare-fun lt!347547 () (_ BitVec 64))

(assert (=> b!779888 (= c!86464 (= lt!347547 (select (arr!20380 a!3186) j!159)))))

(declare-fun b!779889 () Bool)

(assert (=> b!779889 (= e!433868 (seekKeyOrZeroReturnVacant!0 (bvadd resIntermediateX!5 #b00000000000000000000000000000001) (nextIndex!0 resIntermediateIndex!5 resIntermediateX!5 mask!3328) resIntermediateIndex!5 (select (arr!20380 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!779890 () Bool)

(declare-fun c!86462 () Bool)

(assert (=> b!779890 (= c!86462 (= lt!347547 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!779890 (= e!433869 e!433868)))

(declare-fun lt!347548 () SeekEntryResult!7987)

(declare-fun d!102369 () Bool)

(assert (=> d!102369 (and (or ((_ is Undefined!7987) lt!347548) (not ((_ is Found!7987) lt!347548)) (and (bvsge (index!34316 lt!347548) #b00000000000000000000000000000000) (bvslt (index!34316 lt!347548) (size!20801 a!3186)))) (or ((_ is Undefined!7987) lt!347548) ((_ is Found!7987) lt!347548) (not ((_ is MissingVacant!7987) lt!347548)) (not (= (index!34318 lt!347548) resIntermediateIndex!5)) (and (bvsge (index!34318 lt!347548) #b00000000000000000000000000000000) (bvslt (index!34318 lt!347548) (size!20801 a!3186)))) (or ((_ is Undefined!7987) lt!347548) (ite ((_ is Found!7987) lt!347548) (= (select (arr!20380 a!3186) (index!34316 lt!347548)) (select (arr!20380 a!3186) j!159)) (and ((_ is MissingVacant!7987) lt!347548) (= (index!34318 lt!347548) resIntermediateIndex!5) (= (select (arr!20380 a!3186) (index!34318 lt!347548)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!102369 (= lt!347548 e!433870)))

(declare-fun c!86463 () Bool)

(assert (=> d!102369 (= c!86463 (bvsge resIntermediateX!5 #b01111111111111111111111111111110))))

(assert (=> d!102369 (= lt!347547 (select (arr!20380 a!3186) resIntermediateIndex!5))))

(assert (=> d!102369 (validMask!0 mask!3328)))

(assert (=> d!102369 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20380 a!3186) j!159) a!3186 mask!3328) lt!347548)))

(assert (= (and d!102369 c!86463) b!779887))

(assert (= (and d!102369 (not c!86463)) b!779888))

(assert (= (and b!779888 c!86464) b!779886))

(assert (= (and b!779888 (not c!86464)) b!779890))

(assert (= (and b!779890 c!86462) b!779885))

(assert (= (and b!779890 (not c!86462)) b!779889))

(declare-fun m!723363 () Bool)

(assert (=> b!779889 m!723363))

(assert (=> b!779889 m!723363))

(assert (=> b!779889 m!723109))

(declare-fun m!723367 () Bool)

(assert (=> b!779889 m!723367))

(declare-fun m!723369 () Bool)

(assert (=> d!102369 m!723369))

(declare-fun m!723371 () Bool)

(assert (=> d!102369 m!723371))

(assert (=> d!102369 m!723125))

(assert (=> d!102369 m!723135))

(assert (=> b!779546 d!102369))

(assert (=> b!779543 d!102353))

(declare-fun d!102371 () Bool)

(assert (=> d!102371 (= (validKeyInArray!0 k0!2102) (and (not (= k0!2102 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2102 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!779553 d!102371))

(declare-fun b!779891 () Bool)

(declare-fun lt!347550 () SeekEntryResult!7987)

(assert (=> b!779891 (and (bvsge (index!34317 lt!347550) #b00000000000000000000000000000000) (bvslt (index!34317 lt!347550) (size!20801 a!3186)))))

(declare-fun res!527768 () Bool)

(assert (=> b!779891 (= res!527768 (= (select (arr!20380 a!3186) (index!34317 lt!347550)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!433871 () Bool)

(assert (=> b!779891 (=> res!527768 e!433871)))

(declare-fun b!779892 () Bool)

(assert (=> b!779892 (and (bvsge (index!34317 lt!347550) #b00000000000000000000000000000000) (bvslt (index!34317 lt!347550) (size!20801 a!3186)))))

(declare-fun res!527769 () Bool)

(assert (=> b!779892 (= res!527769 (= (select (arr!20380 a!3186) (index!34317 lt!347550)) (select (arr!20380 a!3186) j!159)))))

(assert (=> b!779892 (=> res!527769 e!433871)))

(declare-fun e!433874 () Bool)

(assert (=> b!779892 (= e!433874 e!433871)))

(declare-fun b!779893 () Bool)

(declare-fun e!433873 () SeekEntryResult!7987)

(assert (=> b!779893 (= e!433873 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) (select (arr!20380 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!779894 () Bool)

(declare-fun e!433872 () SeekEntryResult!7987)

(assert (=> b!779894 (= e!433872 e!433873)))

(declare-fun c!86466 () Bool)

(declare-fun lt!347549 () (_ BitVec 64))

(assert (=> b!779894 (= c!86466 (or (= lt!347549 (select (arr!20380 a!3186) j!159)) (= (bvadd lt!347549 lt!347549) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!779895 () Bool)

(assert (=> b!779895 (and (bvsge (index!34317 lt!347550) #b00000000000000000000000000000000) (bvslt (index!34317 lt!347550) (size!20801 a!3186)))))

(assert (=> b!779895 (= e!433871 (= (select (arr!20380 a!3186) (index!34317 lt!347550)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!779896 () Bool)

(assert (=> b!779896 (= e!433872 (Intermediate!7987 true index!1321 x!1131))))

(declare-fun b!779897 () Bool)

(declare-fun e!433875 () Bool)

(assert (=> b!779897 (= e!433875 e!433874)))

(declare-fun res!527770 () Bool)

(assert (=> b!779897 (= res!527770 (and ((_ is Intermediate!7987) lt!347550) (not (undefined!8799 lt!347550)) (bvslt (x!65285 lt!347550) #b01111111111111111111111111111110) (bvsge (x!65285 lt!347550) #b00000000000000000000000000000000) (bvsge (x!65285 lt!347550) x!1131)))))

(assert (=> b!779897 (=> (not res!527770) (not e!433874))))

(declare-fun b!779899 () Bool)

(assert (=> b!779899 (= e!433873 (Intermediate!7987 false index!1321 x!1131))))

(declare-fun d!102375 () Bool)

(assert (=> d!102375 e!433875))

(declare-fun c!86465 () Bool)

(assert (=> d!102375 (= c!86465 (and ((_ is Intermediate!7987) lt!347550) (undefined!8799 lt!347550)))))

(assert (=> d!102375 (= lt!347550 e!433872)))

(declare-fun c!86467 () Bool)

(assert (=> d!102375 (= c!86467 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!102375 (= lt!347549 (select (arr!20380 a!3186) index!1321))))

(assert (=> d!102375 (validMask!0 mask!3328)))

(assert (=> d!102375 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20380 a!3186) j!159) a!3186 mask!3328) lt!347550)))

(declare-fun b!779898 () Bool)

(assert (=> b!779898 (= e!433875 (bvsge (x!65285 lt!347550) #b01111111111111111111111111111110))))

(assert (= (and d!102375 c!86467) b!779896))

(assert (= (and d!102375 (not c!86467)) b!779894))

(assert (= (and b!779894 c!86466) b!779899))

(assert (= (and b!779894 (not c!86466)) b!779893))

(assert (= (and d!102375 c!86465) b!779898))

(assert (= (and d!102375 (not c!86465)) b!779897))

(assert (= (and b!779897 res!527770) b!779892))

(assert (= (and b!779892 (not res!527769)) b!779891))

(assert (= (and b!779891 (not res!527768)) b!779895))

(assert (=> d!102375 m!723341))

(assert (=> d!102375 m!723135))

(declare-fun m!723379 () Bool)

(assert (=> b!779892 m!723379))

(assert (=> b!779893 m!723269))

(assert (=> b!779893 m!723269))

(assert (=> b!779893 m!723109))

(declare-fun m!723381 () Bool)

(assert (=> b!779893 m!723381))

(assert (=> b!779895 m!723379))

(assert (=> b!779891 m!723379))

(assert (=> b!779552 d!102375))

(check-sat (not d!102347) (not d!102369) (not b!779762) (not b!779769) (not b!779861) (not b!779640) (not bm!35226) (not b!779893) (not b!779874) (not d!102313) (not d!102353) (not bm!35227) (not d!102315) (not b!779727) (not b!779623) (not d!102339) (not b!779859) (not b!779742) (not d!102375) (not d!102321) (not b!779872) (not b!779629) (not d!102331) (not b!779889) (not b!779828) (not bm!35214) (not b!779858) (not b!779642))
(check-sat)
