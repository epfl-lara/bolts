; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60100 () Bool)

(assert start!60100)

(declare-fun b!669509 () Bool)

(declare-datatypes ((Unit!23495 0))(
  ( (Unit!23496) )
))
(declare-fun e!382914 () Unit!23495)

(declare-fun Unit!23497 () Unit!23495)

(assert (=> b!669509 (= e!382914 Unit!23497)))

(declare-fun b!669510 () Bool)

(declare-fun res!436532 () Bool)

(declare-fun e!382905 () Bool)

(assert (=> b!669510 (=> (not res!436532) (not e!382905))))

(declare-datatypes ((array!39103 0))(
  ( (array!39104 (arr!18740 (Array (_ BitVec 32) (_ BitVec 64))) (size!19104 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39103)

(declare-datatypes ((List!12834 0))(
  ( (Nil!12831) (Cons!12830 (h!13875 (_ BitVec 64)) (t!19070 List!12834)) )
))
(declare-fun arrayNoDuplicates!0 (array!39103 (_ BitVec 32) List!12834) Bool)

(assert (=> b!669510 (= res!436532 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12831))))

(declare-fun b!669511 () Bool)

(declare-fun e!382913 () Bool)

(declare-fun lt!311675 () List!12834)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun contains!3377 (List!12834 (_ BitVec 64)) Bool)

(assert (=> b!669511 (= e!382913 (contains!3377 lt!311675 k!2843))))

(declare-fun b!669512 () Bool)

(declare-fun lt!311680 () Unit!23495)

(assert (=> b!669512 (= e!382914 lt!311680)))

(declare-fun lt!311677 () Unit!23495)

(declare-fun acc!681 () List!12834)

(declare-fun lemmaListSubSeqRefl!0 (List!12834) Unit!23495)

(assert (=> b!669512 (= lt!311677 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun subseq!115 (List!12834 List!12834) Bool)

(assert (=> b!669512 (subseq!115 acc!681 acc!681)))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39103 List!12834 List!12834 (_ BitVec 32)) Unit!23495)

(declare-fun $colon$colon!246 (List!12834 (_ BitVec 64)) List!12834)

(assert (=> b!669512 (= lt!311680 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!246 acc!681 (select (arr!18740 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!669512 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!669513 () Bool)

(declare-fun res!436531 () Bool)

(assert (=> b!669513 (=> (not res!436531) (not e!382905))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!669513 (= res!436531 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19104 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!669514 () Bool)

(declare-fun res!436546 () Bool)

(assert (=> b!669514 (=> (not res!436546) (not e!382905))))

(assert (=> b!669514 (= res!436546 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!669515 () Bool)

(declare-fun e!382912 () Bool)

(assert (=> b!669515 (= e!382912 (not (contains!3377 lt!311675 k!2843)))))

(declare-fun res!436530 () Bool)

(assert (=> start!60100 (=> (not res!436530) (not e!382905))))

(assert (=> start!60100 (= res!436530 (and (bvslt (size!19104 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19104 a!3626))))))

(assert (=> start!60100 e!382905))

(assert (=> start!60100 true))

(declare-fun array_inv!14514 (array!39103) Bool)

(assert (=> start!60100 (array_inv!14514 a!3626)))

(declare-fun b!669516 () Bool)

(declare-fun res!436542 () Bool)

(assert (=> b!669516 (=> (not res!436542) (not e!382905))))

(assert (=> b!669516 (= res!436542 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19104 a!3626))))))

(declare-fun b!669517 () Bool)

(declare-fun res!436528 () Bool)

(assert (=> b!669517 (=> (not res!436528) (not e!382905))))

(declare-fun arrayContainsKey!0 (array!39103 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!669517 (= res!436528 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!669518 () Bool)

(declare-fun e!382915 () Unit!23495)

(declare-fun Unit!23498 () Unit!23495)

(assert (=> b!669518 (= e!382915 Unit!23498)))

(declare-fun b!669519 () Bool)

(declare-fun e!382909 () Bool)

(assert (=> b!669519 (= e!382909 e!382912)))

(declare-fun res!436534 () Bool)

(assert (=> b!669519 (=> (not res!436534) (not e!382912))))

(assert (=> b!669519 (= res!436534 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!669520 () Bool)

(declare-fun e!382910 () Bool)

(declare-fun e!382907 () Bool)

(assert (=> b!669520 (= e!382910 e!382907)))

(declare-fun res!436540 () Bool)

(assert (=> b!669520 (=> (not res!436540) (not e!382907))))

(assert (=> b!669520 (= res!436540 (bvsle from!3004 i!1382))))

(declare-fun b!669521 () Bool)

(declare-fun res!436545 () Bool)

(assert (=> b!669521 (=> (not res!436545) (not e!382905))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!669521 (= res!436545 (validKeyInArray!0 k!2843))))

(declare-fun b!669522 () Bool)

(declare-fun res!436533 () Bool)

(declare-fun e!382911 () Bool)

(assert (=> b!669522 (=> res!436533 e!382911)))

(assert (=> b!669522 (= res!436533 (contains!3377 lt!311675 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!669523 () Bool)

(declare-fun res!436527 () Bool)

(assert (=> b!669523 (=> res!436527 e!382911)))

(declare-fun noDuplicate!624 (List!12834) Bool)

(assert (=> b!669523 (= res!436527 (not (noDuplicate!624 lt!311675)))))

(declare-fun b!669524 () Bool)

(assert (=> b!669524 (= e!382905 (not e!382911))))

(declare-fun res!436547 () Bool)

(assert (=> b!669524 (=> res!436547 e!382911)))

(assert (=> b!669524 (= res!436547 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(assert (=> b!669524 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!311675)))

(declare-fun lt!311673 () Unit!23495)

(declare-fun lemmaAddKeyNoContainsInAccStillNoDuplicate!0 (array!39103 (_ BitVec 64) (_ BitVec 32) List!12834 List!12834) Unit!23495)

(assert (=> b!669524 (= lt!311673 (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004) acc!681 lt!311675))))

(declare-fun -!113 (List!12834 (_ BitVec 64)) List!12834)

(assert (=> b!669524 (= (-!113 lt!311675 k!2843) acc!681)))

(assert (=> b!669524 (= lt!311675 ($colon$colon!246 acc!681 k!2843))))

(declare-fun lt!311676 () Unit!23495)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!12834) Unit!23495)

(assert (=> b!669524 (= lt!311676 (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681))))

(assert (=> b!669524 (subseq!115 acc!681 acc!681)))

(declare-fun lt!311679 () Unit!23495)

(assert (=> b!669524 (= lt!311679 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!669524 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!311674 () Unit!23495)

(assert (=> b!669524 (= lt!311674 e!382914)))

(declare-fun c!76858 () Bool)

(assert (=> b!669524 (= c!76858 (validKeyInArray!0 (select (arr!18740 a!3626) from!3004)))))

(declare-fun lt!311682 () Unit!23495)

(assert (=> b!669524 (= lt!311682 e!382915)))

(declare-fun c!76859 () Bool)

(assert (=> b!669524 (= c!76859 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!669524 (arrayContainsKey!0 (array!39104 (store (arr!18740 a!3626) i!1382 k!2843) (size!19104 a!3626)) k!2843 from!3004)))

(declare-fun b!669525 () Bool)

(declare-fun res!436543 () Bool)

(assert (=> b!669525 (=> (not res!436543) (not e!382905))))

(assert (=> b!669525 (= res!436543 e!382910)))

(declare-fun res!436537 () Bool)

(assert (=> b!669525 (=> res!436537 e!382910)))

(declare-fun e!382908 () Bool)

(assert (=> b!669525 (= res!436537 e!382908)))

(declare-fun res!436538 () Bool)

(assert (=> b!669525 (=> (not res!436538) (not e!382908))))

(assert (=> b!669525 (= res!436538 (bvsgt from!3004 i!1382))))

(declare-fun b!669526 () Bool)

(declare-fun res!436541 () Bool)

(assert (=> b!669526 (=> (not res!436541) (not e!382905))))

(assert (=> b!669526 (= res!436541 (not (contains!3377 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!669527 () Bool)

(assert (=> b!669527 (= e!382907 (not (contains!3377 acc!681 k!2843)))))

(declare-fun b!669528 () Bool)

(declare-fun Unit!23499 () Unit!23495)

(assert (=> b!669528 (= e!382915 Unit!23499)))

(declare-fun lt!311678 () Unit!23495)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39103 (_ BitVec 64) (_ BitVec 32)) Unit!23495)

(assert (=> b!669528 (= lt!311678 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!669528 false))

(declare-fun b!669529 () Bool)

(declare-fun res!436536 () Bool)

(assert (=> b!669529 (=> (not res!436536) (not e!382905))))

(assert (=> b!669529 (= res!436536 (not (contains!3377 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!669530 () Bool)

(declare-fun res!436544 () Bool)

(assert (=> b!669530 (=> res!436544 e!382911)))

(assert (=> b!669530 (= res!436544 (contains!3377 lt!311675 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!669531 () Bool)

(assert (=> b!669531 (= e!382911 true)))

(declare-fun lt!311681 () Bool)

(assert (=> b!669531 (= lt!311681 e!382909)))

(declare-fun res!436529 () Bool)

(assert (=> b!669531 (=> res!436529 e!382909)))

(assert (=> b!669531 (= res!436529 e!382913)))

(declare-fun res!436535 () Bool)

(assert (=> b!669531 (=> (not res!436535) (not e!382913))))

(assert (=> b!669531 (= res!436535 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!669532 () Bool)

(assert (=> b!669532 (= e!382908 (contains!3377 acc!681 k!2843))))

(declare-fun b!669533 () Bool)

(declare-fun res!436539 () Bool)

(assert (=> b!669533 (=> (not res!436539) (not e!382905))))

(assert (=> b!669533 (= res!436539 (noDuplicate!624 acc!681))))

(assert (= (and start!60100 res!436530) b!669533))

(assert (= (and b!669533 res!436539) b!669526))

(assert (= (and b!669526 res!436541) b!669529))

(assert (= (and b!669529 res!436536) b!669525))

(assert (= (and b!669525 res!436538) b!669532))

(assert (= (and b!669525 (not res!436537)) b!669520))

(assert (= (and b!669520 res!436540) b!669527))

(assert (= (and b!669525 res!436543) b!669510))

(assert (= (and b!669510 res!436532) b!669514))

(assert (= (and b!669514 res!436546) b!669516))

(assert (= (and b!669516 res!436542) b!669521))

(assert (= (and b!669521 res!436545) b!669517))

(assert (= (and b!669517 res!436528) b!669513))

(assert (= (and b!669513 res!436531) b!669524))

(assert (= (and b!669524 c!76859) b!669528))

(assert (= (and b!669524 (not c!76859)) b!669518))

(assert (= (and b!669524 c!76858) b!669512))

(assert (= (and b!669524 (not c!76858)) b!669509))

(assert (= (and b!669524 (not res!436547)) b!669523))

(assert (= (and b!669523 (not res!436527)) b!669530))

(assert (= (and b!669530 (not res!436544)) b!669522))

(assert (= (and b!669522 (not res!436533)) b!669531))

(assert (= (and b!669531 res!436535) b!669511))

(assert (= (and b!669531 (not res!436529)) b!669519))

(assert (= (and b!669519 res!436534) b!669515))

(declare-fun m!639611 () Bool)

(assert (=> start!60100 m!639611))

(declare-fun m!639613 () Bool)

(assert (=> b!669512 m!639613))

(declare-fun m!639615 () Bool)

(assert (=> b!669512 m!639615))

(declare-fun m!639617 () Bool)

(assert (=> b!669512 m!639617))

(declare-fun m!639619 () Bool)

(assert (=> b!669512 m!639619))

(assert (=> b!669512 m!639615))

(assert (=> b!669512 m!639617))

(declare-fun m!639621 () Bool)

(assert (=> b!669512 m!639621))

(declare-fun m!639623 () Bool)

(assert (=> b!669512 m!639623))

(declare-fun m!639625 () Bool)

(assert (=> b!669524 m!639625))

(declare-fun m!639627 () Bool)

(assert (=> b!669524 m!639627))

(assert (=> b!669524 m!639613))

(declare-fun m!639629 () Bool)

(assert (=> b!669524 m!639629))

(declare-fun m!639631 () Bool)

(assert (=> b!669524 m!639631))

(assert (=> b!669524 m!639621))

(declare-fun m!639633 () Bool)

(assert (=> b!669524 m!639633))

(declare-fun m!639635 () Bool)

(assert (=> b!669524 m!639635))

(assert (=> b!669524 m!639615))

(declare-fun m!639637 () Bool)

(assert (=> b!669524 m!639637))

(assert (=> b!669524 m!639615))

(declare-fun m!639639 () Bool)

(assert (=> b!669524 m!639639))

(declare-fun m!639641 () Bool)

(assert (=> b!669524 m!639641))

(assert (=> b!669524 m!639623))

(declare-fun m!639643 () Bool)

(assert (=> b!669522 m!639643))

(declare-fun m!639645 () Bool)

(assert (=> b!669517 m!639645))

(declare-fun m!639647 () Bool)

(assert (=> b!669533 m!639647))

(declare-fun m!639649 () Bool)

(assert (=> b!669510 m!639649))

(declare-fun m!639651 () Bool)

(assert (=> b!669532 m!639651))

(declare-fun m!639653 () Bool)

(assert (=> b!669526 m!639653))

(declare-fun m!639655 () Bool)

(assert (=> b!669514 m!639655))

(declare-fun m!639657 () Bool)

(assert (=> b!669521 m!639657))

(declare-fun m!639659 () Bool)

(assert (=> b!669515 m!639659))

(declare-fun m!639661 () Bool)

(assert (=> b!669529 m!639661))

(assert (=> b!669511 m!639659))

(assert (=> b!669527 m!639651))

(declare-fun m!639663 () Bool)

(assert (=> b!669528 m!639663))

(declare-fun m!639665 () Bool)

(assert (=> b!669523 m!639665))

(declare-fun m!639667 () Bool)

(assert (=> b!669530 m!639667))

(push 1)

(assert (not b!669523))

(assert (not b!669514))

(assert (not b!669521))

(assert (not b!669522))

(assert (not b!669512))

(assert (not b!669515))

(assert (not b!669510))

(assert (not b!669527))

(assert (not b!669528))

(assert (not b!669532))

(assert (not b!669517))

(assert (not b!669530))

(assert (not b!669526))

(assert (not b!669529))

(assert (not b!669533))

(assert (not b!669511))

(assert (not start!60100))

(assert (not b!669524))

(check-sat)

(pop 1)

(push 1)

