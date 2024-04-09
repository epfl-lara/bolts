; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103320 () Bool)

(assert start!103320)

(declare-fun e!702422 () Bool)

(declare-fun k!2925 () (_ BitVec 64))

(declare-fun b!1239446 () Bool)

(declare-datatypes ((array!79853 0))(
  ( (array!79854 (arr!38523 (Array (_ BitVec 32) (_ BitVec 64))) (size!39060 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79853)

(declare-fun from!3213 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!79853 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1239446 (= e!702422 (not (not (arrayContainsKey!0 a!3835 k!2925 from!3213))))))

(assert (=> b!1239446 (not (arrayContainsKey!0 a!3835 k!2925 (bvadd #b00000000000000000000000000000001 from!3213)))))

(declare-datatypes ((List!27474 0))(
  ( (Nil!27471) (Cons!27470 (h!28679 (_ BitVec 64)) (t!40944 List!27474)) )
))
(declare-fun acc!846 () List!27474)

(declare-datatypes ((Unit!41134 0))(
  ( (Unit!41135) )
))
(declare-fun lt!561706 () Unit!41134)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!79853 (_ BitVec 32) (_ BitVec 64) List!27474) Unit!41134)

(assert (=> b!1239446 (= lt!561706 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) k!2925 acc!846))))

(declare-fun b!1239447 () Bool)

(declare-fun res!826999 () Bool)

(declare-fun e!702420 () Bool)

(assert (=> b!1239447 (=> (not res!826999) (not e!702420))))

(assert (=> b!1239447 (= res!826999 (not (= from!3213 (bvsub (size!39060 a!3835) #b00000000000000000000000000000001))))))

(declare-fun b!1239448 () Bool)

(assert (=> b!1239448 (= e!702420 e!702422)))

(declare-fun res!826992 () Bool)

(assert (=> b!1239448 (=> (not res!826992) (not e!702422))))

(assert (=> b!1239448 (= res!826992 (and (bvsge (bvadd #b00000000000000000000000000000001 from!3213) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3213) (size!39060 a!3835))))))

(declare-fun lt!561705 () Unit!41134)

(declare-fun e!702419 () Unit!41134)

(assert (=> b!1239448 (= lt!561705 e!702419)))

(declare-fun c!121090 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1239448 (= c!121090 (validKeyInArray!0 (select (arr!38523 a!3835) from!3213)))))

(declare-fun b!1239449 () Bool)

(declare-fun res!826991 () Bool)

(assert (=> b!1239449 (=> (not res!826991) (not e!702420))))

(declare-fun contains!7389 (List!27474 (_ BitVec 64)) Bool)

(assert (=> b!1239449 (= res!826991 (not (contains!7389 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1239450 () Bool)

(declare-fun lt!561703 () Unit!41134)

(assert (=> b!1239450 (= e!702419 lt!561703)))

(declare-fun lt!561704 () List!27474)

(assert (=> b!1239450 (= lt!561704 (Cons!27470 (select (arr!38523 a!3835) from!3213) acc!846))))

(declare-fun lt!561702 () Unit!41134)

(declare-fun lemmaListSubSeqRefl!0 (List!27474) Unit!41134)

(assert (=> b!1239450 (= lt!561702 (lemmaListSubSeqRefl!0 lt!561704))))

(declare-fun subseq!626 (List!27474 List!27474) Bool)

(assert (=> b!1239450 (subseq!626 lt!561704 lt!561704)))

(declare-fun lt!561701 () Unit!41134)

(declare-fun subseqTail!113 (List!27474 List!27474) Unit!41134)

(assert (=> b!1239450 (= lt!561701 (subseqTail!113 lt!561704 lt!561704))))

(assert (=> b!1239450 (subseq!626 acc!846 lt!561704)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79853 List!27474 List!27474 (_ BitVec 32)) Unit!41134)

(assert (=> b!1239450 (= lt!561703 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3835 lt!561704 acc!846 (bvadd #b00000000000000000000000000000001 from!3213)))))

(declare-fun arrayNoDuplicates!0 (array!79853 (_ BitVec 32) List!27474) Bool)

(assert (=> b!1239450 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) acc!846)))

(declare-fun b!1239452 () Bool)

(declare-fun res!826995 () Bool)

(assert (=> b!1239452 (=> (not res!826995) (not e!702420))))

(assert (=> b!1239452 (= res!826995 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1239453 () Bool)

(declare-fun res!826993 () Bool)

(assert (=> b!1239453 (=> (not res!826993) (not e!702420))))

(assert (=> b!1239453 (= res!826993 (contains!7389 acc!846 k!2925))))

(declare-fun b!1239454 () Bool)

(declare-fun res!826997 () Bool)

(assert (=> b!1239454 (=> (not res!826997) (not e!702422))))

(assert (=> b!1239454 (= res!826997 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) acc!846))))

(declare-fun res!826996 () Bool)

(assert (=> start!103320 (=> (not res!826996) (not e!702420))))

(assert (=> start!103320 (= res!826996 (and (bvslt (size!39060 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!39060 a!3835))))))

(assert (=> start!103320 e!702420))

(declare-fun array_inv!29299 (array!79853) Bool)

(assert (=> start!103320 (array_inv!29299 a!3835)))

(assert (=> start!103320 true))

(declare-fun b!1239451 () Bool)

(declare-fun Unit!41136 () Unit!41134)

(assert (=> b!1239451 (= e!702419 Unit!41136)))

(declare-fun b!1239455 () Bool)

(declare-fun res!826998 () Bool)

(assert (=> b!1239455 (=> (not res!826998) (not e!702420))))

(declare-fun noDuplicate!1996 (List!27474) Bool)

(assert (=> b!1239455 (= res!826998 (noDuplicate!1996 acc!846))))

(declare-fun b!1239456 () Bool)

(declare-fun res!826994 () Bool)

(assert (=> b!1239456 (=> (not res!826994) (not e!702420))))

(assert (=> b!1239456 (= res!826994 (not (contains!7389 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!103320 res!826996) b!1239455))

(assert (= (and b!1239455 res!826998) b!1239449))

(assert (= (and b!1239449 res!826991) b!1239456))

(assert (= (and b!1239456 res!826994) b!1239452))

(assert (= (and b!1239452 res!826995) b!1239453))

(assert (= (and b!1239453 res!826993) b!1239447))

(assert (= (and b!1239447 res!826999) b!1239448))

(assert (= (and b!1239448 c!121090) b!1239450))

(assert (= (and b!1239448 (not c!121090)) b!1239451))

(assert (= (and b!1239448 res!826992) b!1239454))

(assert (= (and b!1239454 res!826997) b!1239446))

(declare-fun m!1142909 () Bool)

(assert (=> b!1239448 m!1142909))

(assert (=> b!1239448 m!1142909))

(declare-fun m!1142911 () Bool)

(assert (=> b!1239448 m!1142911))

(declare-fun m!1142913 () Bool)

(assert (=> b!1239454 m!1142913))

(declare-fun m!1142915 () Bool)

(assert (=> b!1239450 m!1142915))

(declare-fun m!1142917 () Bool)

(assert (=> b!1239450 m!1142917))

(assert (=> b!1239450 m!1142913))

(assert (=> b!1239450 m!1142909))

(declare-fun m!1142919 () Bool)

(assert (=> b!1239450 m!1142919))

(declare-fun m!1142921 () Bool)

(assert (=> b!1239450 m!1142921))

(declare-fun m!1142923 () Bool)

(assert (=> b!1239450 m!1142923))

(declare-fun m!1142925 () Bool)

(assert (=> b!1239456 m!1142925))

(declare-fun m!1142927 () Bool)

(assert (=> b!1239455 m!1142927))

(declare-fun m!1142929 () Bool)

(assert (=> start!103320 m!1142929))

(declare-fun m!1142931 () Bool)

(assert (=> b!1239453 m!1142931))

(declare-fun m!1142933 () Bool)

(assert (=> b!1239452 m!1142933))

(declare-fun m!1142935 () Bool)

(assert (=> b!1239449 m!1142935))

(declare-fun m!1142937 () Bool)

(assert (=> b!1239446 m!1142937))

(declare-fun m!1142939 () Bool)

(assert (=> b!1239446 m!1142939))

(declare-fun m!1142941 () Bool)

(assert (=> b!1239446 m!1142941))

(push 1)

(assert (not b!1239456))

(assert (not b!1239450))

(assert (not b!1239455))

(assert (not b!1239449))

(assert (not start!103320))

(assert (not b!1239452))

(assert (not b!1239453))

(assert (not b!1239448))

(assert (not b!1239446))

(assert (not b!1239454))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1239576 () Bool)

(declare-fun e!702497 () Bool)

(declare-fun e!702498 () Bool)

(assert (=> b!1239576 (= e!702497 e!702498)))

(declare-fun res!827098 () Bool)

(assert (=> b!1239576 (=> (not res!827098) (not e!702498))))

(declare-fun e!702496 () Bool)

(assert (=> b!1239576 (= res!827098 (not e!702496))))

(declare-fun res!827099 () Bool)

(assert (=> b!1239576 (=> (not res!827099) (not e!702496))))

(assert (=> b!1239576 (= res!827099 (validKeyInArray!0 (select (arr!38523 a!3835) from!3213)))))

(declare-fun bm!61095 () Bool)

(declare-fun c!121102 () Bool)

(declare-fun call!61098 () Bool)

(assert (=> bm!61095 (= call!61098 (arrayNoDuplicates!0 a!3835 (bvadd from!3213 #b00000000000000000000000000000001) (ite c!121102 (Cons!27470 (select (arr!38523 a!3835) from!3213) acc!846) acc!846)))))

(declare-fun b!1239577 () Bool)

(declare-fun e!702495 () Bool)

(assert (=> b!1239577 (= e!702495 call!61098)))

(declare-fun b!1239578 () Bool)

(assert (=> b!1239578 (= e!702496 (contains!7389 acc!846 (select (arr!38523 a!3835) from!3213)))))

(declare-fun b!1239579 () Bool)

(assert (=> b!1239579 (= e!702498 e!702495)))

(assert (=> b!1239579 (= c!121102 (validKeyInArray!0 (select (arr!38523 a!3835) from!3213)))))

(declare-fun d!135959 () Bool)

(declare-fun res!827097 () Bool)

(assert (=> d!135959 (=> res!827097 e!702497)))

(assert (=> d!135959 (= res!827097 (bvsge from!3213 (size!39060 a!3835)))))

(assert (=> d!135959 (= (arrayNoDuplicates!0 a!3835 from!3213 acc!846) e!702497)))

(declare-fun b!1239580 () Bool)

(assert (=> b!1239580 (= e!702495 call!61098)))

(assert (= (and d!135959 (not res!827097)) b!1239576))

(assert (= (and b!1239576 res!827099) b!1239578))

(assert (= (and b!1239576 res!827098) b!1239579))

(assert (= (and b!1239579 c!121102) b!1239580))

(assert (= (and b!1239579 (not c!121102)) b!1239577))

(assert (= (or b!1239580 b!1239577) bm!61095))

(assert (=> b!1239576 m!1142909))

(assert (=> b!1239576 m!1142909))

(assert (=> b!1239576 m!1142911))

(assert (=> bm!61095 m!1142909))

(declare-fun m!1143037 () Bool)

(assert (=> bm!61095 m!1143037))

(assert (=> b!1239578 m!1142909))

(assert (=> b!1239578 m!1142909))

(declare-fun m!1143039 () Bool)

(assert (=> b!1239578 m!1143039))

(assert (=> b!1239579 m!1142909))

(assert (=> b!1239579 m!1142909))

(assert (=> b!1239579 m!1142911))

(assert (=> b!1239452 d!135959))

(declare-fun d!135969 () Bool)

(declare-fun res!827114 () Bool)

(declare-fun e!702519 () Bool)

(assert (=> d!135969 (=> res!827114 e!702519)))

(assert (=> d!135969 (= res!827114 (= (select (arr!38523 a!3835) from!3213) k!2925))))

(assert (=> d!135969 (= (arrayContainsKey!0 a!3835 k!2925 from!3213) e!702519)))

(declare-fun b!1239607 () Bool)

(declare-fun e!702520 () Bool)

(assert (=> b!1239607 (= e!702519 e!702520)))

(declare-fun res!827115 () Bool)

(assert (=> b!1239607 (=> (not res!827115) (not e!702520))))

(assert (=> b!1239607 (= res!827115 (bvslt (bvadd from!3213 #b00000000000000000000000000000001) (size!39060 a!3835)))))

(declare-fun b!1239608 () Bool)

(assert (=> b!1239608 (= e!702520 (arrayContainsKey!0 a!3835 k!2925 (bvadd from!3213 #b00000000000000000000000000000001)))))

(assert (= (and d!135969 (not res!827114)) b!1239607))

(assert (= (and b!1239607 res!827115) b!1239608))

(assert (=> d!135969 m!1142909))

(declare-fun m!1143051 () Bool)

(assert (=> b!1239608 m!1143051))

(assert (=> b!1239446 d!135969))

(declare-fun d!135975 () Bool)

(declare-fun res!827116 () Bool)

(declare-fun e!702521 () Bool)

(assert (=> d!135975 (=> res!827116 e!702521)))

(assert (=> d!135975 (= res!827116 (= (select (arr!38523 a!3835) (bvadd #b00000000000000000000000000000001 from!3213)) k!2925))))

(assert (=> d!135975 (= (arrayContainsKey!0 a!3835 k!2925 (bvadd #b00000000000000000000000000000001 from!3213)) e!702521)))

(declare-fun b!1239609 () Bool)

(declare-fun e!702522 () Bool)

(assert (=> b!1239609 (= e!702521 e!702522)))

(declare-fun res!827117 () Bool)

(assert (=> b!1239609 (=> (not res!827117) (not e!702522))))

(assert (=> b!1239609 (= res!827117 (bvslt (bvadd #b00000000000000000000000000000001 from!3213 #b00000000000000000000000000000001) (size!39060 a!3835)))))

(declare-fun b!1239610 () Bool)

(assert (=> b!1239610 (= e!702522 (arrayContainsKey!0 a!3835 k!2925 (bvadd #b00000000000000000000000000000001 from!3213 #b00000000000000000000000000000001)))))

(assert (= (and d!135975 (not res!827116)) b!1239609))

(assert (= (and b!1239609 res!827117) b!1239610))

(declare-fun m!1143053 () Bool)

(assert (=> d!135975 m!1143053))

(declare-fun m!1143055 () Bool)

(assert (=> b!1239610 m!1143055))

(assert (=> b!1239446 d!135975))

(declare-fun d!135977 () Bool)

(assert (=> d!135977 (not (arrayContainsKey!0 a!3835 k!2925 (bvadd #b00000000000000000000000000000001 from!3213)))))

(declare-fun lt!561754 () Unit!41134)

(declare-fun choose!68 (array!79853 (_ BitVec 32) (_ BitVec 64) List!27474) Unit!41134)

(assert (=> d!135977 (= lt!561754 (choose!68 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) k!2925 acc!846))))

(assert (=> d!135977 (bvslt (size!39060 a!3835) #b01111111111111111111111111111111)))

(assert (=> d!135977 (= (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) k!2925 acc!846) lt!561754)))

(declare-fun bs!34849 () Bool)

(assert (= bs!34849 d!135977))

(assert (=> bs!34849 m!1142939))

(declare-fun m!1143057 () Bool)

(assert (=> bs!34849 m!1143057))

(assert (=> b!1239446 d!135977))

(declare-fun d!135979 () Bool)

(declare-fun lt!561761 () Bool)

(declare-fun content!604 (List!27474) (Set (_ BitVec 64)))

(assert (=> d!135979 (= lt!561761 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!604 acc!846)))))

(declare-fun e!702544 () Bool)

(assert (=> d!135979 (= lt!561761 e!702544)))

(declare-fun res!827135 () Bool)

(assert (=> d!135979 (=> (not res!827135) (not e!702544))))

(assert (=> d!135979 (= res!827135 (is-Cons!27470 acc!846))))

(assert (=> d!135979 (= (contains!7389 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000) lt!561761)))

(declare-fun b!1239634 () Bool)

(declare-fun e!702543 () Bool)

(assert (=> b!1239634 (= e!702544 e!702543)))

(declare-fun res!827136 () Bool)

(assert (=> b!1239634 (=> res!827136 e!702543)))

(assert (=> b!1239634 (= res!827136 (= (h!28679 acc!846) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1239635 () Bool)

(assert (=> b!1239635 (= e!702543 (contains!7389 (t!40944 acc!846) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!135979 res!827135) b!1239634))

(assert (= (and b!1239634 (not res!827136)) b!1239635))

(declare-fun m!1143075 () Bool)

(assert (=> d!135979 m!1143075))

(declare-fun m!1143077 () Bool)

(assert (=> d!135979 m!1143077))

(declare-fun m!1143079 () Bool)

(assert (=> b!1239635 m!1143079))

(assert (=> b!1239456 d!135979))

(declare-fun d!135987 () Bool)

(declare-fun res!827147 () Bool)

(declare-fun e!702557 () Bool)

(assert (=> d!135987 (=> res!827147 e!702557)))

(assert (=> d!135987 (= res!827147 (is-Nil!27471 acc!846))))

(assert (=> d!135987 (= (noDuplicate!1996 acc!846) e!702557)))

(declare-fun b!1239650 () Bool)

(declare-fun e!702558 () Bool)

(assert (=> b!1239650 (= e!702557 e!702558)))

(declare-fun res!827148 () Bool)

(assert (=> b!1239650 (=> (not res!827148) (not e!702558))))

(assert (=> b!1239650 (= res!827148 (not (contains!7389 (t!40944 acc!846) (h!28679 acc!846))))))

(declare-fun b!1239651 () Bool)

(assert (=> b!1239651 (= e!702558 (noDuplicate!1996 (t!40944 acc!846)))))

(assert (= (and d!135987 (not res!827147)) b!1239650))

(assert (= (and b!1239650 res!827148) b!1239651))

(declare-fun m!1143083 () Bool)

(assert (=> b!1239650 m!1143083))

(declare-fun m!1143085 () Bool)

(assert (=> b!1239651 m!1143085))

(assert (=> b!1239455 d!135987))

(declare-fun b!1239654 () Bool)

(declare-fun e!702565 () Bool)

(declare-fun e!702566 () Bool)

(assert (=> b!1239654 (= e!702565 e!702566)))

(declare-fun res!827154 () Bool)

(assert (=> b!1239654 (=> (not res!827154) (not e!702566))))

(declare-fun e!702564 () Bool)

(assert (=> b!1239654 (= res!827154 (not e!702564))))

(declare-fun res!827155 () Bool)

(assert (=> b!1239654 (=> (not res!827155) (not e!702564))))

(assert (=> b!1239654 (= res!827155 (validKeyInArray!0 (select (arr!38523 a!3835) (bvadd #b00000000000000000000000000000001 from!3213))))))

(declare-fun c!121114 () Bool)

(declare-fun call!61104 () Bool)

(declare-fun bm!61101 () Bool)

(assert (=> bm!61101 (= call!61104 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213 #b00000000000000000000000000000001) (ite c!121114 (Cons!27470 (select (arr!38523 a!3835) (bvadd #b00000000000000000000000000000001 from!3213)) acc!846) acc!846)))))

(declare-fun b!1239657 () Bool)

(declare-fun e!702563 () Bool)

(assert (=> b!1239657 (= e!702563 call!61104)))

(declare-fun b!1239658 () Bool)

(assert (=> b!1239658 (= e!702564 (contains!7389 acc!846 (select (arr!38523 a!3835) (bvadd #b00000000000000000000000000000001 from!3213))))))

(declare-fun b!1239659 () Bool)

(assert (=> b!1239659 (= e!702566 e!702563)))

(assert (=> b!1239659 (= c!121114 (validKeyInArray!0 (select (arr!38523 a!3835) (bvadd #b00000000000000000000000000000001 from!3213))))))

(declare-fun d!135991 () Bool)

(declare-fun res!827153 () Bool)

(assert (=> d!135991 (=> res!827153 e!702565)))

(assert (=> d!135991 (= res!827153 (bvsge (bvadd #b00000000000000000000000000000001 from!3213) (size!39060 a!3835)))))

(assert (=> d!135991 (= (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) acc!846) e!702565)))

(declare-fun b!1239660 () Bool)

(assert (=> b!1239660 (= e!702563 call!61104)))

(assert (= (and d!135991 (not res!827153)) b!1239654))

(assert (= (and b!1239654 res!827155) b!1239658))

(assert (= (and b!1239654 res!827154) b!1239659))

(assert (= (and b!1239659 c!121114) b!1239660))

(assert (= (and b!1239659 (not c!121114)) b!1239657))

(assert (= (or b!1239660 b!1239657) bm!61101))

(assert (=> b!1239654 m!1143053))

(assert (=> b!1239654 m!1143053))

(declare-fun m!1143087 () Bool)

(assert (=> b!1239654 m!1143087))

(assert (=> bm!61101 m!1143053))

(declare-fun m!1143089 () Bool)

(assert (=> bm!61101 m!1143089))

(assert (=> b!1239658 m!1143053))

(assert (=> b!1239658 m!1143053))

(declare-fun m!1143093 () Bool)

(assert (=> b!1239658 m!1143093))

(assert (=> b!1239659 m!1143053))

(assert (=> b!1239659 m!1143053))

(assert (=> b!1239659 m!1143087))

(assert (=> b!1239450 d!135991))

(declare-fun bm!61108 () Bool)

(declare-fun call!61111 () Unit!41134)

(declare-fun c!121129 () Bool)

(assert (=> bm!61108 (= call!61111 (subseqTail!113 (ite c!121129 lt!561704 (t!40944 lt!561704)) (t!40944 lt!561704)))))

(declare-fun b!1239717 () Bool)

(declare-fun e!702612 () Unit!41134)

(declare-fun Unit!41145 () Unit!41134)

(assert (=> b!1239717 (= e!702612 Unit!41145)))

(declare-fun b!1239718 () Bool)

(declare-fun e!702609 () Unit!41134)

(declare-fun Unit!41146 () Unit!41134)

(assert (=> b!1239718 (= e!702609 Unit!41146)))

(declare-fun b!1239720 () Bool)

(declare-fun c!121131 () Bool)

(declare-fun isEmpty!1022 (List!27474) Bool)

(assert (=> b!1239720 (= c!121131 (not (isEmpty!1022 (t!40944 lt!561704))))))

(declare-fun e!702610 () Unit!41134)

(assert (=> b!1239720 (= e!702610 e!702612)))

(declare-fun b!1239721 () Bool)

(assert (=> b!1239721 (= e!702609 e!702610)))

(assert (=> b!1239721 (= c!121129 (subseq!626 lt!561704 (t!40944 lt!561704)))))

(declare-fun b!1239722 () Bool)

(assert (=> b!1239722 (= e!702612 call!61111)))

(declare-fun b!1239723 () Bool)

(declare-fun e!702611 () Bool)

(assert (=> b!1239723 (= e!702611 (subseq!626 lt!561704 lt!561704))))

(declare-fun d!135993 () Bool)

(declare-fun tail!171 (List!27474) List!27474)

(assert (=> d!135993 (subseq!626 (tail!171 lt!561704) lt!561704)))

(declare-fun lt!561774 () Unit!41134)

(assert (=> d!135993 (= lt!561774 e!702609)))

(declare-fun c!121130 () Bool)

(assert (=> d!135993 (= c!121130 (and (is-Cons!27470 lt!561704) (is-Cons!27470 lt!561704)))))

(assert (=> d!135993 e!702611))

(declare-fun res!827184 () Bool)

(assert (=> d!135993 (=> (not res!827184) (not e!702611))))

(assert (=> d!135993 (= res!827184 (not (isEmpty!1022 lt!561704)))))

(assert (=> d!135993 (= (subseqTail!113 lt!561704 lt!561704) lt!561774)))

(declare-fun b!1239719 () Bool)

(assert (=> b!1239719 (= e!702610 call!61111)))

(assert (= (and d!135993 res!827184) b!1239723))

(assert (= (and d!135993 c!121130) b!1239721))

(assert (= (and d!135993 (not c!121130)) b!1239718))

(assert (= (and b!1239721 c!121129) b!1239719))

(assert (= (and b!1239721 (not c!121129)) b!1239720))

(assert (= (and b!1239720 c!121131) b!1239722))

(assert (= (and b!1239720 (not c!121131)) b!1239717))

(assert (= (or b!1239719 b!1239722) bm!61108))

(declare-fun m!1143127 () Bool)

(assert (=> d!135993 m!1143127))

(assert (=> d!135993 m!1143127))

(declare-fun m!1143129 () Bool)

(assert (=> d!135993 m!1143129))

(declare-fun m!1143131 () Bool)

(assert (=> d!135993 m!1143131))

(declare-fun m!1143133 () Bool)

(assert (=> b!1239721 m!1143133))

(declare-fun m!1143135 () Bool)

(assert (=> bm!61108 m!1143135))

(declare-fun m!1143137 () Bool)

(assert (=> b!1239720 m!1143137))

(assert (=> b!1239723 m!1142915))

(assert (=> b!1239450 d!135993))

(declare-fun d!136011 () Bool)

(assert (=> d!136011 (subseq!626 lt!561704 lt!561704)))

(declare-fun lt!561778 () Unit!41134)

(declare-fun choose!36 (List!27474) Unit!41134)

(assert (=> d!136011 (= lt!561778 (choose!36 lt!561704))))

(assert (=> d!136011 (= (lemmaListSubSeqRefl!0 lt!561704) lt!561778)))

(declare-fun bs!34853 () Bool)

(assert (= bs!34853 d!136011))

(assert (=> bs!34853 m!1142915))

(declare-fun m!1143149 () Bool)

(assert (=> bs!34853 m!1143149))

(assert (=> b!1239450 d!136011))

(declare-fun d!136015 () Bool)

(assert (=> d!136015 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) acc!846)))

(declare-fun lt!561784 () Unit!41134)

(declare-fun choose!80 (array!79853 List!27474 List!27474 (_ BitVec 32)) Unit!41134)

(assert (=> d!136015 (= lt!561784 (choose!80 a!3835 lt!561704 acc!846 (bvadd #b00000000000000000000000000000001 from!3213)))))

(assert (=> d!136015 (bvslt (size!39060 a!3835) #b01111111111111111111111111111111)))

(assert (=> d!136015 (= (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3835 lt!561704 acc!846 (bvadd #b00000000000000000000000000000001 from!3213)) lt!561784)))

(declare-fun bs!34855 () Bool)

(assert (= bs!34855 d!136015))

(assert (=> bs!34855 m!1142913))

(declare-fun m!1143153 () Bool)

(assert (=> bs!34855 m!1143153))

(assert (=> b!1239450 d!136015))

(declare-fun b!1239750 () Bool)

(declare-fun e!702635 () Bool)

(declare-fun e!702636 () Bool)

(assert (=> b!1239750 (= e!702635 e!702636)))

(declare-fun res!827205 () Bool)

(assert (=> b!1239750 (=> (not res!827205) (not e!702636))))

(assert (=> b!1239750 (= res!827205 (is-Cons!27470 lt!561704))))

(declare-fun b!1239753 () Bool)

(declare-fun e!702637 () Bool)

(assert (=> b!1239753 (= e!702637 (subseq!626 lt!561704 (t!40944 lt!561704)))))

(declare-fun b!1239752 () Bool)

(declare-fun e!702638 () Bool)

(assert (=> b!1239752 (= e!702638 (subseq!626 (t!40944 lt!561704) (t!40944 lt!561704)))))

(declare-fun b!1239751 () Bool)

(assert (=> b!1239751 (= e!702636 e!702637)))

(declare-fun res!827204 () Bool)

(assert (=> b!1239751 (=> res!827204 e!702637)))

(assert (=> b!1239751 (= res!827204 e!702638)))

(declare-fun res!827203 () Bool)

(assert (=> b!1239751 (=> (not res!827203) (not e!702638))))

(assert (=> b!1239751 (= res!827203 (= (h!28679 lt!561704) (h!28679 lt!561704)))))

(declare-fun d!136019 () Bool)

(declare-fun res!827206 () Bool)

(assert (=> d!136019 (=> res!827206 e!702635)))

(assert (=> d!136019 (= res!827206 (is-Nil!27471 lt!561704))))

(assert (=> d!136019 (= (subseq!626 lt!561704 lt!561704) e!702635)))

(assert (= (and d!136019 (not res!827206)) b!1239750))

(assert (= (and b!1239750 res!827205) b!1239751))

(assert (= (and b!1239751 res!827203) b!1239752))

(assert (= (and b!1239751 (not res!827204)) b!1239753))

(assert (=> b!1239753 m!1143133))

(declare-fun m!1143163 () Bool)

(assert (=> b!1239752 m!1143163))

(assert (=> b!1239450 d!136019))

(declare-fun b!1239756 () Bool)

(declare-fun e!702641 () Bool)

(declare-fun e!702642 () Bool)

(assert (=> b!1239756 (= e!702641 e!702642)))

(declare-fun res!827211 () Bool)

(assert (=> b!1239756 (=> (not res!827211) (not e!702642))))

(assert (=> b!1239756 (= res!827211 (is-Cons!27470 lt!561704))))

(declare-fun b!1239759 () Bool)

(declare-fun e!702643 () Bool)

(assert (=> b!1239759 (= e!702643 (subseq!626 acc!846 (t!40944 lt!561704)))))

(declare-fun b!1239758 () Bool)

(declare-fun e!702644 () Bool)

(assert (=> b!1239758 (= e!702644 (subseq!626 (t!40944 acc!846) (t!40944 lt!561704)))))

(declare-fun b!1239757 () Bool)

(assert (=> b!1239757 (= e!702642 e!702643)))

(declare-fun res!827210 () Bool)

(assert (=> b!1239757 (=> res!827210 e!702643)))

(assert (=> b!1239757 (= res!827210 e!702644)))

(declare-fun res!827209 () Bool)

(assert (=> b!1239757 (=> (not res!827209) (not e!702644))))

(assert (=> b!1239757 (= res!827209 (= (h!28679 acc!846) (h!28679 lt!561704)))))

(declare-fun d!136027 () Bool)

(declare-fun res!827212 () Bool)

(assert (=> d!136027 (=> res!827212 e!702641)))

(assert (=> d!136027 (= res!827212 (is-Nil!27471 acc!846))))

(assert (=> d!136027 (= (subseq!626 acc!846 lt!561704) e!702641)))

(assert (= (and d!136027 (not res!827212)) b!1239756))

(assert (= (and b!1239756 res!827211) b!1239757))

(assert (= (and b!1239757 res!827209) b!1239758))

(assert (= (and b!1239757 (not res!827210)) b!1239759))

(declare-fun m!1143167 () Bool)

(assert (=> b!1239759 m!1143167))

(declare-fun m!1143169 () Bool)

(assert (=> b!1239758 m!1143169))

(assert (=> b!1239450 d!136027))

(declare-fun d!136031 () Bool)

(declare-fun lt!561788 () Bool)

(assert (=> d!136031 (= lt!561788 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!604 acc!846)))))

(declare-fun e!702646 () Bool)

(assert (=> d!136031 (= lt!561788 e!702646)))

(declare-fun res!827213 () Bool)

