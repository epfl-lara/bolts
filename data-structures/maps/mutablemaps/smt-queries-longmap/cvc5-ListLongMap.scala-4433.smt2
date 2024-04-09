; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!61590 () Bool)

(assert start!61590)

(declare-fun b!688725 () Bool)

(declare-fun res!453541 () Bool)

(declare-fun e!392212 () Bool)

(assert (=> b!688725 (=> (not res!453541) (not e!392212))))

(declare-datatypes ((List!13105 0))(
  ( (Nil!13102) (Cons!13101 (h!14146 (_ BitVec 64)) (t!19377 List!13105)) )
))
(declare-fun acc!681 () List!13105)

(declare-fun contains!3648 (List!13105 (_ BitVec 64)) Bool)

(assert (=> b!688725 (= res!453541 (not (contains!3648 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!688726 () Bool)

(declare-datatypes ((Unit!24292 0))(
  ( (Unit!24293) )
))
(declare-fun e!392215 () Unit!24292)

(declare-fun Unit!24294 () Unit!24292)

(assert (=> b!688726 (= e!392215 Unit!24294)))

(declare-fun b!688727 () Bool)

(declare-fun e!392211 () Bool)

(declare-fun k!2843 () (_ BitVec 64))

(assert (=> b!688727 (= e!392211 (contains!3648 acc!681 k!2843))))

(declare-fun b!688728 () Bool)

(declare-fun res!453534 () Bool)

(assert (=> b!688728 (=> (not res!453534) (not e!392212))))

(declare-fun i!1382 () (_ BitVec 32))

(declare-datatypes ((array!39687 0))(
  ( (array!39688 (arr!19011 (Array (_ BitVec 32) (_ BitVec 64))) (size!19392 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39687)

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> b!688728 (= res!453534 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19392 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!688729 () Bool)

(declare-fun e!392221 () Bool)

(assert (=> b!688729 (= e!392212 (not e!392221))))

(declare-fun res!453528 () Bool)

(assert (=> b!688729 (=> res!453528 e!392221)))

(assert (=> b!688729 (= res!453528 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun lt!315913 () List!13105)

(declare-fun arrayNoDuplicates!0 (array!39687 (_ BitVec 32) List!13105) Bool)

(assert (=> b!688729 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!315913)))

(declare-fun lt!315910 () Unit!24292)

(declare-fun lemmaAddKeyNoContainsInAccStillNoDuplicate!0 (array!39687 (_ BitVec 64) (_ BitVec 32) List!13105 List!13105) Unit!24292)

(assert (=> b!688729 (= lt!315910 (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004) acc!681 lt!315913))))

(declare-fun -!198 (List!13105 (_ BitVec 64)) List!13105)

(assert (=> b!688729 (= (-!198 lt!315913 k!2843) acc!681)))

(declare-fun $colon$colon!397 (List!13105 (_ BitVec 64)) List!13105)

(assert (=> b!688729 (= lt!315913 ($colon$colon!397 acc!681 k!2843))))

(declare-fun lt!315915 () Unit!24292)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!13105) Unit!24292)

(assert (=> b!688729 (= lt!315915 (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681))))

(declare-fun subseq!233 (List!13105 List!13105) Bool)

(assert (=> b!688729 (subseq!233 acc!681 acc!681)))

(declare-fun lt!315918 () Unit!24292)

(declare-fun lemmaListSubSeqRefl!0 (List!13105) Unit!24292)

(assert (=> b!688729 (= lt!315918 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!688729 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!315911 () Unit!24292)

(declare-fun e!392219 () Unit!24292)

(assert (=> b!688729 (= lt!315911 e!392219)))

(declare-fun c!77969 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!688729 (= c!77969 (validKeyInArray!0 (select (arr!19011 a!3626) from!3004)))))

(declare-fun lt!315916 () Unit!24292)

(assert (=> b!688729 (= lt!315916 e!392215)))

(declare-fun c!77968 () Bool)

(declare-fun arrayContainsKey!0 (array!39687 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!688729 (= c!77968 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!688729 (arrayContainsKey!0 (array!39688 (store (arr!19011 a!3626) i!1382 k!2843) (size!19392 a!3626)) k!2843 from!3004)))

(declare-fun b!688730 () Bool)

(declare-fun res!453530 () Bool)

(assert (=> b!688730 (=> res!453530 e!392221)))

(declare-fun noDuplicate!895 (List!13105) Bool)

(assert (=> b!688730 (= res!453530 (not (noDuplicate!895 lt!315913)))))

(declare-fun b!688731 () Bool)

(declare-fun res!453527 () Bool)

(assert (=> b!688731 (=> (not res!453527) (not e!392212))))

(assert (=> b!688731 (= res!453527 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!688732 () Bool)

(declare-fun e!392214 () Bool)

(assert (=> b!688732 (= e!392214 (not (contains!3648 acc!681 k!2843)))))

(declare-fun b!688733 () Bool)

(declare-fun Unit!24295 () Unit!24292)

(assert (=> b!688733 (= e!392219 Unit!24295)))

(declare-fun b!688734 () Bool)

(declare-fun res!453537 () Bool)

(assert (=> b!688734 (=> (not res!453537) (not e!392212))))

(assert (=> b!688734 (= res!453537 (validKeyInArray!0 k!2843))))

(declare-fun res!453529 () Bool)

(assert (=> start!61590 (=> (not res!453529) (not e!392212))))

(assert (=> start!61590 (= res!453529 (and (bvslt (size!19392 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19392 a!3626))))))

(assert (=> start!61590 e!392212))

(assert (=> start!61590 true))

(declare-fun array_inv!14785 (array!39687) Bool)

(assert (=> start!61590 (array_inv!14785 a!3626)))

(declare-fun b!688724 () Bool)

(declare-fun e!392213 () Bool)

(declare-fun e!392217 () Bool)

(assert (=> b!688724 (= e!392213 e!392217)))

(declare-fun res!453525 () Bool)

(assert (=> b!688724 (=> (not res!453525) (not e!392217))))

(assert (=> b!688724 (= res!453525 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!688735 () Bool)

(declare-fun res!453526 () Bool)

(assert (=> b!688735 (=> (not res!453526) (not e!392212))))

(assert (=> b!688735 (= res!453526 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!688736 () Bool)

(declare-fun res!453532 () Bool)

(assert (=> b!688736 (=> (not res!453532) (not e!392212))))

(declare-fun e!392220 () Bool)

(assert (=> b!688736 (= res!453532 e!392220)))

(declare-fun res!453542 () Bool)

(assert (=> b!688736 (=> res!453542 e!392220)))

(assert (=> b!688736 (= res!453542 e!392211)))

(declare-fun res!453531 () Bool)

(assert (=> b!688736 (=> (not res!453531) (not e!392211))))

(assert (=> b!688736 (= res!453531 (bvsgt from!3004 i!1382))))

(declare-fun b!688737 () Bool)

(assert (=> b!688737 (= e!392220 e!392214)))

(declare-fun res!453523 () Bool)

(assert (=> b!688737 (=> (not res!453523) (not e!392214))))

(assert (=> b!688737 (= res!453523 (bvsle from!3004 i!1382))))

(declare-fun b!688738 () Bool)

(declare-fun res!453524 () Bool)

(assert (=> b!688738 (=> (not res!453524) (not e!392212))))

(assert (=> b!688738 (= res!453524 (noDuplicate!895 acc!681))))

(declare-fun b!688739 () Bool)

(declare-fun res!453539 () Bool)

(assert (=> b!688739 (=> (not res!453539) (not e!392212))))

(assert (=> b!688739 (= res!453539 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13102))))

(declare-fun b!688740 () Bool)

(assert (=> b!688740 (= e!392221 true)))

(declare-fun lt!315909 () Bool)

(assert (=> b!688740 (= lt!315909 e!392213)))

(declare-fun res!453536 () Bool)

(assert (=> b!688740 (=> res!453536 e!392213)))

(declare-fun e!392216 () Bool)

(assert (=> b!688740 (= res!453536 e!392216)))

(declare-fun res!453540 () Bool)

(assert (=> b!688740 (=> (not res!453540) (not e!392216))))

(assert (=> b!688740 (= res!453540 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!688741 () Bool)

(declare-fun res!453522 () Bool)

(assert (=> b!688741 (=> (not res!453522) (not e!392212))))

(assert (=> b!688741 (= res!453522 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19392 a!3626))))))

(declare-fun b!688742 () Bool)

(declare-fun res!453533 () Bool)

(assert (=> b!688742 (=> res!453533 e!392221)))

(assert (=> b!688742 (= res!453533 (contains!3648 lt!315913 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!688743 () Bool)

(declare-fun Unit!24296 () Unit!24292)

(assert (=> b!688743 (= e!392215 Unit!24296)))

(declare-fun lt!315912 () Unit!24292)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39687 (_ BitVec 64) (_ BitVec 32)) Unit!24292)

(assert (=> b!688743 (= lt!315912 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!688743 false))

(declare-fun b!688744 () Bool)

(declare-fun res!453538 () Bool)

(assert (=> b!688744 (=> res!453538 e!392221)))

(assert (=> b!688744 (= res!453538 (contains!3648 lt!315913 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!688745 () Bool)

(declare-fun res!453535 () Bool)

(assert (=> b!688745 (=> (not res!453535) (not e!392212))))

(assert (=> b!688745 (= res!453535 (not (contains!3648 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!688746 () Bool)

(declare-fun lt!315917 () Unit!24292)

(assert (=> b!688746 (= e!392219 lt!315917)))

(declare-fun lt!315914 () Unit!24292)

(assert (=> b!688746 (= lt!315914 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!688746 (subseq!233 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39687 List!13105 List!13105 (_ BitVec 32)) Unit!24292)

(assert (=> b!688746 (= lt!315917 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!397 acc!681 (select (arr!19011 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!688746 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!688747 () Bool)

(assert (=> b!688747 (= e!392216 (contains!3648 lt!315913 k!2843))))

(declare-fun b!688748 () Bool)

(assert (=> b!688748 (= e!392217 (not (contains!3648 lt!315913 k!2843)))))

(assert (= (and start!61590 res!453529) b!688738))

(assert (= (and b!688738 res!453524) b!688745))

(assert (= (and b!688745 res!453535) b!688725))

(assert (= (and b!688725 res!453541) b!688736))

(assert (= (and b!688736 res!453531) b!688727))

(assert (= (and b!688736 (not res!453542)) b!688737))

(assert (= (and b!688737 res!453523) b!688732))

(assert (= (and b!688736 res!453532) b!688739))

(assert (= (and b!688739 res!453539) b!688735))

(assert (= (and b!688735 res!453526) b!688741))

(assert (= (and b!688741 res!453522) b!688734))

(assert (= (and b!688734 res!453537) b!688731))

(assert (= (and b!688731 res!453527) b!688728))

(assert (= (and b!688728 res!453534) b!688729))

(assert (= (and b!688729 c!77968) b!688743))

(assert (= (and b!688729 (not c!77968)) b!688726))

(assert (= (and b!688729 c!77969) b!688746))

(assert (= (and b!688729 (not c!77969)) b!688733))

(assert (= (and b!688729 (not res!453528)) b!688730))

(assert (= (and b!688730 (not res!453530)) b!688742))

(assert (= (and b!688742 (not res!453533)) b!688744))

(assert (= (and b!688744 (not res!453538)) b!688740))

(assert (= (and b!688740 res!453540) b!688747))

(assert (= (and b!688740 (not res!453536)) b!688724))

(assert (= (and b!688724 res!453525) b!688748))

(declare-fun m!652575 () Bool)

(assert (=> b!688742 m!652575))

(declare-fun m!652577 () Bool)

(assert (=> b!688739 m!652577))

(declare-fun m!652579 () Bool)

(assert (=> b!688732 m!652579))

(declare-fun m!652581 () Bool)

(assert (=> b!688747 m!652581))

(declare-fun m!652583 () Bool)

(assert (=> b!688729 m!652583))

(declare-fun m!652585 () Bool)

(assert (=> b!688729 m!652585))

(declare-fun m!652587 () Bool)

(assert (=> b!688729 m!652587))

(declare-fun m!652589 () Bool)

(assert (=> b!688729 m!652589))

(declare-fun m!652591 () Bool)

(assert (=> b!688729 m!652591))

(declare-fun m!652593 () Bool)

(assert (=> b!688729 m!652593))

(declare-fun m!652595 () Bool)

(assert (=> b!688729 m!652595))

(declare-fun m!652597 () Bool)

(assert (=> b!688729 m!652597))

(declare-fun m!652599 () Bool)

(assert (=> b!688729 m!652599))

(declare-fun m!652601 () Bool)

(assert (=> b!688729 m!652601))

(assert (=> b!688729 m!652585))

(declare-fun m!652603 () Bool)

(assert (=> b!688729 m!652603))

(declare-fun m!652605 () Bool)

(assert (=> b!688729 m!652605))

(declare-fun m!652607 () Bool)

(assert (=> b!688729 m!652607))

(assert (=> b!688748 m!652581))

(declare-fun m!652609 () Bool)

(assert (=> b!688734 m!652609))

(declare-fun m!652611 () Bool)

(assert (=> b!688730 m!652611))

(declare-fun m!652613 () Bool)

(assert (=> b!688725 m!652613))

(assert (=> b!688727 m!652579))

(declare-fun m!652615 () Bool)

(assert (=> b!688744 m!652615))

(assert (=> b!688746 m!652583))

(assert (=> b!688746 m!652585))

(declare-fun m!652617 () Bool)

(assert (=> b!688746 m!652617))

(declare-fun m!652619 () Bool)

(assert (=> b!688746 m!652619))

(assert (=> b!688746 m!652585))

(assert (=> b!688746 m!652617))

(assert (=> b!688746 m!652597))

(assert (=> b!688746 m!652607))

(declare-fun m!652621 () Bool)

(assert (=> b!688745 m!652621))

(declare-fun m!652623 () Bool)

(assert (=> b!688735 m!652623))

(declare-fun m!652625 () Bool)

(assert (=> start!61590 m!652625))

(declare-fun m!652627 () Bool)

(assert (=> b!688743 m!652627))

(declare-fun m!652629 () Bool)

(assert (=> b!688731 m!652629))

(declare-fun m!652631 () Bool)

(assert (=> b!688738 m!652631))

(push 1)

(assert (not b!688730))

(assert (not b!688734))

(assert (not b!688731))

(assert (not b!688747))

(assert (not b!688742))

(assert (not b!688729))

(assert (not b!688743))

(assert (not b!688748))

(assert (not b!688739))

(assert (not start!61590))

(assert (not b!688725))

(assert (not b!688738))

(assert (not b!688744))

(assert (not b!688732))

(assert (not b!688745))

(assert (not b!688746))

(assert (not b!688727))

(assert (not b!688735))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

