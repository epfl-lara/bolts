; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!66510 () Bool)

(assert start!66510)

(declare-fun b!766382 () Bool)

(declare-fun res!518683 () Bool)

(declare-fun e!426790 () Bool)

(assert (=> b!766382 (=> (not res!518683) (not e!426790))))

(declare-datatypes ((array!42242 0))(
  ( (array!42243 (arr!20222 (Array (_ BitVec 32) (_ BitVec 64))) (size!20643 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42242)

(declare-datatypes ((List!14277 0))(
  ( (Nil!14274) (Cons!14273 (h!15363 (_ BitVec 64)) (t!20600 List!14277)) )
))
(declare-fun arrayNoDuplicates!0 (array!42242 (_ BitVec 32) List!14277) Bool)

(assert (=> b!766382 (= res!518683 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14274))))

(declare-fun b!766383 () Bool)

(declare-fun res!518679 () Bool)

(declare-fun e!426787 () Bool)

(assert (=> b!766383 (=> (not res!518679) (not e!426787))))

(declare-fun e!426792 () Bool)

(assert (=> b!766383 (= res!518679 e!426792)))

(declare-fun c!84246 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!766383 (= c!84246 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!766384 () Bool)

(declare-fun e!426793 () Bool)

(declare-fun e!426794 () Bool)

(assert (=> b!766384 (= e!426793 e!426794)))

(declare-fun res!518682 () Bool)

(assert (=> b!766384 (=> (not res!518682) (not e!426794))))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7829 0))(
  ( (MissingZero!7829 (index!33683 (_ BitVec 32))) (Found!7829 (index!33684 (_ BitVec 32))) (Intermediate!7829 (undefined!8641 Bool) (index!33685 (_ BitVec 32)) (x!64612 (_ BitVec 32))) (Undefined!7829) (MissingVacant!7829 (index!33686 (_ BitVec 32))) )
))
(declare-fun lt!340944 () SeekEntryResult!7829)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42242 (_ BitVec 32)) SeekEntryResult!7829)

(assert (=> b!766384 (= res!518682 (= (seekEntryOrOpen!0 (select (arr!20222 a!3186) j!159) a!3186 mask!3328) lt!340944))))

(assert (=> b!766384 (= lt!340944 (Found!7829 j!159))))

(declare-fun res!518684 () Bool)

(declare-fun e!426785 () Bool)

(assert (=> start!66510 (=> (not res!518684) (not e!426785))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66510 (= res!518684 (validMask!0 mask!3328))))

(assert (=> start!66510 e!426785))

(assert (=> start!66510 true))

(declare-fun array_inv!15996 (array!42242) Bool)

(assert (=> start!66510 (array_inv!15996 a!3186)))

(declare-fun b!766385 () Bool)

(declare-fun res!518680 () Bool)

(assert (=> b!766385 (=> (not res!518680) (not e!426790))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!766385 (= res!518680 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20643 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20643 a!3186))))))

(declare-fun b!766386 () Bool)

(declare-fun e!426791 () Bool)

(declare-fun e!426789 () Bool)

(assert (=> b!766386 (= e!426791 e!426789)))

(declare-fun res!518681 () Bool)

(assert (=> b!766386 (=> res!518681 e!426789)))

(assert (=> b!766386 (= res!518681 (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun lt!340943 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!766386 (= lt!340943 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!766387 () Bool)

(assert (=> b!766387 (= e!426790 e!426787)))

(declare-fun res!518671 () Bool)

(assert (=> b!766387 (=> (not res!518671) (not e!426787))))

(declare-fun lt!340945 () SeekEntryResult!7829)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42242 (_ BitVec 32)) SeekEntryResult!7829)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!766387 (= res!518671 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20222 a!3186) j!159) mask!3328) (select (arr!20222 a!3186) j!159) a!3186 mask!3328) lt!340945))))

(assert (=> b!766387 (= lt!340945 (Intermediate!7829 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!766388 () Bool)

(declare-fun e!426786 () Bool)

(assert (=> b!766388 (= e!426787 e!426786)))

(declare-fun res!518673 () Bool)

(assert (=> b!766388 (=> (not res!518673) (not e!426786))))

(declare-fun lt!340939 () SeekEntryResult!7829)

(declare-fun lt!340940 () SeekEntryResult!7829)

(assert (=> b!766388 (= res!518673 (= lt!340939 lt!340940))))

(declare-fun lt!340938 () (_ BitVec 64))

(declare-fun lt!340941 () array!42242)

(assert (=> b!766388 (= lt!340940 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!340938 lt!340941 mask!3328))))

(assert (=> b!766388 (= lt!340939 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!340938 mask!3328) lt!340938 lt!340941 mask!3328))))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!766388 (= lt!340938 (select (store (arr!20222 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!766388 (= lt!340941 (array!42243 (store (arr!20222 a!3186) i!1173 k!2102) (size!20643 a!3186)))))

(declare-fun b!766389 () Bool)

(assert (=> b!766389 (= e!426785 e!426790)))

(declare-fun res!518670 () Bool)

(assert (=> b!766389 (=> (not res!518670) (not e!426790))))

(declare-fun lt!340942 () SeekEntryResult!7829)

(assert (=> b!766389 (= res!518670 (or (= lt!340942 (MissingZero!7829 i!1173)) (= lt!340942 (MissingVacant!7829 i!1173))))))

(assert (=> b!766389 (= lt!340942 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!766390 () Bool)

(assert (=> b!766390 (= e!426786 (not e!426791))))

(declare-fun res!518669 () Bool)

(assert (=> b!766390 (=> res!518669 e!426791)))

(assert (=> b!766390 (= res!518669 (or (not (is-Intermediate!7829 lt!340940)) (bvsge x!1131 (x!64612 lt!340940))))))

(assert (=> b!766390 e!426793))

(declare-fun res!518677 () Bool)

(assert (=> b!766390 (=> (not res!518677) (not e!426793))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42242 (_ BitVec 32)) Bool)

(assert (=> b!766390 (= res!518677 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26384 0))(
  ( (Unit!26385) )
))
(declare-fun lt!340937 () Unit!26384)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42242 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26384)

(assert (=> b!766390 (= lt!340937 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!766391 () Bool)

(declare-fun res!518674 () Bool)

(assert (=> b!766391 (=> (not res!518674) (not e!426790))))

(assert (=> b!766391 (= res!518674 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!766392 () Bool)

(declare-fun res!518685 () Bool)

(assert (=> b!766392 (=> (not res!518685) (not e!426785))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!766392 (= res!518685 (validKeyInArray!0 k!2102))))

(declare-fun b!766393 () Bool)

(declare-fun res!518675 () Bool)

(assert (=> b!766393 (=> (not res!518675) (not e!426785))))

(assert (=> b!766393 (= res!518675 (and (= (size!20643 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20643 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20643 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!766394 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42242 (_ BitVec 32)) SeekEntryResult!7829)

(assert (=> b!766394 (= e!426792 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20222 a!3186) j!159) a!3186 mask!3328) (Found!7829 j!159)))))

(declare-fun b!766395 () Bool)

(declare-fun res!518676 () Bool)

(assert (=> b!766395 (=> (not res!518676) (not e!426785))))

(assert (=> b!766395 (= res!518676 (validKeyInArray!0 (select (arr!20222 a!3186) j!159)))))

(declare-fun b!766396 () Bool)

(assert (=> b!766396 (= e!426789 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!340943 (select (arr!20222 a!3186) j!159) a!3186 mask!3328) lt!340945))))

(declare-fun b!766397 () Bool)

(declare-fun res!518672 () Bool)

(assert (=> b!766397 (=> (not res!518672) (not e!426785))))

(declare-fun arrayContainsKey!0 (array!42242 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!766397 (= res!518672 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!766398 () Bool)

(assert (=> b!766398 (= e!426794 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20222 a!3186) j!159) a!3186 mask!3328) lt!340944))))

(declare-fun b!766399 () Bool)

(declare-fun res!518678 () Bool)

(assert (=> b!766399 (=> (not res!518678) (not e!426787))))

(assert (=> b!766399 (= res!518678 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20222 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!766400 () Bool)

(assert (=> b!766400 (= e!426792 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20222 a!3186) j!159) a!3186 mask!3328) lt!340945))))

(assert (= (and start!66510 res!518684) b!766393))

(assert (= (and b!766393 res!518675) b!766395))

(assert (= (and b!766395 res!518676) b!766392))

(assert (= (and b!766392 res!518685) b!766397))

(assert (= (and b!766397 res!518672) b!766389))

(assert (= (and b!766389 res!518670) b!766391))

(assert (= (and b!766391 res!518674) b!766382))

(assert (= (and b!766382 res!518683) b!766385))

(assert (= (and b!766385 res!518680) b!766387))

(assert (= (and b!766387 res!518671) b!766399))

(assert (= (and b!766399 res!518678) b!766383))

(assert (= (and b!766383 c!84246) b!766400))

(assert (= (and b!766383 (not c!84246)) b!766394))

(assert (= (and b!766383 res!518679) b!766388))

(assert (= (and b!766388 res!518673) b!766390))

(assert (= (and b!766390 res!518677) b!766384))

(assert (= (and b!766384 res!518682) b!766398))

(assert (= (and b!766390 (not res!518669)) b!766386))

(assert (= (and b!766386 (not res!518681)) b!766396))

(declare-fun m!712437 () Bool)

(assert (=> b!766398 m!712437))

(assert (=> b!766398 m!712437))

(declare-fun m!712439 () Bool)

(assert (=> b!766398 m!712439))

(declare-fun m!712441 () Bool)

(assert (=> b!766397 m!712441))

(declare-fun m!712443 () Bool)

(assert (=> b!766382 m!712443))

(assert (=> b!766394 m!712437))

(assert (=> b!766394 m!712437))

(declare-fun m!712445 () Bool)

(assert (=> b!766394 m!712445))

(declare-fun m!712447 () Bool)

(assert (=> b!766392 m!712447))

(assert (=> b!766396 m!712437))

(assert (=> b!766396 m!712437))

(declare-fun m!712449 () Bool)

(assert (=> b!766396 m!712449))

(declare-fun m!712451 () Bool)

(assert (=> b!766389 m!712451))

(declare-fun m!712453 () Bool)

(assert (=> b!766399 m!712453))

(declare-fun m!712455 () Bool)

(assert (=> b!766390 m!712455))

(declare-fun m!712457 () Bool)

(assert (=> b!766390 m!712457))

(declare-fun m!712459 () Bool)

(assert (=> b!766391 m!712459))

(declare-fun m!712461 () Bool)

(assert (=> b!766386 m!712461))

(declare-fun m!712463 () Bool)

(assert (=> start!66510 m!712463))

(declare-fun m!712465 () Bool)

(assert (=> start!66510 m!712465))

(assert (=> b!766395 m!712437))

(assert (=> b!766395 m!712437))

(declare-fun m!712467 () Bool)

(assert (=> b!766395 m!712467))

(declare-fun m!712469 () Bool)

(assert (=> b!766388 m!712469))

(declare-fun m!712471 () Bool)

(assert (=> b!766388 m!712471))

(declare-fun m!712473 () Bool)

(assert (=> b!766388 m!712473))

(declare-fun m!712475 () Bool)

(assert (=> b!766388 m!712475))

(assert (=> b!766388 m!712475))

(declare-fun m!712477 () Bool)

(assert (=> b!766388 m!712477))

(assert (=> b!766384 m!712437))

(assert (=> b!766384 m!712437))

(declare-fun m!712479 () Bool)

(assert (=> b!766384 m!712479))

(assert (=> b!766400 m!712437))

(assert (=> b!766400 m!712437))

(declare-fun m!712481 () Bool)

(assert (=> b!766400 m!712481))

(assert (=> b!766387 m!712437))

(assert (=> b!766387 m!712437))

(declare-fun m!712483 () Bool)

(assert (=> b!766387 m!712483))

(assert (=> b!766387 m!712483))

(assert (=> b!766387 m!712437))

(declare-fun m!712485 () Bool)

(assert (=> b!766387 m!712485))

(push 1)

(assert (not b!766386))

(assert (not b!766397))

(assert (not b!766400))

(assert (not b!766394))

(assert (not b!766395))

(assert (not b!766391))

(assert (not b!766390))

(assert (not b!766388))

(assert (not b!766387))

(assert (not start!66510))

(assert (not b!766398))

(assert (not b!766396))

(assert (not b!766392))

(assert (not b!766384))

(assert (not b!766389))

(assert (not b!766382))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!766445 () Bool)

