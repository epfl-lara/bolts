; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103092 () Bool)

(assert start!103092)

(declare-fun b!1237670 () Bool)

(declare-fun res!825596 () Bool)

(declare-fun e!701486 () Bool)

(assert (=> b!1237670 (=> res!825596 e!701486)))

(declare-datatypes ((List!27438 0))(
  ( (Nil!27435) (Cons!27434 (h!28643 (_ BitVec 64)) (t!40908 List!27438)) )
))
(declare-fun lt!561063 () List!27438)

(declare-fun noDuplicate!1960 (List!27438) Bool)

(assert (=> b!1237670 (= res!825596 (not (noDuplicate!1960 lt!561063)))))

(declare-fun b!1237671 () Bool)

(declare-fun res!825601 () Bool)

(declare-fun e!701488 () Bool)

(assert (=> b!1237671 (=> (not res!825601) (not e!701488))))

(declare-fun acc!846 () List!27438)

(declare-fun contains!7353 (List!27438 (_ BitVec 64)) Bool)

(assert (=> b!1237671 (= res!825601 (not (contains!7353 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1237672 () Bool)

(assert (=> b!1237672 (= e!701488 (not e!701486))))

(declare-fun res!825600 () Bool)

(assert (=> b!1237672 (=> res!825600 e!701486)))

(declare-fun from!3213 () (_ BitVec 32))

(assert (=> b!1237672 (= res!825600 (bvslt (bvadd #b00000000000000000000000000000001 from!3213) #b00000000000000000000000000000000))))

(declare-fun subseq!590 (List!27438 List!27438) Bool)

(assert (=> b!1237672 (subseq!590 acc!846 lt!561063)))

(declare-datatypes ((Unit!41022 0))(
  ( (Unit!41023) )
))
(declare-fun lt!561062 () Unit!41022)

(declare-fun subseqTail!77 (List!27438 List!27438) Unit!41022)

(assert (=> b!1237672 (= lt!561062 (subseqTail!77 lt!561063 lt!561063))))

(assert (=> b!1237672 (subseq!590 lt!561063 lt!561063)))

(declare-fun lt!561064 () Unit!41022)

(declare-fun lemmaListSubSeqRefl!0 (List!27438) Unit!41022)

(assert (=> b!1237672 (= lt!561064 (lemmaListSubSeqRefl!0 lt!561063))))

(declare-datatypes ((array!79772 0))(
  ( (array!79773 (arr!38487 (Array (_ BitVec 32) (_ BitVec 64))) (size!39024 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79772)

(assert (=> b!1237672 (= lt!561063 (Cons!27434 (select (arr!38487 a!3835) from!3213) acc!846))))

(declare-fun b!1237673 () Bool)

(declare-fun res!825595 () Bool)

(assert (=> b!1237673 (=> (not res!825595) (not e!701488))))

(assert (=> b!1237673 (= res!825595 (not (contains!7353 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1237674 () Bool)

(declare-fun res!825591 () Bool)

(assert (=> b!1237674 (=> (not res!825591) (not e!701488))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1237674 (= res!825591 (validKeyInArray!0 (select (arr!38487 a!3835) from!3213)))))

(declare-fun res!825594 () Bool)

(assert (=> start!103092 (=> (not res!825594) (not e!701488))))

(assert (=> start!103092 (= res!825594 (and (bvslt (size!39024 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!39024 a!3835))))))

(assert (=> start!103092 e!701488))

(declare-fun array_inv!29263 (array!79772) Bool)

(assert (=> start!103092 (array_inv!29263 a!3835)))

(assert (=> start!103092 true))

(declare-fun b!1237675 () Bool)

(declare-fun res!825598 () Bool)

(assert (=> b!1237675 (=> (not res!825598) (not e!701488))))

(declare-fun k!2925 () (_ BitVec 64))

(assert (=> b!1237675 (= res!825598 (contains!7353 acc!846 k!2925))))

(declare-fun b!1237676 () Bool)

(declare-fun e!701489 () Bool)

(assert (=> b!1237676 (= e!701489 (not (contains!7353 lt!561063 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1237677 () Bool)

(declare-fun res!825597 () Bool)

(assert (=> b!1237677 (=> (not res!825597) (not e!701488))))

(assert (=> b!1237677 (= res!825597 (not (= from!3213 (bvsub (size!39024 a!3835) #b00000000000000000000000000000001))))))

(declare-fun b!1237678 () Bool)

(declare-fun res!825599 () Bool)

(assert (=> b!1237678 (=> (not res!825599) (not e!701488))))

(assert (=> b!1237678 (= res!825599 (noDuplicate!1960 acc!846))))

(declare-fun b!1237679 () Bool)

(declare-fun res!825593 () Bool)

(assert (=> b!1237679 (=> (not res!825593) (not e!701488))))

(declare-fun arrayNoDuplicates!0 (array!79772 (_ BitVec 32) List!27438) Bool)

(assert (=> b!1237679 (= res!825593 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1237680 () Bool)

(assert (=> b!1237680 (= e!701486 e!701489)))

(declare-fun res!825592 () Bool)

(assert (=> b!1237680 (=> (not res!825592) (not e!701489))))

(assert (=> b!1237680 (= res!825592 (not (contains!7353 lt!561063 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!103092 res!825594) b!1237678))

(assert (= (and b!1237678 res!825599) b!1237673))

(assert (= (and b!1237673 res!825595) b!1237671))

(assert (= (and b!1237671 res!825601) b!1237679))

(assert (= (and b!1237679 res!825593) b!1237675))

(assert (= (and b!1237675 res!825598) b!1237677))

(assert (= (and b!1237677 res!825597) b!1237674))

(assert (= (and b!1237674 res!825591) b!1237672))

(assert (= (and b!1237672 (not res!825600)) b!1237670))

(assert (= (and b!1237670 (not res!825596)) b!1237680))

(assert (= (and b!1237680 res!825592) b!1237676))

(declare-fun m!1141343 () Bool)

(assert (=> b!1237672 m!1141343))

(declare-fun m!1141345 () Bool)

(assert (=> b!1237672 m!1141345))

(declare-fun m!1141347 () Bool)

(assert (=> b!1237672 m!1141347))

(declare-fun m!1141349 () Bool)

(assert (=> b!1237672 m!1141349))

(declare-fun m!1141351 () Bool)

(assert (=> b!1237672 m!1141351))

(assert (=> b!1237674 m!1141351))

(assert (=> b!1237674 m!1141351))

(declare-fun m!1141353 () Bool)

(assert (=> b!1237674 m!1141353))

(declare-fun m!1141355 () Bool)

(assert (=> b!1237676 m!1141355))

(declare-fun m!1141357 () Bool)

(assert (=> b!1237675 m!1141357))

(declare-fun m!1141359 () Bool)

(assert (=> start!103092 m!1141359))

(declare-fun m!1141361 () Bool)

(assert (=> b!1237671 m!1141361))

(declare-fun m!1141363 () Bool)

(assert (=> b!1237680 m!1141363))

(declare-fun m!1141365 () Bool)

(assert (=> b!1237673 m!1141365))

(declare-fun m!1141367 () Bool)

(assert (=> b!1237678 m!1141367))

(declare-fun m!1141369 () Bool)

(assert (=> b!1237679 m!1141369))

(declare-fun m!1141371 () Bool)

(assert (=> b!1237670 m!1141371))

(push 1)

(assert (not b!1237673))

(assert (not b!1237678))

(assert (not start!103092))

(assert (not b!1237675))

(assert (not b!1237670))

(assert (not b!1237679))

(assert (not b!1237680))

(assert (not b!1237672))

(assert (not b!1237676))

(assert (not b!1237674))

(assert (not b!1237671))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!135677 () Bool)

(declare-fun lt!561088 () Bool)

(declare-fun content!594 (List!27438) (Set (_ BitVec 64)))

(assert (=> d!135677 (= lt!561088 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!594 acc!846)))))

(declare-fun e!701549 () Bool)

(assert (=> d!135677 (= lt!561088 e!701549)))

(declare-fun res!825702 () Bool)

(assert (=> d!135677 (=> (not res!825702) (not e!701549))))

(assert (=> d!135677 (= res!825702 (is-Cons!27434 acc!846))))

(assert (=> d!135677 (= (contains!7353 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000) lt!561088)))

(declare-fun b!1237781 () Bool)

(declare-fun e!701548 () Bool)

(assert (=> b!1237781 (= e!701549 e!701548)))

(declare-fun res!825703 () Bool)

(assert (=> b!1237781 (=> res!825703 e!701548)))

(assert (=> b!1237781 (= res!825703 (= (h!28643 acc!846) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1237782 () Bool)

(assert (=> b!1237782 (= e!701548 (contains!7353 (t!40908 acc!846) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!135677 res!825702) b!1237781))

(assert (= (and b!1237781 (not res!825703)) b!1237782))

(declare-fun m!1141451 () Bool)

(assert (=> d!135677 m!1141451))

(declare-fun m!1141453 () Bool)

(assert (=> d!135677 m!1141453))

(declare-fun m!1141455 () Bool)

(assert (=> b!1237782 m!1141455))

(assert (=> b!1237671 d!135677))

(declare-fun d!135687 () Bool)

(declare-fun lt!561089 () Bool)

(assert (=> d!135687 (= lt!561089 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!594 lt!561063)))))

(declare-fun e!701551 () Bool)

(assert (=> d!135687 (= lt!561089 e!701551)))

(declare-fun res!825704 () Bool)

(assert (=> d!135687 (=> (not res!825704) (not e!701551))))

(assert (=> d!135687 (= res!825704 (is-Cons!27434 lt!561063))))

(assert (=> d!135687 (= (contains!7353 lt!561063 #b1000000000000000000000000000000000000000000000000000000000000000) lt!561089)))

(declare-fun b!1237783 () Bool)

(declare-fun e!701550 () Bool)

(assert (=> b!1237783 (= e!701551 e!701550)))

(declare-fun res!825705 () Bool)

(assert (=> b!1237783 (=> res!825705 e!701550)))

(assert (=> b!1237783 (= res!825705 (= (h!28643 lt!561063) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1237784 () Bool)

(assert (=> b!1237784 (= e!701550 (contains!7353 (t!40908 lt!561063) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!135687 res!825704) b!1237783))

(assert (= (and b!1237783 (not res!825705)) b!1237784))

(declare-fun m!1141457 () Bool)

(assert (=> d!135687 m!1141457))

(declare-fun m!1141459 () Bool)

(assert (=> d!135687 m!1141459))

(declare-fun m!1141461 () Bool)

(assert (=> b!1237784 m!1141461))

(assert (=> b!1237676 d!135687))

(declare-fun d!135689 () Bool)

(declare-fun res!825714 () Bool)

(declare-fun e!701560 () Bool)

(assert (=> d!135689 (=> res!825714 e!701560)))

(assert (=> d!135689 (= res!825714 (is-Nil!27435 lt!561063))))

(assert (=> d!135689 (= (noDuplicate!1960 lt!561063) e!701560)))

(declare-fun b!1237793 () Bool)

(declare-fun e!701561 () Bool)

(assert (=> b!1237793 (= e!701560 e!701561)))

(declare-fun res!825715 () Bool)

(assert (=> b!1237793 (=> (not res!825715) (not e!701561))))

(assert (=> b!1237793 (= res!825715 (not (contains!7353 (t!40908 lt!561063) (h!28643 lt!561063))))))

(declare-fun b!1237794 () Bool)

(assert (=> b!1237794 (= e!701561 (noDuplicate!1960 (t!40908 lt!561063)))))

(assert (= (and d!135689 (not res!825714)) b!1237793))

(assert (= (and b!1237793 res!825715) b!1237794))

(declare-fun m!1141463 () Bool)

(assert (=> b!1237793 m!1141463))

(declare-fun m!1141465 () Bool)

(assert (=> b!1237794 m!1141465))

(assert (=> b!1237670 d!135689))

(declare-fun d!135691 () Bool)

(declare-fun lt!561093 () Bool)

(assert (=> d!135691 (= lt!561093 (set.member k!2925 (content!594 acc!846)))))

(declare-fun e!701565 () Bool)

(assert (=> d!135691 (= lt!561093 e!701565)))

(declare-fun res!825718 () Bool)

(assert (=> d!135691 (=> (not res!825718) (not e!701565))))

(assert (=> d!135691 (= res!825718 (is-Cons!27434 acc!846))))

(assert (=> d!135691 (= (contains!7353 acc!846 k!2925) lt!561093)))

(declare-fun b!1237797 () Bool)

(declare-fun e!701564 () Bool)

(assert (=> b!1237797 (= e!701565 e!701564)))

(declare-fun res!825719 () Bool)

(assert (=> b!1237797 (=> res!825719 e!701564)))

(assert (=> b!1237797 (= res!825719 (= (h!28643 acc!846) k!2925))))

(declare-fun b!1237798 () Bool)

(assert (=> b!1237798 (= e!701564 (contains!7353 (t!40908 acc!846) k!2925))))

(assert (= (and d!135691 res!825718) b!1237797))

(assert (= (and b!1237797 (not res!825719)) b!1237798))

(assert (=> d!135691 m!1141451))

(declare-fun m!1141473 () Bool)

(assert (=> d!135691 m!1141473))

(declare-fun m!1141475 () Bool)

(assert (=> b!1237798 m!1141475))

(assert (=> b!1237675 d!135691))

(declare-fun d!135695 () Bool)

(declare-fun lt!561094 () Bool)

(assert (=> d!135695 (= lt!561094 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!594 lt!561063)))))

(declare-fun e!701567 () Bool)

(assert (=> d!135695 (= lt!561094 e!701567)))

(declare-fun res!825720 () Bool)

(assert (=> d!135695 (=> (not res!825720) (not e!701567))))

(assert (=> d!135695 (= res!825720 (is-Cons!27434 lt!561063))))

(assert (=> d!135695 (= (contains!7353 lt!561063 #b0000000000000000000000000000000000000000000000000000000000000000) lt!561094)))

(declare-fun b!1237799 () Bool)

(declare-fun e!701566 () Bool)

(assert (=> b!1237799 (= e!701567 e!701566)))

(declare-fun res!825721 () Bool)

(assert (=> b!1237799 (=> res!825721 e!701566)))

(assert (=> b!1237799 (= res!825721 (= (h!28643 lt!561063) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1237800 () Bool)

(assert (=> b!1237800 (= e!701566 (contains!7353 (t!40908 lt!561063) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!135695 res!825720) b!1237799))

(assert (= (and b!1237799 (not res!825721)) b!1237800))

(assert (=> d!135695 m!1141457))

(declare-fun m!1141477 () Bool)

(assert (=> d!135695 m!1141477))

(declare-fun m!1141479 () Bool)

(assert (=> b!1237800 m!1141479))

(assert (=> b!1237680 d!135695))

(declare-fun d!135697 () Bool)

(assert (=> d!135697 (= (validKeyInArray!0 (select (arr!38487 a!3835) from!3213)) (and (not (= (select (arr!38487 a!3835) from!3213) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!38487 a!3835) from!3213) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1237674 d!135697))

(declare-fun e!701610 () Bool)

(declare-fun b!1237856 () Bool)

(assert (=> b!1237856 (= e!701610 (contains!7353 acc!846 (select (arr!38487 a!3835) from!3213)))))

(declare-fun b!1237857 () Bool)

(declare-fun e!701608 () Bool)

(declare-fun call!61041 () Bool)

(assert (=> b!1237857 (= e!701608 call!61041)))

(declare-fun b!1237858 () Bool)

(assert (=> b!1237858 (= e!701608 call!61041)))

(declare-fun c!120916 () Bool)

(declare-fun bm!61038 () Bool)

(assert (=> bm!61038 (= call!61041 (arrayNoDuplicates!0 a!3835 (bvadd from!3213 #b00000000000000000000000000000001) (ite c!120916 (Cons!27434 (select (arr!38487 a!3835) from!3213) acc!846) acc!846)))))

(declare-fun b!1237859 () Bool)

(declare-fun e!701609 () Bool)

(assert (=> b!1237859 (= e!701609 e!701608)))

(assert (=> b!1237859 (= c!120916 (validKeyInArray!0 (select (arr!38487 a!3835) from!3213)))))

(declare-fun d!135699 () Bool)

(declare-fun res!825748 () Bool)

(declare-fun e!701611 () Bool)

(assert (=> d!135699 (=> res!825748 e!701611)))

(assert (=> d!135699 (= res!825748 (bvsge from!3213 (size!39024 a!3835)))))

(assert (=> d!135699 (= (arrayNoDuplicates!0 a!3835 from!3213 acc!846) e!701611)))

(declare-fun b!1237855 () Bool)

(assert (=> b!1237855 (= e!701611 e!701609)))

(declare-fun res!825750 () Bool)

(assert (=> b!1237855 (=> (not res!825750) (not e!701609))))

(assert (=> b!1237855 (= res!825750 (not e!701610))))

(declare-fun res!825749 () Bool)

(assert (=> b!1237855 (=> (not res!825749) (not e!701610))))

(assert (=> b!1237855 (= res!825749 (validKeyInArray!0 (select (arr!38487 a!3835) from!3213)))))

(assert (= (and d!135699 (not res!825748)) b!1237855))

(assert (= (and b!1237855 res!825749) b!1237856))

(assert (= (and b!1237855 res!825750) b!1237859))

(assert (= (and b!1237859 c!120916) b!1237857))

(assert (= (and b!1237859 (not c!120916)) b!1237858))

(assert (= (or b!1237857 b!1237858) bm!61038))

(assert (=> b!1237856 m!1141351))

(assert (=> b!1237856 m!1141351))

(declare-fun m!1141509 () Bool)

(assert (=> b!1237856 m!1141509))

(assert (=> bm!61038 m!1141351))

(declare-fun m!1141511 () Bool)

(assert (=> bm!61038 m!1141511))

(assert (=> b!1237859 m!1141351))

(assert (=> b!1237859 m!1141351))

(assert (=> b!1237859 m!1141353))

(assert (=> b!1237855 m!1141351))

(assert (=> b!1237855 m!1141351))

(assert (=> b!1237855 m!1141353))

(assert (=> b!1237679 d!135699))

(declare-fun d!135713 () Bool)

(assert (=> d!135713 (= (array_inv!29263 a!3835) (bvsge (size!39024 a!3835) #b00000000000000000000000000000000))))

(assert (=> start!103092 d!135713))

(declare-fun d!135715 () Bool)

(declare-fun lt!561102 () Bool)

(assert (=> d!135715 (= lt!561102 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!594 acc!846)))))

(declare-fun e!701613 () Bool)

(assert (=> d!135715 (= lt!561102 e!701613)))

(declare-fun res!825751 () Bool)

(assert (=> d!135715 (=> (not res!825751) (not e!701613))))

(assert (=> d!135715 (= res!825751 (is-Cons!27434 acc!846))))

(assert (=> d!135715 (= (contains!7353 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000) lt!561102)))

(declare-fun b!1237860 () Bool)

(declare-fun e!701612 () Bool)

(assert (=> b!1237860 (= e!701613 e!701612)))

(declare-fun res!825752 () Bool)

(assert (=> b!1237860 (=> res!825752 e!701612)))

(assert (=> b!1237860 (= res!825752 (= (h!28643 acc!846) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1237861 () Bool)

(assert (=> b!1237861 (= e!701612 (contains!7353 (t!40908 acc!846) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!135715 res!825751) b!1237860))

(assert (= (and b!1237860 (not res!825752)) b!1237861))

(assert (=> d!135715 m!1141451))

(declare-fun m!1141513 () Bool)

(assert (=> d!135715 m!1141513))

(declare-fun m!1141515 () Bool)

(assert (=> b!1237861 m!1141515))

(assert (=> b!1237673 d!135715))

(declare-fun d!135717 () Bool)

(declare-fun res!825753 () Bool)

(declare-fun e!701614 () Bool)

(assert (=> d!135717 (=> res!825753 e!701614)))

(assert (=> d!135717 (= res!825753 (is-Nil!27435 acc!846))))

(assert (=> d!135717 (= (noDuplicate!1960 acc!846) e!701614)))

(declare-fun b!1237862 () Bool)

(declare-fun e!701615 () Bool)

(assert (=> b!1237862 (= e!701614 e!701615)))

(declare-fun res!825754 () Bool)

(assert (=> b!1237862 (=> (not res!825754) (not e!701615))))

(assert (=> b!1237862 (= res!825754 (not (contains!7353 (t!40908 acc!846) (h!28643 acc!846))))))

(declare-fun b!1237863 () Bool)

(assert (=> b!1237863 (= e!701615 (noDuplicate!1960 (t!40908 acc!846)))))

(assert (= (and d!135717 (not res!825753)) b!1237862))

(assert (= (and b!1237862 res!825754) b!1237863))

(declare-fun m!1141517 () Bool)

(assert (=> b!1237862 m!1141517))

(declare-fun m!1141519 () Bool)

(assert (=> b!1237863 m!1141519))

(assert (=> b!1237678 d!135717))

(declare-fun b!1237901 () Bool)

(declare-fun e!701651 () Bool)

(assert (=> b!1237901 (= e!701651 (subseq!590 (t!40908 acc!846) (t!40908 lt!561063)))))

(declare-fun d!135719 () Bool)

(declare-fun res!825785 () Bool)

(declare-fun e!701648 () Bool)

(assert (=> d!135719 (=> res!825785 e!701648)))

(assert (=> d!135719 (= res!825785 (is-Nil!27435 acc!846))))

(assert (=> d!135719 (= (subseq!590 acc!846 lt!561063) e!701648)))

(declare-fun b!1237899 () Bool)

(declare-fun e!701650 () Bool)

(assert (=> b!1237899 (= e!701648 e!701650)))

(declare-fun res!825784 () Bool)

(assert (=> b!1237899 (=> (not res!825784) (not e!701650))))

(assert (=> b!1237899 (= res!825784 (is-Cons!27434 lt!561063))))

(declare-fun b!1237902 () Bool)

(declare-fun e!701649 () Bool)

(assert (=> b!1237902 (= e!701649 (subseq!590 acc!846 (t!40908 lt!561063)))))

(declare-fun b!1237900 () Bool)

(assert (=> b!1237900 (= e!701650 e!701649)))

(declare-fun res!825786 () Bool)

(assert (=> b!1237900 (=> res!825786 e!701649)))

(assert (=> b!1237900 (= res!825786 e!701651)))

(declare-fun res!825787 () Bool)

(assert (=> b!1237900 (=> (not res!825787) (not e!701651))))

(assert (=> b!1237900 (= res!825787 (= (h!28643 acc!846) (h!28643 lt!561063)))))

(assert (= (and d!135719 (not res!825785)) b!1237899))

(assert (= (and b!1237899 res!825784) b!1237900))

(assert (= (and b!1237900 res!825787) b!1237901))

(assert (= (and b!1237900 (not res!825786)) b!1237902))

(declare-fun m!1141529 () Bool)

(assert (=> b!1237901 m!1141529))

(declare-fun m!1141531 () Bool)

(assert (=> b!1237902 m!1141531))

(assert (=> b!1237672 d!135719))

(declare-fun b!1237954 () Bool)

(declare-fun e!701688 () Unit!41022)

(declare-fun e!701690 () Unit!41022)

(assert (=> b!1237954 (= e!701688 e!701690)))

(declare-fun c!120935 () Bool)

(assert (=> b!1237954 (= c!120935 (subseq!590 lt!561063 (t!40908 lt!561063)))))

(declare-fun b!1237955 () Bool)

(declare-fun e!701691 () Unit!41022)

(declare-fun call!61050 () Unit!41022)

(assert (=> b!1237955 (= e!701691 call!61050)))

(declare-fun d!135725 () Bool)

(declare-fun tail!164 (List!27438) List!27438)

(assert (=> d!135725 (subseq!590 (tail!164 lt!561063) lt!561063)))

(declare-fun lt!561116 () Unit!41022)

(assert (=> d!135725 (= lt!561116 e!701688)))

(declare-fun c!120936 () Bool)

(assert (=> d!135725 (= c!120936 (and (is-Cons!27434 lt!561063) (is-Cons!27434 lt!561063)))))

(declare-fun e!701689 () Bool)

(assert (=> d!135725 e!701689))

(declare-fun res!825809 () Bool)

(assert (=> d!135725 (=> (not res!825809) (not e!701689))))

(declare-fun isEmpty!1015 (List!27438) Bool)

(assert (=> d!135725 (= res!825809 (not (isEmpty!1015 lt!561063)))))

(assert (=> d!135725 (= (subseqTail!77 lt!561063 lt!561063) lt!561116)))

(declare-fun b!1237956 () Bool)

(declare-fun Unit!41032 () Unit!41022)

(assert (=> b!1237956 (= e!701691 Unit!41032)))

(declare-fun bm!61047 () Bool)

(assert (=> bm!61047 (= call!61050 (subseqTail!77 (ite c!120935 lt!561063 (t!40908 lt!561063)) (t!40908 lt!561063)))))

(declare-fun b!1237957 () Bool)

(declare-fun Unit!41033 () Unit!41022)

(assert (=> b!1237957 (= e!701688 Unit!41033)))

(declare-fun b!1237958 () Bool)

(declare-fun c!120937 () Bool)

(assert (=> b!1237958 (= c!120937 (not (isEmpty!1015 (t!40908 lt!561063))))))

(assert (=> b!1237958 (= e!701690 e!701691)))

(declare-fun b!1237959 () Bool)

(assert (=> b!1237959 (= e!701690 call!61050)))

(declare-fun b!1237960 () Bool)

(assert (=> b!1237960 (= e!701689 (subseq!590 lt!561063 lt!561063))))

(assert (= (and d!135725 res!825809) b!1237960))

(assert (= (and d!135725 c!120936) b!1237954))

(assert (= (and d!135725 (not c!120936)) b!1237957))

(assert (= (and b!1237954 c!120935) b!1237959))

(assert (= (and b!1237954 (not c!120935)) b!1237958))

(assert (= (and b!1237958 c!120937) b!1237955))

(assert (= (and b!1237958 (not c!120937)) b!1237956))

(assert (= (or b!1237959 b!1237955) bm!61047))

(declare-fun m!1141581 () Bool)

(assert (=> b!1237954 m!1141581))

(declare-fun m!1141585 () Bool)

(assert (=> bm!61047 m!1141585))

(declare-fun m!1141589 () Bool)

