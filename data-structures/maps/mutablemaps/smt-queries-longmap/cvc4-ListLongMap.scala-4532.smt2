; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62734 () Bool)

(assert start!62734)

(declare-fun b!707718 () Bool)

(declare-fun res!471657 () Bool)

(declare-fun e!398217 () Bool)

(assert (=> b!707718 (=> (not res!471657) (not e!398217))))

(declare-fun k!2824 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!707718 (= res!471657 (validKeyInArray!0 k!2824))))

(declare-fun b!707719 () Bool)

(declare-fun res!471649 () Bool)

(assert (=> b!707719 (=> (not res!471649) (not e!398217))))

(declare-datatypes ((List!13404 0))(
  ( (Nil!13401) (Cons!13400 (h!14445 (_ BitVec 64)) (t!19697 List!13404)) )
))
(declare-fun acc!652 () List!13404)

(declare-fun contains!3947 (List!13404 (_ BitVec 64)) Bool)

(assert (=> b!707719 (= res!471649 (not (contains!3947 acc!652 k!2824)))))

(declare-fun newAcc!49 () List!13404)

(declare-datatypes ((array!40318 0))(
  ( (array!40319 (arr!19310 (Array (_ BitVec 32) (_ BitVec 64))) (size!19695 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40318)

(declare-fun from!2969 () (_ BitVec 32))

(declare-fun b!707720 () Bool)

(declare-fun noDuplicate!1194 (List!13404) Bool)

(declare-fun $colon$colon!501 (List!13404 (_ BitVec 64)) List!13404)

(assert (=> b!707720 (= e!398217 (not (noDuplicate!1194 ($colon$colon!501 newAcc!49 (select (arr!19310 a!3591) from!2969)))))))

(declare-fun b!707721 () Bool)

(declare-fun res!471662 () Bool)

(assert (=> b!707721 (=> (not res!471662) (not e!398217))))

(assert (=> b!707721 (= res!471662 (noDuplicate!1194 newAcc!49))))

(declare-fun b!707723 () Bool)

(declare-fun res!471658 () Bool)

(assert (=> b!707723 (=> (not res!471658) (not e!398217))))

(assert (=> b!707723 (= res!471658 (not (contains!3947 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!707724 () Bool)

(declare-fun res!471661 () Bool)

(assert (=> b!707724 (=> (not res!471661) (not e!398217))))

(declare-fun arrayNoDuplicates!0 (array!40318 (_ BitVec 32) List!13404) Bool)

(assert (=> b!707724 (= res!471661 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!707725 () Bool)

(declare-fun res!471652 () Bool)

(assert (=> b!707725 (=> (not res!471652) (not e!398217))))

(assert (=> b!707725 (= res!471652 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19695 a!3591)))))

(declare-fun b!707726 () Bool)

(declare-fun res!471655 () Bool)

(assert (=> b!707726 (=> (not res!471655) (not e!398217))))

(assert (=> b!707726 (= res!471655 (validKeyInArray!0 (select (arr!19310 a!3591) from!2969)))))

(declare-fun b!707727 () Bool)

(declare-fun res!471660 () Bool)

(assert (=> b!707727 (=> (not res!471660) (not e!398217))))

(assert (=> b!707727 (= res!471660 (contains!3947 newAcc!49 k!2824))))

(declare-fun b!707728 () Bool)

(declare-fun res!471650 () Bool)

(assert (=> b!707728 (=> (not res!471650) (not e!398217))))

(assert (=> b!707728 (= res!471650 (not (contains!3947 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!707729 () Bool)

(declare-fun res!471654 () Bool)

(assert (=> b!707729 (=> (not res!471654) (not e!398217))))

(declare-fun arrayContainsKey!0 (array!40318 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!707729 (= res!471654 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!707730 () Bool)

(declare-fun res!471664 () Bool)

(assert (=> b!707730 (=> (not res!471664) (not e!398217))))

(declare-fun -!356 (List!13404 (_ BitVec 64)) List!13404)

(assert (=> b!707730 (= res!471664 (= (-!356 newAcc!49 k!2824) acc!652))))

(declare-fun b!707722 () Bool)

(declare-fun res!471665 () Bool)

(assert (=> b!707722 (=> (not res!471665) (not e!398217))))

(assert (=> b!707722 (= res!471665 (not (contains!3947 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!471653 () Bool)

(assert (=> start!62734 (=> (not res!471653) (not e!398217))))

(assert (=> start!62734 (= res!471653 (and (bvslt (size!19695 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19695 a!3591))))))

(assert (=> start!62734 e!398217))

(assert (=> start!62734 true))

(declare-fun array_inv!15084 (array!40318) Bool)

(assert (=> start!62734 (array_inv!15084 a!3591)))

(declare-fun b!707731 () Bool)

(declare-fun res!471648 () Bool)

(assert (=> b!707731 (=> (not res!471648) (not e!398217))))

(declare-fun subseq!391 (List!13404 List!13404) Bool)

(assert (=> b!707731 (= res!471648 (subseq!391 acc!652 newAcc!49))))

(declare-fun b!707732 () Bool)

(declare-fun res!471651 () Bool)

(assert (=> b!707732 (=> (not res!471651) (not e!398217))))

(assert (=> b!707732 (= res!471651 (noDuplicate!1194 acc!652))))

(declare-fun b!707733 () Bool)

(declare-fun res!471659 () Bool)

(assert (=> b!707733 (=> (not res!471659) (not e!398217))))

(assert (=> b!707733 (= res!471659 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun b!707734 () Bool)

(declare-fun res!471656 () Bool)

(assert (=> b!707734 (=> (not res!471656) (not e!398217))))

(assert (=> b!707734 (= res!471656 (noDuplicate!1194 ($colon$colon!501 acc!652 (select (arr!19310 a!3591) from!2969))))))

(declare-fun b!707735 () Bool)

(declare-fun res!471663 () Bool)

(assert (=> b!707735 (=> (not res!471663) (not e!398217))))

(assert (=> b!707735 (= res!471663 (not (contains!3947 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!62734 res!471653) b!707732))

(assert (= (and b!707732 res!471651) b!707721))

(assert (= (and b!707721 res!471662) b!707723))

(assert (= (and b!707723 res!471658) b!707728))

(assert (= (and b!707728 res!471650) b!707729))

(assert (= (and b!707729 res!471654) b!707719))

(assert (= (and b!707719 res!471649) b!707718))

(assert (= (and b!707718 res!471657) b!707724))

(assert (= (and b!707724 res!471661) b!707731))

(assert (= (and b!707731 res!471648) b!707727))

(assert (= (and b!707727 res!471660) b!707730))

(assert (= (and b!707730 res!471664) b!707735))

(assert (= (and b!707735 res!471663) b!707722))

(assert (= (and b!707722 res!471665) b!707725))

(assert (= (and b!707725 res!471652) b!707726))

(assert (= (and b!707726 res!471655) b!707733))

(assert (= (and b!707733 res!471659) b!707734))

(assert (= (and b!707734 res!471656) b!707720))

(declare-fun m!665255 () Bool)

(assert (=> b!707735 m!665255))

(declare-fun m!665257 () Bool)

(assert (=> b!707729 m!665257))

(declare-fun m!665259 () Bool)

(assert (=> b!707730 m!665259))

(declare-fun m!665261 () Bool)

(assert (=> b!707728 m!665261))

(declare-fun m!665263 () Bool)

(assert (=> b!707719 m!665263))

(declare-fun m!665265 () Bool)

(assert (=> b!707718 m!665265))

(declare-fun m!665267 () Bool)

(assert (=> b!707720 m!665267))

(assert (=> b!707720 m!665267))

(declare-fun m!665269 () Bool)

(assert (=> b!707720 m!665269))

(assert (=> b!707720 m!665269))

(declare-fun m!665271 () Bool)

(assert (=> b!707720 m!665271))

(declare-fun m!665273 () Bool)

(assert (=> b!707721 m!665273))

(declare-fun m!665275 () Bool)

(assert (=> b!707723 m!665275))

(declare-fun m!665277 () Bool)

(assert (=> start!62734 m!665277))

(declare-fun m!665279 () Bool)

(assert (=> b!707731 m!665279))

(declare-fun m!665281 () Bool)

(assert (=> b!707732 m!665281))

(declare-fun m!665283 () Bool)

(assert (=> b!707722 m!665283))

(assert (=> b!707734 m!665267))

(assert (=> b!707734 m!665267))

(declare-fun m!665285 () Bool)

(assert (=> b!707734 m!665285))

(assert (=> b!707734 m!665285))

(declare-fun m!665287 () Bool)

(assert (=> b!707734 m!665287))

(assert (=> b!707726 m!665267))

(assert (=> b!707726 m!665267))

(declare-fun m!665289 () Bool)

(assert (=> b!707726 m!665289))

(declare-fun m!665291 () Bool)

(assert (=> b!707724 m!665291))

(declare-fun m!665293 () Bool)

(assert (=> b!707727 m!665293))

(push 1)

(assert (not b!707726))

(assert (not b!707720))

(assert (not b!707732))

(assert (not b!707735))

(assert (not b!707724))

(assert (not b!707723))

(assert (not b!707728))

(assert (not b!707727))

(assert (not b!707721))

(assert (not b!707719))

(assert (not b!707731))

(assert (not b!707718))

(assert (not start!62734))

(assert (not b!707722))

(assert (not b!707734))

(assert (not b!707730))

(assert (not b!707729))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!96499 () Bool)

(declare-fun lt!317987 () Bool)

(declare-fun content!338 (List!13404) (Set (_ BitVec 64)))

(assert (=> d!96499 (= lt!317987 (member k!2824 (content!338 acc!652)))))

(declare-fun e!398261 () Bool)

(assert (=> d!96499 (= lt!317987 e!398261)))

(declare-fun res!471705 () Bool)

(assert (=> d!96499 (=> (not res!471705) (not e!398261))))

(assert (=> d!96499 (= res!471705 (is-Cons!13400 acc!652))))

(assert (=> d!96499 (= (contains!3947 acc!652 k!2824) lt!317987)))

(declare-fun b!707781 () Bool)

(declare-fun e!398262 () Bool)

(assert (=> b!707781 (= e!398261 e!398262)))

(declare-fun res!471706 () Bool)

(assert (=> b!707781 (=> res!471706 e!398262)))

(assert (=> b!707781 (= res!471706 (= (h!14445 acc!652) k!2824))))

(declare-fun b!707782 () Bool)

(assert (=> b!707782 (= e!398262 (contains!3947 (t!19697 acc!652) k!2824))))

(assert (= (and d!96499 res!471705) b!707781))

(assert (= (and b!707781 (not res!471706)) b!707782))

(declare-fun m!665329 () Bool)

(assert (=> d!96499 m!665329))

(declare-fun m!665331 () Bool)

(assert (=> d!96499 m!665331))

(declare-fun m!665333 () Bool)

(assert (=> b!707782 m!665333))

(assert (=> b!707719 d!96499))

(declare-fun d!96519 () Bool)

(assert (=> d!96519 (= (validKeyInArray!0 k!2824) (and (not (= k!2824 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2824 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!707718 d!96519))

(declare-fun d!96521 () Bool)

(declare-fun res!471719 () Bool)

(declare-fun e!398282 () Bool)

(assert (=> d!96521 (=> res!471719 e!398282)))

(assert (=> d!96521 (= res!471719 (= (select (arr!19310 a!3591) from!2969) k!2824))))

(assert (=> d!96521 (= (arrayContainsKey!0 a!3591 k!2824 from!2969) e!398282)))

(declare-fun b!707807 () Bool)

(declare-fun e!398283 () Bool)

(assert (=> b!707807 (= e!398282 e!398283)))

(declare-fun res!471720 () Bool)

(assert (=> b!707807 (=> (not res!471720) (not e!398283))))

(assert (=> b!707807 (= res!471720 (bvslt (bvadd from!2969 #b00000000000000000000000000000001) (size!19695 a!3591)))))

(declare-fun b!707808 () Bool)

(assert (=> b!707808 (= e!398283 (arrayContainsKey!0 a!3591 k!2824 (bvadd from!2969 #b00000000000000000000000000000001)))))

(assert (= (and d!96521 (not res!471719)) b!707807))

(assert (= (and b!707807 res!471720) b!707808))

(assert (=> d!96521 m!665267))

(declare-fun m!665335 () Bool)

(assert (=> b!707808 m!665335))

(assert (=> b!707729 d!96521))

(declare-fun d!96523 () Bool)

(declare-fun lt!317990 () Bool)

(assert (=> d!96523 (= lt!317990 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!338 acc!652)))))

(declare-fun e!398284 () Bool)

(assert (=> d!96523 (= lt!317990 e!398284)))

(declare-fun res!471721 () Bool)

(assert (=> d!96523 (=> (not res!471721) (not e!398284))))

(assert (=> d!96523 (= res!471721 (is-Cons!13400 acc!652))))

(assert (=> d!96523 (= (contains!3947 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000) lt!317990)))

(declare-fun b!707809 () Bool)

(declare-fun e!398285 () Bool)

(assert (=> b!707809 (= e!398284 e!398285)))

(declare-fun res!471722 () Bool)

(assert (=> b!707809 (=> res!471722 e!398285)))

(assert (=> b!707809 (= res!471722 (= (h!14445 acc!652) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!707810 () Bool)

(assert (=> b!707810 (= e!398285 (contains!3947 (t!19697 acc!652) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!96523 res!471721) b!707809))

(assert (= (and b!707809 (not res!471722)) b!707810))

(assert (=> d!96523 m!665329))

(declare-fun m!665337 () Bool)

(assert (=> d!96523 m!665337))

(declare-fun m!665339 () Bool)

(assert (=> b!707810 m!665339))

(assert (=> b!707728 d!96523))

(declare-fun d!96525 () Bool)

(assert (=> d!96525 (= (array_inv!15084 a!3591) (bvsge (size!19695 a!3591) #b00000000000000000000000000000000))))

(assert (=> start!62734 d!96525))

(declare-fun d!96527 () Bool)

(declare-fun res!471741 () Bool)

(declare-fun e!398307 () Bool)

(assert (=> d!96527 (=> res!471741 e!398307)))

(assert (=> d!96527 (= res!471741 (is-Nil!13401 acc!652))))

(assert (=> d!96527 (= (noDuplicate!1194 acc!652) e!398307)))

(declare-fun b!707835 () Bool)

(declare-fun e!398308 () Bool)

(assert (=> b!707835 (= e!398307 e!398308)))

(declare-fun res!471742 () Bool)

(assert (=> b!707835 (=> (not res!471742) (not e!398308))))

(assert (=> b!707835 (= res!471742 (not (contains!3947 (t!19697 acc!652) (h!14445 acc!652))))))

(declare-fun b!707836 () Bool)

(assert (=> b!707836 (= e!398308 (noDuplicate!1194 (t!19697 acc!652)))))

(assert (= (and d!96527 (not res!471741)) b!707835))

(assert (= (and b!707835 res!471742) b!707836))

(declare-fun m!665369 () Bool)

(assert (=> b!707835 m!665369))

(declare-fun m!665371 () Bool)

(assert (=> b!707836 m!665371))

(assert (=> b!707732 d!96527))

(declare-fun d!96539 () Bool)

(declare-fun res!471743 () Bool)

(declare-fun e!398309 () Bool)

(assert (=> d!96539 (=> res!471743 e!398309)))

(assert (=> d!96539 (= res!471743 (is-Nil!13401 newAcc!49))))

(assert (=> d!96539 (= (noDuplicate!1194 newAcc!49) e!398309)))

(declare-fun b!707837 () Bool)

(declare-fun e!398310 () Bool)

(assert (=> b!707837 (= e!398309 e!398310)))

(declare-fun res!471744 () Bool)

(assert (=> b!707837 (=> (not res!471744) (not e!398310))))

(assert (=> b!707837 (= res!471744 (not (contains!3947 (t!19697 newAcc!49) (h!14445 newAcc!49))))))

(declare-fun b!707838 () Bool)

(assert (=> b!707838 (= e!398310 (noDuplicate!1194 (t!19697 newAcc!49)))))

(assert (= (and d!96539 (not res!471743)) b!707837))

(assert (= (and b!707837 res!471744) b!707838))

(declare-fun m!665373 () Bool)

(assert (=> b!707837 m!665373))

(declare-fun m!665375 () Bool)

(assert (=> b!707838 m!665375))

(assert (=> b!707721 d!96539))

(declare-fun d!96541 () Bool)

(declare-fun res!471745 () Bool)

(declare-fun e!398311 () Bool)

(assert (=> d!96541 (=> res!471745 e!398311)))

(assert (=> d!96541 (= res!471745 (is-Nil!13401 ($colon$colon!501 newAcc!49 (select (arr!19310 a!3591) from!2969))))))

(assert (=> d!96541 (= (noDuplicate!1194 ($colon$colon!501 newAcc!49 (select (arr!19310 a!3591) from!2969))) e!398311)))

(declare-fun b!707839 () Bool)

(declare-fun e!398312 () Bool)

(assert (=> b!707839 (= e!398311 e!398312)))

(declare-fun res!471746 () Bool)

(assert (=> b!707839 (=> (not res!471746) (not e!398312))))

(assert (=> b!707839 (= res!471746 (not (contains!3947 (t!19697 ($colon$colon!501 newAcc!49 (select (arr!19310 a!3591) from!2969))) (h!14445 ($colon$colon!501 newAcc!49 (select (arr!19310 a!3591) from!2969))))))))

(declare-fun b!707840 () Bool)

(assert (=> b!707840 (= e!398312 (noDuplicate!1194 (t!19697 ($colon$colon!501 newAcc!49 (select (arr!19310 a!3591) from!2969)))))))

(assert (= (and d!96541 (not res!471745)) b!707839))

(assert (= (and b!707839 res!471746) b!707840))

(declare-fun m!665377 () Bool)

(assert (=> b!707839 m!665377))

(declare-fun m!665379 () Bool)

(assert (=> b!707840 m!665379))

(assert (=> b!707720 d!96541))

(declare-fun d!96543 () Bool)

(assert (=> d!96543 (= ($colon$colon!501 newAcc!49 (select (arr!19310 a!3591) from!2969)) (Cons!13400 (select (arr!19310 a!3591) from!2969) newAcc!49))))

(assert (=> b!707720 d!96543))

(declare-fun d!96547 () Bool)

(declare-fun res!471768 () Bool)

(declare-fun e!398338 () Bool)

(assert (=> d!96547 (=> res!471768 e!398338)))

(assert (=> d!96547 (= res!471768 (is-Nil!13401 acc!652))))

(assert (=> d!96547 (= (subseq!391 acc!652 newAcc!49) e!398338)))

(declare-fun b!707869 () Bool)

(declare-fun e!398336 () Bool)

(assert (=> b!707869 (= e!398336 (subseq!391 (t!19697 acc!652) (t!19697 newAcc!49)))))

(declare-fun b!707870 () Bool)

(declare-fun e!398337 () Bool)

(assert (=> b!707870 (= e!398337 (subseq!391 acc!652 (t!19697 newAcc!49)))))

(declare-fun b!707867 () Bool)

(declare-fun e!398339 () Bool)

(assert (=> b!707867 (= e!398338 e!398339)))

(declare-fun res!471766 () Bool)

(assert (=> b!707867 (=> (not res!471766) (not e!398339))))

(assert (=> b!707867 (= res!471766 (is-Cons!13400 newAcc!49))))

(declare-fun b!707868 () Bool)

(assert (=> b!707868 (= e!398339 e!398337)))

(declare-fun res!471767 () Bool)

(assert (=> b!707868 (=> res!471767 e!398337)))

(assert (=> b!707868 (= res!471767 e!398336)))

(declare-fun res!471765 () Bool)

(assert (=> b!707868 (=> (not res!471765) (not e!398336))))

(assert (=> b!707868 (= res!471765 (= (h!14445 acc!652) (h!14445 newAcc!49)))))

(assert (= (and d!96547 (not res!471768)) b!707867))

(assert (= (and b!707867 res!471766) b!707868))

(assert (= (and b!707868 res!471765) b!707869))

(assert (= (and b!707868 (not res!471767)) b!707870))

(declare-fun m!665389 () Bool)

(assert (=> b!707869 m!665389))

(declare-fun m!665391 () Bool)

(assert (=> b!707870 m!665391))

(assert (=> b!707731 d!96547))

(declare-fun b!707916 () Bool)

(declare-fun e!398381 () List!13404)

(declare-fun call!34388 () List!13404)

(assert (=> b!707916 (= e!398381 call!34388)))

(declare-fun d!96557 () Bool)

(declare-fun e!398382 () Bool)

(assert (=> d!96557 e!398382))

(declare-fun res!471802 () Bool)

(assert (=> d!96557 (=> (not res!471802) (not e!398382))))

(declare-fun lt!318004 () List!13404)

(declare-fun size!19698 (List!13404) Int)

(assert (=> d!96557 (= res!471802 (<= (size!19698 lt!318004) (size!19698 newAcc!49)))))

(declare-fun e!398380 () List!13404)

(assert (=> d!96557 (= lt!318004 e!398380)))

(declare-fun c!78425 () Bool)

(assert (=> d!96557 (= c!78425 (is-Cons!13400 newAcc!49))))

(assert (=> d!96557 (= (-!356 newAcc!49 k!2824) lt!318004)))

(declare-fun b!707917 () Bool)

(assert (=> b!707917 (= e!398380 e!398381)))

(declare-fun c!78424 () Bool)

(assert (=> b!707917 (= c!78424 (= k!2824 (h!14445 newAcc!49)))))

(declare-fun b!707918 () Bool)

(assert (=> b!707918 (= e!398381 (Cons!13400 (h!14445 newAcc!49) call!34388))))

(declare-fun bm!34385 () Bool)

(assert (=> bm!34385 (= call!34388 (-!356 (t!19697 newAcc!49) k!2824))))

(declare-fun b!707919 () Bool)

(assert (=> b!707919 (= e!398382 (= (content!338 lt!318004) (setminus (content!338 newAcc!49) (insert k!2824 (as emptyset (Set (_ BitVec 64)))))))))

(declare-fun b!707920 () Bool)

(assert (=> b!707920 (= e!398380 Nil!13401)))

(assert (= (and d!96557 c!78425) b!707917))

(assert (= (and d!96557 (not c!78425)) b!707920))

(assert (= (and b!707917 c!78424) b!707916))

(assert (= (and b!707917 (not c!78424)) b!707918))

(assert (= (or b!707916 b!707918) bm!34385))

(assert (= (and d!96557 res!471802) b!707919))

(declare-fun m!665425 () Bool)

(assert (=> d!96557 m!665425))

(declare-fun m!665427 () Bool)

(assert (=> d!96557 m!665427))

(declare-fun m!665429 () Bool)

(assert (=> bm!34385 m!665429))

(declare-fun m!665431 () Bool)

(assert (=> b!707919 m!665431))

(declare-fun m!665433 () Bool)

(assert (=> b!707919 m!665433))

(declare-fun m!665435 () Bool)

(assert (=> b!707919 m!665435))

(assert (=> b!707730 d!96557))

(declare-fun c!78428 () Bool)

(declare-fun bm!34388 () Bool)

(declare-fun call!34391 () Bool)

(assert (=> bm!34388 (= call!34391 (arrayNoDuplicates!0 a!3591 (bvadd from!2969 #b00000000000000000000000000000001) (ite c!78428 (Cons!13400 (select (arr!19310 a!3591) from!2969) acc!652) acc!652)))))

(declare-fun b!707949 () Bool)

(declare-fun e!398411 () Bool)

(assert (=> b!707949 (= e!398411 call!34391)))

(declare-fun b!707950 () Bool)

(declare-fun e!398412 () Bool)

(declare-fun e!398409 () Bool)

(assert (=> b!707950 (= e!398412 e!398409)))

(declare-fun res!471828 () Bool)

(assert (=> b!707950 (=> (not res!471828) (not e!398409))))

(declare-fun e!398410 () Bool)

(assert (=> b!707950 (= res!471828 (not e!398410))))

(declare-fun res!471829 () Bool)

(assert (=> b!707950 (=> (not res!471829) (not e!398410))))

(assert (=> b!707950 (= res!471829 (validKeyInArray!0 (select (arr!19310 a!3591) from!2969)))))

(declare-fun d!96571 () Bool)

(declare-fun res!471827 () Bool)

(assert (=> d!96571 (=> res!471827 e!398412)))

(assert (=> d!96571 (= res!471827 (bvsge from!2969 (size!19695 a!3591)))))

(assert (=> d!96571 (= (arrayNoDuplicates!0 a!3591 from!2969 acc!652) e!398412)))

(declare-fun b!707951 () Bool)

(assert (=> b!707951 (= e!398410 (contains!3947 acc!652 (select (arr!19310 a!3591) from!2969)))))

(declare-fun b!707952 () Bool)

(assert (=> b!707952 (= e!398411 call!34391)))

(declare-fun b!707953 () Bool)

(assert (=> b!707953 (= e!398409 e!398411)))

(assert (=> b!707953 (= c!78428 (validKeyInArray!0 (select (arr!19310 a!3591) from!2969)))))

(assert (= (and d!96571 (not res!471827)) b!707950))

(assert (= (and b!707950 res!471829) b!707951))

(assert (= (and b!707950 res!471828) b!707953))

(assert (= (and b!707953 c!78428) b!707952))

(assert (= (and b!707953 (not c!78428)) b!707949))

(assert (= (or b!707952 b!707949) bm!34388))

(assert (=> bm!34388 m!665267))

(declare-fun m!665463 () Bool)

(assert (=> bm!34388 m!665463))

(assert (=> b!707950 m!665267))

(assert (=> b!707950 m!665267))

(assert (=> b!707950 m!665289))

(assert (=> b!707951 m!665267))

(assert (=> b!707951 m!665267))

(declare-fun m!665465 () Bool)

(assert (=> b!707951 m!665465))

(assert (=> b!707953 m!665267))

(assert (=> b!707953 m!665267))

(assert (=> b!707953 m!665289))

(assert (=> b!707724 d!96571))

(declare-fun d!96587 () Bool)

(declare-fun lt!318009 () Bool)

(assert (=> d!96587 (= lt!318009 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!338 newAcc!49)))))

(declare-fun e!398413 () Bool)

(assert (=> d!96587 (= lt!318009 e!398413)))

(declare-fun res!471830 () Bool)

(assert (=> d!96587 (=> (not res!471830) (not e!398413))))

(assert (=> d!96587 (= res!471830 (is-Cons!13400 newAcc!49))))

(assert (=> d!96587 (= (contains!3947 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000) lt!318009)))

(declare-fun b!707954 () Bool)

(declare-fun e!398414 () Bool)

(assert (=> b!707954 (= e!398413 e!398414)))

(declare-fun res!471831 () Bool)

(assert (=> b!707954 (=> res!471831 e!398414)))

(assert (=> b!707954 (= res!471831 (= (h!14445 newAcc!49) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!707955 () Bool)

(assert (=> b!707955 (= e!398414 (contains!3947 (t!19697 newAcc!49) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!96587 res!471830) b!707954))

(assert (= (and b!707954 (not res!471831)) b!707955))

(assert (=> d!96587 m!665433))

(declare-fun m!665467 () Bool)

(assert (=> d!96587 m!665467))

(declare-fun m!665469 () Bool)

(assert (=> b!707955 m!665469))

(assert (=> b!707735 d!96587))

(declare-fun d!96589 () Bool)

(declare-fun res!471832 () Bool)

(declare-fun e!398415 () Bool)

(assert (=> d!96589 (=> res!471832 e!398415)))

(assert (=> d!96589 (= res!471832 (is-Nil!13401 ($colon$colon!501 acc!652 (select (arr!19310 a!3591) from!2969))))))

(assert (=> d!96589 (= (noDuplicate!1194 ($colon$colon!501 acc!652 (select (arr!19310 a!3591) from!2969))) e!398415)))

(declare-fun b!707956 () Bool)

(declare-fun e!398416 () Bool)

(assert (=> b!707956 (= e!398415 e!398416)))

(declare-fun res!471833 () Bool)

(assert (=> b!707956 (=> (not res!471833) (not e!398416))))

(assert (=> b!707956 (= res!471833 (not (contains!3947 (t!19697 ($colon$colon!501 acc!652 (select (arr!19310 a!3591) from!2969))) (h!14445 ($colon$colon!501 acc!652 (select (arr!19310 a!3591) from!2969))))))))

(declare-fun b!707957 () Bool)

(assert (=> b!707957 (= e!398416 (noDuplicate!1194 (t!19697 ($colon$colon!501 acc!652 (select (arr!19310 a!3591) from!2969)))))))

(assert (= (and d!96589 (not res!471832)) b!707956))

(assert (= (and b!707956 res!471833) b!707957))

(declare-fun m!665471 () Bool)

(assert (=> b!707956 m!665471))

(declare-fun m!665473 () Bool)

(assert (=> b!707957 m!665473))

(assert (=> b!707734 d!96589))

(declare-fun d!96591 () Bool)

(assert (=> d!96591 (= ($colon$colon!501 acc!652 (select (arr!19310 a!3591) from!2969)) (Cons!13400 (select (arr!19310 a!3591) from!2969) acc!652))))

(assert (=> b!707734 d!96591))

(declare-fun d!96593 () Bool)

(declare-fun lt!318010 () Bool)

(assert (=> d!96593 (= lt!318010 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!338 acc!652)))))

(declare-fun e!398417 () Bool)

(assert (=> d!96593 (= lt!318010 e!398417)))

(declare-fun res!471834 () Bool)

(assert (=> d!96593 (=> (not res!471834) (not e!398417))))

(assert (=> d!96593 (= res!471834 (is-Cons!13400 acc!652))))

(assert (=> d!96593 (= (contains!3947 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000) lt!318010)))

(declare-fun b!707958 () Bool)

(declare-fun e!398418 () Bool)

(assert (=> b!707958 (= e!398417 e!398418)))

(declare-fun res!471835 () Bool)

(assert (=> b!707958 (=> res!471835 e!398418)))

(assert (=> b!707958 (= res!471835 (= (h!14445 acc!652) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!707959 () Bool)

(assert (=> b!707959 (= e!398418 (contains!3947 (t!19697 acc!652) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!96593 res!471834) b!707958))

(assert (= (and b!707958 (not res!471835)) b!707959))

(assert (=> d!96593 m!665329))

(declare-fun m!665475 () Bool)

(assert (=> d!96593 m!665475))

(declare-fun m!665477 () Bool)

(assert (=> b!707959 m!665477))

(assert (=> b!707723 d!96593))

(declare-fun d!96595 () Bool)

(declare-fun lt!318011 () Bool)

(assert (=> d!96595 (= lt!318011 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!338 newAcc!49)))))

(declare-fun e!398419 () Bool)

(assert (=> d!96595 (= lt!318011 e!398419)))

(declare-fun res!471836 () Bool)

(assert (=> d!96595 (=> (not res!471836) (not e!398419))))

(assert (=> d!96595 (= res!471836 (is-Cons!13400 newAcc!49))))

(assert (=> d!96595 (= (contains!3947 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000) lt!318011)))

(declare-fun b!707960 () Bool)

(declare-fun e!398420 () Bool)

(assert (=> b!707960 (= e!398419 e!398420)))

(declare-fun res!471837 () Bool)

(assert (=> b!707960 (=> res!471837 e!398420)))

(assert (=> b!707960 (= res!471837 (= (h!14445 newAcc!49) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!707961 () Bool)

(assert (=> b!707961 (= e!398420 (contains!3947 (t!19697 newAcc!49) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!96595 res!471836) b!707960))

(assert (= (and b!707960 (not res!471837)) b!707961))

(assert (=> d!96595 m!665433))

(declare-fun m!665479 () Bool)

(assert (=> d!96595 m!665479))

(declare-fun m!665481 () Bool)

(assert (=> b!707961 m!665481))

(assert (=> b!707722 d!96595))

(declare-fun d!96597 () Bool)

(declare-fun lt!318012 () Bool)

(assert (=> d!96597 (= lt!318012 (member k!2824 (content!338 newAcc!49)))))

(declare-fun e!398421 () Bool)

(assert (=> d!96597 (= lt!318012 e!398421)))

(declare-fun res!471838 () Bool)

(assert (=> d!96597 (=> (not res!471838) (not e!398421))))

(assert (=> d!96597 (= res!471838 (is-Cons!13400 newAcc!49))))

(assert (=> d!96597 (= (contains!3947 newAcc!49 k!2824) lt!318012)))

(declare-fun b!707962 () Bool)

(declare-fun e!398422 () Bool)

(assert (=> b!707962 (= e!398421 e!398422)))

(declare-fun res!471839 () Bool)

(assert (=> b!707962 (=> res!471839 e!398422)))

(assert (=> b!707962 (= res!471839 (= (h!14445 newAcc!49) k!2824))))

(declare-fun b!707963 () Bool)

(assert (=> b!707963 (= e!398422 (contains!3947 (t!19697 newAcc!49) k!2824))))

(assert (= (and d!96597 res!471838) b!707962))

(assert (= (and b!707962 (not res!471839)) b!707963))

(assert (=> d!96597 m!665433))

(declare-fun m!665483 () Bool)

(assert (=> d!96597 m!665483))

(declare-fun m!665485 () Bool)

(assert (=> b!707963 m!665485))

(assert (=> b!707727 d!96597))

(declare-fun d!96599 () Bool)

(assert (=> d!96599 (= (validKeyInArray!0 (select (arr!19310 a!3591) from!2969)) (and (not (= (select (arr!19310 a!3591) from!2969) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!19310 a!3591) from!2969) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!707726 d!96599))

(push 1)

(assert (not b!707955))

(assert (not b!707961))

(assert (not b!707838))

(assert (not b!707835))

(assert (not b!707963))

(assert (not b!707870))

(assert (not b!707919))

(assert (not b!707959))

(assert (not d!96593))

(assert (not b!707869))

(assert (not d!96595))

(assert (not b!707836))

(assert (not b!707810))

(assert (not b!707840))

(assert (not d!96499))

(assert (not d!96587))

(assert (not b!707837))

(assert (not b!707950))

(assert (not b!707951))

(assert (not b!707839))

(assert (not d!96557))

(assert (not d!96523))

(assert (not b!707953))

(assert (not b!707957))

(assert (not bm!34388))

(assert (not b!707782))

(assert (not b!707956))

(assert (not d!96597))

(assert (not b!707808))

(assert (not bm!34385))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