(declare-fun e!426819 () Bool)

(declare-fun call!35046 () Bool)

(assert (=> b!766445 (= e!426819 call!35046)))

(declare-fun b!766446 () Bool)

(declare-fun e!426821 () Bool)

(assert (=> b!766446 (= e!426819 e!426821)))

(declare-fun lt!340970 () (_ BitVec 64))

(assert (=> b!766446 (= lt!340970 (select (arr!20222 a!3186) j!159))))

(declare-fun lt!340972 () Unit!26384)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!42242 (_ BitVec 64) (_ BitVec 32)) Unit!26384)

(assert (=> b!766446 (= lt!340972 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!340970 j!159))))

(assert (=> b!766446 (arrayContainsKey!0 a!3186 lt!340970 #b00000000000000000000000000000000)))

(declare-fun lt!340971 () Unit!26384)

(assert (=> b!766446 (= lt!340971 lt!340972)))

(declare-fun res!518691 () Bool)

(assert (=> b!766446 (= res!518691 (= (seekEntryOrOpen!0 (select (arr!20222 a!3186) j!159) a!3186 mask!3328) (Found!7829 j!159)))))

(assert (=> b!766446 (=> (not res!518691) (not e!426821))))

(declare-fun b!766447 () Bool)

(assert (=> b!766447 (= e!426821 call!35046)))

(declare-fun b!766448 () Bool)

(declare-fun e!426820 () Bool)

(assert (=> b!766448 (= e!426820 e!426819)))

(declare-fun c!84267 () Bool)

(assert (=> b!766448 (= c!84267 (validKeyInArray!0 (select (arr!20222 a!3186) j!159)))))

(declare-fun bm!35043 () Bool)

(assert (=> bm!35043 (= call!35046 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!159 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun d!101139 () Bool)

(declare-fun res!518690 () Bool)

(assert (=> d!101139 (=> res!518690 e!426820)))

(assert (=> d!101139 (= res!518690 (bvsge j!159 (size!20643 a!3186)))))

(assert (=> d!101139 (= (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328) e!426820)))

(assert (= (and d!101139 (not res!518690)) b!766448))

(assert (= (and b!766448 c!84267) b!766446))

(assert (= (and b!766448 (not c!84267)) b!766445))

(assert (= (and b!766446 res!518691) b!766447))

(assert (= (or b!766447 b!766445) bm!35043))

(assert (=> b!766446 m!712437))

(declare-fun m!712507 () Bool)

(assert (=> b!766446 m!712507))

(declare-fun m!712509 () Bool)

(assert (=> b!766446 m!712509))

(assert (=> b!766446 m!712437))

(assert (=> b!766446 m!712479))

(assert (=> b!766448 m!712437))

(assert (=> b!766448 m!712437))

(assert (=> b!766448 m!712467))

(declare-fun m!712511 () Bool)

(assert (=> bm!35043 m!712511))

(assert (=> b!766390 d!101139))

(declare-fun d!101149 () Bool)

(assert (=> d!101149 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!340975 () Unit!26384)

(declare-fun choose!38 (array!42242 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26384)

(assert (=> d!101149 (= lt!340975 (choose!38 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(assert (=> d!101149 (validMask!0 mask!3328)))

(assert (=> d!101149 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159) lt!340975)))

(declare-fun bs!21499 () Bool)

(assert (= bs!21499 d!101149))

(assert (=> bs!21499 m!712455))

(declare-fun m!712513 () Bool)

(assert (=> bs!21499 m!712513))

(assert (=> bs!21499 m!712463))

(assert (=> b!766390 d!101149))

(declare-fun d!101151 () Bool)

(assert (=> d!101151 (= (validKeyInArray!0 k!2102) (and (not (= k!2102 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2102 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!766392 d!101151))

(declare-fun b!766449 () Bool)

(declare-fun e!426822 () Bool)

(declare-fun call!35047 () Bool)

(assert (=> b!766449 (= e!426822 call!35047)))

(declare-fun b!766450 () Bool)

(declare-fun e!426824 () Bool)

(assert (=> b!766450 (= e!426822 e!426824)))

(declare-fun lt!340976 () (_ BitVec 64))

(assert (=> b!766450 (= lt!340976 (select (arr!20222 a!3186) #b00000000000000000000000000000000))))

(declare-fun lt!340978 () Unit!26384)

(assert (=> b!766450 (= lt!340978 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!340976 #b00000000000000000000000000000000))))

(assert (=> b!766450 (arrayContainsKey!0 a!3186 lt!340976 #b00000000000000000000000000000000)))

(declare-fun lt!340977 () Unit!26384)

(assert (=> b!766450 (= lt!340977 lt!340978)))

(declare-fun res!518693 () Bool)

(assert (=> b!766450 (= res!518693 (= (seekEntryOrOpen!0 (select (arr!20222 a!3186) #b00000000000000000000000000000000) a!3186 mask!3328) (Found!7829 #b00000000000000000000000000000000)))))

(assert (=> b!766450 (=> (not res!518693) (not e!426824))))

(declare-fun b!766451 () Bool)

(assert (=> b!766451 (= e!426824 call!35047)))

(declare-fun b!766452 () Bool)

(declare-fun e!426823 () Bool)

(assert (=> b!766452 (= e!426823 e!426822)))

(declare-fun c!84268 () Bool)

(assert (=> b!766452 (= c!84268 (validKeyInArray!0 (select (arr!20222 a!3186) #b00000000000000000000000000000000)))))

(declare-fun bm!35044 () Bool)

(assert (=> bm!35044 (= call!35047 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun d!101153 () Bool)

(declare-fun res!518692 () Bool)

(assert (=> d!101153 (=> res!518692 e!426823)))

(assert (=> d!101153 (= res!518692 (bvsge #b00000000000000000000000000000000 (size!20643 a!3186)))))

(assert (=> d!101153 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328) e!426823)))

(assert (= (and d!101153 (not res!518692)) b!766452))

(assert (= (and b!766452 c!84268) b!766450))

(assert (= (and b!766452 (not c!84268)) b!766449))

(assert (= (and b!766450 res!518693) b!766451))

(assert (= (or b!766451 b!766449) bm!35044))

(declare-fun m!712515 () Bool)

(assert (=> b!766450 m!712515))

(declare-fun m!712517 () Bool)

(assert (=> b!766450 m!712517))

(declare-fun m!712519 () Bool)

(assert (=> b!766450 m!712519))

(assert (=> b!766450 m!712515))

(declare-fun m!712521 () Bool)

(assert (=> b!766450 m!712521))

(assert (=> b!766452 m!712515))

(assert (=> b!766452 m!712515))

(declare-fun m!712523 () Bool)

(assert (=> b!766452 m!712523))

(declare-fun m!712525 () Bool)

(assert (=> bm!35044 m!712525))

(assert (=> b!766391 d!101153))

(declare-fun d!101155 () Bool)

(assert (=> d!101155 (= (validMask!0 mask!3328) (and (or (= mask!3328 #b00000000000000000000000000000111) (= mask!3328 #b00000000000000000000000000001111) (= mask!3328 #b00000000000000000000000000011111) (= mask!3328 #b00000000000000000000000000111111) (= mask!3328 #b00000000000000000000000001111111) (= mask!3328 #b00000000000000000000000011111111) (= mask!3328 #b00000000000000000000000111111111) (= mask!3328 #b00000000000000000000001111111111) (= mask!3328 #b00000000000000000000011111111111) (= mask!3328 #b00000000000000000000111111111111) (= mask!3328 #b00000000000000000001111111111111) (= mask!3328 #b00000000000000000011111111111111) (= mask!3328 #b00000000000000000111111111111111) (= mask!3328 #b00000000000000001111111111111111) (= mask!3328 #b00000000000000011111111111111111) (= mask!3328 #b00000000000000111111111111111111) (= mask!3328 #b00000000000001111111111111111111) (= mask!3328 #b00000000000011111111111111111111) (= mask!3328 #b00000000000111111111111111111111) (= mask!3328 #b00000000001111111111111111111111) (= mask!3328 #b00000000011111111111111111111111) (= mask!3328 #b00000000111111111111111111111111) (= mask!3328 #b00000001111111111111111111111111) (= mask!3328 #b00000011111111111111111111111111) (= mask!3328 #b00000111111111111111111111111111) (= mask!3328 #b00001111111111111111111111111111) (= mask!3328 #b00011111111111111111111111111111) (= mask!3328 #b00111111111111111111111111111111)) (bvsle mask!3328 #b00111111111111111111111111111111)))))

(assert (=> start!66510 d!101155))

(declare-fun d!101159 () Bool)

(assert (=> d!101159 (= (array_inv!15996 a!3186) (bvsge (size!20643 a!3186) #b00000000000000000000000000000000))))

(assert (=> start!66510 d!101159))

(declare-fun b!766591 () Bool)

(declare-fun e!426905 () Bool)

(declare-fun e!426904 () Bool)

(assert (=> b!766591 (= e!426905 e!426904)))

(declare-fun res!518737 () Bool)

(declare-fun lt!341016 () SeekEntryResult!7829)

(assert (=> b!766591 (= res!518737 (and (is-Intermediate!7829 lt!341016) (not (undefined!8641 lt!341016)) (bvslt (x!64612 lt!341016) #b01111111111111111111111111111110) (bvsge (x!64612 lt!341016) #b00000000000000000000000000000000) (bvsge (x!64612 lt!341016) x!1131)))))

(assert (=> b!766591 (=> (not res!518737) (not e!426904))))

(declare-fun d!101161 () Bool)

(assert (=> d!101161 e!426905))

(declare-fun c!84317 () Bool)

(assert (=> d!101161 (= c!84317 (and (is-Intermediate!7829 lt!341016) (undefined!8641 lt!341016)))))

(declare-fun e!426906 () SeekEntryResult!7829)

(assert (=> d!101161 (= lt!341016 e!426906)))

(declare-fun c!84319 () Bool)

(assert (=> d!101161 (= c!84319 (bvsge x!1131 #b01111111111111111111111111111110))))

(declare-fun lt!341015 () (_ BitVec 64))

(assert (=> d!101161 (= lt!341015 (select (arr!20222 lt!340941) index!1321))))

(assert (=> d!101161 (validMask!0 mask!3328)))

(assert (=> d!101161 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!340938 lt!340941 mask!3328) lt!341016)))

(declare-fun b!766592 () Bool)

(assert (=> b!766592 (= e!426905 (bvsge (x!64612 lt!341016) #b01111111111111111111111111111110))))

(declare-fun b!766593 () Bool)

(assert (=> b!766593 (and (bvsge (index!33685 lt!341016) #b00000000000000000000000000000000) (bvslt (index!33685 lt!341016) (size!20643 lt!340941)))))

(declare-fun res!518738 () Bool)

(assert (=> b!766593 (= res!518738 (= (select (arr!20222 lt!340941) (index!33685 lt!341016)) lt!340938))))

(declare-fun e!426907 () Bool)

(assert (=> b!766593 (=> res!518738 e!426907)))

(assert (=> b!766593 (= e!426904 e!426907)))

(declare-fun b!766594 () Bool)

(declare-fun e!426908 () SeekEntryResult!7829)

(assert (=> b!766594 (= e!426908 (Intermediate!7829 false index!1321 x!1131))))

(declare-fun b!766595 () Bool)

(assert (=> b!766595 (= e!426906 e!426908)))

(declare-fun c!84318 () Bool)

(assert (=> b!766595 (= c!84318 (or (= lt!341015 lt!340938) (= (bvadd lt!341015 lt!341015) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!766596 () Bool)

(assert (=> b!766596 (and (bvsge (index!33685 lt!341016) #b00000000000000000000000000000000) (bvslt (index!33685 lt!341016) (size!20643 lt!340941)))))

(assert (=> b!766596 (= e!426907 (= (select (arr!20222 lt!340941) (index!33685 lt!341016)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!766597 () Bool)

(assert (=> b!766597 (and (bvsge (index!33685 lt!341016) #b00000000000000000000000000000000) (bvslt (index!33685 lt!341016) (size!20643 lt!340941)))))

(declare-fun res!518739 () Bool)

(assert (=> b!766597 (= res!518739 (= (select (arr!20222 lt!340941) (index!33685 lt!341016)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!766597 (=> res!518739 e!426907)))

(declare-fun b!766598 () Bool)

(assert (=> b!766598 (= e!426906 (Intermediate!7829 true index!1321 x!1131))))

(declare-fun b!766599 () Bool)

(assert (=> b!766599 (= e!426908 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) lt!340938 lt!340941 mask!3328))))

(assert (= (and d!101161 c!84319) b!766598))

(assert (= (and d!101161 (not c!84319)) b!766595))

(assert (= (and b!766595 c!84318) b!766594))

(assert (= (and b!766595 (not c!84318)) b!766599))

(assert (= (and d!101161 c!84317) b!766592))

(assert (= (and d!101161 (not c!84317)) b!766591))

(assert (= (and b!766591 res!518737) b!766593))

(assert (= (and b!766593 (not res!518738)) b!766597))

(assert (= (and b!766597 (not res!518739)) b!766596))

(declare-fun m!712581 () Bool)

(assert (=> d!101161 m!712581))

(assert (=> d!101161 m!712463))

(declare-fun m!712583 () Bool)

(assert (=> b!766597 m!712583))

(assert (=> b!766596 m!712583))

(assert (=> b!766599 m!712461))

(assert (=> b!766599 m!712461))

(declare-fun m!712585 () Bool)

(assert (=> b!766599 m!712585))

(assert (=> b!766593 m!712583))

(assert (=> b!766388 d!101161))

(declare-fun b!766600 () Bool)

(declare-fun e!426910 () Bool)

(declare-fun e!426909 () Bool)

(assert (=> b!766600 (= e!426910 e!426909)))

(declare-fun res!518740 () Bool)

(declare-fun lt!341018 () SeekEntryResult!7829)

(assert (=> b!766600 (= res!518740 (and (is-Intermediate!7829 lt!341018) (not (undefined!8641 lt!341018)) (bvslt (x!64612 lt!341018) #b01111111111111111111111111111110) (bvsge (x!64612 lt!341018) #b00000000000000000000000000000000) (bvsge (x!64612 lt!341018) #b00000000000000000000000000000000)))))

(assert (=> b!766600 (=> (not res!518740) (not e!426909))))

(declare-fun d!101179 () Bool)

(assert (=> d!101179 e!426910))

(declare-fun c!84320 () Bool)

(assert (=> d!101179 (= c!84320 (and (is-Intermediate!7829 lt!341018) (undefined!8641 lt!341018)))))

(declare-fun e!426911 () SeekEntryResult!7829)

(assert (=> d!101179 (= lt!341018 e!426911)))

(declare-fun c!84322 () Bool)

(assert (=> d!101179 (= c!84322 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!341017 () (_ BitVec 64))

(assert (=> d!101179 (= lt!341017 (select (arr!20222 lt!340941) (toIndex!0 lt!340938 mask!3328)))))

(assert (=> d!101179 (validMask!0 mask!3328)))

(assert (=> d!101179 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!340938 mask!3328) lt!340938 lt!340941 mask!3328) lt!341018)))

(declare-fun b!766601 () Bool)

(assert (=> b!766601 (= e!426910 (bvsge (x!64612 lt!341018) #b01111111111111111111111111111110))))

(declare-fun b!766602 () Bool)

(assert (=> b!766602 (and (bvsge (index!33685 lt!341018) #b00000000000000000000000000000000) (bvslt (index!33685 lt!341018) (size!20643 lt!340941)))))

(declare-fun res!518741 () Bool)

(assert (=> b!766602 (= res!518741 (= (select (arr!20222 lt!340941) (index!33685 lt!341018)) lt!340938))))

(declare-fun e!426912 () Bool)

(assert (=> b!766602 (=> res!518741 e!426912)))

(assert (=> b!766602 (= e!426909 e!426912)))

(declare-fun b!766603 () Bool)

(declare-fun e!426913 () SeekEntryResult!7829)

(assert (=> b!766603 (= e!426913 (Intermediate!7829 false (toIndex!0 lt!340938 mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!766604 () Bool)

(assert (=> b!766604 (= e!426911 e!426913)))

(declare-fun c!84321 () Bool)

(assert (=> b!766604 (= c!84321 (or (= lt!341017 lt!340938) (= (bvadd lt!341017 lt!341017) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!766605 () Bool)

(assert (=> b!766605 (and (bvsge (index!33685 lt!341018) #b00000000000000000000000000000000) (bvslt (index!33685 lt!341018) (size!20643 lt!340941)))))

(assert (=> b!766605 (= e!426912 (= (select (arr!20222 lt!340941) (index!33685 lt!341018)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!766606 () Bool)

(assert (=> b!766606 (and (bvsge (index!33685 lt!341018) #b00000000000000000000000000000000) (bvslt (index!33685 lt!341018) (size!20643 lt!340941)))))

(declare-fun res!518742 () Bool)

(assert (=> b!766606 (= res!518742 (= (select (arr!20222 lt!340941) (index!33685 lt!341018)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!766606 (=> res!518742 e!426912)))

(declare-fun b!766607 () Bool)

(assert (=> b!766607 (= e!426911 (Intermediate!7829 true (toIndex!0 lt!340938 mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!766608 () Bool)

(assert (=> b!766608 (= e!426913 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!340938 mask!3328) #b00000000000000000000000000000000 mask!3328) lt!340938 lt!340941 mask!3328))))

(assert (= (and d!101179 c!84322) b!766607))

(assert (= (and d!101179 (not c!84322)) b!766604))

(assert (= (and b!766604 c!84321) b!766603))

(assert (= (and b!766604 (not c!84321)) b!766608))

(assert (= (and d!101179 c!84320) b!766601))

(assert (= (and d!101179 (not c!84320)) b!766600))

(assert (= (and b!766600 res!518740) b!766602))

(assert (= (and b!766602 (not res!518741)) b!766606))

(assert (= (and b!766606 (not res!518742)) b!766605))

(assert (=> d!101179 m!712475))

(declare-fun m!712587 () Bool)

(assert (=> d!101179 m!712587))

(assert (=> d!101179 m!712463))

(declare-fun m!712589 () Bool)

(assert (=> b!766606 m!712589))

(assert (=> b!766605 m!712589))

(assert (=> b!766608 m!712475))

(declare-fun m!712591 () Bool)

(assert (=> b!766608 m!712591))

(assert (=> b!766608 m!712591))

(declare-fun m!712593 () Bool)

(assert (=> b!766608 m!712593))

(assert (=> b!766602 m!712589))

(assert (=> b!766388 d!101179))

(declare-fun d!101181 () Bool)

(declare-fun lt!341030 () (_ BitVec 32))

(declare-fun lt!341029 () (_ BitVec 32))

(assert (=> d!101181 (= lt!341030 (bvmul (bvxor lt!341029 (bvlshr lt!341029 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!101181 (= lt!341029 ((_ extract 31 0) (bvand (bvxor lt!340938 (bvlshr lt!340938 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!101181 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!518743 (let ((h!15365 ((_ extract 31 0) (bvand (bvxor lt!340938 (bvlshr lt!340938 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!64620 (bvmul (bvxor h!15365 (bvlshr h!15365 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!64620 (bvlshr x!64620 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!518743 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!518743 #b00000000000000000000000000000000))))))

(assert (=> d!101181 (= (toIndex!0 lt!340938 mask!3328) (bvand (bvxor lt!341030 (bvlshr lt!341030 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!766388 d!101181))

(declare-fun b!766617 () Bool)

(declare-fun e!426921 () Bool)

(declare-fun e!426920 () Bool)

(assert (=> b!766617 (= e!426921 e!426920)))

(declare-fun res!518748 () Bool)

(declare-fun lt!341032 () SeekEntryResult!7829)

(assert (=> b!766617 (= res!518748 (and (is-Intermediate!7829 lt!341032) (not (undefined!8641 lt!341032)) (bvslt (x!64612 lt!341032) #b01111111111111111111111111111110) (bvsge (x!64612 lt!341032) #b00000000000000000000000000000000) (bvsge (x!64612 lt!341032) #b00000000000000000000000000000000)))))

(assert (=> b!766617 (=> (not res!518748) (not e!426920))))

(declare-fun d!101183 () Bool)

(assert (=> d!101183 e!426921))

(declare-fun c!84325 () Bool)

(assert (=> d!101183 (= c!84325 (and (is-Intermediate!7829 lt!341032) (undefined!8641 lt!341032)))))

(declare-fun e!426922 () SeekEntryResult!7829)

(assert (=> d!101183 (= lt!341032 e!426922)))

(declare-fun c!84327 () Bool)

(assert (=> d!101183 (= c!84327 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!341031 () (_ BitVec 64))

(assert (=> d!101183 (= lt!341031 (select (arr!20222 a!3186) (toIndex!0 (select (arr!20222 a!3186) j!159) mask!3328)))))

(assert (=> d!101183 (validMask!0 mask!3328)))

(assert (=> d!101183 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20222 a!3186) j!159) mask!3328) (select (arr!20222 a!3186) j!159) a!3186 mask!3328) lt!341032)))

(declare-fun b!766618 () Bool)

(assert (=> b!766618 (= e!426921 (bvsge (x!64612 lt!341032) #b01111111111111111111111111111110))))

(declare-fun b!766619 () Bool)

(assert (=> b!766619 (and (bvsge (index!33685 lt!341032) #b00000000000000000000000000000000) (bvslt (index!33685 lt!341032) (size!20643 a!3186)))))

(declare-fun res!518749 () Bool)

(assert (=> b!766619 (= res!518749 (= (select (arr!20222 a!3186) (index!33685 lt!341032)) (select (arr!20222 a!3186) j!159)))))

(declare-fun e!426923 () Bool)

(assert (=> b!766619 (=> res!518749 e!426923)))

(assert (=> b!766619 (= e!426920 e!426923)))

(declare-fun b!766620 () Bool)

(declare-fun e!426924 () SeekEntryResult!7829)

(assert (=> b!766620 (= e!426924 (Intermediate!7829 false (toIndex!0 (select (arr!20222 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!766621 () Bool)

(assert (=> b!766621 (= e!426922 e!426924)))

(declare-fun c!84326 () Bool)

(assert (=> b!766621 (= c!84326 (or (= lt!341031 (select (arr!20222 a!3186) j!159)) (= (bvadd lt!341031 lt!341031) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!766622 () Bool)

(assert (=> b!766622 (and (bvsge (index!33685 lt!341032) #b00000000000000000000000000000000) (bvslt (index!33685 lt!341032) (size!20643 a!3186)))))

(assert (=> b!766622 (= e!426923 (= (select (arr!20222 a!3186) (index!33685 lt!341032)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!766623 () Bool)

(assert (=> b!766623 (and (bvsge (index!33685 lt!341032) #b00000000000000000000000000000000) (bvslt (index!33685 lt!341032) (size!20643 a!3186)))))

(declare-fun res!518750 () Bool)

(assert (=> b!766623 (= res!518750 (= (select (arr!20222 a!3186) (index!33685 lt!341032)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!766623 (=> res!518750 e!426923)))

(declare-fun b!766624 () Bool)

(assert (=> b!766624 (= e!426922 (Intermediate!7829 true (toIndex!0 (select (arr!20222 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!766625 () Bool)

(assert (=> b!766625 (= e!426924 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!20222 a!3186) j!159) mask!3328) #b00000000000000000000000000000000 mask!3328) (select (arr!20222 a!3186) j!159) a!3186 mask!3328))))

(assert (= (and d!101183 c!84327) b!766624))

(assert (= (and d!101183 (not c!84327)) b!766621))

(assert (= (and b!766621 c!84326) b!766620))

(assert (= (and b!766621 (not c!84326)) b!766625))

(assert (= (and d!101183 c!84325) b!766618))

(assert (= (and d!101183 (not c!84325)) b!766617))

(assert (= (and b!766617 res!518748) b!766619))

(assert (= (and b!766619 (not res!518749)) b!766623))

(assert (= (and b!766623 (not res!518750)) b!766622))

(assert (=> d!101183 m!712483))

(declare-fun m!712595 () Bool)

(assert (=> d!101183 m!712595))

(assert (=> d!101183 m!712463))

(declare-fun m!712597 () Bool)

(assert (=> b!766623 m!712597))

(assert (=> b!766622 m!712597))

(assert (=> b!766625 m!712483))

(declare-fun m!712599 () Bool)

(assert (=> b!766625 m!712599))

(assert (=> b!766625 m!712599))

(assert (=> b!766625 m!712437))

(declare-fun m!712601 () Bool)

(assert (=> b!766625 m!712601))

(assert (=> b!766619 m!712597))

(assert (=> b!766387 d!101183))

(declare-fun d!101185 () Bool)

(declare-fun lt!341037 () (_ BitVec 32))

(declare-fun lt!341036 () (_ BitVec 32))

(assert (=> d!101185 (= lt!341037 (bvmul (bvxor lt!341036 (bvlshr lt!341036 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!101185 (= lt!341036 ((_ extract 31 0) (bvand (bvxor (select (arr!20222 a!3186) j!159) (bvlshr (select (arr!20222 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!101185 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!518743 (let ((h!15365 ((_ extract 31 0) (bvand (bvxor (select (arr!20222 a!3186) j!159) (bvlshr (select (arr!20222 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!64620 (bvmul (bvxor h!15365 (bvlshr h!15365 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!64620 (bvlshr x!64620 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!518743 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!518743 #b00000000000000000000000000000000))))))

(assert (=> d!101185 (= (toIndex!0 (select (arr!20222 a!3186) j!159) mask!3328) (bvand (bvxor lt!341037 (bvlshr lt!341037 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!766387 d!101185))

(declare-fun b!766685 () Bool)

(declare-fun e!426960 () SeekEntryResult!7829)

(declare-fun e!426962 () SeekEntryResult!7829)

(assert (=> b!766685 (= e!426960 e!426962)))

(declare-fun c!84353 () Bool)

(declare-fun lt!341064 () (_ BitVec 64))

(assert (=> b!766685 (= c!84353 (= lt!341064 (select (arr!20222 a!3186) j!159)))))

(declare-fun b!766686 () Bool)

(declare-fun c!84352 () Bool)

(assert (=> b!766686 (= c!84352 (= lt!341064 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!426961 () SeekEntryResult!7829)

(assert (=> b!766686 (= e!426962 e!426961)))

(declare-fun b!766687 () Bool)

(assert (=> b!766687 (= e!426960 Undefined!7829)))

(declare-fun b!766688 () Bool)

(assert (=> b!766688 (= e!426962 (Found!7829 resIntermediateIndex!5))))

(declare-fun b!766689 () Bool)

(assert (=> b!766689 (= e!426961 (seekKeyOrZeroReturnVacant!0 (bvadd resIntermediateX!5 #b00000000000000000000000000000001) (nextIndex!0 resIntermediateIndex!5 resIntermediateX!5 mask!3328) resIntermediateIndex!5 (select (arr!20222 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!766690 () Bool)

(assert (=> b!766690 (= e!426961 (MissingVacant!7829 resIntermediateIndex!5))))

(declare-fun lt!341065 () SeekEntryResult!7829)

(declare-fun d!101187 () Bool)

(assert (=> d!101187 (and (or (is-Undefined!7829 lt!341065) (not (is-Found!7829 lt!341065)) (and (bvsge (index!33684 lt!341065) #b00000000000000000000000000000000) (bvslt (index!33684 lt!341065) (size!20643 a!3186)))) (or (is-Undefined!7829 lt!341065) (is-Found!7829 lt!341065) (not (is-MissingVacant!7829 lt!341065)) (not (= (index!33686 lt!341065) resIntermediateIndex!5)) (and (bvsge (index!33686 lt!341065) #b00000000000000000000000000000000) (bvslt (index!33686 lt!341065) (size!20643 a!3186)))) (or (is-Undefined!7829 lt!341065) (ite (is-Found!7829 lt!341065) (= (select (arr!20222 a!3186) (index!33684 lt!341065)) (select (arr!20222 a!3186) j!159)) (and (is-MissingVacant!7829 lt!341065) (= (index!33686 lt!341065) resIntermediateIndex!5) (= (select (arr!20222 a!3186) (index!33686 lt!341065)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!101187 (= lt!341065 e!426960)))

(declare-fun c!84351 () Bool)

(assert (=> d!101187 (= c!84351 (bvsge resIntermediateX!5 #b01111111111111111111111111111110))))

(assert (=> d!101187 (= lt!341064 (select (arr!20222 a!3186) resIntermediateIndex!5))))

(assert (=> d!101187 (validMask!0 mask!3328)))

(assert (=> d!101187 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20222 a!3186) j!159) a!3186 mask!3328) lt!341065)))

(assert (= (and d!101187 c!84351) b!766687))

(assert (= (and d!101187 (not c!84351)) b!766685))

(assert (= (and b!766685 c!84353) b!766688))

(assert (= (and b!766685 (not c!84353)) b!766686))

(assert (= (and b!766686 c!84352) b!766690))

(assert (= (and b!766686 (not c!84352)) b!766689))

(declare-fun m!712653 () Bool)

(assert (=> b!766689 m!712653))

(assert (=> b!766689 m!712653))

(assert (=> b!766689 m!712437))

(declare-fun m!712655 () Bool)

(assert (=> b!766689 m!712655))

(declare-fun m!712657 () Bool)

(assert (=> d!101187 m!712657))

(declare-fun m!712659 () Bool)

(assert (=> d!101187 m!712659))

(assert (=> d!101187 m!712453))

(assert (=> d!101187 m!712463))

(assert (=> b!766398 d!101187))

(declare-fun b!766721 () Bool)

(declare-fun e!426982 () SeekEntryResult!7829)

(declare-fun lt!341088 () SeekEntryResult!7829)

(assert (=> b!766721 (= e!426982 (seekKeyOrZeroReturnVacant!0 (x!64612 lt!341088) (index!33685 lt!341088) (index!33685 lt!341088) k!2102 a!3186 mask!3328))))

(declare-fun b!766722 () Bool)

(assert (=> b!766722 (= e!426982 (MissingZero!7829 (index!33685 lt!341088)))))

(declare-fun b!766723 () Bool)

(declare-fun e!426983 () SeekEntryResult!7829)

(assert (=> b!766723 (= e!426983 Undefined!7829)))

(declare-fun d!101205 () Bool)

(declare-fun lt!341086 () SeekEntryResult!7829)

(assert (=> d!101205 (and (or (is-Undefined!7829 lt!341086) (not (is-Found!7829 lt!341086)) (and (bvsge (index!33684 lt!341086) #b00000000000000000000000000000000) (bvslt (index!33684 lt!341086) (size!20643 a!3186)))) (or (is-Undefined!7829 lt!341086) (is-Found!7829 lt!341086) (not (is-MissingZero!7829 lt!341086)) (and (bvsge (index!33683 lt!341086) #b00000000000000000000000000000000) (bvslt (index!33683 lt!341086) (size!20643 a!3186)))) (or (is-Undefined!7829 lt!341086) (is-Found!7829 lt!341086) (is-MissingZero!7829 lt!341086) (not (is-MissingVacant!7829 lt!341086)) (and (bvsge (index!33686 lt!341086) #b00000000000000000000000000000000) (bvslt (index!33686 lt!341086) (size!20643 a!3186)))) (or (is-Undefined!7829 lt!341086) (ite (is-Found!7829 lt!341086) (= (select (arr!20222 a!3186) (index!33684 lt!341086)) k!2102) (ite (is-MissingZero!7829 lt!341086) (= (select (arr!20222 a!3186) (index!33683 lt!341086)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!7829 lt!341086) (= (select (arr!20222 a!3186) (index!33686 lt!341086)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!101205 (= lt!341086 e!426983)))

(declare-fun c!84366 () Bool)

(assert (=> d!101205 (= c!84366 (and (is-Intermediate!7829 lt!341088) (undefined!8641 lt!341088)))))

(assert (=> d!101205 (= lt!341088 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2102 mask!3328) k!2102 a!3186 mask!3328))))

(assert (=> d!101205 (validMask!0 mask!3328)))

(assert (=> d!101205 (= (seekEntryOrOpen!0 k!2102 a!3186 mask!3328) lt!341086)))

(declare-fun b!766724 () Bool)

(declare-fun c!84368 () Bool)

(declare-fun lt!341087 () (_ BitVec 64))

(assert (=> b!766724 (= c!84368 (= lt!341087 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!426981 () SeekEntryResult!7829)

(assert (=> b!766724 (= e!426981 e!426982)))

(declare-fun b!766725 () Bool)

(assert (=> b!766725 (= e!426983 e!426981)))

(assert (=> b!766725 (= lt!341087 (select (arr!20222 a!3186) (index!33685 lt!341088)))))

(declare-fun c!84367 () Bool)

(assert (=> b!766725 (= c!84367 (= lt!341087 k!2102))))

(declare-fun b!766726 () Bool)

(assert (=> b!766726 (= e!426981 (Found!7829 (index!33685 lt!341088)))))

(assert (= (and d!101205 c!84366) b!766723))

(assert (= (and d!101205 (not c!84366)) b!766725))

(assert (= (and b!766725 c!84367) b!766726))

(assert (= (and b!766725 (not c!84367)) b!766724))

(assert (= (and b!766724 c!84368) b!766722))

(assert (= (and b!766724 (not c!84368)) b!766721))

(declare-fun m!712677 () Bool)

(assert (=> b!766721 m!712677))

(declare-fun m!712679 () Bool)

(assert (=> d!101205 m!712679))

(declare-fun m!712681 () Bool)

(assert (=> d!101205 m!712681))

(declare-fun m!712683 () Bool)

(assert (=> d!101205 m!712683))

(declare-fun m!712685 () Bool)

(assert (=> d!101205 m!712685))

(assert (=> d!101205 m!712685))

(declare-fun m!712687 () Bool)

(assert (=> d!101205 m!712687))

(assert (=> d!101205 m!712463))

(declare-fun m!712689 () Bool)

(assert (=> b!766725 m!712689))

(assert (=> b!766389 d!101205))

(declare-fun b!766731 () Bool)

(declare-fun e!426989 () Bool)

(declare-fun e!426988 () Bool)

(assert (=> b!766731 (= e!426989 e!426988)))

(declare-fun res!518774 () Bool)

(declare-fun lt!341090 () SeekEntryResult!7829)

(assert (=> b!766731 (= res!518774 (and (is-Intermediate!7829 lt!341090) (not (undefined!8641 lt!341090)) (bvslt (x!64612 lt!341090) #b01111111111111111111111111111110) (bvsge (x!64612 lt!341090) #b00000000000000000000000000000000) (bvsge (x!64612 lt!341090) x!1131)))))

(assert (=> b!766731 (=> (not res!518774) (not e!426988))))

(declare-fun d!101217 () Bool)

(assert (=> d!101217 e!426989))

(declare-fun c!84369 () Bool)

(assert (=> d!101217 (= c!84369 (and (is-Intermediate!7829 lt!341090) (undefined!8641 lt!341090)))))

(declare-fun e!426990 () SeekEntryResult!7829)

(assert (=> d!101217 (= lt!341090 e!426990)))

(declare-fun c!84371 () Bool)

(assert (=> d!101217 (= c!84371 (bvsge x!1131 #b01111111111111111111111111111110))))

(declare-fun lt!341089 () (_ BitVec 64))

(assert (=> d!101217 (= lt!341089 (select (arr!20222 a!3186) index!1321))))

(assert (=> d!101217 (validMask!0 mask!3328)))

(assert (=> d!101217 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20222 a!3186) j!159) a!3186 mask!3328) lt!341090)))

(declare-fun b!766732 () Bool)

(assert (=> b!766732 (= e!426989 (bvsge (x!64612 lt!341090) #b01111111111111111111111111111110))))

(declare-fun b!766733 () Bool)

(assert (=> b!766733 (and (bvsge (index!33685 lt!341090) #b00000000000000000000000000000000) (bvslt (index!33685 lt!341090) (size!20643 a!3186)))))

(declare-fun res!518775 () Bool)

(assert (=> b!766733 (= res!518775 (= (select (arr!20222 a!3186) (index!33685 lt!341090)) (select (arr!20222 a!3186) j!159)))))

(declare-fun e!426991 () Bool)

(assert (=> b!766733 (=> res!518775 e!426991)))

(assert (=> b!766733 (= e!426988 e!426991)))

(declare-fun b!766734 () Bool)

(declare-fun e!426992 () SeekEntryResult!7829)

(assert (=> b!766734 (= e!426992 (Intermediate!7829 false index!1321 x!1131))))

(declare-fun b!766735 () Bool)

(assert (=> b!766735 (= e!426990 e!426992)))

(declare-fun c!84370 () Bool)

(assert (=> b!766735 (= c!84370 (or (= lt!341089 (select (arr!20222 a!3186) j!159)) (= (bvadd lt!341089 lt!341089) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!766736 () Bool)

(assert (=> b!766736 (and (bvsge (index!33685 lt!341090) #b00000000000000000000000000000000) (bvslt (index!33685 lt!341090) (size!20643 a!3186)))))

(assert (=> b!766736 (= e!426991 (= (select (arr!20222 a!3186) (index!33685 lt!341090)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!766737 () Bool)

(assert (=> b!766737 (and (bvsge (index!33685 lt!341090) #b00000000000000000000000000000000) (bvslt (index!33685 lt!341090) (size!20643 a!3186)))))

(declare-fun res!518776 () Bool)

(assert (=> b!766737 (= res!518776 (= (select (arr!20222 a!3186) (index!33685 lt!341090)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!766737 (=> res!518776 e!426991)))

(declare-fun b!766738 () Bool)

(assert (=> b!766738 (= e!426990 (Intermediate!7829 true index!1321 x!1131))))

(declare-fun b!766739 () Bool)

(assert (=> b!766739 (= e!426992 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) (select (arr!20222 a!3186) j!159) a!3186 mask!3328))))

(assert (= (and d!101217 c!84371) b!766738))

(assert (= (and d!101217 (not c!84371)) b!766735))

(assert (= (and b!766735 c!84370) b!766734))

(assert (= (and b!766735 (not c!84370)) b!766739))

(assert (= (and d!101217 c!84369) b!766732))

(assert (= (and d!101217 (not c!84369)) b!766731))

(assert (= (and b!766731 res!518774) b!766733))

(assert (= (and b!766733 (not res!518775)) b!766737))

(assert (= (and b!766737 (not res!518776)) b!766736))

(declare-fun m!712695 () Bool)

(assert (=> d!101217 m!712695))

(assert (=> d!101217 m!712463))

(declare-fun m!712697 () Bool)

(assert (=> b!766737 m!712697))

(assert (=> b!766736 m!712697))

(assert (=> b!766739 m!712461))

(assert (=> b!766739 m!712461))

(assert (=> b!766739 m!712437))

(declare-fun m!712699 () Bool)

(assert (=> b!766739 m!712699))

(assert (=> b!766733 m!712697))

(assert (=> b!766400 d!101217))

(declare-fun b!766742 () Bool)

(declare-fun e!426996 () Bool)

(declare-fun e!426995 () Bool)

(assert (=> b!766742 (= e!426996 e!426995)))

(declare-fun res!518779 () Bool)

(declare-fun lt!341092 () SeekEntryResult!7829)

(assert (=> b!766742 (= res!518779 (and (is-Intermediate!7829 lt!341092) (not (undefined!8641 lt!341092)) (bvslt (x!64612 lt!341092) #b01111111111111111111111111111110) (bvsge (x!64612 lt!341092) #b00000000000000000000000000000000) (bvsge (x!64612 lt!341092) (bvadd #b00000000000000000000000000000001 x!1131))))))

(assert (=> b!766742 (=> (not res!518779) (not e!426995))))

(declare-fun d!101221 () Bool)

(assert (=> d!101221 e!426996))

(declare-fun c!84372 () Bool)

(assert (=> d!101221 (= c!84372 (and (is-Intermediate!7829 lt!341092) (undefined!8641 lt!341092)))))

(declare-fun e!426997 () SeekEntryResult!7829)

(assert (=> d!101221 (= lt!341092 e!426997)))

(declare-fun c!84374 () Bool)

(assert (=> d!101221 (= c!84374 (bvsge (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110))))

(declare-fun lt!341091 () (_ BitVec 64))

(assert (=> d!101221 (= lt!341091 (select (arr!20222 a!3186) lt!340943))))

(assert (=> d!101221 (validMask!0 mask!3328)))

(assert (=> d!101221 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!340943 (select (arr!20222 a!3186) j!159) a!3186 mask!3328) lt!341092)))

(declare-fun b!766743 () Bool)

(assert (=> b!766743 (= e!426996 (bvsge (x!64612 lt!341092) #b01111111111111111111111111111110))))

(declare-fun b!766744 () Bool)

(assert (=> b!766744 (and (bvsge (index!33685 lt!341092) #b00000000000000000000000000000000) (bvslt (index!33685 lt!341092) (size!20643 a!3186)))))

(declare-fun res!518780 () Bool)

(assert (=> b!766744 (= res!518780 (= (select (arr!20222 a!3186) (index!33685 lt!341092)) (select (arr!20222 a!3186) j!159)))))

(declare-fun e!426998 () Bool)

(assert (=> b!766744 (=> res!518780 e!426998)))

(assert (=> b!766744 (= e!426995 e!426998)))

(declare-fun b!766745 () Bool)

(declare-fun e!426999 () SeekEntryResult!7829)

(assert (=> b!766745 (= e!426999 (Intermediate!7829 false lt!340943 (bvadd #b00000000000000000000000000000001 x!1131)))))

(declare-fun b!766746 () Bool)

(assert (=> b!766746 (= e!426997 e!426999)))

(declare-fun c!84373 () Bool)

(assert (=> b!766746 (= c!84373 (or (= lt!341091 (select (arr!20222 a!3186) j!159)) (= (bvadd lt!341091 lt!341091) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!766747 () Bool)

(assert (=> b!766747 (and (bvsge (index!33685 lt!341092) #b00000000000000000000000000000000) (bvslt (index!33685 lt!341092) (size!20643 a!3186)))))

(assert (=> b!766747 (= e!426998 (= (select (arr!20222 a!3186) (index!33685 lt!341092)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!766748 () Bool)

(assert (=> b!766748 (and (bvsge (index!33685 lt!341092) #b00000000000000000000000000000000) (bvslt (index!33685 lt!341092) (size!20643 a!3186)))))

(declare-fun res!518781 () Bool)

(assert (=> b!766748 (= res!518781 (= (select (arr!20222 a!3186) (index!33685 lt!341092)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!766748 (=> res!518781 e!426998)))

(declare-fun b!766749 () Bool)

(assert (=> b!766749 (= e!426997 (Intermediate!7829 true lt!340943 (bvadd #b00000000000000000000000000000001 x!1131)))))

(declare-fun b!766750 () Bool)

(assert (=> b!766750 (= e!426999 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131 #b00000000000000000000000000000001) (nextIndex!0 lt!340943 (bvadd #b00000000000000000000000000000001 x!1131) mask!3328) (select (arr!20222 a!3186) j!159) a!3186 mask!3328))))

(assert (= (and d!101221 c!84374) b!766749))

(assert (= (and d!101221 (not c!84374)) b!766746))

(assert (= (and b!766746 c!84373) b!766745))

(assert (= (and b!766746 (not c!84373)) b!766750))

(assert (= (and d!101221 c!84372) b!766743))

(assert (= (and d!101221 (not c!84372)) b!766742))

(assert (= (and b!766742 res!518779) b!766744))

(assert (= (and b!766744 (not res!518780)) b!766748))

(assert (= (and b!766748 (not res!518781)) b!766747))

(declare-fun m!712701 () Bool)

(assert (=> d!101221 m!712701))

(assert (=> d!101221 m!712463))

(declare-fun m!712703 () Bool)

(assert (=> b!766748 m!712703))

(assert (=> b!766747 m!712703))

(declare-fun m!712705 () Bool)

(assert (=> b!766750 m!712705))

(assert (=> b!766750 m!712705))

(assert (=> b!766750 m!712437))

(declare-fun m!712707 () Bool)

(assert (=> b!766750 m!712707))

(assert (=> b!766744 m!712703))

(assert (=> b!766396 d!101221))

(declare-fun d!101223 () Bool)

(assert (=> d!101223 (= (validKeyInArray!0 (select (arr!20222 a!3186) j!159)) (and (not (= (select (arr!20222 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!20222 a!3186) j!159) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!766395 d!101223))

(declare-fun d!101225 () Bool)

(declare-fun res!518792 () Bool)

(declare-fun e!427012 () Bool)

(assert (=> d!101225 (=> res!518792 e!427012)))

(assert (=> d!101225 (= res!518792 (= (select (arr!20222 a!3186) #b00000000000000000000000000000000) k!2102))))

(assert (=> d!101225 (= (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000) e!427012)))

(declare-fun b!766765 () Bool)

(declare-fun e!427013 () Bool)

(assert (=> b!766765 (= e!427012 e!427013)))

(declare-fun res!518793 () Bool)

(assert (=> b!766765 (=> (not res!518793) (not e!427013))))

(assert (=> b!766765 (= res!518793 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!20643 a!3186)))))

(declare-fun b!766766 () Bool)

(assert (=> b!766766 (= e!427013 (arrayContainsKey!0 a!3186 k!2102 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!101225 (not res!518792)) b!766765))

(assert (= (and b!766765 res!518793) b!766766))

(assert (=> d!101225 m!712515))

(declare-fun m!712709 () Bool)

(assert (=> b!766766 m!712709))

(assert (=> b!766397 d!101225))

(declare-fun d!101227 () Bool)

(declare-fun lt!341095 () (_ BitVec 32))

(assert (=> d!101227 (and (bvsge lt!341095 #b00000000000000000000000000000000) (bvslt lt!341095 (bvadd mask!3328 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!101227 (= lt!341095 (choose!52 index!1321 x!1131 mask!3328))))

(assert (=> d!101227 (validMask!0 mask!3328)))

(assert (=> d!101227 (= (nextIndex!0 index!1321 x!1131 mask!3328) lt!341095)))

(declare-fun bs!21502 () Bool)

(assert (= bs!21502 d!101227))

(declare-fun m!712717 () Bool)

(assert (=> bs!21502 m!712717))

(assert (=> bs!21502 m!712463))

(assert (=> b!766386 d!101227))

(declare-fun b!766801 () Bool)

(declare-fun e!427037 () Bool)

(declare-fun e!427038 () Bool)

(assert (=> b!766801 (= e!427037 e!427038)))

(declare-fun c!84387 () Bool)

(assert (=> b!766801 (= c!84387 (validKeyInArray!0 (select (arr!20222 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!766802 () Bool)

(declare-fun call!35064 () Bool)

(assert (=> b!766802 (= e!427038 call!35064)))

(declare-fun b!766803 () Bool)

(declare-fun e!427039 () Bool)

(declare-fun contains!4082 (List!14277 (_ BitVec 64)) Bool)

(assert (=> b!766803 (= e!427039 (contains!4082 Nil!14274 (select (arr!20222 a!3186) #b00000000000000000000000000000000)))))

(declare-fun d!101231 () Bool)

(declare-fun res!518808 () Bool)

(declare-fun e!427040 () Bool)

(assert (=> d!101231 (=> res!518808 e!427040)))

(assert (=> d!101231 (= res!518808 (bvsge #b00000000000000000000000000000000 (size!20643 a!3186)))))

(assert (=> d!101231 (= (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14274) e!427040)))

(declare-fun b!766804 () Bool)

(assert (=> b!766804 (= e!427040 e!427037)))

(declare-fun res!518809 () Bool)

(assert (=> b!766804 (=> (not res!518809) (not e!427037))))

(assert (=> b!766804 (= res!518809 (not e!427039))))

(declare-fun res!518810 () Bool)

(assert (=> b!766804 (=> (not res!518810) (not e!427039))))

(assert (=> b!766804 (= res!518810 (validKeyInArray!0 (select (arr!20222 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!766805 () Bool)

(assert (=> b!766805 (= e!427038 call!35064)))

(declare-fun bm!35061 () Bool)

(assert (=> bm!35061 (= call!35064 (arrayNoDuplicates!0 a!3186 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!84387 (Cons!14273 (select (arr!20222 a!3186) #b00000000000000000000000000000000) Nil!14274) Nil!14274)))))

(assert (= (and d!101231 (not res!518808)) b!766804))

(assert (= (and b!766804 res!518810) b!766803))

(assert (= (and b!766804 res!518809) b!766801))

(assert (= (and b!766801 c!84387) b!766802))

(assert (= (and b!766801 (not c!84387)) b!766805))

(assert (= (or b!766802 b!766805) bm!35061))

(assert (=> b!766801 m!712515))

(assert (=> b!766801 m!712515))

(assert (=> b!766801 m!712523))

(assert (=> b!766803 m!712515))

(assert (=> b!766803 m!712515))

(declare-fun m!712751 () Bool)

(assert (=> b!766803 m!712751))

(assert (=> b!766804 m!712515))

(assert (=> b!766804 m!712515))

(assert (=> b!766804 m!712523))

(assert (=> bm!35061 m!712515))

(declare-fun m!712753 () Bool)

(assert (=> bm!35061 m!712753))

(assert (=> b!766382 d!101231))

(declare-fun b!766815 () Bool)

(declare-fun lt!341111 () SeekEntryResult!7829)

(declare-fun e!427047 () SeekEntryResult!7829)

(assert (=> b!766815 (= e!427047 (seekKeyOrZeroReturnVacant!0 (x!64612 lt!341111) (index!33685 lt!341111) (index!33685 lt!341111) (select (arr!20222 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!766816 () Bool)

(assert (=> b!766816 (= e!427047 (MissingZero!7829 (index!33685 lt!341111)))))

(declare-fun b!766817 () Bool)

(declare-fun e!427048 () SeekEntryResult!7829)

(assert (=> b!766817 (= e!427048 Undefined!7829)))

(declare-fun d!101245 () Bool)

(declare-fun lt!341109 () SeekEntryResult!7829)

(assert (=> d!101245 (and (or (is-Undefined!7829 lt!341109) (not (is-Found!7829 lt!341109)) (and (bvsge (index!33684 lt!341109) #b00000000000000000000000000000000) (bvslt (index!33684 lt!341109) (size!20643 a!3186)))) (or (is-Undefined!7829 lt!341109) (is-Found!7829 lt!341109) (not (is-MissingZero!7829 lt!341109)) (and (bvsge (index!33683 lt!341109) #b00000000000000000000000000000000) (bvslt (index!33683 lt!341109) (size!20643 a!3186)))) (or (is-Undefined!7829 lt!341109) (is-Found!7829 lt!341109) (is-MissingZero!7829 lt!341109) (not (is-MissingVacant!7829 lt!341109)) (and (bvsge (index!33686 lt!341109) #b00000000000000000000000000000000) (bvslt (index!33686 lt!341109) (size!20643 a!3186)))) (or (is-Undefined!7829 lt!341109) (ite (is-Found!7829 lt!341109) (= (select (arr!20222 a!3186) (index!33684 lt!341109)) (select (arr!20222 a!3186) j!159)) (ite (is-MissingZero!7829 lt!341109) (= (select (arr!20222 a!3186) (index!33683 lt!341109)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!7829 lt!341109) (= (select (arr!20222 a!3186) (index!33686 lt!341109)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!101245 (= lt!341109 e!427048)))

(declare-fun c!84391 () Bool)

(assert (=> d!101245 (= c!84391 (and (is-Intermediate!7829 lt!341111) (undefined!8641 lt!341111)))))

(assert (=> d!101245 (= lt!341111 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20222 a!3186) j!159) mask!3328) (select (arr!20222 a!3186) j!159) a!3186 mask!3328))))

(assert (=> d!101245 (validMask!0 mask!3328)))

(assert (=> d!101245 (= (seekEntryOrOpen!0 (select (arr!20222 a!3186) j!159) a!3186 mask!3328) lt!341109)))

(declare-fun b!766818 () Bool)

(declare-fun c!84393 () Bool)

(declare-fun lt!341110 () (_ BitVec 64))

(assert (=> b!766818 (= c!84393 (= lt!341110 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!427046 () SeekEntryResult!7829)

(assert (=> b!766818 (= e!427046 e!427047)))

(declare-fun b!766819 () Bool)

(assert (=> b!766819 (= e!427048 e!427046)))

(assert (=> b!766819 (= lt!341110 (select (arr!20222 a!3186) (index!33685 lt!341111)))))

(declare-fun c!84392 () Bool)

(assert (=> b!766819 (= c!84392 (= lt!341110 (select (arr!20222 a!3186) j!159)))))

(declare-fun b!766820 () Bool)

(assert (=> b!766820 (= e!427046 (Found!7829 (index!33685 lt!341111)))))

(assert (= (and d!101245 c!84391) b!766817))

(assert (= (and d!101245 (not c!84391)) b!766819))

(assert (= (and b!766819 c!84392) b!766820))

(assert (= (and b!766819 (not c!84392)) b!766818))

(assert (= (and b!766818 c!84393) b!766816))

(assert (= (and b!766818 (not c!84393)) b!766815))

(assert (=> b!766815 m!712437))

(declare-fun m!712761 () Bool)

(assert (=> b!766815 m!712761))

(declare-fun m!712763 () Bool)

(assert (=> d!101245 m!712763))

(declare-fun m!712765 () Bool)

(assert (=> d!101245 m!712765))

(declare-fun m!712767 () Bool)

(assert (=> d!101245 m!712767))

(assert (=> d!101245 m!712437))

(assert (=> d!101245 m!712483))

(assert (=> d!101245 m!712483))

(assert (=> d!101245 m!712437))

(assert (=> d!101245 m!712485))

(assert (=> d!101245 m!712463))

(declare-fun m!712769 () Bool)

(assert (=> b!766819 m!712769))

(assert (=> b!766384 d!101245))

(declare-fun b!766830 () Bool)

(declare-fun e!427054 () SeekEntryResult!7829)

(declare-fun e!427056 () SeekEntryResult!7829)

(assert (=> b!766830 (= e!427054 e!427056)))

(declare-fun lt!341114 () (_ BitVec 64))

(declare-fun c!84399 () Bool)

(assert (=> b!766830 (= c!84399 (= lt!341114 (select (arr!20222 a!3186) j!159)))))

(declare-fun b!766831 () Bool)

(declare-fun c!84398 () Bool)

(assert (=> b!766831 (= c!84398 (= lt!341114 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!427055 () SeekEntryResult!7829)

(assert (=> b!766831 (= e!427056 e!427055)))

(declare-fun b!766832 () Bool)

(assert (=> b!766832 (= e!427054 Undefined!7829)))

(declare-fun b!766833 () Bool)

(assert (=> b!766833 (= e!427056 (Found!7829 index!1321))))

(declare-fun b!766834 () Bool)

(assert (=> b!766834 (= e!427055 (seekKeyOrZeroReturnVacant!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) resIntermediateIndex!5 (select (arr!20222 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!766835 () Bool)

(assert (=> b!766835 (= e!427055 (MissingVacant!7829 resIntermediateIndex!5))))

(declare-fun lt!341115 () SeekEntryResult!7829)

(declare-fun d!101249 () Bool)

(assert (=> d!101249 (and (or (is-Undefined!7829 lt!341115) (not (is-Found!7829 lt!341115)) (and (bvsge (index!33684 lt!341115) #b00000000000000000000000000000000) (bvslt (index!33684 lt!341115) (size!20643 a!3186)))) (or (is-Undefined!7829 lt!341115) (is-Found!7829 lt!341115) (not (is-MissingVacant!7829 lt!341115)) (not (= (index!33686 lt!341115) resIntermediateIndex!5)) (and (bvsge (index!33686 lt!341115) #b00000000000000000000000000000000) (bvslt (index!33686 lt!341115) (size!20643 a!3186)))) (or (is-Undefined!7829 lt!341115) (ite (is-Found!7829 lt!341115) (= (select (arr!20222 a!3186) (index!33684 lt!341115)) (select (arr!20222 a!3186) j!159)) (and (is-MissingVacant!7829 lt!341115) (= (index!33686 lt!341115) resIntermediateIndex!5) (= (select (arr!20222 a!3186) (index!33686 lt!341115)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!101249 (= lt!341115 e!427054)))

(declare-fun c!84397 () Bool)

(assert (=> d!101249 (= c!84397 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!101249 (= lt!341114 (select (arr!20222 a!3186) index!1321))))

(assert (=> d!101249 (validMask!0 mask!3328)))

(assert (=> d!101249 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20222 a!3186) j!159) a!3186 mask!3328) lt!341115)))

(assert (= (and d!101249 c!84397) b!766832))

(assert (= (and d!101249 (not c!84397)) b!766830))

(assert (= (and b!766830 c!84399) b!766833))

(assert (= (and b!766830 (not c!84399)) b!766831))

(assert (= (and b!766831 c!84398) b!766835))

(assert (= (and b!766831 (not c!84398)) b!766834))

(assert (=> b!766834 m!712461))

(assert (=> b!766834 m!712461))

(assert (=> b!766834 m!712437))

(declare-fun m!712777 () Bool)

(assert (=> b!766834 m!712777))

(declare-fun m!712779 () Bool)

(assert (=> d!101249 m!712779))

(declare-fun m!712783 () Bool)

(assert (=> d!101249 m!712783))

(assert (=> d!101249 m!712695))

(assert (=> d!101249 m!712463))

(assert (=> b!766394 d!101249))

(push 1)

