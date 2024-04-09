; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!63226 () Bool)

(assert start!63226)

(declare-fun b!711686 () Bool)

(declare-fun res!475111 () Bool)

(declare-fun e!400463 () Bool)

(assert (=> b!711686 (=> (not res!475111) (not e!400463))))

(declare-datatypes ((array!40392 0))(
  ( (array!40393 (arr!19335 (Array (_ BitVec 32) (_ BitVec 64))) (size!19741 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40392)

(declare-fun from!2969 () (_ BitVec 32))

(declare-datatypes ((List!13429 0))(
  ( (Nil!13426) (Cons!13425 (h!14470 (_ BitVec 64)) (t!19746 List!13429)) )
))
(declare-fun acc!652 () List!13429)

(declare-fun arrayNoDuplicates!0 (array!40392 (_ BitVec 32) List!13429) Bool)

(assert (=> b!711686 (= res!475111 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!711687 () Bool)

(declare-fun res!475113 () Bool)

(declare-fun e!400461 () Bool)

(assert (=> b!711687 (=> (not res!475113) (not e!400461))))

(declare-fun lt!318457 () List!13429)

(declare-fun lt!318458 () List!13429)

(declare-fun subseq!416 (List!13429 List!13429) Bool)

(assert (=> b!711687 (= res!475113 (subseq!416 lt!318457 lt!318458))))

(declare-fun b!711688 () Bool)

(declare-fun res!475094 () Bool)

(assert (=> b!711688 (=> (not res!475094) (not e!400461))))

(declare-fun k!2824 () (_ BitVec 64))

(declare-fun contains!3972 (List!13429 (_ BitVec 64)) Bool)

(assert (=> b!711688 (= res!475094 (not (contains!3972 lt!318457 k!2824)))))

(declare-fun b!711689 () Bool)

(declare-fun res!475102 () Bool)

(assert (=> b!711689 (=> (not res!475102) (not e!400461))))

(declare-fun noDuplicate!1219 (List!13429) Bool)

(assert (=> b!711689 (= res!475102 (noDuplicate!1219 lt!318457))))

(declare-fun b!711690 () Bool)

(declare-fun res!475095 () Bool)

(assert (=> b!711690 (=> (not res!475095) (not e!400463))))

(declare-fun newAcc!49 () List!13429)

(assert (=> b!711690 (= res!475095 (not (contains!3972 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!711691 () Bool)

(declare-fun res!475097 () Bool)

(assert (=> b!711691 (=> (not res!475097) (not e!400463))))

(assert (=> b!711691 (= res!475097 (noDuplicate!1219 newAcc!49))))

(declare-fun b!711692 () Bool)

(declare-fun res!475109 () Bool)

(assert (=> b!711692 (=> (not res!475109) (not e!400461))))

(declare-fun -!381 (List!13429 (_ BitVec 64)) List!13429)

(assert (=> b!711692 (= res!475109 (= (-!381 lt!318458 k!2824) lt!318457))))

(declare-fun b!711693 () Bool)

(declare-fun res!475115 () Bool)

(assert (=> b!711693 (=> (not res!475115) (not e!400463))))

(assert (=> b!711693 (= res!475115 (not (contains!3972 acc!652 k!2824)))))

(declare-fun b!711694 () Bool)

(declare-fun res!475096 () Bool)

(assert (=> b!711694 (=> (not res!475096) (not e!400461))))

(assert (=> b!711694 (= res!475096 (not (contains!3972 lt!318457 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!711696 () Bool)

(declare-fun res!475104 () Bool)

(assert (=> b!711696 (=> (not res!475104) (not e!400463))))

(assert (=> b!711696 (= res!475104 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19741 a!3591)))))

(declare-fun b!711697 () Bool)

(declare-fun res!475110 () Bool)

(assert (=> b!711697 (=> (not res!475110) (not e!400461))))

(assert (=> b!711697 (= res!475110 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) lt!318457))))

(declare-fun b!711698 () Bool)

(declare-fun res!475092 () Bool)

(assert (=> b!711698 (=> (not res!475092) (not e!400463))))

(assert (=> b!711698 (= res!475092 (contains!3972 newAcc!49 k!2824))))

(declare-fun b!711699 () Bool)

(declare-fun e!400464 () Bool)

(assert (=> b!711699 (= e!400461 e!400464)))

(declare-fun res!475101 () Bool)

(assert (=> b!711699 (=> res!475101 e!400464)))

(assert (=> b!711699 (= res!475101 (contains!3972 lt!318458 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!711700 () Bool)

(declare-fun res!475106 () Bool)

(assert (=> b!711700 (=> (not res!475106) (not e!400463))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!711700 (= res!475106 (validKeyInArray!0 k!2824))))

(declare-fun b!711701 () Bool)

(declare-fun res!475117 () Bool)

(assert (=> b!711701 (=> (not res!475117) (not e!400463))))

(declare-fun arrayContainsKey!0 (array!40392 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!711701 (= res!475117 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!711702 () Bool)

(assert (=> b!711702 (= e!400464 (contains!3972 lt!318458 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!711703 () Bool)

(assert (=> b!711703 (= e!400463 e!400461)))

(declare-fun res!475098 () Bool)

(assert (=> b!711703 (=> (not res!475098) (not e!400461))))

(assert (=> b!711703 (= res!475098 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!526 (List!13429 (_ BitVec 64)) List!13429)

(assert (=> b!711703 (= lt!318458 ($colon$colon!526 newAcc!49 (select (arr!19335 a!3591) from!2969)))))

(assert (=> b!711703 (= lt!318457 ($colon$colon!526 acc!652 (select (arr!19335 a!3591) from!2969)))))

(declare-fun b!711704 () Bool)

(declare-fun res!475108 () Bool)

(assert (=> b!711704 (=> (not res!475108) (not e!400463))))

(assert (=> b!711704 (= res!475108 (subseq!416 acc!652 newAcc!49))))

(declare-fun b!711705 () Bool)

(declare-fun res!475114 () Bool)

(assert (=> b!711705 (=> (not res!475114) (not e!400463))))

(assert (=> b!711705 (= res!475114 (not (contains!3972 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!711706 () Bool)

(declare-fun res!475112 () Bool)

(assert (=> b!711706 (=> (not res!475112) (not e!400461))))

(assert (=> b!711706 (= res!475112 (not (arrayContainsKey!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!711707 () Bool)

(declare-fun res!475118 () Bool)

(assert (=> b!711707 (=> (not res!475118) (not e!400463))))

(assert (=> b!711707 (= res!475118 (not (contains!3972 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!711708 () Bool)

(declare-fun res!475103 () Bool)

(assert (=> b!711708 (=> (not res!475103) (not e!400463))))

(assert (=> b!711708 (= res!475103 (noDuplicate!1219 acc!652))))

(declare-fun b!711709 () Bool)

(declare-fun res!475116 () Bool)

(assert (=> b!711709 (=> (not res!475116) (not e!400461))))

(assert (=> b!711709 (= res!475116 (contains!3972 lt!318458 k!2824))))

(declare-fun b!711710 () Bool)

(declare-fun res!475093 () Bool)

(assert (=> b!711710 (=> (not res!475093) (not e!400463))))

(assert (=> b!711710 (= res!475093 (= (-!381 newAcc!49 k!2824) acc!652))))

(declare-fun b!711711 () Bool)

(declare-fun res!475100 () Bool)

(assert (=> b!711711 (=> (not res!475100) (not e!400463))))

(assert (=> b!711711 (= res!475100 (validKeyInArray!0 (select (arr!19335 a!3591) from!2969)))))

(declare-fun b!711712 () Bool)

(declare-fun res!475119 () Bool)

(assert (=> b!711712 (=> (not res!475119) (not e!400461))))

(assert (=> b!711712 (= res!475119 (not (contains!3972 lt!318457 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!711713 () Bool)

(declare-fun res!475099 () Bool)

(assert (=> b!711713 (=> (not res!475099) (not e!400463))))

(assert (=> b!711713 (= res!475099 (not (contains!3972 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!475107 () Bool)

(assert (=> start!63226 (=> (not res!475107) (not e!400463))))

(assert (=> start!63226 (= res!475107 (and (bvslt (size!19741 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19741 a!3591))))))

(assert (=> start!63226 e!400463))

(assert (=> start!63226 true))

(declare-fun array_inv!15109 (array!40392) Bool)

(assert (=> start!63226 (array_inv!15109 a!3591)))

(declare-fun b!711695 () Bool)

(declare-fun res!475105 () Bool)

(assert (=> b!711695 (=> (not res!475105) (not e!400461))))

(assert (=> b!711695 (= res!475105 (noDuplicate!1219 lt!318458))))

(assert (= (and start!63226 res!475107) b!711708))

(assert (= (and b!711708 res!475103) b!711691))

(assert (= (and b!711691 res!475097) b!711705))

(assert (= (and b!711705 res!475114) b!711713))

(assert (= (and b!711713 res!475099) b!711701))

(assert (= (and b!711701 res!475117) b!711693))

(assert (= (and b!711693 res!475115) b!711700))

(assert (= (and b!711700 res!475106) b!711686))

(assert (= (and b!711686 res!475111) b!711704))

(assert (= (and b!711704 res!475108) b!711698))

(assert (= (and b!711698 res!475092) b!711710))

(assert (= (and b!711710 res!475093) b!711690))

(assert (= (and b!711690 res!475095) b!711707))

(assert (= (and b!711707 res!475118) b!711696))

(assert (= (and b!711696 res!475104) b!711711))

(assert (= (and b!711711 res!475100) b!711703))

(assert (= (and b!711703 res!475098) b!711689))

(assert (= (and b!711689 res!475102) b!711695))

(assert (= (and b!711695 res!475105) b!711712))

(assert (= (and b!711712 res!475119) b!711694))

(assert (= (and b!711694 res!475096) b!711706))

(assert (= (and b!711706 res!475112) b!711688))

(assert (= (and b!711688 res!475094) b!711697))

(assert (= (and b!711697 res!475110) b!711687))

(assert (= (and b!711687 res!475113) b!711709))

(assert (= (and b!711709 res!475116) b!711692))

(assert (= (and b!711692 res!475109) b!711699))

(assert (= (and b!711699 (not res!475101)) b!711702))

(declare-fun m!668757 () Bool)

(assert (=> b!711712 m!668757))

(declare-fun m!668759 () Bool)

(assert (=> b!711689 m!668759))

(declare-fun m!668761 () Bool)

(assert (=> b!711704 m!668761))

(declare-fun m!668763 () Bool)

(assert (=> b!711713 m!668763))

(declare-fun m!668765 () Bool)

(assert (=> b!711706 m!668765))

(declare-fun m!668767 () Bool)

(assert (=> b!711694 m!668767))

(declare-fun m!668769 () Bool)

(assert (=> b!711701 m!668769))

(declare-fun m!668771 () Bool)

(assert (=> b!711687 m!668771))

(declare-fun m!668773 () Bool)

(assert (=> b!711703 m!668773))

(assert (=> b!711703 m!668773))

(declare-fun m!668775 () Bool)

(assert (=> b!711703 m!668775))

(assert (=> b!711703 m!668773))

(declare-fun m!668777 () Bool)

(assert (=> b!711703 m!668777))

(assert (=> b!711711 m!668773))

(assert (=> b!711711 m!668773))

(declare-fun m!668779 () Bool)

(assert (=> b!711711 m!668779))

(declare-fun m!668781 () Bool)

(assert (=> b!711690 m!668781))

(declare-fun m!668783 () Bool)

(assert (=> start!63226 m!668783))

(declare-fun m!668785 () Bool)

(assert (=> b!711702 m!668785))

(declare-fun m!668787 () Bool)

(assert (=> b!711707 m!668787))

(declare-fun m!668789 () Bool)

(assert (=> b!711705 m!668789))

(declare-fun m!668791 () Bool)

(assert (=> b!711691 m!668791))

(declare-fun m!668793 () Bool)

(assert (=> b!711692 m!668793))

(declare-fun m!668795 () Bool)

(assert (=> b!711695 m!668795))

(declare-fun m!668797 () Bool)

(assert (=> b!711693 m!668797))

(declare-fun m!668799 () Bool)

(assert (=> b!711686 m!668799))

(declare-fun m!668801 () Bool)

(assert (=> b!711710 m!668801))

(declare-fun m!668803 () Bool)

(assert (=> b!711697 m!668803))

(declare-fun m!668805 () Bool)

(assert (=> b!711698 m!668805))

(declare-fun m!668807 () Bool)

(assert (=> b!711708 m!668807))

(declare-fun m!668809 () Bool)

(assert (=> b!711688 m!668809))

(declare-fun m!668811 () Bool)

(assert (=> b!711699 m!668811))

(declare-fun m!668813 () Bool)

(assert (=> b!711700 m!668813))

(declare-fun m!668815 () Bool)

(assert (=> b!711709 m!668815))

(push 1)

(assert (not b!711707))

(assert (not b!711689))

(assert (not b!711691))

(assert (not b!711700))

(assert (not b!711711))

(assert (not b!711695))

(assert (not b!711704))

(assert (not b!711690))

(assert (not b!711688))

(assert (not b!711713))

(assert (not b!711698))

(assert (not b!711699))

(assert (not b!711693))

(assert (not b!711702))

(assert (not b!711708))

(assert (not b!711692))

(assert (not b!711694))

(assert (not b!711697))

(assert (not b!711701))

(assert (not b!711686))

(assert (not b!711706))

(assert (not start!63226))

(assert (not b!711709))

(assert (not b!711712))

(assert (not b!711705))

(assert (not b!711703))

(assert (not b!711687))

(assert (not b!711710))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!97753 () Bool)

(assert (=> d!97753 (= ($colon$colon!526 newAcc!49 (select (arr!19335 a!3591) from!2969)) (Cons!13425 (select (arr!19335 a!3591) from!2969) newAcc!49))))

(assert (=> b!711703 d!97753))

(declare-fun d!97757 () Bool)

(assert (=> d!97757 (= ($colon$colon!526 acc!652 (select (arr!19335 a!3591) from!2969)) (Cons!13425 (select (arr!19335 a!3591) from!2969) acc!652))))

(assert (=> b!711703 d!97757))

(declare-fun d!97759 () Bool)

(declare-fun lt!318490 () Bool)

(declare-fun content!363 (List!13429) (Set (_ BitVec 64)))

(assert (=> d!97759 (= lt!318490 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!363 lt!318458)))))

(declare-fun e!400559 () Bool)

(assert (=> d!97759 (= lt!318490 e!400559)))

(declare-fun res!475342 () Bool)

(assert (=> d!97759 (=> (not res!475342) (not e!400559))))

(assert (=> d!97759 (= res!475342 (is-Cons!13425 lt!318458))))

(assert (=> d!97759 (= (contains!3972 lt!318458 #b1000000000000000000000000000000000000000000000000000000000000000) lt!318490)))

(declare-fun b!711963 () Bool)

(declare-fun e!400558 () Bool)

(assert (=> b!711963 (= e!400559 e!400558)))

(declare-fun res!475341 () Bool)

(assert (=> b!711963 (=> res!475341 e!400558)))

(assert (=> b!711963 (= res!475341 (= (h!14470 lt!318458) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!711964 () Bool)

(assert (=> b!711964 (= e!400558 (contains!3972 (t!19746 lt!318458) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!97759 res!475342) b!711963))

(assert (= (and b!711963 (not res!475341)) b!711964))

(declare-fun m!669009 () Bool)

(assert (=> d!97759 m!669009))

(declare-fun m!669011 () Bool)

(assert (=> d!97759 m!669011))

(declare-fun m!669015 () Bool)

(assert (=> b!711964 m!669015))

(assert (=> b!711702 d!97759))

(declare-fun d!97771 () Bool)

(declare-fun res!475363 () Bool)

(declare-fun e!400580 () Bool)

(assert (=> d!97771 (=> res!475363 e!400580)))

(assert (=> d!97771 (= res!475363 (= (select (arr!19335 a!3591) (bvadd #b00000000000000000000000000000001 from!2969)) k!2824))))

(assert (=> d!97771 (= (arrayContainsKey!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969)) e!400580)))

(declare-fun b!711985 () Bool)

(declare-fun e!400581 () Bool)

(assert (=> b!711985 (= e!400580 e!400581)))

(declare-fun res!475364 () Bool)

(assert (=> b!711985 (=> (not res!475364) (not e!400581))))

(assert (=> b!711985 (= res!475364 (bvslt (bvadd #b00000000000000000000000000000001 from!2969 #b00000000000000000000000000000001) (size!19741 a!3591)))))

(declare-fun b!711986 () Bool)

(assert (=> b!711986 (= e!400581 (arrayContainsKey!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969 #b00000000000000000000000000000001)))))

(assert (= (and d!97771 (not res!475363)) b!711985))

(assert (= (and b!711985 res!475364) b!711986))

(declare-fun m!669041 () Bool)

(assert (=> d!97771 m!669041))

(declare-fun m!669045 () Bool)

(assert (=> b!711986 m!669045))

(assert (=> b!711706 d!97771))

(declare-fun b!712025 () Bool)

(declare-fun e!400618 () Bool)

(assert (=> b!712025 (= e!400618 (subseq!416 (t!19746 acc!652) (t!19746 newAcc!49)))))

(declare-fun b!712026 () Bool)

(declare-fun e!400617 () Bool)

(assert (=> b!712026 (= e!400617 (subseq!416 acc!652 (t!19746 newAcc!49)))))

(declare-fun b!712023 () Bool)

(declare-fun e!400616 () Bool)

(declare-fun e!400619 () Bool)

(assert (=> b!712023 (= e!400616 e!400619)))

(declare-fun res!475397 () Bool)

(assert (=> b!712023 (=> (not res!475397) (not e!400619))))

(assert (=> b!712023 (= res!475397 (is-Cons!13425 newAcc!49))))

(declare-fun d!97795 () Bool)

(declare-fun res!475398 () Bool)

(assert (=> d!97795 (=> res!475398 e!400616)))

(assert (=> d!97795 (= res!475398 (is-Nil!13426 acc!652))))

(assert (=> d!97795 (= (subseq!416 acc!652 newAcc!49) e!400616)))

(declare-fun b!712024 () Bool)

(assert (=> b!712024 (= e!400619 e!400617)))

(declare-fun res!475400 () Bool)

(assert (=> b!712024 (=> res!475400 e!400617)))

(assert (=> b!712024 (= res!475400 e!400618)))

(declare-fun res!475399 () Bool)

(assert (=> b!712024 (=> (not res!475399) (not e!400618))))

(assert (=> b!712024 (= res!475399 (= (h!14470 acc!652) (h!14470 newAcc!49)))))

(assert (= (and d!97795 (not res!475398)) b!712023))

(assert (= (and b!712023 res!475397) b!712024))

(assert (= (and b!712024 res!475399) b!712025))

(assert (= (and b!712024 (not res!475400)) b!712026))

(declare-fun m!669051 () Bool)

(assert (=> b!712025 m!669051))

(declare-fun m!669053 () Bool)

(assert (=> b!712026 m!669053))

(assert (=> b!711704 d!97795))

(declare-fun d!97799 () Bool)

(declare-fun lt!318495 () Bool)

(assert (=> d!97799 (= lt!318495 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!363 acc!652)))))

(declare-fun e!400623 () Bool)

(assert (=> d!97799 (= lt!318495 e!400623)))

(declare-fun res!475404 () Bool)

(assert (=> d!97799 (=> (not res!475404) (not e!400623))))

(assert (=> d!97799 (= res!475404 (is-Cons!13425 acc!652))))

(assert (=> d!97799 (= (contains!3972 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000) lt!318495)))

(declare-fun b!712029 () Bool)

(declare-fun e!400622 () Bool)

(assert (=> b!712029 (= e!400623 e!400622)))

(declare-fun res!475403 () Bool)

(assert (=> b!712029 (=> res!475403 e!400622)))

(assert (=> b!712029 (= res!475403 (= (h!14470 acc!652) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!712030 () Bool)

(assert (=> b!712030 (= e!400622 (contains!3972 (t!19746 acc!652) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!97799 res!475404) b!712029))

(assert (= (and b!712029 (not res!475403)) b!712030))

(declare-fun m!669059 () Bool)

(assert (=> d!97799 m!669059))

(declare-fun m!669061 () Bool)

(assert (=> d!97799 m!669061))

(declare-fun m!669065 () Bool)

(assert (=> b!712030 m!669065))

(assert (=> b!711705 d!97799))

(declare-fun b!712037 () Bool)

(declare-fun e!400630 () Bool)

(assert (=> b!712037 (= e!400630 (subseq!416 (t!19746 lt!318457) (t!19746 lt!318458)))))

(declare-fun b!712038 () Bool)

(declare-fun e!400629 () Bool)

(assert (=> b!712038 (= e!400629 (subseq!416 lt!318457 (t!19746 lt!318458)))))

(declare-fun b!712035 () Bool)

(declare-fun e!400628 () Bool)

(declare-fun e!400631 () Bool)

(assert (=> b!712035 (= e!400628 e!400631)))

(declare-fun res!475409 () Bool)

(assert (=> b!712035 (=> (not res!475409) (not e!400631))))

(assert (=> b!712035 (= res!475409 (is-Cons!13425 lt!318458))))

(declare-fun d!97805 () Bool)

(declare-fun res!475410 () Bool)

(assert (=> d!97805 (=> res!475410 e!400628)))

(assert (=> d!97805 (= res!475410 (is-Nil!13426 lt!318457))))

(assert (=> d!97805 (= (subseq!416 lt!318457 lt!318458) e!400628)))

(declare-fun b!712036 () Bool)

(assert (=> b!712036 (= e!400631 e!400629)))

(declare-fun res!475412 () Bool)

(assert (=> b!712036 (=> res!475412 e!400629)))

(assert (=> b!712036 (= res!475412 e!400630)))

(declare-fun res!475411 () Bool)

(assert (=> b!712036 (=> (not res!475411) (not e!400630))))

(assert (=> b!712036 (= res!475411 (= (h!14470 lt!318457) (h!14470 lt!318458)))))

(assert (= (and d!97805 (not res!475410)) b!712035))

(assert (= (and b!712035 res!475409) b!712036))

(assert (= (and b!712036 res!475411) b!712037))

(assert (= (and b!712036 (not res!475412)) b!712038))

(declare-fun m!669073 () Bool)

(assert (=> b!712037 m!669073))

(declare-fun m!669077 () Bool)

(assert (=> b!712038 m!669077))

(assert (=> b!711687 d!97805))

(declare-fun d!97811 () Bool)

(declare-fun res!475439 () Bool)

(declare-fun e!400661 () Bool)

(assert (=> d!97811 (=> res!475439 e!400661)))

(assert (=> d!97811 (= res!475439 (is-Nil!13426 acc!652))))

(assert (=> d!97811 (= (noDuplicate!1219 acc!652) e!400661)))

(declare-fun b!712071 () Bool)

(declare-fun e!400662 () Bool)

(assert (=> b!712071 (= e!400661 e!400662)))

(declare-fun res!475440 () Bool)

(assert (=> b!712071 (=> (not res!475440) (not e!400662))))

(assert (=> b!712071 (= res!475440 (not (contains!3972 (t!19746 acc!652) (h!14470 acc!652))))))

(declare-fun b!712072 () Bool)

(assert (=> b!712072 (= e!400662 (noDuplicate!1219 (t!19746 acc!652)))))

(assert (= (and d!97811 (not res!475439)) b!712071))

(assert (= (and b!712071 res!475440) b!712072))

(declare-fun m!669125 () Bool)

(assert (=> b!712071 m!669125))

(declare-fun m!669129 () Bool)

(assert (=> b!712072 m!669129))

(assert (=> b!711708 d!97811))

(declare-fun d!97839 () Bool)

(declare-fun lt!318505 () Bool)

(assert (=> d!97839 (= lt!318505 (set.member k!2824 (content!363 lt!318458)))))

(declare-fun e!400668 () Bool)

(assert (=> d!97839 (= lt!318505 e!400668)))

(declare-fun res!475446 () Bool)

(assert (=> d!97839 (=> (not res!475446) (not e!400668))))

(assert (=> d!97839 (= res!475446 (is-Cons!13425 lt!318458))))

(assert (=> d!97839 (= (contains!3972 lt!318458 k!2824) lt!318505)))

(declare-fun b!712077 () Bool)

(declare-fun e!400667 () Bool)

(assert (=> b!712077 (= e!400668 e!400667)))

(declare-fun res!475445 () Bool)

(assert (=> b!712077 (=> res!475445 e!400667)))

(assert (=> b!712077 (= res!475445 (= (h!14470 lt!318458) k!2824))))

(declare-fun b!712078 () Bool)

(assert (=> b!712078 (= e!400667 (contains!3972 (t!19746 lt!318458) k!2824))))

(assert (= (and d!97839 res!475446) b!712077))

(assert (= (and b!712077 (not res!475445)) b!712078))

(assert (=> d!97839 m!669009))

(declare-fun m!669137 () Bool)

(assert (=> d!97839 m!669137))

(declare-fun m!669139 () Bool)

(assert (=> b!712078 m!669139))

(assert (=> b!711709 d!97839))

(declare-fun d!97847 () Bool)

(declare-fun lt!318507 () Bool)

(assert (=> d!97847 (= lt!318507 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!363 newAcc!49)))))

(declare-fun e!400674 () Bool)

(assert (=> d!97847 (= lt!318507 e!400674)))

(declare-fun res!475452 () Bool)

(assert (=> d!97847 (=> (not res!475452) (not e!400674))))

(assert (=> d!97847 (= res!475452 (is-Cons!13425 newAcc!49))))

(assert (=> d!97847 (= (contains!3972 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000) lt!318507)))

(declare-fun b!712083 () Bool)

(declare-fun e!400673 () Bool)

(assert (=> b!712083 (= e!400674 e!400673)))

(declare-fun res!475451 () Bool)

(assert (=> b!712083 (=> res!475451 e!400673)))

(assert (=> b!712083 (= res!475451 (= (h!14470 newAcc!49) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!712084 () Bool)

(assert (=> b!712084 (= e!400673 (contains!3972 (t!19746 newAcc!49) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!97847 res!475452) b!712083))

(assert (= (and b!712083 (not res!475451)) b!712084))

(declare-fun m!669153 () Bool)

(assert (=> d!97847 m!669153))

(declare-fun m!669155 () Bool)

(assert (=> d!97847 m!669155))

(declare-fun m!669157 () Bool)

(assert (=> b!712084 m!669157))

(assert (=> b!711707 d!97847))

(declare-fun b!712140 () Bool)

(declare-fun e!400725 () Bool)

(declare-fun e!400723 () Bool)

(assert (=> b!712140 (= e!400725 e!400723)))

(declare-fun c!78690 () Bool)

(assert (=> b!712140 (= c!78690 (validKeyInArray!0 (select (arr!19335 a!3591) from!2969)))))

(declare-fun b!712141 () Bool)

(declare-fun call!34555 () Bool)

(assert (=> b!712141 (= e!400723 call!34555)))

(declare-fun e!400726 () Bool)

(declare-fun b!712142 () Bool)

(assert (=> b!712142 (= e!400726 (contains!3972 acc!652 (select (arr!19335 a!3591) from!2969)))))

(declare-fun d!97855 () Bool)

(declare-fun res!475496 () Bool)

(declare-fun e!400724 () Bool)

(assert (=> d!97855 (=> res!475496 e!400724)))

(assert (=> d!97855 (= res!475496 (bvsge from!2969 (size!19741 a!3591)))))

(assert (=> d!97855 (= (arrayNoDuplicates!0 a!3591 from!2969 acc!652) e!400724)))

(declare-fun b!712143 () Bool)

(assert (=> b!712143 (= e!400724 e!400725)))

(declare-fun res!475494 () Bool)

(assert (=> b!712143 (=> (not res!475494) (not e!400725))))

(assert (=> b!712143 (= res!475494 (not e!400726))))

(declare-fun res!475495 () Bool)

(assert (=> b!712143 (=> (not res!475495) (not e!400726))))

(assert (=> b!712143 (= res!475495 (validKeyInArray!0 (select (arr!19335 a!3591) from!2969)))))

(declare-fun bm!34552 () Bool)

(assert (=> bm!34552 (= call!34555 (arrayNoDuplicates!0 a!3591 (bvadd from!2969 #b00000000000000000000000000000001) (ite c!78690 (Cons!13425 (select (arr!19335 a!3591) from!2969) acc!652) acc!652)))))

(declare-fun b!712144 () Bool)

(assert (=> b!712144 (= e!400723 call!34555)))

(assert (= (and d!97855 (not res!475496)) b!712143))

(assert (= (and b!712143 res!475495) b!712142))

(assert (= (and b!712143 res!475494) b!712140))

(assert (= (and b!712140 c!78690) b!712144))

(assert (= (and b!712140 (not c!78690)) b!712141))

(assert (= (or b!712144 b!712141) bm!34552))

(assert (=> b!712140 m!668773))

(assert (=> b!712140 m!668773))

(assert (=> b!712140 m!668779))

(assert (=> b!712142 m!668773))

(assert (=> b!712142 m!668773))

(declare-fun m!669203 () Bool)

(assert (=> b!712142 m!669203))

(assert (=> b!712143 m!668773))

(assert (=> b!712143 m!668773))

(assert (=> b!712143 m!668779))

(assert (=> bm!34552 m!668773))

(declare-fun m!669205 () Bool)

(assert (=> bm!34552 m!669205))

(assert (=> b!711686 d!97855))

(declare-fun d!97875 () Bool)

(assert (=> d!97875 (= (validKeyInArray!0 (select (arr!19335 a!3591) from!2969)) (and (not (= (select (arr!19335 a!3591) from!2969) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!19335 a!3591) from!2969) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!711711 d!97875))

(declare-fun d!97877 () Bool)

(declare-fun lt!318513 () Bool)

(assert (=> d!97877 (= lt!318513 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!363 newAcc!49)))))

(declare-fun e!400728 () Bool)

(assert (=> d!97877 (= lt!318513 e!400728)))

(declare-fun res!475498 () Bool)

(assert (=> d!97877 (=> (not res!475498) (not e!400728))))

(assert (=> d!97877 (= res!475498 (is-Cons!13425 newAcc!49))))

(assert (=> d!97877 (= (contains!3972 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000) lt!318513)))

(declare-fun b!712145 () Bool)

(declare-fun e!400727 () Bool)

(assert (=> b!712145 (= e!400728 e!400727)))

(declare-fun res!475497 () Bool)

(assert (=> b!712145 (=> res!475497 e!400727)))

(assert (=> b!712145 (= res!475497 (= (h!14470 newAcc!49) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!712146 () Bool)

(assert (=> b!712146 (= e!400727 (contains!3972 (t!19746 newAcc!49) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!97877 res!475498) b!712145))

(assert (= (and b!712145 (not res!475497)) b!712146))

(assert (=> d!97877 m!669153))

(declare-fun m!669207 () Bool)

(assert (=> d!97877 m!669207))

(declare-fun m!669209 () Bool)

(assert (=> b!712146 m!669209))

(assert (=> b!711690 d!97877))

(declare-fun d!97879 () Bool)

(declare-fun lt!318514 () Bool)

(assert (=> d!97879 (= lt!318514 (set.member k!2824 (content!363 lt!318457)))))

(declare-fun e!400730 () Bool)

(assert (=> d!97879 (= lt!318514 e!400730)))

(declare-fun res!475500 () Bool)

(assert (=> d!97879 (=> (not res!475500) (not e!400730))))

(assert (=> d!97879 (= res!475500 (is-Cons!13425 lt!318457))))

(assert (=> d!97879 (= (contains!3972 lt!318457 k!2824) lt!318514)))

(declare-fun b!712147 () Bool)

(declare-fun e!400729 () Bool)

(assert (=> b!712147 (= e!400730 e!400729)))

(declare-fun res!475499 () Bool)

(assert (=> b!712147 (=> res!475499 e!400729)))

(assert (=> b!712147 (= res!475499 (= (h!14470 lt!318457) k!2824))))

(declare-fun b!712148 () Bool)

(assert (=> b!712148 (= e!400729 (contains!3972 (t!19746 lt!318457) k!2824))))

(assert (= (and d!97879 res!475500) b!712147))

(assert (= (and b!712147 (not res!475499)) b!712148))

(declare-fun m!669211 () Bool)

(assert (=> d!97879 m!669211))

(declare-fun m!669213 () Bool)

(assert (=> d!97879 m!669213))

(declare-fun m!669215 () Bool)

(assert (=> b!712148 m!669215))

(assert (=> b!711688 d!97879))

(declare-fun d!97881 () Bool)

(declare-fun res!475501 () Bool)

(declare-fun e!400731 () Bool)

(assert (=> d!97881 (=> res!475501 e!400731)))

(assert (=> d!97881 (= res!475501 (is-Nil!13426 lt!318457))))

(assert (=> d!97881 (= (noDuplicate!1219 lt!318457) e!400731)))

(declare-fun b!712149 () Bool)

(declare-fun e!400732 () Bool)

(assert (=> b!712149 (= e!400731 e!400732)))

(declare-fun res!475502 () Bool)

(assert (=> b!712149 (=> (not res!475502) (not e!400732))))

(assert (=> b!712149 (= res!475502 (not (contains!3972 (t!19746 lt!318457) (h!14470 lt!318457))))))

(declare-fun b!712150 () Bool)

(assert (=> b!712150 (= e!400732 (noDuplicate!1219 (t!19746 lt!318457)))))

(assert (= (and d!97881 (not res!475501)) b!712149))

(assert (= (and b!712149 res!475502) b!712150))

(declare-fun m!669217 () Bool)

(assert (=> b!712149 m!669217))

(declare-fun m!669219 () Bool)

(assert (=> b!712150 m!669219))

(assert (=> b!711689 d!97881))

(declare-fun b!712161 () Bool)

(declare-fun e!400742 () List!13429)

(declare-fun call!34558 () List!13429)

(assert (=> b!712161 (= e!400742 (Cons!13425 (h!14470 newAcc!49) call!34558))))

(declare-fun b!712162 () Bool)

(declare-fun lt!318517 () List!13429)

(declare-fun e!400741 () Bool)

(assert (=> b!712162 (= e!400741 (= (content!363 lt!318517) (set.minus (content!363 newAcc!49) (set.insert k!2824 (as set.empty (Set (_ BitVec 64)))))))))

(declare-fun d!97883 () Bool)

(assert (=> d!97883 e!400741))

(declare-fun res!475505 () Bool)

(assert (=> d!97883 (=> (not res!475505) (not e!400741))))

(declare-fun size!19746 (List!13429) Int)

(assert (=> d!97883 (= res!475505 (<= (size!19746 lt!318517) (size!19746 newAcc!49)))))

(declare-fun e!400740 () List!13429)

(assert (=> d!97883 (= lt!318517 e!400740)))

(declare-fun c!78695 () Bool)

(assert (=> d!97883 (= c!78695 (is-Cons!13425 newAcc!49))))

(assert (=> d!97883 (= (-!381 newAcc!49 k!2824) lt!318517)))

(declare-fun b!712163 () Bool)

(assert (=> b!712163 (= e!400742 call!34558)))

(declare-fun b!712164 () Bool)

(assert (=> b!712164 (= e!400740 Nil!13426)))

(declare-fun bm!34555 () Bool)

(assert (=> bm!34555 (= call!34558 (-!381 (t!19746 newAcc!49) k!2824))))

(declare-fun b!712165 () Bool)

(assert (=> b!712165 (= e!400740 e!400742)))

(declare-fun c!78696 () Bool)

(assert (=> b!712165 (= c!78696 (= k!2824 (h!14470 newAcc!49)))))

(assert (= (and d!97883 c!78695) b!712165))

(assert (= (and d!97883 (not c!78695)) b!712164))

(assert (= (and b!712165 c!78696) b!712163))

(assert (= (and b!712165 (not c!78696)) b!712161))

(assert (= (or b!712163 b!712161) bm!34555))

(assert (= (and d!97883 res!475505) b!712162))

(declare-fun m!669221 () Bool)

(assert (=> b!712162 m!669221))

(assert (=> b!712162 m!669153))

(declare-fun m!669223 () Bool)

(assert (=> b!712162 m!669223))

(declare-fun m!669225 () Bool)

(assert (=> d!97883 m!669225))

(declare-fun m!669227 () Bool)

(assert (=> d!97883 m!669227))

(declare-fun m!669229 () Bool)

(assert (=> bm!34555 m!669229))

(assert (=> b!711710 d!97883))

(declare-fun b!712166 () Bool)

(declare-fun e!400745 () List!13429)

(declare-fun call!34559 () List!13429)

(assert (=> b!712166 (= e!400745 (Cons!13425 (h!14470 lt!318458) call!34559))))

(declare-fun b!712167 () Bool)

(declare-fun e!400744 () Bool)

(declare-fun lt!318518 () List!13429)

(assert (=> b!712167 (= e!400744 (= (content!363 lt!318518) (set.minus (content!363 lt!318458) (set.insert k!2824 (as set.empty (Set (_ BitVec 64)))))))))

(declare-fun d!97885 () Bool)

(assert (=> d!97885 e!400744))

(declare-fun res!475506 () Bool)

(assert (=> d!97885 (=> (not res!475506) (not e!400744))))

(assert (=> d!97885 (= res!475506 (<= (size!19746 lt!318518) (size!19746 lt!318458)))))

(declare-fun e!400743 () List!13429)

(assert (=> d!97885 (= lt!318518 e!400743)))

(declare-fun c!78697 () Bool)

(assert (=> d!97885 (= c!78697 (is-Cons!13425 lt!318458))))

(assert (=> d!97885 (= (-!381 lt!318458 k!2824) lt!318518)))

(declare-fun b!712168 () Bool)

(assert (=> b!712168 (= e!400745 call!34559)))

(declare-fun b!712169 () Bool)

(assert (=> b!712169 (= e!400743 Nil!13426)))

(declare-fun bm!34556 () Bool)

(assert (=> bm!34556 (= call!34559 (-!381 (t!19746 lt!318458) k!2824))))

(declare-fun b!712170 () Bool)

(assert (=> b!712170 (= e!400743 e!400745)))

(declare-fun c!78698 () Bool)

(assert (=> b!712170 (= c!78698 (= k!2824 (h!14470 lt!318458)))))

(assert (= (and d!97885 c!78697) b!712170))

(assert (= (and d!97885 (not c!78697)) b!712169))

(assert (= (and b!712170 c!78698) b!712168))

(assert (= (and b!712170 (not c!78698)) b!712166))

(assert (= (or b!712168 b!712166) bm!34556))

(assert (= (and d!97885 res!475506) b!712167))

(declare-fun m!669231 () Bool)

(assert (=> b!712167 m!669231))

(assert (=> b!712167 m!669009))

(assert (=> b!712167 m!669223))

(declare-fun m!669233 () Bool)

(assert (=> d!97885 m!669233))

(declare-fun m!669235 () Bool)

(assert (=> d!97885 m!669235))

(declare-fun m!669237 () Bool)

(assert (=> bm!34556 m!669237))

(assert (=> b!711692 d!97885))

(declare-fun d!97887 () Bool)

(declare-fun lt!318519 () Bool)

(assert (=> d!97887 (= lt!318519 (set.member k!2824 (content!363 acc!652)))))

(declare-fun e!400747 () Bool)

(assert (=> d!97887 (= lt!318519 e!400747)))

(declare-fun res!475508 () Bool)

(assert (=> d!97887 (=> (not res!475508) (not e!400747))))

(assert (=> d!97887 (= res!475508 (is-Cons!13425 acc!652))))

(assert (=> d!97887 (= (contains!3972 acc!652 k!2824) lt!318519)))

(declare-fun b!712171 () Bool)

(declare-fun e!400746 () Bool)

(assert (=> b!712171 (= e!400747 e!400746)))

(declare-fun res!475507 () Bool)

(assert (=> b!712171 (=> res!475507 e!400746)))

(assert (=> b!712171 (= res!475507 (= (h!14470 acc!652) k!2824))))

(declare-fun b!712172 () Bool)

(assert (=> b!712172 (= e!400746 (contains!3972 (t!19746 acc!652) k!2824))))

(assert (= (and d!97887 res!475508) b!712171))

(assert (= (and b!712171 (not res!475507)) b!712172))

(assert (=> d!97887 m!669059))

(declare-fun m!669239 () Bool)

(assert (=> d!97887 m!669239))

(declare-fun m!669241 () Bool)

(assert (=> b!712172 m!669241))

(assert (=> b!711693 d!97887))

(declare-fun d!97889 () Bool)

(declare-fun res!475509 () Bool)

(declare-fun e!400748 () Bool)

(assert (=> d!97889 (=> res!475509 e!400748)))

(assert (=> d!97889 (= res!475509 (is-Nil!13426 newAcc!49))))

(assert (=> d!97889 (= (noDuplicate!1219 newAcc!49) e!400748)))

(declare-fun b!712173 () Bool)

(declare-fun e!400749 () Bool)

(assert (=> b!712173 (= e!400748 e!400749)))

(declare-fun res!475510 () Bool)

(assert (=> b!712173 (=> (not res!475510) (not e!400749))))

(assert (=> b!712173 (= res!475510 (not (contains!3972 (t!19746 newAcc!49) (h!14470 newAcc!49))))))

(declare-fun b!712174 () Bool)

(assert (=> b!712174 (= e!400749 (noDuplicate!1219 (t!19746 newAcc!49)))))

(assert (= (and d!97889 (not res!475509)) b!712173))

(assert (= (and b!712173 res!475510) b!712174))

(declare-fun m!669243 () Bool)

(assert (=> b!712173 m!669243))

(declare-fun m!669245 () Bool)

(assert (=> b!712174 m!669245))

(assert (=> b!711691 d!97889))

(declare-fun d!97891 () Bool)

(declare-fun lt!318520 () Bool)

(assert (=> d!97891 (= lt!318520 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!363 lt!318457)))))

(declare-fun e!400751 () Bool)

(assert (=> d!97891 (= lt!318520 e!400751)))

(declare-fun res!475512 () Bool)

(assert (=> d!97891 (=> (not res!475512) (not e!400751))))

(assert (=> d!97891 (= res!475512 (is-Cons!13425 lt!318457))))

(assert (=> d!97891 (= (contains!3972 lt!318457 #b0000000000000000000000000000000000000000000000000000000000000000) lt!318520)))

(declare-fun b!712175 () Bool)

(declare-fun e!400750 () Bool)

(assert (=> b!712175 (= e!400751 e!400750)))

(declare-fun res!475511 () Bool)

(assert (=> b!712175 (=> res!475511 e!400750)))

(assert (=> b!712175 (= res!475511 (= (h!14470 lt!318457) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!712176 () Bool)

(assert (=> b!712176 (= e!400750 (contains!3972 (t!19746 lt!318457) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!97891 res!475512) b!712175))

(assert (= (and b!712175 (not res!475511)) b!712176))

(assert (=> d!97891 m!669211))

(declare-fun m!669247 () Bool)

(assert (=> d!97891 m!669247))

(declare-fun m!669249 () Bool)

(assert (=> b!712176 m!669249))

(assert (=> b!711712 d!97891))

(declare-fun d!97893 () Bool)

(declare-fun lt!318521 () Bool)

(assert (=> d!97893 (= lt!318521 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!363 acc!652)))))

(declare-fun e!400753 () Bool)

(assert (=> d!97893 (= lt!318521 e!400753)))

(declare-fun res!475514 () Bool)

(assert (=> d!97893 (=> (not res!475514) (not e!400753))))

(assert (=> d!97893 (= res!475514 (is-Cons!13425 acc!652))))

(assert (=> d!97893 (= (contains!3972 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000) lt!318521)))

(declare-fun b!712177 () Bool)

(declare-fun e!400752 () Bool)

(assert (=> b!712177 (= e!400753 e!400752)))

(declare-fun res!475513 () Bool)

(assert (=> b!712177 (=> res!475513 e!400752)))

(assert (=> b!712177 (= res!475513 (= (h!14470 acc!652) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!712178 () Bool)

(assert (=> b!712178 (= e!400752 (contains!3972 (t!19746 acc!652) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!97893 res!475514) b!712177))

(assert (= (and b!712177 (not res!475513)) b!712178))

(assert (=> d!97893 m!669059))

(declare-fun m!669251 () Bool)

(assert (=> d!97893 m!669251))

(declare-fun m!669253 () Bool)

(assert (=> b!712178 m!669253))

(assert (=> b!711713 d!97893))

(declare-fun d!97895 () Bool)

(declare-fun res!475515 () Bool)

(declare-fun e!400754 () Bool)

(assert (=> d!97895 (=> res!475515 e!400754)))

(assert (=> d!97895 (= res!475515 (is-Nil!13426 lt!318458))))

(assert (=> d!97895 (= (noDuplicate!1219 lt!318458) e!400754)))

(declare-fun b!712179 () Bool)

(declare-fun e!400755 () Bool)

(assert (=> b!712179 (= e!400754 e!400755)))

(declare-fun res!475516 () Bool)

(assert (=> b!712179 (=> (not res!475516) (not e!400755))))

(assert (=> b!712179 (= res!475516 (not (contains!3972 (t!19746 lt!318458) (h!14470 lt!318458))))))

(declare-fun b!712180 () Bool)

(assert (=> b!712180 (= e!400755 (noDuplicate!1219 (t!19746 lt!318458)))))

(assert (= (and d!97895 (not res!475515)) b!712179))

