; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!67740 () Bool)

(assert start!67740)

(declare-fun b!785519 () Bool)

(declare-fun res!531870 () Bool)

(declare-fun e!436723 () Bool)

(assert (=> b!785519 (=> (not res!531870) (not e!436723))))

(declare-datatypes ((array!42735 0))(
  ( (array!42736 (arr!20452 (Array (_ BitVec 32) (_ BitVec 64))) (size!20873 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42735)

(declare-datatypes ((List!14507 0))(
  ( (Nil!14504) (Cons!14503 (h!15626 (_ BitVec 64)) (t!20830 List!14507)) )
))
(declare-fun arrayNoDuplicates!0 (array!42735 (_ BitVec 32) List!14507) Bool)

(assert (=> b!785519 (= res!531870 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14504))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8059 0))(
  ( (MissingZero!8059 (index!34603 (_ BitVec 32))) (Found!8059 (index!34604 (_ BitVec 32))) (Intermediate!8059 (undefined!8871 Bool) (index!34605 (_ BitVec 32)) (x!65576 (_ BitVec 32))) (Undefined!8059) (MissingVacant!8059 (index!34606 (_ BitVec 32))) )
))
(declare-fun lt!350288 () SeekEntryResult!8059)

(declare-fun e!436716 () Bool)

(declare-fun b!785520 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42735 (_ BitVec 32)) SeekEntryResult!8059)

(assert (=> b!785520 (= e!436716 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20452 a!3186) j!159) a!3186 mask!3328) lt!350288))))

(declare-fun b!785522 () Bool)

(declare-fun e!436722 () Bool)

(assert (=> b!785522 (= e!436723 e!436722)))

(declare-fun res!531886 () Bool)

(assert (=> b!785522 (=> (not res!531886) (not e!436722))))

(declare-fun lt!350284 () SeekEntryResult!8059)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42735 (_ BitVec 32)) SeekEntryResult!8059)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!785522 (= res!531886 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20452 a!3186) j!159) mask!3328) (select (arr!20452 a!3186) j!159) a!3186 mask!3328) lt!350284))))

