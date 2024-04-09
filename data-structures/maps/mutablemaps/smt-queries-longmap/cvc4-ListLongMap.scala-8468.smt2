; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103096 () Bool)

(assert start!103096)

(declare-fun b!1237736 () Bool)

(declare-fun res!825662 () Bool)

(declare-fun e!701512 () Bool)

(assert (=> b!1237736 (=> (not res!825662) (not e!701512))))

(declare-datatypes ((array!79776 0))(
  ( (array!79777 (arr!38489 (Array (_ BitVec 32) (_ BitVec 64))) (size!39026 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79776)

(declare-fun from!3213 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1237736 (= res!825662 (validKeyInArray!0 (select (arr!38489 a!3835) from!3213)))))

(declare-fun b!1237737 () Bool)

(declare-fun res!825660 () Bool)

(assert (=> b!1237737 (=> (not res!825660) (not e!701512))))

(declare-datatypes ((List!27440 0))(
  ( (Nil!27437) (Cons!27436 (h!28645 (_ BitVec 64)) (t!40910 List!27440)) )
))
(declare-fun acc!846 () List!27440)

(declare-fun contains!7355 (List!27440 (_ BitVec 64)) Bool)

(assert (=> b!1237737 (= res!825660 (not (contains!7355 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1237738 () Bool)

(declare-fun res!825665 () Bool)

(assert (=> b!1237738 (=> (not res!825665) (not e!701512))))

(declare-fun arrayNoDuplicates!0 (array!79776 (_ BitVec 32) List!27440) Bool)

(assert (=> b!1237738 (= res!825665 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1237739 () Bool)

(declare-fun res!825658 () Bool)

(assert (=> b!1237739 (=> (not res!825658) (not e!701512))))

(declare-fun noDuplicate!1962 (List!27440) Bool)

(assert (=> b!1237739 (= res!825658 (noDuplicate!1962 acc!846))))

(declare-fun res!825666 () Bool)

(assert (=> start!103096 (=> (not res!825666) (not e!701512))))

(assert (=> start!103096 (= res!825666 (and (bvslt (size!39026 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!39026 a!3835))))))

(assert (=> start!103096 e!701512))

(declare-fun array_inv!29265 (array!79776) Bool)

(assert (=> start!103096 (array_inv!29265 a!3835)))

(assert (=> start!103096 true))

(declare-fun b!1237740 () Bool)

(declare-fun e!701511 () Bool)

(declare-fun lt!561081 () List!27440)

(assert (=> b!1237740 (= e!701511 (not (contains!7355 lt!561081 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1237741 () Bool)

(declare-fun res!825667 () Bool)

(assert (=> b!1237741 (=> (not res!825667) (not e!701512))))

(assert (=> b!1237741 (= res!825667 (not (contains!7355 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1237742 () Bool)

(declare-fun e!701510 () Bool)

(assert (=> b!1237742 (= e!701512 (not e!701510))))

(declare-fun res!825661 () Bool)

(assert (=> b!1237742 (=> res!825661 e!701510)))

(assert (=> b!1237742 (= res!825661 (bvslt (bvadd #b00000000000000000000000000000001 from!3213) #b00000000000000000000000000000000))))

(declare-fun subseq!592 (List!27440 List!27440) Bool)

(assert (=> b!1237742 (subseq!592 acc!846 lt!561081)))

(declare-datatypes ((Unit!41026 0))(
  ( (Unit!41027) )
))
(declare-fun lt!561080 () Unit!41026)

(declare-fun subseqTail!79 (List!27440 List!27440) Unit!41026)

(assert (=> b!1237742 (= lt!561080 (subseqTail!79 lt!561081 lt!561081))))

(assert (=> b!1237742 (subseq!592 lt!561081 lt!561081)))

(declare-fun lt!561082 () Unit!41026)

(declare-fun lemmaListSubSeqRefl!0 (List!27440) Unit!41026)

(assert (=> b!1237742 (= lt!561082 (lemmaListSubSeqRefl!0 lt!561081))))

(assert (=> b!1237742 (= lt!561081 (Cons!27436 (select (arr!38489 a!3835) from!3213) acc!846))))

(declare-fun b!1237743 () Bool)

(declare-fun res!825657 () Bool)

(assert (=> b!1237743 (=> res!825657 e!701510)))

(assert (=> b!1237743 (= res!825657 (not (noDuplicate!1962 lt!561081)))))

(declare-fun b!1237744 () Bool)

(declare-fun res!825659 () Bool)

(assert (=> b!1237744 (=> (not res!825659) (not e!701512))))

(declare-fun k!2925 () (_ BitVec 64))

(assert (=> b!1237744 (= res!825659 (contains!7355 acc!846 k!2925))))

(declare-fun b!1237745 () Bool)

(assert (=> b!1237745 (= e!701510 e!701511)))

(declare-fun res!825663 () Bool)

(assert (=> b!1237745 (=> (not res!825663) (not e!701511))))

(assert (=> b!1237745 (= res!825663 (not (contains!7355 lt!561081 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1237746 () Bool)

(declare-fun res!825664 () Bool)

(assert (=> b!1237746 (=> (not res!825664) (not e!701512))))

(assert (=> b!1237746 (= res!825664 (not (= from!3213 (bvsub (size!39026 a!3835) #b00000000000000000000000000000001))))))

(assert (= (and start!103096 res!825666) b!1237739))

(assert (= (and b!1237739 res!825658) b!1237741))

(assert (= (and b!1237741 res!825667) b!1237737))

(assert (= (and b!1237737 res!825660) b!1237738))

(assert (= (and b!1237738 res!825665) b!1237744))

(assert (= (and b!1237744 res!825659) b!1237746))

(assert (= (and b!1237746 res!825664) b!1237736))

(assert (= (and b!1237736 res!825662) b!1237742))

(assert (= (and b!1237742 (not res!825661)) b!1237743))

(assert (= (and b!1237743 (not res!825657)) b!1237745))

(assert (= (and b!1237745 res!825663) b!1237740))

(declare-fun m!1141403 () Bool)

(assert (=> b!1237736 m!1141403))

(assert (=> b!1237736 m!1141403))

(declare-fun m!1141405 () Bool)

(assert (=> b!1237736 m!1141405))

(declare-fun m!1141407 () Bool)

(assert (=> b!1237740 m!1141407))

(declare-fun m!1141409 () Bool)

(assert (=> b!1237738 m!1141409))

(declare-fun m!1141411 () Bool)

(assert (=> b!1237741 m!1141411))

(declare-fun m!1141413 () Bool)

(assert (=> b!1237737 m!1141413))

(declare-fun m!1141415 () Bool)

(assert (=> b!1237739 m!1141415))

(declare-fun m!1141417 () Bool)

(assert (=> start!103096 m!1141417))

(declare-fun m!1141419 () Bool)

(assert (=> b!1237743 m!1141419))

(declare-fun m!1141421 () Bool)

(assert (=> b!1237745 m!1141421))

(declare-fun m!1141423 () Bool)

(assert (=> b!1237744 m!1141423))

(declare-fun m!1141425 () Bool)

(assert (=> b!1237742 m!1141425))

(declare-fun m!1141427 () Bool)

(assert (=> b!1237742 m!1141427))

(declare-fun m!1141429 () Bool)

(assert (=> b!1237742 m!1141429))

(declare-fun m!1141431 () Bool)

(assert (=> b!1237742 m!1141431))

(assert (=> b!1237742 m!1141403))

(push 1)

(assert (not b!1237742))

(assert (not b!1237741))

(assert (not b!1237736))

(assert (not b!1237744))

(assert (not b!1237740))

(assert (not start!103096))

(assert (not b!1237745))

(assert (not b!1237737))

(assert (not b!1237738))

(assert (not b!1237739))

(assert (not b!1237743))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!135679 () Bool)

(assert (=> d!135679 (= (array_inv!29265 a!3835) (bvsge (size!39026 a!3835) #b00000000000000000000000000000000))))

(assert (=> start!103096 d!135679))

(declare-fun d!135681 () Bool)

(declare-fun res!825700 () Bool)

(declare-fun e!701546 () Bool)

(assert (=> d!135681 (=> res!825700 e!701546)))

(assert (=> d!135681 (= res!825700 (is-Nil!27437 acc!846))))

(assert (=> d!135681 (= (noDuplicate!1962 acc!846) e!701546)))

(declare-fun b!1237779 () Bool)

(declare-fun e!701547 () Bool)

(assert (=> b!1237779 (= e!701546 e!701547)))

(declare-fun res!825701 () Bool)

(assert (=> b!1237779 (=> (not res!825701) (not e!701547))))

(assert (=> b!1237779 (= res!825701 (not (contains!7355 (t!40910 acc!846) (h!28645 acc!846))))))

(declare-fun b!1237780 () Bool)

(assert (=> b!1237780 (= e!701547 (noDuplicate!1962 (t!40910 acc!846)))))

(assert (= (and d!135681 (not res!825700)) b!1237779))

(assert (= (and b!1237779 res!825701) b!1237780))

(declare-fun m!1141447 () Bool)

(assert (=> b!1237779 m!1141447))

(declare-fun m!1141449 () Bool)

(assert (=> b!1237780 m!1141449))

(assert (=> b!1237739 d!135681))

(declare-fun d!135685 () Bool)

(declare-fun lt!561092 () Bool)

(declare-fun content!595 (List!27440) (Set (_ BitVec 64)))

(assert (=> d!135685 (= lt!561092 (member k!2925 (content!595 acc!846)))))

(declare-fun e!701562 () Bool)

(assert (=> d!135685 (= lt!561092 e!701562)))

(declare-fun res!825716 () Bool)

(assert (=> d!135685 (=> (not res!825716) (not e!701562))))

(assert (=> d!135685 (= res!825716 (is-Cons!27436 acc!846))))

(assert (=> d!135685 (= (contains!7355 acc!846 k!2925) lt!561092)))

(declare-fun b!1237795 () Bool)

(declare-fun e!701563 () Bool)

(assert (=> b!1237795 (= e!701562 e!701563)))

(declare-fun res!825717 () Bool)

(assert (=> b!1237795 (=> res!825717 e!701563)))

(assert (=> b!1237795 (= res!825717 (= (h!28645 acc!846) k!2925))))

(declare-fun b!1237796 () Bool)

(assert (=> b!1237796 (= e!701563 (contains!7355 (t!40910 acc!846) k!2925))))

(assert (= (and d!135685 res!825716) b!1237795))

(assert (= (and b!1237795 (not res!825717)) b!1237796))

(declare-fun m!1141467 () Bool)

(assert (=> d!135685 m!1141467))

(declare-fun m!1141469 () Bool)

(assert (=> d!135685 m!1141469))

(declare-fun m!1141471 () Bool)

(assert (=> b!1237796 m!1141471))

(assert (=> b!1237744 d!135685))

(declare-fun d!135693 () Bool)

(declare-fun res!825741 () Bool)

(declare-fun e!701600 () Bool)

(assert (=> d!135693 (=> res!825741 e!701600)))

(assert (=> d!135693 (= res!825741 (bvsge from!3213 (size!39026 a!3835)))))

(assert (=> d!135693 (= (arrayNoDuplicates!0 a!3835 from!3213 acc!846) e!701600)))

(declare-fun c!120915 () Bool)

(declare-fun call!61040 () Bool)

(declare-fun bm!61037 () Bool)

(assert (=> bm!61037 (= call!61040 (arrayNoDuplicates!0 a!3835 (bvadd from!3213 #b00000000000000000000000000000001) (ite c!120915 (Cons!27436 (select (arr!38489 a!3835) from!3213) acc!846) acc!846)))))

(declare-fun b!1237846 () Bool)

(declare-fun e!701603 () Bool)

(assert (=> b!1237846 (= e!701603 call!61040)))

(declare-fun b!1237847 () Bool)

(declare-fun e!701602 () Bool)

(assert (=> b!1237847 (= e!701600 e!701602)))

(declare-fun res!825742 () Bool)

(assert (=> b!1237847 (=> (not res!825742) (not e!701602))))

(declare-fun e!701601 () Bool)

(assert (=> b!1237847 (= res!825742 (not e!701601))))

(declare-fun res!825743 () Bool)

(assert (=> b!1237847 (=> (not res!825743) (not e!701601))))

(assert (=> b!1237847 (= res!825743 (validKeyInArray!0 (select (arr!38489 a!3835) from!3213)))))

(declare-fun b!1237848 () Bool)

(assert (=> b!1237848 (= e!701601 (contains!7355 acc!846 (select (arr!38489 a!3835) from!3213)))))

(declare-fun b!1237849 () Bool)

(assert (=> b!1237849 (= e!701602 e!701603)))

(assert (=> b!1237849 (= c!120915 (validKeyInArray!0 (select (arr!38489 a!3835) from!3213)))))

(declare-fun b!1237850 () Bool)

(assert (=> b!1237850 (= e!701603 call!61040)))

(assert (= (and d!135693 (not res!825741)) b!1237847))

(assert (= (and b!1237847 res!825743) b!1237848))

(assert (= (and b!1237847 res!825742) b!1237849))

(assert (= (and b!1237849 c!120915) b!1237850))

(assert (= (and b!1237849 (not c!120915)) b!1237846))

(assert (= (or b!1237850 b!1237846) bm!61037))

(assert (=> bm!61037 m!1141403))

(declare-fun m!1141495 () Bool)

(assert (=> bm!61037 m!1141495))

(assert (=> b!1237847 m!1141403))

(assert (=> b!1237847 m!1141403))

(assert (=> b!1237847 m!1141405))

(assert (=> b!1237848 m!1141403))

(assert (=> b!1237848 m!1141403))

(declare-fun m!1141497 () Bool)

(assert (=> b!1237848 m!1141497))

(assert (=> b!1237849 m!1141403))

(assert (=> b!1237849 m!1141403))

(assert (=> b!1237849 m!1141405))

(assert (=> b!1237738 d!135693))

(declare-fun d!135705 () Bool)

(declare-fun res!825744 () Bool)

(declare-fun e!701604 () Bool)

(assert (=> d!135705 (=> res!825744 e!701604)))

(assert (=> d!135705 (= res!825744 (is-Nil!27437 lt!561081))))

(assert (=> d!135705 (= (noDuplicate!1962 lt!561081) e!701604)))

(declare-fun b!1237851 () Bool)

(declare-fun e!701605 () Bool)

(assert (=> b!1237851 (= e!701604 e!701605)))

(declare-fun res!825745 () Bool)

(assert (=> b!1237851 (=> (not res!825745) (not e!701605))))

(assert (=> b!1237851 (= res!825745 (not (contains!7355 (t!40910 lt!561081) (h!28645 lt!561081))))))

(declare-fun b!1237852 () Bool)

(assert (=> b!1237852 (= e!701605 (noDuplicate!1962 (t!40910 lt!561081)))))

(assert (= (and d!135705 (not res!825744)) b!1237851))

(assert (= (and b!1237851 res!825745) b!1237852))

(declare-fun m!1141501 () Bool)

(assert (=> b!1237851 m!1141501))

(declare-fun m!1141503 () Bool)

(assert (=> b!1237852 m!1141503))

(assert (=> b!1237743 d!135705))

(declare-fun d!135709 () Bool)

(declare-fun lt!561101 () Bool)

(assert (=> d!135709 (= lt!561101 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!595 acc!846)))))

(declare-fun e!701606 () Bool)

(assert (=> d!135709 (= lt!561101 e!701606)))

(declare-fun res!825746 () Bool)

(assert (=> d!135709 (=> (not res!825746) (not e!701606))))

(assert (=> d!135709 (= res!825746 (is-Cons!27436 acc!846))))

(assert (=> d!135709 (= (contains!7355 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000) lt!561101)))

(declare-fun b!1237853 () Bool)

(declare-fun e!701607 () Bool)

(assert (=> b!1237853 (= e!701606 e!701607)))

(declare-fun res!825747 () Bool)

(assert (=> b!1237853 (=> res!825747 e!701607)))

(assert (=> b!1237853 (= res!825747 (= (h!28645 acc!846) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1237854 () Bool)

(assert (=> b!1237854 (= e!701607 (contains!7355 (t!40910 acc!846) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!135709 res!825746) b!1237853))

(assert (= (and b!1237853 (not res!825747)) b!1237854))

(assert (=> d!135709 m!1141467))

(declare-fun m!1141505 () Bool)

(assert (=> d!135709 m!1141505))

(declare-fun m!1141507 () Bool)

(assert (=> b!1237854 m!1141507))

(assert (=> b!1237737 d!135709))

(declare-fun b!1237885 () Bool)

(declare-fun e!701633 () Bool)

(assert (=> b!1237885 (= e!701633 (subseq!592 acc!846 (t!40910 lt!561081)))))

(declare-fun b!1237882 () Bool)

(declare-fun e!701634 () Bool)

(declare-fun e!701632 () Bool)

(assert (=> b!1237882 (= e!701634 e!701632)))

(declare-fun res!825772 () Bool)

(assert (=> b!1237882 (=> (not res!825772) (not e!701632))))

(assert (=> b!1237882 (= res!825772 (is-Cons!27436 lt!561081))))

(declare-fun d!135711 () Bool)

(declare-fun res!825771 () Bool)

(assert (=> d!135711 (=> res!825771 e!701634)))

(assert (=> d!135711 (= res!825771 (is-Nil!27437 acc!846))))

(assert (=> d!135711 (= (subseq!592 acc!846 lt!561081) e!701634)))

(declare-fun b!1237884 () Bool)

(declare-fun e!701635 () Bool)

(assert (=> b!1237884 (= e!701635 (subseq!592 (t!40910 acc!846) (t!40910 lt!561081)))))

(declare-fun b!1237883 () Bool)

(assert (=> b!1237883 (= e!701632 e!701633)))

(declare-fun res!825769 () Bool)

(assert (=> b!1237883 (=> res!825769 e!701633)))

(assert (=> b!1237883 (= res!825769 e!701635)))

(declare-fun res!825770 () Bool)

(assert (=> b!1237883 (=> (not res!825770) (not e!701635))))

(assert (=> b!1237883 (= res!825770 (= (h!28645 acc!846) (h!28645 lt!561081)))))

(assert (= (and d!135711 (not res!825771)) b!1237882))

(assert (= (and b!1237882 res!825772) b!1237883))

(assert (= (and b!1237883 res!825770) b!1237884))

(assert (= (and b!1237883 (not res!825769)) b!1237885))

(declare-fun m!1141521 () Bool)

(assert (=> b!1237885 m!1141521))

(declare-fun m!1141523 () Bool)

(assert (=> b!1237884 m!1141523))

(assert (=> b!1237742 d!135711))

(declare-fun d!135721 () Bool)

(declare-fun tail!163 (List!27440) List!27440)

(assert (=> d!135721 (subseq!592 (tail!163 lt!561081) lt!561081)))

(declare-fun lt!561111 () Unit!41026)

(declare-fun e!701678 () Unit!41026)

(assert (=> d!135721 (= lt!561111 e!701678)))

(declare-fun c!120934 () Bool)

(assert (=> d!135721 (= c!120934 (and (is-Cons!27436 lt!561081) (is-Cons!27436 lt!561081)))))

(declare-fun e!701681 () Bool)

(assert (=> d!135721 e!701681))

(declare-fun res!825802 () Bool)

(assert (=> d!135721 (=> (not res!825802) (not e!701681))))

(declare-fun isEmpty!1014 (List!27440) Bool)

(assert (=> d!135721 (= res!825802 (not (isEmpty!1014 lt!561081)))))

(assert (=> d!135721 (= (subseqTail!79 lt!561081 lt!561081) lt!561111)))

(declare-fun b!1237941 () Bool)

(declare-fun c!120933 () Bool)

(assert (=> b!1237941 (= c!120933 (not (isEmpty!1014 (t!40910 lt!561081))))))

(declare-fun e!701680 () Unit!41026)

(declare-fun e!701679 () Unit!41026)

(assert (=> b!1237941 (= e!701680 e!701679)))

(declare-fun b!1237942 () Bool)

(declare-fun Unit!41030 () Unit!41026)

(assert (=> b!1237942 (= e!701678 Unit!41030)))

(declare-fun b!1237943 () Bool)

(declare-fun Unit!41031 () Unit!41026)

(assert (=> b!1237943 (= e!701679 Unit!41031)))

(declare-fun b!1237944 () Bool)

(assert (=> b!1237944 (= e!701678 e!701680)))

(declare-fun c!120932 () Bool)

(assert (=> b!1237944 (= c!120932 (subseq!592 lt!561081 (t!40910 lt!561081)))))

(declare-fun b!1237945 () Bool)

(assert (=> b!1237945 (= e!701681 (subseq!592 lt!561081 lt!561081))))

(declare-fun b!1237946 () Bool)

(declare-fun call!61049 () Unit!41026)

(assert (=> b!1237946 (= e!701679 call!61049)))

(declare-fun b!1237947 () Bool)

(assert (=> b!1237947 (= e!701680 call!61049)))

(declare-fun bm!61046 () Bool)

(assert (=> bm!61046 (= call!61049 (subseqTail!79 (ite c!120932 lt!561081 (t!40910 lt!561081)) (t!40910 lt!561081)))))

(assert (= (and d!135721 res!825802) b!1237945))

(assert (= (and d!135721 c!120934) b!1237944))

(assert (= (and d!135721 (not c!120934)) b!1237942))

(assert (= (and b!1237944 c!120932) b!1237947))

(assert (= (and b!1237944 (not c!120932)) b!1237941))

(assert (= (and b!1237941 c!120933) b!1237946))

(assert (= (and b!1237941 (not c!120933)) b!1237943))

(assert (= (or b!1237947 b!1237946) bm!61046))

(assert (=> b!1237945 m!1141427))

(declare-fun m!1141555 () Bool)

(assert (=> bm!61046 m!1141555))

(declare-fun m!1141557 () Bool)

(assert (=> b!1237944 m!1141557))

(declare-fun m!1141559 () Bool)

(assert (=> b!1237941 m!1141559))

(declare-fun m!1141561 () Bool)

(assert (=> d!135721 m!1141561))

(assert (=> d!135721 m!1141561))

(declare-fun m!1141563 () Bool)

(assert (=> d!135721 m!1141563))

(declare-fun m!1141565 () Bool)

(assert (=> d!135721 m!1141565))

(assert (=> b!1237742 d!135721))

(declare-fun b!1237951 () Bool)

(declare-fun e!701683 () Bool)

(assert (=> b!1237951 (= e!701683 (subseq!592 lt!561081 (t!40910 lt!561081)))))

(declare-fun b!1237948 () Bool)

(declare-fun e!701684 () Bool)

(declare-fun e!701682 () Bool)

(assert (=> b!1237948 (= e!701684 e!701682)))

(declare-fun res!825806 () Bool)

(assert (=> b!1237948 (=> (not res!825806) (not e!701682))))

(assert (=> b!1237948 (= res!825806 (is-Cons!27436 lt!561081))))

(declare-fun d!135735 () Bool)

(declare-fun res!825805 () Bool)

(assert (=> d!135735 (=> res!825805 e!701684)))

(assert (=> d!135735 (= res!825805 (is-Nil!27437 lt!561081))))

(assert (=> d!135735 (= (subseq!592 lt!561081 lt!561081) e!701684)))

(declare-fun b!1237950 () Bool)

(declare-fun e!701685 () Bool)

(assert (=> b!1237950 (= e!701685 (subseq!592 (t!40910 lt!561081) (t!40910 lt!561081)))))

(declare-fun b!1237949 () Bool)

(assert (=> b!1237949 (= e!701682 e!701683)))

(declare-fun res!825803 () Bool)

(assert (=> b!1237949 (=> res!825803 e!701683)))

(assert (=> b!1237949 (= res!825803 e!701685)))

(declare-fun res!825804 () Bool)

(assert (=> b!1237949 (=> (not res!825804) (not e!701685))))

(assert (=> b!1237949 (= res!825804 (= (h!28645 lt!561081) (h!28645 lt!561081)))))

(assert (= (and d!135735 (not res!825805)) b!1237948))

(assert (= (and b!1237948 res!825806) b!1237949))

(assert (= (and b!1237949 res!825804) b!1237950))

(assert (= (and b!1237949 (not res!825803)) b!1237951))

(assert (=> b!1237951 m!1141557))

(declare-fun m!1141567 () Bool)

(assert (=> b!1237950 m!1141567))

(assert (=> b!1237742 d!135735))

(declare-fun d!135737 () Bool)

(assert (=> d!135737 (subseq!592 lt!561081 lt!561081)))

(declare-fun lt!561114 () Unit!41026)

(declare-fun choose!36 (List!27440) Unit!41026)

(assert (=> d!135737 (= lt!561114 (choose!36 lt!561081))))

(assert (=> d!135737 (= (lemmaListSubSeqRefl!0 lt!561081) lt!561114)))

(declare-fun bs!34802 () Bool)

(assert (= bs!34802 d!135737))

(assert (=> bs!34802 m!1141427))

(declare-fun m!1141569 () Bool)

(assert (=> bs!34802 m!1141569))

(assert (=> b!1237742 d!135737))

(declare-fun d!135739 () Bool)

(assert (=> d!135739 (= (validKeyInArray!0 (select (arr!38489 a!3835) from!3213)) (and (not (= (select (arr!38489 a!3835) from!3213) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!38489 a!3835) from!3213) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1237736 d!135739))

(declare-fun d!135741 () Bool)

(declare-fun lt!561115 () Bool)

(assert (=> d!135741 (= lt!561115 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!595 acc!846)))))

(declare-fun e!701686 () Bool)

(assert (=> d!135741 (= lt!561115 e!701686)))

(declare-fun res!825807 () Bool)

(assert (=> d!135741 (=> (not res!825807) (not e!701686))))

