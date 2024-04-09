; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!63460 () Bool)

(assert start!63460)

(declare-fun b!714432 () Bool)

(declare-fun res!477644 () Bool)

(declare-fun e!401489 () Bool)

(assert (=> b!714432 (=> (not res!477644) (not e!401489))))

(declare-datatypes ((array!40473 0))(
  ( (array!40474 (arr!19371 (Array (_ BitVec 32) (_ BitVec 64))) (size!19785 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40473)

(declare-fun k!2824 () (_ BitVec 64))

(declare-fun from!2969 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!40473 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!714432 (= res!477644 (not (arrayContainsKey!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!714433 () Bool)

(declare-fun res!477633 () Bool)

(assert (=> b!714433 (=> (not res!477633) (not e!401489))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!714433 (= res!477633 (not (validKeyInArray!0 (select (arr!19371 a!3591) from!2969))))))

(declare-fun b!714434 () Bool)

(declare-fun res!477638 () Bool)

(assert (=> b!714434 (=> (not res!477638) (not e!401489))))

(declare-datatypes ((List!13465 0))(
  ( (Nil!13462) (Cons!13461 (h!14506 (_ BitVec 64)) (t!19788 List!13465)) )
))
(declare-fun newAcc!49 () List!13465)

(declare-fun acc!652 () List!13465)

(declare-fun -!417 (List!13465 (_ BitVec 64)) List!13465)

(assert (=> b!714434 (= res!477638 (= (-!417 newAcc!49 k!2824) acc!652))))

(declare-fun b!714435 () Bool)

(declare-fun res!477630 () Bool)

(assert (=> b!714435 (=> (not res!477630) (not e!401489))))

(assert (=> b!714435 (= res!477630 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19785 a!3591)))))

(declare-fun b!714436 () Bool)

(declare-fun res!477642 () Bool)

(assert (=> b!714436 (=> (not res!477642) (not e!401489))))

(declare-fun contains!4008 (List!13465 (_ BitVec 64)) Bool)

(assert (=> b!714436 (= res!477642 (not (contains!4008 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!714437 () Bool)

(declare-fun arrayNoDuplicates!0 (array!40473 (_ BitVec 32) List!13465) Bool)

(assert (=> b!714437 (= e!401489 (not (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) acc!652)))))

(declare-fun b!714438 () Bool)

(declare-fun res!477628 () Bool)

(assert (=> b!714438 (=> (not res!477628) (not e!401489))))

(assert (=> b!714438 (= res!477628 (contains!4008 newAcc!49 k!2824))))

(declare-fun b!714439 () Bool)

(declare-fun res!477631 () Bool)

(assert (=> b!714439 (=> (not res!477631) (not e!401489))))

(declare-fun noDuplicate!1255 (List!13465) Bool)

(assert (=> b!714439 (= res!477631 (noDuplicate!1255 newAcc!49))))

(declare-fun b!714440 () Bool)

(declare-fun res!477637 () Bool)

(assert (=> b!714440 (=> (not res!477637) (not e!401489))))

(assert (=> b!714440 (= res!477637 (not (contains!4008 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!714441 () Bool)

(declare-fun res!477641 () Bool)

(assert (=> b!714441 (=> (not res!477641) (not e!401489))))

(assert (=> b!714441 (= res!477641 (not (contains!4008 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!714442 () Bool)

(declare-fun res!477629 () Bool)

(assert (=> b!714442 (=> (not res!477629) (not e!401489))))

(assert (=> b!714442 (= res!477629 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!714443 () Bool)

(declare-fun res!477636 () Bool)

(assert (=> b!714443 (=> (not res!477636) (not e!401489))))

(assert (=> b!714443 (= res!477636 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun b!714444 () Bool)

(declare-fun res!477634 () Bool)

(assert (=> b!714444 (=> (not res!477634) (not e!401489))))

(declare-fun subseq!452 (List!13465 List!13465) Bool)

(assert (=> b!714444 (= res!477634 (subseq!452 acc!652 newAcc!49))))

(declare-fun b!714445 () Bool)

(declare-fun res!477643 () Bool)

(assert (=> b!714445 (=> (not res!477643) (not e!401489))))

(assert (=> b!714445 (= res!477643 (not (contains!4008 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!714446 () Bool)

(declare-fun res!477635 () Bool)

(assert (=> b!714446 (=> (not res!477635) (not e!401489))))

(assert (=> b!714446 (= res!477635 (validKeyInArray!0 k!2824))))

(declare-fun res!477632 () Bool)

(assert (=> start!63460 (=> (not res!477632) (not e!401489))))

(assert (=> start!63460 (= res!477632 (and (bvslt (size!19785 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19785 a!3591))))))

(assert (=> start!63460 e!401489))

(assert (=> start!63460 true))

(declare-fun array_inv!15145 (array!40473) Bool)

(assert (=> start!63460 (array_inv!15145 a!3591)))

(declare-fun b!714447 () Bool)

(declare-fun res!477639 () Bool)

(assert (=> b!714447 (=> (not res!477639) (not e!401489))))

(assert (=> b!714447 (= res!477639 (not (contains!4008 acc!652 k!2824)))))

(declare-fun b!714448 () Bool)

(declare-fun res!477645 () Bool)

(assert (=> b!714448 (=> (not res!477645) (not e!401489))))

(assert (=> b!714448 (= res!477645 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!714449 () Bool)

(declare-fun res!477640 () Bool)

(assert (=> b!714449 (=> (not res!477640) (not e!401489))))

(assert (=> b!714449 (= res!477640 (noDuplicate!1255 acc!652))))

(assert (= (and start!63460 res!477632) b!714449))

(assert (= (and b!714449 res!477640) b!714439))

(assert (= (and b!714439 res!477631) b!714441))

(assert (= (and b!714441 res!477641) b!714436))

(assert (= (and b!714436 res!477642) b!714442))

(assert (= (and b!714442 res!477629) b!714447))

(assert (= (and b!714447 res!477639) b!714446))

(assert (= (and b!714446 res!477635) b!714448))

(assert (= (and b!714448 res!477645) b!714444))

(assert (= (and b!714444 res!477634) b!714438))

(assert (= (and b!714438 res!477628) b!714434))

(assert (= (and b!714434 res!477638) b!714445))

(assert (= (and b!714445 res!477643) b!714440))

(assert (= (and b!714440 res!477637) b!714435))

(assert (= (and b!714435 res!477630) b!714433))

(assert (= (and b!714433 res!477633) b!714443))

(assert (= (and b!714443 res!477636) b!714432))

(assert (= (and b!714432 res!477644) b!714437))

(declare-fun m!670995 () Bool)

(assert (=> start!63460 m!670995))

(declare-fun m!670997 () Bool)

(assert (=> b!714444 m!670997))

(declare-fun m!670999 () Bool)

(assert (=> b!714437 m!670999))

(declare-fun m!671001 () Bool)

(assert (=> b!714440 m!671001))

(declare-fun m!671003 () Bool)

(assert (=> b!714447 m!671003))

(declare-fun m!671005 () Bool)

(assert (=> b!714436 m!671005))

(declare-fun m!671007 () Bool)

(assert (=> b!714442 m!671007))

(declare-fun m!671009 () Bool)

(assert (=> b!714433 m!671009))

(assert (=> b!714433 m!671009))

(declare-fun m!671011 () Bool)

(assert (=> b!714433 m!671011))

(declare-fun m!671013 () Bool)

(assert (=> b!714446 m!671013))

(declare-fun m!671015 () Bool)

(assert (=> b!714439 m!671015))

(declare-fun m!671017 () Bool)

(assert (=> b!714438 m!671017))

(declare-fun m!671019 () Bool)

(assert (=> b!714445 m!671019))

(declare-fun m!671021 () Bool)

(assert (=> b!714432 m!671021))

(declare-fun m!671023 () Bool)

(assert (=> b!714448 m!671023))

(declare-fun m!671025 () Bool)

(assert (=> b!714441 m!671025))

(declare-fun m!671027 () Bool)

(assert (=> b!714434 m!671027))

(declare-fun m!671029 () Bool)

(assert (=> b!714449 m!671029))

(push 1)

(assert (not b!714445))

(assert (not b!714449))

(assert (not b!714438))

(assert (not b!714436))

(assert (not b!714439))

(assert (not b!714437))

(assert (not b!714433))

(assert (not b!714442))

(assert (not b!714448))

(assert (not b!714434))

(assert (not b!714432))

(assert (not b!714444))

(assert (not b!714446))

(assert (not b!714441))

(assert (not b!714447))

(assert (not start!63460))

(assert (not b!714440))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!98243 () Bool)

(declare-fun lt!318741 () Bool)

(declare-fun content!372 (List!13465) (Set (_ BitVec 64)))

(assert (=> d!98243 (= lt!318741 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!372 acc!652)))))

(declare-fun e!401558 () Bool)

(assert (=> d!98243 (= lt!318741 e!401558)))

(declare-fun res!477801 () Bool)

(assert (=> d!98243 (=> (not res!477801) (not e!401558))))

(assert (=> d!98243 (= res!477801 (is-Cons!13461 acc!652))))

(assert (=> d!98243 (= (contains!4008 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000) lt!318741)))

(declare-fun b!714619 () Bool)

(declare-fun e!401559 () Bool)

(assert (=> b!714619 (= e!401558 e!401559)))

(declare-fun res!477802 () Bool)

(assert (=> b!714619 (=> res!477802 e!401559)))

(assert (=> b!714619 (= res!477802 (= (h!14506 acc!652) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!714620 () Bool)

(assert (=> b!714620 (= e!401559 (contains!4008 (t!19788 acc!652) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!98243 res!477801) b!714619))

(assert (= (and b!714619 (not res!477802)) b!714620))

(declare-fun m!671139 () Bool)

(assert (=> d!98243 m!671139))

(declare-fun m!671141 () Bool)

(assert (=> d!98243 m!671141))

(declare-fun m!671143 () Bool)

(assert (=> b!714620 m!671143))

(assert (=> b!714441 d!98243))

(declare-fun d!98247 () Bool)

(declare-fun res!477822 () Bool)

(declare-fun e!401581 () Bool)

(assert (=> d!98247 (=> res!477822 e!401581)))

(assert (=> d!98247 (= res!477822 (= (select (arr!19371 a!3591) (bvadd #b00000000000000000000000000000001 from!2969)) k!2824))))

(assert (=> d!98247 (= (arrayContainsKey!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969)) e!401581)))

(declare-fun b!714644 () Bool)

(declare-fun e!401582 () Bool)

(assert (=> b!714644 (= e!401581 e!401582)))

(declare-fun res!477823 () Bool)

(assert (=> b!714644 (=> (not res!477823) (not e!401582))))

(assert (=> b!714644 (= res!477823 (bvslt (bvadd #b00000000000000000000000000000001 from!2969 #b00000000000000000000000000000001) (size!19785 a!3591)))))

(declare-fun b!714645 () Bool)

(assert (=> b!714645 (= e!401582 (arrayContainsKey!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969 #b00000000000000000000000000000001)))))

(assert (= (and d!98247 (not res!477822)) b!714644))

(assert (= (and b!714644 res!477823) b!714645))

(declare-fun m!671163 () Bool)

(assert (=> d!98247 m!671163))

(declare-fun m!671167 () Bool)

(assert (=> b!714645 m!671167))

(assert (=> b!714432 d!98247))

(declare-fun d!98257 () Bool)

(assert (=> d!98257 (= (array_inv!15145 a!3591) (bvsge (size!19785 a!3591) #b00000000000000000000000000000000))))

(assert (=> start!63460 d!98257))

(declare-fun d!98263 () Bool)

(declare-fun res!477828 () Bool)

(declare-fun e!401587 () Bool)

(assert (=> d!98263 (=> res!477828 e!401587)))

(assert (=> d!98263 (= res!477828 (= (select (arr!19371 a!3591) from!2969) k!2824))))

(assert (=> d!98263 (= (arrayContainsKey!0 a!3591 k!2824 from!2969) e!401587)))

(declare-fun b!714650 () Bool)

(declare-fun e!401588 () Bool)

(assert (=> b!714650 (= e!401587 e!401588)))

(declare-fun res!477829 () Bool)

(assert (=> b!714650 (=> (not res!477829) (not e!401588))))

(assert (=> b!714650 (= res!477829 (bvslt (bvadd from!2969 #b00000000000000000000000000000001) (size!19785 a!3591)))))

(declare-fun b!714651 () Bool)

(assert (=> b!714651 (= e!401588 (arrayContainsKey!0 a!3591 k!2824 (bvadd from!2969 #b00000000000000000000000000000001)))))

(assert (= (and d!98263 (not res!477828)) b!714650))

(assert (= (and b!714650 res!477829) b!714651))

(assert (=> d!98263 m!671009))

(declare-fun m!671185 () Bool)

(assert (=> b!714651 m!671185))

(assert (=> b!714442 d!98263))

(declare-fun d!98267 () Bool)

(declare-fun res!477840 () Bool)

(declare-fun e!401600 () Bool)

(assert (=> d!98267 (=> res!477840 e!401600)))

(assert (=> d!98267 (= res!477840 (is-Nil!13462 acc!652))))

(assert (=> d!98267 (= (noDuplicate!1255 acc!652) e!401600)))

(declare-fun b!714664 () Bool)

(declare-fun e!401601 () Bool)

(assert (=> b!714664 (= e!401600 e!401601)))

(declare-fun res!477841 () Bool)

(assert (=> b!714664 (=> (not res!477841) (not e!401601))))

(assert (=> b!714664 (= res!477841 (not (contains!4008 (t!19788 acc!652) (h!14506 acc!652))))))

(declare-fun b!714665 () Bool)

(assert (=> b!714665 (= e!401601 (noDuplicate!1255 (t!19788 acc!652)))))

(assert (= (and d!98267 (not res!477840)) b!714664))

(assert (= (and b!714664 res!477841) b!714665))

(declare-fun m!671191 () Bool)

(assert (=> b!714664 m!671191))

(declare-fun m!671193 () Bool)

(assert (=> b!714665 m!671193))

(assert (=> b!714449 d!98267))

(declare-fun d!98271 () Bool)

(declare-fun lt!318751 () Bool)

(assert (=> d!98271 (= lt!318751 (set.member k!2824 (content!372 newAcc!49)))))

(declare-fun e!401608 () Bool)

(assert (=> d!98271 (= lt!318751 e!401608)))

(declare-fun res!477844 () Bool)

(assert (=> d!98271 (=> (not res!477844) (not e!401608))))

(assert (=> d!98271 (= res!477844 (is-Cons!13461 newAcc!49))))

(assert (=> d!98271 (= (contains!4008 newAcc!49 k!2824) lt!318751)))

(declare-fun b!714674 () Bool)

(declare-fun e!401609 () Bool)

(assert (=> b!714674 (= e!401608 e!401609)))

(declare-fun res!477845 () Bool)

(assert (=> b!714674 (=> res!477845 e!401609)))

(assert (=> b!714674 (= res!477845 (= (h!14506 newAcc!49) k!2824))))

(declare-fun b!714675 () Bool)

(assert (=> b!714675 (= e!401609 (contains!4008 (t!19788 newAcc!49) k!2824))))

(assert (= (and d!98271 res!477844) b!714674))

(assert (= (and b!714674 (not res!477845)) b!714675))

(declare-fun m!671199 () Bool)

(assert (=> d!98271 m!671199))

(declare-fun m!671201 () Bool)

(assert (=> d!98271 m!671201))

(declare-fun m!671203 () Bool)

(assert (=> b!714675 m!671203))

(assert (=> b!714438 d!98271))

(declare-fun d!98275 () Bool)

(declare-fun lt!318753 () Bool)

(assert (=> d!98275 (= lt!318753 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!372 newAcc!49)))))

(declare-fun e!401612 () Bool)

(assert (=> d!98275 (= lt!318753 e!401612)))

(declare-fun res!477848 () Bool)

(assert (=> d!98275 (=> (not res!477848) (not e!401612))))

(assert (=> d!98275 (= res!477848 (is-Cons!13461 newAcc!49))))

(assert (=> d!98275 (= (contains!4008 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000) lt!318753)))

(declare-fun b!714678 () Bool)

(declare-fun e!401613 () Bool)

(assert (=> b!714678 (= e!401612 e!401613)))

(declare-fun res!477849 () Bool)

(assert (=> b!714678 (=> res!477849 e!401613)))

(assert (=> b!714678 (= res!477849 (= (h!14506 newAcc!49) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!714679 () Bool)

(assert (=> b!714679 (= e!401613 (contains!4008 (t!19788 newAcc!49) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!98275 res!477848) b!714678))

(assert (= (and b!714678 (not res!477849)) b!714679))

(assert (=> d!98275 m!671199))

(declare-fun m!671209 () Bool)

(assert (=> d!98275 m!671209))

(declare-fun m!671211 () Bool)

(assert (=> b!714679 m!671211))

(assert (=> b!714440 d!98275))

(declare-fun d!98279 () Bool)

(declare-fun res!477852 () Bool)

(declare-fun e!401616 () Bool)

(assert (=> d!98279 (=> res!477852 e!401616)))

(assert (=> d!98279 (= res!477852 (is-Nil!13462 newAcc!49))))

(assert (=> d!98279 (= (noDuplicate!1255 newAcc!49) e!401616)))

(declare-fun b!714682 () Bool)

(declare-fun e!401617 () Bool)

(assert (=> b!714682 (= e!401616 e!401617)))

(declare-fun res!477853 () Bool)

(assert (=> b!714682 (=> (not res!477853) (not e!401617))))

(assert (=> b!714682 (= res!477853 (not (contains!4008 (t!19788 newAcc!49) (h!14506 newAcc!49))))))

(declare-fun b!714683 () Bool)

(assert (=> b!714683 (= e!401617 (noDuplicate!1255 (t!19788 newAcc!49)))))

(assert (= (and d!98279 (not res!477852)) b!714682))

(assert (= (and b!714682 res!477853) b!714683))

(declare-fun m!671213 () Bool)

(assert (=> b!714682 m!671213))

(declare-fun m!671215 () Bool)

(assert (=> b!714683 m!671215))

(assert (=> b!714439 d!98279))

(declare-fun d!98281 () Bool)

(declare-fun lt!318754 () Bool)

(assert (=> d!98281 (= lt!318754 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!372 acc!652)))))

(declare-fun e!401618 () Bool)

(assert (=> d!98281 (= lt!318754 e!401618)))

(declare-fun res!477854 () Bool)

(assert (=> d!98281 (=> (not res!477854) (not e!401618))))

(assert (=> d!98281 (= res!477854 (is-Cons!13461 acc!652))))

(assert (=> d!98281 (= (contains!4008 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000) lt!318754)))

(declare-fun b!714684 () Bool)

(declare-fun e!401619 () Bool)

(assert (=> b!714684 (= e!401618 e!401619)))

(declare-fun res!477855 () Bool)

(assert (=> b!714684 (=> res!477855 e!401619)))

(assert (=> b!714684 (= res!477855 (= (h!14506 acc!652) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!714685 () Bool)

(assert (=> b!714685 (= e!401619 (contains!4008 (t!19788 acc!652) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!98281 res!477854) b!714684))

(assert (= (and b!714684 (not res!477855)) b!714685))

(assert (=> d!98281 m!671139))

(declare-fun m!671217 () Bool)

(assert (=> d!98281 m!671217))

(declare-fun m!671219 () Bool)

(assert (=> b!714685 m!671219))

(assert (=> b!714436 d!98281))

(declare-fun d!98283 () Bool)

(assert (=> d!98283 (= (validKeyInArray!0 k!2824) (and (not (= k!2824 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2824 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!714446 d!98283))

(declare-fun call!34623 () Bool)

(declare-fun bm!34620 () Bool)

(declare-fun c!78789 () Bool)

(assert (=> bm!34620 (= call!34623 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969 #b00000000000000000000000000000001) (ite c!78789 (Cons!13461 (select (arr!19371 a!3591) (bvadd #b00000000000000000000000000000001 from!2969)) acc!652) acc!652)))))

(declare-fun e!401659 () Bool)

(declare-fun b!714732 () Bool)

(assert (=> b!714732 (= e!401659 (contains!4008 acc!652 (select (arr!19371 a!3591) (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!714733 () Bool)

(declare-fun e!401662 () Bool)

(assert (=> b!714733 (= e!401662 call!34623)))

(declare-fun d!98285 () Bool)

(declare-fun res!477890 () Bool)

(declare-fun e!401661 () Bool)

(assert (=> d!98285 (=> res!477890 e!401661)))

(assert (=> d!98285 (= res!477890 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) (size!19785 a!3591)))))

(assert (=> d!98285 (= (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) acc!652) e!401661)))

(declare-fun b!714734 () Bool)

(declare-fun e!401660 () Bool)

(assert (=> b!714734 (= e!401661 e!401660)))

(declare-fun res!477889 () Bool)

(assert (=> b!714734 (=> (not res!477889) (not e!401660))))

(assert (=> b!714734 (= res!477889 (not e!401659))))

(declare-fun res!477888 () Bool)

(assert (=> b!714734 (=> (not res!477888) (not e!401659))))

(assert (=> b!714734 (= res!477888 (validKeyInArray!0 (select (arr!19371 a!3591) (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!714735 () Bool)

(assert (=> b!714735 (= e!401662 call!34623)))

(declare-fun b!714736 () Bool)

(assert (=> b!714736 (= e!401660 e!401662)))

(assert (=> b!714736 (= c!78789 (validKeyInArray!0 (select (arr!19371 a!3591) (bvadd #b00000000000000000000000000000001 from!2969))))))

(assert (= (and d!98285 (not res!477890)) b!714734))

(assert (= (and b!714734 res!477888) b!714732))

(assert (= (and b!714734 res!477889) b!714736))

(assert (= (and b!714736 c!78789) b!714733))

(assert (= (and b!714736 (not c!78789)) b!714735))

(assert (= (or b!714733 b!714735) bm!34620))

(assert (=> bm!34620 m!671163))

(declare-fun m!671239 () Bool)

(assert (=> bm!34620 m!671239))

(assert (=> b!714732 m!671163))

(assert (=> b!714732 m!671163))

(declare-fun m!671243 () Bool)

(assert (=> b!714732 m!671243))

(assert (=> b!714734 m!671163))

(assert (=> b!714734 m!671163))

(declare-fun m!671245 () Bool)

(assert (=> b!714734 m!671245))

(assert (=> b!714736 m!671163))

(assert (=> b!714736 m!671163))

(assert (=> b!714736 m!671245))

(assert (=> b!714437 d!98285))

(declare-fun call!34624 () Bool)

(declare-fun bm!34621 () Bool)

(declare-fun c!78790 () Bool)

(assert (=> bm!34621 (= call!34624 (arrayNoDuplicates!0 a!3591 (bvadd from!2969 #b00000000000000000000000000000001) (ite c!78790 (Cons!13461 (select (arr!19371 a!3591) from!2969) acc!652) acc!652)))))

(declare-fun b!714741 () Bool)

(declare-fun e!401667 () Bool)

(assert (=> b!714741 (= e!401667 (contains!4008 acc!652 (select (arr!19371 a!3591) from!2969)))))

(declare-fun b!714742 () Bool)

(declare-fun e!401670 () Bool)

(assert (=> b!714742 (= e!401670 call!34624)))

(declare-fun d!98299 () Bool)

(declare-fun res!477897 () Bool)

(declare-fun e!401669 () Bool)

(assert (=> d!98299 (=> res!477897 e!401669)))

(assert (=> d!98299 (= res!477897 (bvsge from!2969 (size!19785 a!3591)))))

(assert (=> d!98299 (= (arrayNoDuplicates!0 a!3591 from!2969 acc!652) e!401669)))

(declare-fun b!714743 () Bool)

(declare-fun e!401668 () Bool)

(assert (=> b!714743 (= e!401669 e!401668)))

(declare-fun res!477896 () Bool)

(assert (=> b!714743 (=> (not res!477896) (not e!401668))))

(assert (=> b!714743 (= res!477896 (not e!401667))))

(declare-fun res!477895 () Bool)

(assert (=> b!714743 (=> (not res!477895) (not e!401667))))

(assert (=> b!714743 (= res!477895 (validKeyInArray!0 (select (arr!19371 a!3591) from!2969)))))

(declare-fun b!714744 () Bool)

(assert (=> b!714744 (= e!401670 call!34624)))

(declare-fun b!714745 () Bool)

(assert (=> b!714745 (= e!401668 e!401670)))

(assert (=> b!714745 (= c!78790 (validKeyInArray!0 (select (arr!19371 a!3591) from!2969)))))

(assert (= (and d!98299 (not res!477897)) b!714743))

(assert (= (and b!714743 res!477895) b!714741))

(assert (= (and b!714743 res!477896) b!714745))

(assert (= (and b!714745 c!78790) b!714742))

(assert (= (and b!714745 (not c!78790)) b!714744))

(assert (= (or b!714742 b!714744) bm!34621))

(assert (=> bm!34621 m!671009))

(declare-fun m!671255 () Bool)

(assert (=> bm!34621 m!671255))

(assert (=> b!714741 m!671009))

(assert (=> b!714741 m!671009))

(declare-fun m!671259 () Bool)

(assert (=> b!714741 m!671259))

(assert (=> b!714743 m!671009))

(assert (=> b!714743 m!671009))

(assert (=> b!714743 m!671011))

(assert (=> b!714745 m!671009))

(assert (=> b!714745 m!671009))

(assert (=> b!714745 m!671011))

(assert (=> b!714448 d!98299))

(declare-fun d!98305 () Bool)

(declare-fun lt!318756 () Bool)

(assert (=> d!98305 (= lt!318756 (set.member k!2824 (content!372 acc!652)))))

(declare-fun e!401677 () Bool)

(assert (=> d!98305 (= lt!318756 e!401677)))

(declare-fun res!477903 () Bool)

(assert (=> d!98305 (=> (not res!477903) (not e!401677))))

(assert (=> d!98305 (= res!477903 (is-Cons!13461 acc!652))))

(assert (=> d!98305 (= (contains!4008 acc!652 k!2824) lt!318756)))

(declare-fun b!714753 () Bool)

(declare-fun e!401678 () Bool)

(assert (=> b!714753 (= e!401677 e!401678)))

(declare-fun res!477904 () Bool)

(assert (=> b!714753 (=> res!477904 e!401678)))

(assert (=> b!714753 (= res!477904 (= (h!14506 acc!652) k!2824))))

(declare-fun b!714754 () Bool)

(assert (=> b!714754 (= e!401678 (contains!4008 (t!19788 acc!652) k!2824))))

(assert (= (and d!98305 res!477903) b!714753))

(assert (= (and b!714753 (not res!477904)) b!714754))

(assert (=> d!98305 m!671139))

