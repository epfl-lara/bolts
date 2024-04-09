; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!103250 () Bool)

(assert start!103250)

(declare-fun b!1238976 () Bool)

(declare-fun res!826648 () Bool)

(declare-fun e!702143 () Bool)

(assert (=> b!1238976 (=> (not res!826648) (not e!702143))))

(declare-datatypes ((List!27466 0))(
  ( (Nil!27463) (Cons!27462 (h!28671 (_ BitVec 64)) (t!40936 List!27466)) )
))
(declare-fun acc!846 () List!27466)

(declare-fun k0!2925 () (_ BitVec 64))

(declare-fun contains!7381 (List!27466 (_ BitVec 64)) Bool)

(assert (=> b!1238976 (= res!826648 (contains!7381 acc!846 k0!2925))))

(declare-fun b!1238977 () Bool)

(declare-fun res!826649 () Bool)

(assert (=> b!1238977 (=> (not res!826649) (not e!702143))))

(assert (=> b!1238977 (= res!826649 (not (contains!7381 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-datatypes ((array!79834 0))(
  ( (array!79835 (arr!38515 (Array (_ BitVec 32) (_ BitVec 64))) (size!39052 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79834)

(declare-fun from!3213 () (_ BitVec 32))

(declare-fun e!702144 () Bool)

(declare-fun b!1238978 () Bool)

(declare-fun arrayNoDuplicates!0 (array!79834 (_ BitVec 32) List!27466) Bool)

(assert (=> b!1238978 (= e!702144 (not (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) acc!846)))))

(declare-fun b!1238979 () Bool)

(declare-datatypes ((Unit!41106 0))(
  ( (Unit!41107) )
))
(declare-fun e!702146 () Unit!41106)

(declare-fun lt!561532 () Unit!41106)

(assert (=> b!1238979 (= e!702146 lt!561532)))

(declare-fun lt!561529 () List!27466)

(assert (=> b!1238979 (= lt!561529 (Cons!27462 (select (arr!38515 a!3835) from!3213) acc!846))))

(declare-fun lt!561530 () Unit!41106)

(declare-fun lemmaListSubSeqRefl!0 (List!27466) Unit!41106)

(assert (=> b!1238979 (= lt!561530 (lemmaListSubSeqRefl!0 lt!561529))))

(declare-fun subseq!618 (List!27466 List!27466) Bool)

(assert (=> b!1238979 (subseq!618 lt!561529 lt!561529)))

(declare-fun lt!561528 () Unit!41106)

(declare-fun subseqTail!105 (List!27466 List!27466) Unit!41106)

(assert (=> b!1238979 (= lt!561528 (subseqTail!105 lt!561529 lt!561529))))

(assert (=> b!1238979 (subseq!618 acc!846 lt!561529)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79834 List!27466 List!27466 (_ BitVec 32)) Unit!41106)

(assert (=> b!1238979 (= lt!561532 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3835 lt!561529 acc!846 (bvadd #b00000000000000000000000000000001 from!3213)))))

(assert (=> b!1238979 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) acc!846)))

(declare-fun b!1238980 () Bool)

(declare-fun res!826654 () Bool)

(assert (=> b!1238980 (=> (not res!826654) (not e!702143))))

(assert (=> b!1238980 (= res!826654 (not (= from!3213 (bvsub (size!39052 a!3835) #b00000000000000000000000000000001))))))

(declare-fun b!1238981 () Bool)

(declare-fun Unit!41108 () Unit!41106)

(assert (=> b!1238981 (= e!702146 Unit!41108)))

(declare-fun b!1238982 () Bool)

(declare-fun res!826647 () Bool)

(assert (=> b!1238982 (=> (not res!826647) (not e!702143))))

(assert (=> b!1238982 (= res!826647 (not (contains!7381 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1238984 () Bool)

(declare-fun res!826653 () Bool)

(assert (=> b!1238984 (=> (not res!826653) (not e!702143))))

(assert (=> b!1238984 (= res!826653 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1238985 () Bool)

(declare-fun res!826652 () Bool)

(assert (=> b!1238985 (=> (not res!826652) (not e!702143))))

(declare-fun noDuplicate!1988 (List!27466) Bool)

(assert (=> b!1238985 (= res!826652 (noDuplicate!1988 acc!846))))

(declare-fun res!826651 () Bool)

(assert (=> start!103250 (=> (not res!826651) (not e!702143))))

(assert (=> start!103250 (= res!826651 (and (bvslt (size!39052 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!39052 a!3835))))))

(assert (=> start!103250 e!702143))

(declare-fun array_inv!29291 (array!79834) Bool)

(assert (=> start!103250 (array_inv!29291 a!3835)))

(assert (=> start!103250 true))

(declare-fun b!1238983 () Bool)

(assert (=> b!1238983 (= e!702143 e!702144)))

(declare-fun res!826650 () Bool)

(assert (=> b!1238983 (=> (not res!826650) (not e!702144))))

(assert (=> b!1238983 (= res!826650 (and (bvsge (bvadd #b00000000000000000000000000000001 from!3213) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3213) (size!39052 a!3835))))))

(declare-fun lt!561531 () Unit!41106)

(assert (=> b!1238983 (= lt!561531 e!702146)))

(declare-fun c!121027 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1238983 (= c!121027 (validKeyInArray!0 (select (arr!38515 a!3835) from!3213)))))

(assert (= (and start!103250 res!826651) b!1238985))

(assert (= (and b!1238985 res!826652) b!1238977))

(assert (= (and b!1238977 res!826649) b!1238982))

(assert (= (and b!1238982 res!826647) b!1238984))

(assert (= (and b!1238984 res!826653) b!1238976))

(assert (= (and b!1238976 res!826648) b!1238980))

(assert (= (and b!1238980 res!826654) b!1238983))

(assert (= (and b!1238983 c!121027) b!1238979))

(assert (= (and b!1238983 (not c!121027)) b!1238981))

(assert (= (and b!1238983 res!826650) b!1238978))

(declare-fun m!1142529 () Bool)

(assert (=> b!1238976 m!1142529))

(declare-fun m!1142531 () Bool)

(assert (=> b!1238983 m!1142531))

(assert (=> b!1238983 m!1142531))

(declare-fun m!1142533 () Bool)

(assert (=> b!1238983 m!1142533))

(declare-fun m!1142535 () Bool)

(assert (=> b!1238979 m!1142535))

(declare-fun m!1142537 () Bool)

(assert (=> b!1238979 m!1142537))

(declare-fun m!1142539 () Bool)

(assert (=> b!1238979 m!1142539))

(declare-fun m!1142541 () Bool)

(assert (=> b!1238979 m!1142541))

(declare-fun m!1142543 () Bool)

(assert (=> b!1238979 m!1142543))

(assert (=> b!1238979 m!1142531))

(declare-fun m!1142545 () Bool)

(assert (=> b!1238979 m!1142545))

(declare-fun m!1142547 () Bool)

(assert (=> b!1238982 m!1142547))

(declare-fun m!1142549 () Bool)

(assert (=> start!103250 m!1142549))

(declare-fun m!1142551 () Bool)

(assert (=> b!1238985 m!1142551))

(assert (=> b!1238978 m!1142543))

(declare-fun m!1142553 () Bool)

(assert (=> b!1238984 m!1142553))

(declare-fun m!1142555 () Bool)

(assert (=> b!1238977 m!1142555))

(check-sat (not b!1238976) (not b!1238982) (not b!1238985) (not start!103250) (not b!1238978) (not b!1238984) (not b!1238983) (not b!1238979) (not b!1238977))
(check-sat)
(get-model)

(declare-fun d!135865 () Bool)

(declare-fun lt!561550 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!599 (List!27466) (InoxSet (_ BitVec 64)))

(assert (=> d!135865 (= lt!561550 (select (content!599 acc!846) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!702164 () Bool)

(assert (=> d!135865 (= lt!561550 e!702164)))

(declare-fun res!826683 () Bool)

(assert (=> d!135865 (=> (not res!826683) (not e!702164))))

(get-info :version)

(assert (=> d!135865 (= res!826683 ((_ is Cons!27462) acc!846))))

(assert (=> d!135865 (= (contains!7381 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000) lt!561550)))

(declare-fun b!1239020 () Bool)

(declare-fun e!702163 () Bool)

(assert (=> b!1239020 (= e!702164 e!702163)))

(declare-fun res!826684 () Bool)

(assert (=> b!1239020 (=> res!826684 e!702163)))

(assert (=> b!1239020 (= res!826684 (= (h!28671 acc!846) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1239021 () Bool)

(assert (=> b!1239021 (= e!702163 (contains!7381 (t!40936 acc!846) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!135865 res!826683) b!1239020))

(assert (= (and b!1239020 (not res!826684)) b!1239021))

(declare-fun m!1142585 () Bool)

(assert (=> d!135865 m!1142585))

(declare-fun m!1142587 () Bool)

(assert (=> d!135865 m!1142587))

(declare-fun m!1142589 () Bool)

(assert (=> b!1239021 m!1142589))

(assert (=> b!1238982 d!135865))

(declare-fun d!135867 () Bool)

(declare-fun lt!561551 () Bool)

(assert (=> d!135867 (= lt!561551 (select (content!599 acc!846) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!702166 () Bool)

(assert (=> d!135867 (= lt!561551 e!702166)))

(declare-fun res!826685 () Bool)

(assert (=> d!135867 (=> (not res!826685) (not e!702166))))

(assert (=> d!135867 (= res!826685 ((_ is Cons!27462) acc!846))))

(assert (=> d!135867 (= (contains!7381 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000) lt!561551)))

(declare-fun b!1239022 () Bool)

(declare-fun e!702165 () Bool)

(assert (=> b!1239022 (= e!702166 e!702165)))

(declare-fun res!826686 () Bool)

(assert (=> b!1239022 (=> res!826686 e!702165)))

(assert (=> b!1239022 (= res!826686 (= (h!28671 acc!846) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1239023 () Bool)

(assert (=> b!1239023 (= e!702165 (contains!7381 (t!40936 acc!846) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!135867 res!826685) b!1239022))

(assert (= (and b!1239022 (not res!826686)) b!1239023))

(assert (=> d!135867 m!1142585))

(declare-fun m!1142591 () Bool)

(assert (=> d!135867 m!1142591))

(declare-fun m!1142593 () Bool)

(assert (=> b!1239023 m!1142593))

(assert (=> b!1238977 d!135867))

(declare-fun d!135869 () Bool)

(assert (=> d!135869 (= (validKeyInArray!0 (select (arr!38515 a!3835) from!3213)) (and (not (= (select (arr!38515 a!3835) from!3213) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!38515 a!3835) from!3213) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1238983 d!135869))

(declare-fun b!1239034 () Bool)

(declare-fun e!702175 () Bool)

(assert (=> b!1239034 (= e!702175 (contains!7381 acc!846 (select (arr!38515 a!3835) (bvadd #b00000000000000000000000000000001 from!3213))))))

(declare-fun b!1239035 () Bool)

(declare-fun e!702176 () Bool)

(declare-fun e!702178 () Bool)

(assert (=> b!1239035 (= e!702176 e!702178)))

(declare-fun c!121033 () Bool)

(assert (=> b!1239035 (= c!121033 (validKeyInArray!0 (select (arr!38515 a!3835) (bvadd #b00000000000000000000000000000001 from!3213))))))

(declare-fun b!1239036 () Bool)

(declare-fun e!702177 () Bool)

(assert (=> b!1239036 (= e!702177 e!702176)))

(declare-fun res!826695 () Bool)

(assert (=> b!1239036 (=> (not res!826695) (not e!702176))))

(assert (=> b!1239036 (= res!826695 (not e!702175))))

(declare-fun res!826694 () Bool)

(assert (=> b!1239036 (=> (not res!826694) (not e!702175))))

(assert (=> b!1239036 (= res!826694 (validKeyInArray!0 (select (arr!38515 a!3835) (bvadd #b00000000000000000000000000000001 from!3213))))))

(declare-fun b!1239037 () Bool)

(declare-fun call!61074 () Bool)

(assert (=> b!1239037 (= e!702178 call!61074)))

(declare-fun d!135871 () Bool)

(declare-fun res!826693 () Bool)

(assert (=> d!135871 (=> res!826693 e!702177)))

(assert (=> d!135871 (= res!826693 (bvsge (bvadd #b00000000000000000000000000000001 from!3213) (size!39052 a!3835)))))

(assert (=> d!135871 (= (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) acc!846) e!702177)))

(declare-fun bm!61071 () Bool)

(assert (=> bm!61071 (= call!61074 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213 #b00000000000000000000000000000001) (ite c!121033 (Cons!27462 (select (arr!38515 a!3835) (bvadd #b00000000000000000000000000000001 from!3213)) acc!846) acc!846)))))

(declare-fun b!1239038 () Bool)

(assert (=> b!1239038 (= e!702178 call!61074)))

(assert (= (and d!135871 (not res!826693)) b!1239036))

(assert (= (and b!1239036 res!826694) b!1239034))

(assert (= (and b!1239036 res!826695) b!1239035))

(assert (= (and b!1239035 c!121033) b!1239037))

(assert (= (and b!1239035 (not c!121033)) b!1239038))

(assert (= (or b!1239037 b!1239038) bm!61071))

(declare-fun m!1142595 () Bool)

(assert (=> b!1239034 m!1142595))

(assert (=> b!1239034 m!1142595))

(declare-fun m!1142597 () Bool)

(assert (=> b!1239034 m!1142597))

(assert (=> b!1239035 m!1142595))

(assert (=> b!1239035 m!1142595))

(declare-fun m!1142599 () Bool)

(assert (=> b!1239035 m!1142599))

(assert (=> b!1239036 m!1142595))

(assert (=> b!1239036 m!1142595))

(assert (=> b!1239036 m!1142599))

(assert (=> bm!61071 m!1142595))

(declare-fun m!1142601 () Bool)

(assert (=> bm!61071 m!1142601))

(assert (=> b!1238978 d!135871))

(declare-fun b!1239039 () Bool)

(declare-fun e!702179 () Bool)

(assert (=> b!1239039 (= e!702179 (contains!7381 acc!846 (select (arr!38515 a!3835) from!3213)))))

(declare-fun b!1239040 () Bool)

(declare-fun e!702180 () Bool)

(declare-fun e!702182 () Bool)

(assert (=> b!1239040 (= e!702180 e!702182)))

(declare-fun c!121034 () Bool)

(assert (=> b!1239040 (= c!121034 (validKeyInArray!0 (select (arr!38515 a!3835) from!3213)))))

(declare-fun b!1239041 () Bool)

(declare-fun e!702181 () Bool)

(assert (=> b!1239041 (= e!702181 e!702180)))

(declare-fun res!826698 () Bool)

(assert (=> b!1239041 (=> (not res!826698) (not e!702180))))

(assert (=> b!1239041 (= res!826698 (not e!702179))))

(declare-fun res!826697 () Bool)

(assert (=> b!1239041 (=> (not res!826697) (not e!702179))))

(assert (=> b!1239041 (= res!826697 (validKeyInArray!0 (select (arr!38515 a!3835) from!3213)))))

(declare-fun b!1239042 () Bool)

(declare-fun call!61075 () Bool)

(assert (=> b!1239042 (= e!702182 call!61075)))

(declare-fun d!135881 () Bool)

(declare-fun res!826696 () Bool)

(assert (=> d!135881 (=> res!826696 e!702181)))

(assert (=> d!135881 (= res!826696 (bvsge from!3213 (size!39052 a!3835)))))

(assert (=> d!135881 (= (arrayNoDuplicates!0 a!3835 from!3213 acc!846) e!702181)))

(declare-fun bm!61072 () Bool)

(assert (=> bm!61072 (= call!61075 (arrayNoDuplicates!0 a!3835 (bvadd from!3213 #b00000000000000000000000000000001) (ite c!121034 (Cons!27462 (select (arr!38515 a!3835) from!3213) acc!846) acc!846)))))

(declare-fun b!1239043 () Bool)

(assert (=> b!1239043 (= e!702182 call!61075)))

(assert (= (and d!135881 (not res!826696)) b!1239041))

(assert (= (and b!1239041 res!826697) b!1239039))

(assert (= (and b!1239041 res!826698) b!1239040))

(assert (= (and b!1239040 c!121034) b!1239042))

(assert (= (and b!1239040 (not c!121034)) b!1239043))

(assert (= (or b!1239042 b!1239043) bm!61072))

(assert (=> b!1239039 m!1142531))

(assert (=> b!1239039 m!1142531))

(declare-fun m!1142603 () Bool)

(assert (=> b!1239039 m!1142603))

(assert (=> b!1239040 m!1142531))

(assert (=> b!1239040 m!1142531))

(assert (=> b!1239040 m!1142533))

(assert (=> b!1239041 m!1142531))

(assert (=> b!1239041 m!1142531))

(assert (=> b!1239041 m!1142533))

(assert (=> bm!61072 m!1142531))

(declare-fun m!1142605 () Bool)

(assert (=> bm!61072 m!1142605))

(assert (=> b!1238984 d!135881))

(assert (=> b!1238979 d!135871))

(declare-fun d!135883 () Bool)

(assert (=> d!135883 (subseq!618 lt!561529 lt!561529)))

(declare-fun lt!561554 () Unit!41106)

(declare-fun choose!36 (List!27466) Unit!41106)

(assert (=> d!135883 (= lt!561554 (choose!36 lt!561529))))

(assert (=> d!135883 (= (lemmaListSubSeqRefl!0 lt!561529) lt!561554)))

(declare-fun bs!34834 () Bool)

(assert (= bs!34834 d!135883))

(assert (=> bs!34834 m!1142545))

(declare-fun m!1142607 () Bool)

(assert (=> bs!34834 m!1142607))

(assert (=> b!1238979 d!135883))

(declare-fun d!135885 () Bool)

(assert (=> d!135885 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) acc!846)))

(declare-fun lt!561557 () Unit!41106)

(declare-fun choose!80 (array!79834 List!27466 List!27466 (_ BitVec 32)) Unit!41106)

(assert (=> d!135885 (= lt!561557 (choose!80 a!3835 lt!561529 acc!846 (bvadd #b00000000000000000000000000000001 from!3213)))))

(assert (=> d!135885 (bvslt (size!39052 a!3835) #b01111111111111111111111111111111)))

(assert (=> d!135885 (= (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3835 lt!561529 acc!846 (bvadd #b00000000000000000000000000000001 from!3213)) lt!561557)))

(declare-fun bs!34835 () Bool)

(assert (= bs!34835 d!135885))

(assert (=> bs!34835 m!1142543))

(declare-fun m!1142609 () Bool)

(assert (=> bs!34835 m!1142609))

(assert (=> b!1238979 d!135885))

(declare-fun d!135887 () Bool)

(declare-fun res!826736 () Bool)

(declare-fun e!702224 () Bool)

(assert (=> d!135887 (=> res!826736 e!702224)))

(assert (=> d!135887 (= res!826736 ((_ is Nil!27463) acc!846))))

(assert (=> d!135887 (= (subseq!618 acc!846 lt!561529) e!702224)))

(declare-fun b!1239090 () Bool)

(declare-fun e!702225 () Bool)

(assert (=> b!1239090 (= e!702224 e!702225)))

(declare-fun res!826734 () Bool)

(assert (=> b!1239090 (=> (not res!826734) (not e!702225))))

(assert (=> b!1239090 (= res!826734 ((_ is Cons!27462) lt!561529))))

(declare-fun b!1239092 () Bool)

(declare-fun e!702226 () Bool)

(assert (=> b!1239092 (= e!702226 (subseq!618 (t!40936 acc!846) (t!40936 lt!561529)))))

(declare-fun b!1239091 () Bool)

(declare-fun e!702223 () Bool)

(assert (=> b!1239091 (= e!702225 e!702223)))

(declare-fun res!826733 () Bool)

(assert (=> b!1239091 (=> res!826733 e!702223)))

(assert (=> b!1239091 (= res!826733 e!702226)))

(declare-fun res!826735 () Bool)

(assert (=> b!1239091 (=> (not res!826735) (not e!702226))))

(assert (=> b!1239091 (= res!826735 (= (h!28671 acc!846) (h!28671 lt!561529)))))

(declare-fun b!1239093 () Bool)

(assert (=> b!1239093 (= e!702223 (subseq!618 acc!846 (t!40936 lt!561529)))))

(assert (= (and d!135887 (not res!826736)) b!1239090))

(assert (= (and b!1239090 res!826734) b!1239091))

(assert (= (and b!1239091 res!826735) b!1239092))

(assert (= (and b!1239091 (not res!826733)) b!1239093))

(declare-fun m!1142623 () Bool)

(assert (=> b!1239092 m!1142623))

(declare-fun m!1142625 () Bool)

(assert (=> b!1239093 m!1142625))

(assert (=> b!1238979 d!135887))

(declare-fun d!135893 () Bool)

(declare-fun res!826740 () Bool)

(declare-fun e!702228 () Bool)

(assert (=> d!135893 (=> res!826740 e!702228)))

(assert (=> d!135893 (= res!826740 ((_ is Nil!27463) lt!561529))))

(assert (=> d!135893 (= (subseq!618 lt!561529 lt!561529) e!702228)))

(declare-fun b!1239094 () Bool)

(declare-fun e!702229 () Bool)

(assert (=> b!1239094 (= e!702228 e!702229)))

(declare-fun res!826738 () Bool)

(assert (=> b!1239094 (=> (not res!826738) (not e!702229))))

(assert (=> b!1239094 (= res!826738 ((_ is Cons!27462) lt!561529))))

(declare-fun b!1239096 () Bool)

(declare-fun e!702230 () Bool)

(assert (=> b!1239096 (= e!702230 (subseq!618 (t!40936 lt!561529) (t!40936 lt!561529)))))

(declare-fun b!1239095 () Bool)

(declare-fun e!702227 () Bool)

(assert (=> b!1239095 (= e!702229 e!702227)))

(declare-fun res!826737 () Bool)

(assert (=> b!1239095 (=> res!826737 e!702227)))

(assert (=> b!1239095 (= res!826737 e!702230)))

(declare-fun res!826739 () Bool)

(assert (=> b!1239095 (=> (not res!826739) (not e!702230))))

(assert (=> b!1239095 (= res!826739 (= (h!28671 lt!561529) (h!28671 lt!561529)))))

(declare-fun b!1239097 () Bool)

(assert (=> b!1239097 (= e!702227 (subseq!618 lt!561529 (t!40936 lt!561529)))))

(assert (= (and d!135893 (not res!826740)) b!1239094))

(assert (= (and b!1239094 res!826738) b!1239095))

(assert (= (and b!1239095 res!826739) b!1239096))

(assert (= (and b!1239095 (not res!826737)) b!1239097))

(declare-fun m!1142629 () Bool)

(assert (=> b!1239096 m!1142629))

(declare-fun m!1142633 () Bool)

(assert (=> b!1239097 m!1142633))

(assert (=> b!1238979 d!135893))

(declare-fun b!1239149 () Bool)

(declare-fun e!702276 () Unit!41106)

(declare-fun call!61086 () Unit!41106)

(assert (=> b!1239149 (= e!702276 call!61086)))

(declare-fun b!1239151 () Bool)

(declare-fun c!121051 () Bool)

(declare-fun isEmpty!1019 (List!27466) Bool)

(assert (=> b!1239151 (= c!121051 (not (isEmpty!1019 (t!40936 lt!561529))))))

(declare-fun e!702279 () Unit!41106)

(assert (=> b!1239151 (= e!702279 e!702276)))

(declare-fun b!1239153 () Bool)

(declare-fun e!702277 () Bool)

(assert (=> b!1239153 (= e!702277 (subseq!618 lt!561529 lt!561529))))

(declare-fun d!135895 () Bool)

(declare-fun tail!168 (List!27466) List!27466)

(assert (=> d!135895 (subseq!618 (tail!168 lt!561529) lt!561529)))

(declare-fun lt!561573 () Unit!41106)

(declare-fun e!702273 () Unit!41106)

(assert (=> d!135895 (= lt!561573 e!702273)))

(declare-fun c!121050 () Bool)

(assert (=> d!135895 (= c!121050 (and ((_ is Cons!27462) lt!561529) ((_ is Cons!27462) lt!561529)))))

(assert (=> d!135895 e!702277))

(declare-fun res!826779 () Bool)

(assert (=> d!135895 (=> (not res!826779) (not e!702277))))

(assert (=> d!135895 (= res!826779 (not (isEmpty!1019 lt!561529)))))

(assert (=> d!135895 (= (subseqTail!105 lt!561529 lt!561529) lt!561573)))

(declare-fun b!1239155 () Bool)

(assert (=> b!1239155 (= e!702273 e!702279)))

(declare-fun c!121049 () Bool)

(assert (=> b!1239155 (= c!121049 (subseq!618 lt!561529 (t!40936 lt!561529)))))

(declare-fun bm!61083 () Bool)

(assert (=> bm!61083 (= call!61086 (subseqTail!105 (ite c!121049 lt!561529 (t!40936 lt!561529)) (t!40936 lt!561529)))))

(declare-fun b!1239156 () Bool)

(declare-fun Unit!41112 () Unit!41106)

(assert (=> b!1239156 (= e!702273 Unit!41112)))

(declare-fun b!1239157 () Bool)

(assert (=> b!1239157 (= e!702279 call!61086)))

(declare-fun b!1239158 () Bool)

(declare-fun Unit!41113 () Unit!41106)

(assert (=> b!1239158 (= e!702276 Unit!41113)))

(assert (= (and d!135895 res!826779) b!1239153))

(assert (= (and d!135895 c!121050) b!1239155))

(assert (= (and d!135895 (not c!121050)) b!1239156))

(assert (= (and b!1239155 c!121049) b!1239157))

(assert (= (and b!1239155 (not c!121049)) b!1239151))

(assert (= (and b!1239151 c!121051) b!1239149))

(assert (= (and b!1239151 (not c!121051)) b!1239158))

(assert (= (or b!1239157 b!1239149) bm!61083))

(assert (=> b!1239153 m!1142545))

(declare-fun m!1142681 () Bool)

(assert (=> b!1239151 m!1142681))

(declare-fun m!1142683 () Bool)

(assert (=> d!135895 m!1142683))

(assert (=> d!135895 m!1142683))

(declare-fun m!1142685 () Bool)

(assert (=> d!135895 m!1142685))

(declare-fun m!1142687 () Bool)

(assert (=> d!135895 m!1142687))

(assert (=> b!1239155 m!1142633))

(declare-fun m!1142689 () Bool)

(assert (=> bm!61083 m!1142689))

(assert (=> b!1238979 d!135895))

(declare-fun d!135923 () Bool)

(declare-fun res!826786 () Bool)

(declare-fun e!702293 () Bool)

(assert (=> d!135923 (=> res!826786 e!702293)))

(assert (=> d!135923 (= res!826786 ((_ is Nil!27463) acc!846))))

(assert (=> d!135923 (= (noDuplicate!1988 acc!846) e!702293)))

(declare-fun b!1239177 () Bool)

(declare-fun e!702294 () Bool)

(assert (=> b!1239177 (= e!702293 e!702294)))

(declare-fun res!826787 () Bool)

(assert (=> b!1239177 (=> (not res!826787) (not e!702294))))

(assert (=> b!1239177 (= res!826787 (not (contains!7381 (t!40936 acc!846) (h!28671 acc!846))))))

(declare-fun b!1239178 () Bool)

(assert (=> b!1239178 (= e!702294 (noDuplicate!1988 (t!40936 acc!846)))))

(assert (= (and d!135923 (not res!826786)) b!1239177))

(assert (= (and b!1239177 res!826787) b!1239178))

(declare-fun m!1142691 () Bool)

(assert (=> b!1239177 m!1142691))

(declare-fun m!1142693 () Bool)

(assert (=> b!1239178 m!1142693))

(assert (=> b!1238985 d!135923))

(declare-fun d!135925 () Bool)

(assert (=> d!135925 (= (array_inv!29291 a!3835) (bvsge (size!39052 a!3835) #b00000000000000000000000000000000))))

(assert (=> start!103250 d!135925))

(declare-fun d!135927 () Bool)

(declare-fun lt!561576 () Bool)

(assert (=> d!135927 (= lt!561576 (select (content!599 acc!846) k0!2925))))

(declare-fun e!702296 () Bool)

(assert (=> d!135927 (= lt!561576 e!702296)))

(declare-fun res!826788 () Bool)

(assert (=> d!135927 (=> (not res!826788) (not e!702296))))

(assert (=> d!135927 (= res!826788 ((_ is Cons!27462) acc!846))))

(assert (=> d!135927 (= (contains!7381 acc!846 k0!2925) lt!561576)))

(declare-fun b!1239179 () Bool)

(declare-fun e!702295 () Bool)

(assert (=> b!1239179 (= e!702296 e!702295)))

(declare-fun res!826789 () Bool)

(assert (=> b!1239179 (=> res!826789 e!702295)))

(assert (=> b!1239179 (= res!826789 (= (h!28671 acc!846) k0!2925))))

(declare-fun b!1239180 () Bool)

(assert (=> b!1239180 (= e!702295 (contains!7381 (t!40936 acc!846) k0!2925))))

(assert (= (and d!135927 res!826788) b!1239179))

(assert (= (and b!1239179 (not res!826789)) b!1239180))

(assert (=> d!135927 m!1142585))

(declare-fun m!1142695 () Bool)

(assert (=> d!135927 m!1142695))

(declare-fun m!1142697 () Bool)

(assert (=> b!1239180 m!1142697))

(assert (=> b!1238976 d!135927))

(check-sat (not b!1239096) (not b!1239039) (not b!1239155) (not b!1239041) (not b!1239035) (not b!1239034) (not b!1239178) (not b!1239151) (not b!1239180) (not d!135895) (not d!135927) (not b!1239092) (not d!135885) (not d!135865) (not bm!61083) (not d!135867) (not b!1239021) (not bm!61072) (not bm!61071) (not b!1239153) (not b!1239036) (not b!1239023) (not b!1239040) (not b!1239097) (not b!1239093) (not d!135883) (not b!1239177))
(check-sat)
