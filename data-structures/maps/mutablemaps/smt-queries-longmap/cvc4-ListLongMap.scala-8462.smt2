; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102948 () Bool)

(assert start!102948)

(declare-fun b!1236755 () Bool)

(declare-fun res!824851 () Bool)

(declare-fun e!700947 () Bool)

(assert (=> b!1236755 (=> (not res!824851) (not e!700947))))

(declare-datatypes ((List!27422 0))(
  ( (Nil!27419) (Cons!27418 (h!28627 (_ BitVec 64)) (t!40892 List!27422)) )
))
(declare-fun acc!846 () List!27422)

(declare-fun k!2925 () (_ BitVec 64))

(declare-fun contains!7337 (List!27422 (_ BitVec 64)) Bool)

(assert (=> b!1236755 (= res!824851 (contains!7337 acc!846 k!2925))))

(declare-fun b!1236756 () Bool)

(declare-fun res!824855 () Bool)

(assert (=> b!1236756 (=> (not res!824855) (not e!700947))))

(assert (=> b!1236756 (= res!824855 (not (contains!7337 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1236757 () Bool)

(declare-fun res!824853 () Bool)

(assert (=> b!1236757 (=> (not res!824853) (not e!700947))))

(declare-fun noDuplicate!1944 (List!27422) Bool)

(assert (=> b!1236757 (= res!824853 (noDuplicate!1944 acc!846))))

(declare-fun b!1236758 () Bool)

(declare-fun lt!560840 () List!27422)

(declare-fun subseq!574 (List!27422 List!27422) Bool)

(assert (=> b!1236758 (= e!700947 (not (subseq!574 acc!846 lt!560840)))))

(declare-datatypes ((Unit!40980 0))(
  ( (Unit!40981) )
))
(declare-fun lt!560842 () Unit!40980)

(declare-fun subseqTail!61 (List!27422 List!27422) Unit!40980)

(assert (=> b!1236758 (= lt!560842 (subseqTail!61 lt!560840 lt!560840))))

(assert (=> b!1236758 (subseq!574 lt!560840 lt!560840)))

(declare-fun lt!560841 () Unit!40980)

(declare-fun lemmaListSubSeqRefl!0 (List!27422) Unit!40980)

(assert (=> b!1236758 (= lt!560841 (lemmaListSubSeqRefl!0 lt!560840))))

(declare-datatypes ((array!79734 0))(
  ( (array!79735 (arr!38471 (Array (_ BitVec 32) (_ BitVec 64))) (size!39008 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79734)

(declare-fun from!3213 () (_ BitVec 32))

(assert (=> b!1236758 (= lt!560840 (Cons!27418 (select (arr!38471 a!3835) from!3213) acc!846))))

(declare-fun b!1236759 () Bool)

(declare-fun res!824848 () Bool)

(assert (=> b!1236759 (=> (not res!824848) (not e!700947))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1236759 (= res!824848 (validKeyInArray!0 (select (arr!38471 a!3835) from!3213)))))

(declare-fun res!824850 () Bool)

(assert (=> start!102948 (=> (not res!824850) (not e!700947))))

(assert (=> start!102948 (= res!824850 (and (bvslt (size!39008 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!39008 a!3835))))))

(assert (=> start!102948 e!700947))

(declare-fun array_inv!29247 (array!79734) Bool)

(assert (=> start!102948 (array_inv!29247 a!3835)))

(assert (=> start!102948 true))

(declare-fun b!1236760 () Bool)

(declare-fun res!824852 () Bool)

(assert (=> b!1236760 (=> (not res!824852) (not e!700947))))

(declare-fun arrayNoDuplicates!0 (array!79734 (_ BitVec 32) List!27422) Bool)

(assert (=> b!1236760 (= res!824852 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1236761 () Bool)

(declare-fun res!824849 () Bool)

(assert (=> b!1236761 (=> (not res!824849) (not e!700947))))

(assert (=> b!1236761 (= res!824849 (not (= from!3213 (bvsub (size!39008 a!3835) #b00000000000000000000000000000001))))))

(declare-fun b!1236762 () Bool)

(declare-fun res!824854 () Bool)

(assert (=> b!1236762 (=> (not res!824854) (not e!700947))))

(assert (=> b!1236762 (= res!824854 (not (contains!7337 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!102948 res!824850) b!1236757))

(assert (= (and b!1236757 res!824853) b!1236762))

(assert (= (and b!1236762 res!824854) b!1236756))

(assert (= (and b!1236756 res!824855) b!1236760))

(assert (= (and b!1236760 res!824852) b!1236755))

(assert (= (and b!1236755 res!824851) b!1236761))

(assert (= (and b!1236761 res!824849) b!1236759))

(assert (= (and b!1236759 res!824848) b!1236758))

(declare-fun m!1140557 () Bool)

(assert (=> b!1236756 m!1140557))

(declare-fun m!1140559 () Bool)

(assert (=> b!1236762 m!1140559))

(declare-fun m!1140561 () Bool)

(assert (=> b!1236755 m!1140561))

(declare-fun m!1140563 () Bool)

(assert (=> b!1236759 m!1140563))

(assert (=> b!1236759 m!1140563))

(declare-fun m!1140565 () Bool)

(assert (=> b!1236759 m!1140565))

(declare-fun m!1140567 () Bool)

(assert (=> b!1236758 m!1140567))

(assert (=> b!1236758 m!1140563))

(declare-fun m!1140569 () Bool)

(assert (=> b!1236758 m!1140569))

(declare-fun m!1140571 () Bool)

(assert (=> b!1236758 m!1140571))

(declare-fun m!1140573 () Bool)

(assert (=> b!1236758 m!1140573))

(declare-fun m!1140575 () Bool)

(assert (=> b!1236760 m!1140575))

(declare-fun m!1140577 () Bool)

(assert (=> b!1236757 m!1140577))

(declare-fun m!1140579 () Bool)

(assert (=> start!102948 m!1140579))

(push 1)

(assert (not b!1236755))

(assert (not b!1236757))

(assert (not b!1236759))

(assert (not b!1236760))

(assert (not b!1236758))

(assert (not start!102948))

(assert (not b!1236762))

(assert (not b!1236756))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!135457 () Bool)

(assert (=> d!135457 (= (validKeyInArray!0 (select (arr!38471 a!3835) from!3213)) (and (not (= (select (arr!38471 a!3835) from!3213) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!38471 a!3835) from!3213) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1236759 d!135457))

(declare-fun d!135461 () Bool)

(declare-fun lt!560851 () Bool)

(declare-fun content!589 (List!27422) (Set (_ BitVec 64)))

(assert (=> d!135461 (= lt!560851 (member k!2925 (content!589 acc!846)))))

(declare-fun e!700993 () Bool)

(assert (=> d!135461 (= lt!560851 e!700993)))

(declare-fun res!824895 () Bool)

(assert (=> d!135461 (=> (not res!824895) (not e!700993))))

(assert (=> d!135461 (= res!824895 (is-Cons!27418 acc!846))))

(assert (=> d!135461 (= (contains!7337 acc!846 k!2925) lt!560851)))

(declare-fun b!1236813 () Bool)

(declare-fun e!700994 () Bool)

(assert (=> b!1236813 (= e!700993 e!700994)))

(declare-fun res!824894 () Bool)

(assert (=> b!1236813 (=> res!824894 e!700994)))

(assert (=> b!1236813 (= res!824894 (= (h!28627 acc!846) k!2925))))

(declare-fun b!1236814 () Bool)

(assert (=> b!1236814 (= e!700994 (contains!7337 (t!40892 acc!846) k!2925))))

(assert (= (and d!135461 res!824895) b!1236813))

(assert (= (and b!1236813 (not res!824894)) b!1236814))

(declare-fun m!1140599 () Bool)

(assert (=> d!135461 m!1140599))

(declare-fun m!1140601 () Bool)

(assert (=> d!135461 m!1140601))

(declare-fun m!1140603 () Bool)

(assert (=> b!1236814 m!1140603))

(assert (=> b!1236755 d!135461))

(declare-fun b!1236861 () Bool)

(declare-fun e!701027 () Bool)

(assert (=> b!1236861 (= e!701027 (contains!7337 acc!846 (select (arr!38471 a!3835) from!3213)))))

(declare-fun bm!60998 () Bool)

(declare-fun call!61001 () Bool)

(declare-fun c!120836 () Bool)

(assert (=> bm!60998 (= call!61001 (arrayNoDuplicates!0 a!3835 (bvadd from!3213 #b00000000000000000000000000000001) (ite c!120836 (Cons!27418 (select (arr!38471 a!3835) from!3213) acc!846) acc!846)))))

(declare-fun b!1236863 () Bool)

(declare-fun e!701029 () Bool)

(declare-fun e!701028 () Bool)

(assert (=> b!1236863 (= e!701029 e!701028)))

(declare-fun res!824914 () Bool)

(assert (=> b!1236863 (=> (not res!824914) (not e!701028))))

(assert (=> b!1236863 (= res!824914 (not e!701027))))

(declare-fun res!824916 () Bool)

(assert (=> b!1236863 (=> (not res!824916) (not e!701027))))

(assert (=> b!1236863 (= res!824916 (validKeyInArray!0 (select (arr!38471 a!3835) from!3213)))))

(declare-fun b!1236864 () Bool)

(declare-fun e!701030 () Bool)

(assert (=> b!1236864 (= e!701030 call!61001)))

(declare-fun b!1236865 () Bool)

(assert (=> b!1236865 (= e!701028 e!701030)))

(assert (=> b!1236865 (= c!120836 (validKeyInArray!0 (select (arr!38471 a!3835) from!3213)))))

(declare-fun b!1236862 () Bool)

(assert (=> b!1236862 (= e!701030 call!61001)))

(declare-fun d!135463 () Bool)

(declare-fun res!824915 () Bool)

(assert (=> d!135463 (=> res!824915 e!701029)))

(assert (=> d!135463 (= res!824915 (bvsge from!3213 (size!39008 a!3835)))))

(assert (=> d!135463 (= (arrayNoDuplicates!0 a!3835 from!3213 acc!846) e!701029)))

(assert (= (and d!135463 (not res!824915)) b!1236863))

(assert (= (and b!1236863 res!824916) b!1236861))

(assert (= (and b!1236863 res!824914) b!1236865))

(assert (= (and b!1236865 c!120836) b!1236864))

(assert (= (and b!1236865 (not c!120836)) b!1236862))

(assert (= (or b!1236864 b!1236862) bm!60998))

(assert (=> b!1236861 m!1140563))

(assert (=> b!1236861 m!1140563))

(declare-fun m!1140635 () Bool)

(assert (=> b!1236861 m!1140635))

(assert (=> bm!60998 m!1140563))

(declare-fun m!1140637 () Bool)

(assert (=> bm!60998 m!1140637))

(assert (=> b!1236863 m!1140563))

(assert (=> b!1236863 m!1140563))

(assert (=> b!1236863 m!1140565))

(assert (=> b!1236865 m!1140563))

(assert (=> b!1236865 m!1140563))

(assert (=> b!1236865 m!1140565))

(assert (=> b!1236760 d!135463))

(declare-fun d!135477 () Bool)

(declare-fun res!824927 () Bool)

(declare-fun e!701043 () Bool)

(assert (=> d!135477 (=> res!824927 e!701043)))

(assert (=> d!135477 (= res!824927 (is-Nil!27419 acc!846))))

(assert (=> d!135477 (= (noDuplicate!1944 acc!846) e!701043)))

(declare-fun b!1236880 () Bool)

(declare-fun e!701044 () Bool)

(assert (=> b!1236880 (= e!701043 e!701044)))

(declare-fun res!824928 () Bool)

(assert (=> b!1236880 (=> (not res!824928) (not e!701044))))

(assert (=> b!1236880 (= res!824928 (not (contains!7337 (t!40892 acc!846) (h!28627 acc!846))))))

(declare-fun b!1236881 () Bool)

(assert (=> b!1236881 (= e!701044 (noDuplicate!1944 (t!40892 acc!846)))))

(assert (= (and d!135477 (not res!824927)) b!1236880))

(assert (= (and b!1236880 res!824928) b!1236881))

(declare-fun m!1140641 () Bool)

(assert (=> b!1236880 m!1140641))

(declare-fun m!1140643 () Bool)

(assert (=> b!1236881 m!1140643))

(assert (=> b!1236757 d!135477))

(declare-fun d!135481 () Bool)

(declare-fun lt!560864 () Bool)

(assert (=> d!135481 (= lt!560864 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!589 acc!846)))))

(declare-fun e!701049 () Bool)

(assert (=> d!135481 (= lt!560864 e!701049)))

(declare-fun res!824934 () Bool)

(assert (=> d!135481 (=> (not res!824934) (not e!701049))))

(assert (=> d!135481 (= res!824934 (is-Cons!27418 acc!846))))

(assert (=> d!135481 (= (contains!7337 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000) lt!560864)))

(declare-fun b!1236886 () Bool)

(declare-fun e!701050 () Bool)

(assert (=> b!1236886 (= e!701049 e!701050)))

(declare-fun res!824933 () Bool)

(assert (=> b!1236886 (=> res!824933 e!701050)))

(assert (=> b!1236886 (= res!824933 (= (h!28627 acc!846) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1236887 () Bool)

(assert (=> b!1236887 (= e!701050 (contains!7337 (t!40892 acc!846) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!135481 res!824934) b!1236886))

(assert (= (and b!1236886 (not res!824933)) b!1236887))

(assert (=> d!135481 m!1140599))

(declare-fun m!1140645 () Bool)

(assert (=> d!135481 m!1140645))

(declare-fun m!1140647 () Bool)

(assert (=> b!1236887 m!1140647))

(assert (=> b!1236762 d!135481))

(declare-fun d!135483 () Bool)

(declare-fun lt!560865 () Bool)

(assert (=> d!135483 (= lt!560865 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!589 acc!846)))))

(declare-fun e!701051 () Bool)

(assert (=> d!135483 (= lt!560865 e!701051)))

(declare-fun res!824936 () Bool)

(assert (=> d!135483 (=> (not res!824936) (not e!701051))))

(assert (=> d!135483 (= res!824936 (is-Cons!27418 acc!846))))

(assert (=> d!135483 (= (contains!7337 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000) lt!560865)))

(declare-fun b!1236888 () Bool)

(declare-fun e!701052 () Bool)

(assert (=> b!1236888 (= e!701051 e!701052)))

(declare-fun res!824935 () Bool)

(assert (=> b!1236888 (=> res!824935 e!701052)))

(assert (=> b!1236888 (= res!824935 (= (h!28627 acc!846) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1236889 () Bool)

(assert (=> b!1236889 (= e!701052 (contains!7337 (t!40892 acc!846) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!135483 res!824936) b!1236888))

(assert (= (and b!1236888 (not res!824935)) b!1236889))

(assert (=> d!135483 m!1140599))

(declare-fun m!1140649 () Bool)

(assert (=> d!135483 m!1140649))

(declare-fun m!1140651 () Bool)

(assert (=> b!1236889 m!1140651))

(assert (=> b!1236756 d!135483))

(declare-fun d!135485 () Bool)

(declare-fun res!824962 () Bool)

(declare-fun e!701080 () Bool)

(assert (=> d!135485 (=> res!824962 e!701080)))

(assert (=> d!135485 (= res!824962 (is-Nil!27419 acc!846))))

(assert (=> d!135485 (= (subseq!574 acc!846 lt!560840) e!701080)))

(declare-fun b!1236917 () Bool)

(declare-fun e!701078 () Bool)

(declare-fun e!701079 () Bool)

(assert (=> b!1236917 (= e!701078 e!701079)))

(declare-fun res!824960 () Bool)

(assert (=> b!1236917 (=> res!824960 e!701079)))

(declare-fun e!701077 () Bool)

(assert (=> b!1236917 (= res!824960 e!701077)))

(declare-fun res!824963 () Bool)

(assert (=> b!1236917 (=> (not res!824963) (not e!701077))))

(assert (=> b!1236917 (= res!824963 (= (h!28627 acc!846) (h!28627 lt!560840)))))

(declare-fun b!1236915 () Bool)

(assert (=> b!1236915 (= e!701080 e!701078)))

(declare-fun res!824961 () Bool)

(assert (=> b!1236915 (=> (not res!824961) (not e!701078))))

(assert (=> b!1236915 (= res!824961 (is-Cons!27418 lt!560840))))

(declare-fun b!1236920 () Bool)

(assert (=> b!1236920 (= e!701079 (subseq!574 acc!846 (t!40892 lt!560840)))))

(declare-fun b!1236919 () Bool)

(assert (=> b!1236919 (= e!701077 (subseq!574 (t!40892 acc!846) (t!40892 lt!560840)))))

(assert (= (and d!135485 (not res!824962)) b!1236915))

(assert (= (and b!1236915 res!824961) b!1236917))

(assert (= (and b!1236917 res!824963) b!1236919))

(assert (= (and b!1236917 (not res!824960)) b!1236920))

(declare-fun m!1140667 () Bool)

(assert (=> b!1236920 m!1140667))

(declare-fun m!1140669 () Bool)

(assert (=> b!1236919 m!1140669))

(assert (=> b!1236758 d!135485))

(declare-fun b!1236956 () Bool)

(declare-fun e!701109 () Unit!40980)

(declare-fun Unit!40986 () Unit!40980)

(assert (=> b!1236956 (= e!701109 Unit!40986)))

(declare-fun d!135495 () Bool)

(declare-fun tail!160 (List!27422) List!27422)

(assert (=> d!135495 (subseq!574 (tail!160 lt!560840) lt!560840)))

(declare-fun lt!560872 () Unit!40980)

(assert (=> d!135495 (= lt!560872 e!701109)))

(declare-fun c!120849 () Bool)

(assert (=> d!135495 (= c!120849 (and (is-Cons!27418 lt!560840) (is-Cons!27418 lt!560840)))))

(declare-fun e!701112 () Bool)

(assert (=> d!135495 e!701112))

(declare-fun res!824983 () Bool)

(assert (=> d!135495 (=> (not res!824983) (not e!701112))))

(declare-fun isEmpty!1011 (List!27422) Bool)

(assert (=> d!135495 (= res!824983 (not (isEmpty!1011 lt!560840)))))

(assert (=> d!135495 (= (subseqTail!61 lt!560840 lt!560840) lt!560872)))

(declare-fun b!1236957 () Bool)

(declare-fun e!701110 () Unit!40980)

(declare-fun call!61010 () Unit!40980)

(assert (=> b!1236957 (= e!701110 call!61010)))

(declare-fun b!1236958 () Bool)

(assert (=> b!1236958 (= e!701109 e!701110)))

(declare-fun c!120851 () Bool)

(assert (=> b!1236958 (= c!120851 (subseq!574 lt!560840 (t!40892 lt!560840)))))

(declare-fun bm!61007 () Bool)

(assert (=> bm!61007 (= call!61010 (subseqTail!61 (ite c!120851 lt!560840 (t!40892 lt!560840)) (t!40892 lt!560840)))))

(declare-fun b!1236959 () Bool)

(declare-fun e!701111 () Unit!40980)

(declare-fun Unit!40987 () Unit!40980)

(assert (=> b!1236959 (= e!701111 Unit!40987)))

(declare-fun b!1236960 () Bool)

(assert (=> b!1236960 (= e!701112 (subseq!574 lt!560840 lt!560840))))

(declare-fun b!1236961 () Bool)

(declare-fun c!120850 () Bool)

(assert (=> b!1236961 (= c!120850 (not (isEmpty!1011 (t!40892 lt!560840))))))

(assert (=> b!1236961 (= e!701110 e!701111)))

(declare-fun b!1236962 () Bool)

(assert (=> b!1236962 (= e!701111 call!61010)))

(assert (= (and d!135495 res!824983) b!1236960))

(assert (= (and d!135495 c!120849) b!1236958))

(assert (= (and d!135495 (not c!120849)) b!1236956))

(assert (= (and b!1236958 c!120851) b!1236957))

(assert (= (and b!1236958 (not c!120851)) b!1236961))

(assert (= (and b!1236961 c!120850) b!1236962))

(assert (= (and b!1236961 (not c!120850)) b!1236959))

(assert (= (or b!1236957 b!1236962) bm!61007))

(declare-fun m!1140691 () Bool)

(assert (=> d!135495 m!1140691))

(assert (=> d!135495 m!1140691))

(declare-fun m!1140693 () Bool)

(assert (=> d!135495 m!1140693))

(declare-fun m!1140695 () Bool)

(assert (=> d!135495 m!1140695))

(declare-fun m!1140697 () Bool)

(assert (=> b!1236958 m!1140697))

(declare-fun m!1140699 () Bool)

(assert (=> b!1236961 m!1140699))

(assert (=> b!1236960 m!1140567))

(declare-fun m!1140701 () Bool)

(assert (=> bm!61007 m!1140701))

(assert (=> b!1236758 d!135495))

(declare-fun d!135503 () Bool)

(declare-fun res!824986 () Bool)

(declare-fun e!701116 () Bool)

(assert (=> d!135503 (=> res!824986 e!701116)))

(assert (=> d!135503 (= res!824986 (is-Nil!27419 lt!560840))))

(assert (=> d!135503 (= (subseq!574 lt!560840 lt!560840) e!701116)))

(declare-fun b!1236964 () Bool)

(declare-fun e!701114 () Bool)

(declare-fun e!701115 () Bool)

(assert (=> b!1236964 (= e!701114 e!701115)))

(declare-fun res!824984 () Bool)

(assert (=> b!1236964 (=> res!824984 e!701115)))

(declare-fun e!701113 () Bool)

(assert (=> b!1236964 (= res!824984 e!701113)))

(declare-fun res!824987 () Bool)

(assert (=> b!1236964 (=> (not res!824987) (not e!701113))))

(assert (=> b!1236964 (= res!824987 (= (h!28627 lt!560840) (h!28627 lt!560840)))))

(declare-fun b!1236963 () Bool)

(assert (=> b!1236963 (= e!701116 e!701114)))

(declare-fun res!824985 () Bool)

(assert (=> b!1236963 (=> (not res!824985) (not e!701114))))

(assert (=> b!1236963 (= res!824985 (is-Cons!27418 lt!560840))))

(declare-fun b!1236966 () Bool)

(assert (=> b!1236966 (= e!701115 (subseq!574 lt!560840 (t!40892 lt!560840)))))

(declare-fun b!1236965 () Bool)

(assert (=> b!1236965 (= e!701113 (subseq!574 (t!40892 lt!560840) (t!40892 lt!560840)))))

(assert (= (and d!135503 (not res!824986)) b!1236963))

(assert (= (and b!1236963 res!824985) b!1236964))

(assert (= (and b!1236964 res!824987) b!1236965))

(assert (= (and b!1236964 (not res!824984)) b!1236966))

(assert (=> b!1236966 m!1140697))

(declare-fun m!1140703 () Bool)

(assert (=> b!1236965 m!1140703))

(assert (=> b!1236758 d!135503))

(declare-fun d!135505 () Bool)

(assert (=> d!135505 (subseq!574 lt!560840 lt!560840)))

(declare-fun lt!560875 () Unit!40980)

(declare-fun choose!36 (List!27422) Unit!40980)

(assert (=> d!135505 (= lt!560875 (choose!36 lt!560840))))

(assert (=> d!135505 (= (lemmaListSubSeqRefl!0 lt!560840) lt!560875)))

(declare-fun bs!34777 () Bool)

(assert (= bs!34777 d!135505))

(assert (=> bs!34777 m!1140567))

(declare-fun m!1140705 () Bool)

(assert (=> bs!34777 m!1140705))

(assert (=> b!1236758 d!135505))

(declare-fun d!135507 () Bool)

(assert (=> d!135507 (= (array_inv!29247 a!3835) (bvsge (size!39008 a!3835) #b00000000000000000000000000000000))))

(assert (=> start!102948 d!135507))

(push 1)

(assert (not b!1236966))

(assert (not b!1236960))

(assert (not b!1236920))

(assert (not b!1236887))

(assert (not d!135483))

(assert (not b!1236814))

(assert (not b!1236861))

(assert (not b!1236958))

(assert (not b!1236889))

(assert (not b!1236919))

(assert (not b!1236961))

(assert (not b!1236965))

(assert (not b!1236880))

(assert (not b!1236881))

(assert (not d!135495))

(assert (not bm!60998))

(assert (not b!1236865))

(assert (not b!1236863))

(assert (not d!135505))

(assert (not d!135461))

(assert (not d!135481))

(assert (not bm!61007))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

