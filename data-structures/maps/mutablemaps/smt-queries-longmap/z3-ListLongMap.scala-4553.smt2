; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!63462 () Bool)

(assert start!63462)

(declare-fun b!714486 () Bool)

(declare-fun res!477693 () Bool)

(declare-fun e!401495 () Bool)

(assert (=> b!714486 (=> (not res!477693) (not e!401495))))

(declare-datatypes ((List!13466 0))(
  ( (Nil!13463) (Cons!13462 (h!14507 (_ BitVec 64)) (t!19789 List!13466)) )
))
(declare-fun acc!652 () List!13466)

(declare-fun contains!4009 (List!13466 (_ BitVec 64)) Bool)

(assert (=> b!714486 (= res!477693 (not (contains!4009 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!714487 () Bool)

(declare-fun res!477683 () Bool)

(assert (=> b!714487 (=> (not res!477683) (not e!401495))))

(declare-fun noDuplicate!1256 (List!13466) Bool)

(assert (=> b!714487 (= res!477683 (noDuplicate!1256 acc!652))))

(declare-fun b!714488 () Bool)

(declare-fun res!477685 () Bool)

(assert (=> b!714488 (=> (not res!477685) (not e!401495))))

(declare-fun newAcc!49 () List!13466)

(assert (=> b!714488 (= res!477685 (not (contains!4009 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!714489 () Bool)

(declare-fun res!477698 () Bool)

(assert (=> b!714489 (=> (not res!477698) (not e!401495))))

(declare-fun k0!2824 () (_ BitVec 64))

(assert (=> b!714489 (= res!477698 (contains!4009 newAcc!49 k0!2824))))

(declare-fun b!714490 () Bool)

(declare-fun res!477682 () Bool)

(assert (=> b!714490 (=> (not res!477682) (not e!401495))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!714490 (= res!477682 (validKeyInArray!0 k0!2824))))

(declare-fun b!714491 () Bool)

(declare-fun res!477688 () Bool)

(assert (=> b!714491 (=> (not res!477688) (not e!401495))))

(declare-fun from!2969 () (_ BitVec 32))

(declare-datatypes ((array!40475 0))(
  ( (array!40476 (arr!19372 (Array (_ BitVec 32) (_ BitVec 64))) (size!19786 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40475)

(assert (=> b!714491 (= res!477688 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19786 a!3591)))))

(declare-fun b!714492 () Bool)

(declare-fun res!477692 () Bool)

(assert (=> b!714492 (=> (not res!477692) (not e!401495))))

(declare-fun arrayContainsKey!0 (array!40475 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!714492 (= res!477692 (not (arrayContainsKey!0 a!3591 k0!2824 from!2969)))))

(declare-fun b!714493 () Bool)

(declare-fun res!477695 () Bool)

(assert (=> b!714493 (=> (not res!477695) (not e!401495))))

(assert (=> b!714493 (= res!477695 (noDuplicate!1256 newAcc!49))))

(declare-fun b!714494 () Bool)

(declare-fun res!477686 () Bool)

(assert (=> b!714494 (=> (not res!477686) (not e!401495))))

(declare-fun subseq!453 (List!13466 List!13466) Bool)

(assert (=> b!714494 (= res!477686 (subseq!453 acc!652 newAcc!49))))

(declare-fun b!714495 () Bool)

(declare-fun res!477696 () Bool)

(assert (=> b!714495 (=> (not res!477696) (not e!401495))))

(declare-fun arrayNoDuplicates!0 (array!40475 (_ BitVec 32) List!13466) Bool)

(assert (=> b!714495 (= res!477696 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!714496 () Bool)

(declare-fun res!477699 () Bool)

(assert (=> b!714496 (=> (not res!477699) (not e!401495))))

(assert (=> b!714496 (= res!477699 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun b!714497 () Bool)

(declare-fun res!477694 () Bool)

(assert (=> b!714497 (=> (not res!477694) (not e!401495))))

(declare-fun -!418 (List!13466 (_ BitVec 64)) List!13466)

(assert (=> b!714497 (= res!477694 (= (-!418 newAcc!49 k0!2824) acc!652))))

(declare-fun b!714498 () Bool)

(declare-fun res!477684 () Bool)

(assert (=> b!714498 (=> (not res!477684) (not e!401495))))

(assert (=> b!714498 (= res!477684 (not (contains!4009 acc!652 k0!2824)))))

(declare-fun b!714499 () Bool)

(declare-fun res!477691 () Bool)

(assert (=> b!714499 (=> (not res!477691) (not e!401495))))

(assert (=> b!714499 (= res!477691 (not (contains!4009 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!714500 () Bool)

(declare-fun res!477687 () Bool)

(assert (=> b!714500 (=> (not res!477687) (not e!401495))))

(assert (=> b!714500 (= res!477687 (not (contains!4009 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!714501 () Bool)

(assert (=> b!714501 (= e!401495 (not (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) acc!652)))))

(declare-fun res!477689 () Bool)

(assert (=> start!63462 (=> (not res!477689) (not e!401495))))

(assert (=> start!63462 (= res!477689 (and (bvslt (size!19786 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19786 a!3591))))))

(assert (=> start!63462 e!401495))

(assert (=> start!63462 true))

(declare-fun array_inv!15146 (array!40475) Bool)

(assert (=> start!63462 (array_inv!15146 a!3591)))

(declare-fun b!714502 () Bool)

(declare-fun res!477690 () Bool)

(assert (=> b!714502 (=> (not res!477690) (not e!401495))))

(assert (=> b!714502 (= res!477690 (not (arrayContainsKey!0 a!3591 k0!2824 (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!714503 () Bool)

(declare-fun res!477697 () Bool)

(assert (=> b!714503 (=> (not res!477697) (not e!401495))))

(assert (=> b!714503 (= res!477697 (not (validKeyInArray!0 (select (arr!19372 a!3591) from!2969))))))

(assert (= (and start!63462 res!477689) b!714487))

(assert (= (and b!714487 res!477683) b!714493))

(assert (= (and b!714493 res!477695) b!714500))

(assert (= (and b!714500 res!477687) b!714486))

(assert (= (and b!714486 res!477693) b!714492))

(assert (= (and b!714492 res!477692) b!714498))

(assert (= (and b!714498 res!477684) b!714490))

(assert (= (and b!714490 res!477682) b!714495))

(assert (= (and b!714495 res!477696) b!714494))

(assert (= (and b!714494 res!477686) b!714489))

(assert (= (and b!714489 res!477698) b!714497))

(assert (= (and b!714497 res!477694) b!714488))

(assert (= (and b!714488 res!477685) b!714499))

(assert (= (and b!714499 res!477691) b!714491))

(assert (= (and b!714491 res!477688) b!714503))

(assert (= (and b!714503 res!477697) b!714496))

(assert (= (and b!714496 res!477699) b!714502))

(assert (= (and b!714502 res!477690) b!714501))

(declare-fun m!671031 () Bool)

(assert (=> b!714492 m!671031))

(declare-fun m!671033 () Bool)

(assert (=> b!714498 m!671033))

(declare-fun m!671035 () Bool)

(assert (=> b!714493 m!671035))

(declare-fun m!671037 () Bool)

(assert (=> b!714495 m!671037))

(declare-fun m!671039 () Bool)

(assert (=> b!714502 m!671039))

(declare-fun m!671041 () Bool)

(assert (=> start!63462 m!671041))

(declare-fun m!671043 () Bool)

(assert (=> b!714503 m!671043))

(assert (=> b!714503 m!671043))

(declare-fun m!671045 () Bool)

(assert (=> b!714503 m!671045))

(declare-fun m!671047 () Bool)

(assert (=> b!714490 m!671047))

(declare-fun m!671049 () Bool)

(assert (=> b!714501 m!671049))

(declare-fun m!671051 () Bool)

(assert (=> b!714486 m!671051))

(declare-fun m!671053 () Bool)

(assert (=> b!714488 m!671053))

(declare-fun m!671055 () Bool)

(assert (=> b!714500 m!671055))

(declare-fun m!671057 () Bool)

(assert (=> b!714499 m!671057))

(declare-fun m!671059 () Bool)

(assert (=> b!714494 m!671059))

(declare-fun m!671061 () Bool)

(assert (=> b!714497 m!671061))

(declare-fun m!671063 () Bool)

(assert (=> b!714487 m!671063))

(declare-fun m!671065 () Bool)

(assert (=> b!714489 m!671065))

(check-sat (not b!714499) (not b!714486) (not b!714489) (not b!714500) (not b!714490) (not b!714495) (not b!714492) (not b!714493) (not b!714502) (not b!714501) (not start!63462) (not b!714503) (not b!714494) (not b!714497) (not b!714487) (not b!714488) (not b!714498))
(check-sat)
(get-model)

(declare-fun d!98223 () Bool)

(declare-fun lt!318731 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!370 (List!13466) (InoxSet (_ BitVec 64)))

(assert (=> d!98223 (= lt!318731 (select (content!370 newAcc!49) k0!2824))))

(declare-fun e!401508 () Bool)

(assert (=> d!98223 (= lt!318731 e!401508)))

(declare-fun res!477759 () Bool)

(assert (=> d!98223 (=> (not res!477759) (not e!401508))))

(get-info :version)

(assert (=> d!98223 (= res!477759 ((_ is Cons!13462) newAcc!49))))

(assert (=> d!98223 (= (contains!4009 newAcc!49 k0!2824) lt!318731)))

(declare-fun b!714562 () Bool)

(declare-fun e!401507 () Bool)

(assert (=> b!714562 (= e!401508 e!401507)))

(declare-fun res!477758 () Bool)

(assert (=> b!714562 (=> res!477758 e!401507)))

(assert (=> b!714562 (= res!477758 (= (h!14507 newAcc!49) k0!2824))))

(declare-fun b!714563 () Bool)

(assert (=> b!714563 (= e!401507 (contains!4009 (t!19789 newAcc!49) k0!2824))))

(assert (= (and d!98223 res!477759) b!714562))

(assert (= (and b!714562 (not res!477758)) b!714563))

(declare-fun m!671103 () Bool)

(assert (=> d!98223 m!671103))

(declare-fun m!671105 () Bool)

(assert (=> d!98223 m!671105))

(declare-fun m!671107 () Bool)

(assert (=> b!714563 m!671107))

(assert (=> b!714489 d!98223))

(declare-fun d!98225 () Bool)

(declare-fun lt!318732 () Bool)

(assert (=> d!98225 (= lt!318732 (select (content!370 acc!652) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!401510 () Bool)

(assert (=> d!98225 (= lt!318732 e!401510)))

(declare-fun res!477761 () Bool)

(assert (=> d!98225 (=> (not res!477761) (not e!401510))))

(assert (=> d!98225 (= res!477761 ((_ is Cons!13462) acc!652))))

(assert (=> d!98225 (= (contains!4009 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000) lt!318732)))

(declare-fun b!714564 () Bool)

(declare-fun e!401509 () Bool)

(assert (=> b!714564 (= e!401510 e!401509)))

(declare-fun res!477760 () Bool)

(assert (=> b!714564 (=> res!477760 e!401509)))

(assert (=> b!714564 (= res!477760 (= (h!14507 acc!652) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!714565 () Bool)

(assert (=> b!714565 (= e!401509 (contains!4009 (t!19789 acc!652) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!98225 res!477761) b!714564))

(assert (= (and b!714564 (not res!477760)) b!714565))

(declare-fun m!671109 () Bool)

(assert (=> d!98225 m!671109))

(declare-fun m!671111 () Bool)

(assert (=> d!98225 m!671111))

(declare-fun m!671113 () Bool)

(assert (=> b!714565 m!671113))

(assert (=> b!714500 d!98225))

(declare-fun d!98227 () Bool)

(declare-fun lt!318733 () Bool)

(assert (=> d!98227 (= lt!318733 (select (content!370 newAcc!49) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!401512 () Bool)

(assert (=> d!98227 (= lt!318733 e!401512)))

(declare-fun res!477763 () Bool)

(assert (=> d!98227 (=> (not res!477763) (not e!401512))))

(assert (=> d!98227 (= res!477763 ((_ is Cons!13462) newAcc!49))))

(assert (=> d!98227 (= (contains!4009 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000) lt!318733)))

(declare-fun b!714566 () Bool)

(declare-fun e!401511 () Bool)

(assert (=> b!714566 (= e!401512 e!401511)))

(declare-fun res!477762 () Bool)

(assert (=> b!714566 (=> res!477762 e!401511)))

(assert (=> b!714566 (= res!477762 (= (h!14507 newAcc!49) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!714567 () Bool)

(assert (=> b!714567 (= e!401511 (contains!4009 (t!19789 newAcc!49) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!98227 res!477763) b!714566))

(assert (= (and b!714566 (not res!477762)) b!714567))

(assert (=> d!98227 m!671103))

(declare-fun m!671115 () Bool)

(assert (=> d!98227 m!671115))

(declare-fun m!671117 () Bool)

(assert (=> b!714567 m!671117))

(assert (=> b!714499 d!98227))

(declare-fun b!714592 () Bool)

(declare-fun e!401535 () Bool)

(declare-fun e!401538 () Bool)

(assert (=> b!714592 (= e!401535 e!401538)))

(declare-fun res!477784 () Bool)

(assert (=> b!714592 (=> (not res!477784) (not e!401538))))

(declare-fun e!401537 () Bool)

(assert (=> b!714592 (= res!477784 (not e!401537))))

(declare-fun res!477786 () Bool)

(assert (=> b!714592 (=> (not res!477786) (not e!401537))))

(assert (=> b!714592 (= res!477786 (validKeyInArray!0 (select (arr!19372 a!3591) (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun call!34611 () Bool)

(declare-fun c!78771 () Bool)

(declare-fun bm!34608 () Bool)

(assert (=> bm!34608 (= call!34611 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969 #b00000000000000000000000000000001) (ite c!78771 (Cons!13462 (select (arr!19372 a!3591) (bvadd #b00000000000000000000000000000001 from!2969)) acc!652) acc!652)))))

(declare-fun b!714593 () Bool)

(declare-fun e!401536 () Bool)

(assert (=> b!714593 (= e!401538 e!401536)))

(assert (=> b!714593 (= c!78771 (validKeyInArray!0 (select (arr!19372 a!3591) (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!714594 () Bool)

(assert (=> b!714594 (= e!401536 call!34611)))

(declare-fun b!714595 () Bool)

(assert (=> b!714595 (= e!401537 (contains!4009 acc!652 (select (arr!19372 a!3591) (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun d!98229 () Bool)

(declare-fun res!477785 () Bool)

(assert (=> d!98229 (=> res!477785 e!401535)))

(assert (=> d!98229 (= res!477785 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) (size!19786 a!3591)))))

(assert (=> d!98229 (= (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) acc!652) e!401535)))

(declare-fun b!714596 () Bool)

(assert (=> b!714596 (= e!401536 call!34611)))

(assert (= (and d!98229 (not res!477785)) b!714592))

(assert (= (and b!714592 res!477786) b!714595))

(assert (= (and b!714592 res!477784) b!714593))

(assert (= (and b!714593 c!78771) b!714594))

(assert (= (and b!714593 (not c!78771)) b!714596))

(assert (= (or b!714594 b!714596) bm!34608))

(declare-fun m!671125 () Bool)

(assert (=> b!714592 m!671125))

(assert (=> b!714592 m!671125))

(declare-fun m!671127 () Bool)

(assert (=> b!714592 m!671127))

(assert (=> bm!34608 m!671125))

(declare-fun m!671129 () Bool)

(assert (=> bm!34608 m!671129))

(assert (=> b!714593 m!671125))

(assert (=> b!714593 m!671125))

(assert (=> b!714593 m!671127))

(assert (=> b!714595 m!671125))

(assert (=> b!714595 m!671125))

(declare-fun m!671135 () Bool)

(assert (=> b!714595 m!671135))

(assert (=> b!714501 d!98229))

(declare-fun d!98237 () Bool)

(assert (=> d!98237 (= (validKeyInArray!0 k0!2824) (and (not (= k0!2824 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2824 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!714490 d!98237))

(declare-fun e!401579 () Bool)

(declare-fun lt!318745 () List!13466)

(declare-fun b!714639 () Bool)

(assert (=> b!714639 (= e!401579 (= (content!370 lt!318745) ((_ map and) (content!370 newAcc!49) ((_ map not) (store ((as const (Array (_ BitVec 64) Bool)) false) k0!2824 true)))))))

(declare-fun b!714640 () Bool)

(declare-fun e!401580 () List!13466)

(declare-fun call!34614 () List!13466)

(assert (=> b!714640 (= e!401580 (Cons!13462 (h!14507 newAcc!49) call!34614))))

(declare-fun bm!34611 () Bool)

(assert (=> bm!34611 (= call!34614 (-!418 (t!19789 newAcc!49) k0!2824))))

(declare-fun b!714641 () Bool)

(assert (=> b!714641 (= e!401580 call!34614)))

(declare-fun d!98241 () Bool)

(assert (=> d!98241 e!401579))

(declare-fun res!477821 () Bool)

(assert (=> d!98241 (=> (not res!477821) (not e!401579))))

(declare-fun size!19788 (List!13466) Int)

(assert (=> d!98241 (= res!477821 (<= (size!19788 lt!318745) (size!19788 newAcc!49)))))

(declare-fun e!401578 () List!13466)

(assert (=> d!98241 (= lt!318745 e!401578)))

(declare-fun c!78777 () Bool)

(assert (=> d!98241 (= c!78777 ((_ is Cons!13462) newAcc!49))))

(assert (=> d!98241 (= (-!418 newAcc!49 k0!2824) lt!318745)))

(declare-fun b!714642 () Bool)

(assert (=> b!714642 (= e!401578 Nil!13463)))

(declare-fun b!714643 () Bool)

(assert (=> b!714643 (= e!401578 e!401580)))

(declare-fun c!78776 () Bool)

(assert (=> b!714643 (= c!78776 (= k0!2824 (h!14507 newAcc!49)))))

(assert (= (and d!98241 c!78777) b!714643))

(assert (= (and d!98241 (not c!78777)) b!714642))

(assert (= (and b!714643 c!78776) b!714641))

(assert (= (and b!714643 (not c!78776)) b!714640))

(assert (= (or b!714641 b!714640) bm!34611))

(assert (= (and d!98241 res!477821) b!714639))

(declare-fun m!671171 () Bool)

(assert (=> b!714639 m!671171))

(assert (=> b!714639 m!671103))

(declare-fun m!671173 () Bool)

(assert (=> b!714639 m!671173))

(declare-fun m!671175 () Bool)

(assert (=> bm!34611 m!671175))

(declare-fun m!671177 () Bool)

(assert (=> d!98241 m!671177))

(declare-fun m!671179 () Bool)

(assert (=> d!98241 m!671179))

(assert (=> b!714497 d!98241))

(declare-fun d!98261 () Bool)

(declare-fun lt!318747 () Bool)

(assert (=> d!98261 (= lt!318747 (select (content!370 acc!652) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!401586 () Bool)

(assert (=> d!98261 (= lt!318747 e!401586)))

(declare-fun res!477827 () Bool)

(assert (=> d!98261 (=> (not res!477827) (not e!401586))))

(assert (=> d!98261 (= res!477827 ((_ is Cons!13462) acc!652))))

(assert (=> d!98261 (= (contains!4009 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000) lt!318747)))

(declare-fun b!714648 () Bool)

(declare-fun e!401585 () Bool)

(assert (=> b!714648 (= e!401586 e!401585)))

(declare-fun res!477826 () Bool)

(assert (=> b!714648 (=> res!477826 e!401585)))

(assert (=> b!714648 (= res!477826 (= (h!14507 acc!652) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!714649 () Bool)

(assert (=> b!714649 (= e!401585 (contains!4009 (t!19789 acc!652) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!98261 res!477827) b!714648))

(assert (= (and b!714648 (not res!477826)) b!714649))

(assert (=> d!98261 m!671109))

(declare-fun m!671181 () Bool)

(assert (=> d!98261 m!671181))

(declare-fun m!671183 () Bool)

(assert (=> b!714649 m!671183))

(assert (=> b!714486 d!98261))

(declare-fun d!98265 () Bool)

(declare-fun lt!318748 () Bool)

(assert (=> d!98265 (= lt!318748 (select (content!370 newAcc!49) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!401590 () Bool)

(assert (=> d!98265 (= lt!318748 e!401590)))

(declare-fun res!477831 () Bool)

(assert (=> d!98265 (=> (not res!477831) (not e!401590))))

(assert (=> d!98265 (= res!477831 ((_ is Cons!13462) newAcc!49))))

(assert (=> d!98265 (= (contains!4009 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000) lt!318748)))

(declare-fun b!714652 () Bool)

(declare-fun e!401589 () Bool)

(assert (=> b!714652 (= e!401590 e!401589)))

(declare-fun res!477830 () Bool)

(assert (=> b!714652 (=> res!477830 e!401589)))

(assert (=> b!714652 (= res!477830 (= (h!14507 newAcc!49) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!714653 () Bool)

(assert (=> b!714653 (= e!401589 (contains!4009 (t!19789 newAcc!49) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!98265 res!477831) b!714652))

(assert (= (and b!714652 (not res!477830)) b!714653))

(assert (=> d!98265 m!671103))

(declare-fun m!671187 () Bool)

(assert (=> d!98265 m!671187))

(declare-fun m!671189 () Bool)

(assert (=> b!714653 m!671189))

(assert (=> b!714488 d!98265))

(declare-fun d!98269 () Bool)

(declare-fun res!477842 () Bool)

(declare-fun e!401606 () Bool)

(assert (=> d!98269 (=> res!477842 e!401606)))

(assert (=> d!98269 (= res!477842 ((_ is Nil!13463) acc!652))))

(assert (=> d!98269 (= (noDuplicate!1256 acc!652) e!401606)))

(declare-fun b!714672 () Bool)

(declare-fun e!401607 () Bool)

(assert (=> b!714672 (= e!401606 e!401607)))

(declare-fun res!477843 () Bool)

(assert (=> b!714672 (=> (not res!477843) (not e!401607))))

(assert (=> b!714672 (= res!477843 (not (contains!4009 (t!19789 acc!652) (h!14507 acc!652))))))

(declare-fun b!714673 () Bool)

(assert (=> b!714673 (= e!401607 (noDuplicate!1256 (t!19789 acc!652)))))

(assert (= (and d!98269 (not res!477842)) b!714672))

(assert (= (and b!714672 res!477843) b!714673))

(declare-fun m!671195 () Bool)

(assert (=> b!714672 m!671195))

(declare-fun m!671197 () Bool)

(assert (=> b!714673 m!671197))

(assert (=> b!714487 d!98269))

(declare-fun d!98273 () Bool)

(declare-fun lt!318752 () Bool)

(assert (=> d!98273 (= lt!318752 (select (content!370 acc!652) k0!2824))))

(declare-fun e!401611 () Bool)

(assert (=> d!98273 (= lt!318752 e!401611)))

(declare-fun res!477847 () Bool)

(assert (=> d!98273 (=> (not res!477847) (not e!401611))))

(assert (=> d!98273 (= res!477847 ((_ is Cons!13462) acc!652))))

(assert (=> d!98273 (= (contains!4009 acc!652 k0!2824) lt!318752)))

(declare-fun b!714676 () Bool)

(declare-fun e!401610 () Bool)

(assert (=> b!714676 (= e!401611 e!401610)))

(declare-fun res!477846 () Bool)

(assert (=> b!714676 (=> res!477846 e!401610)))

(assert (=> b!714676 (= res!477846 (= (h!14507 acc!652) k0!2824))))

(declare-fun b!714677 () Bool)

(assert (=> b!714677 (= e!401610 (contains!4009 (t!19789 acc!652) k0!2824))))

(assert (= (and d!98273 res!477847) b!714676))

(assert (= (and b!714676 (not res!477846)) b!714677))

(assert (=> d!98273 m!671109))

(declare-fun m!671205 () Bool)

(assert (=> d!98273 m!671205))

(declare-fun m!671207 () Bool)

(assert (=> b!714677 m!671207))

(assert (=> b!714498 d!98273))

(declare-fun d!98277 () Bool)

(declare-fun res!477868 () Bool)

(declare-fun e!401633 () Bool)

(assert (=> d!98277 (=> res!477868 e!401633)))

(assert (=> d!98277 (= res!477868 ((_ is Nil!13463) acc!652))))

(assert (=> d!98277 (= (subseq!453 acc!652 newAcc!49) e!401633)))

(declare-fun b!714699 () Bool)

(declare-fun e!401631 () Bool)

(assert (=> b!714699 (= e!401633 e!401631)))

(declare-fun res!477866 () Bool)

(assert (=> b!714699 (=> (not res!477866) (not e!401631))))

(assert (=> b!714699 (= res!477866 ((_ is Cons!13462) newAcc!49))))

(declare-fun b!714700 () Bool)

(declare-fun e!401632 () Bool)

(assert (=> b!714700 (= e!401631 e!401632)))

(declare-fun res!477865 () Bool)

(assert (=> b!714700 (=> res!477865 e!401632)))

(declare-fun e!401634 () Bool)

(assert (=> b!714700 (= res!477865 e!401634)))

(declare-fun res!477867 () Bool)

(assert (=> b!714700 (=> (not res!477867) (not e!401634))))

(assert (=> b!714700 (= res!477867 (= (h!14507 acc!652) (h!14507 newAcc!49)))))

(declare-fun b!714701 () Bool)

(assert (=> b!714701 (= e!401634 (subseq!453 (t!19789 acc!652) (t!19789 newAcc!49)))))

(declare-fun b!714702 () Bool)

(assert (=> b!714702 (= e!401632 (subseq!453 acc!652 (t!19789 newAcc!49)))))

(assert (= (and d!98277 (not res!477868)) b!714699))

(assert (= (and b!714699 res!477866) b!714700))

(assert (= (and b!714700 res!477867) b!714701))

(assert (= (and b!714700 (not res!477865)) b!714702))

(declare-fun m!671231 () Bool)

(assert (=> b!714701 m!671231))

(declare-fun m!671233 () Bool)

(assert (=> b!714702 m!671233))

(assert (=> b!714494 d!98277))

(declare-fun d!98291 () Bool)

(assert (=> d!98291 (= (array_inv!15146 a!3591) (bvsge (size!19786 a!3591) #b00000000000000000000000000000000))))

(assert (=> start!63462 d!98291))

(declare-fun b!714709 () Bool)

(declare-fun e!401641 () Bool)

(declare-fun e!401644 () Bool)

(assert (=> b!714709 (= e!401641 e!401644)))

(declare-fun res!477875 () Bool)

(assert (=> b!714709 (=> (not res!477875) (not e!401644))))

(declare-fun e!401643 () Bool)

(assert (=> b!714709 (= res!477875 (not e!401643))))

(declare-fun res!477877 () Bool)

(assert (=> b!714709 (=> (not res!477877) (not e!401643))))

(assert (=> b!714709 (= res!477877 (validKeyInArray!0 (select (arr!19372 a!3591) from!2969)))))

(declare-fun c!78784 () Bool)

(declare-fun bm!34615 () Bool)

(declare-fun call!34618 () Bool)

(assert (=> bm!34615 (= call!34618 (arrayNoDuplicates!0 a!3591 (bvadd from!2969 #b00000000000000000000000000000001) (ite c!78784 (Cons!13462 (select (arr!19372 a!3591) from!2969) acc!652) acc!652)))))

(declare-fun b!714710 () Bool)

(declare-fun e!401642 () Bool)

(assert (=> b!714710 (= e!401644 e!401642)))

(assert (=> b!714710 (= c!78784 (validKeyInArray!0 (select (arr!19372 a!3591) from!2969)))))

(declare-fun b!714711 () Bool)

(assert (=> b!714711 (= e!401642 call!34618)))

(declare-fun b!714712 () Bool)

(assert (=> b!714712 (= e!401643 (contains!4009 acc!652 (select (arr!19372 a!3591) from!2969)))))

(declare-fun d!98293 () Bool)

(declare-fun res!477876 () Bool)

(assert (=> d!98293 (=> res!477876 e!401641)))

(assert (=> d!98293 (= res!477876 (bvsge from!2969 (size!19786 a!3591)))))

(assert (=> d!98293 (= (arrayNoDuplicates!0 a!3591 from!2969 acc!652) e!401641)))

(declare-fun b!714713 () Bool)

(assert (=> b!714713 (= e!401642 call!34618)))

(assert (= (and d!98293 (not res!477876)) b!714709))

(assert (= (and b!714709 res!477877) b!714712))

(assert (= (and b!714709 res!477875) b!714710))

(assert (= (and b!714710 c!78784) b!714711))

(assert (= (and b!714710 (not c!78784)) b!714713))

(assert (= (or b!714711 b!714713) bm!34615))

(assert (=> b!714709 m!671043))

(assert (=> b!714709 m!671043))

(assert (=> b!714709 m!671045))

(assert (=> bm!34615 m!671043))

(declare-fun m!671235 () Bool)

(assert (=> bm!34615 m!671235))

(assert (=> b!714710 m!671043))

(assert (=> b!714710 m!671043))

(assert (=> b!714710 m!671045))

(assert (=> b!714712 m!671043))

(assert (=> b!714712 m!671043))

(declare-fun m!671237 () Bool)

(assert (=> b!714712 m!671237))

(assert (=> b!714495 d!98293))

(declare-fun d!98295 () Bool)

(declare-fun res!477891 () Bool)

(declare-fun e!401663 () Bool)

(assert (=> d!98295 (=> res!477891 e!401663)))

(assert (=> d!98295 (= res!477891 (= (select (arr!19372 a!3591) from!2969) k0!2824))))

(assert (=> d!98295 (= (arrayContainsKey!0 a!3591 k0!2824 from!2969) e!401663)))

(declare-fun b!714737 () Bool)

(declare-fun e!401664 () Bool)

(assert (=> b!714737 (= e!401663 e!401664)))

(declare-fun res!477892 () Bool)

(assert (=> b!714737 (=> (not res!477892) (not e!401664))))

(assert (=> b!714737 (= res!477892 (bvslt (bvadd from!2969 #b00000000000000000000000000000001) (size!19786 a!3591)))))

(declare-fun b!714738 () Bool)

(assert (=> b!714738 (= e!401664 (arrayContainsKey!0 a!3591 k0!2824 (bvadd from!2969 #b00000000000000000000000000000001)))))

(assert (= (and d!98295 (not res!477891)) b!714737))

(assert (= (and b!714737 res!477892) b!714738))

(assert (=> d!98295 m!671043))

(declare-fun m!671241 () Bool)

(assert (=> b!714738 m!671241))

(assert (=> b!714492 d!98295))

(declare-fun d!98297 () Bool)

(declare-fun res!477893 () Bool)

(declare-fun e!401665 () Bool)

(assert (=> d!98297 (=> res!477893 e!401665)))

(assert (=> d!98297 (= res!477893 (= (select (arr!19372 a!3591) (bvadd #b00000000000000000000000000000001 from!2969)) k0!2824))))

(assert (=> d!98297 (= (arrayContainsKey!0 a!3591 k0!2824 (bvadd #b00000000000000000000000000000001 from!2969)) e!401665)))

(declare-fun b!714739 () Bool)

(declare-fun e!401666 () Bool)

(assert (=> b!714739 (= e!401665 e!401666)))

(declare-fun res!477894 () Bool)

(assert (=> b!714739 (=> (not res!477894) (not e!401666))))

(assert (=> b!714739 (= res!477894 (bvslt (bvadd #b00000000000000000000000000000001 from!2969 #b00000000000000000000000000000001) (size!19786 a!3591)))))

(declare-fun b!714740 () Bool)

(assert (=> b!714740 (= e!401666 (arrayContainsKey!0 a!3591 k0!2824 (bvadd #b00000000000000000000000000000001 from!2969 #b00000000000000000000000000000001)))))

(assert (= (and d!98297 (not res!477893)) b!714739))

(assert (= (and b!714739 res!477894) b!714740))

(assert (=> d!98297 m!671125))

(declare-fun m!671247 () Bool)

(assert (=> b!714740 m!671247))

(assert (=> b!714502 d!98297))

(declare-fun d!98301 () Bool)

(declare-fun res!477901 () Bool)

(declare-fun e!401675 () Bool)

(assert (=> d!98301 (=> res!477901 e!401675)))

(assert (=> d!98301 (= res!477901 ((_ is Nil!13463) newAcc!49))))

(assert (=> d!98301 (= (noDuplicate!1256 newAcc!49) e!401675)))

(declare-fun b!714751 () Bool)

(declare-fun e!401676 () Bool)

(assert (=> b!714751 (= e!401675 e!401676)))

(declare-fun res!477902 () Bool)

(assert (=> b!714751 (=> (not res!477902) (not e!401676))))

(assert (=> b!714751 (= res!477902 (not (contains!4009 (t!19789 newAcc!49) (h!14507 newAcc!49))))))

(declare-fun b!714752 () Bool)

(assert (=> b!714752 (= e!401676 (noDuplicate!1256 (t!19789 newAcc!49)))))

(assert (= (and d!98301 (not res!477901)) b!714751))

(assert (= (and b!714751 res!477902) b!714752))

(declare-fun m!671249 () Bool)

(assert (=> b!714751 m!671249))

(declare-fun m!671251 () Bool)

(assert (=> b!714752 m!671251))

(assert (=> b!714493 d!98301))

(declare-fun d!98303 () Bool)

(assert (=> d!98303 (= (validKeyInArray!0 (select (arr!19372 a!3591) from!2969)) (and (not (= (select (arr!19372 a!3591) from!2969) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!19372 a!3591) from!2969) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!714503 d!98303))

(check-sat (not d!98241) (not bm!34608) (not b!714649) (not b!714677) (not d!98261) (not b!714653) (not b!714563) (not b!714738) (not b!714702) (not bm!34611) (not b!714565) (not d!98265) (not b!714673) (not b!714672) (not b!714712) (not b!714709) (not d!98223) (not b!714701) (not b!714751) (not b!714567) (not b!714710) (not d!98273) (not d!98225) (not b!714752) (not b!714595) (not bm!34615) (not d!98227) (not b!714592) (not b!714593) (not b!714740) (not b!714639))
(check-sat)
