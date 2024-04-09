; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103252 () Bool)

(assert start!103252)

(declare-datatypes ((array!79836 0))(
  ( (array!79837 (arr!38516 (Array (_ BitVec 32) (_ BitVec 64))) (size!39053 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79836)

(declare-datatypes ((List!27467 0))(
  ( (Nil!27464) (Cons!27463 (h!28672 (_ BitVec 64)) (t!40937 List!27467)) )
))
(declare-fun acc!846 () List!27467)

(declare-fun from!3213 () (_ BitVec 32))

(declare-fun b!1239006 () Bool)

(declare-fun e!702158 () Bool)

(declare-fun arrayNoDuplicates!0 (array!79836 (_ BitVec 32) List!27467) Bool)

(assert (=> b!1239006 (= e!702158 (not (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) acc!846)))))

(declare-fun b!1239007 () Bool)

(declare-datatypes ((Unit!41109 0))(
  ( (Unit!41110) )
))
(declare-fun e!702156 () Unit!41109)

(declare-fun Unit!41111 () Unit!41109)

(assert (=> b!1239007 (= e!702156 Unit!41111)))

(declare-fun res!826674 () Bool)

(declare-fun e!702157 () Bool)

(assert (=> start!103252 (=> (not res!826674) (not e!702157))))

(assert (=> start!103252 (= res!826674 (and (bvslt (size!39053 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!39053 a!3835))))))

(assert (=> start!103252 e!702157))

(declare-fun array_inv!29292 (array!79836) Bool)

(assert (=> start!103252 (array_inv!29292 a!3835)))

(assert (=> start!103252 true))

(declare-fun b!1239008 () Bool)

(declare-fun lt!561546 () Unit!41109)

(assert (=> b!1239008 (= e!702156 lt!561546)))

(declare-fun lt!561545 () List!27467)

(assert (=> b!1239008 (= lt!561545 (Cons!27463 (select (arr!38516 a!3835) from!3213) acc!846))))

(declare-fun lt!561547 () Unit!41109)

(declare-fun lemmaListSubSeqRefl!0 (List!27467) Unit!41109)

(assert (=> b!1239008 (= lt!561547 (lemmaListSubSeqRefl!0 lt!561545))))

(declare-fun subseq!619 (List!27467 List!27467) Bool)

(assert (=> b!1239008 (subseq!619 lt!561545 lt!561545)))

(declare-fun lt!561543 () Unit!41109)

(declare-fun subseqTail!106 (List!27467 List!27467) Unit!41109)

(assert (=> b!1239008 (= lt!561543 (subseqTail!106 lt!561545 lt!561545))))

(assert (=> b!1239008 (subseq!619 acc!846 lt!561545)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79836 List!27467 List!27467 (_ BitVec 32)) Unit!41109)

(assert (=> b!1239008 (= lt!561546 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3835 lt!561545 acc!846 (bvadd #b00000000000000000000000000000001 from!3213)))))

(assert (=> b!1239008 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) acc!846)))

(declare-fun b!1239009 () Bool)

(declare-fun res!826675 () Bool)

(assert (=> b!1239009 (=> (not res!826675) (not e!702157))))

(assert (=> b!1239009 (= res!826675 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1239010 () Bool)

(declare-fun res!826677 () Bool)

(assert (=> b!1239010 (=> (not res!826677) (not e!702157))))

(assert (=> b!1239010 (= res!826677 (not (= from!3213 (bvsub (size!39053 a!3835) #b00000000000000000000000000000001))))))

(declare-fun b!1239011 () Bool)

(declare-fun res!826678 () Bool)

(assert (=> b!1239011 (=> (not res!826678) (not e!702157))))

(declare-fun contains!7382 (List!27467 (_ BitVec 64)) Bool)

(assert (=> b!1239011 (= res!826678 (not (contains!7382 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1239012 () Bool)

(declare-fun res!826671 () Bool)

(assert (=> b!1239012 (=> (not res!826671) (not e!702157))))

(assert (=> b!1239012 (= res!826671 (not (contains!7382 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1239013 () Bool)

(assert (=> b!1239013 (= e!702157 e!702158)))

(declare-fun res!826672 () Bool)

(assert (=> b!1239013 (=> (not res!826672) (not e!702158))))

(assert (=> b!1239013 (= res!826672 (and (bvsge (bvadd #b00000000000000000000000000000001 from!3213) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3213) (size!39053 a!3835))))))

(declare-fun lt!561544 () Unit!41109)

(assert (=> b!1239013 (= lt!561544 e!702156)))

(declare-fun c!121030 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1239013 (= c!121030 (validKeyInArray!0 (select (arr!38516 a!3835) from!3213)))))

(declare-fun b!1239014 () Bool)

(declare-fun res!826676 () Bool)

(assert (=> b!1239014 (=> (not res!826676) (not e!702157))))

(declare-fun noDuplicate!1989 (List!27467) Bool)

(assert (=> b!1239014 (= res!826676 (noDuplicate!1989 acc!846))))

(declare-fun b!1239015 () Bool)

(declare-fun res!826673 () Bool)

(assert (=> b!1239015 (=> (not res!826673) (not e!702157))))

(declare-fun k!2925 () (_ BitVec 64))

(assert (=> b!1239015 (= res!826673 (contains!7382 acc!846 k!2925))))

(assert (= (and start!103252 res!826674) b!1239014))

(assert (= (and b!1239014 res!826676) b!1239012))

(assert (= (and b!1239012 res!826671) b!1239011))

(assert (= (and b!1239011 res!826678) b!1239009))

(assert (= (and b!1239009 res!826675) b!1239015))

(assert (= (and b!1239015 res!826673) b!1239010))

(assert (= (and b!1239010 res!826677) b!1239013))

(assert (= (and b!1239013 c!121030) b!1239008))

(assert (= (and b!1239013 (not c!121030)) b!1239007))

(assert (= (and b!1239013 res!826672) b!1239006))

(declare-fun m!1142557 () Bool)

(assert (=> b!1239009 m!1142557))

(declare-fun m!1142559 () Bool)

(assert (=> b!1239013 m!1142559))

(assert (=> b!1239013 m!1142559))

(declare-fun m!1142561 () Bool)

(assert (=> b!1239013 m!1142561))

(declare-fun m!1142563 () Bool)

(assert (=> b!1239012 m!1142563))

(declare-fun m!1142565 () Bool)

(assert (=> b!1239015 m!1142565))

(declare-fun m!1142567 () Bool)

(assert (=> b!1239011 m!1142567))

(declare-fun m!1142569 () Bool)

(assert (=> b!1239014 m!1142569))

(declare-fun m!1142571 () Bool)

(assert (=> b!1239008 m!1142571))

(declare-fun m!1142573 () Bool)

(assert (=> b!1239008 m!1142573))

(declare-fun m!1142575 () Bool)

(assert (=> b!1239008 m!1142575))

(assert (=> b!1239008 m!1142559))

(declare-fun m!1142577 () Bool)

(assert (=> b!1239008 m!1142577))

(declare-fun m!1142579 () Bool)

(assert (=> b!1239008 m!1142579))

(declare-fun m!1142581 () Bool)

(assert (=> b!1239008 m!1142581))

(assert (=> b!1239006 m!1142579))

(declare-fun m!1142583 () Bool)

(assert (=> start!103252 m!1142583))

(push 1)

(assert (not b!1239008))

(assert (not b!1239009))

(assert (not b!1239012))

(assert (not b!1239013))

(assert (not b!1239011))

(assert (not b!1239014))

(assert (not start!103252))

(assert (not b!1239015))

(assert (not b!1239006))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1239069 () Bool)

(declare-fun e!702204 () Bool)

(declare-fun call!61081 () Bool)

(assert (=> b!1239069 (= e!702204 call!61081)))

(declare-fun c!121040 () Bool)

(declare-fun bm!61078 () Bool)

(assert (=> bm!61078 (= call!61081 (arrayNoDuplicates!0 a!3835 (bvadd from!3213 #b00000000000000000000000000000001) (ite c!121040 (Cons!27463 (select (arr!38516 a!3835) from!3213) acc!846) acc!846)))))

(declare-fun d!135879 () Bool)

(declare-fun res!826715 () Bool)

(declare-fun e!702206 () Bool)

(assert (=> d!135879 (=> res!826715 e!702206)))

(assert (=> d!135879 (= res!826715 (bvsge from!3213 (size!39053 a!3835)))))

(assert (=> d!135879 (= (arrayNoDuplicates!0 a!3835 from!3213 acc!846) e!702206)))

(declare-fun b!1239070 () Bool)

(declare-fun e!702203 () Bool)

(assert (=> b!1239070 (= e!702203 e!702204)))

(assert (=> b!1239070 (= c!121040 (validKeyInArray!0 (select (arr!38516 a!3835) from!3213)))))

(declare-fun e!702205 () Bool)

(declare-fun b!1239071 () Bool)

(assert (=> b!1239071 (= e!702205 (contains!7382 acc!846 (select (arr!38516 a!3835) from!3213)))))

(declare-fun b!1239072 () Bool)

(assert (=> b!1239072 (= e!702206 e!702203)))

(declare-fun res!826716 () Bool)

(assert (=> b!1239072 (=> (not res!826716) (not e!702203))))

(assert (=> b!1239072 (= res!826716 (not e!702205))))

(declare-fun res!826714 () Bool)

(assert (=> b!1239072 (=> (not res!826714) (not e!702205))))

(assert (=> b!1239072 (= res!826714 (validKeyInArray!0 (select (arr!38516 a!3835) from!3213)))))

(declare-fun b!1239073 () Bool)

(assert (=> b!1239073 (= e!702204 call!61081)))

(assert (= (and d!135879 (not res!826715)) b!1239072))

(assert (= (and b!1239072 res!826714) b!1239071))

(assert (= (and b!1239072 res!826716) b!1239070))

(assert (= (and b!1239070 c!121040) b!1239073))

(assert (= (and b!1239070 (not c!121040)) b!1239069))

(assert (= (or b!1239073 b!1239069) bm!61078))

(assert (=> bm!61078 m!1142559))

(declare-fun m!1142617 () Bool)

(assert (=> bm!61078 m!1142617))

(assert (=> b!1239070 m!1142559))

(assert (=> b!1239070 m!1142559))

(assert (=> b!1239070 m!1142561))

(assert (=> b!1239071 m!1142559))

(assert (=> b!1239071 m!1142559))

(declare-fun m!1142621 () Bool)

(assert (=> b!1239071 m!1142621))

(assert (=> b!1239072 m!1142559))

(assert (=> b!1239072 m!1142559))

(assert (=> b!1239072 m!1142561))

(assert (=> b!1239009 d!135879))

(declare-fun d!135891 () Bool)

(declare-fun lt!561563 () Bool)

(declare-fun content!601 (List!27467) (Set (_ BitVec 64)))

(assert (=> d!135891 (= lt!561563 (member k!2925 (content!601 acc!846)))))

(declare-fun e!702234 () Bool)

(assert (=> d!135891 (= lt!561563 e!702234)))

(declare-fun res!826744 () Bool)

(assert (=> d!135891 (=> (not res!826744) (not e!702234))))

(assert (=> d!135891 (= res!826744 (is-Cons!27463 acc!846))))

(assert (=> d!135891 (= (contains!7382 acc!846 k!2925) lt!561563)))

(declare-fun b!1239100 () Bool)

(declare-fun e!702233 () Bool)

(assert (=> b!1239100 (= e!702234 e!702233)))

(declare-fun res!826743 () Bool)

(assert (=> b!1239100 (=> res!826743 e!702233)))

(assert (=> b!1239100 (= res!826743 (= (h!28672 acc!846) k!2925))))

(declare-fun b!1239101 () Bool)

(assert (=> b!1239101 (= e!702233 (contains!7382 (t!40937 acc!846) k!2925))))

(assert (= (and d!135891 res!826744) b!1239100))

(assert (= (and b!1239100 (not res!826743)) b!1239101))

(declare-fun m!1142637 () Bool)

(assert (=> d!135891 m!1142637))

(declare-fun m!1142639 () Bool)

(assert (=> d!135891 m!1142639))

(declare-fun m!1142641 () Bool)

(assert (=> b!1239101 m!1142641))

(assert (=> b!1239015 d!135891))

(declare-fun d!135899 () Bool)

(assert (=> d!135899 (= (array_inv!29292 a!3835) (bvsge (size!39053 a!3835) #b00000000000000000000000000000000))))

(assert (=> start!103252 d!135899))

(declare-fun d!135901 () Bool)

(declare-fun lt!561564 () Bool)

(assert (=> d!135901 (= lt!561564 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!601 acc!846)))))

(declare-fun e!702240 () Bool)

(assert (=> d!135901 (= lt!561564 e!702240)))

(declare-fun res!826749 () Bool)

(assert (=> d!135901 (=> (not res!826749) (not e!702240))))

(assert (=> d!135901 (= res!826749 (is-Cons!27463 acc!846))))

(assert (=> d!135901 (= (contains!7382 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000) lt!561564)))

(declare-fun b!1239107 () Bool)

(declare-fun e!702239 () Bool)

(assert (=> b!1239107 (= e!702240 e!702239)))

(declare-fun res!826748 () Bool)

(assert (=> b!1239107 (=> res!826748 e!702239)))

(assert (=> b!1239107 (= res!826748 (= (h!28672 acc!846) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1239108 () Bool)

(assert (=> b!1239108 (= e!702239 (contains!7382 (t!40937 acc!846) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!135901 res!826749) b!1239107))

(assert (= (and b!1239107 (not res!826748)) b!1239108))

(assert (=> d!135901 m!1142637))

(declare-fun m!1142647 () Bool)

(assert (=> d!135901 m!1142647))

(declare-fun m!1142649 () Bool)

(assert (=> b!1239108 m!1142649))

(assert (=> b!1239011 d!135901))

(declare-fun b!1239109 () Bool)

(declare-fun e!702242 () Bool)

(declare-fun call!61083 () Bool)

(assert (=> b!1239109 (= e!702242 call!61083)))

(declare-fun bm!61080 () Bool)

(declare-fun c!121042 () Bool)

(assert (=> bm!61080 (= call!61083 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213 #b00000000000000000000000000000001) (ite c!121042 (Cons!27463 (select (arr!38516 a!3835) (bvadd #b00000000000000000000000000000001 from!3213)) acc!846) acc!846)))))

(declare-fun d!135905 () Bool)

(declare-fun res!826751 () Bool)

(declare-fun e!702244 () Bool)

(assert (=> d!135905 (=> res!826751 e!702244)))

(assert (=> d!135905 (= res!826751 (bvsge (bvadd #b00000000000000000000000000000001 from!3213) (size!39053 a!3835)))))

(assert (=> d!135905 (= (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) acc!846) e!702244)))

(declare-fun b!1239110 () Bool)

(declare-fun e!702241 () Bool)

(assert (=> b!1239110 (= e!702241 e!702242)))

(assert (=> b!1239110 (= c!121042 (validKeyInArray!0 (select (arr!38516 a!3835) (bvadd #b00000000000000000000000000000001 from!3213))))))

(declare-fun e!702243 () Bool)

(declare-fun b!1239111 () Bool)

(assert (=> b!1239111 (= e!702243 (contains!7382 acc!846 (select (arr!38516 a!3835) (bvadd #b00000000000000000000000000000001 from!3213))))))

(declare-fun b!1239112 () Bool)

(assert (=> b!1239112 (= e!702244 e!702241)))

(declare-fun res!826752 () Bool)

(assert (=> b!1239112 (=> (not res!826752) (not e!702241))))

(assert (=> b!1239112 (= res!826752 (not e!702243))))

(declare-fun res!826750 () Bool)

(assert (=> b!1239112 (=> (not res!826750) (not e!702243))))

(assert (=> b!1239112 (= res!826750 (validKeyInArray!0 (select (arr!38516 a!3835) (bvadd #b00000000000000000000000000000001 from!3213))))))

(declare-fun b!1239113 () Bool)

(assert (=> b!1239113 (= e!702242 call!61083)))

(assert (= (and d!135905 (not res!826751)) b!1239112))

(assert (= (and b!1239112 res!826750) b!1239111))

(assert (= (and b!1239112 res!826752) b!1239110))

(assert (= (and b!1239110 c!121042) b!1239113))

(assert (= (and b!1239110 (not c!121042)) b!1239109))

(assert (= (or b!1239113 b!1239109) bm!61080))

(declare-fun m!1142651 () Bool)

(assert (=> bm!61080 m!1142651))

(declare-fun m!1142653 () Bool)

(assert (=> bm!61080 m!1142653))

(assert (=> b!1239110 m!1142651))

(assert (=> b!1239110 m!1142651))

(declare-fun m!1142655 () Bool)

(assert (=> b!1239110 m!1142655))

(assert (=> b!1239111 m!1142651))

(assert (=> b!1239111 m!1142651))

(declare-fun m!1142657 () Bool)

(assert (=> b!1239111 m!1142657))

(assert (=> b!1239112 m!1142651))

(assert (=> b!1239112 m!1142651))

(assert (=> b!1239112 m!1142655))

(assert (=> b!1239006 d!135905))

(declare-fun d!135907 () Bool)

(declare-fun lt!561565 () Bool)

(assert (=> d!135907 (= lt!561565 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!601 acc!846)))))

(declare-fun e!702250 () Bool)

(assert (=> d!135907 (= lt!561565 e!702250)))

(declare-fun res!826758 () Bool)

(assert (=> d!135907 (=> (not res!826758) (not e!702250))))

(assert (=> d!135907 (= res!826758 (is-Cons!27463 acc!846))))

(assert (=> d!135907 (= (contains!7382 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000) lt!561565)))

(declare-fun b!1239118 () Bool)

(declare-fun e!702249 () Bool)

(assert (=> b!1239118 (= e!702250 e!702249)))

(declare-fun res!826757 () Bool)

(assert (=> b!1239118 (=> res!826757 e!702249)))

(assert (=> b!1239118 (= res!826757 (= (h!28672 acc!846) #b0000000000000000000000000000000000000000000000000000000000000000))))

