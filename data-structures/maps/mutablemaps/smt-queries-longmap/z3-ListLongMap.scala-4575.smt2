; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!63846 () Bool)

(assert start!63846)

(declare-fun b!717587 () Bool)

(declare-fun res!480377 () Bool)

(declare-fun e!402900 () Bool)

(assert (=> b!717587 (=> (not res!480377) (not e!402900))))

(declare-datatypes ((array!40623 0))(
  ( (array!40624 (arr!19438 (Array (_ BitVec 32) (_ BitVec 64))) (size!19859 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40623)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40623 (_ BitVec 32)) Bool)

(assert (=> b!717587 (= res!480377 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!717588 () Bool)

(declare-fun res!480369 () Bool)

(assert (=> b!717588 (=> (not res!480369) (not e!402900))))

(declare-datatypes ((List!13493 0))(
  ( (Nil!13490) (Cons!13489 (h!14534 (_ BitVec 64)) (t!19816 List!13493)) )
))
(declare-fun noDuplicate!1283 (List!13493) Bool)

(assert (=> b!717588 (= res!480369 (noDuplicate!1283 Nil!13490))))

(declare-fun res!480378 () Bool)

(declare-fun e!402901 () Bool)

(assert (=> start!63846 (=> (not res!480378) (not e!402901))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!63846 (= res!480378 (validMask!0 mask!3328))))

(assert (=> start!63846 e!402901))

(declare-fun array_inv!15212 (array!40623) Bool)

(assert (=> start!63846 (array_inv!15212 a!3186)))

(assert (=> start!63846 true))

(declare-fun b!717589 () Bool)

(declare-fun res!480370 () Bool)

(assert (=> b!717589 (=> (not res!480370) (not e!402901))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!717589 (= res!480370 (and (= (size!19859 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19859 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19859 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!717590 () Bool)

(declare-fun res!480372 () Bool)

(assert (=> b!717590 (=> (not res!480372) (not e!402901))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!717590 (= res!480372 (validKeyInArray!0 k0!2102))))

(declare-fun b!717591 () Bool)

(declare-fun e!402902 () Bool)

(assert (=> b!717591 (= e!402900 e!402902)))

(declare-fun res!480376 () Bool)

(assert (=> b!717591 (=> res!480376 e!402902)))

(declare-fun contains!4034 (List!13493 (_ BitVec 64)) Bool)

(assert (=> b!717591 (= res!480376 (contains!4034 Nil!13490 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!717592 () Bool)

(assert (=> b!717592 (= e!402901 e!402900)))

(declare-fun res!480371 () Bool)

(assert (=> b!717592 (=> (not res!480371) (not e!402900))))

(declare-datatypes ((SeekEntryResult!7045 0))(
  ( (MissingZero!7045 (index!30547 (_ BitVec 32))) (Found!7045 (index!30548 (_ BitVec 32))) (Intermediate!7045 (undefined!7857 Bool) (index!30549 (_ BitVec 32)) (x!61594 (_ BitVec 32))) (Undefined!7045) (MissingVacant!7045 (index!30550 (_ BitVec 32))) )
))
(declare-fun lt!319130 () SeekEntryResult!7045)

(assert (=> b!717592 (= res!480371 (or (= lt!319130 (MissingZero!7045 i!1173)) (= lt!319130 (MissingVacant!7045 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40623 (_ BitVec 32)) SeekEntryResult!7045)

(assert (=> b!717592 (= lt!319130 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!717593 () Bool)

(declare-fun res!480373 () Bool)

(assert (=> b!717593 (=> (not res!480373) (not e!402900))))

(assert (=> b!717593 (= res!480373 (and (bvsle #b00000000000000000000000000000000 (size!19859 a!3186)) (bvslt (size!19859 a!3186) #b01111111111111111111111111111111)))))

(declare-fun b!717594 () Bool)

(assert (=> b!717594 (= e!402902 (contains!4034 Nil!13490 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!717595 () Bool)

(declare-fun res!480374 () Bool)

(assert (=> b!717595 (=> (not res!480374) (not e!402901))))

(declare-fun arrayContainsKey!0 (array!40623 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!717595 (= res!480374 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!717596 () Bool)

(declare-fun res!480375 () Bool)

(assert (=> b!717596 (=> (not res!480375) (not e!402901))))

(assert (=> b!717596 (= res!480375 (validKeyInArray!0 (select (arr!19438 a!3186) j!159)))))

(assert (= (and start!63846 res!480378) b!717589))

(assert (= (and b!717589 res!480370) b!717596))

(assert (= (and b!717596 res!480375) b!717590))

(assert (= (and b!717590 res!480372) b!717595))

(assert (= (and b!717595 res!480374) b!717592))

(assert (= (and b!717592 res!480371) b!717587))

(assert (= (and b!717587 res!480377) b!717593))

(assert (= (and b!717593 res!480373) b!717588))

(assert (= (and b!717588 res!480369) b!717591))

(assert (= (and b!717591 (not res!480376)) b!717594))

(declare-fun m!673517 () Bool)

(assert (=> b!717594 m!673517))

(declare-fun m!673519 () Bool)

(assert (=> b!717595 m!673519))

(declare-fun m!673521 () Bool)

(assert (=> b!717588 m!673521))

(declare-fun m!673523 () Bool)

(assert (=> b!717596 m!673523))

(assert (=> b!717596 m!673523))

(declare-fun m!673525 () Bool)

(assert (=> b!717596 m!673525))

(declare-fun m!673527 () Bool)

(assert (=> b!717590 m!673527))

(declare-fun m!673529 () Bool)

(assert (=> b!717592 m!673529))

(declare-fun m!673531 () Bool)

(assert (=> b!717587 m!673531))

(declare-fun m!673533 () Bool)

(assert (=> start!63846 m!673533))

(declare-fun m!673535 () Bool)

(assert (=> start!63846 m!673535))

(declare-fun m!673537 () Bool)

(assert (=> b!717591 m!673537))

(check-sat (not b!717590) (not b!717594) (not b!717588) (not b!717587) (not b!717595) (not start!63846) (not b!717592) (not b!717591) (not b!717596))
(check-sat)
(get-model)

(declare-fun d!98829 () Bool)

(declare-fun lt!319136 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!379 (List!13493) (InoxSet (_ BitVec 64)))

(assert (=> d!98829 (= lt!319136 (select (content!379 Nil!13490) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!402921 () Bool)

(assert (=> d!98829 (= lt!319136 e!402921)))

(declare-fun res!480414 () Bool)

(assert (=> d!98829 (=> (not res!480414) (not e!402921))))

(get-info :version)

(assert (=> d!98829 (= res!480414 ((_ is Cons!13489) Nil!13490))))

(assert (=> d!98829 (= (contains!4034 Nil!13490 #b0000000000000000000000000000000000000000000000000000000000000000) lt!319136)))

(declare-fun b!717631 () Bool)

(declare-fun e!402920 () Bool)

(assert (=> b!717631 (= e!402921 e!402920)))

(declare-fun res!480413 () Bool)

(assert (=> b!717631 (=> res!480413 e!402920)))

(assert (=> b!717631 (= res!480413 (= (h!14534 Nil!13490) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!717632 () Bool)

(assert (=> b!717632 (= e!402920 (contains!4034 (t!19816 Nil!13490) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!98829 res!480414) b!717631))

(assert (= (and b!717631 (not res!480413)) b!717632))

(declare-fun m!673561 () Bool)

(assert (=> d!98829 m!673561))

(declare-fun m!673563 () Bool)

(assert (=> d!98829 m!673563))

(declare-fun m!673565 () Bool)

(assert (=> b!717632 m!673565))

(assert (=> b!717591 d!98829))

(declare-fun d!98831 () Bool)

(assert (=> d!98831 (= (validKeyInArray!0 (select (arr!19438 a!3186) j!159)) (and (not (= (select (arr!19438 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!19438 a!3186) j!159) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!717596 d!98831))

(declare-fun d!98833 () Bool)

(assert (=> d!98833 (= (validMask!0 mask!3328) (and (or (= mask!3328 #b00000000000000000000000000000111) (= mask!3328 #b00000000000000000000000000001111) (= mask!3328 #b00000000000000000000000000011111) (= mask!3328 #b00000000000000000000000000111111) (= mask!3328 #b00000000000000000000000001111111) (= mask!3328 #b00000000000000000000000011111111) (= mask!3328 #b00000000000000000000000111111111) (= mask!3328 #b00000000000000000000001111111111) (= mask!3328 #b00000000000000000000011111111111) (= mask!3328 #b00000000000000000000111111111111) (= mask!3328 #b00000000000000000001111111111111) (= mask!3328 #b00000000000000000011111111111111) (= mask!3328 #b00000000000000000111111111111111) (= mask!3328 #b00000000000000001111111111111111) (= mask!3328 #b00000000000000011111111111111111) (= mask!3328 #b00000000000000111111111111111111) (= mask!3328 #b00000000000001111111111111111111) (= mask!3328 #b00000000000011111111111111111111) (= mask!3328 #b00000000000111111111111111111111) (= mask!3328 #b00000000001111111111111111111111) (= mask!3328 #b00000000011111111111111111111111) (= mask!3328 #b00000000111111111111111111111111) (= mask!3328 #b00000001111111111111111111111111) (= mask!3328 #b00000011111111111111111111111111) (= mask!3328 #b00000111111111111111111111111111) (= mask!3328 #b00001111111111111111111111111111) (= mask!3328 #b00011111111111111111111111111111) (= mask!3328 #b00111111111111111111111111111111)) (bvsle mask!3328 #b00111111111111111111111111111111)))))

(assert (=> start!63846 d!98833))

(declare-fun d!98841 () Bool)

(assert (=> d!98841 (= (array_inv!15212 a!3186) (bvsge (size!19859 a!3186) #b00000000000000000000000000000000))))

(assert (=> start!63846 d!98841))

(declare-fun d!98843 () Bool)

(assert (=> d!98843 (= (validKeyInArray!0 k0!2102) (and (not (= k0!2102 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2102 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!717590 d!98843))

(declare-fun b!717665 () Bool)

(declare-fun e!402943 () Bool)

(declare-fun e!402945 () Bool)

(assert (=> b!717665 (= e!402943 e!402945)))

(declare-fun lt!319153 () (_ BitVec 64))

(assert (=> b!717665 (= lt!319153 (select (arr!19438 a!3186) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!24632 0))(
  ( (Unit!24633) )
))
(declare-fun lt!319154 () Unit!24632)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!40623 (_ BitVec 64) (_ BitVec 32)) Unit!24632)

(assert (=> b!717665 (= lt!319154 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!319153 #b00000000000000000000000000000000))))

(assert (=> b!717665 (arrayContainsKey!0 a!3186 lt!319153 #b00000000000000000000000000000000)))

(declare-fun lt!319152 () Unit!24632)

(assert (=> b!717665 (= lt!319152 lt!319154)))

(declare-fun res!480425 () Bool)

(assert (=> b!717665 (= res!480425 (= (seekEntryOrOpen!0 (select (arr!19438 a!3186) #b00000000000000000000000000000000) a!3186 mask!3328) (Found!7045 #b00000000000000000000000000000000)))))

(assert (=> b!717665 (=> (not res!480425) (not e!402945))))

(declare-fun b!717666 () Bool)

(declare-fun call!34707 () Bool)

(assert (=> b!717666 (= e!402945 call!34707)))

(declare-fun d!98845 () Bool)

(declare-fun res!480426 () Bool)

(declare-fun e!402944 () Bool)

(assert (=> d!98845 (=> res!480426 e!402944)))

(assert (=> d!98845 (= res!480426 (bvsge #b00000000000000000000000000000000 (size!19859 a!3186)))))

(assert (=> d!98845 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328) e!402944)))

(declare-fun b!717667 () Bool)

(assert (=> b!717667 (= e!402944 e!402943)))

(declare-fun c!78987 () Bool)

(assert (=> b!717667 (= c!78987 (validKeyInArray!0 (select (arr!19438 a!3186) #b00000000000000000000000000000000)))))

(declare-fun bm!34704 () Bool)

(assert (=> bm!34704 (= call!34707 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun b!717668 () Bool)

(assert (=> b!717668 (= e!402943 call!34707)))

(assert (= (and d!98845 (not res!480426)) b!717667))

(assert (= (and b!717667 c!78987) b!717665))

(assert (= (and b!717667 (not c!78987)) b!717668))

(assert (= (and b!717665 res!480425) b!717666))

(assert (= (or b!717666 b!717668) bm!34704))

(declare-fun m!673585 () Bool)

(assert (=> b!717665 m!673585))

(declare-fun m!673587 () Bool)

(assert (=> b!717665 m!673587))

(declare-fun m!673589 () Bool)

(assert (=> b!717665 m!673589))

(assert (=> b!717665 m!673585))

(declare-fun m!673591 () Bool)

(assert (=> b!717665 m!673591))

(assert (=> b!717667 m!673585))

(assert (=> b!717667 m!673585))

(declare-fun m!673593 () Bool)

(assert (=> b!717667 m!673593))

(declare-fun m!673595 () Bool)

(assert (=> bm!34704 m!673595))

(assert (=> b!717587 d!98845))

(declare-fun b!717731 () Bool)

(declare-fun c!79000 () Bool)

(declare-fun lt!319188 () (_ BitVec 64))

(assert (=> b!717731 (= c!79000 (= lt!319188 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!402998 () SeekEntryResult!7045)

(declare-fun e!402996 () SeekEntryResult!7045)

(assert (=> b!717731 (= e!402998 e!402996)))

(declare-fun b!717732 () Bool)

(declare-fun e!402997 () SeekEntryResult!7045)

(assert (=> b!717732 (= e!402997 e!402998)))

(declare-fun lt!319187 () SeekEntryResult!7045)

(assert (=> b!717732 (= lt!319188 (select (arr!19438 a!3186) (index!30549 lt!319187)))))

(declare-fun c!79001 () Bool)

(assert (=> b!717732 (= c!79001 (= lt!319188 k0!2102))))

(declare-fun b!717734 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40623 (_ BitVec 32)) SeekEntryResult!7045)

(assert (=> b!717734 (= e!402996 (seekKeyOrZeroReturnVacant!0 (x!61594 lt!319187) (index!30549 lt!319187) (index!30549 lt!319187) k0!2102 a!3186 mask!3328))))

(declare-fun b!717735 () Bool)

(assert (=> b!717735 (= e!402997 Undefined!7045)))

(declare-fun b!717736 () Bool)

(assert (=> b!717736 (= e!402998 (Found!7045 (index!30549 lt!319187)))))

(declare-fun d!98853 () Bool)

(declare-fun lt!319186 () SeekEntryResult!7045)

(assert (=> d!98853 (and (or ((_ is Undefined!7045) lt!319186) (not ((_ is Found!7045) lt!319186)) (and (bvsge (index!30548 lt!319186) #b00000000000000000000000000000000) (bvslt (index!30548 lt!319186) (size!19859 a!3186)))) (or ((_ is Undefined!7045) lt!319186) ((_ is Found!7045) lt!319186) (not ((_ is MissingZero!7045) lt!319186)) (and (bvsge (index!30547 lt!319186) #b00000000000000000000000000000000) (bvslt (index!30547 lt!319186) (size!19859 a!3186)))) (or ((_ is Undefined!7045) lt!319186) ((_ is Found!7045) lt!319186) ((_ is MissingZero!7045) lt!319186) (not ((_ is MissingVacant!7045) lt!319186)) (and (bvsge (index!30550 lt!319186) #b00000000000000000000000000000000) (bvslt (index!30550 lt!319186) (size!19859 a!3186)))) (or ((_ is Undefined!7045) lt!319186) (ite ((_ is Found!7045) lt!319186) (= (select (arr!19438 a!3186) (index!30548 lt!319186)) k0!2102) (ite ((_ is MissingZero!7045) lt!319186) (= (select (arr!19438 a!3186) (index!30547 lt!319186)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!7045) lt!319186) (= (select (arr!19438 a!3186) (index!30550 lt!319186)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!98853 (= lt!319186 e!402997)))

(declare-fun c!79002 () Bool)

(assert (=> d!98853 (= c!79002 (and ((_ is Intermediate!7045) lt!319187) (undefined!7857 lt!319187)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40623 (_ BitVec 32)) SeekEntryResult!7045)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!98853 (= lt!319187 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2102 mask!3328) k0!2102 a!3186 mask!3328))))

(assert (=> d!98853 (validMask!0 mask!3328)))

(assert (=> d!98853 (= (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328) lt!319186)))

(declare-fun b!717733 () Bool)

(assert (=> b!717733 (= e!402996 (MissingZero!7045 (index!30549 lt!319187)))))

(assert (= (and d!98853 c!79002) b!717735))

(assert (= (and d!98853 (not c!79002)) b!717732))

(assert (= (and b!717732 c!79001) b!717736))

(assert (= (and b!717732 (not c!79001)) b!717731))

(assert (= (and b!717731 c!79000) b!717733))

(assert (= (and b!717731 (not c!79000)) b!717734))

(declare-fun m!673643 () Bool)

(assert (=> b!717732 m!673643))

(declare-fun m!673645 () Bool)

(assert (=> b!717734 m!673645))

(assert (=> d!98853 m!673533))

(declare-fun m!673647 () Bool)

(assert (=> d!98853 m!673647))

(declare-fun m!673649 () Bool)

(assert (=> d!98853 m!673649))

(declare-fun m!673651 () Bool)

(assert (=> d!98853 m!673651))

(declare-fun m!673653 () Bool)

(assert (=> d!98853 m!673653))

(declare-fun m!673655 () Bool)

(assert (=> d!98853 m!673655))

(assert (=> d!98853 m!673647))

(assert (=> b!717592 d!98853))

(declare-fun d!98875 () Bool)

(declare-fun res!480469 () Bool)

(declare-fun e!403003 () Bool)

(assert (=> d!98875 (=> res!480469 e!403003)))

(assert (=> d!98875 (= res!480469 ((_ is Nil!13490) Nil!13490))))

(assert (=> d!98875 (= (noDuplicate!1283 Nil!13490) e!403003)))

(declare-fun b!717741 () Bool)

(declare-fun e!403004 () Bool)

(assert (=> b!717741 (= e!403003 e!403004)))

(declare-fun res!480470 () Bool)

(assert (=> b!717741 (=> (not res!480470) (not e!403004))))

(assert (=> b!717741 (= res!480470 (not (contains!4034 (t!19816 Nil!13490) (h!14534 Nil!13490))))))

(declare-fun b!717742 () Bool)

(assert (=> b!717742 (= e!403004 (noDuplicate!1283 (t!19816 Nil!13490)))))

(assert (= (and d!98875 (not res!480469)) b!717741))

(assert (= (and b!717741 res!480470) b!717742))

(declare-fun m!673657 () Bool)

(assert (=> b!717741 m!673657))

(declare-fun m!673659 () Bool)

(assert (=> b!717742 m!673659))

(assert (=> b!717588 d!98875))

(declare-fun d!98877 () Bool)

(declare-fun res!480475 () Bool)

(declare-fun e!403009 () Bool)

(assert (=> d!98877 (=> res!480475 e!403009)))

(assert (=> d!98877 (= res!480475 (= (select (arr!19438 a!3186) #b00000000000000000000000000000000) k0!2102))))

(assert (=> d!98877 (= (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000) e!403009)))

(declare-fun b!717747 () Bool)

(declare-fun e!403010 () Bool)