(assert (=> b!785522 (= lt!350284 (Intermediate!8059 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!785523 () Bool)

(declare-fun res!531877 () Bool)

(assert (=> b!785523 (=> (not res!531877) (not e!436722))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!785523 (= res!531877 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20452 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!785524 () Bool)

(declare-fun e!436726 () Bool)

(assert (=> b!785524 (= e!436726 e!436723)))

(declare-fun res!531869 () Bool)

(assert (=> b!785524 (=> (not res!531869) (not e!436723))))

(declare-fun lt!350292 () SeekEntryResult!8059)

(assert (=> b!785524 (= res!531869 (or (= lt!350292 (MissingZero!8059 i!1173)) (= lt!350292 (MissingVacant!8059 i!1173))))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42735 (_ BitVec 32)) SeekEntryResult!8059)

(assert (=> b!785524 (= lt!350292 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun e!436721 () Bool)

(declare-fun b!785525 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!785525 (= e!436721 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20452 a!3186) j!159) a!3186 mask!3328) lt!350284))))

(declare-fun b!785526 () Bool)

(declare-fun e!436719 () Bool)

(declare-fun e!436717 () Bool)

(assert (=> b!785526 (= e!436719 e!436717)))

(declare-fun res!531872 () Bool)

(assert (=> b!785526 (=> res!531872 e!436717)))

(declare-fun lt!350291 () SeekEntryResult!8059)

(assert (=> b!785526 (= res!531872 (not (= lt!350291 lt!350288)))))

(assert (=> b!785526 (= lt!350291 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20452 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!785527 () Bool)

(declare-fun e!436718 () Bool)

(assert (=> b!785527 (= e!436718 (not e!436719))))

(declare-fun res!531875 () Bool)

(assert (=> b!785527 (=> res!531875 e!436719)))

(declare-fun lt!350283 () SeekEntryResult!8059)

(get-info :version)

(assert (=> b!785527 (= res!531875 (or (not ((_ is Intermediate!8059) lt!350283)) (bvslt x!1131 (x!65576 lt!350283)) (not (= x!1131 (x!65576 lt!350283))) (not (= index!1321 (index!34605 lt!350283)))))))

(assert (=> b!785527 e!436716))

(declare-fun res!531873 () Bool)

(assert (=> b!785527 (=> (not res!531873) (not e!436716))))

(declare-fun lt!350289 () SeekEntryResult!8059)

(assert (=> b!785527 (= res!531873 (= lt!350289 lt!350288))))

(assert (=> b!785527 (= lt!350288 (Found!8059 j!159))))

(assert (=> b!785527 (= lt!350289 (seekEntryOrOpen!0 (select (arr!20452 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42735 (_ BitVec 32)) Bool)

(assert (=> b!785527 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-datatypes ((Unit!27146 0))(
  ( (Unit!27147) )
))
(declare-fun lt!350287 () Unit!27146)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42735 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27146)

(assert (=> b!785527 (= lt!350287 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!785528 () Bool)

(declare-fun res!531883 () Bool)

(assert (=> b!785528 (=> (not res!531883) (not e!436726))))

(assert (=> b!785528 (= res!531883 (and (= (size!20873 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20873 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20873 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!785529 () Bool)

(declare-fun res!531868 () Bool)

(assert (=> b!785529 (=> (not res!531868) (not e!436726))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!785529 (= res!531868 (validKeyInArray!0 k0!2102))))

(declare-fun b!785530 () Bool)

(assert (=> b!785530 (= e!436721 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20452 a!3186) j!159) a!3186 mask!3328) (Found!8059 j!159)))))

(declare-fun b!785531 () Bool)

(assert (=> b!785531 (= e!436722 e!436718)))

(declare-fun res!531876 () Bool)

(assert (=> b!785531 (=> (not res!531876) (not e!436718))))

(declare-fun lt!350290 () SeekEntryResult!8059)

(assert (=> b!785531 (= res!531876 (= lt!350290 lt!350283))))

(declare-fun lt!350286 () array!42735)

(declare-fun lt!350282 () (_ BitVec 64))

(assert (=> b!785531 (= lt!350283 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!350282 lt!350286 mask!3328))))

(assert (=> b!785531 (= lt!350290 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!350282 mask!3328) lt!350282 lt!350286 mask!3328))))

(assert (=> b!785531 (= lt!350282 (select (store (arr!20452 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!785531 (= lt!350286 (array!42736 (store (arr!20452 a!3186) i!1173 k0!2102) (size!20873 a!3186)))))

(declare-fun b!785532 () Bool)

(declare-fun res!531882 () Bool)

(assert (=> b!785532 (=> (not res!531882) (not e!436723))))

(assert (=> b!785532 (= res!531882 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!785533 () Bool)

(declare-fun e!436725 () Unit!27146)

(declare-fun Unit!27148 () Unit!27146)

(assert (=> b!785533 (= e!436725 Unit!27148)))

(declare-fun b!785534 () Bool)

(declare-fun res!531871 () Bool)

(assert (=> b!785534 (=> (not res!531871) (not e!436726))))

(declare-fun arrayContainsKey!0 (array!42735 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!785534 (= res!531871 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!785535 () Bool)

(declare-fun e!436724 () Bool)

(assert (=> b!785535 (= e!436724 (= lt!350289 lt!350291))))

(declare-fun b!785536 () Bool)

(declare-fun res!531878 () Bool)

(assert (=> b!785536 (=> (not res!531878) (not e!436726))))

(assert (=> b!785536 (= res!531878 (validKeyInArray!0 (select (arr!20452 a!3186) j!159)))))

(declare-fun b!785537 () Bool)

(declare-fun Unit!27149 () Unit!27146)

(assert (=> b!785537 (= e!436725 Unit!27149)))

(assert (=> b!785537 false))

(declare-fun res!531881 () Bool)

(assert (=> start!67740 (=> (not res!531881) (not e!436726))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67740 (= res!531881 (validMask!0 mask!3328))))

(assert (=> start!67740 e!436726))

(assert (=> start!67740 true))

(declare-fun array_inv!16226 (array!42735) Bool)

(assert (=> start!67740 (array_inv!16226 a!3186)))

(declare-fun b!785521 () Bool)

(declare-fun res!531874 () Bool)

(assert (=> b!785521 (=> (not res!531874) (not e!436724))))

(assert (=> b!785521 (= res!531874 (= (seekEntryOrOpen!0 lt!350282 lt!350286 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!350282 lt!350286 mask!3328)))))

(declare-fun b!785538 () Bool)

(declare-fun res!531880 () Bool)

(assert (=> b!785538 (=> (not res!531880) (not e!436722))))

(assert (=> b!785538 (= res!531880 e!436721)))

(declare-fun c!87234 () Bool)

(assert (=> b!785538 (= c!87234 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!785539 () Bool)

(declare-fun e!436720 () Bool)

(assert (=> b!785539 (= e!436717 e!436720)))

(declare-fun res!531879 () Bool)

(assert (=> b!785539 (=> res!531879 e!436720)))

(declare-fun lt!350293 () (_ BitVec 64))

(assert (=> b!785539 (= res!531879 (= lt!350293 lt!350282))))

(assert (=> b!785539 (= lt!350293 (select (store (arr!20452 a!3186) i!1173 k0!2102) index!1321))))

(declare-fun b!785540 () Bool)

(declare-fun res!531884 () Bool)

(assert (=> b!785540 (=> (not res!531884) (not e!436723))))

(assert (=> b!785540 (= res!531884 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20873 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20873 a!3186))))))

(declare-fun b!785541 () Bool)

(assert (=> b!785541 (= e!436720 true)))

(assert (=> b!785541 e!436724))

(declare-fun res!531885 () Bool)

(assert (=> b!785541 (=> (not res!531885) (not e!436724))))

(assert (=> b!785541 (= res!531885 (= lt!350293 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!350285 () Unit!27146)

(assert (=> b!785541 (= lt!350285 e!436725)))

(declare-fun c!87233 () Bool)

(assert (=> b!785541 (= c!87233 (= lt!350293 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!67740 res!531881) b!785528))

(assert (= (and b!785528 res!531883) b!785536))

(assert (= (and b!785536 res!531878) b!785529))

(assert (= (and b!785529 res!531868) b!785534))

(assert (= (and b!785534 res!531871) b!785524))

(assert (= (and b!785524 res!531869) b!785532))

(assert (= (and b!785532 res!531882) b!785519))

(assert (= (and b!785519 res!531870) b!785540))

(assert (= (and b!785540 res!531884) b!785522))

(assert (= (and b!785522 res!531886) b!785523))

(assert (= (and b!785523 res!531877) b!785538))

(assert (= (and b!785538 c!87234) b!785525))

(assert (= (and b!785538 (not c!87234)) b!785530))

(assert (= (and b!785538 res!531880) b!785531))

(assert (= (and b!785531 res!531876) b!785527))

(assert (= (and b!785527 res!531873) b!785520))

(assert (= (and b!785527 (not res!531875)) b!785526))

(assert (= (and b!785526 (not res!531872)) b!785539))

(assert (= (and b!785539 (not res!531879)) b!785541))

(assert (= (and b!785541 c!87233) b!785537))

(assert (= (and b!785541 (not c!87233)) b!785533))

(assert (= (and b!785541 res!531885) b!785521))

(assert (= (and b!785521 res!531874) b!785535))

(declare-fun m!727613 () Bool)

(assert (=> b!785522 m!727613))

(assert (=> b!785522 m!727613))

(declare-fun m!727615 () Bool)

(assert (=> b!785522 m!727615))

(assert (=> b!785522 m!727615))

(assert (=> b!785522 m!727613))

(declare-fun m!727617 () Bool)

(assert (=> b!785522 m!727617))

(declare-fun m!727619 () Bool)

(assert (=> b!785531 m!727619))

(declare-fun m!727621 () Bool)

(assert (=> b!785531 m!727621))

(declare-fun m!727623 () Bool)

(assert (=> b!785531 m!727623))

(declare-fun m!727625 () Bool)

(assert (=> b!785531 m!727625))

(assert (=> b!785531 m!727623))

(declare-fun m!727627 () Bool)

(assert (=> b!785531 m!727627))

(declare-fun m!727629 () Bool)

(assert (=> b!785532 m!727629))

(assert (=> b!785530 m!727613))

(assert (=> b!785530 m!727613))

(declare-fun m!727631 () Bool)

(assert (=> b!785530 m!727631))

(assert (=> b!785539 m!727621))

(declare-fun m!727633 () Bool)

(assert (=> b!785539 m!727633))

(assert (=> b!785536 m!727613))

(assert (=> b!785536 m!727613))

(declare-fun m!727635 () Bool)

(assert (=> b!785536 m!727635))

(assert (=> b!785520 m!727613))

(assert (=> b!785520 m!727613))

(declare-fun m!727637 () Bool)

(assert (=> b!785520 m!727637))

(declare-fun m!727639 () Bool)

(assert (=> b!785529 m!727639))

(declare-fun m!727641 () Bool)

(assert (=> b!785521 m!727641))

(declare-fun m!727643 () Bool)

(assert (=> b!785521 m!727643))

(declare-fun m!727645 () Bool)

(assert (=> b!785534 m!727645))

(declare-fun m!727647 () Bool)

(assert (=> b!785524 m!727647))

(declare-fun m!727649 () Bool)

(assert (=> b!785519 m!727649))

(declare-fun m!727651 () Bool)

(assert (=> b!785523 m!727651))

(assert (=> b!785526 m!727613))

(assert (=> b!785526 m!727613))

(assert (=> b!785526 m!727631))

(assert (=> b!785525 m!727613))

(assert (=> b!785525 m!727613))

(declare-fun m!727653 () Bool)

(assert (=> b!785525 m!727653))

(declare-fun m!727655 () Bool)

(assert (=> start!67740 m!727655))

(declare-fun m!727657 () Bool)

(assert (=> start!67740 m!727657))

(assert (=> b!785527 m!727613))

(assert (=> b!785527 m!727613))

(declare-fun m!727659 () Bool)

(assert (=> b!785527 m!727659))

(declare-fun m!727661 () Bool)

(assert (=> b!785527 m!727661))

(declare-fun m!727663 () Bool)

(assert (=> b!785527 m!727663))

(check-sat (not b!785524) (not start!67740) (not b!785534) (not b!785536) (not b!785532) (not b!785522) (not b!785520) (not b!785527) (not b!785531) (not b!785521) (not b!785525) (not b!785529) (not b!785526) (not b!785519) (not b!785530))
(check-sat)
