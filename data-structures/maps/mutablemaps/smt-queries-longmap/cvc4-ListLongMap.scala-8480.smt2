; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103324 () Bool)

(assert start!103324)

(declare-fun res!827053 () Bool)

(declare-fun e!702444 () Bool)

(assert (=> start!103324 (=> (not res!827053) (not e!702444))))

(declare-datatypes ((array!79857 0))(
  ( (array!79858 (arr!38525 (Array (_ BitVec 32) (_ BitVec 64))) (size!39062 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79857)

(declare-fun from!3213 () (_ BitVec 32))

(assert (=> start!103324 (= res!827053 (and (bvslt (size!39062 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!39062 a!3835))))))

(assert (=> start!103324 e!702444))

(declare-fun array_inv!29301 (array!79857) Bool)

(assert (=> start!103324 (array_inv!29301 a!3835)))

(assert (=> start!103324 true))

(declare-fun b!1239512 () Bool)

(declare-fun res!827046 () Bool)

(assert (=> b!1239512 (=> (not res!827046) (not e!702444))))

(declare-datatypes ((List!27476 0))(
  ( (Nil!27473) (Cons!27472 (h!28681 (_ BitVec 64)) (t!40946 List!27476)) )
))
(declare-fun acc!846 () List!27476)

(declare-fun arrayNoDuplicates!0 (array!79857 (_ BitVec 32) List!27476) Bool)

(assert (=> b!1239512 (= res!827046 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1239513 () Bool)

(declare-fun res!827045 () Bool)

(assert (=> b!1239513 (=> (not res!827045) (not e!702444))))

(declare-fun contains!7391 (List!27476 (_ BitVec 64)) Bool)

(assert (=> b!1239513 (= res!827045 (not (contains!7391 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1239514 () Bool)

(declare-datatypes ((Unit!41140 0))(
  ( (Unit!41141) )
))
(declare-fun e!702443 () Unit!41140)

(declare-fun Unit!41142 () Unit!41140)

(assert (=> b!1239514 (= e!702443 Unit!41142)))

(declare-fun b!1239515 () Bool)

(declare-fun res!827052 () Bool)

(assert (=> b!1239515 (=> (not res!827052) (not e!702444))))

(assert (=> b!1239515 (= res!827052 (not (contains!7391 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1239516 () Bool)

(declare-fun e!702446 () Bool)

(assert (=> b!1239516 (= e!702444 e!702446)))

(declare-fun res!827051 () Bool)

(assert (=> b!1239516 (=> (not res!827051) (not e!702446))))

(assert (=> b!1239516 (= res!827051 (and (bvsge (bvadd #b00000000000000000000000000000001 from!3213) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3213) (size!39062 a!3835))))))

(declare-fun lt!561738 () Unit!41140)

(assert (=> b!1239516 (= lt!561738 e!702443)))

(declare-fun c!121096 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1239516 (= c!121096 (validKeyInArray!0 (select (arr!38525 a!3835) from!3213)))))

(declare-fun b!1239517 () Bool)

(declare-fun lt!561740 () Unit!41140)

(assert (=> b!1239517 (= e!702443 lt!561740)))

(declare-fun lt!561739 () List!27476)

(assert (=> b!1239517 (= lt!561739 (Cons!27472 (select (arr!38525 a!3835) from!3213) acc!846))))

(declare-fun lt!561741 () Unit!41140)

(declare-fun lemmaListSubSeqRefl!0 (List!27476) Unit!41140)

(assert (=> b!1239517 (= lt!561741 (lemmaListSubSeqRefl!0 lt!561739))))

(declare-fun subseq!628 (List!27476 List!27476) Bool)

(assert (=> b!1239517 (subseq!628 lt!561739 lt!561739)))

(declare-fun lt!561737 () Unit!41140)

(declare-fun subseqTail!115 (List!27476 List!27476) Unit!41140)

(assert (=> b!1239517 (= lt!561737 (subseqTail!115 lt!561739 lt!561739))))

(assert (=> b!1239517 (subseq!628 acc!846 lt!561739)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79857 List!27476 List!27476 (_ BitVec 32)) Unit!41140)

(assert (=> b!1239517 (= lt!561740 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3835 lt!561739 acc!846 (bvadd #b00000000000000000000000000000001 from!3213)))))

(assert (=> b!1239517 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) acc!846)))

(declare-fun b!1239518 () Bool)

(declare-fun res!827048 () Bool)

(assert (=> b!1239518 (=> (not res!827048) (not e!702444))))

(declare-fun k!2925 () (_ BitVec 64))

(assert (=> b!1239518 (= res!827048 (contains!7391 acc!846 k!2925))))

(declare-fun b!1239519 () Bool)

(declare-fun res!827047 () Bool)

(assert (=> b!1239519 (=> (not res!827047) (not e!702444))))

(declare-fun noDuplicate!1998 (List!27476) Bool)

(assert (=> b!1239519 (= res!827047 (noDuplicate!1998 acc!846))))

(declare-fun b!1239520 () Bool)

(declare-fun res!827050 () Bool)

(assert (=> b!1239520 (=> (not res!827050) (not e!702446))))

(assert (=> b!1239520 (= res!827050 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) acc!846))))

(declare-fun b!1239521 () Bool)

(declare-fun res!827049 () Bool)

(assert (=> b!1239521 (=> (not res!827049) (not e!702444))))

(assert (=> b!1239521 (= res!827049 (not (= from!3213 (bvsub (size!39062 a!3835) #b00000000000000000000000000000001))))))

(declare-fun b!1239522 () Bool)

(declare-fun arrayContainsKey!0 (array!79857 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1239522 (= e!702446 (not (not (arrayContainsKey!0 a!3835 k!2925 from!3213))))))

(assert (=> b!1239522 (not (arrayContainsKey!0 a!3835 k!2925 (bvadd #b00000000000000000000000000000001 from!3213)))))

(declare-fun lt!561742 () Unit!41140)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!79857 (_ BitVec 32) (_ BitVec 64) List!27476) Unit!41140)

(assert (=> b!1239522 (= lt!561742 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) k!2925 acc!846))))

(assert (= (and start!103324 res!827053) b!1239519))

(assert (= (and b!1239519 res!827047) b!1239515))

(assert (= (and b!1239515 res!827052) b!1239513))

(assert (= (and b!1239513 res!827045) b!1239512))

(assert (= (and b!1239512 res!827046) b!1239518))

(assert (= (and b!1239518 res!827048) b!1239521))

(assert (= (and b!1239521 res!827049) b!1239516))

(assert (= (and b!1239516 c!121096) b!1239517))

(assert (= (and b!1239516 (not c!121096)) b!1239514))

(assert (= (and b!1239516 res!827051) b!1239520))

(assert (= (and b!1239520 res!827050) b!1239522))

(declare-fun m!1142977 () Bool)

(assert (=> start!103324 m!1142977))

(declare-fun m!1142979 () Bool)

(assert (=> b!1239518 m!1142979))

(declare-fun m!1142981 () Bool)

(assert (=> b!1239513 m!1142981))

(declare-fun m!1142983 () Bool)

(assert (=> b!1239520 m!1142983))

(declare-fun m!1142985 () Bool)

(assert (=> b!1239522 m!1142985))

(declare-fun m!1142987 () Bool)

(assert (=> b!1239522 m!1142987))

(declare-fun m!1142989 () Bool)

(assert (=> b!1239522 m!1142989))

(declare-fun m!1142991 () Bool)

(assert (=> b!1239517 m!1142991))

(declare-fun m!1142993 () Bool)

(assert (=> b!1239517 m!1142993))

(declare-fun m!1142995 () Bool)

(assert (=> b!1239517 m!1142995))

(declare-fun m!1142997 () Bool)

(assert (=> b!1239517 m!1142997))

(declare-fun m!1142999 () Bool)

(assert (=> b!1239517 m!1142999))

(assert (=> b!1239517 m!1142983))

(declare-fun m!1143001 () Bool)

(assert (=> b!1239517 m!1143001))

(declare-fun m!1143003 () Bool)

(assert (=> b!1239512 m!1143003))

(assert (=> b!1239516 m!1143001))

(assert (=> b!1239516 m!1143001))

(declare-fun m!1143005 () Bool)

(assert (=> b!1239516 m!1143005))

(declare-fun m!1143007 () Bool)

(assert (=> b!1239515 m!1143007))

(declare-fun m!1143009 () Bool)

(assert (=> b!1239519 m!1143009))

(push 1)

(assert (not b!1239517))

(assert (not b!1239515))

(assert (not b!1239516))

(assert (not b!1239512))

(assert (not b!1239513))

(assert (not start!103324))

(assert (not b!1239520))

(assert (not b!1239519))

(assert (not b!1239518))

(assert (not b!1239522))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!135961 () Bool)

(declare-fun res!827095 () Bool)

(declare-fun e!702493 () Bool)

(assert (=> d!135961 (=> res!827095 e!702493)))

(assert (=> d!135961 (= res!827095 (is-Nil!27473 acc!846))))

(assert (=> d!135961 (= (noDuplicate!1998 acc!846) e!702493)))

(declare-fun b!1239574 () Bool)

(declare-fun e!702494 () Bool)

(assert (=> b!1239574 (= e!702493 e!702494)))

(declare-fun res!827096 () Bool)

(assert (=> b!1239574 (=> (not res!827096) (not e!702494))))

(assert (=> b!1239574 (= res!827096 (not (contains!7391 (t!40946 acc!846) (h!28681 acc!846))))))

(declare-fun b!1239575 () Bool)

(assert (=> b!1239575 (= e!702494 (noDuplicate!1998 (t!40946 acc!846)))))

(assert (= (and d!135961 (not res!827095)) b!1239574))

(assert (= (and b!1239574 res!827096) b!1239575))

(declare-fun m!1143033 () Bool)

(assert (=> b!1239574 m!1143033))

(declare-fun m!1143035 () Bool)

(assert (=> b!1239575 m!1143035))

(assert (=> b!1239519 d!135961))

(declare-fun d!135967 () Bool)

(declare-fun lt!561748 () Bool)

(declare-fun content!603 (List!27476) (Set (_ BitVec 64)))

(assert (=> d!135967 (= lt!561748 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!603 acc!846)))))

(declare-fun e!702503 () Bool)

(assert (=> d!135967 (= lt!561748 e!702503)))

(declare-fun res!827104 () Bool)

(assert (=> d!135967 (=> (not res!827104) (not e!702503))))

(assert (=> d!135967 (= res!827104 (is-Cons!27472 acc!846))))

(assert (=> d!135967 (= (contains!7391 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000) lt!561748)))

(declare-fun b!1239585 () Bool)

(declare-fun e!702504 () Bool)

(assert (=> b!1239585 (= e!702503 e!702504)))

(declare-fun res!827105 () Bool)

(assert (=> b!1239585 (=> res!827105 e!702504)))

(assert (=> b!1239585 (= res!827105 (= (h!28681 acc!846) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1239586 () Bool)

(assert (=> b!1239586 (= e!702504 (contains!7391 (t!40946 acc!846) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!135967 res!827104) b!1239585))

(assert (= (and b!1239585 (not res!827105)) b!1239586))

(declare-fun m!1143041 () Bool)

(assert (=> d!135967 m!1143041))

(declare-fun m!1143043 () Bool)

(assert (=> d!135967 m!1143043))

(declare-fun m!1143045 () Bool)

(assert (=> b!1239586 m!1143045))

(assert (=> b!1239513 d!135967))

(declare-fun d!135971 () Bool)

(declare-fun lt!561749 () Bool)

(assert (=> d!135971 (= lt!561749 (member k!2925 (content!603 acc!846)))))

(declare-fun e!702507 () Bool)

(assert (=> d!135971 (= lt!561749 e!702507)))

(declare-fun res!827108 () Bool)

(assert (=> d!135971 (=> (not res!827108) (not e!702507))))

(assert (=> d!135971 (= res!827108 (is-Cons!27472 acc!846))))

(assert (=> d!135971 (= (contains!7391 acc!846 k!2925) lt!561749)))

(declare-fun b!1239589 () Bool)

(declare-fun e!702508 () Bool)

(assert (=> b!1239589 (= e!702507 e!702508)))

(declare-fun res!827109 () Bool)

(assert (=> b!1239589 (=> res!827109 e!702508)))

(assert (=> b!1239589 (= res!827109 (= (h!28681 acc!846) k!2925))))

(declare-fun b!1239590 () Bool)

(assert (=> b!1239590 (= e!702508 (contains!7391 (t!40946 acc!846) k!2925))))

(assert (= (and d!135971 res!827108) b!1239589))

(assert (= (and b!1239589 (not res!827109)) b!1239590))

(assert (=> d!135971 m!1143041))

(declare-fun m!1143047 () Bool)

(assert (=> d!135971 m!1143047))

(declare-fun m!1143049 () Bool)

(assert (=> b!1239590 m!1143049))

(assert (=> b!1239518 d!135971))

(declare-fun b!1239627 () Bool)

(declare-fun e!702538 () Bool)

(declare-fun e!702536 () Bool)

(assert (=> b!1239627 (= e!702538 e!702536)))

(declare-fun res!827129 () Bool)

(assert (=> b!1239627 (=> res!827129 e!702536)))

(declare-fun e!702537 () Bool)

(assert (=> b!1239627 (= res!827129 e!702537)))

(declare-fun res!827130 () Bool)

(assert (=> b!1239627 (=> (not res!827130) (not e!702537))))

(assert (=> b!1239627 (= res!827130 (= (h!28681 lt!561739) (h!28681 lt!561739)))))

(declare-fun b!1239628 () Bool)

(assert (=> b!1239628 (= e!702537 (subseq!628 (t!40946 lt!561739) (t!40946 lt!561739)))))

(declare-fun d!135973 () Bool)

(declare-fun res!827127 () Bool)

(declare-fun e!702535 () Bool)

(assert (=> d!135973 (=> res!827127 e!702535)))

(assert (=> d!135973 (= res!827127 (is-Nil!27473 lt!561739))))

(assert (=> d!135973 (= (subseq!628 lt!561739 lt!561739) e!702535)))

(declare-fun b!1239626 () Bool)

(assert (=> b!1239626 (= e!702535 e!702538)))

(declare-fun res!827128 () Bool)

(assert (=> b!1239626 (=> (not res!827128) (not e!702538))))

(assert (=> b!1239626 (= res!827128 (is-Cons!27472 lt!561739))))

(declare-fun b!1239629 () Bool)

(assert (=> b!1239629 (= e!702536 (subseq!628 lt!561739 (t!40946 lt!561739)))))

(assert (= (and d!135973 (not res!827127)) b!1239626))

(assert (= (and b!1239626 res!827128) b!1239627))

(assert (= (and b!1239627 res!827130) b!1239628))

(assert (= (and b!1239627 (not res!827129)) b!1239629))

(declare-fun m!1143059 () Bool)

(assert (=> b!1239628 m!1143059))

(declare-fun m!1143061 () Bool)

(assert (=> b!1239629 m!1143061))

(assert (=> b!1239517 d!135973))

(declare-fun b!1239661 () Bool)

(declare-fun e!702567 () Bool)

(declare-fun call!61105 () Bool)

(assert (=> b!1239661 (= e!702567 call!61105)))

(declare-fun b!1239662 () Bool)

(declare-fun e!702568 () Bool)

(assert (=> b!1239662 (= e!702568 (contains!7391 acc!846 (select (arr!38525 a!3835) (bvadd #b00000000000000000000000000000001 from!3213))))))

(declare-fun d!135981 () Bool)

(declare-fun res!827157 () Bool)

(declare-fun e!702570 () Bool)

(assert (=> d!135981 (=> res!827157 e!702570)))

(assert (=> d!135981 (= res!827157 (bvsge (bvadd #b00000000000000000000000000000001 from!3213) (size!39062 a!3835)))))

(assert (=> d!135981 (= (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) acc!846) e!702570)))

(declare-fun b!1239663 () Bool)

(declare-fun e!702569 () Bool)

(assert (=> b!1239663 (= e!702570 e!702569)))

(declare-fun res!827156 () Bool)

(assert (=> b!1239663 (=> (not res!827156) (not e!702569))))

(assert (=> b!1239663 (= res!827156 (not e!702568))))

(declare-fun res!827158 () Bool)

(assert (=> b!1239663 (=> (not res!827158) (not e!702568))))

(assert (=> b!1239663 (= res!827158 (validKeyInArray!0 (select (arr!38525 a!3835) (bvadd #b00000000000000000000000000000001 from!3213))))))

(declare-fun b!1239664 () Bool)

(assert (=> b!1239664 (= e!702567 call!61105)))

(declare-fun c!121115 () Bool)

(declare-fun bm!61102 () Bool)

(assert (=> bm!61102 (= call!61105 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213 #b00000000000000000000000000000001) (ite c!121115 (Cons!27472 (select (arr!38525 a!3835) (bvadd #b00000000000000000000000000000001 from!3213)) acc!846) acc!846)))))

(declare-fun b!1239665 () Bool)

(assert (=> b!1239665 (= e!702569 e!702567)))

(assert (=> b!1239665 (= c!121115 (validKeyInArray!0 (select (arr!38525 a!3835) (bvadd #b00000000000000000000000000000001 from!3213))))))

(assert (= (and d!135981 (not res!827157)) b!1239663))

(assert (= (and b!1239663 res!827158) b!1239662))

(assert (= (and b!1239663 res!827156) b!1239665))

(assert (= (and b!1239665 c!121115) b!1239664))

(assert (= (and b!1239665 (not c!121115)) b!1239661))

(assert (= (or b!1239664 b!1239661) bm!61102))

(declare-fun m!1143091 () Bool)

(assert (=> b!1239662 m!1143091))

(assert (=> b!1239662 m!1143091))

(declare-fun m!1143095 () Bool)

(assert (=> b!1239662 m!1143095))

(assert (=> b!1239663 m!1143091))

(assert (=> b!1239663 m!1143091))

(declare-fun m!1143097 () Bool)

(assert (=> b!1239663 m!1143097))

(assert (=> bm!61102 m!1143091))

(declare-fun m!1143099 () Bool)

(assert (=> bm!61102 m!1143099))

(assert (=> b!1239665 m!1143091))

(assert (=> b!1239665 m!1143091))

(assert (=> b!1239665 m!1143097))

(assert (=> b!1239517 d!135981))

(declare-fun b!1239669 () Bool)

(declare-fun e!702576 () Bool)

(declare-fun e!702574 () Bool)

(assert (=> b!1239669 (= e!702576 e!702574)))

(declare-fun res!827163 () Bool)

(assert (=> b!1239669 (=> res!827163 e!702574)))

(declare-fun e!702575 () Bool)

(assert (=> b!1239669 (= res!827163 e!702575)))

(declare-fun res!827164 () Bool)

(assert (=> b!1239669 (=> (not res!827164) (not e!702575))))

(assert (=> b!1239669 (= res!827164 (= (h!28681 acc!846) (h!28681 lt!561739)))))

(declare-fun b!1239670 () Bool)

(assert (=> b!1239670 (= e!702575 (subseq!628 (t!40946 acc!846) (t!40946 lt!561739)))))

(declare-fun d!135995 () Bool)

(declare-fun res!827161 () Bool)

(declare-fun e!702573 () Bool)

(assert (=> d!135995 (=> res!827161 e!702573)))

(assert (=> d!135995 (= res!827161 (is-Nil!27473 acc!846))))

(assert (=> d!135995 (= (subseq!628 acc!846 lt!561739) e!702573)))

(declare-fun b!1239668 () Bool)

(assert (=> b!1239668 (= e!702573 e!702576)))

(declare-fun res!827162 () Bool)

(assert (=> b!1239668 (=> (not res!827162) (not e!702576))))

(assert (=> b!1239668 (= res!827162 (is-Cons!27472 lt!561739))))

(declare-fun b!1239671 () Bool)

(assert (=> b!1239671 (= e!702574 (subseq!628 acc!846 (t!40946 lt!561739)))))

(assert (= (and d!135995 (not res!827161)) b!1239668))

(assert (= (and b!1239668 res!827162) b!1239669))

(assert (= (and b!1239669 res!827164) b!1239670))

(assert (= (and b!1239669 (not res!827163)) b!1239671))

(declare-fun m!1143103 () Bool)

(assert (=> b!1239670 m!1143103))

(declare-fun m!1143105 () Bool)

(assert (=> b!1239671 m!1143105))

(assert (=> b!1239517 d!135995))

(declare-fun d!135999 () Bool)

(declare-fun tail!172 (List!27476) List!27476)

(assert (=> d!135999 (subseq!628 (tail!172 lt!561739) lt!561739)))

(declare-fun lt!561775 () Unit!41140)

(declare-fun e!702613 () Unit!41140)

(assert (=> d!135999 (= lt!561775 e!702613)))

(declare-fun c!121133 () Bool)

(assert (=> d!135999 (= c!121133 (and (is-Cons!27472 lt!561739) (is-Cons!27472 lt!561739)))))

(declare-fun e!702614 () Bool)

(assert (=> d!135999 e!702614))

(declare-fun res!827185 () Bool)

(assert (=> d!135999 (=> (not res!827185) (not e!702614))))

(declare-fun isEmpty!1023 (List!27476) Bool)

(assert (=> d!135999 (= res!827185 (not (isEmpty!1023 lt!561739)))))

(assert (=> d!135999 (= (subseqTail!115 lt!561739 lt!561739) lt!561775)))

(declare-fun b!1239724 () Bool)

(declare-fun Unit!41147 () Unit!41140)

(assert (=> b!1239724 (= e!702613 Unit!41147)))

(declare-fun b!1239725 () Bool)

(declare-fun e!702615 () Unit!41140)

(declare-fun Unit!41148 () Unit!41140)

(assert (=> b!1239725 (= e!702615 Unit!41148)))

(declare-fun b!1239726 () Bool)

(declare-fun c!121132 () Bool)

(assert (=> b!1239726 (= c!121132 (not (isEmpty!1023 (t!40946 lt!561739))))))

(declare-fun e!702616 () Unit!41140)

(assert (=> b!1239726 (= e!702616 e!702615)))

(declare-fun b!1239727 () Bool)

(assert (=> b!1239727 (= e!702614 (subseq!628 lt!561739 lt!561739))))

(declare-fun b!1239728 () Bool)

(assert (=> b!1239728 (= e!702613 e!702616)))

(declare-fun c!121134 () Bool)

(assert (=> b!1239728 (= c!121134 (subseq!628 lt!561739 (t!40946 lt!561739)))))

(declare-fun b!1239729 () Bool)

(declare-fun call!61112 () Unit!41140)

(assert (=> b!1239729 (= e!702616 call!61112)))

(declare-fun bm!61109 () Bool)

(assert (=> bm!61109 (= call!61112 (subseqTail!115 (ite c!121134 lt!561739 (t!40946 lt!561739)) (t!40946 lt!561739)))))

(declare-fun b!1239730 () Bool)

(assert (=> b!1239730 (= e!702615 call!61112)))

(assert (= (and d!135999 res!827185) b!1239727))

(assert (= (and d!135999 c!121133) b!1239728))

(assert (= (and d!135999 (not c!121133)) b!1239724))

(assert (= (and b!1239728 c!121134) b!1239729))

(assert (= (and b!1239728 (not c!121134)) b!1239726))

(assert (= (and b!1239726 c!121132) b!1239730))

(assert (= (and b!1239726 (not c!121132)) b!1239725))

(assert (= (or b!1239729 b!1239730) bm!61109))

(assert (=> b!1239728 m!1143061))

(declare-fun m!1143139 () Bool)

(assert (=> bm!61109 m!1143139))

(declare-fun m!1143141 () Bool)

(assert (=> b!1239726 m!1143141))

(assert (=> b!1239727 m!1142997))

(declare-fun m!1143143 () Bool)

(assert (=> d!135999 m!1143143))

(assert (=> d!135999 m!1143143))

(declare-fun m!1143145 () Bool)

(assert (=> d!135999 m!1143145))

(declare-fun m!1143147 () Bool)

(assert (=> d!135999 m!1143147))

(assert (=> b!1239517 d!135999))

(declare-fun d!136013 () Bool)

(assert (=> d!136013 (subseq!628 lt!561739 lt!561739)))

(declare-fun lt!561781 () Unit!41140)

(declare-fun choose!36 (List!27476) Unit!41140)

(assert (=> d!136013 (= lt!561781 (choose!36 lt!561739))))

(assert (=> d!136013 (= (lemmaListSubSeqRefl!0 lt!561739) lt!561781)))

(declare-fun bs!34854 () Bool)

(assert (= bs!34854 d!136013))

(assert (=> bs!34854 m!1142997))

(declare-fun m!1143151 () Bool)

(assert (=> bs!34854 m!1143151))

(assert (=> b!1239517 d!136013))

(declare-fun d!136017 () Bool)

(assert (=> d!136017 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) acc!846)))

(declare-fun lt!561787 () Unit!41140)

(declare-fun choose!80 (array!79857 List!27476 List!27476 (_ BitVec 32)) Unit!41140)

(assert (=> d!136017 (= lt!561787 (choose!80 a!3835 lt!561739 acc!846 (bvadd #b00000000000000000000000000000001 from!3213)))))

(assert (=> d!136017 (bvslt (size!39062 a!3835) #b01111111111111111111111111111111)))

(assert (=> d!136017 (= (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3835 lt!561739 acc!846 (bvadd #b00000000000000000000000000000001 from!3213)) lt!561787)))

(declare-fun bs!34856 () Bool)

(assert (= bs!34856 d!136017))

(assert (=> bs!34856 m!1142983))

(declare-fun m!1143155 () Bool)

(assert (=> bs!34856 m!1143155))

(assert (=> b!1239517 d!136017))

(declare-fun b!1239731 () Bool)

(declare-fun e!702617 () Bool)

(declare-fun call!61113 () Bool)

(assert (=> b!1239731 (= e!702617 call!61113)))

(declare-fun b!1239732 () Bool)

(declare-fun e!702618 () Bool)

(assert (=> b!1239732 (= e!702618 (contains!7391 acc!846 (select (arr!38525 a!3835) from!3213)))))

(declare-fun d!136021 () Bool)

(declare-fun res!827187 () Bool)

(declare-fun e!702620 () Bool)

(assert (=> d!136021 (=> res!827187 e!702620)))

(assert (=> d!136021 (= res!827187 (bvsge from!3213 (size!39062 a!3835)))))

(assert (=> d!136021 (= (arrayNoDuplicates!0 a!3835 from!3213 acc!846) e!702620)))

(declare-fun b!1239733 () Bool)

(declare-fun e!702619 () Bool)

